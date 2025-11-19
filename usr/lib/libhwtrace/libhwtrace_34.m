uint64_t sub_298CC3AA8(uint64_t a1)
{
  v2 = a1 - 2;
  result = 205;
  switch(v2)
  {
    case 0:
      result = 234;
      break;
    case 3:
      result = 235;
      break;
    case 5:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 234:
      return result;
    case 235:
      result = 206;
      break;
    case 236:
      result = 207;
      break;
    case 237:
      result = 208;
      break;
    case 238:
      result = 209;
      break;
    case 239:
      result = 210;
      break;
    case 240:
      result = 211;
      break;
    case 241:
      result = 212;
      break;
    case 242:
      result = 213;
      break;
    case 243:
      result = 214;
      break;
    case 244:
      result = 215;
      break;
    case 245:
      result = 216;
      break;
    case 246:
      result = 217;
      break;
    case 247:
      result = 218;
      break;
    case 248:
      result = 219;
      break;
    case 249:
      result = 220;
      break;
    case 250:
      result = 221;
      break;
    case 251:
      result = 222;
      break;
    case 252:
      result = 223;
      break;
    case 253:
      result = 224;
      break;
    case 254:
      result = 225;
      break;
    case 255:
      result = 226;
      break;
    case 256:
      result = 227;
      break;
    case 257:
      result = 228;
      break;
    case 258:
      result = 229;
      break;
    case 259:
      result = 230;
      break;
    case 260:
      result = 231;
      break;
    case 261:
      result = 232;
      break;
    case 262:
      result = 233;
      break;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_298CC4000(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = a3;
  v6 = -a3;
  v7 = *a1;
  v8 = a1[1];
  v10 = *(v7 + 32);
  if ((*(v7 + 24) - v10) > 4)
  {
    *(v10 + 4) = 9;
    *v10 = 1987013897;
    *(v7 + 32) += 5;
  }

  else
  {
    sub_298B9BCEC(v7, "\tmov\t", 5uLL);
  }

  v11 = a2 << v6;
  (*(*v8 + 40))(v8, *a1, *(*(*a1[2] + 16) + 8));
  v12 = *a1;
  v13 = *(*a1 + 32);
  if (*(*a1 + 24) - v13 > 1uLL)
  {
    *v13 = 8236;
    *(v12 + 32) += 2;
  }

  else
  {
    sub_298B9BCEC(v12, ", ", 2uLL);
  }

  v14 = v11 >> v6;
  sub_298B47440(v33, *a1, 0, *(v8 + 48), *(v8 + 49));
  v15 = v33[0];
  v16 = *(v33[0] + 32);
  if (*(v33[0] + 24) == v16)
  {
    sub_298B9BCEC(v33[0], "#", 1uLL);
    if (*(v8 + 51) == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v16 = 35;
    ++*(v15 + 32);
    if (*(v8 + 51) == 1)
    {
LABEL_9:
      sub_298B47284(v8, v14, &v30);
      goto LABEL_12;
    }
  }

  v30 = &unk_2A1F1C388;
  v31 = "%lld";
  v32 = v14;
LABEL_12:
  sub_298B9B1F8(v33[0], &v30);
  result = sub_298B47608(v33);
  v18 = *(v8 + 8);
  if (!v18)
  {
    return result;
  }

  if (*(v8 + 51) == 1)
  {
    v19 = *(v18 + 32);
    if (v19 < *(v18 + 24))
    {
LABEL_25:
      *(v18 + 32) = v19 + 1;
      *v19 = 61;
    }

    else
    {
      while (1)
      {
        v20 = *(v18 + 16);
        if (v20)
        {
          *(v18 + 32) = v20;
          sub_298B9BB84(v18);
          v19 = *(v18 + 32);
          goto LABEL_25;
        }

        if (!*(v18 + 56))
        {
          break;
        }

        sub_298B9AE98(v18);
        v19 = *(v18 + 32);
        if (v19 < *(v18 + 24))
        {
          goto LABEL_25;
        }
      }

      LOBYTE(v30) = 61;
      sub_298B9BB84(v18);
    }

    v30 = &unk_2A1F1C388;
    v31 = "%lld";
    v32 = v14;
    result = sub_298B9B1F8(v18, &v30);
    v24 = *(v18 + 32);
    if (v24 < *(v18 + 24))
    {
      goto LABEL_48;
    }

    while (1)
    {
      v25 = *(v18 + 16);
      if (v25)
      {
        goto LABEL_47;
      }

      if (!*(v18 + 56))
      {
        goto LABEL_50;
      }

      result = sub_298B9AE98(v18);
      v24 = *(v18 + 32);
      if (v24 < *(v18 + 24))
      {
        goto LABEL_48;
      }
    }
  }

  v21 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v3);
  v22 = *(v18 + 32);
  if (v22 < *(v18 + 24))
  {
LABEL_32:
    *(v18 + 32) = v22 + 1;
    *v22 = 61;
    v26 = v14 & v21;
    if (!*(v8 + 52))
    {
LABEL_41:
      v29 = "0x%llx";
      goto LABEL_42;
    }
  }

  else
  {
    while (1)
    {
      v23 = *(v18 + 16);
      if (v23)
      {
        *(v18 + 32) = v23;
        sub_298B9BB84(v18);
        v22 = *(v18 + 32);
        goto LABEL_32;
      }

      if (!*(v18 + 56))
      {
        break;
      }

      sub_298B9AE98(v18);
      v22 = *(v18 + 32);
      if (v22 < *(v18 + 24))
      {
        goto LABEL_32;
      }
    }

    LOBYTE(v30) = 61;
    sub_298B9BB84(v18);
    v26 = v14 & v21;
    if (!*(v8 + 52))
    {
      goto LABEL_41;
    }
  }

  v27 = v26;
  while (v27)
  {
    v28 = v27;
    v27 *= 16;
    if (v28 >> 60)
    {
      if (v28 >> 61 > 4)
      {
        v29 = "0%llxh";
        goto LABEL_42;
      }

      break;
    }
  }

  v29 = "%llxh";
LABEL_42:
  v31 = v29;
  v32 = v26;
  v30 = &unk_2A1F1BC68;
  result = sub_298B9B1F8(v18, &v30);
  v24 = *(v18 + 32);
  if (v24 >= *(v18 + 24))
  {
    while (1)
    {
      v25 = *(v18 + 16);
      if (v25)
      {
        break;
      }

      if (!*(v18 + 56))
      {
LABEL_50:
        LOBYTE(v33[0]) = 10;
        return sub_298B9BB84(v18);
      }

      result = sub_298B9AE98(v18);
      v24 = *(v18 + 32);
      if (v24 < *(v18 + 24))
      {
        goto LABEL_48;
      }
    }

LABEL_47:
    *(v18 + 32) = v25;
    result = sub_298B9BB84(v18);
    v24 = *(v18 + 32);
  }

LABEL_48:
  *(v18 + 32) = v24 + 1;
  *v24 = 10;
  return result;
}

void sub_298CC444C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4, size_t __n, uint64_t a6, uint64_t a7)
{
  v11 = *a2;
  v12 = *a2 - 6927;
  if (v12 > 0x15)
  {
    goto LABEL_5;
  }

  v13 = 1;
  if (((1 << v12) & 0xF) != 0)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v14 = 1 << v12;
  if ((v14 & 0x3C000) != 0)
  {
    goto LABEL_7;
  }

  if ((v14 & 0x3C0000) != 0)
  {
LABEL_10:
    v15 = ".8b";
    v16 = 3;
    v17 = *(a7 + 32);
    if (*(a7 + 24) == v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_5:
  if ((v11 - 6923) >= 4)
  {
    v45 = &dword_29EEB6B98;
    v46 = 13600;
    while (*(v45 - 8) != v11)
    {
      v45 += 10;
      v46 -= 40;
      if (!v46)
      {

        sub_298CC0B24(a1, a2, a3, a4, __n, a6, a7);
        return;
      }
    }

    v47 = *(a7 + 32);
    if (*(a7 + 24) == v47)
    {
      sub_298B9BCEC(a7, "\t", 1uLL);
      v48 = *(a7 + 32);
    }

    else
    {
      *v47 = 9;
      v48 = (*(a7 + 32) + 1);
      *(a7 + 32) = v48;
    }

    v49 = *(v45 - 3);
    if (v49)
    {
      v50 = strlen(*(v45 - 3));
      v51 = v50;
      if (v50 <= *(a7 + 24) - v48)
      {
        if (v50)
        {
          memcpy(v48, v49, v50);
          v48 = (*(a7 + 32) + v51);
          *(a7 + 32) = v48;
        }
      }

      else
      {
        sub_298B9BCEC(a7, v49, v50);
        v48 = *(a7 + 32);
      }
    }

    v52 = *(v45 - 2);
    if (v52)
    {
      v53 = strlen(*(v45 - 2));
      v54 = v53;
      if (v53 <= *(a7 + 24) - v48)
      {
        if (v53)
        {
          memcpy(v48, v52, v53);
          v48 = (*(a7 + 32) + v54);
          *(a7 + 32) = v48;
        }
      }

      else
      {
        sub_298B9BCEC(a7, v52, v53);
        v48 = *(a7 + 32);
      }
    }

    v55 = a1;
    if (v48 >= *(a7 + 24))
    {
      v56 = *(a7 + 16);
      if (!v56)
      {
        while (*(a7 + 56))
        {
          sub_298B9AE98(a7);
          v48 = *(a7 + 32);
          if (v48 < *(a7 + 24))
          {
            v55 = a1;
            goto LABEL_68;
          }

          v56 = *(a7 + 16);
          v55 = a1;
          if (v56)
          {
            goto LABEL_67;
          }
        }

        LOBYTE(v81[0]) = 9;
        sub_298B9BB84(a7);
        v55 = a1;
LABEL_69:
        v57 = *(v45 - 2);
        v58 = v57 + 1;
        sub_298CC4E38(v55, *(a2 + 16), v57, a7, "", 0);
        v59 = v57 + 1;
        if (*(v45 - 4) != 1)
        {
          goto LABEL_90;
        }

        v60 = *(a7 + 32);
        if (v60 < *(a7 + 24))
        {
LABEL_76:
          *(a7 + 32) = v60 + 1;
          *v60 = 91;
          v59 = v57 + 2;
          v62 = *(*(a2 + 16) + 16 * v58 + 8);
          if ((v62 & 0x8000000000000000) != 0)
          {
LABEL_82:
            v62 = -v62;
            v63 = a7;
            if (!HIDWORD(v62))
            {
              sub_298B8FC48(a7, v62, 0, 0, 1);
              goto LABEL_84;
            }

            v64 = 1;
LABEL_117:
            sub_298B8FEA0(v63, v62, 0, 0, v64);
            while (1)
            {
LABEL_84:
              v65 = *(a7 + 32);
              if (v65 < *(a7 + 24))
              {
                goto LABEL_89;
              }

              v66 = *(a7 + 16);
              if (v66)
              {
                *(a7 + 32) = v66;
                sub_298B9BB84(a7);
                v65 = *(a7 + 32);
LABEL_89:
                *(a7 + 32) = v65 + 1;
                *v65 = 93;
                goto LABEL_90;
              }

              if (!*(a7 + 56))
              {
                break;
              }

              sub_298B9AE98(a7);
            }

            LOBYTE(v81[0]) = 93;
            sub_298B9BB84(a7);
LABEL_90:
            v67 = *(*(a2 + 16) + 16 * v59 + 8);
            v68 = *(a7 + 32);
            if ((*(a7 + 24) - v68) > 2)
            {
              *(v68 + 2) = 91;
              *v68 = 8236;
              *(a7 + 32) += 3;
            }

            else
            {
              sub_298B9BCEC(a7, ", [", 3uLL);
            }

            (*(*a1 + 40))(a1, a7, v67);
            v69 = *(a7 + 32);
            if (v69 < *(a7 + 24))
            {
LABEL_99:
              *(a7 + 32) = v69 + 1;
              *v69 = 93;
              v71 = *v45;
              if (!*v45)
              {
LABEL_115:
                v41 = a1;
                v42 = a7;
                v43 = a4;
                v44 = __n;
                goto LABEL_45;
              }
            }

            else
            {
              while (1)
              {
                v70 = *(a7 + 16);
                if (v70)
                {
                  *(a7 + 32) = v70;
                  sub_298B9BB84(a7);
                  v69 = *(a7 + 32);
                  goto LABEL_99;
                }

                if (!*(a7 + 56))
                {
                  break;
                }

                sub_298B9AE98(a7);
                v69 = *(a7 + 32);
                if (v69 < *(a7 + 24))
                {
                  goto LABEL_99;
                }
              }

              LOBYTE(v81[0]) = 93;
              sub_298B9BB84(a7);
              v71 = *v45;
              if (!*v45)
              {
                goto LABEL_115;
              }
            }

            v72 = *(*(a2 + 16) + 16 * (v59 + 1) + 8);
            v73 = *(a7 + 32);
            v74 = *(a7 + 24) - v73;
            if (v72 == 11)
            {
              v75 = *(a7 + 24) != v73;
              if (v74 > 1)
              {
                *v73 = 8236;
                *(a7 + 32) += 2;
              }

              else
              {
                sub_298B9BCEC(a7, ", ", 2uLL);
              }

              sub_298B47440(v81, a7, 0, a1[48], a1[49]);
              v76 = v81[0];
              v77 = v81[0][4];
              if (*(v81[0] + 3) == v77)
              {
                sub_298B9BCEC(v81[0], "#", 1uLL);
              }

              else
              {
                *v77 = 35;
                ++v76[4];
              }

              if ((v71 & 0x80000000) != 0)
              {
                v78 = -v71;
                v79 = 1;
              }

              else
              {
                v78 = v71;
                v79 = 0;
              }

              sub_298B8FC48(v81[0], v78, 0, 0, v79);
              sub_298B47608(v81);
            }

            else
            {
              v75 = *(a7 + 24) != v73;
              if (v74 > 1)
              {
                *v73 = 8236;
                *(a7 + 32) += 2;
              }

              else
              {
                sub_298B9BCEC(a7, ", ", 2uLL);
              }

              (*(*a1 + 40))(a1, a7, v72);
            }

            goto LABEL_115;
          }
        }

        else
        {
          while (1)
          {
            v61 = *(a7 + 16);
            if (v61)
            {
              *(a7 + 32) = v61;
              sub_298B9BB84(a7);
              v60 = *(a7 + 32);
              goto LABEL_76;
            }

            if (!*(a7 + 56))
            {
              break;
            }

            sub_298B9AE98(a7);
            v60 = *(a7 + 32);
            if (v60 < *(a7 + 24))
            {
              goto LABEL_76;
            }
          }

          LOBYTE(v81[0]) = 91;
          sub_298B9BB84(a7);
          v59 = v57 + 2;
          v62 = *(*(a2 + 16) + 16 * v58 + 8);
          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_82;
          }
        }

        v63 = a7;
        if (!HIDWORD(v62))
        {
          sub_298B8FC48(a7, v62, 0, 0, 0);
          goto LABEL_84;
        }

        v64 = 0;
        goto LABEL_117;
      }

LABEL_67:
      *(a7 + 32) = v56;
      sub_298B9BB84(a7);
      v48 = *(a7 + 32);
    }

LABEL_68:
    *(a7 + 32) = v48 + 1;
    *v48 = 9;
    goto LABEL_69;
  }

  v13 = 0;
LABEL_7:
  v15 = ".16b";
  v16 = 4;
  v17 = *(a7 + 32);
  if (*(a7 + 24) == v17)
  {
LABEL_8:
    sub_298B9BCEC(a7, "\t", 1uLL);
    v18 = *(a7 + 32);
    goto LABEL_12;
  }

LABEL_11:
  *v17 = 9;
  v18 = *(a7 + 32) + 1;
  *(a7 + 32) = v18;
LABEL_12:
  if (v13)
  {
    v19 = "tbx";
  }

  else
  {
    v19 = "tbl";
  }

  if ((*(a7 + 24) - v18) > 2)
  {
    *v18 = *v19;
    *(v18 + 2) = v19[2];
    v25 = *(a7 + 24);
    v20 = (*(a7 + 32) + 3);
    *(a7 + 32) = v20;
    if (v16 <= v25 - v20)
    {
LABEL_17:
      memcpy(v20, v15, v16);
      v21 = *(a7 + 24);
      v22 = (*(a7 + 32) + v16);
      *(a7 + 32) = v22;
      v23 = a1;
      if (v22 >= v21)
      {
        goto LABEL_18;
      }

LABEL_24:
      v26 = a4;
LABEL_26:
      v27 = __n;
      *(a7 + 32) = v22 + 1;
      *v22 = 9;
      goto LABEL_27;
    }
  }

  else
  {
    sub_298B9BCEC(a7, v19, 3uLL);
    v20 = *(a7 + 32);
    if (v16 <= *(a7 + 24) - v20)
    {
      goto LABEL_17;
    }
  }

  sub_298B9BCEC(a7, v15, v16);
  v22 = *(a7 + 32);
  v23 = a1;
  if (v22 < *(a7 + 24))
  {
    goto LABEL_24;
  }

  while (1)
  {
LABEL_18:
    v24 = *(a7 + 16);
    if (v24)
    {
      v26 = a4;
      *(a7 + 32) = v24;
      sub_298B9BB84(a7);
      v22 = *(a7 + 32);
      goto LABEL_26;
    }

    if (!*(a7 + 56))
    {
      break;
    }

    sub_298B9AE98(a7);
    v22 = *(a7 + 32);
    if (v22 < *(a7 + 24))
    {
      goto LABEL_24;
    }
  }

  v26 = a4;
  v27 = __n;
  LOBYTE(v81[0]) = 9;
  sub_298B9BB84(a7);
LABEL_27:
  v28 = *(*(a2 + 16) + 8);
  sub_298B47440(v81, a7, 1, v23[48], v23[49]);
  v29 = byte_298D34367[v28 - 1];
  v30 = v81[0];
  v31 = strlen(&aV10[v29]);
  v32 = v81[0][4];
  if (v31 <= v81[0][3] - v32)
  {
    if (v31)
    {
      memcpy(v32, &aV10[v29], v31);
      v30[4] += v31;
    }
  }

  else
  {
    sub_298B9BCEC(v81[0], &aV10[v29], v31);
  }

  sub_298B47608(v81);
  v33 = *(a7 + 32);
  if (*(a7 + 24) - v33 > 1uLL)
  {
    *v33 = 8236;
    *(a7 + 32) += 2;
  }

  else
  {
    sub_298B9BCEC(a7, ", ", 2uLL);
  }

  if (v13)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  sub_298CC4E38(a1, *(a2 + 16), v34, a7, "", 0);
  v35 = *(a7 + 32);
  if (*(a7 + 24) - v35 > 1uLL)
  {
    *v35 = 8236;
    *(a7 + 32) += 2;
  }

  else
  {
    sub_298B9BCEC(a7, ", ", 2uLL);
  }

  v36 = *(*(a2 + 16) + 16 * v34 + 24);
  sub_298B47440(v81, a7, 1, a1[48], a1[49]);
  v37 = byte_298D34367[v36 - 1];
  v38 = v81[0];
  v39 = strlen(&aV10[v37]);
  v40 = v81[0][4];
  if (v39 <= v81[0][3] - v40)
  {
    if (v39)
    {
      memcpy(v40, &aV10[v37], v39);
      v38[4] += v39;
    }
  }

  else
  {
    sub_298B9BCEC(v81[0], &aV10[v37], v39);
  }

  sub_298B47608(v81);
  v41 = a1;
  v42 = a7;
  v43 = v26;
  v44 = v27;
LABEL_45:
  sub_298B46CE4(v41, v42, v43, v44);
}

void *sub_298CC4E38(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _BYTE *a5, unint64_t a6)
{
  v9 = *(a2 + 16 * a3 + 8);
  v10 = a4[4];
  if (a4[3] - v10 > 1uLL)
  {
    *v10 = 8315;
    a4[4] += 2;
    v11 = *(a1 + 32);
    v12 = v11[3];
    v13 = v9 >> 3;
    if ((v9 >> 3) >= *(v12 + 1814))
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_298B9BCEC(a4, "{ ", 2uLL);
    v11 = *(a1 + 32);
    v12 = v11[3];
    v13 = v9 >> 3;
    if ((v9 >> 3) >= *(v12 + 1814))
    {
      goto LABEL_6;
    }
  }

  if ((*(*(v12 + 1800) + v13) >> (v9 & 7)))
  {
LABEL_14:
    v14 = 0;
    v15 = 2;
    v16 = ", ";
    goto LABEL_15;
  }

LABEL_6:
  if (v13 < *(v12 + 3126) && ((*(*(v12 + 3112) + v13) >> (v9 & 7)) & 1) != 0 || v13 < *(v12 + 3094) && ((*(*(v12 + 3080) + v13) >> (v9 & 7)) & 1) != 0 || v13 < *(v12 + 310) && ((*(*(v12 + 296) + v13) >> (v9 & 7)) & 1) != 0 || v13 < *(v12 + 3286) && ((*(*(v12 + 3272) + v13) >> (v9 & 7)) & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v13 < *(v12 + 2518) && ((*(*(v12 + 2504) + v13) >> (v9 & 7)) & 1) != 0 || v13 < *(v12 + 3862) && ((*(*(v12 + 3848) + v13) >> (v9 & 7)) & 1) != 0 || v13 < *(v12 + 3830) && ((*(*(v12 + 3816) + v13) >> (v9 & 7)) & 1) != 0)
  {
    v14 = 0;
    v15 = 3;
  }

  else
  {
    if ((v13 >= *(v12 + 2742) || ((*(*(v12 + 2728) + v13) >> (v9 & 7)) & 1) == 0) && (v13 >= *(v12 + 5142) || ((*(*(v12 + 5128) + v13) >> (v9 & 7)) & 1) == 0) && (v13 >= *(v12 + 5110) || ((*(*(v12 + 5096) + v13) >> (v9 & 7)) & 1) == 0) && (v13 >= *(v12 + 6070) || ((*(*(v12 + 6056) + v13) >> (v9 & 7)) & 1) == 0))
    {
      v14 = 1;
      v16 = " - ";
      v15 = 1;
      goto LABEL_15;
    }

    v14 = 0;
    v15 = 4;
  }

  v16 = " - ";
LABEL_15:
  if (v13 < *(v12 + 3286) && ((*(*(v12 + 3272) + v13) >> (v9 & 7)) & 1) != 0)
  {
    v17 = 8;
    v18 = 1;
  }

  else
  {
    v17 = 1;
    if (v13 >= *(v12 + 6070))
    {
      v18 = 0;
    }

    else
    {
      v19 = (1 << (v9 & 7)) & *(*(v12 + 6056) + v13);
      v20 = v19 == 0;
      v18 = v19 != 0;
      if (v20)
      {
        v17 = 1;
      }

      else
      {
        v17 = 4;
      }
    }
  }

  v21 = *v11;
  v22 = v11[6];
  v23 = *(*v11 + 24 * v9 + 4);
  if (*(v22 + 2 * v23))
  {
    v24 = v9 + *(v22 + 2 * v23);
    v25 = (v11[10] + 2 * *(v21 + 24 * v9 + 12));
    v26 = v22 + 2 * v23;
    v27 = (v26 + 2);
    v28 = v25;
    v29 = v24;
    while (*v28 != 3)
    {
      ++v28;
      v30 = *v27++;
      v29 += v30;
      if (!v30)
      {
        goto LABEL_29;
      }
    }

    v31 = v29;
    if (v29)
    {
LABEL_46:
      v9 = v31;
      goto LABEL_47;
    }

LABEL_29:
    v32 = (v26 + 2);
    v33 = (v11[10] + 2 * *(v21 + 24 * v9 + 12));
    v34 = v24;
    while (*v33 != 11)
    {
      ++v33;
      v35 = *v32++;
      v34 += v35;
      if (!v35)
      {
        goto LABEL_34;
      }
    }

    v31 = v34;
    if (v34)
    {
      goto LABEL_46;
    }

LABEL_34:
    v36 = (v26 + 2);
    v37 = (v11[10] + 2 * *(v21 + 24 * v9 + 12));
    v38 = v24;
    while (*v37 != 39)
    {
      ++v37;
      v39 = *v36++;
      v38 += v39;
      if (!v39)
      {
        goto LABEL_94;
      }
    }

    v31 = v38;
    if (v38)
    {
      goto LABEL_46;
    }

LABEL_94:
    v62 = (v26 + 2);
    while (*v25 != 9)
    {
      ++v25;
      v63 = *v62++;
      v24 += v63;
      if (!v63)
      {
        goto LABEL_47;
      }
    }

    if (v24)
    {
      v9 = v24;
    }
  }

LABEL_47:
  v40 = v9 >> 3;
  if (v40 < *(v12 + 1238) && ((*(*(v12 + 1224) + v40) >> (v9 & 7)) & 1) != 0)
  {
    v41 = (v22 + 2 * *(v21 + 24 * v9 + 8));
    if (*v41)
    {
      v42 = v9 + *v41;
      while (1)
      {
        if (v42 >> 3 < *(v12 + 2294) && ((*(*(v12 + 2280) + (v42 >> 3)) >> (v42 & 7)) & 1) != 0)
        {
          v45 = *(v21 + 24 * v42 + 4);
          v43 = *(v22 + 2 * v45);
          if (*(v22 + 2 * v45))
          {
            LOWORD(v43) = v42 + v43;
            v46 = (v11[10] + 2 * *(v21 + 24 * v42 + 12));
            v47 = (v22 + 2 + 2 * v45);
            do
            {
              if (*v46 == 2)
              {
                v43 = v43;
                goto LABEL_52;
              }

              ++v46;
              v48 = *v47++;
              LOWORD(v43) = v43 + v48;
            }

            while (v48);
            v43 = 0;
          }

LABEL_52:
          if (v43 == v9)
          {
            break;
          }
        }

        v44 = v41[1];
        ++v41;
        v42 += v44;
        if (!v44)
        {
          goto LABEL_61;
        }
      }

      v9 = v42;
    }

    else
    {
LABEL_61:
      v9 = 0;
    }

    LODWORD(v40) = v9 >> 3;
  }

  v49 = *(v12 + 2326);
  if (v40 < v49 && ((*(*(v12 + 2312) + v40) >> (v9 & 7)) & 1) != 0)
  {
    if ((v14 | v18))
    {
      goto LABEL_75;
    }
  }

  else
  {
    if (v40 >= *(v12 + 150))
    {
      goto LABEL_75;
    }

    v50 = ((*(*(v12 + 136) + v40) >> (v9 & 7)) & 1) != 0 ? v14 : 1;
    if ((v18 | v50))
    {
      goto LABEL_75;
    }
  }

  v51 = sub_298CC5BF8(v9, v15 - 1);
  if (v9 >= v51)
  {
LABEL_75:
    for (i = v15 - 1; ; --i)
    {
      v56 = v9 >> 3;
      if (v56 < v49 && ((*(*(v12 + 2312) + v56) >> (v9 & 7)) & 1) != 0 || v56 < *(v12 + 150) && ((*(*(v12 + 136) + v56) >> (v9 & 7)) & 1) != 0)
      {
        (*(*a1 + 40))(a1, a4);
        result = a4[4];
        if (a6 > a4[3] - result)
        {
          goto LABEL_83;
        }
      }

      else
      {
        sub_298B47440(v68, a4, 1, *(a1 + 48), *(a1 + 49));
        v57 = byte_298D34367[(v9 - 1)];
        v58 = v68[0];
        v59 = strlen(&aV10[v57]);
        v60 = *(v68[0] + 32);
        if (v59 <= *(v68[0] + 24) - v60)
        {
          if (v59)
          {
            memcpy(v60, &aV10[v57], v59);
            *(v58 + 32) += v59;
          }
        }

        else
        {
          sub_298B9BCEC(v68[0], &aV10[v57], v59);
        }

        sub_298B47608(v68);
        result = a4[4];
        if (a6 > a4[3] - result)
        {
LABEL_83:
          result = sub_298B9BCEC(a4, a5, a6);
          goto LABEL_91;
        }
      }

      if (a6)
      {
        result = memcpy(result, a5, a6);
        a4[4] += a6;
      }

LABEL_91:
      if (!i)
      {
        goto LABEL_122;
      }

      v61 = a4[4];
      if (a4[3] - v61 > 1uLL)
      {
        *v61 = 8236;
        a4[4] += 2;
      }

      else
      {
        sub_298B9BCEC(a4, ", ", 2uLL);
      }

      v9 = sub_298CC5BF8(v9, v17);
      v12 = *(*(a1 + 32) + 24);
      v49 = *(v12 + 2326);
    }
  }

  v52 = v16;
  v53 = v51;
  (*(*a1 + 40))(a1, a4, v9);
  result = a4[4];
  if (a6 <= a4[3] - result)
  {
    if (a6)
    {
      result = memcpy(result, a5, a6);
      a4[4] += a6;
    }
  }

  else
  {
    result = sub_298B9BCEC(a4, a5, a6);
  }

  if ((v14 & 1) == 0)
  {
    v64 = strlen(v52);
    v65 = a4[4];
    if (v64 <= a4[3] - v65)
    {
      if (v64)
      {
        memcpy(v65, v52, v64);
        a4[4] += v64;
      }
    }

    else
    {
      sub_298B9BCEC(a4, v52, v64);
    }

    (*(*a1 + 40))(a1, a4, v53);
    result = a4[4];
    if (a6 <= a4[3] - result)
    {
      if (a6)
      {
        result = memcpy(result, a5, a6);
        a4[4] += a6;
      }
    }

    else
    {
      result = sub_298B9BCEC(a4, a5, a6);
    }
  }

LABEL_122:
  v66 = a4[4];
  if (a4[3] - v66 <= 1uLL)
  {
    return sub_298B9BCEC(a4, " }", 2uLL);
  }

  *v66 = 32032;
  a4[4] += 2;
  return result;
}

char *sub_298CC56A8(uint64_t a1, int a2)
{
  v2 = word_298D61BF0[a2 - 1];
  strlen(&aD7D8D9D10_0[v2]);
  return &aD7D8D9D10_0[v2];
}

_BYTE *sub_298CC56EC(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  if (*(a2 + 16 * a3 + 8) == 11)
  {
    v12[4] = v5;
    v12[5] = v6;
    sub_298B47440(v12, a5, 0, a1[48], a1[49]);
    v8 = v12[0];
    v9 = v12[0][4];
    if (*(v12[0] + 3) == v9)
    {
      sub_298B9BCEC(v12[0], "#", 1uLL);
    }

    else
    {
      *v9 = 35;
      ++v8[4];
    }

    sub_298B8FC48(v12[0], a4, 0, 0, 0);
    return sub_298B47608(v12);
  }

  else
  {
    v10 = *(*a1 + 40);

    return v10();
  }
}

_BYTE *sub_298CC57CC(_BYTE *result, int a2, int a3, unsigned int a4, int a5, uint64_t a6)
{
  v7 = a5;
  v10 = result;
  if (a5 != 120 || (a2 & 1) != 0)
  {
    if (a2)
    {
      v12 = 115;
    }

    else
    {
      v12 = 117;
    }

    v13 = *(a6 + 32);
    if (v13 >= *(a6 + 24))
    {
      while (1)
      {
        v14 = *(a6 + 16);
        if (v14)
        {
          break;
        }

        if (!*(a6 + 56))
        {
          LOBYTE(v22[0]) = v12;
          result = sub_298B9BB84(a6);
          v15 = *(a6 + 32);
          if (*(a6 + 24) - v15 > 1uLL)
          {
            goto LABEL_18;
          }

LABEL_16:
          result = sub_298B9BCEC(a6, "xt", 2uLL);
          v16 = *(a6 + 32);
          goto LABEL_22;
        }

        result = sub_298B9AE98(a6);
        v13 = *(a6 + 32);
        if (v13 < *(a6 + 24))
        {
          goto LABEL_15;
        }
      }

      *(a6 + 32) = v14;
      result = sub_298B9BB84(a6);
      v13 = *(a6 + 32);
    }

LABEL_15:
    *(a6 + 32) = v13 + 1;
    *v13 = v12;
    v15 = *(a6 + 32);
    if (*(a6 + 24) - v15 <= 1uLL)
    {
      goto LABEL_16;
    }

LABEL_18:
    *v15 = 29816;
    v16 = (*(a6 + 32) + 2);
    for (*(a6 + 32) = v16; ; v16 = *(a6 + 32))
    {
LABEL_22:
      if (v16 < *(a6 + 24))
      {
        *(a6 + 32) = v16 + 1;
        *v16 = v7;
        if (a3)
        {
          goto LABEL_26;
        }

        return result;
      }

      v17 = *(a6 + 16);
      if (v17)
      {
        *(a6 + 32) = v17;
        result = sub_298B9BB84(a6);
        v18 = *(a6 + 32);
        *(a6 + 32) = v18 + 1;
        *v18 = v7;
        if (!a3)
        {
          return result;
        }

        goto LABEL_26;
      }

      if (!*(a6 + 56))
      {
        break;
      }

      result = sub_298B9AE98(a6);
    }

    LOBYTE(v22[0]) = v7;
    result = sub_298B9BB84(a6);
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v11 = *(a6 + 32);
    if ((*(a6 + 24) - v11) > 2)
    {
      *(v11 + 2) = 108;
      *v11 = 29548;
      *(a6 + 32) += 3;
    }

    else
    {
      sub_298B9BCEC(a6, "lsl", 3uLL);
    }
  }

LABEL_26:
  v19 = *(a6 + 32);
  if (*(a6 + 24) == v19)
  {
    sub_298B9BCEC(a6, " ", 1uLL);
  }

  else
  {
    *v19 = 32;
    ++*(a6 + 32);
  }

  sub_298B47440(v22, a6, 0, v10[48], v10[49]);
  v20 = v22[0];
  v21 = v22[0][4];
  if (*(v22[0] + 3) == v21)
  {
    sub_298B9BCEC(v22[0], "#", 1uLL);
  }

  else
  {
    *v21 = 35;
    ++v20[4];
  }

  sub_298B8FC48(v22[0], 31 - __clz(a4 >> 3), 0, 0, 0);
  return sub_298B47608(v22);
}

void sub_298CC5A78(uint64_t a1, char a2, unsigned __int8 *a3, unsigned int a4, void *a5)
{
  if (a2 == 2)
  {
    sub_298B47440(v14, a5, 0, *(a1 + 48), *(a1 + 49));
    v8 = v14[0];
    v9 = *(v14[0] + 32);
    if (v9 < *(v14[0] + 24))
    {
LABEL_11:
      *(v8 + 32) = v9 + 1;
      *v9 = 35;
      v12 = a4 * a3;
      if (*(a1 + 51) != 1)
      {
LABEL_14:
        v13[0] = &unk_2A1F1C388;
        v13[1] = "%lld";
        v13[2] = v12;
        goto LABEL_15;
      }
    }

    else
    {
      while (1)
      {
        v10 = *(v8 + 16);
        if (v10)
        {
          *(v8 + 32) = v10;
          sub_298B9BB84(v8);
          v9 = *(v8 + 32);
          goto LABEL_11;
        }

        if (!*(v8 + 56))
        {
          break;
        }

        sub_298B9AE98(v8);
        v9 = *(v8 + 32);
        if (v9 < *(v8 + 24))
        {
          goto LABEL_11;
        }
      }

      LOBYTE(v13[0]) = 35;
      sub_298B9BB84(v8);
      v12 = a4 * a3;
      if (*(a1 + 51) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_298B47284(a1, v12, v13);
LABEL_15:
    sub_298B9B1F8(v14[0], v13);
    sub_298B47608(v14);
    return;
  }

  v11 = *(a1 + 16);

  sub_298B439C4(a3, a5, v11, 0);
}

uint64_t sub_298CC5BF8(uint64_t result, int a2)
{
  for (; a2; --a2)
  {
    result = dword_298D7991C[result - 109];
  }

  return result;
}

uint64_t sub_298CC5C4C(unint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1 == a1)
    {
      goto LABEL_40;
    }
  }

  else if ((a1 & 0xFF00) != 0)
  {
    if (a1 == a1)
    {
      goto LABEL_40;
    }
  }

  else if (!a1)
  {
    goto LABEL_40;
  }

  if (HIDWORD(a1) == a1 && ((a1 & 0xFFFFFFFF00000000) == 0 || (a1 & 0xFFFFFFFF00000000) == 0xFFFFFFFF00000000))
  {
    if (a1)
    {
      if (a1 == a1)
      {
        goto LABEL_40;
      }
    }

    else if ((a1 & 0xFF00) != 0)
    {
      if (a1 == a1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v1 = a1 << 32;
      if (!(a1 << 32))
      {
        goto LABEL_41;
      }
    }
  }

  v2 = (a1 >> 16) == a1 && HIWORD(a1) == WORD2(a1);
  if (v2 && ((a1 & 0xFFFFFFFFFFFF0000) == 0 || (a1 & 0xFFFFFFFFFFFF0000) == 0xFFFFFFFFFFFF0000))
  {
    if (a1)
    {
      if (a1 == a1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v1 = 0;
      if (!(a1 << 48) || (a1 & 0xFF00) != 0)
      {
        goto LABEL_41;
      }
    }
  }

  v3 = (a1 >> 8) == a1 && HIDWORD(a1) == (a1 >> 24);
  if (!v3 || (a1 & 0xFFFFFFFFFFFFFF00) != 0 && (a1 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFFFFFFFF00 || (v1 = 0, !a1) && a1 << 56)
  {
    v4 = 64;
    do
    {
      v5 = v4 >> 1;
      v4 &= ~1u;
      if ((((a1 >> v5) ^ a1) & ~(-1 << v5)) != 0)
      {
        v6 = 0;
      }

      else
      {
        v4 = v5;
        v6 = v5 > 2;
      }
    }

    while (v6);
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if ((v7 & a1) != 0 && (((((v7 & a1) - 1) | v7 & a1) + 1) & (((v7 & a1) - 1) | v7 & a1)) == 0)
    {
      goto LABEL_35;
    }

    v1 = v7 & ~a1;
    if (!v1)
    {
      goto LABEL_41;
    }

    if (((((v1 - 1) | v1) + 1) & ((v1 - 1) | v1)) == 0)
    {
LABEL_35:
      v1 = 1;
      goto LABEL_41;
    }

LABEL_40:
    v1 = 0;
  }

LABEL_41:
  v8 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t sub_298CC5E30(uint64_t a1, int a2, void *a3)
{
  if (*(a1 + 51) == 1)
  {
    sub_298B47440(v31, a3, 0, *(a1 + 48), *(a1 + 49));
    v5 = v31[0];
    v6 = *(v31[0] + 32);
    if (v6 < *(v31[0] + 24))
    {
LABEL_13:
      *(v5 + 32) = v6 + 1;
      *v6 = 35;
      v11 = a2;
      if (!*(a1 + 52))
      {
LABEL_24:
        v14 = "0x%llx";
LABEL_25:
        v29 = v14;
        v15 = &unk_2A1F1BC68;
        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 16);
        if (v7)
        {
          *(v5 + 32) = v7;
          sub_298B9BB84(v5);
          v6 = *(v5 + 32);
          goto LABEL_13;
        }

        if (!*(v5 + 56))
        {
          break;
        }

        sub_298B9AE98(v5);
        v6 = *(v5 + 32);
        if (v6 < *(v5 + 24))
        {
          goto LABEL_13;
        }
      }

      LOBYTE(v28) = 35;
      sub_298B9BB84(v5);
      v11 = a2;
      if (!*(a1 + 52))
      {
        goto LABEL_24;
      }
    }

    v12 = v11;
    while (v12)
    {
      v13 = v12;
      v12 *= 16;
      if (v13 >> 60)
      {
        if (v13 >> 61 > 4)
        {
          v14 = "0%llxh";
          goto LABEL_25;
        }

        break;
      }
    }

    v14 = "%llxh";
    goto LABEL_25;
  }

  sub_298B47440(v31, a3, 0, *(a1 + 48), *(a1 + 49));
  v8 = v31[0];
  v9 = *(v31[0] + 32);
  if (v9 < *(v31[0] + 24))
  {
LABEL_20:
    *(v8 + 32) = v9 + 1;
    *v9 = 35;
  }

  else
  {
    while (1)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        *(v8 + 32) = v10;
        sub_298B9BB84(v8);
        v9 = *(v8 + 32);
        goto LABEL_20;
      }

      if (!*(v8 + 56))
      {
        break;
      }

      sub_298B9AE98(v8);
      v9 = *(v8 + 32);
      if (v9 < *(v8 + 24))
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v28) = 35;
    sub_298B9BB84(v8);
  }

  v11 = a2;
  v29 = "%lld";
  v15 = &unk_2A1F1C388;
LABEL_26:
  v28 = v15;
  v30 = v11;
  sub_298B9B1F8(v31[0], &v28);
  result = sub_298B47608(v31);
  v17 = *(a1 + 8);
  if (!v17)
  {
    return result;
  }

  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  if (*(a1 + 51) == 1)
  {
    if (v18 < v19)
    {
LABEL_38:
      *(v17 + 32) = v18 + 1;
      *v18 = 61;
    }

    else
    {
      while (1)
      {
        v20 = *(v17 + 16);
        if (v20)
        {
          *(v17 + 32) = v20;
          sub_298B9BB84(v17);
          v18 = *(v17 + 32);
          goto LABEL_38;
        }

        if (!*(v17 + 56))
        {
          break;
        }

        sub_298B9AE98(v17);
        v18 = *(v17 + 32);
        if (v18 < *(v17 + 24))
        {
          goto LABEL_38;
        }
      }

      LOBYTE(v28) = 61;
      sub_298B9BB84(v17);
    }

    v28 = &unk_2A1F1C388;
    v29 = "%lld";
    v30 = a2;
    result = sub_298B9B1F8(v17, &v28);
    v22 = *(v17 + 32);
    if (v22 < *(v17 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v23 = *(v17 + 16);
      if (v23)
      {
        break;
      }

      if (!*(v17 + 56))
      {
        goto LABEL_64;
      }

      result = sub_298B9AE98(v17);
      v22 = *(v17 + 32);
      if (v22 < *(v17 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    while (1)
    {
      if (v18 < v19)
      {
        goto LABEL_45;
      }

      v21 = *(v17 + 16);
      if (v21)
      {
        break;
      }

      if (!*(v17 + 56))
      {
        LOBYTE(v28) = 61;
        sub_298B9BB84(v17);
        v24 = a2;
        if (!*(a1 + 52))
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

      sub_298B9AE98(v17);
      v19 = *(v17 + 24);
      v18 = *(v17 + 32);
    }

    *(v17 + 32) = v21;
    sub_298B9BB84(v17);
    v18 = *(v17 + 32);
LABEL_45:
    *(v17 + 32) = v18 + 1;
    *v18 = 61;
    v24 = a2;
    if (!*(a1 + 52))
    {
LABEL_55:
      v27 = "0x%llx";
      goto LABEL_56;
    }

LABEL_46:
    v25 = v24;
    while (v25)
    {
      v26 = v25;
      v25 *= 16;
      if (v26 >> 60)
      {
        if (v26 >> 61 > 4)
        {
          v27 = "0%llxh";
          goto LABEL_56;
        }

        break;
      }
    }

    v27 = "%llxh";
LABEL_56:
    v29 = v27;
    v30 = v24;
    v28 = &unk_2A1F1BC68;
    result = sub_298B9B1F8(v17, &v28);
    v22 = *(v17 + 32);
    if (v22 < *(v17 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v23 = *(v17 + 16);
      if (v23)
      {
        break;
      }

      if (!*(v17 + 56))
      {
LABEL_64:
        LOBYTE(v31[0]) = 10;
        return sub_298B9BB84(v17);
      }

      result = sub_298B9AE98(v17);
      v22 = *(v17 + 32);
      if (v22 < *(v17 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  *(v17 + 32) = v23;
  result = sub_298B9BB84(v17);
  v22 = *(v17 + 32);
LABEL_62:
  *(v17 + 32) = v22 + 1;
  *v22 = 10;
  return result;
}

uint64_t sub_298CC62C0(uint64_t a1, unint64_t a2, void *a3)
{
  if (*(a1 + 51) == 1)
  {
    sub_298B47440(v29, a3, 0, *(a1 + 48), *(a1 + 49));
    v5 = v29[0];
    v6 = *(v29[0] + 32);
    if (v6 < *(v29[0] + 24))
    {
LABEL_13:
      *(v5 + 32) = v6 + 1;
      *v6 = 35;
      if (!*(a1 + 52))
      {
LABEL_24:
        v13 = "0x%llx";
LABEL_25:
        v27 = v13;
        v14 = &unk_2A1F1BC68;
        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 16);
        if (v7)
        {
          *(v5 + 32) = v7;
          sub_298B9BB84(v5);
          v6 = *(v5 + 32);
          goto LABEL_13;
        }

        if (!*(v5 + 56))
        {
          break;
        }

        sub_298B9AE98(v5);
        v6 = *(v5 + 32);
        if (v6 < *(v5 + 24))
        {
          goto LABEL_13;
        }
      }

      LOBYTE(v26) = 35;
      sub_298B9BB84(v5);
      if (!*(a1 + 52))
      {
        goto LABEL_24;
      }
    }

    v11 = a2;
    while (v11)
    {
      v12 = v11;
      v11 *= 16;
      if (v12 >> 60)
      {
        if (v12 >> 61 > 4)
        {
          v13 = "0%llxh";
          goto LABEL_25;
        }

        break;
      }
    }

    v13 = "%llxh";
    goto LABEL_25;
  }

  sub_298B47440(v29, a3, 0, *(a1 + 48), *(a1 + 49));
  v8 = v29[0];
  v9 = *(v29[0] + 32);
  if (v9 < *(v29[0] + 24))
  {
LABEL_20:
    *(v8 + 32) = v9 + 1;
    *v9 = 35;
  }

  else
  {
    while (1)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        *(v8 + 32) = v10;
        sub_298B9BB84(v8);
        v9 = *(v8 + 32);
        goto LABEL_20;
      }

      if (!*(v8 + 56))
      {
        break;
      }

      sub_298B9AE98(v8);
      v9 = *(v8 + 32);
      if (v9 < *(v8 + 24))
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v26) = 35;
    sub_298B9BB84(v8);
  }

  v27 = "%lld";
  v14 = &unk_2A1F1C388;
LABEL_26:
  v26 = v14;
  v28 = a2;
  sub_298B9B1F8(v29[0], &v26);
  result = sub_298B47608(v29);
  v16 = *(a1 + 8);
  if (!v16)
  {
    return result;
  }

  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  if (*(a1 + 51) == 1)
  {
    if (v17 < v18)
    {
LABEL_38:
      *(v16 + 32) = v17 + 1;
      *v17 = 61;
    }

    else
    {
      while (1)
      {
        v19 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 32) = v19;
          sub_298B9BB84(v16);
          v17 = *(v16 + 32);
          goto LABEL_38;
        }

        if (!*(v16 + 56))
        {
          break;
        }

        sub_298B9AE98(v16);
        v17 = *(v16 + 32);
        if (v17 < *(v16 + 24))
        {
          goto LABEL_38;
        }
      }

      LOBYTE(v26) = 61;
      sub_298B9BB84(v16);
    }

    v26 = &unk_2A1F1C388;
    v27 = "%lld";
    v28 = a2;
    result = sub_298B9B1F8(v16, &v26);
    v21 = *(v16 + 32);
    if (v21 < *(v16 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v22 = *(v16 + 16);
      if (v22)
      {
        break;
      }

      if (!*(v16 + 56))
      {
        goto LABEL_64;
      }

      result = sub_298B9AE98(v16);
      v21 = *(v16 + 32);
      if (v21 < *(v16 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    while (1)
    {
      if (v17 < v18)
      {
        goto LABEL_45;
      }

      v20 = *(v16 + 16);
      if (v20)
      {
        break;
      }

      if (!*(v16 + 56))
      {
        LOBYTE(v26) = 61;
        sub_298B9BB84(v16);
        if (!*(a1 + 52))
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

      sub_298B9AE98(v16);
      v18 = *(v16 + 24);
      v17 = *(v16 + 32);
    }

    *(v16 + 32) = v20;
    sub_298B9BB84(v16);
    v17 = *(v16 + 32);
LABEL_45:
    *(v16 + 32) = v17 + 1;
    *v17 = 61;
    if (!*(a1 + 52))
    {
LABEL_55:
      v25 = "0x%llx";
      goto LABEL_56;
    }

LABEL_46:
    v23 = a2;
    while (v23)
    {
      v24 = v23;
      v23 *= 16;
      if (v24 >> 60)
      {
        if (v24 >> 61 > 4)
        {
          v25 = "0%llxh";
          goto LABEL_56;
        }

        break;
      }
    }

    v25 = "%llxh";
LABEL_56:
    v27 = v25;
    v28 = a2;
    v26 = &unk_2A1F1BC68;
    result = sub_298B9B1F8(v16, &v26);
    v21 = *(v16 + 32);
    if (v21 < *(v16 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v22 = *(v16 + 16);
      if (v22)
      {
        break;
      }

      if (!*(v16 + 56))
      {
LABEL_64:
        LOBYTE(v29[0]) = 10;
        return sub_298B9BB84(v16);
      }

      result = sub_298B9AE98(v16);
      v21 = *(v16 + 32);
      if (v21 < *(v16 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  *(v16 + 32) = v22;
  result = sub_298B9BB84(v16);
  v21 = *(v16 + 32);
LABEL_62:
  *(v16 + 32) = v21 + 1;
  *v21 = 10;
  return result;
}

uint64_t sub_298CC6738(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 51) == 1)
  {
    sub_298B47440(v31, a3, 0, *(a1 + 48), *(a1 + 49));
    v5 = v31[0];
    v6 = *(v31[0] + 32);
    if (v6 < *(v31[0] + 24))
    {
LABEL_13:
      *(v5 + 32) = v6 + 1;
      *v6 = 35;
      v11 = a2;
      if (!*(a1 + 52))
      {
LABEL_24:
        v14 = "0x%llx";
LABEL_25:
        v29 = v14;
        v15 = &unk_2A1F1BC68;
        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 16);
        if (v7)
        {
          *(v5 + 32) = v7;
          sub_298B9BB84(v5);
          v6 = *(v5 + 32);
          goto LABEL_13;
        }

        if (!*(v5 + 56))
        {
          break;
        }

        sub_298B9AE98(v5);
        v6 = *(v5 + 32);
        if (v6 < *(v5 + 24))
        {
          goto LABEL_13;
        }
      }

      LOBYTE(v28) = 35;
      sub_298B9BB84(v5);
      v11 = a2;
      if (!*(a1 + 52))
      {
        goto LABEL_24;
      }
    }

    v12 = v11;
    while (v12)
    {
      v13 = v12;
      v12 *= 16;
      if (v13 >> 60)
      {
        if (v13 >> 61 > 4)
        {
          v14 = "0%llxh";
          goto LABEL_25;
        }

        break;
      }
    }

    v14 = "%llxh";
    goto LABEL_25;
  }

  sub_298B47440(v31, a3, 0, *(a1 + 48), *(a1 + 49));
  v8 = v31[0];
  v9 = *(v31[0] + 32);
  if (v9 < *(v31[0] + 24))
  {
LABEL_20:
    *(v8 + 32) = v9 + 1;
    *v9 = 35;
  }

  else
  {
    while (1)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        *(v8 + 32) = v10;
        sub_298B9BB84(v8);
        v9 = *(v8 + 32);
        goto LABEL_20;
      }

      if (!*(v8 + 56))
      {
        break;
      }

      sub_298B9AE98(v8);
      v9 = *(v8 + 32);
      if (v9 < *(v8 + 24))
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v28) = 35;
    sub_298B9BB84(v8);
  }

  v11 = a2;
  v29 = "%lld";
  v15 = &unk_2A1F1C388;
LABEL_26:
  v28 = v15;
  v30 = v11;
  sub_298B9B1F8(v31[0], &v28);
  result = sub_298B47608(v31);
  v17 = *(a1 + 8);
  if (!v17)
  {
    return result;
  }

  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  if (*(a1 + 51) == 1)
  {
    if (v18 < v19)
    {
LABEL_38:
      *(v17 + 32) = v18 + 1;
      *v18 = 61;
    }

    else
    {
      while (1)
      {
        v20 = *(v17 + 16);
        if (v20)
        {
          *(v17 + 32) = v20;
          sub_298B9BB84(v17);
          v18 = *(v17 + 32);
          goto LABEL_38;
        }

        if (!*(v17 + 56))
        {
          break;
        }

        sub_298B9AE98(v17);
        v18 = *(v17 + 32);
        if (v18 < *(v17 + 24))
        {
          goto LABEL_38;
        }
      }

      LOBYTE(v28) = 61;
      sub_298B9BB84(v17);
    }

    v28 = &unk_2A1F1C388;
    v29 = "%lld";
    v30 = a2;
    result = sub_298B9B1F8(v17, &v28);
    v22 = *(v17 + 32);
    if (v22 < *(v17 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v23 = *(v17 + 16);
      if (v23)
      {
        break;
      }

      if (!*(v17 + 56))
      {
        goto LABEL_64;
      }

      result = sub_298B9AE98(v17);
      v22 = *(v17 + 32);
      if (v22 < *(v17 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    while (1)
    {
      if (v18 < v19)
      {
        goto LABEL_45;
      }

      v21 = *(v17 + 16);
      if (v21)
      {
        break;
      }

      if (!*(v17 + 56))
      {
        LOBYTE(v28) = 61;
        sub_298B9BB84(v17);
        v24 = a2;
        if (!*(a1 + 52))
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

      sub_298B9AE98(v17);
      v19 = *(v17 + 24);
      v18 = *(v17 + 32);
    }

    *(v17 + 32) = v21;
    sub_298B9BB84(v17);
    v18 = *(v17 + 32);
LABEL_45:
    *(v17 + 32) = v18 + 1;
    *v18 = 61;
    v24 = a2;
    if (!*(a1 + 52))
    {
LABEL_55:
      v27 = "0x%llx";
      goto LABEL_56;
    }

LABEL_46:
    v25 = v24;
    while (v25)
    {
      v26 = v25;
      v25 *= 16;
      if (v26 >> 60)
      {
        if (v26 >> 61 > 4)
        {
          v27 = "0%llxh";
          goto LABEL_56;
        }

        break;
      }
    }

    v27 = "%llxh";
LABEL_56:
    v29 = v27;
    v30 = v24;
    v28 = &unk_2A1F1BC68;
    result = sub_298B9B1F8(v17, &v28);
    v22 = *(v17 + 32);
    if (v22 < *(v17 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v23 = *(v17 + 16);
      if (v23)
      {
        break;
      }

      if (!*(v17 + 56))
      {
LABEL_64:
        LOBYTE(v31[0]) = 10;
        return sub_298B9BB84(v17);
      }

      result = sub_298B9AE98(v17);
      v22 = *(v17 + 32);
      if (v22 < *(v17 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  *(v17 + 32) = v23;
  result = sub_298B9BB84(v17);
  v22 = *(v17 + 32);
LABEL_62:
  *(v17 + 32) = v22 + 1;
  *v22 = 10;
  return result;
}

uint64_t sub_298CC6BC8(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 51) == 1)
  {
    sub_298B47440(v31, a3, 0, *(a1 + 48), *(a1 + 49));
    v5 = v31[0];
    v6 = *(v31[0] + 32);
    if (v6 < *(v31[0] + 24))
    {
LABEL_13:
      *(v5 + 32) = v6 + 1;
      *v6 = 35;
      v11 = a2;
      if (!*(a1 + 52))
      {
LABEL_24:
        v14 = "0x%llx";
LABEL_25:
        v29 = v14;
        v15 = &unk_2A1F1BC68;
        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 16);
        if (v7)
        {
          *(v5 + 32) = v7;
          sub_298B9BB84(v5);
          v6 = *(v5 + 32);
          goto LABEL_13;
        }

        if (!*(v5 + 56))
        {
          break;
        }

        sub_298B9AE98(v5);
        v6 = *(v5 + 32);
        if (v6 < *(v5 + 24))
        {
          goto LABEL_13;
        }
      }

      LOBYTE(v28) = 35;
      sub_298B9BB84(v5);
      v11 = a2;
      if (!*(a1 + 52))
      {
        goto LABEL_24;
      }
    }

    v12 = v11;
    while (v12)
    {
      v13 = v12;
      v12 *= 16;
      if (v13 >> 60)
      {
        if (v13 >> 61 > 4)
        {
          v14 = "0%llxh";
          goto LABEL_25;
        }

        break;
      }
    }

    v14 = "%llxh";
    goto LABEL_25;
  }

  sub_298B47440(v31, a3, 0, *(a1 + 48), *(a1 + 49));
  v8 = v31[0];
  v9 = *(v31[0] + 32);
  if (v9 < *(v31[0] + 24))
  {
LABEL_20:
    *(v8 + 32) = v9 + 1;
    *v9 = 35;
  }

  else
  {
    while (1)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        *(v8 + 32) = v10;
        sub_298B9BB84(v8);
        v9 = *(v8 + 32);
        goto LABEL_20;
      }

      if (!*(v8 + 56))
      {
        break;
      }

      sub_298B9AE98(v8);
      v9 = *(v8 + 32);
      if (v9 < *(v8 + 24))
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v28) = 35;
    sub_298B9BB84(v8);
  }

  v11 = a2;
  v29 = "%lld";
  v15 = &unk_2A1F1C388;
LABEL_26:
  v28 = v15;
  v30 = v11;
  sub_298B9B1F8(v31[0], &v28);
  result = sub_298B47608(v31);
  v17 = *(a1 + 8);
  if (!v17)
  {
    return result;
  }

  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  if (*(a1 + 51) == 1)
  {
    if (v18 < v19)
    {
LABEL_38:
      *(v17 + 32) = v18 + 1;
      *v18 = 61;
    }

    else
    {
      while (1)
      {
        v20 = *(v17 + 16);
        if (v20)
        {
          *(v17 + 32) = v20;
          sub_298B9BB84(v17);
          v18 = *(v17 + 32);
          goto LABEL_38;
        }

        if (!*(v17 + 56))
        {
          break;
        }

        sub_298B9AE98(v17);
        v18 = *(v17 + 32);
        if (v18 < *(v17 + 24))
        {
          goto LABEL_38;
        }
      }

      LOBYTE(v28) = 61;
      sub_298B9BB84(v17);
    }

    v28 = &unk_2A1F1C388;
    v29 = "%lld";
    v30 = a2;
    result = sub_298B9B1F8(v17, &v28);
    v22 = *(v17 + 32);
    if (v22 < *(v17 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v23 = *(v17 + 16);
      if (v23)
      {
        break;
      }

      if (!*(v17 + 56))
      {
        goto LABEL_64;
      }

      result = sub_298B9AE98(v17);
      v22 = *(v17 + 32);
      if (v22 < *(v17 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    while (1)
    {
      if (v18 < v19)
      {
        goto LABEL_45;
      }

      v21 = *(v17 + 16);
      if (v21)
      {
        break;
      }

      if (!*(v17 + 56))
      {
        LOBYTE(v28) = 61;
        sub_298B9BB84(v17);
        v24 = a2;
        if (!*(a1 + 52))
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

      sub_298B9AE98(v17);
      v19 = *(v17 + 24);
      v18 = *(v17 + 32);
    }

    *(v17 + 32) = v21;
    sub_298B9BB84(v17);
    v18 = *(v17 + 32);
LABEL_45:
    *(v17 + 32) = v18 + 1;
    *v18 = 61;
    v24 = a2;
    if (!*(a1 + 52))
    {
LABEL_55:
      v27 = "0x%llx";
      goto LABEL_56;
    }

LABEL_46:
    v25 = v24;
    while (v25)
    {
      v26 = v25;
      v25 *= 16;
      if (v26 >> 60)
      {
        if (v26 >> 61 > 4)
        {
          v27 = "0%llxh";
          goto LABEL_56;
        }

        break;
      }
    }

    v27 = "%llxh";
LABEL_56:
    v29 = v27;
    v30 = v24;
    v28 = &unk_2A1F1BC68;
    result = sub_298B9B1F8(v17, &v28);
    v22 = *(v17 + 32);
    if (v22 < *(v17 + 24))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v23 = *(v17 + 16);
      if (v23)
      {
        break;
      }

      if (!*(v17 + 56))
      {
LABEL_64:
        LOBYTE(v31[0]) = 10;
        return sub_298B9BB84(v17);
      }

      result = sub_298B9AE98(v17);
      v22 = *(v17 + 32);
      if (v22 < *(v17 + 24))
      {
        goto LABEL_62;
      }
    }
  }

  *(v17 + 32) = v23;
  result = sub_298B9BB84(v17);
  v22 = *(v17 + 32);
LABEL_62:
  *(v17 + 32) = v22 + 1;
  *v22 = 10;
  return result;
}

void sub_298CC7094(uint64_t a1, int a2)
{
  sub_298B22EF0(a1);
  *(v3 + 120) = "l";
  *(v3 + 128) = 1;
  *(v3 + 18) = 1;
  *(v3 + 354) = 0;
  *(v3 + 356) = 2;
  *(v3 + 136) = " InlineAsm Start";
  *(v3 + 144) = " InlineAsm End";
  *(v3 + 384) = "\t.weak_reference ";
  *(v3 + 392) = 257;
  *(v3 + 192) = "\t.space\t";
  *(v3 + 19) = 257;
  *(v3 + 396) = 21;
  *(v3 + 404) = 0;
  *(v3 + 363) = 0;
  *(v3 + 367) = 257;
  *(v3 + 432) = 0;
  *(v3 + 352) = 1;
  *v3 = &unk_2A1F211F0;
  *(v3 + 176) = 1;
  *(v3 + 88) = "L";
  *(v3 + 96) = 1;
  *(v3 + 104) = "L";
  *(v3 + 112) = 1;
  *(v3 + 40) = "%%";
  *(v3 + 48) = ";";
  *(v3 + 56) = 1;
  if (a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 8;
  }

  *(v3 + 8) = v4;
  *(v3 + 12) = 8;
  *(v3 + 339) = 0;
  *(v3 + 337) = 1;
  *(v3 + 416) = 1;
  *(v3 + 186) = 1;
  *(v3 + 420) = 1;
}

unint64_t sub_298CC71A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  v6 = sub_298B44B48(a2, 2, v5, 0);
  v16 = "tmp";
  v17 = 259;
  v7 = sub_298B2D8D0(v5, &v16, 1);
  (*(*a4 + 192))(a4, v7, 0);
  v8 = sub_298B44B48(v7, 0, v5, 0);
  *(v5 + 264) += 32;
  v9 = *(v5 + 184);
  if (v9)
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - v9 + 32 > *(v5 + 192) - v9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *(v5 + 208) >> 7;
    if (v11 >= 0x1E)
    {
      LOBYTE(v11) = 30;
    }

    v12 = 4096 << v11;
    result = operator new(4096 << v11, 8uLL);
    v13 = *(v5 + 208);
    if (v13 >= *(v5 + 212))
    {
      v15 = result;
      sub_298B90A44(v5 + 200, (v5 + 216), v13 + 1, 8);
      result = v15;
      LODWORD(v13) = *(v5 + 208);
    }

    *(*(v5 + 200) + 8 * v13) = result;
    ++*(v5 + 208);
    *(v5 + 192) = result + v12;
  }

  else
  {
    result = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v5 + 184) = result + 32;
  *result = 0;
  *(result + 1) = (*(result + 4) << 24) | 0x12;
  *(result + 8) = 0;
  *(result + 16) = v6;
  *(result + 24) = v8;
  return result;
}

void sub_298CC7334(uint64_t a1, uint64_t a2)
{
  sub_298B22EF0(a1);
  *v3 = &unk_2A1F21268;
  if (*(a2 + 24) == 4)
  {
    *(v3 + 16) = 0;
  }

  *(v3 + 176) = 0;
  if (*(a2 + 40) == 10)
  {
    v4 = 4;
  }

  else
  {
    v4 = 8;
  }

  *(v3 + 8) = v4;
  *(v3 + 339) = 0;
  *(v3 + 48) = "//";
  *(v3 + 56) = 2;
  *(v3 + 88) = ".L";
  *(v3 + 96) = 2;
  *(v3 + 104) = ".L";
  *(v3 + 112) = 2;
  *(v3 + 160) = ".code\t32";
  *(v3 + 256) = "\t.hword\t";
  *(v3 + 264) = "\t.word\t";
  *(v3 + 272) = "\t.xword\t";
  *(v3 + 186) = 0;
  *(v3 + 384) = "\t.weak\t";
  *(v3 + 416) = 1;
  *(v3 + 420) = 1;
  *(v3 + 366) = 1;
}

void sub_298CC7410(uint64_t a1)
{
  sub_298B22EF0(a1);
  *(v1 + 354) = 0;
  *(v1 + 356) = 1;
  *(v1 + 363) = 256;
  *(v1 + 384) = "\t.weak\t";
  *(v1 + 394) = 1;
  *(v1 + 404) = 0;
  *(v1 + 396) = 0;
  *(v1 + 338) = 1;
  *(v1 + 483) = 0;
  *(v1 + 21) = 257;
  *v1 = &unk_2A1F212E8;
  *(v1 + 88) = ".L";
  *(v1 + 96) = 2;
  *(v1 + 104) = ".L";
  *(v1 + 112) = 2;
  *(v1 + 256) = "\t.hword\t";
  *(v1 + 264) = "\t.word\t";
  *(v1 + 272) = "\t.xword\t";
  *(v1 + 416) = 1;
  *(v1 + 8) = 8;
  *(v1 + 48) = "//";
  *(v1 + 56) = 2;
  *(v1 + 420) = 4;
  *(v1 + 428) = 5;
}

void sub_298CC74E4(uint64_t a1)
{
  sub_298B22EF0(a1);
  *(v1 + 354) = 0;
  *(v1 + 356) = 1;
  *(v1 + 363) = 256;
  *(v1 + 384) = "\t.weak\t";
  *(v1 + 394) = 1;
  *(v1 + 404) = 0;
  *(v1 + 396) = 0;
  *(v1 + 338) = 1;
  *(v1 + 483) = 0;
  *(v1 + 21) = 0;
  *v1 = &unk_2A1F21368;
  *(v1 + 88) = ".L";
  *(v1 + 96) = 2;
  *(v1 + 104) = ".L";
  *(v1 + 112) = 2;
  *(v1 + 256) = "\t.hword\t";
  *(v1 + 264) = "\t.word\t";
  *(v1 + 272) = "\t.xword\t";
  *(v1 + 416) = 1;
  *(v1 + 8) = 8;
  *(v1 + 48) = "//";
  *(v1 + 56) = 2;
  *(v1 + 420) = 4;
  *(v1 + 428) = 5;
}

void sub_298CC75B8(void *a1)
{
  sub_298B230F8(a1);

  JUMPOUT(0x29C2945F0);
}

void *sub_298CC75F0(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (v2)
  {
    v3 = a1[57];
    v4 = a1[56];
    if (v3 == v2)
    {
LABEL_11:
      a1[57] = v2;
      operator delete(v4);
      return a1;
    }

    while (*(v3 - 1) < 0)
    {
      operator delete(*(v3 - 24));
      v5 = *(v3 - 48);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 88;
      if (v3 == v2)
      {
        v4 = a1[56];
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 48);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 40) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void sub_298CC769C(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = a1[57];
  v4 = a1[56];
  if (v3 == v2)
  {
LABEL_11:
    a1[57] = v2;
    operator delete(v4);
LABEL_12:

    JUMPOUT(0x29C2945F0);
  }

  while (*(v3 - 1) < 0)
  {
    operator delete(*(v3 - 24));
    v5 = *(v3 - 48);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_4:
    v3 -= 88;
    if (v3 == v2)
    {
      v4 = a1[56];
      goto LABEL_11;
    }
  }

  v5 = *(v3 - 48);
  if (!v5)
  {
    goto LABEL_4;
  }

LABEL_9:
  *(v3 - 40) = v5;
  operator delete(v5);
  goto LABEL_4;
}

void *sub_298CC7768(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (v2)
  {
    v3 = a1[57];
    v4 = a1[56];
    if (v3 == v2)
    {
LABEL_11:
      a1[57] = v2;
      operator delete(v4);
      return a1;
    }

    while (*(v3 - 1) < 0)
    {
      operator delete(*(v3 - 24));
      v5 = *(v3 - 48);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 88;
      if (v3 == v2)
      {
        v4 = a1[56];
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 48);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 40) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void sub_298CC7814(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = a1[57];
  v4 = a1[56];
  if (v3 == v2)
  {
LABEL_11:
    a1[57] = v2;
    operator delete(v4);
LABEL_12:

    JUMPOUT(0x29C2945F0);
  }

  while (*(v3 - 1) < 0)
  {
    operator delete(*(v3 - 24));
    v5 = *(v3 - 48);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_4:
    v3 -= 88;
    if (v3 == v2)
    {
      v4 = a1[56];
      goto LABEL_11;
    }
  }

  v5 = *(v3 - 48);
  if (!v5)
  {
    goto LABEL_4;
  }

LABEL_9:
  *(v3 - 40) = v5;
  operator delete(v5);
  goto LABEL_4;
}

void *sub_298CC78E0(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (v2)
  {
    v3 = a1[57];
    v4 = a1[56];
    if (v3 == v2)
    {
LABEL_11:
      a1[57] = v2;
      operator delete(v4);
      return a1;
    }

    while (*(v3 - 1) < 0)
    {
      operator delete(*(v3 - 24));
      v5 = *(v3 - 48);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 88;
      if (v3 == v2)
      {
        v4 = a1[56];
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 48);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 40) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void sub_298CC798C(void *a1)
{
  *a1 = &unk_2A1F1BCF8;
  v2 = a1[56];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = a1[57];
  v4 = a1[56];
  if (v3 == v2)
  {
LABEL_11:
    a1[57] = v2;
    operator delete(v4);
LABEL_12:

    JUMPOUT(0x29C2945F0);
  }

  while (*(v3 - 1) < 0)
  {
    operator delete(*(v3 - 24));
    v5 = *(v3 - 48);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_4:
    v3 -= 88;
    if (v3 == v2)
    {
      v4 = a1[56];
      goto LABEL_11;
    }
  }

  v5 = *(v3 - 48);
  if (!v5)
  {
    goto LABEL_4;
  }

LABEL_9:
  *(v3 - 40) = v5;
  operator delete(v5);
  goto LABEL_4;
}

void sub_298CC7AC4(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  if (*a2 != 1069)
  {
    v24 = v5;
    v25 = v6;
    if (v7 == 1172)
    {
      if (*(a5 + 48) == 10)
      {
        v8 = 383;
      }

      else
      {
        v8 = 825;
      }

      v20 = *(*(a2 + 16) + 8);
      v21 = 0;
      v22 = v8;
      v23 = 0;
      v9 = *(a4 + 8);
      v10 = *a4;
      v11 = &v20;
      if (v9 >= *(a4 + 12))
      {
        if (v10 <= &v20 && v10 + 24 * v9 > &v20)
        {
          v18 = &v20 - v10;
          v19 = a4;
          sub_298B90A44(a4, (a4 + 16), v9 + 1, 24);
          a4 = v19;
          v10 = *v19;
          v11 = &v18[*v19];
        }

        else
        {
          v17 = a4;
          sub_298B90A44(a4, (a4 + 16), v9 + 1, 24);
          a4 = v17;
          v10 = *v17;
          v11 = &v20;
        }
      }

      v12 = v10 + 24 * *(a4 + 8);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      ++*(a4 + 8);
    }

    else
    {
      v15 = sub_298CC7C24(a1, a2, a4);
      v16 = a3[1];
      if (a3[2] < (v16 + 4))
      {
        sub_298B90C08(a3, a3 + 3, v16 + 4, 1);
        v16 = a3[1];
      }

      *(*a3 + v16) = v15;
      a3[1] += 4;
    }
  }
}

uint64_t sub_298CC7C24(unint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  result = qword_298D79C68[v3];
  switch(v3)
  {
    case 1324:
    case 1325:
    case 1330:
    case 1331:
    case 1332:
    case 1333:
    case 1334:
    case 1335:
    case 1336:
    case 1337:
    case 1370:
    case 1391:
    case 1392:
    case 1393:
    case 1394:
    case 1395:
    case 1468:
    case 1470:
    case 1560:
    case 1563:
    case 1566:
    case 1569:
    case 1579:
    case 1580:
    case 1808:
    case 1809:
    case 1814:
    case 1815:
    case 1816:
    case 1817:
    case 1818:
    case 1819:
    case 1820:
    case 1821:
    case 1826:
    case 1827:
    case 1828:
    case 1829:
    case 1830:
    case 1831:
    case 1833:
    case 1835:
    case 1837:
    case 1839:
    case 1841:
    case 1843:
    case 1845:
    case 1847:
    case 1849:
    case 1851:
    case 1853:
    case 1855:
    case 1857:
    case 1859:
    case 1861:
    case 1863:
    case 1865:
    case 1867:
    case 1869:
    case 1871:
    case 1873:
    case 1875:
    case 1877:
    case 1879:
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
    case 2036:
    case 2037:
    case 2042:
    case 2043:
    case 2178:
    case 2179:
    case 2223:
    case 2225:
    case 2227:
    case 2229:
    case 2231:
    case 2233:
    case 2235:
    case 2291:
    case 2294:
    case 2297:
    case 2300:
    case 2314:
    case 2315:
    case 2316:
    case 2320:
    case 2321:
    case 2322:
    case 2323:
    case 2324:
    case 2357:
    case 2358:
    case 2359:
    case 2450:
    case 2451:
    case 2452:
    case 2455:
    case 2456:
    case 2459:
    case 2460:
    case 2462:
    case 2472:
    case 2473:
    case 2474:
    case 2477:
    case 2478:
    case 2481:
    case 2482:
    case 2484:
    case 2494:
    case 2495:
    case 2496:
    case 2499:
    case 2500:
    case 2503:
    case 2504:
    case 2506:
    case 2523:
    case 2524:
    case 2525:
    case 2526:
    case 2527:
    case 2528:
    case 2529:
    case 2530:
    case 2534:
    case 2535:
    case 2536:
    case 2537:
    case 2538:
    case 2539:
    case 2540:
    case 2541:
    case 2569:
    case 2570:
    case 2571:
    case 2572:
    case 2573:
    case 2574:
    case 2575:
    case 2576:
    case 2577:
    case 2578:
    case 2579:
    case 2580:
    case 2581:
    case 2582:
    case 2583:
    case 2584:
    case 2585:
    case 2586:
    case 2587:
    case 2588:
    case 2589:
    case 2590:
    case 2591:
    case 2592:
    case 2593:
    case 2594:
    case 2595:
    case 2596:
    case 2597:
    case 2598:
    case 2599:
    case 2600:
    case 2604:
    case 2605:
    case 2606:
    case 2607:
    case 2608:
    case 2609:
    case 2610:
    case 2611:
    case 2612:
    case 2613:
    case 2614:
    case 2615:
    case 2616:
    case 2617:
    case 2618:
    case 2619:
    case 2620:
    case 2621:
    case 2622:
    case 2623:
    case 2624:
    case 2625:
    case 2626:
    case 2627:
    case 2628:
    case 2629:
    case 2630:
    case 2631:
    case 2632:
    case 2633:
    case 2634:
    case 2635:
    case 2637:
    case 2638:
    case 2639:
    case 2640:
    case 2641:
    case 2642:
    case 2643:
    case 2644:
    case 2645:
    case 2646:
    case 2647:
    case 2648:
    case 2649:
    case 2650:
    case 2654:
    case 2655:
    case 2656:
    case 2657:
    case 2658:
    case 2659:
    case 2660:
    case 2661:
    case 2662:
    case 2663:
    case 2664:
    case 2665:
    case 2666:
    case 2667:
    case 2675:
    case 2676:
    case 2679:
    case 2680:
    case 2681:
    case 2682:
    case 2683:
    case 2684:
    case 2685:
    case 2686:
    case 2687:
    case 2688:
    case 2689:
    case 2690:
    case 2691:
    case 2692:
    case 2693:
    case 2694:
    case 2695:
    case 2696:
    case 2697:
    case 2698:
    case 2699:
    case 2700:
    case 2701:
    case 2702:
    case 2703:
    case 2704:
    case 2705:
    case 2706:
    case 2707:
    case 2708:
    case 2710:
    case 2711:
    case 2720:
    case 2721:
    case 2722:
    case 2723:
    case 2724:
    case 2725:
    case 2738:
    case 2739:
    case 2740:
    case 2741:
    case 2742:
    case 2745:
    case 2746:
    case 2749:
    case 2757:
    case 2758:
    case 2759:
    case 2760:
    case 2761:
    case 2762:
    case 2775:
    case 2776:
    case 2777:
    case 2778:
    case 2779:
    case 2782:
    case 2783:
    case 2786:
    case 2850:
    case 2869:
    case 2870:
    case 2871:
    case 2882:
    case 2883:
    case 2884:
    case 2913:
    case 2914:
    case 2915:
    case 2926:
    case 2927:
    case 2928:
    case 2961:
    case 2962:
    case 2963:
    case 2974:
    case 2975:
    case 2976:
    case 3005:
    case 3006:
    case 3007:
    case 3018:
    case 3019:
    case 3020:
    case 3210:
    case 3211:
    case 3213:
    case 3214:
    case 3215:
    case 3217:
    case 3218:
    case 3220:
    case 3221:
    case 3222:
    case 3223:
    case 3224:
    case 3225:
    case 3284:
    case 3285:
    case 3286:
    case 3290:
    case 3291:
    case 3292:
    case 3293:
    case 3294:
    case 3319:
    case 3320:
    case 3321:
    case 3322:
    case 3323:
    case 3324:
    case 3325:
    case 3326:
    case 3341:
    case 3342:
    case 3343:
    case 3344:
    case 3345:
    case 3346:
    case 3347:
    case 3348:
    case 3349:
    case 3350:
    case 3351:
    case 3352:
    case 3353:
    case 3354:
    case 3355:
    case 3356:
    case 3357:
    case 3358:
    case 3359:
    case 3360:
    case 3361:
    case 3362:
    case 3363:
    case 3364:
    case 3365:
    case 3366:
    case 3372:
    case 3373:
    case 3374:
    case 3375:
    case 3376:
    case 3377:
    case 3378:
    case 3379:
    case 3383:
    case 3384:
    case 3385:
    case 3386:
    case 3387:
    case 3388:
    case 3389:
    case 3390:
    case 3396:
    case 3397:
    case 3398:
    case 3399:
    case 3400:
    case 3401:
    case 3402:
    case 3403:
    case 3409:
    case 3410:
    case 3411:
    case 3412:
    case 3413:
    case 3414:
    case 3415:
    case 3416:
    case 3422:
    case 3423:
    case 3424:
    case 3425:
    case 3426:
    case 3427:
    case 3428:
    case 3429:
    case 3433:
    case 3434:
    case 3435:
    case 3436:
    case 3437:
    case 3438:
    case 3439:
    case 3440:
    case 3444:
    case 3445:
    case 3446:
    case 3447:
    case 3448:
    case 3452:
    case 3453:
    case 3454:
    case 3455:
    case 3456:
    case 3457:
    case 3458:
    case 3459:
    case 3491:
    case 3492:
    case 3493:
    case 3497:
    case 3498:
    case 3499:
    case 3500:
    case 3501:
    case 4779:
    case 4780:
    case 4781:
    case 4782:
    case 4783:
    case 4784:
    case 4785:
    case 4786:
    case 4795:
    case 4796:
    case 4960:
    case 4961:
    case 4966:
    case 4967:
    case 5044:
    case 5045:
    case 5046:
    case 5047:
    case 5048:
    case 5049:
    case 5050:
    case 5051:
    case 5052:
    case 5053:
    case 5054:
    case 5055:
    case 5056:
    case 5057:
    case 5058:
    case 5066:
    case 5067:
    case 5163:
    case 5164:
    case 5165:
    case 5166:
    case 5167:
    case 5168:
    case 5172:
    case 5173:
    case 5174:
    case 5175:
    case 5176:
    case 5227:
    case 5228:
    case 5229:
    case 5230:
    case 5231:
    case 5232:
    case 5245:
    case 5246:
    case 5247:
    case 5248:
    case 5249:
    case 5252:
    case 5253:
    case 5256:
    case 5329:
    case 5352:
    case 5353:
    case 5354:
    case 5355:
    case 5356:
    case 5357:
    case 5434:
    case 5435:
    case 5436:
    case 5437:
    case 5438:
    case 5492:
    case 5493:
    case 5494:
    case 5495:
    case 5496:
    case 5628:
    case 5630:
    case 5632:
    case 5634:
    case 5636:
    case 5679:
    case 5680:
    case 5681:
    case 5682:
    case 5683:
    case 5684:
    case 5685:
    case 5686:
    case 5687:
    case 5688:
    case 5689:
    case 5884:
    case 5885:
    case 5886:
    case 5887:
    case 5888:
    case 5889:
    case 5890:
    case 5891:
    case 5892:
    case 5893:
    case 5894:
    case 6132:
    case 6133:
    case 6134:
    case 6135:
    case 6136:
    case 6139:
    case 6147:
    case 6148:
    case 6149:
    case 6150:
    case 6151:
    case 6154:
    case 7045:
    case 7046:
    case 7047:
    case 7048:
    case 7049:
    case 7050:
    case 7054:
    case 7055:
    case 7056:
    case 7057:
    case 7058:
    case 7101:
    case 7102:
    case 7103:
    case 7104:
    case 7105:
    case 7106:
    case 7119:
    case 7120:
    case 7121:
    case 7122:
    case 7123:
    case 7126:
    case 7127:
    case 7130:
    case 7210:
    case 7211:
    case 7212:
    case 7213:
    case 7214:
    case 7267:
    case 7268:
    case 7269:
    case 7270:
    case 7271:
    case 7403:
    case 7405:
    case 7407:
    case 7409:
    case 7636:
    case 7637:
    case 7638:
    case 7639:
    case 7640:
    case 7643:
    case 7645:
    case 7646:
    case 7702:
    case 7703:
    case 8042:
    case 8043:
    case 8046:
      v12 = *(a2 + 2);
      if (*v12 == 1)
      {
        v13 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v12 + 8)) & 0x1F;
        if (*(v12 + 16) != 1)
        {
LABEL_9:
          a1 = *(v12 + 24);
          return v13 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result;
        }
      }

      else
      {
        v13 = *(v12 + 8) & 0x1FLL;
        if (*(v12 + 16) != 1)
        {
          goto LABEL_9;
        }
      }

      a1 = *(*(a1 + 8) + 152);
      v14 = *(v12 + 24);
LABEL_15:
      LOWORD(a1) = *(*(a1 + 104) + 2 * v14);
      return v13 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result;
    case 1326:
    case 1327:
    case 1328:
    case 1329:
    case 1810:
    case 1811:
    case 1812:
    case 1813:
    case 1822:
    case 1823:
    case 1824:
    case 1825:
    case 2020:
    case 2021:
    case 2022:
    case 2023:
    case 2038:
    case 2039:
    case 2040:
    case 2041:
    case 2317:
    case 2318:
    case 2319:
    case 2713:
    case 2728:
    case 2729:
    case 2730:
    case 2731:
    case 2732:
    case 2733:
    case 2734:
    case 2765:
    case 2766:
    case 2767:
    case 2768:
    case 2769:
    case 2770:
    case 2771:
    case 2792:
    case 2793:
    case 2794:
    case 2795:
    case 2796:
    case 2797:
    case 2851:
    case 2852:
    case 2853:
    case 3287:
    case 3288:
    case 3289:
    case 3338:
    case 3339:
    case 3340:
    case 3369:
    case 3370:
    case 3371:
    case 3380:
    case 3381:
    case 3382:
    case 3393:
    case 3394:
    case 3395:
    case 3406:
    case 3407:
    case 3408:
    case 3419:
    case 3420:
    case 3421:
    case 3430:
    case 3431:
    case 3432:
    case 3441:
    case 3442:
    case 3443:
    case 3494:
    case 3495:
    case 3496:
    case 4713:
    case 4714:
    case 4715:
    case 4716:
    case 4775:
    case 4776:
    case 4777:
    case 4778:
    case 4791:
    case 4792:
    case 4793:
    case 4794:
    case 5235:
    case 5236:
    case 5237:
    case 5238:
    case 5239:
    case 5240:
    case 5241:
    case 5675:
    case 5676:
    case 5677:
    case 5678:
    case 5880:
    case 5881:
    case 5882:
    case 5883:
    case 6901:
    case 6902:
    case 6903:
    case 6904:
    case 6905:
    case 6906:
    case 7109:
    case 7110:
    case 7111:
    case 7112:
    case 7113:
    case 7114:
    case 7115:
    case 7644:
    case 7701:
    case 7837:
    case 7838:
    case 7839:
    case 7840:
    case 7841:
    case 7842:
      v15 = *(a2 + 2);
      if (*(v15 + 32) == 1)
      {
        LOWORD(v31) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 40));
      }

      else
      {
        v31 = *(v15 + 40);
      }

      if (*v15 == 1)
      {
        LOWORD(v60) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 8));
      }

      else
      {
        v60 = *(v15 + 8);
      }

      v37 = (v31 & 7) << 10;
      v38 = v60 & 0x1F;
      if (*(v15 + 48) != 1)
      {
        goto LABEL_103;
      }

      goto LABEL_48;
    case 1338:
    case 1339:
    case 1340:
    case 1341:
    case 1352:
    case 1353:
    case 1354:
    case 1595:
    case 1620:
    case 1624:
    case 1643:
    case 1645:
    case 2241:
    case 2242:
    case 2243:
    case 2244:
    case 2250:
    case 2251:
    case 2252:
    case 2253:
    case 2833:
    case 2834:
    case 2835:
    case 3048:
    case 3051:
    case 3054:
    case 3058:
    case 3062:
    case 3066:
    case 3078:
    case 3081:
    case 3146:
    case 3148:
    case 3198:
    case 3199:
    case 4596:
    case 4949:
    case 4950:
    case 4951:
    case 5095:
    case 5096:
    case 5097:
    case 5104:
    case 5105:
    case 5106:
    case 5107:
    case 5108:
    case 5109:
    case 5116:
    case 5117:
    case 5118:
    case 5119:
    case 5199:
    case 5200:
    case 5201:
    case 5202:
    case 5285:
    case 5286:
    case 5287:
    case 5533:
    case 5534:
    case 5535:
    case 5554:
    case 5555:
    case 5556:
    case 5577:
    case 5578:
    case 5579:
    case 5598:
    case 5599:
    case 5600:
    case 5620:
    case 5751:
    case 5752:
    case 5753:
    case 5756:
    case 5757:
    case 5758:
    case 5761:
    case 5762:
    case 5763:
    case 5776:
    case 5777:
    case 5778:
    case 5781:
    case 5782:
    case 5783:
    case 5786:
    case 5787:
    case 5788:
    case 5904:
    case 5905:
    case 5906:
    case 5907:
    case 5923:
    case 5924:
    case 5925:
    case 5926:
    case 6765:
    case 6766:
    case 6767:
    case 6989:
    case 6990:
    case 6991:
    case 6992:
    case 6993:
    case 6994:
    case 7001:
    case 7002:
    case 7003:
    case 7004:
    case 7160:
    case 7161:
    case 7162:
    case 7308:
    case 7309:
    case 7310:
    case 7329:
    case 7330:
    case 7331:
    case 7352:
    case 7353:
    case 7354:
    case 7373:
    case 7374:
    case 7375:
    case 7395:
    case 7722:
    case 7765:
      v27 = *(a2 + 2);
      if (*v27 == 1)
      {
        LOWORD(v28) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v27 + 8));
      }

      else
      {
        v28 = *(v27 + 8);
      }

      goto LABEL_92;
    case 1342:
    case 1343:
    case 1344:
    case 1345:
    case 1355:
    case 1357:
    case 1360:
    case 1367:
    case 1368:
    case 1369:
    case 1371:
    case 1372:
    case 1373:
    case 1374:
    case 1437:
    case 1438:
    case 1439:
    case 1440:
    case 1441:
    case 1442:
    case 1443:
    case 1444:
    case 1495:
    case 1496:
    case 1505:
    case 1506:
    case 1693:
    case 1698:
    case 1832:
    case 1834:
    case 1836:
    case 1838:
    case 1840:
    case 1842:
    case 1844:
    case 1846:
    case 1848:
    case 1850:
    case 1852:
    case 1854:
    case 1856:
    case 1858:
    case 1860:
    case 1862:
    case 1864:
    case 1866:
    case 1868:
    case 1870:
    case 1872:
    case 1874:
    case 1876:
    case 1878:
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
    case 2012:
    case 2013:
    case 2014:
    case 2015:
    case 2016:
    case 2017:
    case 2018:
    case 2019:
    case 2158:
    case 2159:
    case 2160:
    case 2161:
    case 2162:
    case 2163:
    case 2164:
    case 2165:
    case 2269:
    case 2270:
    case 2303:
    case 2304:
    case 2305:
    case 2309:
    case 2310:
    case 2311:
    case 2312:
    case 2313:
    case 2325:
    case 2326:
    case 2327:
    case 2331:
    case 2332:
    case 2333:
    case 2334:
    case 2335:
    case 2336:
    case 2337:
    case 2338:
    case 2342:
    case 2343:
    case 2344:
    case 2345:
    case 2346:
    case 2350:
    case 2351:
    case 2355:
    case 2356:
    case 2360:
    case 2361:
    case 2362:
    case 2366:
    case 2385:
    case 2386:
    case 2387:
    case 2388:
    case 2389:
    case 2399:
    case 2400:
    case 2401:
    case 2402:
    case 2403:
    case 2413:
    case 2414:
    case 2415:
    case 2416:
    case 2417:
    case 2441:
    case 2442:
    case 2443:
    case 2453:
    case 2454:
    case 2457:
    case 2458:
    case 2461:
    case 2463:
    case 2464:
    case 2465:
    case 2475:
    case 2476:
    case 2479:
    case 2480:
    case 2483:
    case 2485:
    case 2486:
    case 2487:
    case 2497:
    case 2498:
    case 2501:
    case 2502:
    case 2505:
    case 2668:
    case 2669:
    case 2671:
    case 2798:
    case 2799:
    case 2803:
    case 2807:
    case 2808:
    case 2809:
    case 2810:
    case 2811:
    case 2860:
    case 2861:
    case 2862:
    case 2863:
    case 2867:
    case 2868:
    case 2872:
    case 2873:
    case 2874:
    case 2878:
    case 2903:
    case 2904:
    case 2905:
    case 2906:
    case 2907:
    case 2911:
    case 2912:
    case 2916:
    case 2917:
    case 2918:
    case 2922:
    case 2947:
    case 2948:
    case 2949:
    case 2950:
    case 2951:
    case 2952:
    case 2953:
    case 2954:
    case 2955:
    case 2959:
    case 2960:
    case 2964:
    case 2965:
    case 2966:
    case 2970:
    case 2995:
    case 2996:
    case 2997:
    case 2998:
    case 2999:
    case 3003:
    case 3004:
    case 3008:
    case 3009:
    case 3010:
    case 3014:
    case 3039:
    case 3040:
    case 3041:
    case 3042:
    case 3043:
    case 3237:
    case 3238:
    case 3239:
    case 3240:
    case 3241:
    case 3242:
    case 3249:
    case 3250:
    case 3253:
    case 3254:
    case 3257:
    case 3274:
    case 3275:
    case 3278:
    case 3279:
    case 3282:
    case 3313:
    case 3314:
    case 3315:
    case 3327:
    case 3328:
    case 3329:
    case 3333:
    case 3334:
    case 3335:
    case 3336:
    case 3337:
    case 3460:
    case 3461:
    case 3462:
    case 3466:
    case 3467:
    case 3468:
    case 3469:
    case 3470:
    case 3486:
    case 3487:
    case 3488:
    case 3489:
    case 3490:
    case 3502:
    case 3503:
    case 3510:
    case 3526:
    case 3527:
    case 3528:
    case 3529:
    case 3530:
    case 3682:
    case 3745:
    case 4507:
    case 4508:
    case 4531:
    case 4532:
    case 4756:
    case 4757:
    case 4759:
    case 4761:
    case 4763:
    case 4765:
    case 4801:
    case 4802:
    case 4819:
    case 4824:
    case 4833:
    case 4875:
    case 4876:
    case 4877:
    case 4878:
    case 4880:
    case 4881:
    case 4952:
    case 4954:
    case 4957:
    case 5077:
    case 5078:
    case 5098:
    case 5100:
    case 5103:
    case 5132:
    case 5133:
    case 5134:
    case 5135:
    case 5136:
    case 5137:
    case 5142:
    case 5143:
    case 5144:
    case 5145:
    case 5146:
    case 5147:
    case 5177:
    case 5178:
    case 5179:
    case 5180:
    case 5181:
    case 5182:
    case 5192:
    case 5193:
    case 5194:
    case 5195:
    case 5196:
    case 5197:
    case 5203:
    case 5204:
    case 5205:
    case 5206:
    case 5260:
    case 5261:
    case 5346:
    case 5347:
    case 5348:
    case 5349:
    case 5350:
    case 5351:
    case 5386:
    case 5387:
    case 5388:
    case 5389:
    case 5390:
    case 5391:
    case 5420:
    case 5421:
    case 5422:
    case 5423:
    case 5424:
    case 5425:
    case 5440:
    case 5442:
    case 5467:
    case 5468:
    case 5469:
    case 5470:
    case 5471:
    case 5472:
    case 5478:
    case 5479:
    case 5480:
    case 5481:
    case 5482:
    case 5483:
    case 5498:
    case 5500:
    case 5525:
    case 5526:
    case 5527:
    case 5528:
    case 5529:
    case 5530:
    case 5657:
    case 5659:
    case 5661:
    case 5663:
    case 5665:
    case 5666:
    case 5702:
    case 5703:
    case 5704:
    case 5705:
    case 5706:
    case 5707:
    case 5708:
    case 5709:
    case 5710:
    case 5711:
    case 5712:
    case 5824:
    case 5826:
    case 5828:
    case 5830:
    case 5832:
    case 5834:
    case 5846:
    case 5847:
    case 5851:
    case 5853:
    case 5855:
    case 5857:
    case 5946:
    case 5948:
    case 5950:
    case 5952:
    case 5954:
    case 5956:
    case 5966:
    case 5967:
    case 5968:
    case 5969:
    case 5970:
    case 5971:
    case 5972:
    case 5973:
    case 5974:
    case 5975:
    case 5976:
    case 6050:
    case 6052:
    case 6053:
    case 6054:
    case 6055:
    case 6056:
    case 6058:
    case 6060:
    case 6062:
    case 6064:
    case 6066:
    case 6114:
    case 6115:
    case 6116:
    case 6117:
    case 6118:
    case 6119:
    case 6120:
    case 6121:
    case 6122:
    case 6123:
    case 6124:
    case 6159:
    case 6160:
    case 6161:
    case 6162:
    case 6163:
    case 6164:
    case 6201:
    case 6202:
    case 6203:
    case 6204:
    case 6205:
    case 6206:
    case 6207:
    case 6208:
    case 6245:
    case 6246:
    case 6247:
    case 6248:
    case 6249:
    case 6250:
    case 6251:
    case 6252:
    case 6324:
    case 6325:
    case 6326:
    case 6327:
    case 6328:
    case 6329:
    case 6336:
    case 6337:
    case 6338:
    case 6339:
    case 6340:
    case 6341:
    case 6768:
    case 6770:
    case 6773:
    case 6774:
    case 6775:
    case 6825:
    case 6826:
    case 6827:
    case 6828:
    case 6829:
    case 6830:
    case 6831:
    case 6832:
    case 6963:
    case 6964:
    case 6965:
    case 6966:
    case 6967:
    case 6968:
    case 6969:
    case 6979:
    case 6980:
    case 6981:
    case 6982:
    case 6983:
    case 6984:
    case 6985:
    case 7017:
    case 7018:
    case 7019:
    case 7020:
    case 7021:
    case 7022:
    case 7027:
    case 7028:
    case 7029:
    case 7030:
    case 7031:
    case 7032:
    case 7059:
    case 7060:
    case 7061:
    case 7062:
    case 7063:
    case 7064:
    case 7075:
    case 7076:
    case 7077:
    case 7078:
    case 7079:
    case 7080:
    case 7135:
    case 7136:
    case 7171:
    case 7172:
    case 7173:
    case 7174:
    case 7175:
    case 7176:
    case 7185:
    case 7186:
    case 7187:
    case 7188:
    case 7189:
    case 7190:
    case 7196:
    case 7197:
    case 7198:
    case 7199:
    case 7200:
    case 7201:
    case 7216:
    case 7218:
    case 7243:
    case 7244:
    case 7245:
    case 7246:
    case 7247:
    case 7248:
    case 7253:
    case 7254:
    case 7255:
    case 7256:
    case 7257:
    case 7258:
    case 7273:
    case 7275:
    case 7300:
    case 7301:
    case 7302:
    case 7303:
    case 7304:
    case 7305:
    case 7430:
    case 7432:
    case 7434:
    case 7436:
    case 7438:
    case 7439:
    case 7452:
    case 7453:
    case 7454:
    case 7455:
    case 7456:
    case 7457:
    case 7458:
    case 7459:
    case 7460:
    case 7461:
    case 7462:
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
    case 7569:
    case 7571:
    case 7572:
    case 7573:
    case 7574:
    case 7575:
    case 7577:
    case 7579:
    case 7581:
    case 7583:
    case 7585:
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
    case 7651:
    case 7652:
    case 7653:
    case 7654:
    case 7655:
    case 7656:
    case 7681:
    case 7682:
    case 7683:
    case 7684:
    case 7685:
    case 7686:
    case 7687:
    case 7688:
    case 7740:
    case 7741:
    case 7742:
    case 7743:
    case 7744:
    case 7745:
    case 7746:
    case 7747:
    case 7803:
    case 7804:
    case 7805:
    case 7806:
    case 7807:
    case 7808:
    case 7815:
    case 7816:
    case 7817:
    case 7818:
    case 7819:
    case 7820:
    case 7852:
    case 7853:
    case 7854:
    case 7855:
    case 7856:
    case 7857:
    case 7858:
    case 7868:
    case 7869:
    case 7870:
    case 7871:
    case 7872:
    case 7873:
    case 7874:
    case 8066:
    case 8067:
    case 8068:
    case 8069:
    case 8070:
    case 8071:
    case 8072:
    case 8082:
    case 8083:
    case 8084:
    case 8085:
    case 8086:
    case 8087:
    case 8088:
      v6 = *(a2 + 2);
      if (*v6 == 1)
      {
        LOWORD(v7) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v6 + 8));
        if (*(v6 + 16) != 1)
        {
LABEL_4:
          v8 = v7 & 0x1F;
          v9 = 32 * (*(v6 + 24) & 0x1FLL);
          if (*(v6 + 32) == 1)
          {
LABEL_5:
            v10 = *(*(a1 + 8) + 152);
            v11 = *(v6 + 40);
            goto LABEL_6;
          }

LABEL_12:
          v10 = *(v6 + 40);
          return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
        }
      }

      else
      {
        v7 = *(v6 + 8);
        if (*(v6 + 16) != 1)
        {
          goto LABEL_4;
        }
      }

      v8 = v7 & 0x1F;
      v9 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v6 + 24)) & 0x1F);
      if (*(v6 + 32) == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 1346:
    case 6761:
      v971 = *(a2 + 2);
      if (*v971 == 1)
      {
        LOWORD(v972) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v971 + 8));
      }

      else
      {
        v972 = *(v971 + 8);
      }

      if (*(v971 + 16) == 1)
      {
        LOWORD(v1365) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v971 + 24));
      }

      else
      {
        v1365 = *(v971 + 24);
      }

      if (*(v971 + 32) == 1)
      {
        LOWORD(v1366) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v971 + 40));
      }

      else
      {
        v1366 = *(v971 + 40);
      }

      v56 = v972 & 0x1F;
      v57 = 32 * (v1365 & 0x1F);
      v58 = (v1366 & 0x3F) << 16;
      if (*(v971 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v971 + 56)) & 0xF) << 10;
      }

      else
      {
        v109 = (*(v971 + 56) & 0xFLL) << 10;
      }

      return v56 | v57 | v58 | v109 | result;
    case 1347:
    case 1388:
      v1208 = *(a2 + 2);
      if (*(v1208 + 48) == 1)
      {
        LOWORD(v1209) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1208 + 56));
      }

      else
      {
        v1209 = *(v1208 + 56);
      }

      if (*(v1208 + 32) == 1)
      {
        LOWORD(v1554) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1208 + 40));
      }

      else
      {
        v1554 = *(v1208 + 40);
      }

      if (*(v1208 + 64) == 1)
      {
        LOWORD(v1555) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1208 + 72));
      }

      else
      {
        v1555 = *(v1208 + 72);
      }

      v56 = (v1209 & 7) << 13;
      v57 = (v1554 & 7) << 10;
      v58 = 32 * (v1555 & 0x1F);
      if (*v1208 == 1)
      {
        v109 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1208 + 8)) & 7;
      }

      else
      {
        v109 = *(v1208 + 8) & 7;
      }

      return v56 | v57 | v58 | v109 | result;
    case 1348:
    case 1389:
      v908 = *(a2 + 2);
      if (*(v908 + 48) == 1)
      {
        LOWORD(v909) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v908 + 56));
      }

      else
      {
        v909 = *(v908 + 56);
      }

      if (*(v908 + 32) == 1)
      {
        LOWORD(v1299) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v908 + 40));
      }

      else
      {
        v1299 = *(v908 + 40);
      }

      if (*(v908 + 64) == 1)
      {
        LOWORD(v1300) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v908 + 72));
      }

      else
      {
        v1300 = *(v908 + 72);
      }

      v56 = (v909 & 7) << 13;
      v57 = (v1299 & 7) << 10;
      v58 = 32 * (v1300 & 0x1F);
      if (*v908 == 1)
      {
        v109 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v908 + 8)) & 3;
      }

      else
      {
        v109 = *(v908 + 8) & 3;
      }

      return v56 | v57 | v58 | v109 | result;
    case 1349:
    case 1350:
    case 1351:
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
    case 1550:
    case 1551:
    case 1552:
    case 1553:
    case 1554:
    case 1555:
    case 1556:
    case 1557:
    case 1678:
    case 1679:
    case 1680:
    case 1681:
    case 3686:
    case 4869:
    case 4870:
    case 4871:
    case 4872:
    case 4873:
    case 4874:
    case 4946:
    case 4947:
    case 4948:
    case 4958:
    case 4959:
    case 5092:
    case 5093:
    case 5094:
    case 5126:
    case 5127:
    case 5128:
    case 5129:
    case 5130:
    case 5131:
    case 5157:
    case 5158:
    case 5159:
    case 5160:
    case 5161:
    case 5162:
    case 5169:
    case 5170:
    case 5171:
    case 5186:
    case 5187:
    case 5188:
    case 5189:
    case 5190:
    case 5191:
    case 5412:
    case 5413:
    case 5649:
    case 5650:
    case 5651:
    case 5654:
    case 5655:
    case 5656:
    case 5838:
    case 5839:
    case 5840:
    case 5843:
    case 5844:
    case 5845:
    case 6312:
    case 6313:
    case 6314:
    case 6315:
    case 6316:
    case 6317:
    case 6318:
    case 6319:
    case 6320:
    case 6321:
    case 6322:
    case 6323:
    case 6330:
    case 6331:
    case 6332:
    case 6333:
    case 6334:
    case 6335:
    case 6762:
    case 6763:
    case 6764:
    case 6911:
    case 6912:
    case 6913:
    case 6914:
    case 6923:
    case 6924:
    case 6925:
    case 6926:
    case 6927:
    case 6928:
    case 6929:
    case 6930:
    case 7011:
    case 7012:
    case 7013:
    case 7014:
    case 7015:
    case 7016:
    case 7042:
    case 7043:
    case 7044:
    case 7051:
    case 7052:
    case 7053:
    case 7069:
    case 7070:
    case 7071:
    case 7072:
    case 7073:
    case 7074:
    case 7422:
    case 7423:
    case 7424:
    case 7427:
    case 7428:
    case 7429:
    case 7797:
    case 7798:
    case 7799:
    case 7800:
    case 7801:
    case 7802:
    case 7809:
    case 7810:
    case 7811:
    case 7812:
    case 7813:
    case 7814:
    case 7875:
    case 7876:
    case 7877:
    case 7878:
    case 7879:
    case 7880:
    case 7881:
    case 7882:
    case 8089:
    case 8090:
    case 8091:
    case 8092:
    case 8093:
    case 8094:
    case 8095:
    case 8096:
      v21 = *(a2 + 2);
      if (*v21 == 1)
      {
        LOWORD(v22) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 8));
      }

      else
      {
        v22 = *(v21 + 8);
      }

      if (*(v21 + 16) == 1)
      {
        LOWORD(v46) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 24));
      }

      else
      {
        v46 = *(v21 + 24);
      }

      goto LABEL_63;
    case 1356:
    case 1358:
    case 1359:
    case 1596:
    case 1597:
    case 1618:
    case 1622:
    case 1662:
    case 1699:
    case 1700:
    case 1701:
    case 1702:
    case 1734:
    case 1735:
    case 2670:
    case 2840:
    case 2841:
    case 2842:
    case 2843:
    case 3046:
    case 3047:
    case 3053:
    case 3057:
    case 3061:
    case 3065:
    case 3069:
    case 3083:
    case 3102:
    case 3103:
    case 3131:
    case 3132:
    case 3135:
    case 3136:
    case 3139:
    case 3143:
    case 3144:
    case 3159:
    case 3160:
    case 3188:
    case 3189:
    case 3192:
    case 3193:
    case 3196:
    case 4604:
    case 4605:
    case 4607:
    case 4609:
    case 4611:
    case 4613:
    case 4621:
    case 4622:
    case 4624:
    case 4626:
    case 4628:
    case 4630:
    case 4953:
    case 4955:
    case 4956:
    case 5099:
    case 5101:
    case 5102:
    case 5110:
    case 5111:
    case 5112:
    case 5113:
    case 5114:
    case 5115:
    case 5120:
    case 5121:
    case 5122:
    case 5123:
    case 5124:
    case 5125:
    case 5290:
    case 5291:
    case 5328:
    case 5330:
    case 5331:
    case 5332:
    case 5334:
    case 5335:
    case 5337:
    case 5565:
    case 5567:
    case 5569:
    case 5571:
    case 5573:
    case 5574:
    case 5609:
    case 5611:
    case 5613:
    case 5615:
    case 5617:
    case 5618:
    case 5619:
    case 5764:
    case 5765:
    case 5769:
    case 5771:
    case 5773:
    case 5775:
    case 5789:
    case 5790:
    case 5794:
    case 5796:
    case 5798:
    case 5800:
    case 5908:
    case 5910:
    case 5912:
    case 5914:
    case 5916:
    case 5918:
    case 5927:
    case 5929:
    case 5931:
    case 5933:
    case 5935:
    case 5937:
    case 6769:
    case 6771:
    case 6772:
    case 6995:
    case 6996:
    case 6997:
    case 6998:
    case 6999:
    case 7000:
    case 7005:
    case 7006:
    case 7007:
    case 7008:
    case 7009:
    case 7010:
    case 7165:
    case 7166:
    case 7340:
    case 7342:
    case 7344:
    case 7346:
    case 7348:
    case 7349:
    case 7384:
    case 7386:
    case 7388:
    case 7390:
    case 7392:
    case 7393:
    case 7394:
    case 7726:
    case 7727:
    case 7764:
      v25 = *(a2 + 2);
      if (*(v25 + 16) == 1)
      {
        LOWORD(v26) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v25 + 24));
      }

      else
      {
        v26 = *(v25 + 24);
      }

      if (*(v25 + 32) == 1)
      {
        LOWORD(v52) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v25 + 40));
      }

      else
      {
        v52 = *(v25 + 40);
      }

      v8 = v26 & 0x1F;
      v9 = 32 * (v52 & 0x1F);
      if (*(v25 + 48) == 1)
      {
        v10 = *(*(a1 + 8) + 152);
        v11 = *(v25 + 56);
        goto LABEL_6;
      }

      v10 = *(v25 + 56);
      return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
    case 1361:
    case 1379:
    case 1380:
    case 1390:
      v618 = *(a2 + 2);
      if (*v618 == 1)
      {
        LOWORD(v619) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v618 + 8));
      }

      else
      {
        v619 = *(v618 + 8);
      }

      if (*(v618 + 16) == 1)
      {
        LOWORD(v930) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v618 + 24));
      }

      else
      {
        v930 = *(v618 + 24);
      }

      v37 = v619 & 0x1F;
      v38 = (v930 & 0x1F) << 16;
      if (*(v618 + 32) == 1)
      {
        v61 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v618 + 40)) & 0x3F);
      }

      else
      {
        v61 = 32 * (*(v618 + 40) & 0x3FLL);
      }

      return v37 | v38 | v61 | result;
    case 1362:
    case 6776:
      v1169 = *(a2 + 2);
      if (*v1169 == 1)
      {
        LOWORD(v1170) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1169 + 8));
      }

      else
      {
        v1170 = *(v1169 + 8);
      }

      if (*(v1169 + 16) == 1)
      {
        LOWORD(v1504) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1169 + 24));
      }

      else
      {
        v1504 = *(v1169 + 24);
      }

      if (*(v1169 + 32) == 1)
      {
        LOWORD(v1505) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1169 + 40));
      }

      else
      {
        v1505 = *(v1169 + 40);
      }

      v56 = v1170 & 0x1F;
      v57 = 32 * (v1504 & 0x1F);
      v58 = (v1505 & 0x1F) << 16;
      if (*(v1169 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1169 + 56)) & 7) << 10;
      }

      else
      {
        v109 = (*(v1169 + 56) & 7) << 10;
      }

      return v56 | v57 | v58 | v109 | result;
    case 1363:
    case 1364:
    case 1365:
    case 1366:
    case 2352:
    case 2353:
    case 2354:
    case 2864:
    case 2865:
    case 2866:
    case 2908:
    case 2909:
    case 2910:
    case 2956:
    case 2957:
    case 2958:
    case 3000:
    case 3001:
    case 3002:
    case 5148:
    case 5149:
    case 5150:
    case 5342:
    case 5343:
    case 5344:
    case 5345:
    case 5378:
    case 5379:
    case 5380:
    case 5381:
    case 5382:
    case 5383:
    case 5384:
    case 5385:
    case 5416:
    case 5417:
    case 5418:
    case 5419:
    case 5474:
    case 5475:
    case 5476:
    case 5477:
    case 5694:
    case 5695:
    case 5696:
    case 5697:
    case 5958:
    case 5959:
    case 5960:
    case 5961:
    case 5962:
    case 5963:
    case 5964:
    case 5965:
    case 6019:
    case 6020:
    case 6021:
    case 6022:
    case 6042:
    case 6043:
    case 6044:
    case 6045:
    case 6098:
    case 6099:
    case 6100:
    case 6101:
    case 6106:
    case 6107:
    case 6108:
    case 6109:
    case 6155:
    case 6156:
    case 6157:
    case 6158:
    case 6177:
    case 6178:
    case 6179:
    case 6180:
    case 6197:
    case 6198:
    case 6199:
    case 6200:
    case 6861:
    case 6862:
    case 6863:
    case 6864:
    case 7033:
    case 7034:
    case 7035:
    case 7167:
    case 7168:
    case 7169:
    case 7170:
    case 7177:
    case 7178:
    case 7179:
    case 7180:
    case 7181:
    case 7182:
    case 7183:
    case 7184:
    case 7192:
    case 7193:
    case 7194:
    case 7195:
    case 7249:
    case 7250:
    case 7251:
    case 7252:
    case 7444:
    case 7445:
    case 7446:
    case 7447:
    case 7513:
    case 7514:
    case 7515:
    case 7516:
    case 7517:
    case 7518:
    case 7519:
    case 7520:
    case 7553:
    case 7554:
    case 7555:
    case 7556:
    case 7561:
    case 7562:
    case 7563:
    case 7564:
    case 7602:
    case 7603:
    case 7604:
    case 7605:
    case 7610:
    case 7611:
    case 7612:
    case 7613:
    case 7647:
    case 7648:
    case 7649:
    case 7650:
    case 7657:
    case 7658:
    case 7659:
    case 7660:
    case 7677:
    case 7678:
    case 7679:
    case 7680:
    case 7770:
    case 7771:
    case 7772:
    case 7773:
      v19 = *(a2 + 2);
      if (*(v19 + 16) == 1)
      {
        v23 = *(*(a1 + 8) + 152);
        v24 = *(v19 + 24);
        goto LABEL_27;
      }

      v23 = *(v19 + 24);
      if (*(v19 + 48) == 1)
      {
        goto LABEL_68;
      }

      goto LABEL_1280;
    case 1375:
    case 1376:
    case 1377:
    case 1378:
    case 1471:
    case 1472:
    case 1473:
    case 1474:
    case 2245:
    case 2246:
    case 2247:
    case 2248:
    case 2363:
    case 2364:
    case 2365:
    case 2875:
    case 2876:
    case 2877:
    case 2919:
    case 2920:
    case 2921:
    case 2967:
    case 2968:
    case 2969:
    case 3011:
    case 3012:
    case 3013:
    case 4803:
    case 4804:
    case 4805:
    case 4806:
    case 5426:
    case 5427:
    case 5428:
    case 5429:
    case 5484:
    case 5485:
    case 5486:
    case 5487:
    case 7202:
    case 7203:
    case 7204:
    case 7205:
    case 7259:
    case 7260:
    case 7261:
    case 7262:
      v86 = *(a2 + 2);
      if (*v86 == 1)
      {
        LOWORD(v87) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v86 + 8));
      }

      else
      {
        v87 = *(v86 + 8);
      }

      if (*(v86 + 32) == 1)
      {
        LOWORD(v154) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v86 + 40));
      }

      else
      {
        v154 = *(v86 + 40);
      }

      v155 = v87 & 0x1F;
      v156 = 32 * (v154 & 0x1F);
      if (*(v86 + 16) != 1)
      {
        goto LABEL_853;
      }

      LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v86 + 24));
      return (v155 | v156) & 0xFFFFFFFFFFFFE3FFLL | ((a1 & 7) << 10) | result;
    case 1381:
    case 1384:
    case 1396:
    case 1399:
    case 6785:
    case 6788:
    case 6792:
    case 6795:
      v465 = *(a2 + 2);
      if (*v465 == 1)
      {
        LOWORD(v466) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v465 + 8));
      }

      else
      {
        v466 = *(v465 + 8);
      }

      v759 = v466 & 0x1F;
      if (*(v465 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v465 + 24));
      }

      else
      {
        LODWORD(a1) = *(v465 + 24);
      }

      v760 = v759 & 0xFFFFFC1F | (32 * (a1 & 0x1F));
      v761 = *(v465 + 56) & 0x3FLL;
      if (*(v465 + 32) == 2)
      {
        v762 = *(v465 + 40);
        if (v761)
        {
          v763 = 1 << v761;
        }

        else
        {
          v763 = 0;
        }

        return result | v760 & 0xFF0003FF | (((v763 | v762) & 0x3FFF) << 10);
      }

      else
      {
        v764 = *(v465 + 40);
        v765 = *(a2 + 1);
        v1785 = v764;
        v1786 = 0x8200000000;
        v1787 = v765;
        v766 = *(a3 + 8);
        v767 = *a3;
        v768 = &v1785;
        if (v766 >= *(a3 + 12))
        {
          v1771 = v764;
          v1778 = result;
          v1765 = v761;
          v1760 = v760;
          if (v767 <= &v1785 && v767 + 24 * v766 > &v1785)
          {
            v1747 = &v1785 - v767;
            v1748 = a3;
            sub_298B90A44(a3, (a3 + 16), v766 + 1, 24);
            a3 = v1748;
            v767 = *v1748;
            v768 = &v1747[*v1748];
          }

          else
          {
            v1735 = a3;
            sub_298B90A44(a3, (a3 + 16), v766 + 1, 24);
            a3 = v1735;
            v767 = *v1735;
            v768 = &v1785;
          }

          v764 = v1771;
          result = v1778;
          v760 = v1760;
          LODWORD(v761) = v1765;
        }

        v769 = v767 + 24 * *(a3 + 8);
        v770 = *v768;
        *(v769 + 16) = v768[2];
        *v769 = v770;
        ++*(a3 + 8);
        if (*v764 == 4 && (v771 = v764[6], v771 <= 0x39) && ((1 << v771) & 0x2A0000000000000) != 0)
        {
          return result | v760 & 0xFF0003FF | 0x400000;
        }

        else
        {
          if (v761)
          {
            v899 = 1 << v761;
          }

          else
          {
            v899 = 0;
          }

          return result | v760 & 0xFF0003FF | ((v899 & 0x3FFF) << 10);
        }
      }

    case 1382:
    case 1385:
    case 1397:
    case 1400:
    case 1476:
    case 1478:
    case 1485:
    case 1487:
    case 1682:
    case 1683:
    case 1685:
    case 1686:
    case 2237:
    case 2238:
    case 2259:
    case 2261:
    case 4798:
    case 4799:
    case 4809:
    case 4811:
    case 6786:
    case 6789:
    case 6793:
    case 6796:
      v132 = *(a2 + 2);
      if (*v132 == 1)
      {
        LOWORD(v133) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v132 + 8));
      }

      else
      {
        v133 = *(v132 + 8);
      }

      if (*(v132 + 16) == 1)
      {
        LOWORD(v286) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v132 + 24));
      }

      else
      {
        v286 = *(v132 + 24);
      }

      if (*(v132 + 32) == 1)
      {
        LOWORD(v287) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v132 + 40));
      }

      else
      {
        v287 = *(v132 + 40);
      }

      v288 = v133 & 0x1F;
      v289 = 32 * (v286 & 0x1F);
      v290 = (v287 & 0x1F) << 16;
      if (*(v132 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v132 + 56));
      }

      else
      {
        LODWORD(a1) = *(v132 + 56);
      }

      return (v288 | v289 | v290) & 0xFFFFFFFFFF3FFFFFLL | ((a1 >> 6) << 22) | ((a1 & 0x3F) << 10) | result;
    case 1383:
    case 1386:
    case 1398:
    case 1401:
    case 2286:
    case 6787:
    case 6790:
    case 6794:
    case 6797:
      v410 = *(a2 + 2);
      if (*v410 == 1)
      {
        LOWORD(v411) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v410 + 8));
      }

      else
      {
        v411 = *(v410 + 8);
      }

      if (*(v410 + 16) == 1)
      {
        LOWORD(v602) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v410 + 24));
      }

      else
      {
        v602 = *(v410 + 24);
      }

      if (*(v410 + 32) == 1)
      {
        LOWORD(v603) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v410 + 40));
      }

      else
      {
        v603 = *(v410 + 40);
      }

      v56 = v411 & 0x1F;
      v57 = 32 * (v602 & 0x1F);
      v58 = (v603 & 0x1F) << 16;
      if (*(v410 + 48) == 1)
      {
        goto LABEL_1144;
      }

      goto LABEL_2866;
    case 1387:
    case 1402:
    case 6791:
    case 6798:
      v624 = *(a2 + 2);
      if (*v624 == 1)
      {
        LOWORD(v625) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v624 + 8));
      }

      else
      {
        v625 = *(v624 + 8);
      }

      if (*(v624 + 16) == 1)
      {
        LOWORD(v959) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v624 + 24));
      }

      else
      {
        v959 = *(v624 + 24);
      }

      if (*(v624 + 32) == 1)
      {
        LOWORD(v960) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v624 + 40));
      }

      else
      {
        v960 = *(v624 + 40);
      }

      v479 = v625 & 0x1F;
      v480 = 32 * (v959 & 0x1F);
      v481 = (v960 & 0x1F) << 16;
      if (*(v624 + 48) == 1)
      {
        v961 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v624 + 56));
      }

      else
      {
        v961 = *(v624 + 56);
      }

      v482 = (v961 << 10) & 0x9C00;
      return v479 | v480 | v481 | v482 | result;
    case 1403:
    case 1404:
    case 1405:
    case 1406:
    case 1599:
    case 1604:
    case 1609:
    case 1614:
    case 2888:
    case 2889:
    case 2890:
    case 2932:
    case 2933:
    case 2934:
    case 2980:
    case 2981:
    case 2982:
    case 3024:
    case 3025:
    case 3026:
    case 3474:
    case 3475:
    case 3476:
    case 5447:
    case 5448:
    case 5449:
    case 5450:
    case 5505:
    case 5506:
    case 5507:
    case 5508:
    case 5805:
    case 5806:
    case 5807:
    case 5808:
    case 6185:
    case 6186:
    case 6187:
    case 6188:
    case 7223:
    case 7224:
    case 7225:
    case 7226:
    case 7280:
    case 7281:
    case 7282:
    case 7283:
    case 7665:
    case 7666:
    case 7667:
    case 7668:
      v78 = *(a2 + 2);
      if (*(v78 + 32) == 1)
      {
        v79 = *(*(*(a1 + 8) + 152) + 104);
        LODWORD(v80) = *(v79 + 2 * *(v78 + 40));
      }

      else
      {
        v80 = *(v78 + 40);
        v79 = *(*(*(a1 + 8) + 152) + 104);
      }

      return (*(v79 + 2 * *(v78 + 8)) | (v80 << 16)) & 0xF001ELL | result;
    case 1407:
    case 1408:
    case 1588:
    case 1634:
    case 1654:
    case 2812:
    case 2813:
    case 2814:
    case 3104:
    case 3105:
    case 3106:
    case 3161:
    case 3162:
    case 3163:
    case 5264:
    case 5265:
    case 5266:
    case 6799:
    case 6800:
    case 7139:
    case 7140:
    case 7141:
    case 7716:
      v81 = *(a2 + 2);
      a1 = *(*(*(a1 + 8) + 152) + 104);
      v157 = (*(a1 + 2 * *(v81 + 88)) << 16) & 0x1E0000 | (((*(a1 + 2 * *(v81 + 72)) >> 1) & 0xF) << 6);
      goto LABEL_268;
    case 1409:
    case 1410:
    case 1419:
    case 1420:
    case 1590:
    case 1593:
    case 1635:
    case 1638:
    case 1655:
    case 1658:
    case 2818:
    case 2819:
    case 2820:
    case 2827:
    case 2828:
    case 2829:
    case 3110:
    case 3111:
    case 3112:
    case 3119:
    case 3120:
    case 3121:
    case 3167:
    case 3168:
    case 3169:
    case 3176:
    case 3177:
    case 3178:
    case 5270:
    case 5271:
    case 5272:
    case 5279:
    case 5280:
    case 5281:
    case 6801:
    case 6802:
    case 6807:
    case 6808:
    case 6834:
    case 6836:
    case 7145:
    case 7146:
    case 7147:
    case 7154:
    case 7155:
    case 7156:
    case 7718:
    case 7721:
      v81 = *(a2 + 2);
      if (*(v81 + 80) == 1)
      {
        LOWORD(v82) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v81 + 88));
      }

      else
      {
        v82 = *(v81 + 88);
      }

      v138 = (v82 & 0xF) << 16;
      if (*(v81 + 64) == 1)
      {
        LOWORD(v139) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v81 + 72));
      }

      else
      {
        v139 = *(v81 + 72);
      }

      v140 = (32 * (v139 & 0x1F)) | v138 | ((*(v81 + 40) << 13) + 24576) & 0x6000;
      if (*(v81 + 48) != 1)
      {
        goto LABEL_271;
      }

      LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v81 + 56));
      return result | v140 | (a1 & 7);
    case 1411:
    case 1412:
    case 1572:
    case 1673:
    case 2370:
    case 2371:
    case 2372:
    case 3511:
    case 3512:
    case 3513:
    case 6803:
    case 6804:
      v281 = *(a2 + 2);
      if (*(v281 + 48) == 1)
      {
        v282 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v283) = *(v282 + 2 * *(v281 + 56));
      }

      else
      {
        v283 = *(v281 + 56);
        v282 = *(*(*(a1 + 8) + 152) + 104);
      }

      return result | v283 & 7 | ((*(v281 + 40) << 13) + 24576) & 0x6000 | (32 * *(v282 + 2 * *(v281 + 72))) & 0x3C0u;
    case 1413:
    case 1414:
    case 1415:
    case 1416:
    case 1601:
    case 1606:
    case 1611:
    case 1616:
    case 2894:
    case 2895:
    case 2896:
    case 2938:
    case 2939:
    case 2940:
    case 2986:
    case 2987:
    case 2988:
    case 3030:
    case 3031:
    case 3032:
    case 3480:
    case 3481:
    case 3482:
    case 5455:
    case 5456:
    case 5457:
    case 5458:
    case 5513:
    case 5514:
    case 5515:
    case 5516:
    case 5813:
    case 5814:
    case 5815:
    case 5816:
    case 6193:
    case 6194:
    case 6195:
    case 6196:
    case 7231:
    case 7232:
    case 7233:
    case 7234:
    case 7288:
    case 7289:
    case 7290:
    case 7291:
    case 7673:
    case 7674:
    case 7675:
    case 7676:
      v75 = *(a2 + 2);
      if (*(v75 + 32) == 1)
      {
        v76 = *(*(*(a1 + 8) + 152) + 104);
        LODWORD(v77) = *(v76 + 2 * *(v75 + 40));
      }

      else
      {
        v77 = *(v75 + 40);
        v76 = *(*(*(a1 + 8) + 152) + 104);
      }

      return (*(v76 + 2 * *(v75 + 8)) | (v77 << 16)) & 0xF001CLL | result;
    case 1417:
    case 1418:
    case 1591:
    case 1637:
    case 1657:
    case 2821:
    case 2822:
    case 2823:
    case 3113:
    case 3114:
    case 3115:
    case 3170:
    case 3171:
    case 3172:
    case 5273:
    case 5274:
    case 5275:
    case 6805:
    case 6806:
    case 7148:
    case 7149:
    case 7150:
    case 7719:
      v81 = *(a2 + 2);
      a1 = *(*(*(a1 + 8) + 152) + 104);
      v157 = (*(a1 + 2 * *(v81 + 88)) << 16) & 0x1C0000 | (((*(a1 + 2 * *(v81 + 72)) >> 2) & 7) << 7);
LABEL_268:
      v159 = ((*(v81 + 40) << 13) + 24576) & 0x6000;
      goto LABEL_269;
    case 1421:
    case 1422:
    case 1573:
    case 1674:
    case 2373:
    case 2374:
    case 2375:
    case 3514:
    case 3515:
    case 3516:
    case 6809:
    case 6810:
      v327 = *(a2 + 2);
      if (*(v327 + 48) == 1)
      {
        v328 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v329) = *(v328 + 2 * *(v327 + 56));
      }

      else
      {
        v329 = *(v327 + 56);
        v328 = *(*(*(a1 + 8) + 152) + 104);
      }

      return result | v329 & 7 | ((*(v327 + 40) << 13) + 24576) & 0x6000 | (32 * *(v328 + 2 * *(v327 + 72))) & 0x380u;
    case 1423:
    case 1424:
    case 1425:
    case 1426:
    case 5690:
    case 5691:
    case 5692:
    case 5693:
    case 6102:
    case 6103:
    case 6104:
    case 6105:
    case 6777:
    case 6778:
    case 6779:
    case 6780:
    case 6811:
    case 6812:
    case 6813:
    case 6814:
    case 7440:
    case 7441:
    case 7442:
    case 7443:
    case 7606:
    case 7607:
    case 7608:
    case 7609:
      v129 = *(a2 + 2);
      if (*v129 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v129 + 8));
      }

      else
      {
        LODWORD(a1) = *(v129 + 8);
      }

      v258 = a1 & 0x1F;
      v259 = *(v129 + 56);
      v260 = *(v129 + 40);
      goto LABEL_418;
    case 1427:
    case 1428:
    case 1429:
    case 1430:
    case 1431:
    case 1490:
    case 1491:
    case 1492:
    case 1493:
    case 1501:
    case 1502:
    case 1503:
    case 1504:
    case 1507:
    case 1508:
    case 1509:
    case 1517:
    case 1518:
    case 1519:
    case 1520:
    case 1574:
    case 1602:
    case 1607:
    case 1612:
    case 1617:
    case 1668:
    case 1675:
    case 1688:
    case 1689:
    case 1690:
    case 1691:
    case 1783:
    case 1784:
    case 1785:
    case 1786:
    case 1787:
    case 1788:
    case 1789:
    case 1790:
    case 1791:
    case 1792:
    case 1793:
    case 1794:
    case 1795:
    case 1796:
    case 1797:
    case 1798:
    case 1799:
    case 1800:
    case 1801:
    case 1802:
    case 1803:
    case 1804:
    case 1805:
    case 1806:
    case 2264:
    case 2265:
    case 2266:
    case 2267:
    case 2306:
    case 2307:
    case 2308:
    case 2347:
    case 2348:
    case 2349:
    case 2379:
    case 2380:
    case 2381:
    case 2396:
    case 2397:
    case 2398:
    case 2410:
    case 2411:
    case 2412:
    case 2800:
    case 2801:
    case 2802:
    case 2804:
    case 2805:
    case 2806:
    case 2900:
    case 2901:
    case 2902:
    case 2944:
    case 2945:
    case 2946:
    case 2992:
    case 2993:
    case 2994:
    case 3036:
    case 3037:
    case 3038:
    case 3243:
    case 3244:
    case 3245:
    case 3262:
    case 3263:
    case 3264:
    case 3483:
    case 3484:
    case 3485:
    case 3507:
    case 3508:
    case 3509:
    case 3520:
    case 3521:
    case 3522:
    case 4503:
    case 4504:
    case 4505:
    case 4506:
    case 4509:
    case 4510:
    case 4511:
    case 4519:
    case 4520:
    case 4521:
    case 4522:
    case 4527:
    case 4528:
    case 4529:
    case 4530:
    case 4533:
    case 4534:
    case 4535:
    case 4543:
    case 4544:
    case 4545:
    case 4546:
    case 4745:
    case 4746:
    case 4747:
    case 4748:
    case 4814:
    case 4815:
    case 4816:
    case 4817:
    case 5138:
    case 5139:
    case 5140:
    case 5141:
    case 5258:
    case 5259:
    case 5262:
    case 5263:
    case 5463:
    case 5464:
    case 5465:
    case 5466:
    case 5521:
    case 5522:
    case 5523:
    case 5524:
    case 5638:
    case 5639:
    case 5640:
    case 5641:
    case 5671:
    case 5672:
    case 5673:
    case 5674:
    case 6781:
    case 6782:
    case 6783:
    case 6784:
    case 6815:
    case 6816:
    case 6817:
    case 6818:
    case 6819:
    case 7023:
    case 7024:
    case 7025:
    case 7026:
    case 7133:
    case 7134:
    case 7137:
    case 7138:
    case 7239:
    case 7240:
    case 7241:
    case 7242:
    case 7296:
    case 7297:
    case 7298:
    case 7299:
    case 7411:
    case 7412:
    case 7413:
    case 7414:
      v15 = *(a2 + 2);
      if (*(v15 + 16) == 1)
      {
        LOWORD(v16) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 24));
      }

      else
      {
        v16 = *(v15 + 24);
      }

      if (*v15 == 1)
      {
        LOWORD(v36) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 8));
      }

      else
      {
        v36 = *(v15 + 8);
      }

      v37 = (v16 & 7) << 10;
      v38 = v36 & 0x1F;
      if (*(v15 + 48) == 1)
      {
        goto LABEL_48;
      }

      goto LABEL_103;
    case 1432:
    case 1433:
    case 1434:
    case 1435:
    case 1436:
    case 1494:
    case 1510:
    case 1511:
    case 1512:
    case 1575:
    case 1669:
    case 1676:
    case 1692:
    case 2268:
    case 2382:
    case 2383:
    case 2384:
    case 3268:
    case 3269:
    case 3270:
    case 3330:
    case 3331:
    case 3332:
    case 3463:
    case 3464:
    case 3465:
    case 3523:
    case 3524:
    case 3525:
    case 3534:
    case 3535:
    case 3536:
    case 3537:
    case 3538:
    case 3539:
    case 4512:
    case 4513:
    case 4514:
    case 4536:
    case 4537:
    case 4538:
    case 4752:
    case 4753:
    case 4754:
    case 4755:
    case 4818:
    case 4879:
    case 5642:
    case 5643:
    case 5644:
    case 5645:
    case 5698:
    case 5699:
    case 5700:
    case 5701:
    case 5820:
    case 5821:
    case 5822:
    case 5823:
    case 5942:
    case 5943:
    case 5944:
    case 5945:
    case 6110:
    case 6111:
    case 6112:
    case 6113:
    case 6820:
    case 6821:
    case 6822:
    case 6823:
    case 6824:
    case 6915:
    case 6916:
    case 6917:
    case 6918:
    case 6919:
    case 6920:
    case 6921:
    case 6922:
    case 6958:
    case 6959:
    case 6960:
    case 6961:
    case 6962:
    case 6974:
    case 6975:
    case 6976:
    case 6977:
    case 6978:
    case 7415:
    case 7416:
    case 7417:
    case 7418:
    case 7448:
    case 7449:
    case 7450:
    case 7451:
    case 7614:
    case 7615:
    case 7616:
    case 7617:
    case 7847:
    case 7848:
    case 7849:
    case 7850:
    case 7851:
    case 7863:
    case 7864:
    case 7865:
    case 7866:
    case 7867:
    case 8061:
    case 8062:
    case 8063:
    case 8064:
    case 8065:
    case 8077:
    case 8078:
    case 8079:
    case 8080:
    case 8081:
      v32 = *(a2 + 2);
      if (*v32 == 1)
      {
        LOWORD(v33) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 8));
      }

      else
      {
        v33 = *(v32 + 8);
      }

      if (*(v32 + 32) == 1)
      {
        LOWORD(v64) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 40));
      }

      else
      {
        v64 = *(v32 + 40);
      }

      v37 = v33 & 0x1F;
      v38 = (v64 & 0x1F) << 16;
      if (*(v32 + 16) == 1)
      {
        goto LABEL_111;
      }

      goto LABEL_165;
    case 1445:
    case 1446:
      v900 = *(a2 + 2);
      if (*v900 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v900 + 8));
      }

      else
      {
        a1 = *(v900 + 8);
      }

      v1261 = a1 & 0x1F;
      if (*(v900 + 16) == 2)
      {
        v1262 = *(v900 + 24);
      }

      else
      {
        v1263 = *(v900 + 24);
        if (v3 == 1445)
        {
          v1264 = 128;
        }

        else
        {
          v1264 = 129;
        }

        v1265 = *(a2 + 1);
        v1785 = v1263;
        LODWORD(v1786) = 0;
        HIDWORD(v1786) = v1264;
        v1787 = v1265;
        v1266 = *(a3 + 8);
        v1267 = *a3;
        v1268 = &v1785;
        if (v1266 >= *(a3 + 12))
        {
          v1772 = v1261;
          v1780 = result;
          if (v1267 <= &v1785 && v1267 + 24 * v1266 > &v1785)
          {
            v1751 = &v1785 - v1267;
            v1752 = a3;
            sub_298B90A44(a3, (a3 + 16), v1266 + 1, 24);
            a3 = v1752;
            v1267 = *v1752;
            v1268 = &v1751[*v1752];
          }

          else
          {
            v1737 = a3;
            sub_298B90A44(a3, (a3 + 16), v1266 + 1, 24);
            a3 = v1737;
            v1267 = *v1737;
            v1268 = &v1785;
          }

          v1261 = v1772;
          result = v1780;
        }

        v1262 = 0;
        v1269 = v1267 + 24 * *(a3 + 8);
        v1270 = *v1268;
        *(v1269 + 16) = v1268[2];
        *v1269 = v1270;
        ++*(a3 + 8);
      }

      return v1261 & 0xFFFFFFFF9F00001FLL | ((v1262 & 3) << 29) | (32 * ((v1262 >> 2) & 0x7FFFF)) | result;
    case 1463:
    case 1465:
    case 5414:
    case 6128:
    case 6129:
    case 6130:
    case 6143:
    case 6144:
    case 6145:
    case 7632:
    case 7633:
    case 7634:
      v303 = *(a2 + 2);
      if (*v303 == 1)
      {
        LOWORD(v304) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v303 + 8));
      }

      else
      {
        v304 = *(v303 + 8);
      }

      v41 = v304 & 0x1F;
      if (*(v303 + 32) != 1)
      {
        return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(v303 + 40) & 0x1FLL)) | result;
      }

      v42 = *(*(a1 + 8) + 152);
      v43 = *(v303 + 40);
      return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(*(v42 + 104) + 2 * v43) & 0x1FLL)) | result;
    case 1464:
    case 1466:
    case 1525:
    case 1526:
    case 1529:
    case 1536:
    case 1581:
    case 2677:
    case 2678:
    case 2712:
    case 4829:
    case 4830:
    case 4834:
    case 4840:
    case 5151:
    case 5152:
    case 5153:
    case 5154:
    case 5155:
    case 5156:
    case 5333:
    case 5336:
    case 6131:
    case 6137:
    case 6138:
    case 6146:
    case 6152:
    case 6153:
    case 6865:
    case 6866:
    case 6867:
    case 6868:
    case 6869:
    case 6870:
    case 6871:
    case 6872:
    case 6873:
    case 6874:
    case 6875:
    case 7036:
    case 7037:
    case 7038:
    case 7039:
    case 7040:
    case 7041:
    case 7635:
    case 7641:
    case 7642:
    case 7774:
    case 7775:
    case 7776:
    case 7777:
    case 7778:
    case 7779:
    case 7780:
    case 7781:
    case 7782:
    case 7783:
    case 7784:
    case 8041:
    case 8044:
    case 8045:
      v62 = *(a2 + 2);
      if (*(v62 + 16) == 1)
      {
        LOWORD(v63) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v62 + 24));
      }

      else
      {
        v63 = *(v62 + 24);
      }

      v13 = v63 & 0x1F;
      if (*(v62 + 32) == 1)
      {
        a1 = *(*(a1 + 8) + 152);
        v14 = *(v62 + 40);
        goto LABEL_15;
      }

      a1 = *(v62 + 40);
      return v13 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result;
    case 1467:
    case 1469:
      v407 = *(a2 + 2);
      if (*v407 == 1)
      {
        goto LABEL_708;
      }

      return *(v407 + 8) & 0x1FLL | result;
    case 1475:
    case 1484:
    case 2258:
    case 4808:
      v622 = *(a2 + 2);
      if (*v622 == 1)
      {
        LOWORD(v623) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v622 + 8));
      }

      else
      {
        v623 = *(v622 + 8);
      }

      if (*(v622 + 16) == 1)
      {
        LOWORD(v951) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v622 + 24));
      }

      else
      {
        v951 = *(v622 + 24);
      }

      v952 = v623 & 0x1F;
      v953 = 32 * (v951 & 0x1F);
      if (*(v622 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v622 + 40));
      }

      else
      {
        a1 = *(v622 + 40);
      }

      return (v952 | v953) & 0xFFFFFFFFFFC003FFLL | ((a1 & 0xFFF) << 10) | result;
    case 1477:
    case 1486:
    case 2260:
    case 4810:
      v715 = *(a2 + 2);
      if (*v715 == 1)
      {
        LOWORD(v716) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v715 + 8));
      }

      else
      {
        v716 = *(v715 + 8);
      }

      if (*(v715 + 16) == 1)
      {
        LOWORD(v1194) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v715 + 24));
      }

      else
      {
        v1194 = *(v715 + 24);
      }

      v1195 = v716 & 0x1F;
      v1196 = 32 * (v1194 & 0x1F);
      if (*(v715 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v715 + 40));
      }

      else
      {
        a1 = *(v715 + 40);
      }

      return (v1195 | v1196) & 0xFFFFFFFFFF8003FFLL | ((a1 & 0x1FFF) << 10) | result;
    case 1479:
    case 1488:
    case 1684:
    case 1687:
    case 1727:
    case 1728:
    case 1729:
    case 1730:
    case 2249:
    case 2262:
    case 4772:
    case 4773:
    case 4789:
    case 4790:
    case 4797:
    case 4800:
    case 4807:
    case 4812:
    case 5292:
      v202 = *(a2 + 2);
      if (*v202 == 1)
      {
        LOWORD(v203) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v202 + 8));
      }

      else
      {
        v203 = *(v202 + 8);
      }

      if (*(v202 + 16) == 1)
      {
        LOWORD(v395) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v202 + 24));
      }

      else
      {
        v395 = *(v202 + 24);
      }

      if (*(v202 + 48) == 1)
      {
        LOWORD(v396) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v202 + 56));
      }

      else
      {
        v396 = *(v202 + 56);
      }

      v56 = v203 & 0xF;
      v57 = (v395 & 0xF) << 10;
      v58 = (v396 & 0xF) << 16;
      if (*(v202 + 32) == 1)
      {
        v109 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v202 + 40)) & 0xF);
      }

      else
      {
        v109 = 32 * (*(v202 + 40) & 0xFLL);
      }

      return v56 | v57 | v58 | v109 | result;
    case 1480:
    case 1481:
    case 1482:
    case 1483:
    case 2044:
    case 2045:
    case 2254:
    case 2255:
    case 2256:
    case 2257:
    case 3747:
    case 3748:
    case 3749:
    case 3750:
    case 3751:
    case 3752:
    case 3753:
    case 3754:
    case 3755:
    case 3756:
    case 3757:
    case 3758:
    case 3759:
    case 3760:
    case 3761:
    case 3762:
    case 4717:
    case 4718:
    case 4719:
    case 4720:
    case 4825:
    case 4826:
    case 4827:
    case 4828:
    case 5183:
    case 5184:
    case 5185:
    case 5430:
    case 5431:
    case 5432:
    case 5433:
    case 5488:
    case 5489:
    case 5490:
    case 5491:
    case 7065:
    case 7066:
    case 7067:
    case 7068:
    case 7206:
    case 7207:
    case 7208:
    case 7209:
    case 7263:
    case 7264:
    case 7265:
    case 7266:
      v71 = *(a2 + 2);
      if (*(v71 + 16) == 1)
      {
        LOWORD(v72) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 24));
      }

      else
      {
        v72 = *(v71 + 24);
      }

      if (*v71 == 1)
      {
        LOWORD(v128) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 8));
      }

      else
      {
        v128 = *(v71 + 8);
      }

      v37 = (v72 & 7) << 10;
      v38 = v128 & 0x1F;
      goto LABEL_731;
    case 1489:
    case 2263:
    case 4813:
      v827 = *(a2 + 2);
      if (*v827 == 1)
      {
        LOWORD(v828) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v827 + 8));
      }

      else
      {
        v828 = *(v827 + 8);
      }

      v1248 = v828 & 0x1F;
      if (*(v827 + 32) == 1)
      {
        v1249 = *(*(a1 + 8) + 152);
        v1250 = *(v827 + 40);
        return v1248 & 0xFFFFFFFFFFFC001FLL | (32 * (*(*(v1249 + 104) + 2 * v1250) & 0x1FFF)) | result;
      }

      return v1248 & 0xFFFFFFFFFFFC001FLL | (32 * (*(v827 + 40) & 0x1FFFLL)) | result;
    case 1497:
    case 1513:
    case 4539:
    case 6209:
    case 7689:
      v586 = *(a2 + 2);
      if (*(v586 + 16) == 1)
      {
        LOWORD(v587) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v586 + 24));
      }

      else
      {
        v587 = *(v586 + 24);
      }

      v858 = (v587 & 7) << 10;
      if (*v586 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v586 + 8));
      }

      else
      {
        a1 = *(v586 + 8);
      }

      v859 = a1 & 0x1F;
      v860 = (-32 * *(v586 + 56));
      return v858 | v859 | result | v860;
    case 1498:
    case 1514:
    case 4540:
    case 6210:
    case 7690:
      v584 = *(a2 + 2);
      if (*(v584 + 16) == 1)
      {
        LOWORD(v585) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v584 + 24));
      }

      else
      {
        v585 = *(v584 + 24);
      }

      v896 = (v585 & 7) << 10;
      if (*v584 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v584 + 8));
      }

      else
      {
        a1 = *(v584 + 8);
      }

      v897 = a1 & 0x1F;
      v898 = (64 - *(v584 + 56));
      return (v896 | v897) & 0xFFFFFFFFFFBFFFFFLL | (((v898 >> 5) & 1) << 22) | (32 * (v898 & 0x1F)) | result;
    case 1499:
    case 1515:
    case 4541:
    case 6211:
    case 7691:
      v555 = *(a2 + 2);
      if (*(v555 + 16) == 1)
      {
        LOWORD(v556) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v555 + 24));
      }

      else
      {
        v556 = *(v555 + 24);
      }

      v858 = (v556 & 7) << 10;
      if (*v555 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v555 + 8));
      }

      else
      {
        a1 = *(v555 + 8);
      }

      v859 = a1 & 0x1F;
      v860 = (480 * *(v555 + 56)) & 0x1E0;
      return v858 | v859 | result | v860;
    case 1500:
    case 1516:
    case 4542:
    case 6212:
    case 7692:
      v565 = *(a2 + 2);
      if (*(v565 + 16) == 1)
      {
        LOWORD(v566) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v565 + 24));
      }

      else
      {
        v566 = *(v565 + 24);
      }

      v858 = (v566 & 7) << 10;
      if (*v565 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v565 + 8));
      }

      else
      {
        a1 = *(v565 + 8);
      }

      v859 = a1 & 0x1F;
      v860 = (992 * *(v565 + 56)) & 0x3E0;
      return v858 | v859 | result | v860;
    case 1521:
    case 4547:
    case 5080:
    case 5366:
    case 5977:
    case 5995:
    case 6068:
    case 6083:
    case 7532:
    case 7587:
      v391 = *(a2 + 2);
      if (*v391 == 1)
      {
        LOWORD(v392) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v391 + 8));
      }

      else
      {
        v392 = *(v391 + 8);
      }

      v126 = v392 & 0x1F;
      if (*(v391 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v391 + 24));
      }

      else
      {
        a1 = *(v391 + 24);
      }

      v412 = (458752 * *(v391 + 40)) & 0x70000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 1522:
    case 4548:
      v931 = *(a2 + 2);
      if (*v931 == 1)
      {
        LOWORD(v932) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v931 + 8));
      }

      else
      {
        v932 = *(v931 + 8);
      }

      v797 = v932 & 0x1F;
      if (*(v931 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v931 + 24));
      }

      else
      {
        a1 = *(v931 + 24);
      }

      v798 = (64 - *(v931 + 40));
      return v797 & 0xFFFFFFFFFFA0FC1FLL | (32 * (a1 & 0x1F)) | (((v798 >> 5) & 1) << 22) | ((v798 & 0x1F) << 16) | result;
    case 1523:
    case 2736:
    case 2747:
    case 2750:
    case 2773:
    case 2784:
    case 2787:
    case 4549:
    case 5081:
    case 5088:
    case 5243:
    case 5254:
    case 5257:
    case 5367:
    case 5374:
    case 5978:
    case 5987:
    case 5991:
    case 5996:
    case 6005:
    case 6009:
    case 6069:
    case 6075:
    case 6079:
    case 6084:
    case 6090:
    case 6094:
    case 6217:
    case 6219:
    case 6257:
    case 6259:
    case 7117:
    case 7128:
    case 7131:
    case 7533:
    case 7542:
    case 7546:
    case 7588:
    case 7594:
    case 7598:
    case 7697:
    case 7699:
    case 7752:
    case 7754:
      v90 = *(a2 + 2);
      if (*v90 == 1)
      {
        LOWORD(v91) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v90 + 8));
      }

      else
      {
        v91 = *(v90 + 8);
      }

      v126 = v91 & 0x1F;
      if (*(v90 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v90 + 24));
      }

      else
      {
        a1 = *(v90 + 24);
      }

      v168 = *(v90 + 40);
      goto LABEL_863;
    case 1524:
    case 4550:
    case 5082:
    case 5368:
    case 5979:
    case 5997:
    case 6070:
    case 6085:
    case 7534:
    case 7589:
      v375 = *(a2 + 2);
      if (*v375 == 1)
      {
        LOWORD(v376) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v375 + 8));
      }

      else
      {
        v376 = *(v375 + 8);
      }

      v126 = v376 & 0x1F;
      if (*(v375 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v375 + 24));
      }

      else
      {
        a1 = *(v375 + 24);
      }

      v412 = (2031616 * *(v375 + 40)) & 0x1F0000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 1527:
    case 1528:
    case 1543:
    case 1544:
    case 4831:
    case 4832:
    case 4846:
    case 4847:
      v467 = *(a2 + 2);
      if (*(v467 + 16) == 1)
      {
        v408 = *(*(a1 + 8) + 152);
        v409 = *(v467 + 24);
        return *(*(v408 + 104) + 2 * v409) & 0x1F | result;
      }

      return *(v467 + 24) & 0x1FLL | result;
    case 1530:
    case 1531:
    case 1532:
    case 1535:
    case 1537:
    case 1538:
    case 1539:
    case 1542:
    case 1545:
    case 1716:
    case 1717:
    case 1781:
    case 1782:
    case 2198:
    case 2271:
    case 2272:
    case 2273:
    case 3544:
    case 3546:
    case 3548:
    case 4835:
    case 4836:
    case 4837:
    case 4838:
    case 4839:
    case 4841:
    case 4842:
    case 4843:
    case 4844:
    case 4845:
    case 4848:
    case 4849:
    case 4850:
    case 5038:
    case 5041:
    case 5198:
    case 5311:
    case 6952:
    case 6986:
    case 8032:
    case 8040:
    case 8056:
      return result;
    case 1533:
    case 1540:
    case 5039:
    case 5042:
      v706 = *(a2 + 2);
      if (*v706 == 2)
      {
        return (2097120 * *(v706 + 8)) & 0x1FFFE0 | result;
      }

      v1161 = *(a2 + 1);
      v1785 = *(v706 + 8);
      v1786 = 0x8B00000000;
      v1787 = v1161;
      v1162 = *(a3 + 8);
      v1163 = *a3;
      v1164 = &v1785;
      if (v1162 >= *(a3 + 12))
      {
        v1779 = result;
        if (v1163 <= &v1785 && v1163 + 24 * v1162 > &v1785)
        {
          v1749 = &v1785 - v1163;
          v1750 = a3;
          sub_298B90A44(a3, (a3 + 16), v1162 + 1, 24);
          a3 = v1750;
          v1163 = *v1750;
          v1164 = &v1749[*v1750];
        }

        else
        {
          v1736 = a3;
          sub_298B90A44(a3, (a3 + 16), v1162 + 1, 24);
          a3 = v1736;
          v1163 = *v1736;
          v1164 = &v1785;
        }

        result = v1779;
      }

      v1165 = v1163 + 24 * *(a3 + 8);
      v1166 = *v1164;
      *(v1165 + 16) = v1164[2];
      *v1165 = v1166;
      ++*(a3 + 8);
      return result;
    case 1534:
    case 1541:
    case 1704:
    case 1706:
    case 1708:
    case 1711:
    case 1713:
    case 1715:
    case 5037:
    case 5309:
    case 5310:
      v342 = *(a2 + 2);
      if (*v342 == 1)
      {
        v343 = *(*(a1 + 8) + 152);
        v344 = *(v342 + 8);
        return (32 * (*(*(v343 + 104) + 2 * v344) & 0x1F)) | result;
      }

      return (32 * (*(v342 + 8) & 0x1FLL)) | result;
    case 1546:
    case 1703:
      v907 = *(a2 + 2);
      if (*v907 == 2)
      {
        return *(v907 + 8) & 0x3FFFFFFLL | result;
      }

      if (v3 == 1703)
      {
        v1292 = 142;
      }

      else
      {
        v1292 = 141;
      }

      v1293 = *(a2 + 1);
      v1785 = *(v907 + 8);
      LODWORD(v1786) = 0;
      HIDWORD(v1786) = v1292;
      v1787 = v1293;
      v1294 = *(a3 + 8);
      v1295 = *a3;
      v1296 = &v1785;
      if (v1294 >= *(a3 + 12))
      {
        v1781 = result;
        if (v1295 <= &v1785 && v1295 + 24 * v1294 > &v1785)
        {
          v1753 = &v1785 - v1295;
          v1754 = a3;
          sub_298B90A44(a3, (a3 + 16), v1294 + 1, 24);
          a3 = v1754;
          v1295 = *v1754;
          v1296 = &v1753[*v1754];
        }

        else
        {
          v1738 = a3;
          sub_298B90A44(a3, (a3 + 16), v1294 + 1, 24);
          a3 = v1738;
          v1295 = *v1738;
          v1296 = &v1785;
        }

        result = v1781;
      }

      v1297 = v1295 + 24 * *(a3 + 8);
      v1298 = *v1296;
      *(v1297 + 16) = v1296[2];
      *v1297 = v1298;
      ++*(a3 + 8);
      return result;
    case 1547:
    case 2239:
    case 5406:
      v130 = *(a2 + 2);
      if (*v130 == 1)
      {
        LOWORD(v783) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 8));
      }

      else
      {
        v783 = *(v130 + 8);
      }

      if (*(v130 + 16) == 1)
      {
        LOWORD(v1210) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 24));
      }

      else
      {
        v1210 = *(v130 + 24);
      }

      if (*(v130 + 32) == 1)
      {
        LOWORD(v1211) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 40));
      }

      else
      {
        v1211 = *(v130 + 40);
      }

      v56 = v783 & 0x1F;
      v57 = 32 * (v1210 & 0x1F);
      v58 = (v1211 & 0x1F) << 16;
      if (*(v130 + 48) != 1)
      {
        goto LABEL_2462;
      }

      v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 56)) & 0x1F) << 10;
      return v56 | v57 | v58 | v109 | result;
    case 1548:
    case 1731:
    case 1732:
    case 1733:
    case 2240:
    case 4774:
      v21 = *(a2 + 2);
      if (*v21 == 1)
      {
        LOWORD(v525) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 8));
      }

      else
      {
        v525 = *(v21 + 8);
      }

      if (*(v21 + 48) == 1)
      {
        LOWORD(v829) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 56));
      }

      else
      {
        v829 = *(v21 + 56);
      }

      goto LABEL_2344;
    case 1549:
    case 1736:
      v490 = *(a2 + 2);
      if (*v490 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v490 + 8));
      }

      else
      {
        a1 = *(v490 + 8);
      }

      v780 = a1 & 0xF;
      if (*(v490 + 16) != 2)
      {
        goto LABEL_2612;
      }

      return v780 | (32 * (*(v490 + 24) & 0x7FFFFLL)) | result;
    case 1558:
    case 1559:
    case 2836:
    case 2839:
    case 3129:
    case 3133:
    case 3138:
    case 3186:
    case 3190:
    case 3195:
    case 4606:
    case 4610:
    case 4623:
    case 4627:
    case 5288:
    case 5289:
    case 5566:
    case 5570:
    case 5610:
    case 5614:
    case 5767:
    case 5768:
    case 5772:
    case 5792:
    case 5793:
    case 5797:
    case 5911:
    case 5913:
    case 5917:
    case 5930:
    case 5932:
    case 5936:
    case 6838:
    case 6839:
    case 7163:
    case 7164:
    case 7341:
    case 7345:
    case 7385:
    case 7389:
    case 7724:
    case 7725:
      v92 = *(a2 + 2);
      if (*(v92 + 16) == 1)
      {
        LOWORD(v93) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v92 + 24));
      }

      else
      {
        v93 = *(v92 + 24);
      }

      if (*(v92 + 32) == 1)
      {
        LOWORD(v173) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v92 + 40));
      }

      else
      {
        v173 = *(v92 + 40);
      }

      if (*(v92 + 48) == 1)
      {
        LOWORD(v174) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v92 + 56));
      }

      else
      {
        v174 = *(v92 + 56);
      }

      v175 = v93 & 0x1F;
      v176 = 32 * (v173 & 0x1F);
      v177 = (v174 & 0x1F) << 16;
      if (*(v92 + 64) == 1)
      {
        v178 = *(*(a1 + 8) + 152);
        v179 = *(v92 + 72);
        goto LABEL_628;
      }

      v180 = *(v92 + 72);
      goto LABEL_630;
    case 1561:
    case 1565:
    case 1567:
    case 1571:
    case 2292:
    case 2296:
    case 2298:
    case 2302:
    case 2847:
    case 2848:
    case 2849:
    case 3316:
    case 3317:
    case 3318:
    case 3449:
    case 3450:
    case 3451:
    case 3551:
    case 3552:
    case 3791:
    case 3793:
    case 3795:
    case 3797:
    case 3799:
    case 3801:
    case 3803:
    case 3805:
    case 3821:
    case 3823:
    case 3825:
    case 3827:
    case 3829:
    case 3831:
    case 3833:
    case 3835:
    case 3869:
    case 3871:
    case 3873:
    case 3875:
    case 3877:
    case 3879:
    case 3881:
    case 3883:
    case 3897:
    case 3899:
    case 3901:
    case 3903:
    case 3905:
    case 3907:
    case 3909:
    case 3911:
    case 3913:
    case 3915:
    case 3917:
    case 3919:
    case 3921:
    case 3923:
    case 3925:
    case 3927:
    case 3969:
    case 3971:
    case 3973:
    case 3975:
    case 3977:
    case 3979:
    case 3981:
    case 3983:
    case 3985:
    case 3987:
    case 3989:
    case 3991:
    case 3993:
    case 3995:
    case 3997:
    case 4017:
    case 4019:
    case 4021:
    case 4023:
    case 4025:
    case 4027:
    case 4029:
    case 4031:
    case 4033:
    case 4035:
    case 4037:
    case 4039:
    case 4041:
    case 4043:
    case 4045:
    case 4061:
    case 4063:
    case 4065:
    case 4067:
    case 4069:
    case 4071:
    case 4073:
    case 4079:
    case 4081:
    case 4083:
    case 4085:
    case 4087:
    case 4089:
    case 4091:
    case 4093:
    case 4105:
    case 4721:
    case 5072:
    case 5073:
    case 5074:
    case 5075:
    case 6125:
    case 6126:
    case 6127:
    case 6140:
    case 6141:
    case 6142:
    case 6370:
    case 6372:
    case 6374:
    case 6376:
    case 6378:
    case 6380:
    case 6382:
    case 6384:
    case 6400:
    case 6402:
    case 6404:
    case 6406:
    case 6408:
    case 6410:
    case 6412:
    case 6414:
    case 6416:
    case 6418:
    case 6420:
    case 6422:
    case 6424:
    case 6426:
    case 6428:
    case 6430:
    case 6432:
    case 6434:
    case 6436:
    case 6438:
    case 6440:
    case 6442:
    case 6444:
    case 6446:
    case 6491:
    case 6493:
    case 6495:
    case 6497:
    case 6499:
    case 6501:
    case 6503:
    case 6523:
    case 6525:
    case 6527:
    case 6529:
    case 6531:
    case 6533:
    case 6535:
    case 6551:
    case 6553:
    case 6555:
    case 6557:
    case 6559:
    case 6561:
    case 6563:
    case 6579:
    case 6849:
    case 6850:
    case 6851:
    case 6852:
    case 6853:
    case 6854:
    case 7629:
    case 7630:
    case 7631:
    case 7822:
    case 7823:
    case 7824:
    case 7825:
    case 7826:
    case 7827:
      v17 = *(a2 + 2);
      if (*v17 == 1)
      {
        LOWORD(v18) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v17 + 8));
      }

      else
      {
        v18 = *(v17 + 8);
      }

      v41 = v18 & 0x1F;
      if (*(v17 + 16) != 1)
      {
        return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(v17 + 24) & 0x1FLL)) | result;
      }

      v42 = *(*(a1 + 8) + 152);
      v43 = *(v17 + 24);
      return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(*(v42 + 104) + 2 * v43) & 0x1FLL)) | result;
    case 1562:
    case 1564:
    case 1568:
    case 1570:
    case 2293:
    case 2295:
    case 2299:
    case 2301:
    case 2603:
    case 2788:
    case 6855:
    case 6856:
    case 6857:
    case 7828:
    case 7829:
    case 7830:
      v237 = *(a2 + 2);
      if (*(v237 + 16) == 1)
      {
        v238 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v239) = *(v238 + 2 * *(v237 + 24));
      }

      else
      {
        v239 = *(v237 + 24);
        v238 = *(*(*(a1 + 8) + 152) + 104);
      }

      return *(v238 + 2 * *(v237 + 8)) & 0x1E | (32 * (v239 & 0x1F)) | result;
    case 1576:
    case 2432:
    case 2433:
    case 2434:
    case 5209:
    case 5210:
    case 5211:
    case 5212:
    case 7083:
    case 7084:
    case 7085:
    case 7086:
      v325 = *(a2 + 2);
      if (*(v325 + 48) == 1)
      {
        LOWORD(v326) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v325 + 56));
      }

      else
      {
        v326 = *(v325 + 56);
      }

      v514 = (v326 & 0x1F) << 16;
      if (*(v325 + 32) == 1)
      {
        v522 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v523) = *(v522 + 2 * *(v325 + 40));
      }

      else
      {
        v523 = *(v325 + 40);
        v522 = *(*(*(a1 + 8) + 152) + 104);
      }

      v524 = *(v522 + 2 * *(v325 + 8));
      v518 = 32 * (v523 & 0x1F);
      v519 = v524 & 0x1E;
      return v514 | v518 | result | v519;
    case 1577:
    case 2435:
    case 2436:
    case 2437:
    case 5213:
    case 5214:
    case 5215:
    case 5216:
    case 7087:
    case 7088:
    case 7089:
    case 7090:
      v310 = *(a2 + 2);
      if (*(v310 + 48) == 1)
      {
        LOWORD(v311) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v310 + 56));
      }

      else
      {
        v311 = *(v310 + 56);
      }

      v514 = (v311 & 0x1F) << 16;
      if (*(v310 + 32) == 1)
      {
        v515 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v516) = *(v515 + 2 * *(v310 + 40));
      }

      else
      {
        v516 = *(v310 + 40);
        v515 = *(*(*(a1 + 8) + 152) + 104);
      }

      v517 = *(v515 + 2 * *(v310 + 8));
      v518 = 32 * (v516 & 0x1F);
      v519 = v517 & 0x1C;
      return v514 | v518 | result | v519;
    case 1578:
    case 2438:
    case 2439:
    case 2440:
    case 5217:
    case 5218:
    case 5219:
    case 5220:
    case 7091:
    case 7092:
    case 7093:
    case 7094:
      v19 = *(a2 + 2);
      if (*(v19 + 48) == 1)
      {
        LOWORD(v324) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 56));
      }

      else
      {
        v324 = *(v19 + 56);
      }

      if (*(v19 + 32) == 1)
      {
        LOWORD(v521) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 40));
      }

      else
      {
        v521 = *(v19 + 40);
      }

      v37 = (v324 & 0x1F) << 16;
      v38 = 32 * (v521 & 0x1F);
      if (*v19 != 1)
      {
        goto LABEL_1281;
      }

      goto LABEL_70;
    case 1582:
    case 1587:
    case 4962:
    case 4963:
    case 4964:
    case 4965:
    case 5059:
    case 5060:
    case 5061:
    case 5062:
    case 5063:
    case 5064:
    case 5065:
      v15 = *(a2 + 2);
      if (*v15 == 1)
      {
        LOWORD(v272) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 8));
      }

      else
      {
        v272 = *(v15 + 8);
      }

      if (*(v15 + 32) == 1)
      {
        LOWORD(v494) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 40));
      }

      else
      {
        v494 = *(v15 + 40);
      }

      v37 = v272 & 0x1F;
      v38 = (v494 & 7) << 10;
      if (*(v15 + 48) != 1)
      {
        goto LABEL_103;
      }

      goto LABEL_48;
    case 1583:
    case 2636:
    case 2651:
    case 2672:
    case 5717:
    case 5720:
    case 7463:
      v491 = *(a2 + 2);
      if (*v491 == 1)
      {
        v492 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v493) = *(v492 + 2 * *(v491 + 8));
      }

      else
      {
        v493 = *(v491 + 8);
        v492 = *(*(*(a1 + 8) + 152) + 104);
      }

      return (32 * *(v492 + 2 * *(v491 + 24))) & 0x3C0 | v493 & 0x1F | result;
    case 1584:
    case 1585:
    case 1586:
    case 2673:
    case 2789:
    case 2790:
    case 5723:
    case 5726:
    case 7466:
      v262 = *(a2 + 2);
      v263 = *(*(*(a1 + 8) + 152) + 104);
      v264 = (32 * *(v263 + 2 * *(v262 + 24))) & 0x3C0;
      goto LABEL_747;
    case 1589:
    case 1677:
    case 2816:
    case 2817:
    case 3109:
    case 3166:
    case 3543:
    case 5267:
    case 5268:
    case 6833:
    case 6878:
    case 7142:
    case 7143:
    case 7717:
    case 7834:
      v249 = *(a2 + 2);
      if (*(v249 + 80) == 1)
      {
        v250 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v251) = *(v250 + 2 * *(v249 + 88));
      }

      else
      {
        v251 = *(v249 + 88);
        v250 = *(*(*(a1 + 8) + 152) + 104);
      }

      v468 = ((*(v249 + 40) << 13) + 24576) & 0x6000 | ((v251 & 0xF) << 16) | (((*(v250 + 2 * *(v249 + 72)) >> 1) & 0xF) << 6);
      goto LABEL_840;
    case 1592:
    case 2825:
    case 2826:
    case 3118:
    case 3175:
    case 5276:
    case 5277:
    case 6835:
    case 6876:
    case 6879:
    case 7151:
    case 7152:
    case 7720:
    case 7821:
    case 7835:
      v249 = *(a2 + 2);
      if (*(v249 + 80) == 1)
      {
        v250 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v256) = *(v250 + 2 * *(v249 + 88));
      }

      else
      {
        v256 = *(v249 + 88);
        v250 = *(*(*(a1 + 8) + 152) + 104);
      }

      v468 = ((*(v249 + 40) << 13) + 24576) & 0x6000 | ((v256 & 0xF) << 16) | (((*(v250 + 2 * *(v249 + 72)) >> 2) & 7) << 7);
LABEL_840:
      if (*(v249 + 48) == 1)
      {
        LOWORD(v473) = *(v250 + 2 * *(v249 + 56));
      }

      else
      {
        v473 = *(v249 + 56);
      }

      v474 = v468 | v473 & 7;
      if (*(v249 + 96) == 1)
      {
        LOWORD(v250) = *(v250 + 2 * *(v249 + 104));
      }

      else
      {
        LODWORD(v250) = *(v249 + 104);
      }

      return result | v474 | ((v250 & 3) << 10);
    case 1594:
    case 2831:
    case 2832:
    case 3127:
    case 3184:
    case 4603:
    case 4620:
    case 5283:
    case 5903:
    case 5922:
    case 6837:
    case 7158:
    case 7723:
      v275 = *(a2 + 2);
      if (*v275 == 1)
      {
        LOWORD(v276) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v275 + 8));
      }

      else
      {
        v276 = *(v275 + 8);
      }

      if (*(v275 + 32) == 1)
      {
        LOWORD(v497) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v275 + 40));
      }

      else
      {
        v497 = *(v275 + 40);
      }

      if (*(v275 + 48) == 1)
      {
        LOWORD(v498) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v275 + 56));
      }

      else
      {
        v498 = *(v275 + 56);
      }

      v499 = v276 & 0x1F;
      v500 = 32 * (v497 & 0x1F);
      v501 = (v498 & 7) << 16;
      if (*(v275 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v275 + 72));
      }

      else
      {
        a1 = *(v275 + 72);
      }

      return (v499 | v500 | v501) & 0xFFFFFFFFFFE7FFFFLL | ((a1 & 3) << 19) | result;
    case 1598:
    case 1603:
    case 1608:
    case 1613:
    case 2390:
    case 2391:
    case 2392:
    case 2404:
    case 2405:
    case 2406:
    case 2885:
    case 2886:
    case 2887:
    case 2929:
    case 2930:
    case 2931:
    case 2977:
    case 2978:
    case 2979:
    case 3021:
    case 3022:
    case 3023:
    case 3471:
    case 3472:
    case 3473:
    case 5443:
    case 5444:
    case 5445:
    case 5446:
    case 5501:
    case 5502:
    case 5503:
    case 5504:
    case 5801:
    case 5802:
    case 5803:
    case 5804:
    case 6181:
    case 6182:
    case 6183:
    case 6184:
    case 7219:
    case 7220:
    case 7221:
    case 7222:
    case 7276:
    case 7277:
    case 7278:
    case 7279:
    case 7661:
    case 7662:
    case 7663:
    case 7664:
      v73 = *(*(*(a1 + 8) + 152) + 104);
      return (*(v73 + 2 * *(*(a2 + 2) + 8)) | (*(v73 + 2 * *(*(a2 + 2) + 40)) << 16)) & 0x1E001ELL | result;
    case 1600:
    case 1605:
    case 1610:
    case 1615:
    case 2393:
    case 2394:
    case 2395:
    case 2407:
    case 2408:
    case 2409:
    case 2891:
    case 2892:
    case 2893:
    case 2935:
    case 2936:
    case 2937:
    case 2983:
    case 2984:
    case 2985:
    case 3027:
    case 3028:
    case 3029:
    case 3477:
    case 3478:
    case 3479:
    case 5451:
    case 5452:
    case 5453:
    case 5454:
    case 5509:
    case 5510:
    case 5511:
    case 5512:
    case 5809:
    case 5810:
    case 5811:
    case 5812:
    case 6189:
    case 6190:
    case 6191:
    case 6192:
    case 7227:
    case 7228:
    case 7229:
    case 7230:
    case 7284:
    case 7285:
    case 7286:
    case 7287:
    case 7669:
    case 7670:
    case 7671:
    case 7672:
      v74 = *(*(*(a1 + 8) + 152) + 104);
      return (*(v74 + 2 * *(*(a2 + 2) + 8)) | (*(v74 + 2 * *(*(a2 + 2) + 40)) << 16)) & 0x1C001CLL | result;
    case 1619:
    case 1623:
    case 2837:
    case 2838:
    case 3044:
    case 3045:
    case 3100:
    case 3101:
    case 3128:
    case 3137:
    case 3140:
    case 3141:
    case 3142:
    case 3157:
    case 3158:
    case 3185:
    case 3194:
    case 3197:
    case 4608:
    case 4612:
    case 4625:
    case 4629:
    case 5568:
    case 5572:
    case 5612:
    case 5616:
    case 5766:
    case 5770:
    case 5774:
    case 5791:
    case 5795:
    case 5799:
    case 5909:
    case 5915:
    case 5919:
    case 5928:
    case 5934:
    case 5938:
    case 7343:
    case 7347:
    case 7387:
    case 7391:
      v94 = *(a2 + 2);
      if (*(v94 + 16) == 1)
      {
        LOWORD(v95) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v94 + 24));
      }

      else
      {
        v95 = *(v94 + 24);
      }

      if (*(v94 + 32) == 1)
      {
        LOWORD(v181) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v94 + 40));
      }

      else
      {
        v181 = *(v94 + 40);
      }

      if (*(v94 + 48) == 1)
      {
        LOWORD(v182) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v94 + 56));
      }

      else
      {
        v182 = *(v94 + 56);
      }

      v183 = v95 & 0x1F;
      v184 = 32 * (v181 & 0x1F);
      v185 = (v182 & 0xF) << 16;
      if (*(v94 + 64) == 1)
      {
        v186 = *(*(a1 + 8) + 152);
        v187 = *(v94 + 72);
        goto LABEL_616;
      }

      v188 = *(v94 + 72);
      return (v183 | v184 | v185) & 0xFFFFFFFFFFCFFFFFLL | ((v188 & 3) << 20) | (v188 << 9) & 0x800 | result;
    case 1621:
    case 1625:
    case 1642:
    case 1644:
    case 2830:
    case 3050:
    case 3080:
    case 3145:
    case 3147:
    case 5532:
    case 5553:
    case 5576:
    case 5597:
    case 5755:
    case 5760:
    case 5780:
    case 5785:
    case 7307:
    case 7328:
    case 7351:
    case 7372:
      v171 = *(a2 + 2);
      if (*v171 == 1)
      {
        LOWORD(v172) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v171 + 8));
      }

      else
      {
        v172 = *(v171 + 8);
      }

      if (*(v171 + 32) == 1)
      {
        LOWORD(v353) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v171 + 40));
      }

      else
      {
        v353 = *(v171 + 40);
      }

      if (*(v171 + 48) == 1)
      {
        LOWORD(v354) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v171 + 56));
      }

      else
      {
        v354 = *(v171 + 56);
      }

      v355 = v172 & 0x1F;
      v356 = 32 * (v353 & 0x1F);
      v357 = (v354 & 7) << 16;
      if (*(v171 + 64) == 1)
      {
        v358 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v171 + 72));
      }

      else
      {
        v358 = *(v171 + 72);
      }

      v359 = v358 >> 1;
      v360 = (v358 & 1) << 11;
      return (v355 | v356 | v357) & 0xFFFFFFFFFFE7FFFFLL | ((v359 & 3) << 19) | v360 | result;
    case 1626:
    case 1646:
    case 3085:
    case 3149:
    case 5557:
    case 5601:
    case 7332:
    case 7376:
      v444 = *(a2 + 2);
      if (*(v444 + 80) == 1)
      {
        LOWORD(v445) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v444 + 88));
      }

      else
      {
        v445 = *(v444 + 88);
      }

      v722 = ((*(v444 + 40) << 13) + 24576) & 0x6000 | ((v445 & 0xF) << 16);
      if (*(v444 + 96) == 1)
      {
        LOWORD(v723) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v444 + 104));
      }

      else
      {
        v723 = *(v444 + 104);
      }

      if (*(v444 + 64) == 1)
      {
        LOWORD(v724) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v444 + 72));
      }

      else
      {
        v724 = *(v444 + 72);
      }

      v725 = (v723 << 13) & 0x8000;
      v726 = (v723 & 3) << 10;
      v727 = 32 * (v724 & 0x1F);
      if (*(v444 + 48) == 1)
      {
        v728 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v444 + 56)) & 7;
      }

      else
      {
        v728 = *(v444 + 56) & 7;
      }

      return v725 | v722 | v726 | v727 | v728 | result;
    case 1627:
    case 1647:
    case 3086:
    case 3093:
    case 3150:
    case 5558:
    case 5602:
    case 7333:
    case 7377:
      v415 = *(a2 + 2);
      if (*(v415 + 80) == 1)
      {
        LOWORD(v416) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v415 + 88));
      }

      else
      {
        v416 = *(v415 + 88);
      }

      v607 = ((*(v415 + 40) << 13) + 24576) & 0x6000 | ((v416 & 0xF) << 16);
      if (*(v415 + 64) == 1)
      {
        v608 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v415 + 72)) & 0x1F);
      }

      else
      {
        v608 = 32 * (*(v415 + 72) & 0x1F);
      }

      goto LABEL_2821;
    case 1628:
    case 1648:
    case 3087:
    case 3088:
    case 3151:
    case 5559:
    case 5603:
    case 7334:
    case 7378:
      v401 = *(a2 + 2);
      v402 = *(*(*(a1 + 8) + 152) + 104);
      v405 = ((*(v401 + 40) << 13) + 24576) & 0x6000 | (((*(v402 + 2 * *(v401 + 88)) >> 1) & 0xF) << 17) | (((*(v402 + 2 * *(v401 + 72)) >> 1) & 0xF) << 6);
      goto LABEL_703;
    case 1629:
    case 1649:
    case 3090:
    case 3152:
    case 5560:
    case 5604:
    case 7335:
    case 7379:
      v448 = *(a2 + 2);
      if (*(v448 + 80) == 1)
      {
        LOWORD(v450) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v448 + 88));
      }

      else
      {
        v450 = *(v448 + 88);
      }

      v735 = ((*(v448 + 40) << 13) + 24576) & 0x6000 | ((v450 & 0xF) << 16);
      if (*(v448 + 96) == 1)
      {
        v736 = *(*(*(a1 + 8) + 152) + 104);
        v741 = *(v736 + 2 * *(v448 + 104));
      }

      else
      {
        v741 = *(v448 + 104);
        v736 = *(*(*(a1 + 8) + 152) + 104);
      }

      v738 = (v741 << 9) & 0xC00;
      v739 = 4 * (v741 & 1);
      v740 = (32 * *(v736 + 2 * *(v448 + 72))) & 0x3C0;
      goto LABEL_1345;
    case 1630:
    case 1633:
    case 1650:
    case 1653:
    case 3091:
    case 3092:
    case 3098:
    case 3099:
    case 3153:
    case 3156:
    case 5561:
    case 5564:
    case 5605:
    case 5608:
    case 7336:
    case 7339:
    case 7380:
    case 7383:
      v213 = *(a2 + 2);
      if (*(v213 + 80) == 1)
      {
        LOWORD(v214) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v213 + 88));
      }

      else
      {
        v214 = *(v213 + 88);
      }

      v417 = ((*(v213 + 40) << 13) + 24576) & 0x6000 | ((v214 & 0xF) << 16);
      if (*(v213 + 64) == 1)
      {
        v418 = v417 | (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v213 + 72)) & 0x1F));
        if (*(v213 + 48) != 1)
        {
LABEL_2988:
          LODWORD(a1) = *(v213 + 56);
          return result | v418 | (a1 & 3);
        }
      }

      else
      {
        v418 = v417 | (32 * (*(v213 + 72) & 0x1F));
        if (*(v213 + 48) != 1)
        {
          goto LABEL_2988;
        }
      }

LABEL_743:
      LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v213 + 56));
      return result | v418 | (a1 & 3);
    case 1631:
    case 1651:
    case 3094:
    case 3095:
    case 3154:
    case 5562:
    case 5606:
    case 7337:
    case 7381:
      v401 = *(a2 + 2);
      v402 = *(*(*(a1 + 8) + 152) + 104);
      v403 = ((*(v401 + 40) << 13) + 24576) & 0x6000 | (((*(v402 + 2 * *(v401 + 88)) >> 2) & 7) << 18);
      v404 = *(v401 + 72);
      goto LABEL_699;
    case 1632:
    case 1652:
    case 3097:
    case 3155:
    case 5563:
    case 5607:
    case 7338:
    case 7382:
      v448 = *(a2 + 2);
      if (*(v448 + 80) == 1)
      {
        LOWORD(v449) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v448 + 88));
      }

      else
      {
        v449 = *(v448 + 88);
      }

      v735 = ((*(v448 + 40) << 13) + 24576) & 0x6000 | ((v449 & 0xF) << 16);
      if (*(v448 + 96) == 1)
      {
        v736 = *(*(*(a1 + 8) + 152) + 104);
        v737 = *(v736 + 2 * *(v448 + 104));
      }

      else
      {
        v737 = *(v448 + 104);
        v736 = *(*(*(a1 + 8) + 152) + 104);
      }

      v738 = (v737 << 9) & 0xC00;
      v739 = 4 * (v737 & 1);
      v740 = (32 * *(v736 + 2 * *(v448 + 72))) & 0x380;
LABEL_1345:
      if (*(v448 + 48) == 1)
      {
        LOWORD(v736) = *(v736 + 2 * *(v448 + 56));
      }

      else
      {
        v736 = *(v448 + 56);
      }

      return v738 | v735 | v739 | v740 | v736 & 3 | result;
    case 1636:
    case 1656:
    case 2815:
    case 3108:
    case 3165:
    case 3542:
      v550 = *(a2 + 2);
      if (*(v550 + 80) == 1)
      {
        v551 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v552) = *(v551 + 2 * *(v550 + 88));
      }

      else
      {
        v552 = *(v550 + 88);
        v551 = *(*(*(a1 + 8) + 152) + 104);
      }

      v857 = ((*(v550 + 40) << 13) + 24576) & 0x6000 | ((v552 & 0xF) << 16) | (((*(v551 + 2 * *(v550 + 72)) >> 1) & 0xF) << 6);
      goto LABEL_1679;
    case 1639:
    case 1659:
    case 2824:
    case 3117:
    case 3174:
      v550 = *(a2 + 2);
      if (*(v550 + 80) == 1)
      {
        v551 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v575) = *(v551 + 2 * *(v550 + 88));
      }

      else
      {
        v575 = *(v550 + 88);
        v551 = *(*(*(a1 + 8) + 152) + 104);
      }

      v857 = ((*(v550 + 40) << 13) + 24576) & 0x6000 | ((v575 & 0xF) << 16) | (((*(v551 + 2 * *(v550 + 72)) >> 2) & 7) << 7);
LABEL_1679:
      if (*(v550 + 48) == 1)
      {
        LOWORD(v879) = *(v551 + 2 * *(v550 + 56));
      }

      else
      {
        v879 = *(v550 + 56);
      }

      v880 = v857 | v879 & 7u;
      if (*(v550 + 96) == 1)
      {
        v881 = *(v551 + 2 * *(v550 + 104));
      }

      else
      {
        v881 = *(v550 + 104);
      }

      v882 = (v881 << 9) & 0xC00;
      return v882 | (8 * (v881 & 1)) | result | v880;
    case 1640:
    case 1660:
    case 3122:
    case 3123:
    case 3124:
    case 3179:
    case 3180:
    case 3181:
    case 3301:
    case 3302:
    case 3303:
    case 3304:
    case 3305:
    case 3306:
    case 4597:
    case 4598:
    case 4599:
    case 4600:
    case 4614:
    case 4615:
    case 4616:
    case 4617:
      v160 = *(a2 + 2);
      if (*(v160 + 16) == 1)
      {
        LOWORD(v161) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 24));
      }

      else
      {
        v161 = *(v160 + 24);
      }

      if (*v160 == 1)
      {
        LOWORD(v332) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 8));
      }

      else
      {
        v332 = *(v160 + 8);
      }

      if (*(v160 + 64) == 1)
      {
        LOWORD(v333) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 72));
      }

      else
      {
        v333 = *(v160 + 72);
      }

      v56 = (v161 & 7) << 10;
      v57 = v332 & 0x1F;
      v58 = (v333 & 0x1F) << 16;
      if (*(v160 + 48) != 1)
      {
        goto LABEL_2203;
      }

      v102 = *(*(a1 + 8) + 152);
      v103 = *(v160 + 56);
      goto LABEL_552;
    case 1641:
    case 1661:
    case 3126:
    case 3183:
    case 4602:
    case 4619:
    case 5902:
    case 5921:
      v446 = *(a2 + 2);
      if (*v446 == 1)
      {
        LOWORD(v447) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v446 + 8));
      }

      else
      {
        v447 = *(v446 + 8);
      }

      if (*(v446 + 32) == 1)
      {
        LOWORD(v729) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v446 + 40));
      }

      else
      {
        v729 = *(v446 + 40);
      }

      if (*(v446 + 48) == 1)
      {
        LOWORD(v730) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v446 + 56));
      }

      else
      {
        v730 = *(v446 + 56);
      }

      v731 = v447 & 0x1F;
      v732 = 32 * (v729 & 0x1F);
      v733 = (v730 & 7) << 16;
      if (*(v446 + 64) == 1)
      {
        v734 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v446 + 72));
      }

      else
      {
        v734 = *(v446 + 72);
      }

      return (v731 | v732 | v733) & 0xFFFFFFFFFFA7FFFFLL | (((v734 >> 2) & 1) << 22) | ((v734 & 3) << 19) | result;
    case 1663:
      v71 = *(a2 + 2);
      if (*(v71 + 48) == 1)
      {
        LOWORD(v1338) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 56));
      }

      else
      {
        v1338 = *(v71 + 56);
      }

      if (*v71 == 1)
      {
        LOWORD(v1635) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 8));
      }

      else
      {
        v1635 = *(v71 + 8);
      }

      v37 = (v1338 & 0x1F) << 16;
      v38 = v1635 & 0x1F;
      if (*(v71 + 32) != 1)
      {
        goto LABEL_1395;
      }

      goto LABEL_732;
    case 1664:
    case 1666:
    case 1709:
    case 1710:
    case 3200:
    case 3202:
    case 3205:
    case 3206:
    case 3209:
    case 5622:
    case 5623:
    case 5625:
    case 5626:
    case 6846:
    case 6848:
    case 7397:
    case 7398:
    case 7400:
    case 7401:
    case 7767:
    case 7769:
      v169 = *(a2 + 2);
      if (*(v169 + 80) == 1)
      {
        LOWORD(v170) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v169 + 88));
      }

      else
      {
        v170 = *(v169 + 88);
      }

      if (*(v169 + 48) == 1)
      {
        LOWORD(v345) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v169 + 56));
      }

      else
      {
        v345 = *(v169 + 56);
      }

      if (*(v169 + 32) == 1)
      {
        LOWORD(v346) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v169 + 40));
      }

      else
      {
        v346 = *(v169 + 40);
      }

      if (*(v169 + 64) == 1)
      {
        LOWORD(v347) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v169 + 72));
      }

      else
      {
        v347 = *(v169 + 72);
      }

      v348 = (v170 & 0x1F) << 16;
      v349 = (v345 & 7) << 13;
      v350 = (v346 & 7) << 10;
      v351 = 32 * (v347 & 0x1F);
      if (*v169 == 1)
      {
        v352 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v169 + 8)) & 3;
      }

      else
      {
        v352 = *(v169 + 8) & 3;
      }

      return v348 | v349 | v350 | v351 | v352 | result;
    case 1665:
    case 1667:
    case 3201:
    case 3204:
    case 3208:
      v561 = *(a2 + 2);
      if (*(v561 + 80) == 1)
      {
        LOWORD(v562) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v561 + 88));
      }

      else
      {
        v562 = *(v561 + 88);
      }

      if (*(v561 + 48) == 1)
      {
        LOWORD(v867) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v561 + 56));
      }

      else
      {
        v867 = *(v561 + 56);
      }

      if (*(v561 + 32) == 1)
      {
        LOWORD(v868) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v561 + 40));
      }

      else
      {
        v868 = *(v561 + 40);
      }

      if (*(v561 + 64) == 1)
      {
        LOWORD(v869) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v561 + 72));
      }

      else
      {
        v869 = *(v561 + 72);
      }

      v348 = (v562 & 0x1F) << 16;
      v349 = (v867 & 7) << 13;
      v350 = (v868 & 7) << 10;
      v351 = 32 * (v869 & 0x1F);
      if (*v561 == 1)
      {
        v352 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v561 + 8)) & 1;
      }

      else
      {
        v352 = *(v561 + 8) & 1;
      }

      return v348 | v349 | v350 | v351 | v352 | result;
    case 1670:
    case 3266:
    case 4750:
    case 5818:
    case 5940:
      v557 = *(a2 + 2);
      if (*v557 == 1)
      {
        LOWORD(v558) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v557 + 8));
      }

      else
      {
        v558 = *(v557 + 8);
      }

      if (*(v557 + 16) == 1)
      {
        LOWORD(v861) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v557 + 24));
      }

      else
      {
        v861 = *(v557 + 24);
      }

      if (*(v557 + 32) == 1)
      {
        LOWORD(v862) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v557 + 40));
      }

      else
      {
        v862 = *(v557 + 40);
      }

      v731 = v558 & 0x1F;
      v732 = 32 * (v861 & 0x1F);
      v733 = (v862 & 7) << 16;
      if (*(v557 + 48) == 1)
      {
        v734 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v557 + 56));
      }

      else
      {
        v734 = *(v557 + 56);
      }

      return (v731 | v732 | v733) & 0xFFFFFFFFFFA7FFFFLL | (((v734 >> 2) & 1) << 22) | ((v734 & 3) << 19) | result;
    case 1671:
      v1322 = *(a2 + 2);
      if (*v1322 == 1)
      {
        LOWORD(v1323) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1322 + 8));
      }

      else
      {
        v1323 = *(v1322 + 8);
      }

      if (*(v1322 + 32) == 1)
      {
        LOWORD(v1621) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1322 + 40));
      }

      else
      {
        v1621 = *(v1322 + 40);
      }

      if (*(v1322 + 48) == 1)
      {
        LOWORD(v1622) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1322 + 56));
      }

      else
      {
        v1622 = *(v1322 + 56);
      }

      v56 = v1323 & 0x1F;
      v57 = 32 * (v1621 & 0x1F);
      v58 = (v1622 & 0x1F) << 16;
      if (*(v1322 + 64) == 1)
      {
        v279 = *(*(a1 + 8) + 152);
        v280 = *(v1322 + 72);
        goto LABEL_448;
      }

      v109 = (*(v1322 + 72) & 0x1FLL) << 10;
      return v56 | v57 | v58 | v109 | result;
    case 1672:
      v1558 = *(a2 + 2);
      if (*v1558 == 1)
      {
        LOWORD(v1559) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1558 + 8));
      }

      else
      {
        v1559 = *(v1558 + 8);
      }

      if (*(v1558 + 32) == 1)
      {
        LOWORD(v1725) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1558 + 40));
      }

      else
      {
        v1725 = *(v1558 + 40);
      }

      if (*(v1558 + 48) == 1)
      {
        LOWORD(v1726) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1558 + 56));
      }

      else
      {
        v1726 = *(v1558 + 56);
      }

      v56 = v1559 & 0x1F;
      v57 = 32 * (v1725 & 0x1F);
      v58 = (v1726 & 0x3F) << 16;
      if (*(v1558 + 64) == 1)
      {
        v604 = *(*(a1 + 8) + 152);
        v605 = *(v1558 + 72);
        goto LABEL_1145;
      }

      v109 = (*(v1558 + 72) & 0x3FLL) << 10;
      return v56 | v57 | v58 | v109 | result;
    case 1694:
    case 1696:
    case 4820:
    case 4822:
      v611 = *(a2 + 2);
      if (*(v611 + 16) == 1)
      {
        LOWORD(v612) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v611 + 24));
      }

      else
      {
        v612 = *(v611 + 24);
      }

      v915 = v612 & 0x1F;
      if (*(v611 + 32) == 1)
      {
        v916 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v611 + 40));
      }

      else
      {
        v916 = *(v611 + 40);
      }

      v917 = v916 >> 5;
      v918 = *(v611 + 56);
      return v915 & 0xFFFFFFFFFFF8FC1FLL | ((v917 & 7) << 16) | (32 * (v916 & 0x1F)) | (v918 >> 3 << 13) | result;
    case 1695:
    case 1697:
    case 4821:
    case 4823:
      v609 = *(a2 + 2);
      if (*(v609 + 16) == 1)
      {
        LOWORD(v610) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v609 + 24));
      }

      else
      {
        v610 = *(v609 + 24);
      }

      v912 = v610 & 0x1F;
      if (*(v609 + 32) == 1)
      {
        a1 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v609 + 40));
      }

      else
      {
        a1 = *(v609 + 40);
      }

      v913 = a1 >> 5;
      v914 = *(v609 + 56);
      goto LABEL_2269;
    case 1705:
    case 1707:
    case 1712:
    case 1714:
      v719 = *(a2 + 2);
      if (*v719 == 1)
      {
        LOWORD(v720) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v719 + 8));
      }

      else
      {
        v720 = *(v719 + 8);
      }

      v406 = 32 * (v720 & 0x1F);
      if (*(v719 + 16) == 1)
      {
        v1201 = *(*(a1 + 8) + 152);
        v1202 = *(v719 + 24);
        goto LABEL_2442;
      }

      v1201 = *(v719 + 24);
      return v406 | v1201 & 0x1F | result;
    case 1718:
    case 2180:
    case 2181:
    case 2182:
    case 3687:
    case 3688:
    case 5473:
    case 6877:
    case 6951:
      v398 = *(a2 + 2);
      if (*v398 == 1)
      {
        return (32 * *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v398 + 8))) | result;
      }

      else
      {
        return (32 * *(v398 + 8)) | result;
      }

    case 1719:
    case 1721:
    case 1722:
    case 1724:
    case 1725:
    case 1726:
      v502 = *(a2 + 2);
      if (*v502 == 1)
      {
        LOWORD(v503) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v502 + 8));
      }

      else
      {
        v503 = *(v502 + 8);
      }

      if (*(v502 + 16) == 1)
      {
        LOWORD(v794) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v502 + 24));
      }

      else
      {
        v794 = *(v502 + 24);
      }

      v37 = v503 & 0xF;
      v38 = (v794 & 0xF) << 10;
      if (*(v502 + 32) == 1)
      {
        v308 = *(*(a1 + 8) + 152);
        v309 = *(v502 + 40);
        goto LABEL_3191;
      }

      v61 = 32 * (*(v502 + 40) & 0xFLL);
      return v37 | v38 | v61 | result;
    case 1720:
    case 1723:
      v1206 = *(a2 + 2);
      if (*v1206 == 1)
      {
        LOWORD(v1207) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1206 + 8));
      }

      else
      {
        v1207 = *(v1206 + 8);
      }

      if (*(v1206 + 32) == 1)
      {
        LOWORD(v1549) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1206 + 40));
      }

      else
      {
        v1549 = *(v1206 + 40);
      }

      v37 = v1207 & 0xF;
      v38 = (v1549 & 0xF) << 10;
      if (*(v1206 + 48) == 1)
      {
        v308 = *(*(a1 + 8) + 152);
        v309 = *(v1206 + 56);
        goto LABEL_3191;
      }

      v61 = 32 * (*(v1206 + 56) & 0xFLL);
      return v37 | v38 | v61 | result;
    case 1737:
    case 1738:
    case 1739:
    case 1740:
    case 5713:
    case 5714:
    case 5715:
    case 5716:
      v458 = *(a2 + 2);
      if (*v458 == 1)
      {
        LOWORD(v459) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v458 + 8));
      }

      else
      {
        v459 = *(v458 + 8);
      }

      if (*(v458 + 32) == 1)
      {
        LOWORD(v749) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v458 + 40));
      }

      else
      {
        v749 = *(v458 + 40);
      }

      v750 = v459 & 0x1F;
      v751 = 32 * (v749 & 0x1F);
      if (*(v458 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v458 + 56));
      }

      else
      {
        a1 = *(v458 + 56);
      }

      return (v750 | v751) & 0xFFFFFFFFFFFFFBFFLL | ((a1 & 1) << 10) | result;
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
    case 4968:
    case 4969:
    case 4970:
    case 4971:
    case 4972:
    case 4973:
    case 4974:
    case 4975:
    case 4992:
    case 4993:
    case 4994:
    case 4995:
    case 4996:
    case 4997:
    case 4998:
    case 4999:
      v96 = *(a2 + 2);
      if (*(v96 + 16) == 1)
      {
        LOWORD(v97) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v96 + 24));
      }

      else
      {
        v97 = *(v96 + 24);
      }

      if (*(v96 + 48) == 1)
      {
        LOWORD(v195) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v96 + 56));
      }

      else
      {
        v195 = *(v96 + 56);
      }

      v37 = (v97 & 0x1F) << 16;
      v38 = 32 * (v195 & 0x1F);
      if (*(v96 + 32) == 1)
      {
        goto LABEL_321;
      }

      goto LABEL_512;
    case 1765:
    case 1766:
    case 1767:
    case 1768:
      v490 = *(a2 + 2);
      if (*v490 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v490 + 8));
      }

      else
      {
        a1 = *(v490 + 8);
      }

      v780 = a1 & 0x1F;
      if (*(v490 + 16) == 2)
      {
        return v780 | (32 * (*(v490 + 24) & 0x7FFFFLL)) | result;
      }

LABEL_2612:
      v781 = *(a2 + 1);
      v1785 = *(v490 + 24);
      v782 = 0x8C00000000;
      goto LABEL_2613;
    case 1769:
    case 1770:
    case 1771:
    case 1772:
    case 1773:
    case 1774:
    case 1775:
    case 1776:
    case 2426:
    case 2427:
    case 2428:
    case 2429:
    case 2430:
    case 2431:
      v270 = *(a2 + 2);
      if (*v270 == 1)
      {
        LOWORD(v271) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v270 + 8));
      }

      else
      {
        v271 = *(v270 + 8);
      }

      if (*(v270 + 16) == 1)
      {
        LOWORD(v477) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v270 + 24));
      }

      else
      {
        v477 = *(v270 + 24);
      }

      if (*(v270 + 32) == 1)
      {
        LOWORD(v478) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v270 + 40));
      }

      else
      {
        v478 = *(v270 + 40);
      }

      v479 = 32 * (v271 & 0x1F);
      v480 = (v477 & 0x1F) << 16;
      v481 = v478 & 0xF;
      if (*(v270 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v270 + 56));
      }

      else
      {
        a1 = *(v270 + 56);
      }

      v482 = (a1 & 0xF) << 12;
      return v479 | v480 | v481 | v482 | result;
    case 1777:
    case 1897:
    case 5896:
      v786 = *(a2 + 2);
      if (*v786 == 1)
      {
        LOWORD(v787) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v786 + 8));
      }

      else
      {
        v787 = *(v786 + 8);
      }

      if (*(v786 + 32) == 1)
      {
        LOWORD(v1215) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v786 + 40));
      }

      else
      {
        v1215 = *(v786 + 40);
      }

      if (*(v786 + 80) == 1)
      {
        LOWORD(v1216) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v786 + 88));
      }

      else
      {
        v1216 = *(v786 + 88);
      }

      if (*(v786 + 64) == 1)
      {
        LOWORD(v1217) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v786 + 72));
      }

      else
      {
        v1217 = *(v786 + 72);
      }

      v348 = v787 & 0x1F;
      v349 = 32 * (v1215 & 0x1F);
      v350 = (v1216 & 3) << 10;
      v351 = (v1217 & 1) << 20;
      if (*(v786 + 48) == 1)
      {
        v352 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v786 + 56)) & 0xF) << 16;
      }

      else
      {
        v352 = (*(v786 + 56) & 0xFLL) << 16;
      }

      return v348 | v349 | v350 | v351 | v352 | result;
    case 1778:
    case 1896:
    case 5895:
      v784 = *(a2 + 2);
      if (*v784 == 1)
      {
        LOWORD(v785) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v784 + 8));
      }

      else
      {
        v785 = *(v784 + 8);
      }

      if (*(v784 + 32) == 1)
      {
        LOWORD(v1212) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v784 + 40));
      }

      else
      {
        v1212 = *(v784 + 40);
      }

      if (*(v784 + 80) == 1)
      {
        LOWORD(v1213) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v784 + 88));
      }

      else
      {
        v1213 = *(v784 + 88);
      }

      if (*(v784 + 64) == 1)
      {
        LOWORD(v1214) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v784 + 72));
      }

      else
      {
        v1214 = *(v784 + 72);
      }

      v348 = v785 & 0x1F;
      v349 = 32 * (v1212 & 0x1F);
      v350 = (v1213 & 3) << 10;
      v351 = (v1214 & 3) << 19;
      if (*(v784 + 48) == 1)
      {
        v352 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v784 + 56)) & 7) << 16;
      }

      else
      {
        v352 = (*(v784 + 56) & 7) << 16;
      }

      return v348 | v349 | v350 | v351 | v352 | result;
    case 1779:
    case 1780:
    case 1898:
    case 1899:
    case 1900:
    case 1901:
    case 5897:
    case 5898:
    case 5899:
    case 5900:
      v373 = *(a2 + 2);
      if (*v373 == 1)
      {
        LOWORD(v374) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v373 + 8));
      }

      else
      {
        v374 = *(v373 + 8);
      }

      if (*(v373 + 32) == 1)
      {
        LOWORD(v591) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v373 + 40));
      }

      else
      {
        v591 = *(v373 + 40);
      }

      if (*(v373 + 48) == 1)
      {
        LOWORD(v592) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v373 + 56));
      }

      else
      {
        v592 = *(v373 + 56);
      }

      v56 = v374 & 0x1F;
      v57 = 32 * (v591 & 0x1F);
      v58 = (v592 & 0x1F) << 16;
      if (*(v373 + 64) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v373 + 72)) & 3) << 10;
      }

      else
      {
        v109 = (*(v373 + 72) & 3) << 10;
      }

      return v56 | v57 | v58 | v109 | result;
    case 1807:
    case 2197:
    case 2199:
    case 3746:
      v671 = *(a2 + 2);
      if (*v671 == 1)
      {
        return ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v671 + 8)) & 0xF) << 8) | result;
      }

      else
      {
        return ((*(v671 + 8) & 0xFLL) << 8) | result;
      }

    case 1918:
    case 1919:
    case 1920:
    case 1921:
    case 1929:
    case 1930:
    case 1931:
    case 1932:
    case 1940:
    case 1941:
    case 1942:
    case 1943:
    case 1973:
    case 1974:
    case 1975:
    case 1976:
    case 1994:
    case 1995:
    case 1996:
    case 1997:
    case 2001:
    case 2002:
    case 2003:
    case 2004:
      v146 = *(a2 + 2);
      if (*v146 == 1)
      {
        LOWORD(v153) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 8));
      }

      else
      {
        v153 = *(v146 + 8);
      }

      if (*(v146 + 16) == 1)
      {
        LOWORD(v322) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 24));
      }

      else
      {
        v322 = *(v146 + 24);
      }

      if (*(v146 + 32) == 1)
      {
        LOWORD(v323) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 40));
      }

      else
      {
        v323 = *(v146 + 40);
      }

      v316 = v153 & 0xF;
      v317 = (v322 & 7) << 10;
      goto LABEL_1357;
    case 1922:
    case 1923:
    case 1924:
    case 1925:
    case 1926:
    case 1927:
    case 1928:
    case 1933:
    case 1934:
    case 1935:
    case 1936:
    case 1937:
    case 1938:
    case 1939:
    case 1944:
    case 1945:
    case 1946:
    case 1947:
    case 1948:
    case 1949:
    case 1950:
    case 1955:
    case 1956:
    case 1957:
    case 1958:
    case 1959:
    case 1960:
    case 1961:
    case 1966:
    case 1967:
    case 1968:
    case 1969:
    case 1970:
    case 1971:
    case 1972:
    case 1977:
    case 1978:
    case 1979:
    case 1984:
    case 1985:
    case 1986:
    case 1991:
    case 1992:
    case 1993:
    case 1998:
    case 1999:
    case 2000:
    case 2005:
    case 2006:
    case 2007:
    case 2008:
    case 2009:
    case 2010:
    case 2011:
    case 2328:
    case 2329:
    case 2330:
    case 2339:
    case 2340:
    case 2341:
    case 2447:
    case 2448:
    case 2449:
    case 2469:
    case 2470:
    case 2471:
    case 2491:
    case 2492:
    case 2493:
    case 2545:
    case 2546:
    case 2547:
    case 2560:
    case 2561:
    case 2562:
    case 4594:
    case 4595:
    case 4787:
    case 4788:
      v48 = *(a2 + 2);
      if (*v48 == 1)
      {
        LOWORD(v49) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 8));
      }

      else
      {
        v49 = *(v48 + 8);
      }

      if (*(v48 + 16) == 1)
      {
        LOWORD(v100) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 24));
      }

      else
      {
        v100 = *(v48 + 24);
      }

      if (*(v48 + 48) == 1)
      {
        LOWORD(v101) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 56));
      }

      else
      {
        v101 = *(v48 + 56);
      }

      v56 = v49 & 0xF;
      v57 = (v100 & 7) << 10;
      v58 = (v101 & 0x1F) << 16;
      if (*(v48 + 32) == 1)
      {
        goto LABEL_159;
      }

      goto LABEL_1993;
    case 1951:
    case 1952:
    case 1953:
    case 1954:
    case 1962:
    case 1963:
    case 1964:
    case 1965:
    case 1980:
    case 1981:
    case 1982:
    case 1983:
    case 1987:
    case 1988:
    case 1989:
    case 1990:
      v217 = *(a2 + 2);
      if (*v217 == 1)
      {
        LOWORD(v218) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v217 + 8));
      }

      else
      {
        v218 = *(v217 + 8);
      }

      if (*(v217 + 16) == 1)
      {
        LOWORD(v420) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v217 + 24));
      }

      else
      {
        v420 = *(v217 + 24);
      }

      if (*(v217 + 32) == 1)
      {
        LOWORD(v421) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v217 + 40));
      }

      else
      {
        v421 = *(v217 + 40);
      }

      v422 = v218 & 0xF;
      v423 = (v420 & 7) << 10;
      v424 = 32 * (v421 & 0x1F);
      if (*(v217 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v217 + 56));
      }

      else
      {
        a1 = *(v217 + 56);
      }

      return (v422 | v423 | v424) & 0xFFFFFFFFFFE03FFFLL | ((a1 & 0x7F) << 14) | result;
    case 2024:
    case 2025:
    case 2026:
    case 2035:
      v32 = *(a2 + 2);
      if (*v32 == 1)
      {
        LOWORD(v630) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 8));
      }

      else
      {
        v630 = *(v32 + 8);
      }

      v37 = v630 & 0x1F;
      v38 = ((*(v32 + 40) << 16) + 983040) & 0xF0000;
      if (*(v32 + 16) != 1)
      {
        goto LABEL_165;
      }

      goto LABEL_111;
    case 2027:
    case 2028:
    case 2029:
    case 2030:
      v660 = *(a2 + 2);
      if (*v660 == 1)
      {
        LOWORD(v661) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v660 + 8));
      }

      else
      {
        v661 = *(v660 + 8);
      }

      if (*(v660 + 16) == 1)
      {
        LOWORD(v1049) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v660 + 24));
      }

      else
      {
        v1049 = *(v660 + 24);
      }

      v750 = v661 & 0x1F;
      v751 = 32 * (v1049 & 0xF);
      if (*(v660 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v660 + 40));
      }

      else
      {
        a1 = *(v660 + 40);
      }

      return (v750 | v751) & 0xFFFFFFFFFFFFFBFFLL | ((a1 & 1) << 10) | result;
    case 2031:
    case 2032:
    case 2033:
    case 2034:
      v19 = *(a2 + 2);
      if (*(v19 + 16) == 1)
      {
        LOWORD(v613) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 24));
      }

      else
      {
        v613 = *(v19 + 24);
      }

      if (*(v19 + 32) == 1)
      {
        LOWORD(v923) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 40));
      }

      else
      {
        v923 = *(v19 + 40);
      }

      v37 = (v613 & 0xF) << 10;
      v38 = 32 * (v923 & 0xF);
      if (*v19 != 1)
      {
        goto LABEL_1281;
      }

      goto LABEL_70;
    case 2046:
    case 2047:
    case 2048:
    case 2049:
    case 2050:
    case 2051:
    case 2052:
    case 2053:
    case 2054:
    case 2055:
    case 2056:
    case 2057:
    case 2058:
    case 2059:
    case 2060:
    case 2061:
    case 2062:
    case 2063:
    case 2064:
    case 2065:
    case 2066:
    case 2067:
    case 2068:
    case 2069:
    case 2070:
    case 2071:
    case 2072:
    case 2073:
    case 2074:
    case 2075:
    case 2076:
    case 2077:
    case 2078:
    case 2079:
    case 2080:
    case 2081:
    case 2082:
    case 2083:
    case 2084:
    case 2085:
    case 2086:
    case 2087:
    case 2088:
    case 2089:
    case 2090:
    case 2091:
    case 2092:
    case 2093:
    case 2094:
    case 2095:
    case 2096:
    case 2097:
    case 2098:
    case 2099:
    case 2100:
    case 2101:
    case 2102:
    case 2103:
    case 2104:
    case 2105:
    case 2106:
    case 2107:
    case 2108:
    case 2109:
    case 2110:
    case 2111:
    case 2112:
    case 2113:
    case 2114:
    case 2115:
    case 2116:
    case 2117:
    case 2118:
    case 2119:
    case 2120:
    case 2121:
    case 2122:
    case 2123:
    case 2124:
    case 2125:
    case 2126:
    case 2127:
    case 2128:
    case 2129:
    case 2130:
    case 2131:
    case 2132:
    case 2133:
    case 2134:
    case 2135:
    case 2136:
    case 2137:
    case 2138:
    case 2139:
    case 2140:
    case 2141:
      v34 = *(a2 + 2);
      if (*(v34 + 48) == 1)
      {
        LOWORD(v35) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v34 + 56));
      }

      else
      {
        v35 = *(v34 + 56);
      }

      if (*(v34 + 64) == 1)
      {
        LOWORD(v85) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v34 + 72));
      }

      else
      {
        v85 = *(v34 + 72);
      }

      v37 = v35 & 0x1F;
      v38 = (v85 & 0x1F) << 16;
      if (*(v34 + 80) == 1)
      {
        v39 = *(*(a1 + 8) + 152);
        v40 = *(v34 + 88);
        goto LABEL_733;
      }

      v61 = 32 * (*(v34 + 88) & 0x1FLL);
      return v37 | v38 | v61 | result;
    case 2142:
    case 2143:
    case 2144:
    case 2145:
      v711 = *(a2 + 2);
      if (*v711 == 1)
      {
        LOWORD(v712) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v711 + 8));
      }

      else
      {
        v712 = *(v711 + 8);
      }

      v1187 = v712 & 0x1F;
      if (*(v711 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v711 + 40));
      }

      else
      {
        LODWORD(a1) = *(v711 + 40);
      }

      v974 = v1187 & 0xFFF0FFFF | ((a1 & 0xF) << 16);
      v975 = *(v711 + 72);
      v976 = *(v711 + 56);
      goto LABEL_2402;
    case 2146:
    case 2147:
    case 2148:
    case 2149:
    case 2150:
    case 2151:
    case 2152:
    case 2153:
      v19 = *(a2 + 2);
      if (*(v19 + 32) == 1)
      {
        v23 = *(*(a1 + 8) + 152);
        v24 = *(v19 + 40);
LABEL_27:
        LOWORD(v23) = *(*(v23 + 104) + 2 * v24);
        if (*(v19 + 48) == 1)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v23 = *(v19 + 40);
        if (*(v19 + 48) == 1)
        {
LABEL_68:
          v50 = *(*(a1 + 8) + 152);
          v51 = *(v19 + 56);
          goto LABEL_69;
        }
      }

LABEL_1280:
      v37 = (v23 & 7) << 10;
      v38 = 32 * (*(v19 + 56) & 0x1FLL);
      if (*v19 == 1)
      {
LABEL_70:
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 8));
      }

      else
      {
LABEL_1281:
        a1 = *(v19 + 8);
      }

LABEL_1282:
      v61 = a1 & 0x1F;
      return v37 | v38 | v61 | result;
    case 2154:
    case 2155:
    case 2156:
    case 2157:
      v628 = *(a2 + 2);
      if (*v628 == 1)
      {
        LOWORD(v629) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v628 + 8));
      }

      else
      {
        v629 = *(v628 + 8);
      }

      v973 = v629 & 0x1F;
      if (*(v628 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v628 + 24));
      }

      else
      {
        LODWORD(a1) = *(v628 + 24);
      }

      v974 = v973 & 0xFFF0FFFF | ((a1 & 0xF) << 16);
      v975 = *(v628 + 56);
      v976 = *(v628 + 40);
LABEL_2402:
      if ((v975 & 0x3F) != 0)
      {
        v1188 = 1 << v975;
      }

      else
      {
        v1188 = 0;
      }

      return result | v974 & 0xFFFFC01F | (32 * ((v1188 | v976) & 0x1FF));
    case 2166:
    case 2167:
    case 2168:
    case 2169:
    case 2170:
    case 2171:
    case 2172:
    case 2173:
    case 2566:
    case 2567:
    case 2568:
      v340 = *(a2 + 2);
      if (*v340 == 1)
      {
        LOWORD(v341) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v340 + 8));
      }

      else
      {
        v341 = *(v340 + 8);
      }

      if (*(v340 + 16) == 1)
      {
        LOWORD(v553) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v340 + 24));
      }

      else
      {
        v553 = *(v340 + 24);
      }

      if (*(v340 + 32) == 1)
      {
        LOWORD(v554) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v340 + 40));
      }

      else
      {
        v554 = *(v340 + 40);
      }

      v56 = v341 & 0x1F;
      v57 = 32 * (v553 & 0x1F);
      v58 = (v554 & 0x1F) << 16;
      if (*(v340 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v340 + 56)) & 0xF) << 12;
      }

      else
      {
        v109 = (*(v340 + 56) & 0xFLL) << 12;
      }

      return v56 | v57 | v58 | v109 | result;
    case 2174:
    case 2175:
    case 2176:
    case 2177:
    case 2549:
    case 2551:
    case 2553:
    case 2555:
    case 2557:
    case 2559:
      v389 = *(a2 + 2);
      if (*(v389 + 16) == 1)
      {
        LOWORD(v390) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v389 + 24));
      }

      else
      {
        v390 = *(v389 + 24);
      }

      v598 = (v390 & 0x1F) << 16;
      if (*v389 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v389 + 8));
      }

      else
      {
        a1 = *(v389 + 8);
      }

      return v598 | (32 * (a1 & 0x1F)) | result;
    case 2183:
    case 2184:
    case 2185:
    case 2186:
    case 2187:
    case 2195:
    case 2196:
    case 3689:
    case 3690:
    case 3691:
    case 3692:
    case 3693:
    case 3701:
    case 3702:
    case 5729:
    case 5730:
    case 5731:
    case 5732:
    case 5733:
    case 5734:
    case 5735:
    case 5736:
    case 5748:
    case 5749:
    case 5750:
    case 5858:
    case 5859:
    case 5860:
    case 5861:
    case 5862:
    case 5863:
    case 5864:
    case 5865:
    case 5877:
    case 5878:
    case 5879:
    case 7469:
    case 7470:
    case 7471:
    case 7472:
    case 7473:
    case 7474:
    case 7475:
    case 7476:
    case 7488:
    case 7489:
    case 7490:
    case 7491:
    case 7492:
    case 7493:
    case 7494:
    case 7495:
    case 7496:
    case 7497:
    case 7498:
    case 7510:
    case 7511:
    case 7512:
      v69 = *(a2 + 2);
      if (*v69 == 1)
      {
        LOWORD(v70) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v69 + 8));
      }

      else
      {
        v70 = *(v69 + 8);
      }

      v126 = v70 & 0x1F;
      if (*(v69 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v69 + 40));
      }

      else
      {
        a1 = *(v69 + 40);
      }

      v127 = (*(v69 + 56) << 16) + 983040;
      goto LABEL_864;
    case 2188:
    case 2189:
    case 2190:
    case 2191:
    case 3694:
    case 3695:
    case 3696:
    case 3697:
    case 5737:
    case 5738:
    case 5739:
    case 5740:
    case 5741:
    case 5742:
    case 5743:
    case 5744:
    case 5866:
    case 5867:
    case 5868:
    case 5869:
    case 5870:
    case 5871:
    case 5872:
    case 5873:
    case 7477:
    case 7478:
    case 7479:
    case 7480:
    case 7481:
    case 7482:
    case 7483:
    case 7484:
    case 7499:
    case 7500:
    case 7501:
    case 7502:
    case 7503:
    case 7504:
    case 7505:
    case 7506:
      v98 = *(a2 + 2);
      if (*v98 == 1)
      {
        LOWORD(v99) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v98 + 8));
      }

      else
      {
        v99 = *(v98 + 8);
      }

      v196 = v99 & 0x1F;
      if (*(v98 + 16) == 1)
      {
        return v196 & 0xFFFFFFFFFFFFFE1FLL | (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v98 + 24)) & 0xFLL)) | result;
      }

      return v196 & 0xFFFFFFFFFFFFFE1FLL | (32 * (*(v98 + 24) & 0xFLL)) | result;
    case 2192:
    case 2193:
    case 2194:
    case 3698:
    case 3699:
    case 3700:
    case 5745:
    case 5746:
    case 5747:
    case 5874:
    case 5875:
    case 5876:
    case 7485:
    case 7486:
    case 7487:
    case 7507:
    case 7508:
    case 7509:
      v204 = *(a2 + 2);
      if (*(v204 + 32) == 1)
      {
        LOWORD(v205) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v204 + 40));
      }

      else
      {
        v205 = *(v204 + 40);
      }

      v406 = 32 * (v205 & 0xF);
      goto LABEL_2440;
    case 2200:
      v1276 = *(a2 + 2);
      if (*v1276 == 1)
      {
        v1277 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1276 + 8));
      }

      else
      {
        v1277 = *(v1276 + 8);
      }

      return (v1277 << 8) & 0xC00 | result;
    case 2201:
      v1255 = *(a2 + 2);
      if (*v1255 == 1)
      {
        LOWORD(v1256) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1255 + 8));
      }

      else
      {
        v1256 = *(v1255 + 8);
      }

      v1248 = v1256 & 0x1F;
      if (*(v1255 + 16) != 1)
      {
        return v1248 & 0xFFFFFFFFFFFC001FLL | (32 * (*(v1255 + 24) & 0x1FFFLL)) | result;
      }

      v1249 = *(*(a1 + 8) + 152);
      v1250 = *(v1255 + 24);
      return v1248 & 0xFFFFFFFFFFFC001FLL | (32 * (*(*(v1249 + 104) + 2 * v1250) & 0x1FFF)) | result;
    case 2202:
    case 2222:
      v559 = *(a2 + 2);
      if (*v559 == 1)
      {
        LOWORD(v1203) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v559 + 8));
      }

      else
      {
        v1203 = *(v559 + 8);
      }

      if (*(v559 + 16) == 1)
      {
        LOWORD(v1546) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v559 + 24));
      }

      else
      {
        v1546 = *(v559 + 24);
      }

      v865 = v1203 & 0x1F;
      v866 = 32 * (v1546 & 0x1F);
      if (*(v559 + 32) != 1)
      {
        goto LABEL_1618;
      }

      goto LABEL_1616;
    case 2203:
    case 2221:
      v919 = *(a2 + 2);
      if (*v919 == 1)
      {
        LOWORD(v920) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v919 + 8));
      }

      else
      {
        v920 = *(v919 + 8);
      }

      if (*(v919 + 16) != 1)
      {
        goto LABEL_3105;
      }

      LOWORD(v1321) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v919 + 24));
      goto LABEL_3729;
    case 2204:
    case 2219:
      v579 = *(a2 + 2);
      if (*v579 == 1)
      {
        LOWORD(v903) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v579 + 8));
      }

      else
      {
        v903 = *(v579 + 8);
      }

      if (*(v579 + 16) == 1)
      {
        LOWORD(v1287) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v579 + 24));
      }

      else
      {
        v1287 = *(v579 + 24);
      }

      v887 = v903 & 0x1F;
      v888 = 32 * (v1287 & 0x1F);
      if (*(v579 + 32) != 1)
      {
        goto LABEL_1708;
      }

      goto LABEL_1706;
    case 2205:
    case 2220:
      v717 = *(a2 + 2);
      if (*v717 == 1)
      {
        LOWORD(v910) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v717 + 8));
      }

      else
      {
        v910 = *(v717 + 8);
      }

      if (*(v717 + 16) == 1)
      {
        LOWORD(v1303) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v717 + 24));
      }

      else
      {
        v1303 = *(v717 + 24);
      }

      v1199 = v910 & 0x1F;
      v1200 = 32 * (v1303 & 0x1F);
      if (*(v717 + 32) != 1)
      {
        goto LABEL_2667;
      }

      goto LABEL_3383;
    case 2206:
    case 2207:
    case 2208:
    case 2209:
      v721 = *(a2 + 2);
      if (*v721 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v721 + 8));
      }

      else
      {
        LODWORD(a1) = *(v721 + 8);
      }

      v258 = a1 & 0x1F;
      v259 = *(v721 + 40);
      v260 = *(v721 + 24);
LABEL_418:
      if ((v259 & 0x3F) != 0)
      {
        v261 = 1 << v259;
      }

      else
      {
        v261 = 0;
      }

      return result | v258 & 0xFFFFC01F | (32 * ((v261 | v260) & 0x1FF));
    case 2210:
    case 2211:
    case 2212:
    case 2213:
    case 4123:
    case 4124:
    case 4125:
    case 4127:
    case 4206:
    case 6582:
    case 6757:
      v204 = *(a2 + 2);
      if (*(v204 + 16) == 1)
      {
        v330 = *(*(a1 + 8) + 152);
        v331 = *(v204 + 24);
        goto LABEL_1312;
      }

      v330 = *(v204 + 24);
      goto LABEL_2439;
    case 2214:
      v1253 = *(a2 + 2);
      if (*v1253 == 1)
      {
        LOWORD(v1254) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1253 + 8));
      }

      else
      {
        v1254 = *(v1253 + 8);
      }

      if (*(v1253 + 16) == 1)
      {
        LOWORD(v1573) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1253 + 24));
      }

      else
      {
        v1573 = *(v1253 + 24);
      }

      v1574 = v1254 & 0x1F;
      v1575 = 32 * (v1573 & 0x1F);
      if (*(v1253 + 32) == 1)
      {
        v1576 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1253 + 40));
      }

      else
      {
        v1576 = *(v1253 + 40);
      }

      return (v1574 | v1575) & 0xFFFFFFFFFF21FFFFLL | (((v1576 >> 4) & 3) << 22) | ((v1576 & 0xF) << 17) | result;
    case 2215:
      v1257 = *(a2 + 2);
      if (*v1257 == 1)
      {
        LOWORD(v1258) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1257 + 8));
      }

      else
      {
        v1258 = *(v1257 + 8);
      }

      if (*(v1257 + 16) == 1)
      {
        LOWORD(v1577) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1257 + 24));
      }

      else
      {
        v1577 = *(v1257 + 24);
      }

      v1578 = v1258 & 0x1F;
      v1579 = 32 * (v1577 & 0x1F);
      if (*(v1257 + 32) == 1)
      {
        v1580 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1257 + 40));
      }

      else
      {
        v1580 = *(v1257 + 40);
      }

      v1581 = v1580 >> 1;
      v1582 = v1578 | v1579;
      return v1582 & 0xFFFFFFFFFF2FFFFFLL | ((v1581 & 3) << 22) | ((v1580 & 1) << 20) | result;
    case 2216:
      v1301 = *(a2 + 2);
      if (*v1301 == 1)
      {
        LOWORD(v1302) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1301 + 8));
      }

      else
      {
        v1302 = *(v1301 + 8);
      }

      if (*(v1301 + 16) == 1)
      {
        LOWORD(v1603) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1301 + 24));
      }

      else
      {
        v1603 = *(v1301 + 24);
      }

      v1604 = v1302 & 0x1F;
      v1605 = 32 * (v1603 & 0x1F);
      if (*(v1301 + 32) == 1)
      {
        v1606 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1301 + 40));
      }

      else
      {
        v1606 = *(v1301 + 40);
      }

      return (v1604 | v1605) & 0xFFFFFFFFFF23FFFFLL | (((v1606 >> 3) & 3) << 22) | ((v1606 & 7) << 18) | result;
    case 2217:
      v1550 = *(a2 + 2);
      if (*v1550 == 1)
      {
        LOWORD(v1551) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1550 + 8));
      }

      else
      {
        v1551 = *(v1550 + 8);
      }

      if (*(v1550 + 16) == 1)
      {
        LOWORD(v1712) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1550 + 24));
      }

      else
      {
        v1712 = *(v1550 + 24);
      }

      v1713 = v1551 & 0x1F;
      v1714 = 32 * (v1712 & 0x1F);
      if (*(v1550 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1550 + 40));
      }

      else
      {
        a1 = *(v1550 + 40);
      }

      return (v1713 | v1714) & 0xFFFFFFFFFF3FFFFFLL | ((a1 & 3) << 22) | result;
    case 2218:
      v1288 = *(a2 + 2);
      if (*v1288 == 1)
      {
        LOWORD(v1289) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1288 + 8));
      }

      else
      {
        v1289 = *(v1288 + 8);
      }

      if (*(v1288 + 16) == 1)
      {
        LOWORD(v1597) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1288 + 24));
      }

      else
      {
        v1597 = *(v1288 + 24);
      }

      v1598 = v1289 & 0x1F;
      v1599 = 32 * (v1597 & 0x1F);
      if (*(v1288 + 32) == 1)
      {
        v1600 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1288 + 40));
      }

      else
      {
        v1600 = *(v1288 + 40);
      }

      v1601 = v1600 >> 2;
      v1602 = v1598 | v1599;
      return v1602 & 0xFFFFFFFFFF27FFFFLL | ((v1601 & 3) << 22) | ((v1600 & 3) << 19) | result;
    case 2224:
    case 2236:
    case 5633:
    case 5635:
    case 7408:
      v559 = *(a2 + 2);
      if (*v559 == 1)
      {
        LOWORD(v560) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v559 + 8));
      }

      else
      {
        v560 = *(v559 + 8);
      }

      if (*(v559 + 16) == 1)
      {
        v863 = *(*(a1 + 8) + 152);
        v864 = *(v559 + 24);
        goto LABEL_1615;
      }

      v865 = v560 & 0x1F;
      v866 = 32 * (*(v559 + 24) & 0x1FLL);
      if (*(v559 + 32) != 1)
      {
        goto LABEL_1618;
      }

      goto LABEL_1616;
    case 2226:
    case 2232:
    case 5631:
    case 7404:
      v717 = *(a2 + 2);
      if (*v717 == 1)
      {
        LOWORD(v718) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v717 + 8));
      }

      else
      {
        v718 = *(v717 + 8);
      }

      if (*(v717 + 16) == 1)
      {
        v1197 = *(*(a1 + 8) + 152);
        v1198 = *(v717 + 24);
        goto LABEL_3382;
      }

      v1199 = v718 & 0x1F;
      v1200 = 32 * (*(v717 + 24) & 0x1FLL);
      if (*(v717 + 32) != 1)
      {
        goto LABEL_2667;
      }

      goto LABEL_3383;
    case 2228:
    case 7406:
      v919 = *(a2 + 2);
      if (*v919 == 1)
      {
        LOWORD(v920) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v919 + 8));
      }

      else
      {
        v920 = *(v919 + 8);
      }

      if (*(v919 + 16) == 1)
      {
        v1321 = *(*(a1 + 8) + 152);
        v1511 = *(v919 + 24);
        goto LABEL_3727;
      }

LABEL_3105:
      v1321 = *(v919 + 24);
      goto LABEL_3729;
    case 2230:
    case 2234:
    case 5627:
    case 5629:
    case 7402:
      v579 = *(a2 + 2);
      if (*v579 == 1)
      {
        LOWORD(v580) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v579 + 8));
      }

      else
      {
        v580 = *(v579 + 8);
      }

      if (*(v579 + 16) == 1)
      {
        v885 = *(*(a1 + 8) + 152);
        v886 = *(v579 + 24);
        goto LABEL_1705;
      }

      v887 = v580 & 0x1F;
      v888 = 32 * (*(v579 + 24) & 0x1FLL);
      if (*(v579 + 32) != 1)
      {
        goto LABEL_1708;
      }

      goto LABEL_1706;
    case 2274:
      v1556 = *(a2 + 2);
      if (*v1556 == 1)
      {
        LOWORD(v1557) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1556 + 8));
      }

      else
      {
        v1557 = *(v1556 + 8);
      }

      if (*(v1556 + 32) == 1)
      {
        LOWORD(v1722) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1556 + 40));
      }

      else
      {
        v1722 = *(v1556 + 40);
      }

      v1723 = v1557 & 0x1F;
      v1724 = 32 * (v1722 & 0x1F);
      if (*(v1556 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1556 + 56));
      }

      else
      {
        a1 = *(v1556 + 56);
      }

      return (v1723 | v1724) & 0xFFFFFFFFFFF0FFFFLL | ((a1 & 0xF) << 16) | result;
    case 2275:
    case 2280:
      v1079 = *(a2 + 2);
      if (*(v1079 + 32) == 1)
      {
        LOWORD(v1080) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1079 + 40));
      }

      else
      {
        v1080 = *(v1079 + 40);
      }

      v1430 = ((v1080 & 7) << 10) | ((*(v1079 + 72) << 13) + 24576) & 0x6000;
      if (*v1079 == 1)
      {
        LOWORD(v1431) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1079 + 8));
      }

      else
      {
        v1431 = *(v1079 + 8);
      }

      v1378 = v1430 | v1431 & 0x1F;
      if (*(v1079 + 80) == 1)
      {
        v1379 = *(*(a1 + 8) + 152);
        v1380 = *(v1079 + 88);
        goto LABEL_3182;
      }

      LODWORD(v1379) = *(v1079 + 88);
      return result | v1378 | (32 * (v1379 & 0xF));
    case 2276:
    case 2281:
      v1137 = *(a2 + 2);
      if (*(v1137 + 32) == 1)
      {
        LOWORD(v1138) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1137 + 40));
      }

      else
      {
        v1138 = *(v1137 + 40);
      }

      v1488 = ((v1138 & 7) << 10) | ((*(v1137 + 72) << 13) + 24576) & 0x6000;
      if (*v1137 == 1)
      {
        LOWORD(v1489) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1137 + 8));
      }

      else
      {
        v1489 = *(v1137 + 8);
      }

      v1490 = v1488 | v1489 & 0x1F;
      if (*(v1137 + 48) == 1)
      {
        LOWORD(v1491) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1137 + 56));
      }

      else
      {
        v1491 = *(v1137 + 56);
      }

      v1390 = v1490 | ((v1491 & 7) << 6);
      if (*(v1137 + 80) == 1)
      {
        v990 = *(*(a1 + 8) + 152);
        v1492 = *(v1137 + 88);
        goto LABEL_3048;
      }

      LODWORD(v990) = *(v1137 + 88);
      return result | v1390 | (32 * (v990 & 1));
    case 2277:
    case 2282:
      v901 = *(a2 + 2);
      if (*(v901 + 32) == 1)
      {
        LOWORD(v902) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v901 + 40));
      }

      else
      {
        v902 = *(v901 + 40);
      }

      v1278 = ((v902 & 7) << 10) | ((*(v901 + 72) << 13) + 24576) & 0x6000;
      if (*v901 == 1)
      {
        LOWORD(v1279) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v901 + 8));
      }

      else
      {
        v1279 = *(v901 + 8);
      }

      v1280 = v1278 | v1279 & 0x1F;
      if (*(v901 + 48) == 1)
      {
        LOWORD(v1281) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v901 + 56));
      }

      else
      {
        v1281 = *(v901 + 56);
      }

      v1282 = v1280 | ((v1281 & 1) << 8);
      if (*(v901 + 80) == 1)
      {
        v1283 = *(*(a1 + 8) + 152);
        v1284 = *(v901 + 88);
        goto LABEL_2730;
      }

      LODWORD(v1283) = *(v901 + 88);
      return result | v1282 | (32 * (v1283 & 7));
    case 2278:
    case 2283:
      v1204 = *(a2 + 2);
      if (*(v1204 + 32) == 1)
      {
        LOWORD(v1205) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1204 + 40));
      }

      else
      {
        v1205 = *(v1204 + 40);
      }

      v1547 = ((v1205 & 7) << 10) | ((*(v1204 + 72) << 13) + 24576) & 0x6000;
      if (*v1204 == 1)
      {
        LOWORD(v1548) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1204 + 8));
      }

      else
      {
        v1548 = *(v1204 + 8);
      }

      v1378 = v1547 | v1548 & 0x1F;
      if (*(v1204 + 48) == 1)
      {
        v1379 = *(*(a1 + 8) + 152);
        v1380 = *(v1204 + 56);
        goto LABEL_3182;
      }

      LODWORD(v1379) = *(v1204 + 56);
      return result | v1378 | (32 * (v1379 & 0xF));
    case 2279:
    case 2284:
      v921 = *(a2 + 2);
      if (*(v921 + 32) == 1)
      {
        LOWORD(v922) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v921 + 40));
      }

      else
      {
        v922 = *(v921 + 40);
      }

      v1326 = ((v922 & 7) << 10) | ((*(v921 + 72) << 13) + 24576) & 0x6000;
      if (*v921 == 1)
      {
        LOWORD(v1327) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v921 + 8));
      }

      else
      {
        v1327 = *(v921 + 8);
      }

      v1328 = v1326 | v1327 & 0x1F;
      if (*(v921 + 48) == 1)
      {
        LOWORD(v1329) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v921 + 56));
      }

      else
      {
        v1329 = *(v921 + 56);
      }

      v1330 = v1328 | ((v1329 & 3) << 7);
      if (*(v921 + 80) == 1)
      {
        v981 = *(*(a1 + 8) + 152);
        v1331 = *(v921 + 88);
        goto LABEL_2833;
      }

      LODWORD(v981) = *(v921 + 88);
      return result | v1330 | (32 * (v981 & 3));
    case 2285:
    case 2854:
    case 2855:
    case 2856:
    case 3234:
    case 3235:
    case 3236:
    case 3295:
    case 3296:
    case 3297:
    case 3310:
    case 3311:
    case 3312:
    case 4586:
    case 4587:
    case 4588:
    case 4738:
    case 4739:
    case 4740:
    case 5207:
    case 5415:
    case 5637:
    case 7081:
    case 7191:
    case 7410:
      v130 = *(a2 + 2);
      if (*v130 == 1)
      {
        LOWORD(v131) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 8));
      }

      else
      {
        v131 = *(v130 + 8);
      }

      if (*(v130 + 16) == 1)
      {
        LOWORD(v277) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 24));
      }

      else
      {
        v277 = *(v130 + 24);
      }

      if (*(v130 + 32) == 1)
      {
        LOWORD(v278) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v130 + 40));
      }

      else
      {
        v278 = *(v130 + 40);
      }

      v56 = v131 & 0x1F;
      v57 = 32 * (v277 & 0x1F);
      v58 = (v278 & 0x1F) << 16;
      if (*(v130 + 48) == 1)
      {
        v279 = *(*(a1 + 8) + 152);
        v280 = *(v130 + 56);
LABEL_448:
        v109 = (*(*(v279 + 104) + 2 * v280) & 0x1F) << 10;
      }

      else
      {
LABEL_2462:
        v109 = (*(v130 + 56) & 0x1FLL) << 10;
      }

      return v56 | v57 | v58 | v109 | result;
    case 2287:
      v1562 = *(a2 + 2);
      if (*v1562 == 1)
      {
        LOWORD(v1563) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1562 + 8));
      }

      else
      {
        v1563 = *(v1562 + 8);
      }

      if (*(v1562 + 32) == 1)
      {
        LOWORD(v1731) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1562 + 40));
      }

      else
      {
        v1731 = *(v1562 + 40);
      }

      v1675 = v1563 & 0x1F;
      v1676 = 32 * (v1731 & 0x1F);
      if (*(v1562 + 48) == 1)
      {
        v1677 = *(*(a1 + 8) + 152);
        v1678 = *(v1562 + 56);
        goto LABEL_3750;
      }

      LODWORD(v1677) = *(v1562 + 56);
      return (v1675 | v1676) & 0xFFFFFFFFFFE0E3FFLL | ((v1677 >> 3) << 16) | ((v1677 & 7) << 10) | result;
    case 2288:
      v1455 = *(a2 + 2);
      if (*v1455 == 1)
      {
        LOWORD(v1456) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1455 + 8));
      }

      else
      {
        v1456 = *(v1455 + 8);
      }

      if (*(v1455 + 16) == 1)
      {
        LOWORD(v1674) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1455 + 24));
      }

      else
      {
        v1674 = *(v1455 + 24);
      }

      v1675 = v1456 & 0x1F;
      v1676 = 32 * (v1674 & 0x1F);
      if (*(v1455 + 32) == 1)
      {
        v1677 = *(*(a1 + 8) + 152);
        v1678 = *(v1455 + 40);
LABEL_3750:
        LOWORD(v1677) = *(*(v1677 + 104) + 2 * v1678);
      }

      else
      {
        LODWORD(v1677) = *(v1455 + 40);
      }

      return (v1675 | v1676) & 0xFFFFFFFFFFE0E3FFLL | ((v1677 >> 3) << 16) | ((v1677 & 7) << 10) | result;
    case 2289:
      v1336 = *(a2 + 2);
      if (*v1336 == 1)
      {
        LOWORD(v1337) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1336 + 8));
      }

      else
      {
        v1337 = *(v1336 + 8);
      }

      if (*(v1336 + 16) == 1)
      {
        LOWORD(v1631) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1336 + 24));
      }

      else
      {
        v1631 = *(v1336 + 24);
      }

      if (*(v1336 + 32) == 1)
      {
        LOWORD(v1632) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1336 + 40));
      }

      else
      {
        v1632 = *(v1336 + 40);
      }

      v56 = v1337 & 0x1F;
      v57 = 32 * (v1631 & 0x1F);
      v58 = (v1632 & 0x1F) << 16;
      if (*(v1336 + 48) == 1)
      {
        v1633 = *(*(a1 + 8) + 152);
        v1634 = *(v1336 + 56);
        goto LABEL_3660;
      }

      v109 = (*(v1336 + 56) & 0xFLL) << 11;
      return v56 | v57 | v58 | v109 | result;
    case 2290:
      v1414 = *(a2 + 2);
      if (*v1414 == 1)
      {
        LOWORD(v1415) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1414 + 8));
      }

      else
      {
        v1415 = *(v1414 + 8);
      }

      if (*(v1414 + 16) == 1)
      {
        LOWORD(v1661) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1414 + 24));
      }

      else
      {
        v1661 = *(v1414 + 24);
      }

      if (*(v1414 + 32) == 1)
      {
        LOWORD(v1662) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1414 + 40));
      }

      else
      {
        v1662 = *(v1414 + 40);
      }

      v56 = v1415 & 0x1F;
      v57 = 32 * (v1661 & 0x1F);
      v58 = (v1662 & 0x1F) << 16;
      if (*(v1414 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1414 + 56)) & 7) << 11;
      }

      else
      {
        v109 = (*(v1414 + 56) & 7) << 11;
      }

      return v56 | v57 | v58 | v109 | result;
    case 2367:
    case 2368:
    case 2369:
    case 2879:
    case 2880:
    case 2881:
    case 2923:
    case 2924:
    case 2925:
    case 2971:
    case 2972:
    case 2973:
    case 3015:
    case 3016:
    case 3017:
      v86 = *(a2 + 2);
      if (*(v86 + 32) == 1)
      {
        LOWORD(v257) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v86 + 40));
      }

      else
      {
        v257 = *(v86 + 40);
      }

      if (*v86 == 1)
      {
        LOWORD(v475) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v86 + 8));
      }

      else
      {
        v475 = *(v86 + 8);
      }

      v155 = 32 * (v257 & 0x1F);
      v156 = v475 & 0x1F;
      if (*(v86 + 16) == 1)
      {
        a1 = *(*(a1 + 8) + 152);
        v476 = *(v86 + 24);
        goto LABEL_1726;
      }

LABEL_853:
      a1 = *(v86 + 24);
      return (v155 | v156) & 0xFFFFFFFFFFFFE3FFLL | ((a1 & 7) << 10) | result;
    case 2376:
    case 2377:
    case 2378:
    case 2897:
    case 2898:
    case 2899:
    case 2941:
    case 2942:
    case 2943:
    case 2989:
    case 2990:
    case 2991:
    case 3033:
    case 3034:
    case 3035:
    case 3259:
    case 3260:
    case 3261:
    case 3504:
    case 3505:
    case 3506:
    case 3517:
    case 3518:
    case 3519:
      v149 = *(a2 + 2);
      if (*(v149 + 16) == 1)
      {
        LOWORD(v150) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v149 + 24));
      }

      else
      {
        v150 = *(v149 + 24);
      }

      if (*v149 == 1)
      {
        LOWORD(v320) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v149 + 8));
      }

      else
      {
        v320 = *(v149 + 8);
      }

      v37 = (v150 & 7) << 10;
      v38 = v320 & 0x1F;
      if (*(v149 + 48) == 1)
      {
        v61 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v149 + 56)) & 1);
      }

      else
      {
        v61 = 32 * (*(v149 + 56) & 1);
      }

      return v37 | v38 | v61 | result;
    case 2418:
    case 2419:
    case 2420:
      v825 = *(a2 + 2);
      if (*v825 == 1)
      {
        LOWORD(v826) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v825 + 8));
      }

      else
      {
        v826 = *(v825 + 8);
      }

      if (*(v825 + 48) == 1)
      {
        LOWORD(v1243) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v825 + 56));
      }

      else
      {
        v1243 = *(v825 + 56);
      }

      if (*(v825 + 16) == 1)
      {
        LOWORD(v1244) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v825 + 24));
      }

      else
      {
        v1244 = *(v825 + 24);
      }

      v1245 = v826 & 0x1F;
      v1246 = 32 * (v1243 & 0x1F);
      v1247 = (v1244 & 7) << 10;
      if (*(v825 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v825 + 72));
      }

      else
      {
        a1 = *(v825 + 72);
      }

      return (v1245 | v1246 | v1247) & 0xFFFFFFFFFFFEFFFFLL | ((a1 & 1) << 16) | result;
    case 2421:
    case 2422:
    case 2423:
    case 2424:
    case 2425:
      v563 = *(a2 + 2);
      if (*v563 == 1)
      {
        LOWORD(v564) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v563 + 8));
      }

      else
      {
        v564 = *(v563 + 8);
      }

      if (*(v563 + 16) == 1)
      {
        LOWORD(v870) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v563 + 24));
      }

      else
      {
        v870 = *(v563 + 24);
      }

      if (*(v563 + 32) == 1)
      {
        LOWORD(v871) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v563 + 40));
      }

      else
      {
        v871 = *(v563 + 40);
      }

      v56 = v564 & 0x1F;
      v57 = 32 * (v870 & 0x1F);
      v58 = (v871 & 0x1F) << 16;
      if (*(v563 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v563 + 56)) & 1) << 12;
      }

      else
      {
        v109 = (*(v563 + 56) & 1) << 12;
      }

      return v56 | v57 | v58 | v109 | result;
    case 2444:
    case 2445:
    case 2446:
    case 2466:
    case 2467:
    case 2468:
    case 2488:
    case 2489:
    case 2490:
    case 2520:
    case 2521:
    case 2522:
    case 2531:
    case 2532:
    case 2533:
    case 2542:
    case 2543:
    case 2544:
      v71 = *(a2 + 2);
      if (*v71 == 1)
      {
        LOWORD(v212) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 8));
      }

      else
      {
        v212 = *(v71 + 8);
      }

      if (*(v71 + 16) == 1)
      {
        LOWORD(v413) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 24));
      }

      else
      {
        v413 = *(v71 + 24);
      }

      v37 = v212 & 0xF;
      v38 = (v413 & 7) << 10;
LABEL_731:
      if (*(v71 + 32) == 1)
      {
        goto LABEL_732;
      }

      goto LABEL_1395;
    case 2507:
    case 2508:
    case 2509:
      v803 = *(a2 + 2);
      if (*v803 == 1)
      {
        LOWORD(v804) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v803 + 8));
      }

      else
      {
        v804 = *(v803 + 8);
      }

      if (*(v803 + 16) == 1)
      {
        LOWORD(v1220) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v803 + 24));
      }

      else
      {
        v1220 = *(v803 + 24);
      }

      if (*(v803 + 48) == 1)
      {
        LOWORD(v1221) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v803 + 56));
      }

      else
      {
        v1221 = *(v803 + 56);
      }

      if (*(v803 + 64) == 1)
      {
        LOWORD(v1222) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v803 + 72));
      }

      else
      {
        v1222 = *(v803 + 72);
      }

      v348 = v804 & 0x1F;
      v349 = (v1220 & 7) << 10;
      v350 = 32 * (v1221 & 0x1F);
      v351 = (v1222 & 0x1F) << 16;
      if (*(v803 + 80) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v803 + 88));
      }

      else
      {
        a1 = *(v803 + 88);
      }

      v352 = (a1 & 3) << 13;
      return v348 | v349 | v350 | v351 | v352 | result;
    case 2510:
      v1251 = *(a2 + 2);
      if (*v1251 == 1)
      {
        LOWORD(v1252) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1251 + 8));
      }

      else
      {
        v1252 = *(v1251 + 8);
      }

      if (*(v1251 + 32) == 1)
      {
        LOWORD(v1566) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1251 + 40));
      }

      else
      {
        v1566 = *(v1251 + 40);
      }

      if (*(v1251 + 80) == 1)
      {
        LOWORD(v1567) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1251 + 88));
      }

      else
      {
        v1567 = *(v1251 + 88);
      }

      if (*(v1251 + 48) == 1)
      {
        LOWORD(v1568) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1251 + 56));
      }

      else
      {
        v1568 = *(v1251 + 56);
      }

      v1569 = v1252 & 0x1F;
      v1570 = 32 * (v1566 & 0x1F);
      v1571 = (v1567 & 3) << 10;
      v1572 = (v1568 & 7) << 16;
      if (*(v1251 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1251 + 72));
      }

      else
      {
        a1 = *(v1251 + 72);
      }

      return (v1569 | v1570 | v1571 | v1572) & 0xFFFFFFFFFFE7FFFFLL | ((a1 & 3) << 19) | result;
    case 2511:
      v1285 = *(a2 + 2);
      if (*v1285 == 1)
      {
        LOWORD(v1286) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1285 + 8));
      }

      else
      {
        v1286 = *(v1285 + 8);
      }

      if (*(v1285 + 32) == 1)
      {
        LOWORD(v1590) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1285 + 40));
      }

      else
      {
        v1590 = *(v1285 + 40);
      }

      if (*(v1285 + 80) == 1)
      {
        LOWORD(v1591) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1285 + 88));
      }

      else
      {
        v1591 = *(v1285 + 88);
      }

      if (*(v1285 + 48) == 1)
      {
        LOWORD(v1592) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1285 + 56));
      }

      else
      {
        v1592 = *(v1285 + 56);
      }

      v1593 = v1286 & 0x1F;
      v1594 = 32 * (v1590 & 0x1F);
      v1595 = (v1591 & 3) << 10;
      v1596 = (v1592 & 0xF) << 16;
      if (*(v1285 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1285 + 72));
      }

      else
      {
        a1 = *(v1285 + 72);
      }

      return (v1593 | v1594 | v1595 | v1596) & 0xFFFFFFFFFFEFFFFFLL | ((a1 & 1) << 20) | result;
    case 2512:
    case 2513:
    case 2514:
    case 2516:
    case 2518:
      v569 = *(a2 + 2);
      if (*(v569 + 16) == 1)
      {
        LOWORD(v570) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v569 + 24));
      }

      else
      {
        v570 = *(v569 + 24);
      }

      if (*(v569 + 32) == 1)
      {
        LOWORD(v872) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v569 + 40));
      }

      else
      {
        v872 = *(v569 + 40);
      }

      if (*(v569 + 48) == 1)
      {
        LOWORD(v873) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v569 + 56));
      }

      else
      {
        v873 = *(v569 + 56);
      }

      v56 = v570 & 0x1F;
      v57 = 32 * (v872 & 0x1F);
      v58 = (v873 & 0x1F) << 16;
      if (*(v569 + 64) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v569 + 72)) & 3) << 11;
      }

      else
      {
        v109 = (*(v569 + 72) & 3) << 11;
      }

      return v56 | v57 | v58 | v109 | result;
    case 2515:
      v1552 = *(a2 + 2);
      if (*(v1552 + 16) == 1)
      {
        LOWORD(v1553) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1552 + 24));
      }

      else
      {
        v1553 = *(v1552 + 24);
      }

      if (*(v1552 + 32) == 1)
      {
        LOWORD(v1715) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1552 + 40));
      }

      else
      {
        v1715 = *(v1552 + 40);
      }

      if (*(v1552 + 48) == 1)
      {
        LOWORD(v1716) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1552 + 56));
      }

      else
      {
        v1716 = *(v1552 + 56);
      }

      if (*(v1552 + 80) == 1)
      {
        LOWORD(v1717) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1552 + 88));
      }

      else
      {
        v1717 = *(v1552 + 88);
      }

      v1718 = v1553 & 0x1F;
      v1719 = 32 * (v1715 & 0x1F);
      v1720 = (v1716 & 0x1F) << 16;
      v1721 = (v1717 & 3) << 13;
      if (*(v1552 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1552 + 72));
      }

      else
      {
        a1 = *(v1552 + 72);
      }

      return (v1718 | v1719 | v1720 | v1721) & 0xFFFFFFFFFFDFFFFFLL | ((a1 & 1) << 21) | result;
    case 2517:
      v1304 = *(a2 + 2);
      if (*(v1304 + 16) == 1)
      {
        LOWORD(v1305) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1304 + 24));
      }

      else
      {
        v1305 = *(v1304 + 24);
      }

      if (*(v1304 + 32) == 1)
      {
        LOWORD(v1607) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1304 + 40));
      }

      else
      {
        v1607 = *(v1304 + 40);
      }

      if (*(v1304 + 48) == 1)
      {
        LOWORD(v1608) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1304 + 56));
      }

      else
      {
        v1608 = *(v1304 + 56);
      }

      if (*(v1304 + 80) == 1)
      {
        LOWORD(v1609) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1304 + 88));
      }

      else
      {
        v1609 = *(v1304 + 88);
      }

      v348 = v1305 & 0x1F;
      v349 = 32 * (v1607 & 0x1F);
      v350 = (v1608 & 0x1F) << 16;
      v351 = (v1609 & 3) << 13;
      if (*(v1304 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1304 + 72));
      }

      else
      {
        a1 = *(v1304 + 72);
      }

      v352 = (a1 & 1) << 11;
      return v348 | v349 | v350 | v351 | v352 | result;
    case 2519:
      v1259 = *(a2 + 2);
      if (*(v1259 + 16) == 1)
      {
        LOWORD(v1260) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1259 + 24));
      }

      else
      {
        v1260 = *(v1259 + 24);
      }

      if (*(v1259 + 32) == 1)
      {
        LOWORD(v1583) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1259 + 40));
      }

      else
      {
        v1583 = *(v1259 + 40);
      }

      if (*(v1259 + 48) == 1)
      {
        LOWORD(v1584) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1259 + 56));
      }

      else
      {
        v1584 = *(v1259 + 56);
      }

      if (*(v1259 + 80) == 1)
      {
        LOWORD(v1585) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1259 + 88));
      }

      else
      {
        v1585 = *(v1259 + 88);
      }

      v1586 = v1260 & 0x1F;
      v1587 = 32 * (v1583 & 0x1F);
      v1588 = (v1584 & 0x1F) << 16;
      v1589 = (v1585 & 3) << 13;
      if (*(v1259 + 64) == 1)
      {
        v180 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1259 + 72));
      }

      else
      {
        v180 = *(v1259 + 72);
      }

      v365 = (v180 << 10) & 0x800;
      v366 = v1586 | v1587 | v1588 | v1589;
      return v366 & 0xFFFFFFFFFFDFFFFFLL | ((v180 & 1) << 21) | v365 | result;
    case 2548:
    case 2550:
    case 2552:
    case 2554:
    case 2556:
    case 2558:
      v547 = *(a2 + 2);
      if (*v547 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v547 + 8));
      }

      else
      {
        a1 = *(v547 + 8);
      }

      return (32 * (a1 & 0x1F)) | result & 0xFFE0FFFF;
    case 2563:
    case 2564:
    case 2565:
      v821 = *(a2 + 2);
      if (*(v821 + 32) == 1)
      {
        LOWORD(v822) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v821 + 40));
      }

      else
      {
        v822 = *(v821 + 40);
      }

      if (*v821 == 1)
      {
        LOWORD(v1242) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v821 + 8));
      }

      else
      {
        v1242 = *(v821 + 8);
      }

      v37 = (v822 & 0xF) << 16;
      v38 = v1242 & 0x1F;
      if (*(v821 + 48) == 1)
      {
        v61 = 32 * *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v821 + 56));
      }

      else
      {
        v61 = 32 * *(v821 + 56);
      }

      return v37 | v38 | v61 | result;
    case 2601:
    case 2602:
    case 2652:
    case 2653:
    case 2709:
      v582 = *(a2 + 2);
      if (*v582 == 1)
      {
        LOWORD(v583) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v582 + 8));
      }

      else
      {
        v583 = *(v582 + 8);
      }

      if (*(v582 + 48) == 1)
      {
        LOWORD(v895) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v582 + 56));
      }

      else
      {
        v895 = *(v582 + 56);
      }

      v155 = v583 & 0x1F;
      v156 = 32 * (v895 & 0x1F);
      if (*(v582 + 32) == 1)
      {
        a1 = *(*(a1 + 8) + 152);
        v476 = *(v582 + 40);
LABEL_1726:
        LOWORD(a1) = *(*(a1 + 104) + 2 * v476);
      }

      else
      {
        a1 = *(v582 + 40);
      }

      return (v155 | v156) & 0xFFFFFFFFFFFFE3FFLL | ((a1 & 7) << 10) | result;
    case 2674:
    case 2791:
    case 5718:
    case 5719:
    case 5721:
    case 5722:
    case 5724:
    case 5725:
    case 5727:
    case 5728:
    case 7464:
    case 7465:
    case 7467:
    case 7468:
      v262 = *(a2 + 2);
      v263 = *(*(*(a1 + 8) + 152) + 104);
      v264 = (32 * *(v263 + 2 * *(v262 + 24))) & 0x380;
LABEL_747:
      if (*v262 == 1)
      {
        LOWORD(v262) = *(v263 + 2 * *(v262 + 8));
      }

      else
      {
        v262 = *(v262 + 8);
      }

      return v264 | v262 & 0x1F | result;
    case 2714:
    case 2715:
    case 2716:
    case 2751:
    case 2752:
    case 2753:
    case 5221:
    case 5222:
    case 5223:
    case 7095:
    case 7096:
    case 7097:
      v284 = *(a2 + 2);
      if (*v284 == 1)
      {
        LOWORD(v285) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v284 + 8));
      }

      else
      {
        v285 = *(v284 + 8);
      }

      v126 = v285 & 0x1F;
      if (*(v284 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v284 + 24));
      }

      else
      {
        a1 = *(v284 + 24);
      }

      v412 = (31744 * *(v284 + 40)) & 0x7C00;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 2717:
    case 2718:
    case 2719:
    case 2754:
    case 2755:
    case 2756:
    case 5224:
    case 5225:
    case 5226:
    case 7098:
    case 7099:
    case 7100:
      v305 = *(a2 + 2);
      if (*v305 == 1)
      {
        LOWORD(v306) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v305 + 8));
      }

      else
      {
        v306 = *(v305 + 8);
      }

      v126 = v306 & 0x1F;
      if (*(v305 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v305 + 24));
      }

      else
      {
        a1 = *(v305 + 24);
      }

      v412 = (-1024 * *(v305 + 40));
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 2726:
    case 2763:
    case 3367:
    case 3391:
    case 3404:
    case 3417:
    case 5233:
    case 7107:
      v452 = *(*(*(a1 + 8) + 152) + 104);
      return *(v452 + 2 * *(*(a2 + 2) + 8)) & 0x1E | (((*(v452 + 2 * *(*(a2 + 2) + 24)) >> 1) & 0xF) << 6) | result;
    case 2727:
    case 2764:
    case 3368:
    case 3392:
    case 3405:
    case 3418:
    case 5234:
    case 7108:
    case 7888:
    case 7889:
    case 7890:
    case 7891:
    case 7892:
    case 8102:
    case 8103:
    case 8104:
    case 8105:
    case 8106:
      v215 = *(*(*(a1 + 8) + 152) + 104);
      return *(v215 + 2 * *(*(a2 + 2) + 8)) & 0x1C | (((*(v215 + 2 * *(*(a2 + 2) + 24)) >> 2) & 7) << 7) | result;
    case 2735:
    case 2744:
    case 2772:
    case 2781:
    case 5242:
    case 5251:
    case 6213:
    case 6216:
    case 6253:
    case 6256:
    case 7116:
    case 7125:
    case 7693:
    case 7696:
    case 7748:
    case 7751:
      v240 = *(a2 + 2);
      if (*v240 == 1)
      {
        LOWORD(v241) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v240 + 8));
      }

      else
      {
        v241 = *(v240 + 8);
      }

      v126 = v241 & 0x1F;
      if (*(v240 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v240 + 24));
      }

      else
      {
        a1 = *(v240 + 24);
      }

      v443 = *(v240 + 40);
      goto LABEL_1098;
    case 2737:
    case 2743:
    case 2748:
    case 2774:
    case 2780:
    case 2785:
    case 5087:
    case 5244:
    case 5250:
    case 5255:
    case 5373:
    case 5988:
    case 5990:
    case 6006:
    case 6008:
    case 6076:
    case 6078:
    case 6091:
    case 6093:
    case 6215:
    case 6218:
    case 6255:
    case 6258:
    case 7118:
    case 7124:
    case 7129:
    case 7543:
    case 7545:
    case 7595:
    case 7597:
    case 7695:
    case 7698:
    case 7750:
    case 7753:
      v105 = *(a2 + 2);
      if (*v105 == 1)
      {
        LOWORD(v106) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v105 + 8));
      }

      else
      {
        v106 = *(v105 + 8);
      }

      v126 = v106 & 0x1F;
      if (*(v105 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v105 + 24));
      }

      else
      {
        a1 = *(v105 + 24);
      }

      v216 = *(v105 + 40);
      goto LABEL_719;
    case 2844:
    case 2845:
    case 2846:
      v823 = *(a2 + 2);
      if (*v823 == 1)
      {
        LOWORD(v824) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v823 + 8));
      }

      else
      {
        v824 = *(v823 + 8);
      }

      v381 = v824 & 0x1F;
      if (*(v823 + 16) == 1)
      {
        v382 = *(*(a1 + 8) + 152);
        v383 = *(v823 + 24);
        return v381 & 0xFFFFFFFFFFFFE01FLL | (32 * *(*(v382 + 104) + 2 * v383)) | result;
      }

      return v381 & 0xFFFFFFFFFFFFE01FLL | (32 * *(v823 + 24)) | result;
    case 2857:
    case 2858:
    case 2859:
    case 3231:
    case 3232:
    case 3233:
    case 3298:
    case 3299:
    case 3300:
    case 3307:
    case 3308:
    case 3309:
      v291 = *(a2 + 2);
      if (*(v291 + 16) == 1)
      {
        LOWORD(v292) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v291 + 24));
      }

      else
      {
        v292 = *(v291 + 24);
      }

      if (*(v291 + 64) == 1)
      {
        LOWORD(v506) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v291 + 72));
      }

      else
      {
        v506 = *(v291 + 72);
      }

      if (*v291 == 1)
      {
        LOWORD(v507) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v291 + 8));
      }

      else
      {
        v507 = *(v291 + 8);
      }

      v479 = (v292 & 7) << 10;
      v480 = (v506 & 0x1F) << 16;
      v481 = v507 & 0x1F;
      if (*(v291 + 48) == 1)
      {
        v482 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v291 + 56)) & 0x1F);
      }

      else
      {
        v482 = 32 * (*(v291 + 56) & 0x1FLL);
      }

      return v479 | v480 | v481 | v482 | result;
    case 3049:
    case 3055:
    case 3059:
    case 3063:
    case 3067:
    case 3079:
      v526 = *(a2 + 2);
      if (*v526 == 1)
      {
        LOWORD(v527) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v526 + 8));
      }

      else
      {
        v527 = *(v526 + 8);
      }

      if (*(v526 + 32) == 1)
      {
        LOWORD(v830) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v526 + 40));
      }

      else
      {
        v830 = *(v526 + 40);
      }

      if (*(v526 + 48) == 1)
      {
        LOWORD(v831) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v526 + 56));
      }

      else
      {
        v831 = *(v526 + 56);
      }

      v355 = v527 & 0x1F;
      v356 = 32 * (v830 & 0x1F);
      v357 = (v831 & 7) << 16;
      if (*(v526 + 64) == 1)
      {
        v832 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v526 + 72));
      }

      else
      {
        v832 = *(v526 + 72);
      }

      v359 = v832 >> 2;
      v360 = (v832 & 3) << 10;
      return (v355 | v356 | v357) & 0xFFFFFFFFFFE7FFFFLL | ((v359 & 3) << 19) | v360 | result;
    case 3052:
    case 3056:
    case 3060:
    case 3064:
    case 3068:
    case 3082:
      v544 = *(a2 + 2);
      if (*(v544 + 16) == 1)
      {
        LOWORD(v545) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v544 + 24));
      }

      else
      {
        v545 = *(v544 + 24);
      }

      if (*(v544 + 32) == 1)
      {
        LOWORD(v844) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v544 + 40));
      }

      else
      {
        v844 = *(v544 + 40);
      }

      if (*(v544 + 48) == 1)
      {
        LOWORD(v845) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v544 + 56));
      }

      else
      {
        v845 = *(v544 + 56);
      }

      v846 = v545 & 0x1F;
      v847 = 32 * (v844 & 0x1F);
      v848 = (v845 & 7) << 16;
      if (*(v544 + 64) == 1)
      {
        v849 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v544 + 72));
      }

      else
      {
        v849 = *(v544 + 72);
      }

      return (v846 | v847 | v848) & 0xFFFFFFFFFFC7FFFFLL | ((v849 & 7) << 19) | (v849 << 8) & 0x800 | result;
    case 3070:
    case 5536:
    case 5580:
    case 6840:
    case 7311:
    case 7355:
    case 7756:
      v485 = *(a2 + 2);
      if (*(v485 + 80) == 1)
      {
        LOWORD(v486) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 88));
      }

      else
      {
        v486 = *(v485 + 88);
      }

      v722 = ((*(v485 + 40) << 13) + 24576) & 0x6000 | ((v486 & 0xF) << 16);
      if (*(v485 + 96) == 1)
      {
        LOWORD(v775) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 104));
      }

      else
      {
        v775 = *(v485 + 104);
      }

      if (*(v485 + 64) == 1)
      {
        LOWORD(v776) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 72));
      }

      else
      {
        v776 = *(v485 + 72);
      }

      v725 = (v775 << 12) & 0x8000;
      v726 = (v775 & 7) << 10;
      goto LABEL_2212;
    case 3071:
    case 5538:
    case 5539:
    case 5582:
    case 5583:
    case 7313:
    case 7314:
    case 7357:
    case 7358:
    case 7757:
      v387 = *(a2 + 2);
      if (*(v387 + 80) == 1)
      {
        LOWORD(v388) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v387 + 88));
      }

      else
      {
        v388 = *(v387 + 88);
      }

      v595 = ((*(v387 + 40) << 13) + 24576) & 0x6000 | ((v388 & 0xF) << 16);
      if (*(v387 + 64) == 1)
      {
        LOWORD(v596) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v387 + 72));
      }

      else
      {
        v596 = *(v387 + 72);
      }

      v597 = v595 | (32 * (v596 & 0x1F));
      if (*(v387 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v387 + 56));
      }

      else
      {
        LODWORD(a1) = *(v387 + 56);
      }

      return result | v597 | (a1 & 3);
    case 3072:
    case 5540:
    case 5541:
    case 5584:
    case 5585:
    case 7315:
    case 7316:
    case 7359:
    case 7360:
    case 7758:
      v370 = *(a2 + 2);
      v371 = *(*(*(a1 + 8) + 152) + 104);
      v372 = ((*(v370 + 40) << 13) + 24576) & 0x6000 | (((*(v371 + 2 * *(v370 + 88)) >> 1) & 0xF) << 17) | (((*(v371 + 2 * *(v370 + 72)) >> 1) & 0xF) << 6);
      goto LABEL_666;
    case 3073:
    case 5542:
    case 5586:
    case 6841:
    case 7317:
    case 7361:
    case 7759:
      v483 = *(a2 + 2);
      if (*(v483 + 80) == 1)
      {
        LOWORD(v484) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v483 + 88));
      }

      else
      {
        v484 = *(v483 + 88);
      }

      v772 = ((*(v483 + 40) << 13) + 24576) & 0x6000 | ((v484 & 0xF) << 16);
      if (*(v483 + 96) == 1)
      {
        v773 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v483 + 104));
      }

      else
      {
        v773 = *(v483 + 104);
      }

      v774 = (v773 << 8) & 0xC00;
      goto LABEL_2166;
    case 3074:
    case 3077:
    case 5544:
    case 5545:
    case 5550:
    case 5551:
    case 5588:
    case 5589:
    case 5594:
    case 5595:
    case 6842:
    case 6844:
    case 7319:
    case 7320:
    case 7325:
    case 7326:
    case 7363:
    case 7364:
    case 7369:
    case 7370:
    case 7760:
    case 7763:
      v164 = *(a2 + 2);
      if (*(v164 + 80) == 1)
      {
        LOWORD(v165) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v164 + 88));
      }

      else
      {
        v165 = *(v164 + 88);
      }

      v336 = ((*(v164 + 40) << 13) + 24576) & 0x6000 | ((v165 & 0xF) << 16);
      if (*(v164 + 64) == 1)
      {
        LOWORD(v337) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v164 + 72));
      }

      else
      {
        v337 = *(v164 + 72);
      }

      v338 = v336 | (32 * (v337 & 0x1F));
      if (*(v164 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v164 + 56));
      }

      else
      {
        LODWORD(a1) = *(v164 + 56);
      }

      return result | v338 | (a1 & 1);
    case 3075:
    case 5546:
    case 5547:
    case 5590:
    case 5591:
    case 7321:
    case 7322:
    case 7365:
    case 7366:
    case 7761:
      v370 = *(a2 + 2);
      v371 = *(*(*(a1 + 8) + 152) + 104);
      v372 = ((*(v370 + 40) << 13) + 24576) & 0x6000 | (((*(v371 + 2 * *(v370 + 88)) >> 2) & 7) << 18) | (((*(v371 + 2 * *(v370 + 72)) >> 2) & 7) << 7);
LABEL_666:
      if (*(v370 + 48) == 1)
      {
        LOWORD(v370) = *(v371 + 2 * *(v370 + 56));
      }

      else
      {
        LODWORD(v370) = *(v370 + 56);
      }

      return result | v372 | (v370 & 1);
    case 3076:
    case 5548:
    case 5592:
    case 6843:
    case 7323:
    case 7367:
    case 7762:
      v487 = *(a2 + 2);
      if (*(v487 + 80) == 1)
      {
        LOWORD(v488) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v487 + 88));
      }

      else
      {
        v488 = *(v487 + 88);
      }

      v772 = ((*(v487 + 40) << 13) + 24576) & 0x6000 | ((v488 & 0xF) << 16);
      if (*(v487 + 96) == 1)
      {
        v777 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v487 + 104));
      }

      else
      {
        v777 = *(v487 + 104);
      }

      v774 = (v777 << 8) & 0xC00;
      goto LABEL_2176;
    case 3084:
      v1544 = *(a2 + 2);
      if (*(v1544 + 80) == 1)
      {
        LOWORD(v1545) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1544 + 88));
      }

      else
      {
        v1545 = *(v1544 + 88);
      }

      v1705 = ((*(v1544 + 40) << 13) + 24576) & 0x6000 | ((v1545 & 0xF) << 16);
      if (*(v1544 + 96) == 1)
      {
        LOWORD(v1706) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1544 + 104));
      }

      else
      {
        v1706 = *(v1544 + 104);
      }

      if (*(v1544 + 64) == 1)
      {
        LOWORD(v1707) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1544 + 72));
      }

      else
      {
        v1707 = *(v1544 + 72);
      }

      v1708 = (v1706 << 12) & 0x8000;
      v1709 = (v1706 << 9) & 0xC00;
      v1710 = 8 * (v1706 & 1);
      v1711 = 32 * (v1707 & 0x1F);
      if (*(v1544 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1544 + 56));
      }

      else
      {
        a1 = *(v1544 + 56);
      }

      return v1708 | v1705 | v1709 | v1710 | v1711 | a1 & 7 | result;
    case 3089:
      v483 = *(a2 + 2);
      if (*(v483 + 80) == 1)
      {
        LOWORD(v1447) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v483 + 88));
      }

      else
      {
        v1447 = *(v483 + 88);
      }

      v772 = ((*(v483 + 40) << 13) + 24576) & 0x6000 | ((v1447 & 0xF) << 16);
      if (*(v483 + 96) == 1)
      {
        v1672 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v483 + 104));
      }

      else
      {
        v1672 = *(v483 + 104);
      }

      v774 = (v1672 << 8) & 0xC00;
      v1098 = 4 * (v1672 & 3);
      v1099 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v483 + 48) == 1)
      {
        v1101 = *(v1099 + 2 * *(v483 + 56)) & 3;
      }

      else
      {
        v1101 = *(v483 + 56) & 3;
      }

      goto LABEL_2170;
    case 3096:
      v487 = *(a2 + 2);
      if (*(v487 + 80) == 1)
      {
        LOWORD(v1535) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v487 + 88));
      }

      else
      {
        v1535 = *(v487 + 88);
      }

      v772 = ((*(v487 + 40) << 13) + 24576) & 0x6000 | ((v1535 & 0xF) << 16);
      if (*(v487 + 96) == 1)
      {
        v1694 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v487 + 104));
      }

      else
      {
        v1694 = *(v487 + 104);
      }

      v774 = (v1694 << 8) & 0xC00;
      v1098 = 4 * (v1694 & 3);
      v1103 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v487 + 48) == 1)
      {
        v1101 = *(v1103 + 2 * *(v487 + 56)) & 3;
      }

      else
      {
        v1101 = *(v487 + 56) & 3;
      }

      goto LABEL_2180;
    case 3107:
    case 3164:
    case 5269:
    case 7144:
      v81 = *(a2 + 2);
      if (*(v81 + 80) == 1)
      {
        LOWORD(v634) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v81 + 88));
      }

      else
      {
        v634 = *(v81 + 88);
      }

      v995 = ((*(v81 + 40) << 13) + 24576) & 0x6000 | ((v634 & 0xF) << 16);
      if (*(v81 + 96) == 1)
      {
        a1 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v996) = *(a1 + 2 * *(v81 + 104));
      }

      else
      {
        v996 = *(v81 + 104);
        a1 = *(*(*(a1 + 8) + 152) + 104);
      }

      v157 = v995 | ((v996 & 1) << 10);
      v159 = (32 * *(a1 + 2 * *(v81 + 72))) & 0x3C0;
      goto LABEL_269;
    case 3116:
    case 3173:
    case 5278:
    case 6880:
    case 7153:
    case 7836:
      v81 = *(a2 + 2);
      if (*(v81 + 80) == 1)
      {
        LOWORD(v546) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v81 + 88));
      }

      else
      {
        v546 = *(v81 + 88);
      }

      v850 = ((*(v81 + 40) << 13) + 24576) & 0x6000 | ((v546 & 0xF) << 16);
      if (*(v81 + 96) == 1)
      {
        a1 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v851) = *(a1 + 2 * *(v81 + 104));
      }

      else
      {
        v851 = *(v81 + 104);
        a1 = *(*(*(a1 + 8) + 152) + 104);
      }

      v157 = v850 | ((v851 & 1) << 10);
      v159 = (32 * *(a1 + 2 * *(v81 + 72))) & 0x380;
LABEL_269:
      v140 = v157 | v159;
      if (*(v81 + 48) == 1)
      {
        LOWORD(a1) = *(a1 + 2 * *(v81 + 56));
      }

      else
      {
LABEL_271:
        LODWORD(a1) = *(v81 + 56);
      }

      return result | v140 | (a1 & 7);
    case 3125:
    case 3182:
    case 4601:
    case 4618:
    case 5901:
    case 5920:
      v548 = *(a2 + 2);
      if (*v548 == 1)
      {
        LOWORD(v549) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v548 + 8));
      }

      else
      {
        v549 = *(v548 + 8);
      }

      if (*(v548 + 32) == 1)
      {
        LOWORD(v852) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v548 + 40));
      }

      else
      {
        v852 = *(v548 + 40);
      }

      if (*(v548 + 48) == 1)
      {
        LOWORD(v853) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v548 + 56));
      }

      else
      {
        v853 = *(v548 + 56);
      }

      v854 = v549 & 0x1F;
      v855 = 32 * (v852 & 0x1F);
      v856 = (v853 & 0xF) << 16;
      if (*(v548 + 64) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v548 + 72));
      }

      else
      {
        a1 = *(v548 + 72);
      }

      return (v854 | v855 | v856) & 0xFFFFFFFFFFEFFFFFLL | ((a1 & 1) << 20) | result;
    case 3130:
    case 3134:
    case 3187:
    case 3191:
      v632 = *(a2 + 2);
      if (*(v632 + 16) == 1)
      {
        LOWORD(v633) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v632 + 24));
      }

      else
      {
        v633 = *(v632 + 24);
      }

      if (*(v632 + 32) == 1)
      {
        LOWORD(v992) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v632 + 40));
      }

      else
      {
        v992 = *(v632 + 40);
      }

      if (*(v632 + 48) == 1)
      {
        LOWORD(v993) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v632 + 56));
      }

      else
      {
        v993 = *(v632 + 56);
      }

      v56 = v633 & 0x1F;
      v57 = 32 * (v992 & 0x1F);
      v58 = (v993 & 0x1F) << 16;
      if (*(v632 + 64) == 1)
      {
        v926 = *(*(a1 + 8) + 152);
        v927 = *(v632 + 72);
        goto LABEL_1910;
      }

      v109 = (*(v632 + 72) & 1) << 11;
      return v56 | v57 | v58 | v109 | result;
    case 3203:
    case 3207:
    case 5621:
    case 5624:
    case 6845:
    case 6847:
    case 7396:
    case 7399:
    case 7766:
    case 7768:
      v368 = *(a2 + 2);
      if (*(v368 + 80) == 1)
      {
        LOWORD(v369) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v368 + 88));
      }

      else
      {
        v369 = *(v368 + 88);
      }

      if (*(v368 + 48) == 1)
      {
        LOWORD(v588) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v368 + 56));
      }

      else
      {
        v588 = *(v368 + 56);
      }

      if (*(v368 + 32) == 1)
      {
        LOWORD(v589) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v368 + 40));
      }

      else
      {
        v589 = *(v368 + 40);
      }

      if (*(v368 + 64) == 1)
      {
        LOWORD(v590) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v368 + 72));
      }

      else
      {
        v590 = *(v368 + 72);
      }

      v348 = (v369 & 0x1F) << 16;
      v349 = (v588 & 7) << 13;
      v350 = (v589 & 7) << 10;
      v351 = 32 * (v590 & 0x1F);
      if (*v368 == 1)
      {
        v352 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v368 + 8)) & 7;
      }

      else
      {
        v352 = *(v368 + 8) & 7;
      }

      return v348 | v349 | v350 | v351 | v352 | result;
    case 3212:
    case 3216:
    case 3219:
      v819 = *(a2 + 2);
      if (*v819 == 1)
      {
        LOWORD(v820) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v819 + 8));
      }

      else
      {
        v820 = *(v819 + 8);
      }

      v1241 = v820 & 0x1F;
      if (*(v819 + 16) == 1)
      {
        return v1241 & 0xFFFFFFFFFFE01FFFLL | (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v819 + 24)) << 13) | result;
      }

      else
      {
        return v1241 & 0xFFFFFFFFFFE01FFFLL | (*(v819 + 24) << 13) | result;
      }

    case 3226:
    case 3227:
    case 3228:
    case 3229:
    case 3230:
    case 4699:
    case 4700:
    case 4701:
    case 4707:
      v399 = *(a2 + 2);
      if (*v399 == 1)
      {
        LOWORD(v400) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v399 + 8));
      }

      else
      {
        v400 = *(v399 + 8);
      }

      v601 = v400 & 0x1F;
      if (*(v399 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v399 + 24));
      }

      else
      {
        LODWORD(a1) = *(v399 + 24);
      }

      v13 = v601 & 0xFFFFFFFFFFF8FFFFLL | ((a1 >> 5) << 16);
      return v13 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result;
    case 3246:
    case 3255:
    case 3258:
    case 3271:
    case 3280:
    case 3283:
    case 4760:
    case 4764:
    case 5660:
    case 5664:
    case 5825:
    case 5831:
    case 5835:
    case 5848:
    case 5852:
    case 5856:
    case 5947:
    case 5953:
    case 5957:
    case 7433:
    case 7437:
      v189 = *(a2 + 2);
      if (*v189 == 1)
      {
        LOWORD(v190) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v189 + 8));
      }

      else
      {
        v190 = *(v189 + 8);
      }

      if (*(v189 + 16) == 1)
      {
        LOWORD(v361) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v189 + 24));
      }

      else
      {
        v361 = *(v189 + 24);
      }

      if (*(v189 + 32) == 1)
      {
        LOWORD(v362) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v189 + 40));
      }

      else
      {
        v362 = *(v189 + 40);
      }

      v183 = v190 & 0x1F;
      v184 = 32 * (v361 & 0x1F);
      v185 = (v362 & 0xF) << 16;
      if (*(v189 + 48) == 1)
      {
        v186 = *(*(a1 + 8) + 152);
        v187 = *(v189 + 56);
LABEL_616:
        v188 = *(*(v186 + 104) + 2 * v187);
      }

      else
      {
        v188 = *(v189 + 56);
      }

      return (v183 | v184 | v185) & 0xFFFFFFFFFFCFFFFFLL | ((v188 & 3) << 20) | (v188 << 9) & 0x800 | result;
    case 3247:
    case 3251:
    case 3256:
    case 3272:
    case 3276:
    case 3281:
    case 4758:
    case 4762:
    case 5658:
    case 5662:
    case 5827:
    case 5829:
    case 5833:
    case 5849:
    case 5850:
    case 5854:
    case 5949:
    case 5951:
    case 5955:
    case 7431:
    case 7435:
      v191 = *(a2 + 2);
      if (*v191 == 1)
      {
        LOWORD(v192) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v191 + 8));
      }

      else
      {
        v192 = *(v191 + 8);
      }

      if (*(v191 + 16) == 1)
      {
        LOWORD(v363) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v191 + 24));
      }

      else
      {
        v363 = *(v191 + 24);
      }

      if (*(v191 + 32) == 1)
      {
        LOWORD(v364) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v191 + 40));
      }

      else
      {
        v364 = *(v191 + 40);
      }

      v175 = v192 & 0x1F;
      v176 = 32 * (v363 & 0x1F);
      v177 = (v364 & 0x1F) << 16;
      if (*(v191 + 48) == 1)
      {
        v178 = *(*(a1 + 8) + 152);
        v179 = *(v191 + 56);
LABEL_628:
        v180 = *(*(v178 + 104) + 2 * v179);
      }

      else
      {
        v180 = *(v191 + 56);
      }

LABEL_630:
      v365 = (v180 << 10) & 0x800;
      v366 = v175 | v176 | v177;
      return v366 & 0xFFFFFFFFFFDFFFFFLL | ((v180 & 1) << 21) | v365 | result;
    case 3248:
    case 3252:
    case 3273:
    case 3277:
      v614 = *(a2 + 2);
      if (*v614 == 1)
      {
        LOWORD(v615) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v614 + 8));
      }

      else
      {
        v615 = *(v614 + 8);
      }

      if (*(v614 + 16) == 1)
      {
        LOWORD(v924) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v614 + 24));
      }

      else
      {
        v924 = *(v614 + 24);
      }

      if (*(v614 + 32) == 1)
      {
        LOWORD(v925) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v614 + 40));
      }

      else
      {
        v925 = *(v614 + 40);
      }

      v56 = v615 & 0x1F;
      v57 = 32 * (v924 & 0x1F);
      v58 = (v925 & 0x1F) << 16;
      if (*(v614 + 48) == 1)
      {
        v926 = *(*(a1 + 8) + 152);
        v927 = *(v614 + 56);
LABEL_1910:
        v109 = (*(*(v926 + 104) + 2 * v927) & 1) << 11;
      }

      else
      {
        v109 = (*(v614 + 56) & 1) << 11;
      }

      return v56 | v57 | v58 | v109 | result;
    case 3265:
    case 4749:
    case 5817:
    case 5939:
      v713 = *(a2 + 2);
      if (*v713 == 1)
      {
        LOWORD(v714) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v713 + 8));
      }

      else
      {
        v714 = *(v713 + 8);
      }

      if (*(v713 + 16) == 1)
      {
        LOWORD(v1189) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v713 + 24));
      }

      else
      {
        v1189 = *(v713 + 24);
      }

      if (*(v713 + 32) == 1)
      {
        LOWORD(v1190) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v713 + 40));
      }

      else
      {
        v1190 = *(v713 + 40);
      }

      v1191 = v714 & 0x1F;
      v1192 = 32 * (v1189 & 0x1F);
      v1193 = (v1190 & 0xF) << 16;
      if (*(v713 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v713 + 56));
      }

      else
      {
        a1 = *(v713 + 56);
      }

      return (v1191 | v1192 | v1193) & 0xFFFFFFFFFFEFFFFFLL | ((a1 & 1) << 20) | result;
    case 3267:
    case 4751:
    case 5819:
    case 5941:
      v616 = *(a2 + 2);
      if (*v616 == 1)
      {
        LOWORD(v617) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v616 + 8));
      }

      else
      {
        v617 = *(v616 + 8);
      }

      if (*(v616 + 16) == 1)
      {
        LOWORD(v928) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v616 + 24));
      }

      else
      {
        v928 = *(v616 + 24);
      }

      if (*(v616 + 32) == 1)
      {
        LOWORD(v929) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v616 + 40));
      }

      else
      {
        v929 = *(v616 + 40);
      }

      v499 = v617 & 0x1F;
      v500 = 32 * (v928 & 0x1F);
      v501 = (v929 & 7) << 16;
      if (*(v616 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v616 + 56));
      }

      else
      {
        a1 = *(v616 + 56);
      }

      return (v499 | v500 | v501) & 0xFFFFFFFFFFE7FFFFLL | ((a1 & 3) << 19) | result;
    case 3531:
    case 3532:
    case 3533:
      v805 = *(a2 + 2);
      if (*v805 == 1)
      {
        LOWORD(v806) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v805 + 8));
      }

      else
      {
        v806 = *(v805 + 8);
      }

      if (*(v805 + 32) == 1)
      {
        LOWORD(v1223) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v805 + 40));
      }

      else
      {
        v1223 = *(v805 + 40);
      }

      v1224 = v806 & 0x1F;
      v1225 = 32 * (v1223 & 0x1F);
      if (*(v805 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v805 + 56));
      }

      else
      {
        a1 = *(v805 + 56);
      }

      return (v1224 | v1225) & 0xFFFFFFFFFFF8FFFFLL | ((a1 & 7) << 16) | result;
    case 3540:
    case 3541:
      v904 = *(a2 + 2);
      if (*(v904 + 80) == 1)
      {
        v905 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v906) = *(v905 + 2 * *(v904 + 88));
      }

      else
      {
        v906 = *(v904 + 88);
        v905 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1290 = ((*(v904 + 40) << 13) + 24576) & 0x6000 | ((v906 & 0xF) << 16) | (((*(v905 + 2 * *(v904 + 72)) >> 1) & 0xF) << 6);
      if (*(v904 + 48) == 1)
      {
        LOWORD(v1291) = *(v905 + 2 * *(v904 + 56));
      }

      else
      {
        v1291 = *(v904 + 56);
      }

      v880 = v1290 | v1291 & 7u;
      if (*(v904 + 96) == 1)
      {
        v881 = *(v905 + 2 * *(v904 + 104));
      }

      else
      {
        v881 = *(v904 + 104);
      }

      v882 = (v881 << 9) & 0x400;
      return v882 | (8 * (v881 & 1)) | result | v880;
    case 3545:
    case 3547:
    case 3549:
    case 3550:
    case 6953:
    case 6987:
    case 6988:
    case 7893:
    case 7894:
      v407 = *(a2 + 2);
      if (*v407 != 1)
      {
        return *(v407 + 8) & 0x1FLL | result;
      }

LABEL_708:
      v408 = *(*(a1 + 8) + 152);
      v409 = *(v407 + 8);
      return *(*(v408 + 104) + 2 * v409) & 0x1F | result;
    case 3553:
    case 3555:
    case 3556:
    case 3558:
    case 3559:
    case 3560:
    case 3562:
    case 3563:
    case 3564:
    case 3565:
    case 3566:
    case 3567:
    case 3569:
    case 3570:
    case 3571:
    case 3572:
    case 3573:
    case 3575:
    case 3576:
    case 3577:
    case 3578:
    case 3580:
    case 3582:
    case 3583:
    case 3585:
    case 3586:
    case 3587:
    case 3589:
    case 3590:
    case 3591:
    case 3592:
    case 3593:
    case 3595:
    case 3596:
    case 3597:
    case 3598:
    case 3599:
    case 3601:
    case 3602:
    case 3603:
    case 3604:
    case 3605:
    case 3606:
    case 3608:
    case 3609:
    case 3610:
    case 3611:
    case 3612:
    case 3614:
    case 3615:
    case 3616:
    case 3617:
    case 3618:
    case 3620:
    case 3621:
    case 3623:
    case 3624:
    case 3625:
    case 3627:
    case 3628:
    case 3629:
    case 3630:
    case 3631:
    case 3632:
    case 3634:
    case 3635:
    case 3636:
    case 3637:
    case 3638:
    case 3640:
    case 3641:
    case 3642:
    case 3643:
    case 3644:
    case 3646:
    case 3647:
    case 3649:
    case 3650:
    case 3651:
    case 3653:
    case 3654:
    case 3655:
    case 3656:
    case 3657:
    case 3659:
    case 3660:
    case 3661:
    case 3662:
    case 3663:
    case 3665:
    case 3666:
    case 3667:
    case 3668:
    case 3669:
    case 3670:
    case 3672:
    case 3673:
    case 3674:
    case 3675:
    case 3676:
    case 3678:
    case 3679:
    case 3680:
    case 3681:
    case 6273:
    case 6275:
    case 6276:
    case 6278:
    case 6279:
    case 6280:
    case 6282:
    case 6283:
    case 6284:
    case 6285:
    case 6286:
    case 6287:
    case 6289:
    case 6290:
    case 6291:
    case 6292:
    case 6293:
    case 6295:
    case 6296:
    case 6297:
    case 6298:
    case 6300:
    case 6302:
    case 6303:
    case 6304:
    case 6305:
    case 6306:
    case 6308:
    case 6309:
    case 6310:
    case 6311:
      v29 = *(a2 + 2);
      if (*(v29 + 16) == 1)
      {
        LOWORD(v30) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 24));
      }

      else
      {
        v30 = *(v29 + 24);
      }

      if (*(v29 + 32) == 1)
      {
        LOWORD(v54) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 40));
      }

      else
      {
        v54 = *(v29 + 40);
      }

      if (*(v29 + 48) == 1)
      {
        LOWORD(v55) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 56));
      }

      else
      {
        v55 = *(v29 + 56);
      }

      v56 = (v30 & 7) << 10;
      v57 = 32 * (v54 & 0x1F);
      v58 = (v55 & 0x1F) << 16;
      goto LABEL_176;
    case 3554:
    case 3557:
    case 3561:
    case 3568:
    case 3574:
    case 3581:
    case 3584:
    case 3588:
    case 3594:
    case 3600:
    case 3607:
    case 3613:
    case 3619:
    case 3622:
    case 3626:
    case 3633:
    case 3639:
    case 3645:
    case 3648:
    case 3652:
    case 3658:
    case 3664:
    case 3671:
    case 3677:
      v146 = *(a2 + 2);
      if (*(v146 + 16) == 1)
      {
        LOWORD(v147) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 24));
      }

      else
      {
        v147 = *(v146 + 24);
      }

      if (*(v146 + 32) == 1)
      {
        LOWORD(v314) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 40));
      }

      else
      {
        v314 = *(v146 + 40);
      }

      if (*v146 == 1)
      {
        LOWORD(v315) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 8));
      }

      else
      {
        v315 = *(v146 + 8);
      }

      v316 = (v147 & 7) << 10;
      v317 = 32 * (v314 & 0x1F);
      v318 = v315 & 0x1F;
      if (*(v146 + 48) == 1)
      {
        goto LABEL_1368;
      }

      goto LABEL_2015;
    case 3579:
    case 3684:
    case 3685:
    case 3789:
    case 3941:
    case 6299:
    case 6489:
    case 6521:
    case 6567:
      v146 = *(a2 + 2);
      if (*v146 == 1)
      {
        LOWORD(v397) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 8));
      }

      else
      {
        v397 = *(v146 + 8);
      }

      if (*(v146 + 32) == 1)
      {
        LOWORD(v599) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 40));
      }

      else
      {
        v599 = *(v146 + 40);
      }

      if (*(v146 + 16) == 1)
      {
        LOWORD(v600) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 24));
      }

      else
      {
        v600 = *(v146 + 24);
      }

      v316 = v397 & 0x1F;
      v317 = 32 * (v599 & 0x1F);
      v318 = (v600 & 7) << 10;
      goto LABEL_1367;
    case 3683:
      v1543 = *(a2 + 2);
      if (*v1543 == 1)
      {
        return (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1543 + 8)) & 0x7F)) | result;
      }

      else
      {
        return (32 * (*(v1543 + 8) & 0x7FLL)) | result;
      }

    case 3703:
    case 3704:
    case 3705:
    case 3706:
      v21 = *(a2 + 2);
      if (*v21 == 1)
      {
        LOWORD(v525) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 8));
      }

      else
      {
        v525 = *(v21 + 8);
      }

      if (*(v21 + 16) == 1)
      {
        LOWORD(v829) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 24));
      }

      else
      {
        v829 = *(v21 + 24);
      }

LABEL_2344:
      v8 = v525 & 0x1F;
      v9 = 32 * (v829 & 0x1F);
      if (*(v21 + 32) != 1)
      {
        goto LABEL_2345;
      }

      goto LABEL_64;
    case 3707:
    case 3708:
    case 3709:
    case 3710:
      v32 = *(a2 + 2);
      if (*(v32 + 32) == 1)
      {
        LOWORD(v631) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 40));
      }

      else
      {
        v631 = *(v32 + 40);
      }

      if (*v32 == 1)
      {
        LOWORD(v979) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 8));
      }

      else
      {
        v979 = *(v32 + 8);
      }

      v37 = (v631 & 0x1F) << 16;
      v38 = v979 & 0x1F;
      if (*(v32 + 16) != 1)
      {
        goto LABEL_165;
      }

      goto LABEL_111;
    case 3711:
    case 3712:
    case 3713:
    case 3714:
      v6 = *(a2 + 2);
      if (*(v6 + 16) == 1)
      {
        LOWORD(v655) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v6 + 24));
      }

      else
      {
        v655 = *(v6 + 24);
      }

      if (*v6 == 1)
      {
        LOWORD(v1045) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v6 + 8));
      }

      else
      {
        v1045 = *(v6 + 8);
      }

      v8 = 32 * (v655 & 0x1F);
      v9 = v1045 & 0x1F;
      if (*(v6 + 32) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    case 3715:
    case 3716:
    case 3717:
    case 3718:
      v32 = *(a2 + 2);
      if (*v32 == 1)
      {
        LOWORD(v639) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 8));
      }

      else
      {
        v639 = *(v32 + 8);
      }

      if (*(v32 + 32) == 1)
      {
        LOWORD(v1010) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 40));
      }

      else
      {
        v1010 = *(v32 + 40);
      }

      v37 = v639 & 0x1F;
      v38 = (v1010 & 0x1F) << 16;
      if (*(v32 + 16) != 1)
      {
        goto LABEL_165;
      }

      goto LABEL_111;
    case 3719:
    case 3724:
      v977 = *(a2 + 2);
      if (*(v977 + 64) == 1)
      {
        LOWORD(v978) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v977 + 72));
      }

      else
      {
        v978 = *(v977 + 72);
      }

      v1375 = ((v978 & 7) << 10) | ((*(v977 + 40) << 13) + 24576) & 0x6000;
      if (*(v977 + 80) == 1)
      {
        LOWORD(v1376) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v977 + 88));
      }

      else
      {
        v1376 = *(v977 + 88);
      }

      v1351 = v1375 | (32 * (v1376 & 0x1F));
      if (*(v977 + 48) == 1)
      {
        v1352 = *(*(a1 + 8) + 152);
        v1353 = *(v977 + 56);
        goto LABEL_3130;
      }

      LODWORD(v1352) = *(v977 + 56);
      return result | v1351 | (v1352 & 0xF);
    case 3720:
    case 3725:
      v941 = *(a2 + 2);
      if (*(v941 + 64) == 1)
      {
        LOWORD(v942) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v941 + 72));
      }

      else
      {
        v942 = *(v941 + 72);
      }

      v1347 = ((v942 & 7) << 10) | ((*(v941 + 40) << 13) + 24576) & 0x6000;
      if (*(v941 + 80) == 1)
      {
        LOWORD(v1348) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v941 + 88));
      }

      else
      {
        v1348 = *(v941 + 88);
      }

      v1349 = v1347 | (32 * (v1348 & 0x1F));
      if (*v941 == 1)
      {
        LOWORD(v1350) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v941 + 8));
      }

      else
      {
        v1350 = *(v941 + 8);
      }

      v1147 = v1349 | (2 * (v1350 & 7));
      if (*(v941 + 48) != 1)
      {
        goto LABEL_3029;
      }

      LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v941 + 56));
      return result | v1147 | (a1 & 1);
    case 3721:
    case 3726:
      v415 = *(a2 + 2);
      if (*(v415 + 64) == 1)
      {
        LOWORD(v998) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v415 + 72));
      }

      else
      {
        v998 = *(v415 + 72);
      }

      v1391 = ((v998 & 7) << 10) | ((*(v415 + 40) << 13) + 24576) & 0x6000;
      if (*(v415 + 80) == 1)
      {
        LOWORD(v1392) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v415 + 88));
      }

      else
      {
        v1392 = *(v415 + 88);
      }

      v607 = v1391 | (32 * (v1392 & 0x1F));
      if (*v415 == 1)
      {
        LOWORD(v1393) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v415 + 8));
      }

      else
      {
        v1393 = *(v415 + 8);
      }

      v608 = 8 * (v1393 & 1);
LABEL_2821:
      v1394 = v607 | v608;
      if (*(v415 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v415 + 56));
      }

      else
      {
        LODWORD(a1) = *(v415 + 56);
      }

      return result | v1394 | (a1 & 7);
    case 3722:
    case 3727:
      v1181 = *(a2 + 2);
      if (*(v1181 + 64) == 1)
      {
        LOWORD(v1182) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1181 + 72));
      }

      else
      {
        v1182 = *(v1181 + 72);
      }

      v1516 = ((v1182 & 7) << 10) | ((*(v1181 + 40) << 13) + 24576) & 0x6000;
      if (*(v1181 + 80) == 1)
      {
        LOWORD(v1517) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1181 + 88));
      }

      else
      {
        v1517 = *(v1181 + 88);
      }

      v1351 = v1516 | (32 * (v1517 & 0x1F));
      if (*v1181 == 1)
      {
        v1352 = *(*(a1 + 8) + 152);
        v1353 = *(v1181 + 8);
        goto LABEL_3130;
      }

      LODWORD(v1352) = *(v1181 + 8);
      return result | v1351 | (v1352 & 0xF);
    case 3723:
    case 3728:
      v213 = *(a2 + 2);
      if (*(v213 + 64) == 1)
      {
        LOWORD(v911) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v213 + 72));
      }

      else
      {
        v911 = *(v213 + 72);
      }

      v1306 = ((v911 & 7) << 10) | ((*(v213 + 40) << 13) + 24576) & 0x6000;
      if (*(v213 + 80) == 1)
      {
        LOWORD(v1307) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v213 + 88));
      }

      else
      {
        v1307 = *(v213 + 88);
      }

      v1308 = v1306 | (32 * (v1307 & 0x1F));
      if (*v213 == 1)
      {
        LOWORD(v1309) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v213 + 8));
      }

      else
      {
        v1309 = *(v213 + 8);
      }

      v418 = v1308 | (4 * (v1309 & 3));
      if (*(v213 + 48) != 1)
      {
        goto LABEL_2988;
      }

      goto LABEL_743;
    case 3729:
    case 3730:
    case 3731:
    case 3732:
      v204 = *(a2 + 2);
      if (*(v204 + 32) == 1)
      {
        v330 = *(*(a1 + 8) + 152);
        v331 = *(v204 + 40);
LABEL_1312:
        LOWORD(v330) = *(*(v330 + 104) + 2 * v331);
      }

      else
      {
        v330 = *(v204 + 40);
      }

LABEL_2439:
      v406 = 32 * (v330 & 0x1F);
LABEL_2440:
      if (*v204 == 1)
      {
LABEL_2441:
        v1201 = *(*(a1 + 8) + 152);
        v1202 = *(v204 + 8);
        goto LABEL_2442;
      }

LABEL_3649:
      v1201 = *(v204 + 8);
      return v406 | v1201 & 0x1F | result;
    case 3733:
    case 3734:
    case 3735:
    case 3736:
      v709 = *(a2 + 2);
      if (*(v709 + 32) == 1)
      {
        LOWORD(v710) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v709 + 40));
      }

      else
      {
        v710 = *(v709 + 40);
      }

      v1176 = 32 * (v710 & 0x1F);
      if (*v709 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v709 + 8));
      }

      else
      {
        a1 = *(v709 + 8);
      }

      return v1176 | a1 & 0x1F | result;
    case 3737:
      v579 = *(a2 + 2);
      if (*(v579 + 16) == 1)
      {
        LOWORD(v580) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v579 + 24));
      }

      else
      {
        v580 = *(v579 + 24);
      }

      if (*(v579 + 48) == 1)
      {
        v885 = *(*(a1 + 8) + 152);
        v886 = *(v579 + 56);
LABEL_1705:
        v887 = v580 & 0x1F;
        v888 = 32 * (*(*(v885 + 104) + 2 * v886) & 0x1F);
        if (*(v579 + 32) == 1)
        {
          goto LABEL_1706;
        }
      }

      else
      {
        v887 = v580 & 0x1F;
        v888 = 32 * (*(v579 + 56) & 0x1FLL);
        if (*(v579 + 32) == 1)
        {
LABEL_1706:
          LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v579 + 40));
          return (v887 | v888) & 0xFFFFFFFFFFE3FFFFLL | ((a1 & 7) << 18) | result;
        }
      }

LABEL_1708:
      a1 = *(v579 + 40);
      return (v887 | v888) & 0xFFFFFFFFFFE3FFFFLL | ((a1 & 7) << 18) | result;
    case 3738:
      v1560 = *(a2 + 2);
      if (*(v1560 + 16) == 1)
      {
        LOWORD(v1561) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1560 + 24));
      }

      else
      {
        v1561 = *(v1560 + 24);
      }

      if (*(v1560 + 48) == 1)
      {
        LOWORD(v1729) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1560 + 56));
      }

      else
      {
        v1729 = *(v1560 + 56);
      }

      if (*(v1560 + 32) == 1)
      {
        LOWORD(v1730) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1560 + 40));
      }

      else
      {
        v1730 = *(v1560 + 40);
      }

      v56 = v1561 & 0x1F;
      v57 = 32 * (v1729 & 0x1F);
      v58 = (v1730 & 7) << 18;
      if (*(v1560 + 64) == 1)
      {
        v1612 = *(*(a1 + 8) + 152);
        v1613 = *(v1560 + 72);
        goto LABEL_3742;
      }

      v109 = (*(v1560 + 72) & 7) << 12;
      return v56 | v57 | v58 | v109 | result;
    case 3739:
      v717 = *(a2 + 2);
      if (*(v717 + 16) == 1)
      {
        LOWORD(v718) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v717 + 24));
      }

      else
      {
        v718 = *(v717 + 24);
      }

      if (*(v717 + 48) == 1)
      {
        v1197 = *(*(a1 + 8) + 152);
        v1198 = *(v717 + 56);
LABEL_3382:
        v1199 = v718 & 0x1F;
        v1200 = 32 * (*(*(v1197 + 104) + 2 * v1198) & 0x1F);
        if (*(v717 + 32) == 1)
        {
LABEL_3383:
          LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v717 + 40));
          return (v1199 | v1200) & 0xFFFFFFFFFFE7FFFFLL | ((a1 & 3) << 19) | result;
        }
      }

      else
      {
        v1199 = v718 & 0x1F;
        v1200 = 32 * (*(v717 + 56) & 0x1FLL);
        if (*(v717 + 32) == 1)
        {
          goto LABEL_3383;
        }
      }

LABEL_2667:
      a1 = *(v717 + 40);
      return (v1199 | v1200) & 0xFFFFFFFFFFE7FFFFLL | ((a1 & 3) << 19) | result;
    case 3740:
      v1334 = *(a2 + 2);
      if (*(v1334 + 16) == 1)
      {
        LOWORD(v1335) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1334 + 24));
      }

      else
      {
        v1335 = *(v1334 + 24);
      }

      if (*(v1334 + 48) == 1)
      {
        LOWORD(v1629) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1334 + 56));
      }

      else
      {
        v1629 = *(v1334 + 56);
      }

      if (*(v1334 + 32) == 1)
      {
        LOWORD(v1630) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1334 + 40));
      }

      else
      {
        v1630 = *(v1334 + 40);
      }

      v56 = v1335 & 0x1F;
      v57 = 32 * (v1629 & 0x1F);
      v58 = (v1630 & 3) << 19;
      if (*(v1334 + 64) == 1)
      {
        v1514 = *(*(a1 + 8) + 152);
        v1515 = *(v1334 + 72);
        goto LABEL_3377;
      }

      v109 = (*(v1334 + 72) & 3) << 13;
      return v56 | v57 | v58 | v109 | result;
    case 3741:
      v919 = *(a2 + 2);
      if (*(v919 + 16) == 1)
      {
        LOWORD(v920) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v919 + 24));
      }

      else
      {
        v920 = *(v919 + 24);
      }

      if (*(v919 + 48) == 1)
      {
        v1321 = *(*(a1 + 8) + 152);
        v1511 = *(v919 + 56);
LABEL_3727:
        LOWORD(v1321) = *(*(v1321 + 104) + 2 * v1511);
      }

      else
      {
        v1321 = *(v919 + 56);
      }

LABEL_3729:
      v1727 = v920 & 0x1F;
      v1728 = 32 * (v1321 & 0x1F);
      if (*(v919 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v919 + 40));
      }

      else
      {
        a1 = *(v919 + 40);
      }

      return (v1727 | v1728) & 0xFFFFFFFFFFEFFFFFLL | ((a1 & 1) << 20) | result;
    case 3742:
      v1564 = *(a2 + 2);
      if (*(v1564 + 16) == 1)
      {
        LOWORD(v1565) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1564 + 24));
      }

      else
      {
        v1565 = *(v1564 + 24);
      }

      if (*(v1564 + 48) == 1)
      {
        LOWORD(v1732) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1564 + 56));
      }

      else
      {
        v1732 = *(v1564 + 56);
      }

      if (*(v1564 + 32) == 1)
      {
        LOWORD(v1733) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1564 + 40));
      }

      else
      {
        v1733 = *(v1564 + 40);
      }

      v56 = v1565 & 0x1F;
      v57 = 32 * (v1732 & 0x1F);
      v58 = (v1733 & 1) << 20;
      if (*(v1564 + 64) == 1)
      {
        v1703 = *(*(a1 + 8) + 152);
        v1704 = *(v1564 + 72);
        goto LABEL_3762;
      }

      v1703 = *(v1564 + 72);
      goto LABEL_3764;
    case 3743:
      v559 = *(a2 + 2);
      if (*(v559 + 16) == 1)
      {
        LOWORD(v560) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v559 + 24));
      }

      else
      {
        v560 = *(v559 + 24);
      }

      if (*(v559 + 48) == 1)
      {
        v863 = *(*(a1 + 8) + 152);
        v864 = *(v559 + 56);
LABEL_1615:
        v865 = v560 & 0x1F;
        v866 = 32 * (*(*(v863 + 104) + 2 * v864) & 0x1F);
        if (*(v559 + 32) == 1)
        {
          goto LABEL_1616;
        }
      }

      else
      {
        v865 = v560 & 0x1F;
        v866 = 32 * (*(v559 + 56) & 0x1FLL);
        if (*(v559 + 32) == 1)
        {
LABEL_1616:
          LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v559 + 40));
          return (v865 | v866) & 0xFFFFFFFFFFE1FFFFLL | ((a1 & 0xF) << 17) | result;
        }
      }

LABEL_1618:
      a1 = *(v559 + 40);
      return (v865 | v866) & 0xFFFFFFFFFFE1FFFFLL | ((a1 & 0xF) << 17) | result;
    case 3744:
      v1539 = *(a2 + 2);
      if (*(v1539 + 16) == 1)
      {
        LOWORD(v1540) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1539 + 24));
      }

      else
      {
        v1540 = *(v1539 + 24);
      }

      if (*(v1539 + 48) == 1)
      {
        LOWORD(v1699) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1539 + 56));
      }

      else
      {
        v1699 = *(v1539 + 56);
      }

      if (*(v1539 + 32) == 1)
      {
        LOWORD(v1700) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1539 + 40));
      }

      else
      {
        v1700 = *(v1539 + 40);
      }

      v56 = v1540 & 0x1F;
      v57 = 32 * (v1699 & 0x1F);
      v58 = (v1700 & 0xF) << 17;
      if (*(v1539 + 64) == 1)
      {
        v1633 = *(*(a1 + 8) + 152);
        v1634 = *(v1539 + 72);
LABEL_3660:
        v109 = (*(*(v1633 + 104) + 2 * v1634) & 0xF) << 11;
      }

      else
      {
        v109 = (*(v1539 + 72) & 0xFLL) << 11;
      }

      return v56 | v57 | v58 | v109 | result;
    case 3763:
    case 3772:
    case 3774:
    case 3777:
    case 3779:
    case 3807:
    case 3816:
    case 3819:
    case 3885:
    case 3887:
    case 3889:
    case 3891:
    case 3893:
    case 3895:
    case 3929:
    case 3938:
    case 4189:
    case 4190:
    case 4191:
    case 4192:
    case 4193:
    case 4194:
    case 4195:
    case 4196:
    case 4197:
    case 4198:
    case 4199:
    case 4200:
    case 4201:
    case 4202:
    case 4203:
    case 4204:
      v48 = *(a2 + 2);
      if (*v48 == 1)
      {
        LOWORD(v115) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 8));
      }

      else
      {
        v115 = *(v48 + 8);
      }

      if (*(v48 + 16) == 1)
      {
        LOWORD(v247) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 24));
      }

      else
      {
        v247 = *(v48 + 24);
      }

      if (*(v48 + 48) == 1)
      {
        LOWORD(v248) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 56));
      }

      else
      {
        v248 = *(v48 + 56);
      }

      v56 = v115 & 0x1F;
      v57 = (v247 & 7) << 10;
      v58 = (v248 & 0x1F) << 16;
      if (*(v48 + 32) != 1)
      {
        goto LABEL_1993;
      }

      v109 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 40)) & 0x1F);
      return v56 | v57 | v58 | v109 | result;
    case 3764:
    case 3780:
    case 3808:
    case 3930:
    case 4236:
    case 4248:
    case 4259:
    case 4276:
    case 6343:
    case 6359:
    case 6387:
    case 6449:
    case 6624:
    case 6636:
    case 6647:
    case 6659:
      v221 = *(a2 + 2);
      v222 = *(*(*(a1 + 8) + 152) + 104);
      v223 = *(v222 + 2 * *(v221 + 8)) & 0x1E;
      goto LABEL_360;
    case 3765:
    case 3781:
    case 3809:
    case 3931:
    case 4237:
    case 4249:
    case 4260:
    case 4277:
    case 6344:
    case 6360:
    case 6388:
    case 6450:
    case 6625:
    case 6637:
    case 6648:
    case 6660:
      v230 = *(a2 + 2);
      v231 = *(*(*(a1 + 8) + 152) + 104);
      v232 = *(v231 + 2 * *(v230 + 8)) & 0x1E;
      goto LABEL_375;
    case 3766:
    case 3782:
    case 3810:
    case 3932:
    case 4238:
    case 4250:
    case 4261:
    case 4278:
    case 6345:
    case 6361:
    case 6389:
    case 6451:
    case 6626:
    case 6638:
    case 6649:
    case 6661:
      v219 = *(a2 + 2);
      if (*(v219 + 48) == 1)
      {
        LOWORD(v233) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v219 + 56));
      }

      else
      {
        v233 = *(v219 + 56);
      }

      v425 = ((*(v219 + 24) << 10) + 3072) & 0x1C00 | ((v233 & 0x1F) << 16);
      if (*(v219 + 32) != 1)
      {
        goto LABEL_783;
      }

      goto LABEL_766;
    case 3767:
    case 3783:
    case 3811:
    case 3933:
    case 4239:
    case 4251:
    case 4262:
    case 4279:
    case 6346:
    case 6362:
    case 6390:
    case 6452:
    case 6627:
    case 6639:
    case 6650:
    case 6662:
      v219 = *(a2 + 2);
      if (*(v219 + 48) == 1)
      {
        LOWORD(v220) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v219 + 56));
      }

      else
      {
        v220 = *(v219 + 56);
      }

      v425 = ((*(v219 + 24) << 10) + 3072) & 0x1C00 | ((v220 & 0xF) << 16);
      if (*(v219 + 32) == 1)
      {
LABEL_766:
        v426 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v427) = *(v426 + 2 * *(v219 + 40));
      }

      else
      {
LABEL_783:
        v427 = *(v219 + 40);
        v426 = *(*(*(a1 + 8) + 152) + 104);
      }

      v436 = v425 | (32 * (v427 & 0x1Fu));
      v437 = *(v426 + 2 * *(v219 + 8));
      v438 = v437 & 7 | (8 * ((v437 >> 4) & 1));
      v439 = (2 * v438) & 0x10;
      v440 = v438 & 7;
      return v440 | v436 | v439 | result;
    case 3768:
    case 3784:
    case 3812:
    case 3934:
    case 4240:
    case 4252:
    case 4263:
    case 4280:
    case 6347:
    case 6363:
    case 6391:
    case 6453:
    case 6628:
    case 6640:
    case 6651:
    case 6663:
      v221 = *(a2 + 2);
      v222 = *(*(*(a1 + 8) + 152) + 104);
      v223 = *(v222 + 2 * *(v221 + 8)) & 0x1C;
LABEL_360:
      if (*(v221 + 48) == 1)
      {
        LOWORD(v226) = *(v222 + 2 * *(v221 + 56));
      }

      else
      {
        v226 = *(v221 + 56);
      }

      v227 = v223 & 0xFFE0FFFF | ((v226 & 0x1F) << 16);
      if (*(v221 + 32) == 1)
      {
        LOWORD(v222) = *(v222 + 2 * *(v221 + 40));
      }

      else
      {
        LODWORD(v222) = *(v221 + 40);
      }

      return result | v227 | (32 * (v222 & 0x1F)) | ((*(v221 + 24) << 10) + 3072) & 0x1C00;
    case 3769:
    case 3785:
    case 3813:
    case 3935:
    case 4241:
    case 4253:
    case 4264:
    case 4281:
    case 6348:
    case 6364:
    case 6392:
    case 6454:
    case 6629:
    case 6641:
    case 6652:
    case 6664:
      v230 = *(a2 + 2);
      v231 = *(*(*(a1 + 8) + 152) + 104);
      v232 = *(v231 + 2 * *(v230 + 8)) & 0x1C;
LABEL_375:
      if (*(v230 + 32) == 1)
      {
        LOWORD(v235) = *(v231 + 2 * *(v230 + 40));
      }

      else
      {
        v235 = *(v230 + 40);
      }

      v236 = v232 & 0xFFFFFC1F | (32 * (v235 & 0x1F)) | ((*(v230 + 24) << 10) + 3072) & 0x1C00;
      if (*(v230 + 48) == 1)
      {
        return result | v236 & 0xFFF0FFFF | ((*(v231 + 2 * *(v230 + 56)) & 0xF) << 16);
      }

      else
      {
        return result | v236 & 0xFFF0FFFF | ((*(v230 + 56) & 0xF) << 16);
      }

    case 3770:
    case 3786:
    case 3814:
    case 3936:
    case 4242:
    case 4254:
    case 4265:
    case 4282:
    case 6349:
    case 6365:
    case 6393:
    case 6455:
    case 6630:
    case 6642:
    case 6653:
    case 6665:
      v224 = *(a2 + 2);
      if (*(v224 + 48) == 1)
      {
        LOWORD(v234) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v224 + 56));
      }

      else
      {
        v234 = *(v224 + 56);
      }

      v428 = ((*(v224 + 24) << 10) + 3072) & 0x1C00 | ((v234 & 0x1F) << 16);
      if (*(v224 + 32) != 1)
      {
        goto LABEL_787;
      }

      goto LABEL_769;
    case 3771:
    case 3787:
    case 3815:
    case 3937:
    case 4243:
    case 4255:
    case 4266:
    case 4283:
    case 6350:
    case 6366:
    case 6394:
    case 6456:
    case 6631:
    case 6643:
    case 6654:
    case 6666:
      v224 = *(a2 + 2);
      if (*(v224 + 48) == 1)
      {
        LOWORD(v225) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v224 + 56));
      }

      else
      {
        v225 = *(v224 + 56);
      }

      v428 = ((*(v224 + 24) << 10) + 3072) & 0x1C00 | ((v225 & 0xF) << 16);
      if (*(v224 + 32) == 1)
      {
LABEL_769:
        v429 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v430) = *(v429 + 2 * *(v224 + 40));
      }

      else
      {
LABEL_787:
        v430 = *(v224 + 40);
        v429 = *(*(*(a1 + 8) + 152) + 104);
      }

      v436 = v428 | (32 * (v430 & 0x1Fu));
      v441 = *(v429 + 2 * *(v224 + 8));
      v442 = v441 & 3 | (4 * ((v441 >> 4) & 1));
      v439 = (4 * v442) & 0x10;
      v440 = v442 & 3;
      return v440 | v436 | v439 | result;
    case 3773:
    case 3775:
    case 3776:
    case 3778:
    case 3788:
    case 3817:
    case 3818:
    case 3820:
    case 3886:
    case 3888:
    case 3890:
    case 3892:
    case 3894:
    case 3896:
    case 3939:
    case 3940:
    case 4215:
    case 4216:
    case 4217:
    case 4218:
    case 4219:
    case 4220:
    case 4221:
    case 4222:
    case 4223:
    case 4224:
    case 4225:
    case 4226:
    case 4227:
    case 4228:
    case 4229:
    case 4230:
    case 6352:
    case 6354:
    case 6355:
    case 6357:
    case 6367:
    case 6369:
    case 6396:
    case 6397:
    case 6399:
    case 6458:
    case 6459:
    case 6461:
    case 6481:
    case 6483:
    case 6488:
    case 6506:
    case 6516:
    case 6518:
    case 6520:
    case 6538:
    case 6548:
    case 6550:
    case 6566:
    case 6570:
    case 6632:
    case 6644:
    case 6655:
    case 6667:
      v65 = *(a2 + 2);
      if (*(v65 + 16) == 1)
      {
        LOWORD(v66) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 24));
      }

      else
      {
        v66 = *(v65 + 24);
      }

      if (*(v65 + 32) == 1)
      {
        LOWORD(v116) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 40));
      }

      else
      {
        v116 = *(v65 + 40);
      }

      if (*v65 == 1)
      {
        LOWORD(v117) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 8));
      }

      else
      {
        v117 = *(v65 + 8);
      }

      v118 = (v66 & 7) << 10;
      v119 = 32 * (v116 & 0x1F);
      v120 = v117 & 0x1F;
      if (*(v65 + 48) == 1)
      {
        goto LABEL_196;
      }

      goto LABEL_909;
    case 3790:
    case 3846:
    case 3848:
    case 3850:
    case 3852:
    case 3854:
    case 3856:
    case 3858:
    case 3860:
    case 3942:
    case 6490:
    case 6522:
    case 6568:
      v65 = *(a2 + 2);
      if (*v65 == 1)
      {
        LOWORD(v273) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 8));
      }

      else
      {
        v273 = *(v65 + 8);
      }

      if (*(v65 + 32) == 1)
      {
        LOWORD(v495) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 40));
      }

      else
      {
        v495 = *(v65 + 40);
      }

      if (*(v65 + 16) == 1)
      {
        LOWORD(v496) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 24));
      }

      else
      {
        v496 = *(v65 + 24);
      }

      v118 = v273 & 0x1F;
      v119 = 32 * (v495 & 0x1F);
      v120 = (v496 & 7) << 10;
      goto LABEL_908;
    case 3792:
    case 3794:
    case 3796:
    case 3798:
    case 3800:
    case 3802:
    case 3804:
    case 3806:
    case 3822:
    case 3824:
    case 3826:
    case 3828:
    case 3830:
    case 3832:
    case 3834:
    case 3836:
    case 3870:
    case 3872:
    case 3874:
    case 3876:
    case 3878:
    case 3880:
    case 3882:
    case 3884:
    case 3898:
    case 3900:
    case 3902:
    case 3904:
    case 3906:
    case 3908:
    case 3910:
    case 3912:
    case 3914:
    case 3916:
    case 3918:
    case 3920:
    case 3922:
    case 3924:
    case 3926:
    case 3928:
    case 3970:
    case 3972:
    case 3974:
    case 3976:
    case 3978:
    case 3980:
    case 3982:
    case 3984:
    case 3986:
    case 3988:
    case 3990:
    case 3992:
    case 3994:
    case 3996:
    case 3998:
    case 4018:
    case 4020:
    case 4022:
    case 4024:
    case 4026:
    case 4028:
    case 4030:
    case 4032:
    case 4034:
    case 4036:
    case 4038:
    case 4040:
    case 4042:
    case 4044:
    case 4046:
    case 4062:
    case 4064:
    case 4066:
    case 4068:
    case 4070:
    case 4072:
    case 4074:
    case 4080:
    case 4082:
    case 4084:
    case 4086:
    case 4088:
    case 4090:
    case 4092:
    case 4094:
    case 5338:
    case 5339:
    case 5341:
    case 5404:
    case 5405:
    case 6371:
    case 6373:
    case 6375:
    case 6377:
    case 6379:
    case 6381:
    case 6383:
    case 6385:
    case 6401:
    case 6403:
    case 6405:
    case 6407:
    case 6409:
    case 6411:
    case 6413:
    case 6415:
    case 6417:
    case 6419:
    case 6421:
    case 6423:
    case 6425:
    case 6427:
    case 6429:
    case 6431:
    case 6433:
    case 6435:
    case 6437:
    case 6439:
    case 6441:
    case 6443:
    case 6445:
    case 6447:
    case 6492:
    case 6494:
    case 6496:
    case 6498:
    case 6500:
    case 6502:
    case 6504:
    case 6524:
    case 6526:
    case 6528:
    case 6530:
    case 6532:
    case 6534:
    case 6536:
    case 6552:
    case 6554:
    case 6556:
    case 6558:
    case 6560:
    case 6562:
    case 6564:
    case 6941:
    case 6942:
    case 6943:
    case 6944:
    case 6945:
    case 6946:
    case 6947:
    case 6948:
      v27 = *(a2 + 2);
      if (*(v27 + 16) == 1)
      {
        LOWORD(v28) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v27 + 24));
      }

      else
      {
        v28 = *(v27 + 24);
      }

LABEL_92:
      if (*(v27 + 32) == 1)
      {
        v8 = v28 & 0x1F;
        v9 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v27 + 40)) & 0x1F);
        if (*(v27 + 48) != 1)
        {
LABEL_94:
          v10 = *(v27 + 56);
          return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
        }
      }

      else
      {
        v8 = v28 & 0x1F;
        v9 = 32 * (*(v27 + 40) & 0x1FLL);
        if (*(v27 + 48) != 1)
        {
          goto LABEL_94;
        }
      }

      v10 = *(*(a1 + 8) + 152);
      v47 = *(v27 + 56);
LABEL_97:
      LOWORD(v10) = *(*(v10 + 104) + 2 * v47);
      return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
    case 3837:
    case 3838:
    case 3839:
    case 3840:
    case 3841:
    case 3842:
    case 3843:
    case 3844:
    case 3861:
    case 3862:
    case 3863:
    case 3864:
    case 3865:
    case 3866:
    case 3867:
    case 3868:
      v228 = *(a2 + 2);
      if (*(v228 + 16) == 1)
      {
        LOWORD(v229) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v228 + 24));
      }

      else
      {
        v229 = *(v228 + 24);
      }

      if (*(v228 + 32) == 1)
      {
        LOWORD(v431) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v228 + 40));
      }

      else
      {
        v431 = *(v228 + 40);
      }

      if (*v228 == 1)
      {
        LOWORD(v432) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v228 + 8));
      }

      else
      {
        v432 = *(v228 + 8);
      }

      v433 = (v229 & 7) << 10;
      v434 = 32 * (v431 & 0x1F);
      v435 = v432 & 0x1F;
      if (*(v228 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v228 + 56));
      }

      else
      {
        a1 = *(v228 + 56);
      }

      return (v433 | v434 | v435) & 0xFFFFFFFFFFC0FFFFLL | ((a1 & 0x3F) << 16) | result;
    case 3845:
    case 3847:
    case 3849:
    case 3851:
    case 3853:
    case 3855:
    case 3857:
    case 3859:
      v146 = *(a2 + 2);
      if (*v146 == 1)
      {
        LOWORD(v453) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 8));
      }

      else
      {
        v453 = *(v146 + 8);
      }

      if (*(v146 + 16) == 1)
      {
        LOWORD(v743) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 24));
      }

      else
      {
        v743 = *(v146 + 24);
      }

      if (*(v146 + 32) == 1)
      {
        LOWORD(v744) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 40));
      }

      else
      {
        v744 = *(v146 + 40);
      }

      v316 = v453 & 0x1F;
      v317 = (v743 & 7) << 10;
      v318 = 32 * (v744 & 0x1F);
LABEL_1367:
      if (*(v146 + 48) == 1)
      {
        goto LABEL_1368;
      }

      goto LABEL_2015;
    case 3943:
    case 3948:
    case 6462:
    case 6467:
      v698 = *(a2 + 2);
      if (*(v698 + 80) == 1)
      {
        LOWORD(v699) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v698 + 88));
      }

      else
      {
        v699 = *(v698 + 88);
      }

      v1129 = ((*(v698 + 24) << 13) + 24576) & 0x6000 | ((v699 & 0x1F) << 16);
      if (*(v698 + 48) == 1)
      {
        LOWORD(v1130) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v698 + 56));
      }

      else
      {
        v1130 = *(v698 + 56);
      }

      v1131 = v1129 | ((v1130 & 7) << 10);
      if (*(v698 + 64) == 1)
      {
        LOWORD(v1132) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v698 + 72));
      }

      else
      {
        v1132 = *(v698 + 72);
      }

      v1005 = v1131 | (32 * (v1132 & 0x1F));
      if (*(v698 + 32) == 1)
      {
        v1006 = *(*(a1 + 8) + 152);
        v1007 = *(v698 + 40);
        goto LABEL_2292;
      }

      LODWORD(v1006) = *(v698 + 40);
      return result | v1005 | (v1006 & 0xF);
    case 3944:
    case 3949:
    case 6463:
    case 6468:
      v702 = *(a2 + 2);
      if (*(v702 + 80) == 1)
      {
        LOWORD(v703) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v702 + 88));
      }

      else
      {
        v703 = *(v702 + 88);
      }

      v1141 = ((*(v702 + 24) << 13) + 24576) & 0x6000 | ((v703 & 0x1F) << 16);
      if (*(v702 + 48) == 1)
      {
        LOWORD(v1142) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v702 + 56));
      }

      else
      {
        v1142 = *(v702 + 56);
      }

      v1143 = v1141 | ((v1142 & 7) << 10);
      if (*(v702 + 64) == 1)
      {
        LOWORD(v1144) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v702 + 72));
      }

      else
      {
        v1144 = *(v702 + 72);
      }

      v1145 = v1143 | (32 * (v1144 & 0x1F));
      if (*v702 == 1)
      {
        LOWORD(v1146) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v702 + 8));
      }

      else
      {
        v1146 = *(v702 + 8);
      }

      v1147 = v1145 | (2 * (v1146 & 7));
      if (*(v702 + 32) == 1)
      {
        v1148 = *(v702 + 40);
        a1 = *(*(*(a1 + 8) + 152) + 104);
        goto LABEL_2961;
      }

      LODWORD(a1) = *(v702 + 40);
      return result | v1147 | (a1 & 1);
    case 3945:
    case 3950:
    case 6464:
    case 6469:
      v704 = *(a2 + 2);
      if (*(v704 + 80) == 1)
      {
        LOWORD(v705) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v704 + 88));
      }

      else
      {
        v705 = *(v704 + 88);
      }

      v1149 = ((*(v704 + 24) << 13) + 24576) & 0x6000 | ((v705 & 0x1F) << 16);
      if (*(v704 + 48) == 1)
      {
        LOWORD(v1150) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v704 + 56));
      }

      else
      {
        v1150 = *(v704 + 56);
      }

      v1151 = v1149 | ((v1150 & 7) << 10);
      if (*(v704 + 64) == 1)
      {
        LOWORD(v1152) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v704 + 72));
      }

      else
      {
        v1152 = *(v704 + 72);
      }

      v1153 = v1151 | (32 * (v1152 & 0x1F));
      if (*v704 == 1)
      {
        LOWORD(v1154) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v704 + 8));
      }

      else
      {
        v1154 = *(v704 + 8);
      }

      v140 = v1153 | (8 * (v1154 & 1));
      if (*(v704 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v704 + 40));
      }

      else
      {
        LODWORD(a1) = *(v704 + 40);
      }

      return result | v140 | (a1 & 7);
    case 3946:
    case 3951:
    case 6465:
    case 6470:
      v637 = *(a2 + 2);
      if (*(v637 + 80) == 1)
      {
        LOWORD(v638) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v637 + 88));
      }

      else
      {
        v638 = *(v637 + 88);
      }

      v1001 = ((*(v637 + 24) << 13) + 24576) & 0x6000 | ((v638 & 0x1F) << 16);
      if (*(v637 + 48) == 1)
      {
        LOWORD(v1002) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v637 + 56));
      }

      else
      {
        v1002 = *(v637 + 56);
      }

      v1003 = v1001 | ((v1002 & 7) << 10);
      if (*(v637 + 64) == 1)
      {
        LOWORD(v1004) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v637 + 72));
      }

      else
      {
        v1004 = *(v637 + 72);
      }

      v1005 = v1003 | (32 * (v1004 & 0x1F));
      if (*v637 == 1)
      {
        v1006 = *(*(a1 + 8) + 152);
        v1007 = *(v637 + 8);
LABEL_2292:
        LOWORD(v1006) = *(*(v1006 + 104) + 2 * v1007);
      }

      else
      {
        LODWORD(v1006) = *(v637 + 8);
      }

      return result | v1005 | (v1006 & 0xF);
    case 3947:
    case 3952:
    case 6466:
    case 6471:
      v620 = *(a2 + 2);
      if (*(v620 + 80) == 1)
      {
        LOWORD(v621) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v620 + 88));
      }

      else
      {
        v621 = *(v620 + 88);
      }

      v945 = ((*(v620 + 24) << 13) + 24576) & 0x6000 | ((v621 & 0x1F) << 16);
      if (*(v620 + 48) == 1)
      {
        LOWORD(v946) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v620 + 56));
      }

      else
      {
        v946 = *(v620 + 56);
      }

      v947 = v945 | ((v946 & 7) << 10);
      if (*(v620 + 64) == 1)
      {
        LOWORD(v948) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v620 + 72));
      }

      else
      {
        v948 = *(v620 + 72);
      }

      v949 = v947 | (32 * (v948 & 0x1F));
      if (*v620 == 1)
      {
        LOWORD(v950) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v620 + 8));
      }

      else
      {
        v950 = *(v620 + 8);
      }

      v418 = v949 | (4 * (v950 & 3));
      if (*(v620 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v620 + 40));
      }

      else
      {
        LODWORD(a1) = *(v620 + 40);
      }

      return result | v418 | (a1 & 3);
    case 3953:
    case 4001:
    case 4049:
    case 4097:
      v678 = *(a2 + 2);
      if (*(v678 + 16) == 1)
      {
        LOWORD(v679) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v678 + 24));
      }

      else
      {
        v679 = *(v678 + 24);
      }

      if (*(v678 + 48) == 1)
      {
        LOWORD(v1091) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v678 + 56));
      }

      else
      {
        v1091 = *(v678 + 56);
      }

      v1056 = v679 & 0x1F;
      v1057 = 32 * (v1091 & 0x1F);
      if (*(v678 + 32) == 1)
      {
        v1058 = *(*(a1 + 8) + 152);
        v1059 = *(v678 + 40);
        goto LABEL_2140;
      }

      v1060 = *(v678 + 40);
      return (v1056 | v1057) & 0xFFFFFFFFBFFFE7FFLL | (((v1060 >> 2) & 1) << 30) | ((v1060 & 3) << 11) | result;
    case 3954:
    case 4002:
    case 4050:
    case 4098:
      v646 = *(a2 + 2);
      if (*(v646 + 32) == 1)
      {
        LOWORD(v647) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 40));
      }

      else
      {
        v647 = *(v646 + 40);
      }

      if (*(v646 + 64) == 1)
      {
        LOWORD(v1021) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 72));
      }

      else
      {
        v1021 = *(v646 + 72);
      }

      if (*(v646 + 48) == 1)
      {
        v1022 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 56));
      }

      else
      {
        v1022 = *(v646 + 56);
      }

      v1023 = v647 & 0x1F;
      v1024 = 32 * (v1021 & 0x1F);
      v1025 = (v1022 << 28) & 0x40000000;
      v1026 = (v1022 & 3) << 11;
      if (*(v646 + 80) == 1)
      {
        goto LABEL_1975;
      }

      goto LABEL_2111;
    case 3955:
    case 4003:
    case 4051:
    case 4099:
      v626 = *(a2 + 2);
      if (*(v626 + 16) == 1)
      {
        LOWORD(v627) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v626 + 24));
      }

      else
      {
        v627 = *(v626 + 24);
      }

      if (*(v626 + 48) == 1)
      {
        LOWORD(v965) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v626 + 56));
      }

      else
      {
        v965 = *(v626 + 56);
      }

      v966 = v627 & 0x1F;
      v967 = 32 * (v965 & 0x1F);
      if (*(v626 + 32) == 1)
      {
        v968 = *(*(a1 + 8) + 152);
        v969 = *(v626 + 40);
        goto LABEL_2051;
      }

      v970 = *(v626 + 40);
      return (v966 | v967) & 0xFFFFFFFFBFFFEFFFLL | (((v970 >> 1) & 1) << 30) | ((v970 & 1) << 12) | result;
    case 3956:
    case 4004:
    case 4052:
    case 4100:
      v646 = *(a2 + 2);
      if (*(v646 + 32) == 1)
      {
        LOWORD(v686) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 40));
      }

      else
      {
        v686 = *(v646 + 40);
      }

      if (*(v646 + 64) == 1)
      {
        LOWORD(v1110) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 72));
      }

      else
      {
        v1110 = *(v646 + 72);
      }

      if (*(v646 + 48) == 1)
      {
        v1111 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 56));
      }

      else
      {
        v1111 = *(v646 + 56);
      }

      v1023 = v686 & 0x1F;
      v1024 = 32 * (v1110 & 0x1F);
      v1025 = (v1111 << 29) & 0x40000000;
      v1026 = (v1111 & 1) << 12;
      if (*(v646 + 80) == 1)
      {
        goto LABEL_1975;
      }

      goto LABEL_2111;
    case 3957:
    case 4005:
    case 4053:
    case 4101:
    case 4122:
      v577 = *(a2 + 2);
      if (*(v577 + 16) == 1)
      {
        LOWORD(v578) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v577 + 24));
      }

      else
      {
        v578 = *(v577 + 24);
      }

      if (*(v577 + 48) == 1)
      {
        LOWORD(v884) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v577 + 56));
      }

      else
      {
        v884 = *(v577 + 56);
      }

      v875 = v578 & 0x1F;
      v876 = 32 * (v884 & 0x1F);
      if (*(v577 + 32) == 1)
      {
        v877 = *(*(a1 + 8) + 152);
        v878 = *(v577 + 40);
        goto LABEL_1699;
      }

      v877 = *(v577 + 40);
      return (v875 | v876) & 0xFFFFFFFFBFFFFFFFLL | ((v877 & 1) << 30) | result;
    case 3958:
    case 4006:
    case 4054:
    case 4102:
      v691 = *(a2 + 2);
      if (*(v691 + 32) == 1)
      {
        LOWORD(v692) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v691 + 40));
      }

      else
      {
        v692 = *(v691 + 40);
      }

      if (*(v691 + 64) == 1)
      {
        LOWORD(v1117) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v691 + 72));
      }

      else
      {
        v1117 = *(v691 + 72);
      }

      if (*(v691 + 48) == 1)
      {
        LOWORD(v1118) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v691 + 56));
      }

      else
      {
        v1118 = *(v691 + 56);
      }

      v56 = v692 & 0x1F;
      v57 = 32 * (v1117 & 0x1F);
      v58 = (v1118 & 1) << 30;
      if (*(v691 + 80) == 1)
      {
        v1114 = *(*(a1 + 8) + 152);
        v1115 = *(v691 + 88);
        goto LABEL_2254;
      }

      v109 = (*(v691 + 88) & 0x1FLL) << 16;
      return v56 | v57 | v58 | v109 | result;
    case 3959:
    case 4007:
    case 4055:
    case 4103:
      v666 = *(a2 + 2);
      if (*(v666 + 16) == 1)
      {
        LOWORD(v667) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v666 + 24));
      }

      else
      {
        v667 = *(v666 + 24);
      }

      if (*(v666 + 48) == 1)
      {
        LOWORD(v1063) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v666 + 56));
      }

      else
      {
        v1063 = *(v666 + 56);
      }

      v1064 = v667 & 0x1F;
      v1065 = 32 * (v1063 & 0x1F);
      if (*(v666 + 32) == 1)
      {
        v1066 = *(*(a1 + 8) + 152);
        v1067 = *(v666 + 40);
        goto LABEL_2242;
      }

      v1068 = *(v666 + 40);
      return (v1064 | v1065) & 0xFFFFFFFFBFFFE3FFLL | (((v1068 >> 3) & 1) << 30) | ((v1068 & 7) << 10) | result;
    case 3960:
    case 4008:
    case 4056:
    case 4104:
      v646 = *(a2 + 2);
      if (*(v646 + 32) == 1)
      {
        LOWORD(v674) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 40));
      }

      else
      {
        v674 = *(v646 + 40);
      }

      if (*(v646 + 64) == 1)
      {
        LOWORD(v1081) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 72));
      }

      else
      {
        v1081 = *(v646 + 72);
      }

      if (*(v646 + 48) == 1)
      {
        v1082 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v646 + 56));
      }

      else
      {
        v1082 = *(v646 + 56);
      }

      v1023 = v674 & 0x1F;
      v1024 = 32 * (v1081 & 0x1F);
      v1025 = (v1082 << 27) & 0x40000000;
      v1026 = (v1082 & 7) << 10;
      if (*(v646 + 80) == 1)
      {
LABEL_1975:
        v1027 = *(*(a1 + 8) + 152);
        v1028 = *(v646 + 88);
        goto LABEL_2129;
      }

LABEL_2111:
      v1027 = *(v646 + 88);
      return v1023 | v1024 | v1025 | v1026 | ((v1027 & 0x1F) << 16) | result;
    case 3961:
    case 3963:
    case 3965:
    case 3967:
    case 3999:
    case 4009:
    case 4011:
    case 4013:
    case 4015:
    case 4047:
    case 4057:
    case 4059:
    case 4075:
    case 4077:
    case 4095:
    case 4245:
    case 4246:
    case 4247:
    case 4257:
    case 4258:
    case 4268:
    case 4269:
    case 4270:
    case 4271:
    case 4272:
    case 4273:
    case 4274:
    case 4275:
    case 4285:
    case 4286:
    case 4287:
    case 6342:
    case 6351:
    case 6353:
    case 6356:
    case 6358:
    case 6368:
    case 6386:
    case 6395:
    case 6398:
    case 6448:
    case 6457:
    case 6460:
    case 6480:
    case 6482:
    case 6487:
    case 6505:
    case 6515:
    case 6517:
    case 6519:
    case 6537:
    case 6547:
    case 6549:
    case 6565:
    case 6569:
    case 6633:
    case 6634:
    case 6635:
    case 6645:
    case 6646:
    case 6656:
    case 6657:
    case 6658:
    case 6668:
    case 6669:
    case 6670:
      v29 = *(a2 + 2);
      if (*(v29 + 16) == 1)
      {
        LOWORD(v59) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 24));
      }

      else
      {
        v59 = *(v29 + 24);
      }

      if (*(v29 + 48) == 1)
      {
        LOWORD(v107) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 56));
      }

      else
      {
        v107 = *(v29 + 56);
      }

      if (*(v29 + 32) == 1)
      {
        LOWORD(v108) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 40));
      }

      else
      {
        v108 = *(v29 + 40);
      }

      v56 = (v59 & 7) << 10;
      v57 = (v107 & 0x1F) << 16;
      v58 = 32 * (v108 & 0x1F);
LABEL_176:
      if (*v29 == 1)
      {
        goto LABEL_177;
      }

      goto LABEL_1453;
    case 3962:
    case 3964:
    case 3966:
    case 3968:
    case 4000:
    case 4010:
    case 4012:
    case 4014:
    case 4016:
    case 4048:
    case 4058:
    case 4060:
    case 4076:
    case 4078:
    case 4096:
    case 4244:
    case 4256:
    case 4267:
    case 4284:
      v65 = *(a2 + 2);
      if (*v65 == 1)
      {
        LOWORD(v201) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 8));
      }

      else
      {
        v201 = *(v65 + 8);
      }

      if (*(v65 + 16) == 1)
      {
        LOWORD(v393) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 24));
      }

      else
      {
        v393 = *(v65 + 24);
      }

      if (*(v65 + 32) == 1)
      {
        LOWORD(v394) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 40));
      }

      else
      {
        v394 = *(v65 + 40);
      }

      v118 = v201 & 0x1F;
      v119 = (v393 & 7) << 10;
      v120 = 32 * (v394 & 0x1F);
LABEL_908:
      if (*(v65 + 48) == 1)
      {
LABEL_196:
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v65 + 56));
      }

      else
      {
LABEL_909:
        a1 = *(v65 + 56);
      }

      return (v118 | v119 | v120) & 0xFFFFFFFFFFF0FFFFLL | ((a1 & 0xF) << 16) | result;
    case 4106:
    case 4107:
    case 4108:
    case 4109:
    case 4110:
    case 4111:
    case 4112:
    case 4113:
    case 4114:
    case 4115:
    case 4116:
    case 4117:
    case 4118:
    case 4119:
    case 4120:
    case 4121:
    case 4153:
    case 4154:
    case 4155:
    case 4156:
    case 4157:
    case 4158:
    case 4159:
    case 4160:
    case 4161:
    case 4162:
    case 4163:
    case 4164:
    case 4165:
    case 4166:
    case 4171:
    case 4172:
    case 4173:
    case 4174:
    case 4175:
    case 4176:
    case 4177:
    case 4178:
    case 4179:
    case 4180:
    case 4181:
    case 4182:
    case 4183:
    case 4184:
    case 4185:
    case 4186:
    case 4187:
    case 4188:
    case 4390:
    case 4391:
    case 4392:
    case 4393:
    case 4394:
    case 4395:
    case 4396:
    case 4397:
    case 4398:
    case 4399:
    case 4400:
    case 4401:
    case 4402:
    case 4403:
    case 4408:
    case 4409:
    case 4410:
    case 4411:
    case 4412:
    case 4413:
    case 4414:
    case 4415:
    case 4416:
    case 4417:
    case 4418:
    case 4419:
    case 4420:
    case 4421:
    case 4422:
    case 4423:
    case 4424:
    case 4425:
    case 4426:
    case 4427:
    case 4428:
    case 4429:
    case 4430:
    case 4431:
    case 4432:
    case 4433:
    case 4434:
    case 4435:
    case 4436:
    case 4437:
    case 4438:
    case 4439:
    case 4440:
    case 4441:
    case 4451:
    case 4452:
    case 4453:
    case 4454:
    case 4455:
    case 4456:
    case 4457:
    case 4458:
    case 4459:
    case 4460:
    case 4461:
    case 4462:
    case 4463:
    case 4464:
    case 4465:
    case 4466:
    case 4467:
    case 4468:
    case 4469:
    case 4470:
    case 4471:
    case 4472:
    case 4473:
    case 4474:
    case 4475:
    case 4476:
    case 4477:
    case 4478:
    case 4479:
    case 4480:
    case 4481:
    case 4482:
    case 4976:
    case 4977:
    case 4978:
    case 4979:
    case 4984:
    case 4985:
    case 4986:
    case 4987:
    case 5000:
    case 5001:
    case 5002:
    case 5003:
    case 5008:
    case 5009:
    case 5010:
    case 5011:
    case 5016:
    case 5017:
    case 5018:
    case 5019:
    case 5024:
    case 5025:
    case 5026:
    case 5027:
    case 6881:
    case 6882:
    case 6883:
    case 6884:
    case 6885:
    case 6886:
    case 6887:
    case 6888:
    case 6889:
    case 6890:
    case 6891:
    case 6892:
    case 6893:
    case 6894:
    case 6899:
    case 6900:
      v19 = *(a2 + 2);
      if (*(v19 + 16) == 1)
      {
        LOWORD(v20) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 24));
      }

      else
      {
        v20 = *(v19 + 24);
      }

      if (*(v19 + 32) == 1)
      {
        LOWORD(v44) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 40));
      }

      else
      {
        v44 = *(v19 + 40);
      }

      v37 = (v20 & 0x1F) << 16;
      v38 = 32 * (v44 & 0x1F);
      if (*v19 != 1)
      {
        goto LABEL_1281;
      }

      a1 = *(*(a1 + 8) + 152);
      v45 = *(v19 + 8);
      goto LABEL_322;
    case 4126:
    case 4128:
    case 6601:
    case 6603:
      v303 = *(a2 + 2);
      if (*(v303 + 16) == 1)
      {
        LOWORD(v697) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v303 + 24));
      }

      else
      {
        v697 = *(v303 + 24);
      }

      v41 = v697 & 0x1F;
      if (*(v303 + 32) == 1)
      {
        goto LABEL_2887;
      }

      return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(v303 + 40) & 0x1FLL)) | result;
    case 4129:
    case 4130:
    case 4131:
    case 4132:
    case 4133:
    case 4134:
    case 4135:
    case 4136:
    case 4137:
    case 4138:
    case 4139:
    case 4140:
    case 4141:
    case 4142:
    case 4442:
    case 4443:
    case 4444:
    case 4445:
    case 4446:
    case 4447:
    case 4448:
    case 4449:
    case 4450:
    case 4483:
    case 4484:
    case 4485:
    case 4486:
    case 4487:
    case 4488:
    case 4489:
    case 4490:
    case 4491:
    case 4492:
    case 4493:
    case 4494:
    case 4495:
    case 4496:
    case 4917:
    case 6604:
    case 6605:
    case 6606:
    case 6607:
    case 6608:
    case 6609:
    case 6610:
    case 6611:
    case 6612:
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
      v67 = *(a2 + 2);
      if (*v67 == 1)
      {
        LOWORD(v68) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v67 + 8));
      }

      else
      {
        v68 = *(v67 + 8);
      }

      if (*(v67 + 16) == 1)
      {
        LOWORD(v121) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v67 + 24));
      }

      else
      {
        v121 = *(v67 + 24);
      }

      v122 = v68 & 0x1F;
      v123 = 32 * (v121 & 0x1F);
      if (*(v67 + 32) == 1)
      {
        goto LABEL_202;
      }

      goto LABEL_2148;
    case 4143:
    case 4144:
    case 4145:
    case 4146:
    case 4149:
    case 4150:
    case 4151:
    case 4152:
    case 4211:
    case 4212:
    case 4213:
    case 4214:
    case 4499:
    case 4500:
    case 4501:
    case 4502:
    case 6594:
    case 6595:
    case 6596:
    case 6597:
    case 6598:
    case 6599:
    case 6600:
    case 6602:
      v134 = *(a2 + 2);
      if (*v134 == 1)
      {
        LOWORD(v135) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v134 + 8));
      }

      else
      {
        v135 = *(v134 + 8);
      }

      v293 = v135 & 0x1F;
      if (*(v134 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v134 + 24));
      }

      else
      {
        a1 = *(v134 + 24);
      }

      return result | v293 | (32 * (a1 & 0x1F)) | 0x1F7C00;
    case 4147:
    case 4148:
    case 4497:
    case 4498:
      v640 = *(a2 + 2);
      if (*v640 == 1)
      {
        LOWORD(v641) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v640 + 8));
      }

      else
      {
        v641 = *(v640 + 8);
      }

      if (*(v640 + 16) == 1)
      {
        LOWORD(v1011) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v640 + 24));
      }

      else
      {
        v1011 = *(v640 + 24);
      }

      v1012 = v641 & 0x1F;
      v1013 = (v1011 & 0x1F) << 10;
      if (*(v640 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v640 + 40));
      }

      else
      {
        a1 = *(v640 + 40);
      }

      return result | v1012 | v1013 | (32 * (a1 & 0x1F)) | 0x1F0000;
    case 4167:
    case 4168:
    case 4169:
    case 4170:
    case 4404:
    case 4405:
    case 4406:
    case 4407:
    case 6895:
    case 6896:
    case 6897:
    case 6898:
      v312 = *(a2 + 2);
      if (*(v312 + 32) == 1)
      {
        LOWORD(v313) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v312 + 40));
      }

      else
      {
        v313 = *(v312 + 40);
      }

      if (*(v312 + 48) == 1)
      {
        LOWORD(v520) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v312 + 56));
      }

      else
      {
        v520 = *(v312 + 56);
      }

      v37 = v313 & 0x1F;
      v38 = (v520 & 0x1F) << 16;
      if (*(v312 + 64) == 1)
      {
        v39 = *(*(a1 + 8) + 152);
        v40 = *(v312 + 72);
        goto LABEL_733;
      }

      v61 = 32 * (*(v312 + 72) & 0x1FLL);
      return v37 | v38 | v61 | result;
    case 4205:
    case 6484:
    case 6485:
    case 6584:
    case 6587:
    case 6754:
    case 6755:
    case 6758:
    case 6759:
      v88 = *(a2 + 2);
      if (*(v88 + 32) == 1)
      {
        LOWORD(v414) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v88 + 40));
      }

      else
      {
        v414 = *(v88 + 40);
      }

      if (*(v88 + 16) == 1)
      {
        LOWORD(v606) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v88 + 24));
      }

      else
      {
        v606 = *(v88 + 24);
      }

      v122 = 32 * (v414 & 0x1F);
      v123 = v606 & 0x1F;
      if (*(v88 + 48) != 1)
      {
        goto LABEL_1151;
      }

      goto LABEL_265;
    case 4207:
    case 4209:
    case 6589:
    case 6591:
      v672 = *(a2 + 2);
      if (*v672 == 1)
      {
        LOWORD(v673) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v672 + 8));
      }

      else
      {
        v673 = *(v672 + 8);
      }

      if (*(v672 + 32) == 1)
      {
        LOWORD(v1075) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v672 + 40));
      }

      else
      {
        v1075 = *(v672 + 40);
      }

      v8 = v673 & 0x1F;
      v9 = 32 * (v1075 & 0x1F);
      if (*(v672 + 16) == 1)
      {
        v10 = *(*(a1 + 8) + 152);
        v47 = *(v672 + 24);
        goto LABEL_97;
      }

      v10 = *(v672 + 24);
      return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
    case 4208:
    case 4210:
    case 6590:
    case 6592:
      v21 = *(a2 + 2);
      if (*(v21 + 16) == 1)
      {
        LOWORD(v22) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 24));
      }

      else
      {
        v22 = *(v21 + 24);
      }

      if (*(v21 + 48) == 1)
      {
        LOWORD(v46) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v21 + 56));
      }

      else
      {
        v46 = *(v21 + 56);
      }

LABEL_63:
      v8 = v22 & 0x1F;
      v9 = 32 * (v46 & 0x1F);
      if (*(v21 + 32) == 1)
      {
LABEL_64:
        v10 = *(*(a1 + 8) + 152);
        v47 = *(v21 + 40);
        goto LABEL_97;
      }

LABEL_2345:
      v10 = *(v21 + 40);
      return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
    case 4231:
    case 4232:
    case 4233:
    case 4234:
    case 4235:
    case 4288:
    case 4291:
    case 4294:
    case 4297:
    case 4300:
    case 4303:
    case 6583:
    case 6619:
    case 6620:
    case 6621:
    case 6622:
    case 6623:
    case 6671:
    case 6674:
    case 6677:
    case 6680:
    case 6683:
      v162 = *(a2 + 2);
      if (*v162 == 1)
      {
        LOWORD(v163) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v162 + 8));
      }

      else
      {
        v163 = *(v162 + 8);
      }

      if (*(v162 + 16) == 1)
      {
        LOWORD(v334) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v162 + 24));
      }

      else
      {
        v334 = *(v162 + 24);
      }

      if (*(v162 + 32) == 1)
      {
        LOWORD(v335) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v162 + 40));
      }

      else
      {
        v335 = *(v162 + 40);
      }

      v298 = v163 & 0x1F;
      v299 = (v334 & 0x1F) << 10;
      v300 = 32 * (v335 & 0x1F);
      if (*(v162 + 48) == 1)
      {
        v301 = *(*(a1 + 8) + 152);
        v302 = *(v162 + 56);
        goto LABEL_562;
      }

      v301 = *(v162 + 56);
      return (v298 | v299 | v300) & 0xFFFFFFFFFFC07FFFLL | ((v301 & 0x7F) << 15) | result;
    case 4289:
    case 4290:
    case 4292:
    case 4293:
    case 4295:
    case 4296:
    case 4298:
    case 4299:
    case 4301:
    case 4302:
    case 4304:
    case 4305:
    case 6585:
    case 6586:
    case 6672:
    case 6673:
    case 6675:
    case 6676:
    case 6678:
    case 6679:
    case 6681:
    case 6682:
    case 6684:
    case 6685:
      v136 = *(a2 + 2);
      if (*(v136 + 16) == 1)
      {
        LOWORD(v137) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v136 + 24));
      }

      else
      {
        v137 = *(v136 + 24);
      }

      if (*(v136 + 32) == 1)
      {
        LOWORD(v296) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v136 + 40));
      }

      else
      {
        v296 = *(v136 + 40);
      }

      if (*(v136 + 48) == 1)
      {
        LOWORD(v297) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v136 + 56));
      }

      else
      {
        v297 = *(v136 + 56);
      }

      v298 = v137 & 0x1F;
      v299 = (v296 & 0x1F) << 10;
      v300 = 32 * (v297 & 0x1F);
      if (*(v136 + 64) == 1)
      {
        v301 = *(*(a1 + 8) + 152);
        v302 = *(v136 + 72);
LABEL_562:
        LOWORD(v301) = *(*(v301 + 104) + 2 * v302);
      }

      else
      {
        v301 = *(v136 + 72);
      }

      return (v298 | v299 | v300) & 0xFFFFFFFFFFC07FFFLL | ((v301 & 0x7F) << 15) | result;
    case 4306:
    case 4308:
      v987 = *(a2 + 2);
      if (*(v987 + 32) == 1)
      {
        v988 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v987 + 40));
      }

      else
      {
        v988 = *(v987 + 40);
      }

      if (*(v987 + 16) == 1)
      {
        LOWORD(v1384) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v987 + 24));
      }

      else
      {
        v1384 = *(v987 + 24);
      }

      v1385 = (v988 << 13) & 0x400000;
      v1386 = (v988 & 0x1FF) << 12;
      v1387 = 32 * (v1384 & 0x1F);
      if (*v987 == 1)
      {
        v1388 = *(*(a1 + 8) + 152);
        v1389 = *(v987 + 8);
        goto LABEL_3090;
      }

      v1388 = *(v987 + 8);
      goto LABEL_3092;
    case 4307:
    case 4309:
      v1171 = *(a2 + 2);
      if (*(v1171 + 48) == 1)
      {
        v1172 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1171 + 56));
      }

      else
      {
        v1172 = *(v1171 + 56);
      }

      if (*(v1171 + 32) == 1)
      {
        LOWORD(v1506) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1171 + 40));
      }

      else
      {
        v1506 = *(v1171 + 40);
      }

      v1385 = (v1172 << 13) & 0x400000;
      v1386 = (v1172 & 0x1FF) << 12;
      v1387 = 32 * (v1506 & 0x1F);
      if (*(v1171 + 16) == 1)
      {
        v1388 = *(*(a1 + 8) + 152);
        v1389 = *(v1171 + 24);
LABEL_3090:
        LOWORD(v1388) = *(*(v1388 + 104) + 2 * v1389);
      }

      else
      {
        v1388 = *(v1171 + 24);
      }

LABEL_3092:
      v1507 = v1388 & 0x1F;
      v1508 = v1385 | v1386;
      return v1508 | v1387 | v1507 | result;
    case 4310:
    case 4311:
    case 4315:
    case 4316:
    case 4321:
    case 4322:
    case 4326:
    case 4327:
    case 4331:
    case 4332:
    case 4337:
    case 4338:
    case 4342:
    case 4343:
    case 4347:
    case 4348:
    case 4352:
    case 4353:
    case 4357:
    case 4358:
    case 4363:
    case 4364:
    case 4369:
    case 4370:
    case 4375:
    case 4376:
    case 4381:
    case 4382:
    case 6686:
    case 6687:
    case 6691:
    case 6692:
    case 6696:
    case 6697:
    case 6701:
    case 6702:
    case 6706:
    case 6707:
    case 6711:
    case 6712:
    case 6716:
    case 6717:
    case 6721:
    case 6722:
    case 6726:
    case 6727:
      v88 = *(a2 + 2);
      if (*(v88 + 16) == 1)
      {
        LOWORD(v89) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v88 + 24));
      }

      else
      {
        v89 = *(v88 + 24);
      }

      if (*(v88 + 32) == 1)
      {
        LOWORD(v158) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v88 + 40));
      }

      else
      {
        v158 = *(v88 + 40);
      }

      v122 = v89 & 0x1F;
      v123 = 32 * (v158 & 0x1F);
      if (*(v88 + 48) == 1)
      {
LABEL_265:
        v124 = *(*(a1 + 8) + 152);
        v125 = *(v88 + 56);
        goto LABEL_266;
      }

LABEL_1151:
      v124 = *(v88 + 56);
      return (v122 | v123) & 0xFFFFFFFFFFE00FFFLL | ((v124 & 0x1FF) << 12) | result;
    case 4312:
    case 4313:
    case 4317:
    case 4318:
    case 4323:
    case 4324:
    case 4328:
    case 4329:
    case 4333:
    case 4334:
    case 4339:
    case 4340:
    case 4344:
    case 4345:
    case 4349:
    case 4350:
    case 4354:
    case 4355:
    case 4359:
    case 4360:
    case 4365:
    case 4366:
    case 4371:
    case 4372:
    case 4377:
    case 4378:
    case 4383:
    case 4384:
    case 4914:
    case 4915:
    case 6688:
    case 6689:
    case 6693:
    case 6694:
    case 6698:
    case 6699:
    case 6703:
    case 6704:
    case 6708:
    case 6709:
    case 6713:
    case 6714:
    case 6718:
    case 6719:
    case 6723:
    case 6724:
    case 6728:
    case 6729:
      v83 = *(a2 + 2);
      if (*v83 == 1)
      {
        LOWORD(v84) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v83 + 8));
      }

      else
      {
        v84 = *(v83 + 8);
      }

      if (*(v83 + 16) == 1)
      {
        LOWORD(v141) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v83 + 24));
      }

      else
      {
        v141 = *(v83 + 24);
      }

      v142 = v84 & 0x1F;
      v143 = 32 * (v141 & 0x1F);
      if (*(v83 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v83 + 40));
      }

      else
      {
        a1 = *(v83 + 40);
      }

      return (v142 | v143) & 0xFFFFFFFFFFE0EFFFLL | ((a1 & 0x1F) << 16) | ((*(v83 + 56) << 15) | (*(v83 + 72) << 14) & 0x8000) | ((*(v83 + 72) & 1) << 12) | result;
    case 4314:
    case 4319:
    case 4346:
    case 4351:
    case 6690:
    case 6695:
      v528 = *(a2 + 2);
      if (*v528 == 1)
      {
        LOWORD(v529) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 8));
      }

      else
      {
        v529 = *(v528 + 8);
      }

      if (*(v528 + 16) == 1)
      {
        LOWORD(v833) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 24));
      }

      else
      {
        v833 = *(v528 + 24);
      }

      v834 = v529 & 0x1F;
      v835 = 32 * (v833 & 0x1F);
      if (*(v528 + 32) == 2)
      {
        goto LABEL_3143;
      }

      v836 = *(a2 + 1);
      v1785 = *(v528 + 40);
      v837 = 0x8300000000;
      goto LABEL_1716;
    case 4320:
    case 4336:
    case 4362:
    case 4368:
    case 4374:
    case 4380:
    case 4913:
      v490 = *(a2 + 2);
      if (*v490 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v490 + 8));
      }

      else
      {
        a1 = *(v490 + 8);
      }

      v780 = a1 & 0x1F;
      if (*(v490 + 16) == 2)
      {
        return v780 | (32 * (*(v490 + 24) & 0x7FFFFLL)) | result;
      }

      v781 = *(a2 + 1);
      v1785 = *(v490 + 24);
      v782 = 0x8800000000;
LABEL_2613:
      v1786 = v782;
      v1787 = v781;
      v1271 = *(a3 + 8);
      v1272 = *a3;
      v1273 = &v1785;
      if (v1271 >= *(a3 + 12))
      {
        v1770 = v780;
        v1777 = result;
        v1734 = a3;
        if (v1272 <= &v1785 && v1272 + 24 * v1271 > &v1785)
        {
          v1746 = &v1785 - v1272;
          sub_298B90A44(a3, (a3 + 16), v1271 + 1, 24);
          a3 = v1734;
          v1272 = *v1734;
          v1273 = &v1746[*v1734];
        }

        else
        {
          sub_298B90A44(a3, (a3 + 16), v1271 + 1, 24);
          a3 = v1734;
          v1272 = *v1734;
          v1273 = &v1785;
        }

        v780 = v1770;
        result = v1777;
      }

      v1274 = v1272 + 24 * *(a3 + 8);
      v1275 = *v1273;
      *(v1274 + 16) = v1273[2];
      *v1274 = v1275;
      ++*(a3 + 8);
      return v780 | result;
    case 4325:
    case 4385:
    case 4916:
    case 6700:
    case 6730:
      v528 = *(a2 + 2);
      if (*v528 == 1)
      {
        LOWORD(v576) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 8));
      }

      else
      {
        v576 = *(v528 + 8);
      }

      if (*(v528 + 16) == 1)
      {
        LOWORD(v883) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 24));
      }

      else
      {
        v883 = *(v528 + 24);
      }

      v834 = v576 & 0x1F;
      v835 = 32 * (v883 & 0x1F);
      if (*(v528 + 32) == 2)
      {
        goto LABEL_3143;
      }

      v836 = *(a2 + 1);
      v1785 = *(v528 + 40);
      v837 = 0x8600000000;
      goto LABEL_1716;
    case 4330:
    case 4335:
    case 4356:
    case 4361:
    case 6705:
    case 6710:
      v528 = *(a2 + 2);
      if (*v528 == 1)
      {
        LOWORD(v541) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 8));
      }

      else
      {
        v541 = *(v528 + 8);
      }

      if (*(v528 + 16) == 1)
      {
        LOWORD(v841) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 24));
      }

      else
      {
        v841 = *(v528 + 24);
      }

      v834 = v541 & 0x1F;
      v835 = 32 * (v841 & 0x1F);
      if (*(v528 + 32) == 2)
      {
        goto LABEL_3143;
      }

      v836 = *(a2 + 1);
      v1785 = *(v528 + 40);
      v837 = 0x8400000000;
      goto LABEL_1716;
    case 4341:
    case 6715:
      v528 = *(a2 + 2);
      if (*v528 == 1)
      {
        LOWORD(v1186) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 8));
      }

      else
      {
        v1186 = *(v528 + 8);
      }

      if (*(v528 + 16) == 1)
      {
        LOWORD(v1523) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 24));
      }

      else
      {
        v1523 = *(v528 + 24);
      }

      v834 = v1186 & 0x1F;
      v835 = 32 * (v1523 & 0x1F);
      if (*(v528 + 32) == 2)
      {
        goto LABEL_3143;
      }

      v1085 = *(a2 + 1);
      v1785 = *(v528 + 40);
      v1086 = 0x8700000000;
      goto LABEL_3145;
    case 4367:
    case 4373:
    case 4379:
    case 6720:
    case 6725:
      v528 = *(a2 + 2);
      if (*v528 == 1)
      {
        LOWORD(v581) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 8));
      }

      else
      {
        v581 = *(v528 + 8);
      }

      if (*(v528 + 16) == 1)
      {
        LOWORD(v889) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v528 + 24));
      }

      else
      {
        v889 = *(v528 + 24);
      }

      v834 = v581 & 0x1F;
      v835 = 32 * (v889 & 0x1F);
      if (*(v528 + 32) == 2)
      {
LABEL_3143:
        v1084 = (*(v528 + 40) & 0xFFFLL) << 10;
        return v834 | v835 | v1084 | result;
      }

      v836 = *(a2 + 1);
      v1785 = *(v528 + 40);
      v837 = 0x8500000000;
LABEL_1716:
      v1786 = v837;
      v1787 = v836;
      v890 = *(a3 + 8);
      v891 = *a3;
      v892 = &v1785;
      if (v890 < *(a3 + 12))
      {
        goto LABEL_3146;
      }

      v1764 = v834;
      v1769 = v835;
      v893 = a3;
      v1776 = result;
      if (v891 > &v1785 || v891 + 24 * v890 <= &v1785)
      {
        v894 = (a3 + 16);
        goto LABEL_3782;
      }

      v1744 = &v1785 - v891;
      v1745 = (a3 + 16);
      goto LABEL_3815;
    case 4386:
    case 6731:
      v985 = *(a2 + 2);
      if (*v985 == 1)
      {
        LOWORD(v1054) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v985 + 8));
      }

      else
      {
        v1054 = *(v985 + 8);
      }

      if (*(v985 + 16) == 1)
      {
        LOWORD(v1424) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v985 + 24));
      }

      else
      {
        v1424 = *(v985 + 24);
      }

      v1382 = v1054 & 0xF;
      v1383 = 32 * (v1424 & 0x1F);
      goto LABEL_2909;
    case 4387:
    case 6732:
      v997 = *(a2 + 2);
      if (*(v997 + 16) != 1)
      {
        return (32 * (*(v997 + 24) & 0x1FLL)) | result;
      }

      v343 = *(*(a1 + 8) + 152);
      v344 = *(v997 + 24);
      return (32 * (*(*(v343 + 104) + 2 * v344) & 0x1F)) | result;
    case 4388:
    case 6733:
      v954 = *(a2 + 2);
      if (*(v954 + 48) == 1)
      {
        LOWORD(v955) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v954 + 56));
      }

      else
      {
        v955 = *(v954 + 56);
      }

      v1351 = (32 * (v955 & 0x1F)) | ((*(v954 + 24) << 13) + 24576) & 0x6000;
      if (*(v954 + 32) == 1)
      {
        v1352 = *(*(a1 + 8) + 152);
        v1353 = *(v954 + 40);
LABEL_3130:
        LOWORD(v1352) = *(*(v1352 + 104) + 2 * v1353);
      }

      else
      {
        LODWORD(v1352) = *(v954 + 40);
      }

      return result | v1351 | (v1352 & 0xF);
    case 4389:
    case 6734:
      v985 = *(a2 + 2);
      if (*(v985 + 16) == 1)
      {
        LOWORD(v986) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v985 + 24));
      }

      else
      {
        v986 = *(v985 + 24);
      }

      if (*v985 == 1)
      {
        LOWORD(v1381) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v985 + 8));
      }

      else
      {
        v1381 = *(v985 + 8);
      }

      v1382 = 32 * (v986 & 0x1F);
      v1383 = v1381 & 0x1F;
LABEL_2909:
      if (*(v985 + 32) == 1)
      {
        v1425 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v985 + 40));
      }

      else
      {
        v1425 = *(v985 + 40);
      }

      return (v1382 | v1383) & 0xFFFFFFFFFFC0E3FFLL | (((v1425 >> 3) & 0x3F) << 16) | ((v1425 & 7) << 10) | result;
    case 4515:
    case 6023:
    case 6038:
    case 7557:
      v668 = *(a2 + 2);
      if (*(v668 + 16) == 1)
      {
        LOWORD(v669) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v668 + 24));
      }

      else
      {
        v669 = *(v668 + 24);
      }

      v1069 = (v669 & 7) << 10;
      if (*v668 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v668 + 8));
      }

      else
      {
        a1 = *(v668 + 8);
      }

      v1070 = a1 & 0x1F;
      v1071 = 32 * (*(v668 + 56) & 7);
      return v1069 | v1070 | v1071 | result;
    case 4516:
    case 6024:
    case 6039:
    case 7558:
      v635 = *(a2 + 2);
      if (*(v635 + 16) == 1)
      {
        LOWORD(v636) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v635 + 24));
      }

      else
      {
        v636 = *(v635 + 24);
      }

      v896 = (v636 & 7) << 10;
      if (*v635 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v635 + 8));
      }

      else
      {
        a1 = *(v635 + 8);
      }

      v897 = a1 & 0x1F;
      v898 = (*(v635 + 56) - 64);
      return (v896 | v897) & 0xFFFFFFFFFFBFFFFFLL | (((v898 >> 5) & 1) << 22) | (32 * (v898 & 0x1F)) | result;
    case 4517:
    case 6025:
    case 6040:
    case 7559:
      v707 = *(a2 + 2);
      if (*(v707 + 16) == 1)
      {
        LOWORD(v708) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v707 + 24));
      }

      else
      {
        v708 = *(v707 + 24);
      }

      v1069 = (v708 & 7) << 10;
      if (*v707 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v707 + 8));
      }

      else
      {
        a1 = *(v707 + 8);
      }

      v1070 = a1 & 0x1F;
      v1071 = 32 * (*(v707 + 56) & 0xFLL);
      return v1069 | v1070 | v1071 | result;
    case 4518:
    case 6026:
    case 6041:
    case 7560:
      v700 = *(a2 + 2);
      if (*(v700 + 16) == 1)
      {
        LOWORD(v701) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v700 + 24));
      }

      else
      {
        v701 = *(v700 + 24);
      }

      v1069 = (v701 & 7) << 10;
      if (*v700 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v700 + 8));
      }

      else
      {
        a1 = *(v700 + 8);
      }

      v1070 = a1 & 0x1F;
      v1071 = 32 * (*(v700 + 56) & 0x1FLL);
      return v1069 | v1070 | v1071 | result;
    case 4523:
    case 6234:
    case 6237:
    case 7729:
    case 7732:
      v571 = *(a2 + 2);
      if (*v571 == 1)
      {
        LOWORD(v572) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v571 + 8));
      }

      else
      {
        v572 = *(v571 + 8);
      }

      v471 = v572 & 0x1F;
      if (*(v571 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v571 + 24));
      }

      else
      {
        a1 = *(v571 + 24);
      }

      v472 = *(v571 + 40);
      return v471 & 0xFFFFFFFFFFF8FC1FLL | (32 * (a1 & 0x1F)) | ((v472 & 7) << 16) | result;
    case 4524:
      v1312 = *(a2 + 2);
      if (*v1312 == 1)
      {
        LOWORD(v1313) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1312 + 8));
      }

      else
      {
        v1313 = *(v1312 + 8);
      }

      v797 = v1313 & 0x1F;
      if (*(v1312 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1312 + 24));
      }

      else
      {
        a1 = *(v1312 + 24);
      }

      v1614 = *(v1312 + 40);
      goto LABEL_3408;
    case 4525:
    case 6235:
    case 6238:
    case 7730:
    case 7733:
      v567 = *(a2 + 2);
      if (*v567 == 1)
      {
        LOWORD(v568) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v567 + 8));
      }

      else
      {
        v568 = *(v567 + 8);
      }

      v469 = v568 & 0x1F;
      if (*(v567 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v567 + 24));
      }

      else
      {
        a1 = *(v567 + 24);
      }

      v470 = *(v567 + 40);
      return v469 & 0xFFFFFFFFFFF0FC1FLL | (32 * (a1 & 0x1F)) | ((v470 & 0xF) << 16) | result;
    case 4526:
    case 5360:
    case 5363:
    case 6030:
    case 6032:
    case 6035:
    case 6049:
    case 6057:
    case 6063:
    case 6233:
    case 6236:
    case 6240:
    case 6242:
    case 7568:
    case 7576:
    case 7582:
    case 7728:
    case 7731:
    case 7735:
    case 7737:
      v193 = *(a2 + 2);
      if (*v193 == 1)
      {
        LOWORD(v194) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v193 + 8));
      }

      else
      {
        v194 = *(v193 + 8);
      }

      v367 = v194 & 0x1F;
      if (*(v193 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v193 + 24));
      }

      else
      {
        a1 = *(v193 + 24);
      }

      return v367 & 0xFFFFFFFFFFE0FC1FLL | (32 * (a1 & 0x1F)) | ((*(v193 + 40) & 0x1FLL) << 16) | result;
    case 4551:
    case 4554:
      v1178 = *(a2 + 2);
      if (*v1178 == 1)
      {
        LOWORD(v1179) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1178 + 8));
      }

      else
      {
        v1179 = *(v1178 + 8);
      }

      if (*(v1178 + 16) == 1)
      {
        LOWORD(v1512) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1178 + 24));
      }

      else
      {
        v1512 = *(v1178 + 24);
      }

      if (*(v1178 + 32) == 1)
      {
        LOWORD(v1513) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1178 + 40));
      }

      else
      {
        v1513 = *(v1178 + 40);
      }

      v56 = v1179 & 0x1F;
      v57 = 32 * (v1512 & 0x1F);
      v58 = (v1513 & 0x1F) << 16;
      if (*(v1178 + 48) == 1)
      {
        v1514 = *(*(a1 + 8) + 152);
        v1515 = *(v1178 + 56);
LABEL_3377:
        v109 = (*(*(v1514 + 104) + 2 * v1515) & 3) << 13;
      }

      else
      {
        v109 = (*(v1178 + 56) & 3) << 13;
      }

      return v56 | v57 | v58 | v109 | result;
    case 4552:
      v1310 = *(a2 + 2);
      if (*v1310 == 1)
      {
        LOWORD(v1311) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1310 + 8));
      }

      else
      {
        v1311 = *(v1310 + 8);
      }

      if (*(v1310 + 16) == 1)
      {
        LOWORD(v1610) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1310 + 24));
      }

      else
      {
        v1610 = *(v1310 + 24);
      }

      if (*(v1310 + 32) == 1)
      {
        LOWORD(v1611) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1310 + 40));
      }

      else
      {
        v1611 = *(v1310 + 40);
      }

      v56 = v1311 & 0x1F;
      v57 = 32 * (v1610 & 0x1F);
      v58 = (v1611 & 0x1F) << 16;
      if (*(v1310 + 48) == 1)
      {
        v1612 = *(*(a1 + 8) + 152);
        v1613 = *(v1310 + 56);
LABEL_3742:
        v109 = (*(*(v1612 + 104) + 2 * v1613) & 7) << 12;
      }

      else
      {
        v109 = (*(v1310 + 56) & 7) << 12;
      }

      return v56 | v57 | v58 | v109 | result;
    case 4553:
      v1541 = *(a2 + 2);
      if (*v1541 == 1)
      {
        LOWORD(v1542) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1541 + 8));
      }

      else
      {
        v1542 = *(v1541 + 8);
      }

      if (*(v1541 + 16) == 1)
      {
        LOWORD(v1701) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1541 + 24));
      }

      else
      {
        v1701 = *(v1541 + 24);
      }

      if (*(v1541 + 32) == 1)
      {
        LOWORD(v1702) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1541 + 40));
      }

      else
      {
        v1702 = *(v1541 + 40);
      }

      v56 = v1542 & 0x1F;
      v57 = 32 * (v1701 & 0x1F);
      v58 = (v1702 & 0x1F) << 16;
      if (*(v1541 + 48) == 1)
      {
        v1703 = *(*(a1 + 8) + 152);
        v1704 = *(v1541 + 56);
LABEL_3762:
        LOWORD(v1703) = *(*(v1703 + 104) + 2 * v1704);
      }

      else
      {
        v1703 = *(v1541 + 56);
      }

LABEL_3764:
      v109 = (v1703 & 1) << 14;
      return v56 | v57 | v58 | v109 | result;
    case 4555:
    case 4556:
    case 4557:
      v807 = *(a2 + 2);
      if (*(v807 + 32) == 1)
      {
        v808 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v809) = *(v808 + 2 * *(v807 + 40));
      }

      else
      {
        v809 = *(v807 + 40);
        v808 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1226 = 32 * (v809 & 0x1F);
      v1227 = *(v808 + 2 * *(v807 + 8)) & 0x1E;
      if (*(v807 + 48) == 1)
      {
        LOWORD(v808) = *(v808 + 2 * *(v807 + 56));
      }

      else
      {
        v808 = *(v807 + 56);
      }

      return (v1226 | v1227) & 0xFFFFFFFFFFFC7FFFLL | ((v808 & 7) << 15) | result;
    case 4558:
    case 4559:
    case 4560:
      v812 = *(a2 + 2);
      if (*(v812 + 32) == 1)
      {
        v813 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v814) = *(v813 + 2 * *(v812 + 40));
      }

      else
      {
        v814 = *(v812 + 40);
        v813 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1231 = 32 * (v814 & 0x1F);
      v1232 = *(v813 + 2 * *(v812 + 8)) & 0x1C;
      if (*(v812 + 48) == 1)
      {
        LOWORD(v813) = *(v813 + 2 * *(v812 + 56));
      }

      else
      {
        v813 = *(v812 + 56);
      }

      return (v1231 | v1232) & 0xFFFFFFFFFFFCFFFFLL | ((v813 & 3) << 16) | result;
    case 4561:
    case 4562:
      v962 = *(a2 + 2);
      if (*(v962 + 32) == 1)
      {
        v963 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v964) = *(v963 + 2 * *(v962 + 40));
      }

      else
      {
        v964 = *(v962 + 40);
        v963 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1359 = 32 * (v964 & 0x1F);
      v1360 = *(v963 + 2 * *(v962 + 8));
      v1361 = v1360 & 7 | (8 * ((v1360 >> 4) & 1));
      v1362 = (2 * v1361) & 0x10;
      v1363 = v1361 & 7;
      if (*(v962 + 48) == 1)
      {
        LOWORD(v963) = *(v963 + 2 * *(v962 + 56));
      }

      else
      {
        v963 = *(v962 + 56);
      }

      return (v1359 | v1363 | v1362) & 0xFFFFFFFFFFFC7FFFLL | ((v963 & 7) << 15) | result;
    case 4563:
    case 4564:
      v1183 = *(a2 + 2);
      if (*(v1183 + 32) == 1)
      {
        v1184 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1185) = *(v1184 + 2 * *(v1183 + 40));
      }

      else
      {
        v1185 = *(v1183 + 40);
        v1184 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1518 = 32 * (v1185 & 0x1F);
      v1519 = *(v1184 + 2 * *(v1183 + 8));
      v1520 = v1519 & 3 | (4 * ((v1519 >> 4) & 1));
      v1521 = (4 * v1520) & 0x10;
      v1522 = v1520 & 3;
      if (*(v1183 + 48) == 1)
      {
        LOWORD(v1184) = *(v1184 + 2 * *(v1183 + 56));
      }

      else
      {
        v1184 = *(v1183 + 56);
      }

      return (v1518 | v1522 | v1521) & 0xFFFFFFFFFFFCFFFFLL | ((v1184 & 3) << 16) | result;
    case 4565:
    case 4566:
    case 4567:
      v815 = *(a2 + 2);
      if (*(v815 + 32) == 1)
      {
        LOWORD(v816) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v815 + 40));
      }

      else
      {
        v816 = *(v815 + 40);
      }

      if (*v815 == 1)
      {
        LOWORD(v1233) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v815 + 8));
      }

      else
      {
        v1233 = *(v815 + 8);
      }

      v1234 = 32 * (v816 & 0x1F);
      v1235 = v1233 & 0x1F;
      if (*(v815 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v815 + 56));
      }

      else
      {
        a1 = *(v815 + 56);
      }

      return (v1234 | v1235) & 0xFFFFFFFFFFFC3FFFLL | ((a1 & 0xF) << 14) | result;
    case 4568:
    case 4580:
    case 4585:
      v817 = *(a2 + 2);
      if (*v817 == 1)
      {
        LOWORD(v818) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v817 + 8));
      }

      else
      {
        v818 = *(v817 + 8);
      }

      if (*(v817 + 16) == 1)
      {
        LOWORD(v1236) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v817 + 24));
      }

      else
      {
        v1236 = *(v817 + 24);
      }

      if (*(v817 + 32) == 1)
      {
        LOWORD(v1237) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v817 + 40));
      }

      else
      {
        v1237 = *(v817 + 40);
      }

      v1238 = v818 & 0x1F;
      v1239 = 32 * (v1236 & 0x1F);
      v1240 = (v1237 & 0x1F) << 16;
      if (*(v817 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v817 + 56));
      }

      else
      {
        a1 = *(v817 + 56);
      }

      return (v1238 | v1239 | v1240) & 0xFFFFFFFFFF3FFFFFLL | ((a1 & 3) << 22) | result;
    case 4569:
      v1314 = *(a2 + 2);
      if (*v1314 == 1)
      {
        LOWORD(v1315) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1314 + 8));
      }

      else
      {
        v1315 = *(v1314 + 8);
      }

      if (*(v1314 + 16) == 1)
      {
        LOWORD(v1615) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1314 + 24));
      }

      else
      {
        v1615 = *(v1314 + 24);
      }

      if (*(v1314 + 32) == 1)
      {
        LOWORD(v1616) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1314 + 40));
      }

      else
      {
        v1616 = *(v1314 + 40);
      }

      v1617 = v1315 & 0x1F;
      v1618 = 32 * (v1615 & 0x1F);
      v1619 = (v1616 & 0x1F) << 16;
      if (*(v1314 + 48) == 1)
      {
        v1620 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1314 + 56));
      }

      else
      {
        v1620 = *(v1314 + 56);
      }

      return (v1617 | v1618 | v1619) & 0xFFFFFFFFFF3FFFFFLL | (((v1620 >> 1) & 3) << 22) | ((v1620 & 1) << 12) | result;
    case 4570:
    case 4571:
    case 4572:
      v788 = *(a2 + 2);
      if (*(v788 + 32) == 1)
      {
        v789 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v790) = *(v789 + 2 * *(v788 + 40));
      }

      else
      {
        v790 = *(v788 + 40);
        v789 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1218 = 32 * (v790 & 0x1F);
      v1219 = *(v789 + 2 * *(v788 + 8)) & 0x1E;
      if (*(v788 + 48) == 1)
      {
        LOWORD(v789) = *(v789 + 2 * *(v788 + 56));
      }

      else
      {
        v789 = *(v788 + 56);
      }

      return (v1218 | v1219) & 0xFFFFFFFFFFFE7FFFLL | ((v789 & 3) << 15) | result;
    case 4573:
    case 4574:
      v1173 = *(a2 + 2);
      if (*(v1173 + 32) == 1)
      {
        v1174 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1175) = *(v1174 + 2 * *(v1173 + 40));
      }

      else
      {
        v1175 = *(v1173 + 40);
        v1174 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1509 = 32 * (v1175 & 0x1F);
      v1510 = *(v1174 + 2 * *(v1173 + 8)) & 0x1C;
      if (*(v1173 + 48) == 1)
      {
        LOWORD(v1174) = *(v1174 + 2 * *(v1173 + 56));
      }

      else
      {
        v1174 = *(v1173 + 56);
      }

      return (v1509 | v1510) & 0xFFFFFFFFFFFEFFFFLL | ((v1174 & 1) << 16) | result;
    case 4575:
      v538 = *(a2 + 2);
      v539 = v538[10];
      goto LABEL_1002;
    case 4576:
    case 4577:
      v1093 = *(a2 + 2);
      if (*(v1093 + 32) == 1)
      {
        v1094 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1095) = *(v1094 + 2 * *(v1093 + 40));
      }

      else
      {
        v1095 = *(v1093 + 40);
        v1094 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1448 = 32 * (v1095 & 0x1F);
      v1449 = *(v1094 + 2 * *(v1093 + 8));
      v1450 = v1449 & 7 | (8 * ((v1449 >> 4) & 1));
      v1451 = (2 * v1450) & 0x10;
      v1452 = v1450 & 7;
      if (*(v1093 + 48) == 1)
      {
        LOWORD(v1094) = *(v1094 + 2 * *(v1093 + 56));
      }

      else
      {
        v1094 = *(v1093 + 56);
      }

      return (v1448 | v1452 | v1451) & 0xFFFFFFFFFFFE7FFFLL | ((v1094 & 3) << 15) | result;
    case 4578:
      v1444 = *(a2 + 2);
      if (*(v1444 + 32) == 1)
      {
        v1445 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1446) = *(v1445 + 2 * *(v1444 + 40));
      }

      else
      {
        v1446 = *(v1444 + 40);
        v1445 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1667 = 32 * (v1446 & 0x1F);
      v1668 = *(v1445 + 2 * *(v1444 + 8));
      v1669 = v1668 & 3 | (4 * ((v1668 >> 4) & 1));
      v1670 = (4 * v1669) & 0x10;
      v1671 = v1669 & 3;
      if (*(v1444 + 48) == 1)
      {
        LOWORD(v1445) = *(v1445 + 2 * *(v1444 + 56));
      }

      else
      {
        v1445 = *(v1444 + 56);
      }

      return (v1667 | v1671 | v1670) & 0xFFFFFFFFFFFEFFFFLL | ((v1445 & 1) << 16) | result;
    case 4579:
      v1316 = *(a2 + 2);
      v1317 = *(*(*(a1 + 8) + 152) + 104);
      v1318 = *(v1317 + 2 * *(v1316 + 40));
      LOBYTE(v1317) = *(v1317 + 2 * *(v1316 + 8));
      return (v1317 & 3 | (32 * v1318) | v1317 & 0x10) & 0x3D3 | result;
    case 4581:
    case 4582:
    case 4583:
      v810 = *(a2 + 2);
      if (*(v810 + 32) == 1)
      {
        LOWORD(v811) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v810 + 40));
      }

      else
      {
        v811 = *(v810 + 40);
      }

      if (*v810 == 1)
      {
        LOWORD(v1228) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v810 + 8));
      }

      else
      {
        v1228 = *(v810 + 8);
      }

      v1229 = 32 * (v811 & 0x1F);
      v1230 = v1228 & 0x1F;
      if (*(v810 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v810 + 56));
      }

      else
      {
        a1 = *(v810 + 56);
      }

      return (v1229 | v1230) & 0xFFFFFFFFFFFE3FFFLL | ((a1 & 7) << 14) | result;
    case 4584:
      v1497 = *(a2 + 2);
      if (*v1497 == 1)
      {
        LOWORD(v1498) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1497 + 8));
      }

      else
      {
        v1498 = *(v1497 + 8);
      }

      if (*(v1497 + 16) == 1)
      {
        LOWORD(v1679) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1497 + 24));
      }

      else
      {
        v1679 = *(v1497 + 24);
      }

      if (*(v1497 + 32) == 1)
      {
        LOWORD(v1680) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1497 + 40));
      }

      else
      {
        v1680 = *(v1497 + 40);
      }

      v1681 = v1498 & 0x1F;
      v1682 = 32 * (v1679 & 0x1F);
      v1683 = (v1680 & 0x1F) << 16;
      if (*(v1497 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1497 + 56));
      }

      else
      {
        a1 = *(v1497 + 56);
      }

      return (v1681 | v1682 | v1683) & 0xFFFFFFFFFF7FFFFFLL | ((a1 & 1) << 23) | result;
    case 4589:
      v15 = *(a2 + 2);
      if (*v15 == 1)
      {
        LOWORD(v1364) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 8));
      }

      else
      {
        v1364 = *(v15 + 8);
      }

      if (*(v15 + 32) == 1)
      {
        LOWORD(v1648) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v15 + 40));
      }

      else
      {
        v1648 = *(v15 + 40);
      }

      v37 = v1364 & 0x1F;
      v38 = (v1648 & 0x1F) << 16;
      if (*(v15 + 48) == 1)
      {
LABEL_48:
        v39 = *(*(a1 + 8) + 152);
        v40 = *(v15 + 56);
        goto LABEL_733;
      }

LABEL_103:
      v61 = 32 * (*(v15 + 56) & 0x1FLL);
      return v37 | v38 | v61 | result;
    case 4590:
    case 4591:
    case 4592:
    case 4593:
    case 4729:
    case 4730:
    case 4731:
    case 4732:
      v146 = *(a2 + 2);
      if (*(v146 + 16) == 1)
      {
        LOWORD(v451) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 24));
      }

      else
      {
        v451 = *(v146 + 24);
      }

      if (*v146 == 1)
      {
        LOWORD(v742) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 8));
      }

      else
      {
        v742 = *(v146 + 8);
      }

      if (*(v146 + 64) == 1)
      {
        LOWORD(v323) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 72));
      }

      else
      {
        v323 = *(v146 + 72);
      }

      v316 = (v451 & 7) << 10;
      v317 = v742 & 0x1F;
LABEL_1357:
      v318 = 32 * (v323 & 0x1F);
      if (*(v146 + 48) != 1)
      {
        goto LABEL_2015;
      }

LABEL_1368:
      LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 56));
      return (v316 | v317 | v318) & 0xFFFFFFFFFFE0FFFFLL | ((a1 & 0x1F) << 16) | result;
    case 4631:
    case 4632:
    case 4633:
    case 4634:
    case 5305:
    case 5306:
    case 5307:
    case 5308:
    case 5312:
    case 5313:
    case 5314:
    case 5315:
    case 5316:
    case 5317:
    case 5318:
    case 5319:
    case 5320:
    case 5321:
    case 5322:
    case 5323:
    case 5324:
    case 5325:
    case 5326:
    case 5327:
      v151 = *(a2 + 2);
      if (*(v151 + 32) == 1)
      {
        LOWORD(v152) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v151 + 40));
      }

      else
      {
        v152 = *(v151 + 40);
      }

      if (*(v151 + 48) == 1)
      {
        LOWORD(v321) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v151 + 56));
      }

      else
      {
        v321 = *(v151 + 56);
      }

      v8 = v152 & 0x1F;
      v9 = 32 * (v321 & 0x1F);
      if (*(v151 + 64) == 1)
      {
        v10 = *(*(a1 + 8) + 152);
        v11 = *(v151 + 72);
LABEL_6:
        LOWORD(v10) = *(*(v10 + 104) + 2 * v11);
      }

      else
      {
        v10 = *(v151 + 72);
      }

      return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((v10 & 0x1F) << 16) | result;
    case 4635:
    case 4639:
      v933 = *(a2 + 2);
      v934 = *(*(*(a1 + 8) + 152) + 104);
      v935 = ((*(v933 + 56) << 13) + 24576) & 0x6000 | *(v934 + 2 * *(v933 + 8)) & 0x1E;
      if (*(v933 + 64) == 1)
      {
        LOWORD(v933) = *(v934 + 2 * *(v933 + 72));
      }

      else
      {
        LODWORD(v933) = *(v933 + 72);
      }

      return result | v935 | (32 * (v933 & 7));
    case 4636:
    case 4640:
      v933 = *(a2 + 2);
      v1031 = *(*(*(a1 + 8) + 152) + 104);
      v1032 = *(v1031 + 2 * *(v933 + 8)) & 0x1E;
      goto LABEL_2390;
    case 4637:
    case 4641:
      v999 = *(a2 + 2);
      v981 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v999 + 32) == 1)
      {
        LOWORD(v1096) = *(v981 + 2 * *(v999 + 40));
      }

      else
      {
        v1096 = *(v999 + 40);
      }

      v1330 = ((*(v999 + 56) << 13) + 24576) & 0x6000 | *(v981 + 2 * *(v999 + 8)) & 0x1E | ((v1096 & 1) << 7);
      if (*(v999 + 64) != 1)
      {
        goto LABEL_2956;
      }

      LOWORD(v981) = *(v981 + 2 * *(v999 + 72));
      return result | v1330 | (32 * (v981 & 3));
    case 4638:
    case 4642:
      v1076 = *(a2 + 2);
      v990 = *(*(*(a1 + 8) + 152) + 104);
      v1077 = ((*(v1076 + 56) << 13) + 24576) & 0x6000 | *(v990 + 2 * *(v1076 + 8)) & 0x1E;
      if (*(v1076 + 32) == 1)
      {
        LOWORD(v1180) = *(v990 + 2 * *(v1076 + 40));
      }

      else
      {
        v1180 = *(v1076 + 40);
      }

      v1078 = (v1180 & 3) << 6;
      goto LABEL_3120;
    case 4643:
    case 4647:
      v956 = *(a2 + 2);
      v1177 = *(*(*(a1 + 8) + 152) + 104);
      v958 = ((*(v956 + 56) << 13) + 24576) & 0x6000 | *(v1177 + 2 * *(v956 + 8)) & 0x1C;
      if (*(v956 + 64) == 1)
      {
        LOWORD(v956) = *(v1177 + 2 * *(v956 + 72));
      }

      else
      {
        LODWORD(v956) = *(v956 + 72);
      }

      return result | v958 | (32 * (v956 & 3));
    case 4644:
    case 4648:
      v933 = *(a2 + 2);
      v1031 = *(*(*(a1 + 8) + 152) + 104);
      v1032 = *(v1031 + 2 * *(v933 + 8)) & 0x1C;
LABEL_2390:
      v935 = ((*(v933 + 56) << 13) + 24576) & 0x6000 | v1032;
      if (*(v933 + 32) == 1)
      {
        LOWORD(v933) = *(v1031 + 2 * *(v933 + 40));
      }

      else
      {
        LODWORD(v933) = *(v933 + 40);
      }

      return result | v935 | (32 * (v933 & 7));
    case 4645:
    case 4649:
      v1076 = *(a2 + 2);
      v990 = *(*(*(a1 + 8) + 152) + 104);
      v1077 = ((*(v1076 + 56) << 13) + 24576) & 0x6000 | *(v990 + 2 * *(v1076 + 8)) & 0x1C;
      if (*(v1076 + 32) == 1)
      {
        v1078 = (*(v990 + 2 * *(v1076 + 40)) & 1) << 6;
      }

      else
      {
        v1078 = (*(v1076 + 40) & 1) << 6;
      }

LABEL_3120:
      v1390 = v1077 | v1078;
      if (*(v1076 + 64) != 1)
      {
        goto LABEL_3122;
      }

      LOWORD(v990) = *(v990 + 2 * *(v1076 + 72));
      return result | v1390 | (32 * (v990 & 1));
    case 4646:
    case 4650:
      v956 = *(a2 + 2);
      v957 = *(*(*(a1 + 8) + 152) + 104);
      v958 = ((*(v956 + 56) << 13) + 24576) & 0x6000 | *(v957 + 2 * *(v956 + 8)) & 0x1C;
      if (*(v956 + 32) == 1)
      {
        LOWORD(v956) = *(v957 + 2 * *(v956 + 40));
      }

      else
      {
        LODWORD(v956) = *(v956 + 40);
      }

      return result | v958 | (32 * (v956 & 3));
    case 4651:
      v1371 = *(a2 + 2);
      v1372 = ((*(v1371 + 56) << 13) + 24576) & 0x6000;
      if (*(v1371 + 64) == 1)
      {
        v1373 = *(*(a1 + 8) + 152);
        v1374 = *(v1371 + 72);
        goto LABEL_3068;
      }

      LODWORD(v1374) = *(v1371 + 72);
      goto LABEL_3592;
    case 4652:
      v1367 = *(a2 + 2);
      v1368 = ((*(v1367 + 56) << 13) + 24576) & 0x6000;
      if (*(v1367 + 64) == 1)
      {
        v1369 = *(*(a1 + 8) + 152);
        v1370 = *(v1367 + 72);
        goto LABEL_2844;
      }

      LODWORD(v1370) = *(v1367 + 72);
      goto LABEL_3484;
    case 4653:
    case 4658:
      v983 = *(a2 + 2);
      if (*v983 == 1)
      {
        LOWORD(v984) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v983 + 8));
      }

      else
      {
        v984 = *(v983 + 8);
      }

      v1378 = v984 & 0x1F | ((*(v983 + 56) << 13) + 24576) & 0x6000;
      if (*(v983 + 64) == 1)
      {
        v1379 = *(*(a1 + 8) + 152);
        v1380 = *(v983 + 72);
        goto LABEL_3182;
      }

      LODWORD(v1379) = *(v983 + 72);
      return result | v1378 | (32 * (v1379 & 0xF));
    case 4654:
    case 4659:
      v1076 = *(a2 + 2);
      if (*v1076 == 1)
      {
        LOWORD(v1140) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1076 + 8));
      }

      else
      {
        v1140 = *(v1076 + 8);
      }

      v1493 = v1140 & 0x1F | ((*(v1076 + 56) << 13) + 24576) & 0x6000;
      if (*(v1076 + 16) == 1)
      {
        LOWORD(v1494) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1076 + 24));
      }

      else
      {
        v1494 = *(v1076 + 24);
      }

      v1390 = v1493 | ((v1494 & 7) << 6);
      if (*(v1076 + 64) == 1)
      {
        v990 = *(*(a1 + 8) + 152);
        v1492 = *(v1076 + 72);
LABEL_3048:
        LOWORD(v990) = *(*(v990 + 104) + 2 * v1492);
      }

      else
      {
LABEL_3122:
        LODWORD(v990) = *(v1076 + 72);
      }

      return result | v1390 | (32 * (v990 & 1));
    case 4655:
    case 4660:
      v936 = *(a2 + 2);
      if (*v936 == 1)
      {
        LOWORD(v937) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v936 + 8));
      }

      else
      {
        v937 = *(v936 + 8);
      }

      v1341 = v937 & 0x1F | ((*(v936 + 56) << 13) + 24576) & 0x6000;
      if (*(v936 + 16) == 1)
      {
        LOWORD(v1342) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v936 + 24));
      }

      else
      {
        v1342 = *(v936 + 24);
      }

      v1282 = v1341 | ((v1342 & 1) << 8);
      if (*(v936 + 64) == 1)
      {
        v1283 = *(*(a1 + 8) + 152);
        v1284 = *(v936 + 72);
LABEL_2730:
        LOWORD(v1283) = *(*(v1283 + 104) + 2 * v1284);
      }

      else
      {
        LODWORD(v1283) = *(v936 + 72);
      }

      return result | v1282 | (32 * (v1283 & 7));
    case 4656:
    case 4661:
      v1159 = *(a2 + 2);
      if (*v1159 == 1)
      {
        LOWORD(v1160) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1159 + 8));
      }

      else
      {
        v1160 = *(v1159 + 8);
      }

      v1378 = v1160 & 0x1F | ((*(v1159 + 56) << 13) + 24576) & 0x6000;
      if (*(v1159 + 16) == 1)
      {
        v1379 = *(*(a1 + 8) + 152);
        v1380 = *(v1159 + 24);
LABEL_3182:
        LOWORD(v1379) = *(*(v1379 + 104) + 2 * v1380);
      }

      else
      {
        LODWORD(v1379) = *(v1159 + 24);
      }

      return result | v1378 | (32 * (v1379 & 0xF));
    case 4657:
    case 4662:
      v999 = *(a2 + 2);
      if (*v999 == 1)
      {
        LOWORD(v1000) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v999 + 8));
      }

      else
      {
        v1000 = *(v999 + 8);
      }

      v1397 = v1000 & 0x1F | ((*(v999 + 56) << 13) + 24576) & 0x6000;
      if (*(v999 + 16) == 1)
      {
        LOWORD(v1398) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v999 + 24));
      }

      else
      {
        v1398 = *(v999 + 24);
      }

      v1330 = v1397 | ((v1398 & 3) << 7);
      if (*(v999 + 64) == 1)
      {
        v981 = *(*(a1 + 8) + 152);
        v1331 = *(v999 + 72);
LABEL_2833:
        LOWORD(v981) = *(*(v981 + 104) + 2 * v1331);
      }

      else
      {
LABEL_2956:
        LODWORD(v981) = *(v999 + 72);
      }

      return result | v1330 | (32 * (v981 & 3));
    case 4663:
    case 4667:
      v933 = *(a2 + 2);
      v994 = *(*(*(a1 + 8) + 152) + 104);
      v935 = ((*(v933 + 40) << 13) + 24576) & 0x6000 | *(v994 + 2 * *(v933 + 8)) & 0x1E;
      if (*(v933 + 48) == 1)
      {
        LOWORD(v933) = *(v994 + 2 * *(v933 + 56));
      }

      else
      {
        LODWORD(v933) = *(v933 + 56);
      }

      return result | v935 | (32 * (v933 & 7));
    case 4664:
    case 4668:
      v933 = *(a2 + 2);
      v943 = *(*(*(a1 + 8) + 152) + 104);
      v944 = *(v943 + 2 * *(v933 + 8)) & 0x1E;
      goto LABEL_2418;
    case 4665:
    case 4669:
      v980 = *(a2 + 2);
      v981 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v980 + 16) == 1)
      {
        LOWORD(v982) = *(v981 + 2 * *(v980 + 24));
      }

      else
      {
        v982 = *(v980 + 24);
      }

      v1330 = ((*(v980 + 40) << 13) + 24576) & 0x6000 | *(v981 + 2 * *(v980 + 8)) & 0x1E | ((v982 & 1) << 7);
      if (*(v980 + 48) == 1)
      {
        LOWORD(v981) = *(v981 + 2 * *(v980 + 56));
      }

      else
      {
        LODWORD(v981) = *(v980 + 56);
      }

      return result | v1330 | (32 * (v981 & 3));
    case 4666:
    case 4670:
      v989 = *(a2 + 2);
      v990 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v989 + 16) == 1)
      {
        LOWORD(v991) = *(v990 + 2 * *(v989 + 24));
      }

      else
      {
        v991 = *(v989 + 24);
      }

      v1390 = ((*(v989 + 40) << 13) + 24576) & 0x6000 | *(v990 + 2 * *(v989 + 8)) & 0x1E | ((v991 & 3) << 6);
      if (*(v989 + 48) == 1)
      {
        goto LABEL_2809;
      }

      goto LABEL_3059;
    case 4671:
    case 4675:
      v956 = *(a2 + 2);
      v1135 = *(*(*(a1 + 8) + 152) + 104);
      v958 = ((*(v956 + 40) << 13) + 24576) & 0x6000 | *(v1135 + 2 * *(v956 + 8)) & 0x1C;
      if (*(v956 + 48) == 1)
      {
        LOWORD(v956) = *(v1135 + 2 * *(v956 + 56));
      }

      else
      {
        LODWORD(v956) = *(v956 + 56);
      }

      return result | v958 | (32 * (v956 & 3));
    case 4672:
    case 4676:
      v933 = *(a2 + 2);
      v943 = *(*(*(a1 + 8) + 152) + 104);
      v944 = *(v943 + 2 * *(v933 + 8)) & 0x1C;
LABEL_2418:
      v935 = ((*(v933 + 40) << 13) + 24576) & 0x6000 | v944;
      if (*(v933 + 16) == 1)
      {
        LOWORD(v933) = *(v943 + 2 * *(v933 + 24));
      }

      else
      {
        LODWORD(v933) = *(v933 + 24);
      }

      return result | v935 | (32 * (v933 & 7));
    case 4673:
    case 4677:
      v989 = *(a2 + 2);
      v990 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v989 + 16) == 1)
      {
        LOWORD(v1155) = *(v990 + 2 * *(v989 + 24));
      }

      else
      {
        v1155 = *(v989 + 24);
      }

      v1390 = ((*(v989 + 40) << 13) + 24576) & 0x6000 | *(v990 + 2 * *(v989 + 8)) & 0x1C | ((v1155 & 1) << 6);
      if (*(v989 + 48) == 1)
      {
LABEL_2809:
        LOWORD(v990) = *(v990 + 2 * *(v989 + 56));
      }

      else
      {
LABEL_3059:
        LODWORD(v990) = *(v989 + 56);
      }

      return result | v1390 | (32 * (v990 & 1));
    case 4674:
    case 4678:
      v956 = *(a2 + 2);
      v1039 = *(*(*(a1 + 8) + 152) + 104);
      v958 = ((*(v956 + 40) << 13) + 24576) & 0x6000 | *(v1039 + 2 * *(v956 + 8)) & 0x1C;
      if (*(v956 + 16) == 1)
      {
        LOWORD(v956) = *(v1039 + 2 * *(v956 + 24));
      }

      else
      {
        LODWORD(v956) = *(v956 + 24);
      }

      return result | v958 | (32 * (v956 & 3));
    case 4679:
    case 4683:
      v1121 = *(a2 + 2);
      v939 = *(*(*(a1 + 8) + 152) + 104);
      v940 = ((*(v1121 + 40) << 13) + 24576) & 0x6000 | (((*(v939 + 2 * *(v1121 + 72)) >> 1) & 0xF) << 6);
      if (*(v1121 + 48) == 1)
      {
        LOWORD(v939) = *(v939 + 2 * *(v1121 + 56));
      }

      else
      {
        LODWORD(v939) = *(v1121 + 56);
      }

      return result | v940 | (v939 & 7);
    case 4680:
    case 4684:
      v938 = *(a2 + 2);
      v939 = *(*(*(a1 + 8) + 152) + 104);
      v940 = ((*(v938 + 40) << 13) + 24576) & 0x6000 | (((*(v939 + 2 * *(v938 + 72)) >> 1) & 0xF) << 6);
      goto LABEL_2373;
    case 4681:
    case 4685:
      v213 = *(a2 + 2);
      a1 = *(*(*(a1 + 8) + 152) + 104);
      if (*v213 == 1)
      {
        LOWORD(v1124) = *(a1 + 2 * *(v213 + 8));
      }

      else
      {
        v1124 = *(v213 + 8);
      }

      v418 = ((*(v213 + 40) << 13) + 24576) & 0x6000 | (((*(a1 + 2 * *(v213 + 72)) >> 1) & 0xF) << 6) | (4 * (v1124 & 1));
      if (*(v213 + 48) != 1)
      {
        goto LABEL_2988;
      }

      LOWORD(a1) = *(a1 + 2 * *(v213 + 56));
      return result | v418 | (a1 & 3);
    case 4682:
    case 4686:
      v941 = *(a2 + 2);
      a1 = *(*(*(a1 + 8) + 152) + 104);
      if (*v941 == 1)
      {
        LOWORD(v1097) = *(a1 + 2 * *(v941 + 8));
      }

      else
      {
        v1097 = *(v941 + 8);
      }

      v1147 = ((*(v941 + 40) << 13) + 24576) & 0x6000 | (((*(a1 + 2 * *(v941 + 72)) >> 1) & 0xF) << 6) | (2 * (v1097 & 3));
      if (*(v941 + 48) == 1)
      {
        goto LABEL_2960;
      }

      goto LABEL_3029;
    case 4687:
    case 4691:
      v401 = *(a2 + 2);
      v403 = ((*(v401 + 40) << 13) + 24576) & 0x6000;
      v404 = *(v401 + 72);
      v402 = *(*(*(a1 + 8) + 152) + 104);
LABEL_699:
      v405 = v403 & 0xFFFFFC7F | (((*(v402 + 2 * v404) >> 2) & 7) << 7);
LABEL_703:
      if (*(v401 + 48) == 1)
      {
        LOWORD(v402) = *(v402 + 2 * *(v401 + 56));
      }

      else
      {
        LODWORD(v402) = *(v401 + 56);
      }

      return result | v405 | v402 & 3;
    case 4688:
    case 4692:
      v938 = *(a2 + 2);
      v939 = *(*(*(a1 + 8) + 152) + 104);
      v940 = ((*(v938 + 40) << 13) + 24576) & 0x6000 | (((*(v939 + 2 * *(v938 + 72)) >> 2) & 7) << 7);
LABEL_2373:
      if (*v938 == 1)
      {
        LOWORD(v939) = *(v939 + 2 * *(v938 + 8));
      }

      else
      {
        LODWORD(v939) = *(v938 + 8);
      }

      return result | v940 | (v939 & 7);
    case 4689:
    case 4693:
      v941 = *(a2 + 2);
      a1 = *(*(*(a1 + 8) + 152) + 104);
      if (*v941 == 1)
      {
        LOWORD(v1136) = *(a1 + 2 * *(v941 + 8));
      }

      else
      {
        v1136 = *(v941 + 8);
      }

      v1147 = ((*(v941 + 40) << 13) + 24576) & 0x6000 | (((*(a1 + 2 * *(v941 + 72)) >> 2) & 7) << 7) | (2 * (v1136 & 1));
      if (*(v941 + 48) == 1)
      {
LABEL_2960:
        v1148 = *(v941 + 56);
LABEL_2961:
        LOWORD(a1) = *(a1 + 2 * v1148);
      }

      else
      {
LABEL_3029:
        LODWORD(a1) = *(v941 + 56);
      }

      return result | v1147 | (a1 & 1);
    case 4690:
    case 4694:
      v1156 = *(a2 + 2);
      v1157 = *(*(*(a1 + 8) + 152) + 104);
      v1158 = ((*(v1156 + 40) << 13) + 24576) & 0x6000 | (((*(v1157 + 2 * *(v1156 + 72)) >> 2) & 7) << 7);
      if (*v1156 == 1)
      {
        LOWORD(v1157) = *(v1157 + 2 * *(v1156 + 8));
      }

      else
      {
        LODWORD(v1157) = *(v1156 + 8);
      }

      return result | v1158 | (v1157 & 3);
    case 4695:
      v1371 = *(a2 + 2);
      v1372 = ((*(v1371 + 40) << 13) + 24576) & 0x6000;
      if (*(v1371 + 48) == 1)
      {
        v1373 = *(*(a1 + 8) + 152);
        v1374 = *(v1371 + 56);
LABEL_3068:
        v1503 = *(v1373 + 104);
        LOWORD(v1374) = *(v1503 + 2 * v1374);
      }

      else
      {
        LODWORD(v1374) = *(v1371 + 56);
LABEL_3592:
        v1503 = *(*(*(a1 + 8) + 152) + 104);
      }

      return result | (32 * (v1374 & 7)) | v1372 | *(v1503 + 2 * *(v1371 + 8)) & 0x1E;
    case 4696:
      v1530 = *(a2 + 2);
      if (*(v1530 + 48) == 1)
      {
        v1531 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1532) = *(v1531 + 2 * *(v1530 + 56));
      }

      else
      {
        v1532 = *(v1530 + 56);
        v1531 = *(*(*(a1 + 8) + 152) + 104);
      }

      return result | v1532 & 7 | ((*(v1530 + 40) << 13) + 24576) & 0x6000 | (32 * *(v1531 + 2 * *(v1530 + 72))) & 0x3C0u;
    case 4697:
      v1367 = *(a2 + 2);
      v1368 = ((*(v1367 + 40) << 13) + 24576) & 0x6000;
      if (*(v1367 + 48) == 1)
      {
        v1369 = *(*(a1 + 8) + 152);
        v1370 = *(v1367 + 56);
LABEL_2844:
        v1406 = *(v1369 + 104);
        LOWORD(v1370) = *(v1406 + 2 * v1370);
      }

      else
      {
        LODWORD(v1370) = *(v1367 + 56);
LABEL_3484:
        v1406 = *(*(*(a1 + 8) + 152) + 104);
      }

      return result | (32 * (v1370 & 7)) | v1368 | *(v1406 + 2 * *(v1367 + 8)) & 0x1C;
    case 4698:
      v1485 = *(a2 + 2);
      if (*(v1485 + 48) == 1)
      {
        v1486 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1487) = *(v1486 + 2 * *(v1485 + 56));
      }

      else
      {
        v1487 = *(v1485 + 56);
        v1486 = *(*(*(a1 + 8) + 152) + 104);
      }

      return result | v1487 & 7 | ((*(v1485 + 40) << 13) + 24576) & 0x6000 | (32 * *(v1486 + 2 * *(v1485 + 72))) & 0x380u;
    case 4702:
    case 4705:
    case 4766:
    case 4769:
      v693 = *(a2 + 2);
      if (*v693 == 1)
      {
        LOWORD(v694) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v693 + 8));
      }

      else
      {
        v694 = *(v693 + 8);
      }

      v915 = v694 & 0x1F;
      if (*(v693 + 16) == 1)
      {
        v916 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v693 + 24));
      }

      else
      {
        v916 = *(v693 + 24);
      }

      v917 = v916 >> 5;
      v918 = *(v693 + 40);
      return v915 & 0xFFFFFFFFFFF8FC1FLL | ((v917 & 7) << 16) | (32 * (v916 & 0x1F)) | (v918 >> 3 << 13) | result;
    case 4703:
    case 4706:
    case 4767:
    case 4770:
      v650 = *(a2 + 2);
      if (*v650 == 1)
      {
        LOWORD(v651) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v650 + 8));
      }

      else
      {
        v651 = *(v650 + 8);
      }

      v1038 = v651 & 0x1F;
      if (*(v650 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v650 + 24));
      }

      else
      {
        LODWORD(a1) = *(v650 + 24);
      }

      return v1038 & 0xFFFFFFFFFFF8FC1FLL | ((a1 >> 5) << 16) | (32 * (a1 & 0x1F)) | (((*(v650 + 40) & 0x3FLL) != 8) << 12) | result;
    case 4704:
    case 4708:
    case 4768:
    case 4771:
      v695 = *(a2 + 2);
      if (*v695 == 1)
      {
        LOWORD(v696) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v695 + 8));
      }

      else
      {
        v696 = *(v695 + 8);
      }

      v912 = v696 & 0x1F;
      if (*(v695 + 16) == 1)
      {
        a1 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v695 + 24));
      }

      else
      {
        a1 = *(v695 + 24);
      }

      v913 = a1 >> 5;
      v914 = *(v695 + 40);
LABEL_2269:
      v412 = *(&unk_298D899C8 + (v914 & 0xFFFFFFFFFFFFFFF8));
      v126 = v912 & 0xFFFFFFFFFFF8FFFFLL | ((v913 & 7) << 16);
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 4709:
    case 4710:
      v1122 = *(a2 + 2);
      if (*v1122 == 1)
      {
        LOWORD(v1123) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1122 + 8));
      }

      else
      {
        v1123 = *(v1122 + 8);
      }

      if (*(v1122 + 32) == 2)
      {
        v1432 = 32 * *(v1122 + 40);
      }

      else
      {
        v1458 = *(v1122 + 40);
        v1459 = *(a2 + 1);
        v1785 = v1458;
        v1786 = 0x8900000000;
        v1787 = v1459;
        v1460 = *(a3 + 8);
        v1461 = *a3;
        v1462 = &v1785;
        if (v1460 >= *(a3 + 12))
        {
          v1762 = v1123;
          v1767 = a1;
          v1774 = a2;
          v1783 = result;
          if (v1461 <= &v1785 && v1461 + 24 * v1460 > &v1785)
          {
            v1756 = &v1785 - v1461;
            v1757 = a3;
            sub_298B90A44(a3, (a3 + 16), v1460 + 1, 24);
            a3 = v1757;
            v1461 = *v1757;
            v1462 = &v1756[*v1757];
          }

          else
          {
            v1740 = a3;
            sub_298B90A44(a3, (a3 + 16), v1460 + 1, 24);
            a3 = v1740;
            v1461 = *v1740;
            v1462 = &v1785;
          }

          a2 = v1774;
          result = v1783;
          LOBYTE(v1123) = v1762;
          a1 = v1767;
        }

        v1432 = 0;
        v1463 = v1461 + 24 * *(a3 + 8);
        v1464 = *v1462;
        *(v1463 + 16) = v1462[2];
        *v1463 = v1464;
        ++*(a3 + 8);
        v1122 = *(a2 + 2);
      }

      v1440 = v1123 & 0x1F;
      if (*(v1122 + 48) == 1)
      {
        v1441 = *(*(a1 + 8) + 152);
        v1442 = *(v1122 + 56);
        goto LABEL_2982;
      }

      v1443 = *(v1122 + 56);
      return (v1440 | v1432) & 0xFFFFFFFFFF9FFFFFLL | (((v1443 >> 4) & 3) << 21) | result;
    case 4711:
    case 4712:
      v1089 = *(a2 + 2);
      if (*v1089 == 1)
      {
        LOWORD(v1090) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1089 + 8));
      }

      else
      {
        v1090 = *(v1089 + 8);
      }

      if (*(v1089 + 16) == 2)
      {
        v1432 = 32 * *(v1089 + 24);
      }

      else
      {
        v1433 = *(v1089 + 24);
        v1434 = *(a2 + 1);
        v1785 = v1433;
        v1786 = 0x8900000000;
        v1787 = v1434;
        v1435 = *(a3 + 8);
        v1436 = *a3;
        v1437 = &v1785;
        if (v1435 >= *(a3 + 12))
        {
          v1761 = v1090;
          v1766 = a1;
          v1773 = a2;
          v1782 = result;
          v1739 = a3;
          if (v1436 <= &v1785 && v1436 + 24 * v1435 > &v1785)
          {
            v1755 = &v1785 - v1436;
            sub_298B90A44(a3, (a3 + 16), v1435 + 1, 24);
            a3 = v1739;
            v1436 = *v1739;
            v1437 = &v1755[*v1739];
          }

          else
          {
            sub_298B90A44(a3, (a3 + 16), v1435 + 1, 24);
            a3 = v1739;
            v1436 = *v1739;
            v1437 = &v1785;
          }

          a2 = v1773;
          result = v1782;
          LOBYTE(v1090) = v1761;
          a1 = v1766;
        }

        v1432 = 0;
        v1438 = v1436 + 24 * *(a3 + 8);
        v1439 = *v1437;
        *(v1438 + 16) = v1437[2];
        *v1438 = v1439;
        ++*(a3 + 8);
        v1089 = *(a2 + 2);
      }

      v1440 = v1090 & 0x1F;
      if (*(v1089 + 32) == 1)
      {
        v1441 = *(*(a1 + 8) + 152);
        v1442 = *(v1089 + 40);
LABEL_2982:
        v1443 = *(*(v1441 + 104) + 2 * v1442);
      }

      else
      {
        v1443 = *(v1089 + 40);
      }

      return (v1440 | v1432) & 0xFFFFFFFFFF9FFFFFLL | (((v1443 >> 4) & 3) << 21) | result;
    case 4722:
      v1453 = *(a2 + 2);
      if (*(v1453 + 32) == 1)
      {
        LOWORD(v1454) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1453 + 40));
      }

      else
      {
        v1454 = *(v1453 + 40);
      }

      v1673 = v1454 & 0x1F;
      if (*(v1453 + 16) == 1)
      {
        return v1673 & 0xFFFFFFFFFFFFCFFFLL | ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1453 + 24)) & 3) << 12) | result;
      }

      else
      {
        return v1673 & 0xFFFFFFFFFFFFCFFFLL | ((*(v1453 + 24) & 3) << 12) | result;
      }

    case 4723:
      v1495 = *(a2 + 2);
      if (*(v1495 + 16) == 1)
      {
        LOWORD(v1496) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1495 + 24));
      }

      else
      {
        v1496 = *(v1495 + 24);
      }

      v406 = (v1496 & 7) << 12;
      if (*(v1495 + 32) == 1)
      {
        v1201 = *(*(a1 + 8) + 152);
        v1202 = *(v1495 + 40);
LABEL_2442:
        LOWORD(v1201) = *(*(v1201 + 104) + 2 * v1202);
      }

      else
      {
        v1201 = *(v1495 + 40);
      }

      return v406 | v1201 & 0x1F | result;
    case 4724:
      v204 = *(a2 + 2);
      if (*(v204 + 32) == 1)
      {
        LOWORD(v1538) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v204 + 40));
      }

      else
      {
        v1538 = *(v204 + 40);
      }

      v406 = (v1538 & 7) << 12;
      if (*v204 != 1)
      {
        goto LABEL_3649;
      }

      goto LABEL_2441;
    case 4725:
    case 4726:
      v1125 = *(a2 + 2);
      if (*v1125 == 1)
      {
        LOWORD(v1126) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1125 + 8));
      }

      else
      {
        v1126 = *(v1125 + 8);
      }

      if (*(v1125 + 16) == 2)
      {
        v1465 = 32 * *(v1125 + 24);
      }

      else
      {
        v1466 = *(a2 + 1);
        v1785 = *(v1125 + 24);
        v1786 = 0x8900000000;
        v1787 = v1466;
        v1467 = *(a3 + 8);
        v1468 = *a3;
        v1469 = &v1785;
        if (v1467 >= *(a3 + 12))
        {
          v1763 = v1126;
          v1768 = a1;
          v1775 = a2;
          v1784 = result;
          if (v1468 <= &v1785 && v1468 + 24 * v1467 > &v1785)
          {
            v1758 = &v1785 - v1468;
            v1759 = a3;
            sub_298B90A44(a3, (a3 + 16), v1467 + 1, 24);
            a3 = v1759;
            v1468 = *v1759;
            v1469 = &v1758[*v1759];
          }

          else
          {
            v1741 = a3;
            sub_298B90A44(a3, (a3 + 16), v1467 + 1, 24);
            a3 = v1741;
            v1468 = *v1741;
            v1469 = &v1785;
          }

          a2 = v1775;
          LODWORD(result) = v1784;
          a1 = v1768;
          LOBYTE(v1126) = v1763;
        }

        v1465 = 0;
        v1470 = v1468 + 24 * *(a3 + 8);
        v1471 = *v1469;
        *(v1470 + 16) = v1469[2];
        *v1470 = v1471;
        ++*(a3 + 8);
        v1125 = *(a2 + 2);
      }

      v1472 = v1126 & 0x1F;
      if (*(v1125 + 32) == 1)
      {
        v1473 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1125 + 40));
      }

      else
      {
        v1473 = *(v1125 + 40);
      }

      v1474 = v1472 | result | v1465 | (v1473 << 17) & 0x600000;
      if (*(v1125 + 16) != 2)
      {
        v1475 = *(v1125 + 24);
        if (*v1475 == 4)
        {
          v1476 = *(v1475 + 24) - 69;
          v1477 = v1476 > 0x22;
          v1478 = (1 << v1476) & 0x500070005;
          if (!v1477 && v1478 != 0)
          {
            v1474 &= ~0x40000000u;
          }
        }
      }

      return v1474;
    case 4727:
    case 4728:
      v1008 = *(a2 + 2);
      if (*v1008 == 1)
      {
        LOWORD(v1009) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1008 + 8));
      }

      else
      {
        v1009 = *(v1008 + 8);
      }

      v1401 = v1009 & 0x1F;
      if (*(v1008 + 16) == 1)
      {
        v1402 = *(*(a1 + 8) + 152);
        v1403 = *(v1008 + 24);
        return v1401 & 0xFFFFFFFFFFE0001FLL | (32 * *(*(v1402 + 104) + 2 * v1403)) | result;
      }

      return v1401 & 0xFFFFFFFFFFE0001FLL | (32 * *(v1008 + 24)) | result;
    case 4733:
    case 4734:
      v1047 = *(a2 + 2);
      if (*(v1047 + 16) == 1)
      {
        LOWORD(v1048) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1047 + 24));
      }

      else
      {
        v1048 = *(v1047 + 24);
      }

      v1401 = v1048 & 0x1F;
      if (*v1047 != 1)
      {
        return v1401 & 0xFFFFFFFFFFE0001FLL | (32 * *(v1047 + 8)) | result;
      }

      v1402 = *(*(a1 + 8) + 152);
      v1403 = *(v1047 + 8);
      return v1401 & 0xFFFFFFFFFFE0001FLL | (32 * *(*(v1402 + 104) + 2 * v1403)) | result;
    case 4735:
      v1332 = *(a2 + 2);
      if (*v1332 == 1)
      {
        v1333 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1332 + 8));
      }

      else
      {
        v1333 = *(v1332 + 8);
      }

      v1627 = (v1333 << 13) & 0x70000;
      v1628 = (8 * v1333) & 0xE00;
      v1387 = 32 * (v1333 & 7);
      if (*(v1332 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1332 + 24));
      }

      else
      {
        a1 = *(v1332 + 24);
      }

      v1507 = (a1 & 1) << 8;
      v1508 = v1627 | v1628;
      return v1508 | v1387 | v1507 | result;
    case 4736:
      v1319 = *(a2 + 2);
      if (*v1319 == 1)
      {
        v1320 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1319 + 8));
      }

      else
      {
        v1320 = *(v1319 + 8);
      }

      v37 = (v1320 << 13) & 0x70000;
      v38 = 32 * (v1320 & 7);
      if (*(v1319 + 16) == 1)
      {
        v61 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1319 + 24)) & 0xF) << 8;
      }

      else
      {
        v61 = (*(v1319 + 24) & 0xFLL) << 8;
      }

      return v37 | v38 | v61 | result;
    case 4737:
      v1501 = *(a2 + 2);
      if (*v1501 == 1)
      {
        LOWORD(v1502) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1501 + 8));
      }

      else
      {
        v1502 = *(v1501 + 8);
      }

      v1685 = (v1502 & 7) << 9;
      if (*(v1501 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1501 + 24));
      }

      else
      {
        a1 = *(v1501 + 24);
      }

      return v1685 | ((a1 & 1) << 8) | result;
    case 4741:
    case 4742:
    case 4743:
    case 4744:
    case 5459:
    case 5460:
    case 5461:
    case 5462:
    case 5517:
    case 5518:
    case 5519:
    case 5520:
    case 7235:
    case 7236:
    case 7237:
    case 7238:
    case 7292:
    case 7293:
    case 7294:
    case 7295:
      v199 = *(a2 + 2);
      if (*v199 == 1)
      {
        LOWORD(v200) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v199 + 8));
      }

      else
      {
        v200 = *(v199 + 8);
      }

      v381 = v200 & 0x1F;
      if (*(v199 + 32) != 1)
      {
        return v381 & 0xFFFFFFFFFFFFE01FLL | (32 * *(v199 + 40)) | result;
      }

      v382 = *(*(a1 + 8) + 152);
      v383 = *(v199 + 40);
      return v381 & 0xFFFFFFFFFFFFE01FLL | (32 * *(*(v382 + 104) + 2 * v383)) | result;
    case 4851:
    case 4852:
    case 4853:
    case 4854:
      v644 = *(a2 + 2);
      if (*v644 == 1)
      {
        LOWORD(v645) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v644 + 8));
      }

      else
      {
        v645 = *(v644 + 8);
      }

      v1018 = (32 * *(v644 + 24) + 96) & 0xE0 | v645 & 0xF;
      if (*(v644 + 32) == 1)
      {
        return result | (32 * *(v644 + 24) + 96) & 0xE0 | v645 & 0xF | ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v644 + 40)) & 1u) << 8);
      }

      else
      {
        return result | (32 * *(v644 + 24) + 96) & 0xE0 | v645 & 0xF | ((*(v644 + 40) & 1u) << 8);
      }

    case 4855:
    case 4856:
    case 4857:
    case 4858:
      v656 = *(a2 + 2);
      if (*v656 == 1)
      {
        LOWORD(v657) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v656 + 8));
      }

      else
      {
        v657 = *(v656 + 8);
      }

      v1046 = (32 * *(v656 + 24) + 96) & 0xE0 | v657 & 0xF;
      if (*(v656 + 32) == 1)
      {
        return result | (32 * *(v656 + 24) + 96) & 0xE0 | v657 & 0xF | ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v656 + 40)) & 3u) << 8);
      }

      else
      {
        return result | (32 * *(v656 + 24) + 96) & 0xE0 | v657 & 0xF | ((*(v656 + 40) & 3u) << 8);
      }

    case 4859:
    case 5033:
      v1139 = *(a2 + 2);
      if (*v1139 == 1)
      {
        return *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1139 + 8)) & 0xF | result;
      }

      else
      {
        return *(v1139 + 8) & 0xFLL | result;
      }

    case 4860:
    case 4882:
    case 4883:
    case 4884:
    case 4885:
    case 4944:
    case 4945:
    case 5032:
    case 5034:
    case 5068:
    case 5069:
    case 5070:
    case 5071:
      v98 = *(a2 + 2);
      if (*v98 == 1)
      {
        LOWORD(v274) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v98 + 8));
      }

      else
      {
        v274 = *(v98 + 8);
      }

      v196 = v274 & 0xF;
      if (*(v98 + 16) == 1)
      {
        return v196 & 0xFFFFFFFFFFFFFE1FLL | (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v98 + 24)) & 0xFLL)) | result;
      }

      else
      {
        return v196 & 0xFFFFFFFFFFFFFE1FLL | (32 * (*(v98 + 24) & 0xFLL)) | result;
      }

    case 4861:
    case 4932:
    case 4933:
    case 4934:
    case 4935:
    case 4936:
    case 4941:
    case 4942:
    case 4943:
      v17 = *(a2 + 2);
      if (*v17 == 1)
      {
        LOWORD(v419) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v17 + 8));
      }

      else
      {
        v419 = *(v17 + 8);
      }

      v41 = v419 & 0xF;
      if (*(v17 + 16) == 1)
      {
        v42 = *(*(a1 + 8) + 152);
        v43 = *(v17 + 24);
        return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(*(v42 + 104) + 2 * v43) & 0x1FLL)) | result;
      }

      return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(v17 + 24) & 0x1FLL)) | result;
    case 4862:
      v1324 = *(a2 + 2);
      if (*v1324 == 1)
      {
        LOWORD(v1377) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1324 + 8));
      }

      else
      {
        v1377 = *(v1324 + 8);
      }

      if (*(v1324 + 16) == 1)
      {
        LOWORD(v1649) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1324 + 24));
      }

      else
      {
        v1649 = *(v1324 + 24);
      }

      v1624 = v1377 & 0xF;
      v1625 = 32 * (v1649 & 0x1F);
      if (*(v1324 + 32) != 1)
      {
        goto LABEL_3459;
      }

      goto LABEL_3361;
    case 4863:
      v1343 = *(a2 + 2);
      if (*v1343 == 1)
      {
        LOWORD(v1410) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1343 + 8));
      }

      else
      {
        v1410 = *(v1343 + 8);
      }

      if (*(v1343 + 16) == 1)
      {
        LOWORD(v1657) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1343 + 24));
      }

      else
      {
        v1657 = *(v1343 + 24);
      }

      v1637 = v1410 & 0xF;
      v1638 = 32 * (v1657 & 0x1F);
      if (*(v1343 + 32) != 1)
      {
        goto LABEL_3491;
      }

      goto LABEL_3415;
    case 4864:
      v1345 = *(a2 + 2);
      if (*v1345 == 1)
      {
        LOWORD(v1346) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1345 + 8));
      }

      else
      {
        v1346 = *(v1345 + 8);
      }

      if (*(v1345 + 16) == 1)
      {
        LOWORD(v1639) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1345 + 24));
      }

      else
      {
        v1639 = *(v1345 + 24);
      }

      v1640 = v1346 & 0xF;
      v1641 = 32 * (v1639 & 0x1F);
      if (*(v1345 + 32) == 1)
      {
        goto LABEL_3421;
      }

      goto LABEL_3444;
    case 4865:
      v1526 = *(a2 + 2);
      if (*v1526 == 1)
      {
        LOWORD(v1527) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1526 + 8));
      }

      else
      {
        v1527 = *(v1526 + 8);
      }

      v1687 = v1527 & 0x1F;
      if (*(v1526 + 48) == 1)
      {
        return v1687 & 0xFFFFFFFFFFFFFE1FLL | (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1526 + 56)) & 0xFLL)) | result;
      }

      else
      {
        return v1687 & 0xFFFFFFFFFFFFFE1FLL | (32 * (*(v1526 + 56) & 0xFLL)) | result;
      }

    case 4866:
      v1324 = *(a2 + 2);
      if (*v1324 == 1)
      {
        LOWORD(v1325) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1324 + 8));
      }

      else
      {
        v1325 = *(v1324 + 8);
      }

      if (*(v1324 + 48) == 1)
      {
        LOWORD(v1623) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1324 + 56));
      }

      else
      {
        v1623 = *(v1324 + 56);
      }

      v1624 = v1325 & 0x1F;
      v1625 = 32 * (v1623 & 0xF);
      if (*(v1324 + 32) == 1)
      {
LABEL_3361:
        v1626 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1324 + 40));
      }

      else
      {
LABEL_3459:
        v1626 = *(v1324 + 40);
      }

      return (v1624 | v1625) & 0xFFFFFFFFFFB9FFFFLL | (((v1626 >> 2) & 1) << 22) | ((v1626 & 3) << 17) | result;
    case 4867:
      v1343 = *(a2 + 2);
      if (*v1343 == 1)
      {
        LOWORD(v1344) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1343 + 8));
      }

      else
      {
        v1344 = *(v1343 + 8);
      }

      if (*(v1343 + 48) == 1)
      {
        LOWORD(v1636) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1343 + 56));
      }

      else
      {
        v1636 = *(v1343 + 56);
      }

      v1637 = v1344 & 0x1F;
      v1638 = 32 * (v1636 & 0xF);
      if (*(v1343 + 32) == 1)
      {
LABEL_3415:
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1343 + 40));
      }

      else
      {
LABEL_3491:
        a1 = *(v1343 + 40);
      }

      return (v1637 | v1638) & 0xFFFFFFFFFFFDFFFFLL | ((a1 & 1) << 17) | result;
    case 4868:
      v1345 = *(a2 + 2);
      if (*v1345 == 1)
      {
        LOWORD(v1358) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1345 + 8));
      }

      else
      {
        v1358 = *(v1345 + 8);
      }

      if (*(v1345 + 48) == 1)
      {
        LOWORD(v1647) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1345 + 56));
      }

      else
      {
        v1647 = *(v1345 + 56);
      }

      v1640 = v1358 & 0x1F;
      v1641 = 32 * (v1647 & 0xF);
      if (*(v1345 + 32) == 1)
      {
LABEL_3421:
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1345 + 40));
      }

      else
      {
LABEL_3444:
        a1 = *(v1345 + 40);
      }

      return (v1640 | v1641) & 0xFFFFFFFFFFF9FFFFLL | ((a1 & 3) << 17) | result;
    case 4886:
    case 4892:
    case 4895:
    case 4901:
    case 4904:
    case 4910:
    case 4918:
    case 4924:
      v456 = *(a2 + 2);
      if (*(v456 + 16) == 1)
      {
        LOWORD(v457) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 24));
      }

      else
      {
        v457 = *(v456 + 24);
      }

      if (*(v456 + 32) == 1)
      {
        LOWORD(v747) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 40));
      }

      else
      {
        v747 = *(v456 + 40);
      }

      if (*(v456 + 48) == 1)
      {
        LOWORD(v748) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 56));
      }

      else
      {
        v748 = *(v456 + 56);
      }

      v56 = (v457 & 7) << 10;
      v57 = 32 * (v747 & 0x1F);
      v58 = (v748 & 0x1F) << 16;
      goto LABEL_2190;
    case 4887:
    case 4888:
    case 4889:
    case 4893:
    case 4894:
    case 4896:
    case 4897:
    case 4898:
    case 4902:
    case 4903:
    case 4905:
    case 4906:
    case 4907:
    case 4911:
    case 4912:
    case 4919:
    case 4920:
    case 4921:
    case 4925:
    case 4926:
      v197 = *(a2 + 2);
      if (*(v197 + 16) == 1)
      {
        LOWORD(v198) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v197 + 24));
      }

      else
      {
        v198 = *(v197 + 24);
      }

      if (*(v197 + 32) == 1)
      {
        LOWORD(v377) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v197 + 40));
      }

      else
      {
        v377 = *(v197 + 40);
      }

      if (*(v197 + 48) == 1)
      {
        LOWORD(v378) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v197 + 56));
      }

      else
      {
        v378 = *(v197 + 56);
      }

      v56 = (v198 & 7) << 10;
      v57 = 32 * (v377 & 0x1F);
      v58 = (v378 & 0x1F) << 16;
      if (*v197 == 1)
      {
        v109 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v197 + 8)) & 0xF;
      }

      else
      {
        v109 = *(v197 + 8) & 0xFLL;
      }

      return v56 | v57 | v58 | v109 | result;
    case 4890:
    case 4899:
    case 4908:
    case 4922:
      v456 = *(a2 + 2);
      if (*(v456 + 32) == 1)
      {
        LOWORD(v648) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 40));
      }

      else
      {
        v648 = *(v456 + 40);
      }

      if (*(v456 + 16) == 1)
      {
        LOWORD(v1029) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 24));
      }

      else
      {
        v1029 = *(v456 + 24);
      }

      if (*(v456 + 48) == 1)
      {
        LOWORD(v1030) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 56));
      }

      else
      {
        v1030 = *(v456 + 56);
      }

      v56 = 32 * (v648 & 0x1F);
      v57 = (v1029 & 7) << 10;
      v58 = (v1030 & 0x3F) << 16;
      goto LABEL_2190;
    case 4891:
    case 4900:
    case 4909:
    case 4923:
      v456 = *(a2 + 2);
      if (*(v456 + 48) == 1)
      {
        LOWORD(v683) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 56));
      }

      else
      {
        v683 = *(v456 + 56);
      }

      if (*(v456 + 32) == 1)
      {
        LOWORD(v1105) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 40));
      }

      else
      {
        v1105 = *(v456 + 40);
      }

      if (*(v456 + 16) == 1)
      {
        LOWORD(v1106) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 24));
      }

      else
      {
        v1106 = *(v456 + 24);
      }

      v56 = (v683 & 0x1F) << 16;
      v57 = 32 * (v1105 & 0x1F);
      v58 = (v1106 & 7) << 10;
LABEL_2190:
      if (*v456 == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v456 + 8));
      }

      else
      {
        a1 = *(v456 + 8);
      }

      v109 = a1 & 0xF;
      return v56 | v57 | v58 | v109 | result;
    case 4927:
      v1354 = *(a2 + 2);
      if (*(v1354 + 16) == 1)
      {
        LOWORD(v1355) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1354 + 24));
      }

      else
      {
        v1355 = *(v1354 + 24);
      }

      v1642 = ((v1355 & 0xF) << 10) | ((*(v1354 + 56) << 16) + 196608) & 0x30000;
      if (*(v1354 + 32) == 1)
      {
        LOWORD(v1643) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1354 + 40));
      }

      else
      {
        v1643 = *(v1354 + 40);
      }

      v1644 = v1642 | (32 * (v1643 & 0xF));
      if (*v1354 == 1)
      {
        LOWORD(v1645) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1354 + 8));
      }

      else
      {
        v1645 = *(v1354 + 8);
      }

      v1602 = v1644 | v1645 & 0xFu;
      if (*(v1354 + 64) == 1)
      {
        v1600 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1354 + 72));
      }

      else
      {
        v1600 = *(v1354 + 72);
      }

      v1601 = v1600 >> 2;
      return v1602 & 0xFFFFFFFFFF27FFFFLL | ((v1601 & 3) << 22) | ((v1600 & 3) << 19) | result;
    case 4928:
      v1404 = *(a2 + 2);
      if (*(v1404 + 16) == 1)
      {
        LOWORD(v1405) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1404 + 24));
      }

      else
      {
        v1405 = *(v1404 + 24);
      }

      v1652 = ((v1405 & 0xF) << 10) | ((*(v1404 + 56) << 16) + 196608) & 0x30000;
      if (*(v1404 + 32) == 1)
      {
        LOWORD(v1653) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1404 + 40));
      }

      else
      {
        v1653 = *(v1404 + 40);
      }

      v1654 = v1652 | (32 * (v1653 & 0xF));
      if (*v1404 == 1)
      {
        LOWORD(v1655) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1404 + 8));
      }

      else
      {
        v1655 = *(v1404 + 8);
      }

      v1656 = v1654 | v1655 & 0xF;
      if (*(v1404 + 64) == 1)
      {
        return result | v1656 & 0xFF7FFFFF | ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1404 + 72)) & 1) << 23);
      }

      else
      {
        return result | v1656 & 0xFF7FFFFF | ((*(v1404 + 72) & 1) << 23);
      }

    case 4929:
      v1536 = *(a2 + 2);
      if (*(v1536 + 16) == 1)
      {
        LOWORD(v1537) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1536 + 24));
      }

      else
      {
        v1537 = *(v1536 + 24);
      }

      v1695 = ((v1537 & 0xF) << 10) | ((*(v1536 + 56) << 16) + 196608) & 0x30000;
      if (*(v1536 + 32) == 1)
      {
        LOWORD(v1696) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1536 + 40));
      }

      else
      {
        v1696 = *(v1536 + 40);
      }

      v1697 = v1695 | (32 * (v1696 & 0xF));
      if (*v1536 == 1)
      {
        LOWORD(v1698) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1536 + 8));
      }

      else
      {
        v1698 = *(v1536 + 8);
      }

      v1582 = v1697 | v1698 & 0xFu;
      if (*(v1536 + 64) == 1)
      {
        v1580 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1536 + 72));
      }

      else
      {
        v1580 = *(v1536 + 72);
      }

      v1581 = v1580 >> 1;
      return v1582 & 0xFFFFFFFFFF2FFFFFLL | ((v1581 & 3) << 22) | ((v1580 & 1) << 20) | result;
    case 4930:
      v1533 = *(a2 + 2);
      if (*(v1533 + 16) == 1)
      {
        LOWORD(v1534) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1533 + 24));
      }

      else
      {
        v1534 = *(v1533 + 24);
      }

      v1689 = ((v1534 & 0xF) << 10) | ((*(v1533 + 56) << 16) + 196608) & 0x30000;
      if (*(v1533 + 32) == 1)
      {
        LOWORD(v1690) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1533 + 40));
      }

      else
      {
        v1690 = *(v1533 + 40);
      }

      v1691 = v1689 | (32 * (v1690 & 0xF));
      if (*v1533 == 1)
      {
        LOWORD(v1692) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1533 + 8));
      }

      else
      {
        v1692 = *(v1533 + 8);
      }

      v1693 = v1691 | v1692 & 0xF;
      if (*(v1533 + 64) == 1)
      {
        return result | v1693 & 0xFF3FFFFF | ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1533 + 72)) & 3) << 22);
      }

      else
      {
        return result | v1693 & 0xFF3FFFFF | ((*(v1533 + 72) & 3) << 22);
      }

    case 4931:
      v1356 = *(a2 + 2);
      if (*v1356 == 1)
      {
        LOWORD(v1357) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1356 + 8));
      }

      else
      {
        v1357 = *(v1356 + 8);
      }

      v1646 = (v1357 & 0xF) << 10;
      if (*(v1356 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1356 + 24));
      }

      else
      {
        a1 = *(v1356 + 24);
      }

      return v1646 | (32 * (a1 & 0xF)) | result;
    case 4937:
    case 4938:
    case 4939:
    case 4940:
      return result | (*(*(a2 + 2) + 8) + 3) & 7;
    case 4980:
    case 4981:
    case 4982:
    case 4983:
    case 4988:
    case 4989:
    case 4990:
    case 4991:
    case 5004:
    case 5005:
    case 5006:
    case 5007:
    case 5012:
    case 5013:
    case 5014:
    case 5015:
    case 5020:
    case 5021:
    case 5022:
    case 5023:
    case 5028:
    case 5029:
    case 5030:
    case 5031:
      v96 = *(a2 + 2);
      if (*(v96 + 48) == 1)
      {
        LOWORD(v148) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v96 + 56));
      }

      else
      {
        v148 = *(v96 + 56);
      }

      if (*(v96 + 64) == 1)
      {
        LOWORD(v319) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v96 + 72));
      }

      else
      {
        v319 = *(v96 + 72);
      }

      v37 = (v148 & 0x1F) << 16;
      v38 = 32 * (v319 & 0x1F);
      if (*(v96 + 32) == 1)
      {
LABEL_321:
        a1 = *(*(a1 + 8) + 152);
        v45 = *(v96 + 40);
LABEL_322:
        LOWORD(a1) = *(*(a1 + 104) + 2 * v45);
      }

      else
      {
LABEL_512:
        a1 = *(v96 + 40);
      }

      goto LABEL_1282;
    case 5035:
    case 5036:
      v1036 = *(a2 + 2);
      if (*v1036 == 1)
      {
        LOWORD(v1037) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1036 + 8));
      }

      else
      {
        v1037 = *(v1036 + 8);
      }

      v1411 = v1037 & 0x1F;
      if (*(v1036 + 16) == 1)
      {
        return v1411 & 0xFFFFFFFFFFFFF81FLL | (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1036 + 24)) & 0x3FLL)) | result;
      }

      else
      {
        return v1411 & 0xFFFFFFFFFFFFF81FLL | (32 * (*(v1036 + 24) & 0x3FLL)) | result;
      }

    case 5040:
    case 5043:
    case 8038:
    case 8039:
      v407 = *(a2 + 2);
      if (*v407 != 1)
      {
        return *(v407 + 8) & 0x1FLL | result;
      }

      v408 = *(*(a1 + 8) + 152);
      v409 = *(v407 + 8);
      return *(*(v408 + 104) + 2 * v409) & 0x1F | result;
    case 5076:
      v1399 = *(a2 + 2);
      if (*v1399 == 1)
      {
        LOWORD(v1400) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1399 + 8));
      }

      else
      {
        v1400 = *(v1399 + 8);
      }

      if (*(v1399 + 16) == 1)
      {
        LOWORD(v1651) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1399 + 24));
      }

      else
      {
        v1651 = *(v1399 + 24);
      }

      v37 = 32 * (v1400 & 0x1F);
      v38 = (v1651 & 0x3F) << 15;
      if (*(v1399 + 32) == 1)
      {
        v61 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1399 + 40)) & 0xF;
      }

      else
      {
        v61 = *(v1399 + 40) & 0xFLL;
      }

      return v37 | v38 | v61 | result;
    case 5079:
      v1528 = *(a2 + 2);
      if (*v1528 == 1)
      {
        LOWORD(v1529) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1528 + 8));
      }

      else
      {
        v1529 = *(v1528 + 8);
      }

      if (*(v1528 + 32) == 1)
      {
        LOWORD(v1688) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1528 + 40));
      }

      else
      {
        v1688 = *(v1528 + 40);
      }

      if (*(v1528 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1528 + 24));
      }

      else
      {
        a1 = *(v1528 + 24);
      }

      return v1529 & 7 | ((v1529 << 9) & 0x3000) | (v1529 << 10) & 0x8000 | (32 * (v1688 & 0x1F)) | ((a1 & 0x1F) << 16) | result;
    case 5083:
    case 5369:
    case 5980:
    case 5998:
    case 6071:
    case 6086:
    case 6165:
    case 6221:
    case 6261:
    case 7535:
    case 7590:
    case 7704:
    case 7785:
    case 8034:
      v268 = *(a2 + 2);
      if (*v268 == 1)
      {
        LOWORD(v269) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v268 + 8));
      }

      else
      {
        v269 = *(v268 + 8);
      }

      v126 = v269 & 0x1F;
      if (*(v268 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v268 + 40));
      }

      else
      {
        a1 = *(v268 + 40);
      }

      v412 = (458752 * *(v268 + 56)) & 0x70000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 5084:
    case 5370:
    case 5981:
    case 5999:
    case 6072:
    case 6087:
    case 6167:
    case 6223:
    case 6263:
    case 7536:
    case 7591:
    case 7706:
    case 7787:
    case 8036:
      v206 = *(a2 + 2);
      if (*v206 == 1)
      {
        LOWORD(v267) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v206 + 8));
      }

      else
      {
        v267 = *(v206 + 8);
      }

      v126 = v267 & 0x1F;
      if (*(v206 + 32) != 1)
      {
        goto LABEL_861;
      }

      goto LABEL_713;
    case 5085:
    case 5371:
    case 5982:
    case 6000:
    case 6073:
    case 6088:
    case 6168:
    case 6224:
    case 6264:
    case 7537:
    case 7592:
    case 7707:
    case 7788:
    case 8037:
      v265 = *(a2 + 2);
      if (*v265 == 1)
      {
        LOWORD(v266) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v265 + 8));
      }

      else
      {
        v266 = *(v265 + 8);
      }

      v126 = v266 & 0x1F;
      if (*(v265 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v265 + 40));
      }

      else
      {
        a1 = *(v265 + 40);
      }

      v412 = (2031616 * *(v265 + 56)) & 0x1F0000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 5086:
    case 5372:
    case 5989:
    case 6007:
    case 6077:
    case 6092:
    case 6170:
    case 6176:
    case 6226:
    case 6232:
    case 6266:
    case 6272:
    case 7544:
    case 7596:
    case 7709:
    case 7715:
    case 7790:
    case 7796:
      v210 = *(a2 + 2);
      if (*(v210 + 16) == 1)
      {
        LOWORD(v211) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v210 + 24));
      }

      else
      {
        v211 = *(v210 + 24);
      }

      v126 = v211 & 0x1F;
      if (*(v210 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v210 + 40));
      }

      else
      {
        a1 = *(v210 + 40);
      }

      v339 = *(v210 + 56);
      goto LABEL_725;
    case 5089:
    case 5375:
    case 5992:
    case 6010:
    case 6080:
    case 6095:
    case 6171:
    case 6174:
    case 6227:
    case 6230:
    case 6267:
    case 6270:
    case 7547:
    case 7599:
    case 7710:
    case 7713:
    case 7791:
    case 7794:
      v208 = *(a2 + 2);
      if (*(v208 + 16) == 1)
      {
        LOWORD(v209) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v208 + 24));
      }

      else
      {
        v209 = *(v208 + 24);
      }

      v126 = v209 & 0x1F;
      if (*(v208 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v208 + 40));
      }

      else
      {
        a1 = *(v208 + 40);
      }

      v216 = *(v208 + 56);
LABEL_719:
      v412 = (2031616 * v216) & 0x1F0000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 5090:
    case 5376:
    case 5993:
    case 6011:
    case 6081:
    case 6096:
    case 6173:
    case 6175:
    case 6229:
    case 6231:
    case 6269:
    case 6271:
    case 7548:
    case 7600:
    case 7712:
    case 7714:
    case 7793:
    case 7795:
      v206 = *(a2 + 2);
      if (*(v206 + 16) == 1)
      {
        LOWORD(v207) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v206 + 24));
      }

      else
      {
        v207 = *(v206 + 24);
      }

      v126 = v207 & 0x1F;
      if (*(v206 + 32) == 1)
      {
LABEL_713:
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v206 + 40));
      }

      else
      {
LABEL_861:
        a1 = *(v206 + 40);
      }

      v168 = *(v206 + 56);
LABEL_863:
      v127 = 983040 * v168;
LABEL_864:
      v412 = *&v127 & 0xF0000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 5091:
    case 5377:
    case 5986:
    case 5994:
    case 6004:
    case 6012:
    case 6074:
    case 6082:
    case 6089:
    case 6097:
    case 6214:
    case 6220:
    case 6254:
    case 6260:
    case 7541:
    case 7549:
    case 7593:
    case 7601:
    case 7694:
    case 7700:
    case 7749:
    case 7755:
      v166 = *(a2 + 2);
      if (*v166 == 1)
      {
        LOWORD(v167) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v166 + 8));
      }

      else
      {
        v167 = *(v166 + 8);
      }

      v126 = v167 & 0x1F;
      if (*(v166 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v166 + 24));
      }

      else
      {
        a1 = *(v166 + 24);
      }

      v339 = *(v166 + 40);
LABEL_725:
      v412 = (458752 * v339) & 0x70000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 5208:
    case 7082:
      v410 = *(a2 + 2);
      if (*v410 == 1)
      {
        LOWORD(v1035) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v410 + 8));
      }

      else
      {
        v1035 = *(v410 + 8);
      }

      if (*(v410 + 16) == 1)
      {
        LOWORD(v1408) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v410 + 24));
      }

      else
      {
        v1408 = *(v410 + 24);
      }

      if (*(v410 + 32) == 1)
      {
        LOWORD(v1409) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v410 + 40));
      }

      else
      {
        v1409 = *(v410 + 40);
      }

      v56 = v1035 & 0x1F;
      v57 = 32 * (v1408 & 0x1F);
      v58 = (v1409 & 0x3F) << 16;
      if (*(v410 + 48) == 1)
      {
LABEL_1144:
        v604 = *(*(a1 + 8) + 152);
        v605 = *(v410 + 56);
LABEL_1145:
        v109 = (*(*(v604 + 104) + 2 * v605) & 0x3F) << 10;
      }

      else
      {
LABEL_2866:
        v109 = (*(v410 + 56) & 0x3FLL) << 10;
      }

      return v56 | v57 | v58 | v109 | result;
    case 5282:
    case 7157:
      v1061 = *(a2 + 2);
      if (*v1061 == 1)
      {
        LOWORD(v1062) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1061 + 8));
      }

      else
      {
        v1062 = *(v1061 + 8);
      }

      if (*(v1061 + 32) == 1)
      {
        LOWORD(v1426) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1061 + 40));
      }

      else
      {
        v1426 = *(v1061 + 40);
      }

      if (*(v1061 + 64) == 1)
      {
        LOWORD(v1427) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1061 + 72));
      }

      else
      {
        v1427 = *(v1061 + 72);
      }

      v56 = v1062 & 0x1F;
      v57 = 32 * (v1426 & 0x1F);
      v58 = (v1427 & 1) << 20;
      if (*(v1061 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1061 + 56)) & 0xF) << 16;
      }

      else
      {
        v109 = (*(v1061 + 56) & 0xFLL) << 16;
      }

      return v56 | v57 | v58 | v109 | result;
    case 5284:
    case 7159:
      v1133 = *(a2 + 2);
      if (*v1133 == 1)
      {
        LOWORD(v1134) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1133 + 8));
      }

      else
      {
        v1134 = *(v1133 + 8);
      }

      if (*(v1133 + 32) == 1)
      {
        LOWORD(v1483) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1133 + 40));
      }

      else
      {
        v1483 = *(v1133 + 40);
      }

      if (*(v1133 + 64) == 1)
      {
        LOWORD(v1484) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1133 + 72));
      }

      else
      {
        v1484 = *(v1133 + 72);
      }

      v56 = v1134 & 0x1F;
      v57 = 32 * (v1483 & 0x1F);
      v58 = (v1484 & 3) << 19;
      if (*(v1133 + 48) == 1)
      {
        v109 = (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1133 + 56)) & 7) << 16;
      }

      else
      {
        v109 = (*(v1133 + 56) & 7) << 16;
      }

      return v56 | v57 | v58 | v109 | result;
    case 5293:
    case 5294:
    case 5295:
    case 5296:
      v642 = *(a2 + 2);
      v643 = *(*(*(a1 + 8) + 152) + 104);
      return result | ((*(v642 + 24) << 10) + 3072) & 0x1C00 | (((*(v643 + 2 * *(v642 + 56)) >> 1) & 0xF) << 17) | (((*(v643 + 2 * *(v642 + 40)) >> 1) & 0xF) << 6) | *(v643 + 2 * *(v642 + 8)) & 0x1Eu;
    case 5297:
    case 5298:
    case 5299:
    case 5300:
      v658 = *(a2 + 2);
      v659 = *(*(*(a1 + 8) + 152) + 104);
      return result | ((*(v658 + 24) << 10) + 3072) & 0x1C00 | (((*(v659 + 2 * *(v658 + 56)) >> 2) & 7) << 18) | (((*(v659 + 2 * *(v658 + 40)) >> 2) & 7) << 7) | *(v659 + 2 * *(v658 + 8)) & 0x1Cu;
    case 5301:
    case 5302:
    case 5303:
    case 5304:
      v48 = *(a2 + 2);
      if (*(v48 + 16) == 1)
      {
        LOWORD(v649) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 24));
      }

      else
      {
        v649 = *(v48 + 24);
      }

      if (*v48 == 1)
      {
        LOWORD(v1033) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 8));
      }

      else
      {
        v1033 = *(v48 + 8);
      }

      if (*(v48 + 48) == 1)
      {
        LOWORD(v1034) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v48 + 56));
      }

      else
      {
        v1034 = *(v48 + 56);
      }

      v56 = (v649 & 0xF) << 10;
      v57 = v1033 & 0x1F;
      v58 = (v1034 & 0x1F) << 16;
      if (*(v48 + 32) == 1)
      {
LABEL_159:
        v102 = *(*(a1 + 8) + 152);
        v103 = *(v48 + 40);
LABEL_552:
        v109 = 32 * (*(*(v102 + 104) + 2 * v103) & 0x1F);
      }

      else
      {
LABEL_1993:
        v109 = 32 * (*(v48 + 40) & 0x1FLL);
      }

      return v56 | v57 | v58 | v109 | result;
    case 5340:
    case 5411:
      v303 = *(a2 + 2);
      if (*(v303 + 16) == 1)
      {
        LOWORD(v1051) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v303 + 24));
      }

      else
      {
        v1051 = *(v303 + 24);
      }

      v41 = v1051 & 0x1F;
      if (*(v303 + 32) != 1)
      {
        return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(v303 + 40) & 0x1FLL)) | result;
      }

LABEL_2887:
      v42 = *(*(a1 + 8) + 152);
      v43 = *(v303 + 40);
      return v41 & 0xFFFFFFFFFFFFFC1FLL | (32 * (*(*(v42 + 104) + 2 * v43) & 0x1FLL)) | result;
    case 5358:
    case 5361:
    case 6028:
    case 6033:
    case 6047:
    case 6059:
    case 7566:
    case 7578:
      v454 = *(a2 + 2);
      if (*v454 == 1)
      {
        LOWORD(v455) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v454 + 8));
      }

      else
      {
        v455 = *(v454 + 8);
      }

      v745 = v455 & 0x1F;
      if (*(v454 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v454 + 24));
      }

      else
      {
        a1 = *(v454 + 24);
      }

      v746 = *(v454 + 40);
      return v745 & 0xFFFFFFFFFFC0FC1FLL | (32 * (a1 & 0x1F)) | ((v746 & 0x3F) << 16) | result;
    case 5359:
    case 5365:
    case 6027:
    case 6031:
    case 6037:
    case 6046:
    case 6051:
    case 6067:
    case 6239:
    case 6244:
    case 7565:
    case 7570:
    case 7586:
    case 7734:
    case 7739:
      v254 = *(a2 + 2);
      if (*v254 == 1)
      {
        LOWORD(v255) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v254 + 8));
      }

      else
      {
        v255 = *(v254 + 8);
      }

      v471 = v255 & 0x1F;
      if (*(v254 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v254 + 24));
      }

      else
      {
        a1 = *(v254 + 24);
      }

      v472 = *(v254 + 40);
      return v471 & 0xFFFFFFFFFFF8FC1FLL | (32 * (a1 & 0x1F)) | ((v472 & 7) << 16) | result;
    case 5362:
    case 5364:
    case 6029:
    case 6034:
    case 6036:
    case 6048:
    case 6061:
    case 6065:
    case 6241:
    case 6243:
    case 7567:
    case 7580:
    case 7584:
    case 7736:
    case 7738:
      v252 = *(a2 + 2);
      if (*v252 == 1)
      {
        LOWORD(v253) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v252 + 8));
      }

      else
      {
        v253 = *(v252 + 8);
      }

      v469 = v253 & 0x1F;
      if (*(v252 + 16) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v252 + 24));
      }

      else
      {
        a1 = *(v252 + 24);
      }

      v470 = *(v252 + 40);
      return v469 & 0xFFFFFFFFFFF0FC1FLL | (32 * (a1 & 0x1F)) | ((v470 & 0xF) << 16) | result;
    case 5392:
      v1395 = *(a2 + 2);
      if (*v1395 == 1)
      {
        LOWORD(v1396) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1395 + 8));
      }

      else
      {
        v1396 = *(v1395 + 8);
      }

      v1650 = v1396 & 0x1F;
      if (*(v1395 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1395 + 40));
      }

      else
      {
        a1 = *(v1395 + 40);
      }

      return v1650 & 0xFFFFFFFFFFF8FC1FLL | (32 * (a1 & 0x1F)) | ((*(v1395 + 56) & 7) << 16) | result;
    case 5393:
      v1339 = *(a2 + 2);
      if (*v1339 == 1)
      {
        LOWORD(v1340) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1339 + 8));
      }

      else
      {
        v1340 = *(v1339 + 8);
      }

      v797 = v1340 & 0x1F;
      if (*(v1339 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1339 + 40));
      }

      else
      {
        a1 = *(v1339 + 40);
      }

      v1614 = *(v1339 + 56);
LABEL_3408:
      v798 = (v1614 - 64);
      return v797 & 0xFFFFFFFFFFA0FC1FLL | (32 * (a1 & 0x1F)) | (((v798 >> 5) & 1) << 22) | ((v798 & 0x1F) << 16) | result;
    case 5394:
      v1499 = *(a2 + 2);
      if (*v1499 == 1)
      {
        LOWORD(v1500) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1499 + 8));
      }

      else
      {
        v1500 = *(v1499 + 8);
      }

      v1684 = v1500 & 0x1F;
      if (*(v1499 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1499 + 40));
      }

      else
      {
        a1 = *(v1499 + 40);
      }

      return v1684 & 0xFFFFFFFFFFF0FC1FLL | (32 * (a1 & 0x1F)) | ((*(v1499 + 56) & 0xFLL) << 16) | result;
    case 5395:
      v1016 = *(a2 + 2);
      if (*v1016 == 1)
      {
        LOWORD(v1017) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1016 + 8));
      }

      else
      {
        v1017 = *(v1016 + 8);
      }

      goto LABEL_3595;
    case 5396:
    case 5399:
      v1167 = *(a2 + 2);
      if (*(v1167 + 16) == 1)
      {
        LOWORD(v1168) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1167 + 24));
      }

      else
      {
        v1168 = *(v1167 + 24);
      }

      v745 = v1168 & 0x1F;
      if (*(v1167 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1167 + 40));
      }

      else
      {
        a1 = *(v1167 + 40);
      }

      v746 = *(v1167 + 56);
      return v745 & 0xFFFFFFFFFFC0FC1FLL | (32 * (a1 & 0x1F)) | ((v746 & 0x3F) << 16) | result;
    case 5397:
    case 5403:
      v1119 = *(a2 + 2);
      if (*(v1119 + 16) == 1)
      {
        LOWORD(v1120) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1119 + 24));
      }

      else
      {
        v1120 = *(v1119 + 24);
      }

      v471 = v1120 & 0x1F;
      if (*(v1119 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1119 + 40));
      }

      else
      {
        a1 = *(v1119 + 40);
      }

      v472 = *(v1119 + 56);
      return v471 & 0xFFFFFFFFFFF8FC1FLL | (32 * (a1 & 0x1F)) | ((v472 & 7) << 16) | result;
    case 5398:
    case 5401:
      v1016 = *(a2 + 2);
      if (*(v1016 + 16) == 1)
      {
        LOWORD(v1017) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1016 + 24));
      }

      else
      {
        v1017 = *(v1016 + 24);
      }

LABEL_3595:
      v1686 = v1017 & 0x1F;
      if (*(v1016 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1016 + 40));
      }

      else
      {
        a1 = *(v1016 + 40);
      }

      return v1686 & 0xFFFFFFFFFFE0FC1FLL | (32 * (a1 & 0x1F)) | ((*(v1016 + 56) & 0x1FLL) << 16) | result;
    case 5400:
    case 5402:
      v1019 = *(a2 + 2);
      if (*(v1019 + 16) == 1)
      {
        LOWORD(v1020) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1019 + 24));
      }

      else
      {
        v1020 = *(v1019 + 24);
      }

      v469 = v1020 & 0x1F;
      if (*(v1019 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1019 + 40));
      }

      else
      {
        a1 = *(v1019 + 40);
      }

      v470 = *(v1019 + 56);
      return v469 & 0xFFFFFFFFFFF0FC1FLL | (32 * (a1 & 0x1F)) | ((v470 & 0xF) << 16) | result;
    case 5407:
    case 5408:
    case 5409:
    case 5410:
      v146 = *(a2 + 2);
      if (*(v146 + 16) == 1)
      {
        LOWORD(v652) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 24));
      }

      else
      {
        v652 = *(v146 + 24);
      }

      if (*(v146 + 32) == 1)
      {
        LOWORD(v1040) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 40));
      }

      else
      {
        v1040 = *(v146 + 40);
      }

      if (*(v146 + 64) == 1)
      {
        LOWORD(v1041) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v146 + 72));
      }

      else
      {
        v1041 = *(v146 + 72);
      }

      v316 = v652 & 0x1F;
      v317 = 32 * (v1040 & 0x1F);
      v318 = (v1041 & 3) << 12;
      if (*(v146 + 48) == 1)
      {
        a1 = *(*(a1 + 8) + 152);
        v1042 = *(v146 + 56);
        goto LABEL_2014;
      }

LABEL_2015:
      a1 = *(v146 + 56);
      return (v316 | v317 | v318) & 0xFFFFFFFFFFE0FFFFLL | ((a1 & 0x1F) << 16) | result;
    case 5439:
    case 5441:
    case 5497:
    case 5499:
    case 7215:
    case 7217:
    case 7272:
    case 7274:
      v463 = *(a2 + 2);
      if (*v463 == 1)
      {
        LOWORD(v464) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v463 + 8));
      }

      else
      {
        v464 = *(v463 + 8);
      }

      if (*(v463 + 16) == 1)
      {
        LOWORD(v756) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v463 + 24));
      }

      else
      {
        v756 = *(v463 + 24);
      }

      v757 = v464 & 0x1F;
      v758 = 32 * (v756 & 0x1F);
      if (*(v463 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v463 + 40));
      }

      else
      {
        a1 = *(v463 + 40);
      }

      return (v757 | v758) & 0xFFFFFFFFFFFC03FFLL | (a1 << 10) | result;
    case 5531:
    case 5552:
    case 5575:
    case 5596:
    case 5754:
    case 5759:
    case 5779:
    case 5784:
    case 7306:
    case 7327:
    case 7350:
    case 7371:
      v294 = *(a2 + 2);
      if (*v294 == 1)
      {
        LOWORD(v295) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v294 + 8));
      }

      else
      {
        v295 = *(v294 + 8);
      }

      if (*(v294 + 32) == 1)
      {
        LOWORD(v508) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v294 + 40));
      }

      else
      {
        v508 = *(v294 + 40);
      }

      if (*(v294 + 48) == 1)
      {
        LOWORD(v509) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v294 + 56));
      }

      else
      {
        v509 = *(v294 + 56);
      }

      v510 = v295 & 0x1F;
      v511 = 32 * (v508 & 0x1F);
      v512 = (v509 & 0xF) << 16;
      if (*(v294 + 64) == 1)
      {
        v513 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v294 + 72));
      }

      else
      {
        v513 = *(v294 + 72);
      }

      return (v510 | v511 | v512) & 0xFFFFFFFFFFEFFFFFLL | (((v513 >> 1) & 1) << 20) | ((v513 & 1) << 11) | result;
    case 5537:
    case 5581:
    case 7312:
    case 7356:
      v485 = *(a2 + 2);
      if (*(v485 + 80) == 1)
      {
        LOWORD(v685) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 88));
      }

      else
      {
        v685 = *(v485 + 88);
      }

      v722 = ((*(v485 + 40) << 13) + 24576) & 0x6000 | ((v685 & 0xF) << 16);
      if (*(v485 + 96) == 1)
      {
        LOWORD(v1109) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 104));
      }

      else
      {
        v1109 = *(v485 + 104);
      }

      if (*(v485 + 64) == 1)
      {
        LOWORD(v776) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 72));
      }

      else
      {
        v776 = *(v485 + 72);
      }

      v725 = (v1109 << 13) & 0x8000;
      v726 = (v1109 & 3) << 10;
LABEL_2212:
      v727 = 32 * (v776 & 0x1F);
      if (*(v485 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v485 + 56));
      }

      else
      {
        a1 = *(v485 + 56);
      }

      v728 = a1 & 3;
      return v725 | v722 | v726 | v727 | v728 | result;
    case 5543:
    case 5587:
    case 7318:
    case 7362:
      v483 = *(a2 + 2);
      if (*(v483 + 80) == 1)
      {
        LOWORD(v681) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v483 + 88));
      }

      else
      {
        v681 = *(v483 + 88);
      }

      v772 = ((*(v483 + 40) << 13) + 24576) & 0x6000 | ((v681 & 0xF) << 16);
      if (*(v483 + 96) == 1)
      {
        v773 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v483 + 104));
      }

      else
      {
        v773 = *(v483 + 104);
      }

      v774 = (v773 << 8) & 0x400;
LABEL_2166:
      v1098 = 2 * (v773 & 3);
      if (*(v483 + 48) == 1)
      {
        v1099 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1100) = *(v1099 + 2 * *(v483 + 56));
      }

      else
      {
        v1100 = *(v483 + 56);
        v1099 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1101 = v1100 & 1;
LABEL_2170:
      v1102 = (32 * *(v1099 + 2 * *(v483 + 72))) & 0x3C0;
      return v774 | v772 | v1098 | v1101 | result | v1102;
    case 5549:
    case 5593:
    case 7324:
    case 7368:
      v487 = *(a2 + 2);
      if (*(v487 + 80) == 1)
      {
        LOWORD(v682) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v487 + 88));
      }

      else
      {
        v682 = *(v487 + 88);
      }

      v772 = ((*(v487 + 40) << 13) + 24576) & 0x6000 | ((v682 & 0xF) << 16);
      if (*(v487 + 96) == 1)
      {
        v777 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v487 + 104));
      }

      else
      {
        v777 = *(v487 + 104);
      }

      v774 = (v777 << 8) & 0x400;
LABEL_2176:
      v1098 = 2 * (v777 & 3);
      if (*(v487 + 48) == 1)
      {
        v1103 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v1104) = *(v1103 + 2 * *(v487 + 56));
      }

      else
      {
        v1104 = *(v487 + 56);
        v1103 = *(*(*(a1 + 8) + 152) + 104);
      }

      v1101 = v1104 & 1;
LABEL_2180:
      v1102 = (32 * *(v1103 + 2 * *(v487 + 72))) & 0x380;
      return v774 | v772 | v1098 | v1101 | result | v1102;
    case 5646:
    case 7419:
      v1127 = *(a2 + 2);
      if (*v1127 == 1)
      {
        LOWORD(v1128) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1127 + 8));
      }

      else
      {
        v1128 = *(v1127 + 8);
      }

      if (*(v1127 + 16) == 1)
      {
        LOWORD(v1480) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1127 + 24));
      }

      else
      {
        v1480 = *(v1127 + 24);
      }

      v1481 = v1128 & 0x1F;
      v1482 = 32 * (v1480 & 0x1F);
      if (*(v1127 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1127 + 40));
      }

      else
      {
        a1 = *(v1127 + 40);
      }

      return result | v1481 | v1482 | ((a1 & 0x1F) << 16) | 0x7C00;
    case 5647:
    case 5652:
    case 5836:
    case 5841:
    case 7420:
    case 7425:
      v542 = *(a2 + 2);
      if (*v542 == 1)
      {
        LOWORD(v543) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v542 + 8));
      }

      else
      {
        v543 = *(v542 + 8);
      }

      if (*(v542 + 16) == 1)
      {
        LOWORD(v842) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v542 + 24));
      }

      else
      {
        v842 = *(v542 + 24);
      }

      if (*(v542 + 32) == 1)
      {
        LOWORD(v843) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v542 + 40));
      }

      else
      {
        v843 = *(v542 + 40);
      }

      v510 = v543 & 0x1F;
      v511 = 32 * (v842 & 0x1F);
      v512 = (v843 & 0xF) << 16;
      if (*(v542 + 48) == 1)
      {
        v513 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v542 + 56));
      }

      else
      {
        v513 = *(v542 + 56);
      }

      return (v510 | v511 | v512) & 0xFFFFFFFFFFEFFFFFLL | (((v513 >> 1) & 1) << 20) | ((v513 & 1) << 11) | result;
    case 5648:
    case 5653:
    case 5837:
    case 5842:
    case 7421:
    case 7426:
      v536 = *(a2 + 2);
      if (*v536 == 1)
      {
        LOWORD(v537) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v536 + 8));
      }

      else
      {
        v537 = *(v536 + 8);
      }

      if (*(v536 + 16) == 1)
      {
        LOWORD(v838) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v536 + 24));
      }

      else
      {
        v838 = *(v536 + 24);
      }

      if (*(v536 + 32) == 1)
      {
        LOWORD(v839) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v536 + 40));
      }

      else
      {
        v839 = *(v536 + 40);
      }

      v355 = v537 & 0x1F;
      v356 = 32 * (v838 & 0x1F);
      v357 = (v839 & 7) << 16;
      if (*(v536 + 48) == 1)
      {
        v840 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v536 + 56));
      }

      else
      {
        v840 = *(v536 + 56);
      }

      v359 = v840 >> 1;
      v360 = (v840 & 1) << 11;
      return (v355 | v356 | v357) & 0xFFFFFFFFFFE7FFFFLL | ((v359 & 3) << 19) | v360 | result;
    case 5667:
    case 5668:
    case 5669:
    case 5670:
      v19 = *(a2 + 2);
      if (*(v19 + 16) == 1)
      {
        LOWORD(v23) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v19 + 24));
      }

      else
      {
        v23 = *(v19 + 24);
      }

      if (*(v19 + 32) != 1)
      {
        v37 = (v23 & 7) << 10;
        v38 = 32 * (*(v19 + 40) & 0x1FLL);
        if (*v19 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_1281;
      }

      v50 = *(*(a1 + 8) + 152);
      v51 = *(v19 + 40);
LABEL_69:
      v37 = (v23 & 7) << 10;
      v38 = 32 * (*(*(v50 + 104) + 2 * v51) & 0x1F);
      if (*v19 != 1)
      {
        goto LABEL_1281;
      }

      goto LABEL_70;
    case 5983:
    case 6001:
    case 6014:
    case 6017:
    case 7538:
    case 7551:
      v530 = *(a2 + 2);
      v531 = *(*(*(a1 + 8) + 152) + 104);
      v532 = (32 * *(v531 + 2 * *(v530 + 24))) & 0x380;
      if (*v530 == 1)
      {
        LOWORD(v531) = *(v531 + 2 * *(v530 + 8));
      }

      else
      {
        v531 = *(v530 + 8);
      }

      return v532 | v531 & 0x1F | (2031616 * *(v530 + 40)) & 0x1F0000 | result;
    case 5984:
    case 6002:
    case 6015:
    case 6018:
    case 7539:
    case 7552:
      v533 = *(a2 + 2);
      v534 = *(*(*(a1 + 8) + 152) + 104);
      v535 = (32 * *(v534 + 2 * *(v533 + 24))) & 0x380;
      if (*v533 == 1)
      {
        LOWORD(v534) = *(v534 + 2 * *(v533 + 8));
      }

      else
      {
        v534 = *(v533 + 8);
      }

      return v535 & 0xFFFFFFFFFFA0FFFFLL | v534 & 0x1F | ((((64 - *(v533 + 40)) >> 5) & 1) << 22) | (((64 - *(v533 + 40)) & 0x1FLL) << 16) | result;
    case 5985:
    case 6003:
    case 7540:
      v791 = *(a2 + 2);
      if (*v791 == 1)
      {
        v792 = *(*(*(a1 + 8) + 152) + 104);
        LOWORD(v793) = *(v792 + 2 * *(v791 + 8));
      }

      else
      {
        v793 = *(v791 + 8);
        v792 = *(*(*(a1 + 8) + 152) + 104);
      }

      return (983040 * *(v791 + 40)) & 0xF0000 | v793 & 0x1F | (((*(v792 + 2 * *(v791 + 24)) >> 1) & 0xF) << 6) | result;
    case 6013:
    case 6016:
    case 7550:
      v799 = *(a2 + 2);
      v800 = (983040 * *(v799 + 40)) & 0xF0000;
      v801 = *(*(*(a1 + 8) + 152) + 104);
      v802 = (32 * *(v801 + 2 * *(v799 + 24))) & 0x3C0;
      if (*v799 == 1)
      {
        LOWORD(v799) = *(v801 + 2 * *(v799 + 8));
      }

      else
      {
        v799 = *(v799 + 8);
      }

      return v800 | v802 | v799 & 0x1F | result;
    case 6166:
    case 6222:
    case 6262:
    case 7705:
    case 7786:
    case 8035:
      v504 = *(a2 + 2);
      if (*v504 == 1)
      {
        LOWORD(v505) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v504 + 8));
      }

      else
      {
        v505 = *(v504 + 8);
      }

      v797 = v505 & 0x1F;
      if (*(v504 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v504 + 40));
      }

      else
      {
        a1 = *(v504 + 40);
      }

      v798 = (64 - *(v504 + 56));
      return v797 & 0xFFFFFFFFFFA0FC1FLL | (32 * (a1 & 0x1F)) | (((v798 >> 5) & 1) << 22) | ((v798 & 0x1F) << 16) | result;
    case 6169:
    case 6172:
    case 6225:
    case 6228:
    case 6265:
    case 6268:
    case 7708:
    case 7711:
    case 7789:
    case 7792:
      v379 = *(a2 + 2);
      if (*(v379 + 16) == 1)
      {
        LOWORD(v380) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v379 + 24));
      }

      else
      {
        v380 = *(v379 + 24);
      }

      v126 = v380 & 0x1F;
      if (*(v379 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v379 + 40));
      }

      else
      {
        a1 = *(v379 + 40);
      }

      v443 = *(v379 + 56);
LABEL_1098:
      v412 = (4128768 * v443) & 0x3F0000;
      return v126 & 0xFFFFFFFFFFFFFC1FLL | (32 * (a1 & 0x1F)) | result | v412;
    case 6274:
    case 6277:
    case 6281:
    case 6288:
    case 6294:
    case 6301:
    case 6307:
      v29 = *(a2 + 2);
      if (*(v29 + 16) == 1)
      {
        LOWORD(v489) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 24));
      }

      else
      {
        v489 = *(v29 + 24);
      }

      if (*(v29 + 48) == 1)
      {
        LOWORD(v778) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 56));
      }

      else
      {
        v778 = *(v29 + 56);
      }

      if (*(v29 + 32) == 1)
      {
        LOWORD(v779) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 40));
      }

      else
      {
        v779 = *(v29 + 40);
      }

      v56 = (v489 & 7) << 10;
      v57 = (v778 & 0x1F) << 16;
      v58 = 32 * (v779 & 0x1F);
      if (*v29 == 1)
      {
LABEL_177:
        v109 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v29 + 8)) & 0x1F;
      }

      else
      {
LABEL_1453:
        v109 = *(v29 + 8) & 0x1FLL;
      }

      return v56 | v57 | v58 | v109 | result;
    case 6472:
    case 6507:
    case 6539:
    case 6571:
      v664 = *(a2 + 2);
      if (*v664 == 1)
      {
        LOWORD(v665) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v664 + 8));
      }

      else
      {
        v665 = *(v664 + 8);
      }

      if (*(v664 + 32) == 1)
      {
        LOWORD(v1055) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v664 + 40));
      }

      else
      {
        v1055 = *(v664 + 40);
      }

      v1056 = v665 & 0x1F;
      v1057 = 32 * (v1055 & 0x1F);
      if (*(v664 + 16) == 1)
      {
        v1058 = *(*(a1 + 8) + 152);
        v1059 = *(v664 + 24);
LABEL_2140:
        v1060 = *(*(v1058 + 104) + 2 * v1059);
      }

      else
      {
        v1060 = *(v664 + 24);
      }

      return (v1056 | v1057) & 0xFFFFFFFFBFFFE7FFLL | (((v1060 >> 2) & 1) << 30) | ((v1060 & 3) << 11) | result;
    case 6473:
    case 6508:
    case 6540:
    case 6572:
      v653 = *(a2 + 2);
      if (*(v653 + 16) == 1)
      {
        LOWORD(v654) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 24));
      }

      else
      {
        v654 = *(v653 + 24);
      }

      if (*(v653 + 48) == 1)
      {
        LOWORD(v1043) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 56));
      }

      else
      {
        v1043 = *(v653 + 56);
      }

      if (*(v653 + 32) == 1)
      {
        v1044 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 40));
      }

      else
      {
        v1044 = *(v653 + 40);
      }

      v1023 = v654 & 0x1F;
      v1024 = 32 * (v1043 & 0x1F);
      v1025 = (v1044 << 28) & 0x40000000;
      v1026 = (v1044 & 3) << 11;
      goto LABEL_2127;
    case 6474:
    case 6509:
    case 6541:
    case 6573:
      v662 = *(a2 + 2);
      if (*v662 == 1)
      {
        LOWORD(v663) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v662 + 8));
      }

      else
      {
        v663 = *(v662 + 8);
      }

      if (*(v662 + 32) == 1)
      {
        LOWORD(v1050) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v662 + 40));
      }

      else
      {
        v1050 = *(v662 + 40);
      }

      v966 = v663 & 0x1F;
      v967 = 32 * (v1050 & 0x1F);
      if (*(v662 + 16) == 1)
      {
        v968 = *(*(a1 + 8) + 152);
        v969 = *(v662 + 24);
LABEL_2051:
        v970 = *(*(v968 + 104) + 2 * v969);
      }

      else
      {
        v970 = *(v662 + 24);
      }

      return (v966 | v967) & 0xFFFFFFFFBFFFEFFFLL | (((v970 >> 1) & 1) << 30) | ((v970 & 1) << 12) | result;
    case 6475:
    case 6510:
    case 6542:
    case 6574:
      v653 = *(a2 + 2);
      if (*(v653 + 16) == 1)
      {
        LOWORD(v677) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 24));
      }

      else
      {
        v677 = *(v653 + 24);
      }

      if (*(v653 + 48) == 1)
      {
        LOWORD(v1087) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 56));
      }

      else
      {
        v1087 = *(v653 + 56);
      }

      if (*(v653 + 32) == 1)
      {
        v1088 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 40));
      }

      else
      {
        v1088 = *(v653 + 40);
      }

      v1023 = v677 & 0x1F;
      v1024 = 32 * (v1087 & 0x1F);
      v1025 = (v1088 << 29) & 0x40000000;
      v1026 = (v1088 & 1) << 12;
      goto LABEL_2127;
    case 6476:
    case 6511:
    case 6543:
    case 6575:
    case 6593:
      v573 = *(a2 + 2);
      if (*v573 == 1)
      {
        LOWORD(v574) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v573 + 8));
      }

      else
      {
        v574 = *(v573 + 8);
      }

      if (*(v573 + 32) == 1)
      {
        LOWORD(v874) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v573 + 40));
      }

      else
      {
        v874 = *(v573 + 40);
      }

      v875 = v574 & 0x1F;
      v876 = 32 * (v874 & 0x1F);
      if (*(v573 + 16) == 1)
      {
        v877 = *(*(a1 + 8) + 152);
        v878 = *(v573 + 24);
LABEL_1699:
        LOWORD(v877) = *(*(v877 + 104) + 2 * v878);
      }

      else
      {
        v877 = *(v573 + 24);
      }

      return (v875 | v876) & 0xFFFFFFFFBFFFFFFFLL | ((v877 & 1) << 30) | result;
    case 6477:
    case 6512:
    case 6544:
    case 6576:
      v687 = *(a2 + 2);
      if (*(v687 + 16) == 1)
      {
        LOWORD(v688) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v687 + 24));
      }

      else
      {
        v688 = *(v687 + 24);
      }

      if (*(v687 + 48) == 1)
      {
        LOWORD(v1112) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v687 + 56));
      }

      else
      {
        v1112 = *(v687 + 56);
      }

      if (*(v687 + 32) == 1)
      {
        LOWORD(v1113) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v687 + 40));
      }

      else
      {
        v1113 = *(v687 + 40);
      }

      v56 = v688 & 0x1F;
      v57 = 32 * (v1112 & 0x1F);
      v58 = (v1113 & 1) << 30;
      if (*(v687 + 64) == 1)
      {
        v1114 = *(*(a1 + 8) + 152);
        v1115 = *(v687 + 72);
LABEL_2254:
        v109 = (*(*(v1114 + 104) + 2 * v1115) & 0x1F) << 16;
      }

      else
      {
        v109 = (*(v687 + 72) & 0x1FLL) << 16;
      }

      return v56 | v57 | v58 | v109 | result;
    case 6478:
    case 6513:
    case 6545:
    case 6577:
      v689 = *(a2 + 2);
      if (*v689 == 1)
      {
        LOWORD(v690) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v689 + 8));
      }

      else
      {
        v690 = *(v689 + 8);
      }

      if (*(v689 + 32) == 1)
      {
        LOWORD(v1116) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v689 + 40));
      }

      else
      {
        v1116 = *(v689 + 40);
      }

      v1064 = v690 & 0x1F;
      v1065 = 32 * (v1116 & 0x1F);
      if (*(v689 + 16) == 1)
      {
        v1066 = *(*(a1 + 8) + 152);
        v1067 = *(v689 + 24);
LABEL_2242:
        v1068 = *(*(v1066 + 104) + 2 * v1067);
      }

      else
      {
        v1068 = *(v689 + 24);
      }

      return (v1064 | v1065) & 0xFFFFFFFFBFFFE3FFLL | (((v1068 >> 3) & 1) << 30) | ((v1068 & 7) << 10) | result;
    case 6479:
    case 6514:
    case 6546:
    case 6578:
      v653 = *(a2 + 2);
      if (*(v653 + 16) == 1)
      {
        LOWORD(v670) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 24));
      }

      else
      {
        v670 = *(v653 + 24);
      }

      if (*(v653 + 48) == 1)
      {
        LOWORD(v1073) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 56));
      }

      else
      {
        v1073 = *(v653 + 56);
      }

      if (*(v653 + 32) == 1)
      {
        v1074 = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v653 + 40));
      }

      else
      {
        v1074 = *(v653 + 40);
      }

      v1023 = v670 & 0x1F;
      v1024 = 32 * (v1073 & 0x1F);
      v1025 = (v1074 << 27) & 0x40000000;
      v1026 = (v1074 & 7) << 10;
LABEL_2127:
      if (*(v653 + 64) == 1)
      {
        v1027 = *(*(a1 + 8) + 152);
        v1028 = *(v653 + 72);
LABEL_2129:
        LOWORD(v1027) = *(*(v1027 + 104) + 2 * v1028);
      }

      else
      {
        v1027 = *(v653 + 72);
      }

      return v1023 | v1024 | v1025 | v1026 | ((v1027 & 0x1F) << 16) | result;
    case 6486:
    case 6588:
    case 6756:
    case 6760:
      v67 = *(a2 + 2);
      if (*(v67 + 16) == 1)
      {
        LOWORD(v680) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v67 + 24));
      }

      else
      {
        v680 = *(v67 + 24);
      }

      if (*v67 == 1)
      {
        LOWORD(v1092) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v67 + 8));
      }

      else
      {
        v1092 = *(v67 + 8);
      }

      v122 = 32 * (v680 & 0x1F);
      v123 = v1092 & 0x1F;
      if (*(v67 + 32) == 1)
      {
LABEL_202:
        v124 = *(*(a1 + 8) + 152);
        v125 = *(v67 + 40);
LABEL_266:
        LOWORD(v124) = *(*(v124 + 104) + 2 * v125);
      }

      else
      {
LABEL_2148:
        v124 = *(v67 + 40);
      }

      return (v122 | v123) & 0xFFFFFFFFFFE00FFFLL | ((v124 & 0x1FF) << 12) | result;
    case 6580:
    case 6581:
      v1014 = *(a2 + 2);
      if (*(v1014 + 16) == 1)
      {
        LOWORD(v1015) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1014 + 24));
      }

      else
      {
        v1015 = *(v1014 + 24);
      }

      if (*(v1014 + 32) == 1)
      {
        LOWORD(v1407) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1014 + 40));
      }

      else
      {
        v1407 = *(v1014 + 40);
      }

      v8 = v1015 & 0x1F;
      v9 = 32 * (v1407 & 0x1F);
      if (*v1014 == 1)
      {
        v10 = *(*(a1 + 8) + 152);
        v47 = *(v1014 + 8);
        goto LABEL_97;
      }

      return (v8 | v9) & 0xFFFFFFFFFFE0FFFFLL | ((*(v1014 + 8) & 0x1FLL) << 16) | result;
    case 6613:
    case 6614:
    case 6748:
    case 6749:
      v160 = *(a2 + 2);
      if (*v160 == 1)
      {
        LOWORD(v684) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 8));
      }

      else
      {
        v684 = *(v160 + 8);
      }

      if (*(v160 + 16) == 1)
      {
        LOWORD(v1107) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 24));
      }

      else
      {
        v1107 = *(v160 + 24);
      }

      if (*(v160 + 32) == 1)
      {
        LOWORD(v1108) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 40));
      }

      else
      {
        v1108 = *(v160 + 40);
      }

      v56 = (v684 & 0x1F) << 16;
      v57 = v1107 & 0x1F;
      v58 = (v1108 & 0x1F) << 10;
      if (*(v160 + 48) == 1)
      {
        v109 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v160 + 56)) & 0x1F);
      }

      else
      {
LABEL_2203:
        v109 = 32 * (*(v160 + 56) & 0x1FLL);
      }

      return v56 | v57 | v58 | v109 | result;
    case 6615:
    case 6616:
    case 6617:
    case 6618:
    case 6750:
    case 6751:
    case 6752:
    case 6753:
      v461 = *(a2 + 2);
      if (*v461 == 1)
      {
        LOWORD(v462) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v461 + 8));
      }

      else
      {
        v462 = *(v461 + 8);
      }

      if (*(v461 + 16) == 1)
      {
        LOWORD(v753) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v461 + 24));
      }

      else
      {
        v753 = *(v461 + 24);
      }

      v754 = (v462 & 0x1F) << 16;
      v755 = v753 & 0x1F;
      if (*(v461 + 32) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v461 + 40));
      }

      else
      {
        a1 = *(v461 + 40);
      }

      return result | v754 | v755 | (32 * (a1 & 0x1F)) | 0x7C00;
    case 6858:
    case 6859:
    case 6860:
    case 7831:
    case 7832:
    case 7833:
      v538 = *(a2 + 2);
      v539 = v538[6];
LABEL_1002:
      v540 = *(*(*(a1 + 8) + 152) + 104);
      return *(v540 + 2 * v538[2]) & 0x1C | (((*(v540 + 2 * v539) >> 1) & 0xF) << 6) | result;
    case 6907:
      v1412 = *(a2 + 2);
      if (*v1412 == 1)
      {
        LOWORD(v1413) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1412 + 8));
      }

      else
      {
        v1413 = *(v1412 + 8);
      }

      if (*(v1412 + 16) == 1)
      {
        LOWORD(v1658) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1412 + 24));
      }

      else
      {
        v1658 = *(v1412 + 24);
      }

      if (*(v1412 + 32) == 1)
      {
        LOWORD(v1659) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1412 + 40));
      }

      else
      {
        v1659 = *(v1412 + 40);
      }

      if (*(v1412 + 48) == 1)
      {
        LOWORD(v1660) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1412 + 56));
      }

      else
      {
        v1660 = *(v1412 + 56);
      }

      v348 = v1413 & 0x1F;
      v349 = (v1658 & 7) << 16;
      v350 = (v1659 & 0xF) << 12;
      v351 = (v1660 & 0xF) << 8;
      if (*(v1412 + 64) == 1)
      {
        v1421 = *(*(a1 + 8) + 152);
        v1422 = *(v1412 + 72);
        goto LABEL_3505;
      }

      v1421 = *(v1412 + 72);
      goto LABEL_3507;
    case 6908:
    case 6910:
      v1052 = *(a2 + 2);
      if (*(v1052 + 64) == 1)
      {
        LOWORD(v1053) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1052 + 72));
      }

      else
      {
        v1053 = *(v1052 + 72);
      }

      if (*v1052 == 1)
      {
        LOWORD(v1418) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1052 + 8));
      }

      else
      {
        v1418 = *(v1052 + 8);
      }

      if (*(v1052 + 16) == 1)
      {
        LOWORD(v1419) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1052 + 24));
      }

      else
      {
        v1419 = *(v1052 + 24);
      }

      if (*(v1052 + 32) == 1)
      {
        LOWORD(v1420) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1052 + 40));
      }

      else
      {
        v1420 = *(v1052 + 40);
      }

      v348 = v1053 & 0x1F;
      v349 = (v1418 & 7) << 16;
      v350 = (v1419 & 0xF) << 12;
      v351 = (v1420 & 0xF) << 8;
      if (*(v1052 + 48) == 1)
      {
        v1421 = *(*(a1 + 8) + 152);
        v1422 = *(v1052 + 56);
LABEL_3505:
        LOWORD(v1421) = *(*(v1421 + 104) + 2 * v1422);
      }

      else
      {
        v1421 = *(v1052 + 56);
      }

LABEL_3507:
      v352 = 32 * (v1421 & 7);
      return v348 | v349 | v350 | v351 | v352 | result;
    case 6909:
      v1416 = *(a2 + 2);
      if (*v1416 == 1)
      {
        LOWORD(v1417) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1416 + 8));
      }

      else
      {
        v1417 = *(v1416 + 8);
      }

      if (*(v1416 + 16) == 1)
      {
        LOWORD(v1663) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1416 + 24));
      }

      else
      {
        v1663 = *(v1416 + 24);
      }

      if (*(v1416 + 32) == 1)
      {
        LOWORD(v1664) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1416 + 40));
      }

      else
      {
        v1664 = *(v1416 + 40);
      }

      v56 = (v1417 & 7) << 16;
      v57 = (v1663 & 0xF) << 12;
      v58 = (v1664 & 0xF) << 8;
      if (*(v1416 + 48) == 1)
      {
        v109 = 32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1416 + 56)) & 7);
      }

      else
      {
        v109 = 32 * (*(v1416 + 56) & 7);
      }

      return v56 | v57 | v58 | v109 | result;
    case 6931:
    case 6932:
    case 6949:
    case 6950:
      v675 = *(a2 + 2);
      if (*v675 == 1)
      {
        LOWORD(v676) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v675 + 8));
      }

      else
      {
        v676 = *(v675 + 8);
      }

      if (*(v675 + 16) == 1)
      {
        LOWORD(v1083) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v675 + 24));
      }

      else
      {
        v1083 = *(v675 + 24);
      }

      v834 = v676 & 0x1F;
      v835 = (v1083 & 0x1F) << 19;
      if (*(v675 + 32) == 2)
      {
        v1084 = 32 * (*(v675 + 40) & 0x3FFFLL);
      }

      else
      {
        v1085 = *(a2 + 1);
        v1785 = *(v675 + 40);
        v1086 = 0x8A00000000;
LABEL_3145:
        v1786 = v1086;
        v1787 = v1085;
        v890 = *(a3 + 8);
        v891 = *a3;
        v892 = &v1785;
        if (v890 >= *(a3 + 12))
        {
          v1764 = v834;
          v1769 = v835;
          v1776 = result;
          if (v891 <= &v1785 && v891 + 24 * v890 > &v1785)
          {
            v1744 = &v1785 - v891;
            v893 = a3;
            v1745 = (a3 + 16);
LABEL_3815:
            sub_298B90A44(v893, v1745, v890 + 1, 24);
            a3 = v893;
            v891 = *v893;
            v892 = &v1744[*v893];
          }

          else
          {
            v893 = a3;
            v894 = (a3 + 16);
LABEL_3782:
            sub_298B90A44(v893, v894, v890 + 1, 24);
            a3 = v893;
            v891 = *v893;
            v892 = &v1785;
          }

          v835 = v1769;
          result = v1776;
          v834 = v1764;
        }

LABEL_3146:
        v1084 = 0;
        v1524 = v891 + 24 * *(a3 + 8);
        v1525 = *v892;
        *(v1524 + 16) = v892[2];
        *v1524 = v1525;
        ++*(a3 + 8);
      }

      return v834 | v835 | v1084 | result;
    case 6933:
    case 6934:
    case 6935:
    case 6936:
    case 6937:
    case 6938:
    case 6939:
    case 6940:
      v71 = *(a2 + 2);
      if (*v71 == 1)
      {
        LOWORD(v460) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 8));
      }

      else
      {
        v460 = *(v71 + 8);
      }

      if (*(v71 + 48) == 1)
      {
        LOWORD(v752) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v71 + 56));
      }

      else
      {
        v752 = *(v71 + 56);
      }

      v37 = v460 & 0x1F;
      v38 = (v752 & 0x1F) << 16;
      if (*(v71 + 32) == 1)
      {
LABEL_732:
        v39 = *(*(a1 + 8) + 152);
        v40 = *(v71 + 40);
        goto LABEL_733;
      }

LABEL_1395:
      v61 = 32 * (*(v71 + 40) & 0x1FLL);
      return v37 | v38 | v61 | result;
    case 6954:
    case 6955:
    case 6956:
    case 6957:
    case 6970:
    case 6971:
    case 6972:
    case 6973:
    case 7843:
    case 7844:
    case 7845:
    case 7846:
    case 7859:
    case 7860:
    case 7861:
    case 7862:
    case 8057:
    case 8058:
    case 8059:
    case 8060:
    case 8073:
    case 8074:
    case 8075:
    case 8076:
      v144 = *(a2 + 2);
      if (*v144 == 1)
      {
        LOWORD(v145) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v144 + 8));
      }

      else
      {
        v145 = *(v144 + 8);
      }

      if (*(v144 + 32) == 1)
      {
        LOWORD(v307) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v144 + 40));
      }

      else
      {
        v307 = *(v144 + 40);
      }

      v37 = v145 & 0xF;
      v38 = (v307 & 0xF) << 16;
      if (*(v144 + 16) == 1)
      {
        v308 = *(*(a1 + 8) + 152);
        v309 = *(v144 + 24);
LABEL_3191:
        v61 = 32 * (*(*(v308 + 104) + 2 * v309) & 0xF);
      }

      else
      {
        v61 = 32 * (*(v144 + 24) & 0xFLL);
      }

      return v37 | v38 | v61 | result;
    case 7132:
      v1457 = *(a2 + 2);
      if (*v1457 == 1)
      {
        return *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1457 + 8)) | result;
      }

      else
      {
        return *(v1457 + 8) | result;
      }

    case 7883:
    case 7884:
    case 7885:
    case 7886:
    case 7887:
    case 8097:
    case 8098:
    case 8099:
    case 8100:
    case 8101:
      v384 = *(a2 + 2);
      v385 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v384 + 32) == 1)
      {
        LOWORD(v386) = *(v385 + 2 * *(v384 + 40));
      }

      else
      {
        v386 = *(v384 + 40);
      }

      v593 = *(v385 + 2 * *(v384 + 8)) & 0x1ELL;
      v594 = (v386 & 0x1F) << 16;
      if (*(v384 + 16) == 1)
      {
        LOWORD(v385) = *(v385 + 2 * *(v384 + 24));
      }

      else
      {
        v385 = *(v384 + 24);
      }

      return v594 | v593 | (32 * (v385 & 0x1F)) | result;
    case 7895:
    case 7896:
    case 7897:
    case 7898:
    case 7911:
    case 7912:
    case 7913:
    case 7914:
    case 7927:
    case 7928:
    case 7929:
    case 7930:
    case 7943:
    case 7944:
    case 7945:
    case 7946:
    case 7959:
    case 7960:
    case 7961:
    case 7962:
    case 7975:
    case 7976:
    case 7977:
    case 7978:
    case 7991:
    case 7992:
    case 7993:
    case 7994:
    case 8007:
    case 8008:
    case 8009:
    case 8010:
      v110 = *(a2 + 2);
      v111 = *(*(*(a1 + 8) + 152) + 104);
      if (*(v110 + 16) == 1)
      {
        LOWORD(v112) = *(v111 + 2 * *(v110 + 24));
      }

      else
      {
        v112 = *(v110 + 24);
      }

      v242 = *(v111 + 2 * *(v110 + 8)) & 0xELL;
      v243 = 32 * (v112 & 0x1F);
      if (*(v110 + 32) == 1)
      {
        LOWORD(v111) = *(v111 + 2 * *(v110 + 40));
      }

      else
      {
        v111 = *(v110 + 40);
      }

      return (v243 | v242) & 0xFFFFFFFFFFE0FFFFLL | ((v111 & 0x1F) << 16) | result;
    case 7899:
    case 7900:
    case 7901:
    case 7902:
    case 7915:
    case 7916:
    case 7917:
    case 7918:
    case 7931:
    case 7932:
    case 7933:
    case 7934:
    case 7947:
    case 7948:
    case 7949:
    case 7950:
    case 7963:
    case 7964:
    case 7965:
    case 7966:
    case 7979:
    case 7980:
    case 7981:
    case 7982:
    case 7995:
    case 7996:
    case 7997:
    case 7998:
    case 8011:
    case 8012:
    case 8013:
    case 8014:
      v113 = *(a2 + 2);
      if (*(v113 + 16) == 1)
      {
        LOWORD(v114) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v113 + 24));
      }

      else
      {
        v114 = *(v113 + 24);
      }

      v244 = (*(v113 + 8) + 3) & 7 | (32 * (v114 & 0x1F));
      if (*(v113 + 48) == 1)
      {
        LOWORD(v245) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v113 + 56));
      }

      else
      {
        v245 = *(v113 + 56);
      }

      v246 = v244 & 0xFFFFDFFF | ((v245 & 1) << 13);
      if (*(v113 + 32) == 1)
      {
        return result | v246 & 0xFFE0FFFF | ((*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v113 + 40)) & 0x1F) << 16);
      }

      else
      {
        return result | v246 & 0xFFE0FFFF | ((*(v113 + 40) & 0x1F) << 16);
      }

    case 7903:
    case 7904:
    case 7905:
    case 7906:
    case 7907:
    case 7908:
    case 7909:
    case 7910:
    case 7919:
    case 7920:
    case 7921:
    case 7922:
    case 7923:
    case 7924:
    case 7925:
    case 7926:
    case 7935:
    case 7936:
    case 7937:
    case 7938:
    case 7939:
    case 7940:
    case 7941:
    case 7942:
    case 7951:
    case 7952:
    case 7953:
    case 7954:
    case 7955:
    case 7956:
    case 7957:
    case 7958:
    case 7967:
    case 7968:
    case 7969:
    case 7970:
    case 7971:
    case 7972:
    case 7973:
    case 7974:
    case 7983:
    case 7984:
    case 7985:
    case 7986:
    case 7987:
    case 7988:
    case 7989:
    case 7990:
    case 7999:
    case 8000:
    case 8001:
    case 8002:
    case 8003:
    case 8004:
    case 8005:
    case 8006:
    case 8015:
    case 8016:
    case 8017:
    case 8018:
    case 8019:
    case 8020:
    case 8021:
    case 8022:
    case 8023:
    case 8024:
    case 8025:
    case 8026:
    case 8027:
    case 8028:
    case 8029:
    case 8030:
      v32 = *(a2 + 2);
      if (*v32 == 1)
      {
        LOWORD(v53) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 8));
      }

      else
      {
        v53 = *(v32 + 8);
      }

      if (*(v32 + 32) == 1)
      {
        LOWORD(v104) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v32 + 40));
      }

      else
      {
        v104 = *(v32 + 40);
      }

      v37 = v53 & 0xF;
      v38 = (v104 & 0x1F) << 16;
      if (*(v32 + 16) == 1)
      {
LABEL_111:
        v39 = *(*(a1 + 8) + 152);
        v40 = *(v32 + 24);
LABEL_733:
        v61 = 32 * (*(*(v39 + 104) + 2 * v40) & 0x1F);
      }

      else
      {
LABEL_165:
        v61 = 32 * (*(v32 + 24) & 0x1FLL);
      }

      return v37 | v38 | v61 | result;
    case 8031:
      v1423 = *(a2 + 2);
      if (*v1423 == 1)
      {
        return (32 * (*(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1423 + 8)) & 0xF)) | result;
      }

      else
      {
        return (32 * (*(v1423 + 8) & 0xFLL)) | result;
      }

    case 8033:
      v1428 = *(a2 + 2);
      if (*v1428 == 1)
      {
        LOWORD(v1429) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1428 + 8));
      }

      else
      {
        v1429 = *(v1428 + 8);
      }

      if (*(v1428 + 16) == 1)
      {
        LOWORD(v1665) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1428 + 24));
      }

      else
      {
        v1665 = *(v1428 + 24);
      }

      if (*(v1428 + 48) == 1)
      {
        LOWORD(v1666) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1428 + 56));
      }

      else
      {
        v1666 = *(v1428 + 56);
      }

      v316 = v1429 & 0x1F;
      v317 = 32 * (v1665 & 0x1F);
      v318 = (v1666 & 0x3F) << 10;
      if (*(v1428 + 32) == 1)
      {
        a1 = *(*(a1 + 8) + 152);
        v1042 = *(v1428 + 40);
LABEL_2014:
        LOWORD(a1) = *(*(a1 + 104) + 2 * v1042);
      }

      else
      {
        a1 = *(v1428 + 40);
      }

      return (v316 | v317 | v318) & 0xFFFFFFFFFFE0FFFFLL | ((a1 & 0x1F) << 16) | result;
    case 8047:
      return *(*(a2 + 2) + 8) | result;
    case 8048:
    case 8052:
    case 8055:
      v796 = *(a2 + 2);
      if (*(v796 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v796 + 56));
      }

      else
      {
        LODWORD(a1) = *(v796 + 56);
      }

      return result | a1 & 7 | ((*(v796 + 40) << 13) + 24576) & 0x6000;
    case 8049:
    case 8050:
    case 8053:
      v795 = *(a2 + 2);
      if (*(v795 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v795 + 56));
      }

      else
      {
        LODWORD(a1) = *(v795 + 56);
      }

      return result | a1 & 3 | ((*(v795 + 40) << 13) + 24576) & 0x6000;
    case 8051:
    case 8054:
      v1072 = *(a2 + 2);
      if (*(v1072 + 48) == 1)
      {
        LOWORD(a1) = *(*(*(*(a1 + 8) + 152) + 104) + 2 * *(v1072 + 56));
      }

      else
      {
        LODWORD(a1) = *(v1072 + 56);
      }

      return result | a1 & 1 | ((*(v1072 + 40) << 13) + 24576) & 0x6000;
    default:
      memset(v1794, 0, sizeof(v1794));
      LODWORD(v1786) = 0;
      v1790 = 0;
      v1791 = 0;
      v1793 = v1794;
      v1792 = 0;
      v1785 = &unk_2A1F1E040;
      v1787 = 0;
      v1788 = 0;
      v1789 = 0;
      v1742 = a2;
      sub_298B9BCEC(&v1785, "Not supported instr: ", 0x15uLL);
      sub_298B46B7C(v1742, &v1785, 0);
      v1743 = v1793;
      if (*(v1793 + 23) < 0)
      {
        v1743 = *v1793;
      }

      sub_298B868A8(v1743, 1);
  }
}

const char *sub_298CDE03C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = &unk_298EB5CA2;
  switch(v1)
  {
    case 2:
    case 3:
    case 5:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 21:
    case 23:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 38:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 54:
    case 56:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 68:
    case 70:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 84:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 100:
    case 102:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 114:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 290:
    case 291:
    case 296:
    case 297:
    case 298:
    case 299:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 312:
    case 313:
    case 314:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 322:
    case 324:
    case 328:
    case 329:
    case 330:
    case 331:
    case 332:
    case 333:
    case 334:
    case 335:
    case 336:
    case 338:
    case 340:
    case 342:
    case 344:
    case 345:
    case 346:
    case 347:
    case 348:
    case 349:
    case 350:
    case 351:
    case 352:
    case 354:
    case 356:
    case 357:
    case 358:
    case 359:
    case 360:
    case 361:
    case 362:
    case 363:
    case 364:
    case 365:
    case 366:
    case 367:
    case 368:
    case 369:
    case 370:
    case 371:
    case 372:
    case 373:
    case 374:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 380:
    case 381:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
      __break(1u);
      JUMPOUT(0x298CDE354);
    case 4:
    case 20:
      result = ":got:";
      break;
    case 6:
    case 22:
      result = ":gottprel:";
      break;
    case 24:
      result = ":tlsdesc:";
      break;
    case 37:
      result = ":dtprel_lo12:";
      break;
    case 39:
      result = ":tprel_lo12:";
      break;
    case 40:
      result = ":tlsdesc_lo12:";
      break;
    case 41:
      result = ":secrel_lo12:";
      break;
    case 53:
      result = ":dtprel_hi12:";
      break;
    case 55:
      result = ":tprel_hi12:";
      break;
    case 57:
      result = ":secrel_hi12:";
      break;
    case 65:
      result = ":abs_g0:";
      break;
    case 66:
      result = ":abs_g0_s:";
      break;
    case 67:
      result = ":prel_g0:";
      break;
    case 69:
      result = ":dtprel_g0:";
      break;
    case 71:
      result = ":tprel_g0:";
      break;
    case 81:
      result = ":abs_g1:";
      break;
    case 82:
      result = ":abs_g1_s:";
      break;
    case 83:
      result = ":prel_g1:";
      break;
    case 85:
      result = ":dtprel_g1:";
      break;
    case 86:
      result = ":gottprel_g1:";
      break;
    case 87:
      result = ":tprel_g1:";
      break;
    case 97:
      result = ":abs_g2:";
      break;
    case 98:
      result = ":abs_g2_s:";
      break;
    case 99:
      result = ":prel_g2:";
      break;
    case 101:
      result = ":dtprel_g2:";
      break;
    case 103:
      result = ":tprel_g2:";
      break;
    case 113:
      result = ":abs_g3:";
      break;
    case 115:
      result = ":prel_g3:";
      break;
    case 273:
      result = ":pg_hi21_nc:";
      break;
    case 289:
      result = ":lo12:";
      break;
    case 292:
      result = ":got_lo12:";
      break;
    case 293:
      result = ":dtprel_lo12_nc:";
      break;
    case 294:
      result = ":gottprel_lo12:";
      break;
    case 295:
      result = ":tprel_lo12_nc:";
      break;
    case 321:
      result = ":abs_g0_nc:";
      break;
    case 323:
      result = ":prel_g0_nc:";
      break;
    case 325:
      result = ":dtprel_g0_nc:";
      break;
    case 326:
      result = ":gottprel_g0_nc:";
      break;
    case 327:
      result = ":tprel_g0_nc:";
      break;
    case 337:
      result = ":abs_g1_nc:";
      break;
    case 339:
      result = ":prel_g1_nc:";
      break;
    case 341:
      result = ":dtprel_g1_nc:";
      break;
    case 343:
      result = ":tprel_g1_nc:";
      break;
    case 353:
      result = ":abs_g2_nc:";
      break;
    case 355:
      result = ":prel_g2_nc:";
      break;
    case 388:
      result = ":gotpage_lo15:";
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_298CDE964(int a1, uint64_t a2)
{
  result = 1;
  if (a1 > 6784)
  {
    v5 = a1 - 6785;
    if (v5 > 0xD)
    {
      return 0;
    }

    v6 = 1 << v5;
    if ((v6 & 0x3264) == 0)
    {
      if ((v6 & 0x489) != 0)
      {
        return result;
      }

LABEL_12:
      v7 = *(a2 + 56);
      if ((v7 & 0x3F) != 0)
      {
        return (v7 & 0x1C0) == 0 && (*(a2 + 56) & 0x3Fu) < 4;
      }

      return result;
    }
  }

  else
  {
    v4 = a1 - 101;
    if ((a1 - 1381) > 0x15)
    {
      goto LABEL_6;
    }

    if (((1 << v4) & 0x320064) == 0)
    {
      if (((1 << v4) & 0x48009) != 0)
      {
        return result;
      }

      if (((1 << v4) & 0x90012) == 0)
      {
LABEL_6:
        if ((a1 - 287) <= 5 && ((1 << (a1 - 31)) & 0x33) != 0 || (a1 - 1115) < 4)
        {
          return result;
        }

        return 0;
      }

      goto LABEL_12;
    }
  }

  if ((*(a2 + 56) & 7) != 0)
  {
    return (*(a2 + 56) & 0x30) == 0x10 && (*(a2 + 56) & 7u) < 4;
  }

  return result;
}

uint64_t sub_298CDEA6C(int a1, uint64_t a2)
{
  if (a1 > 4807)
  {
    if (a1 > 4809)
    {
      if (a1 == 4811)
      {
        return *(a2 + 16) == 1 && (*(a2 + 24) & 0xFFFFFFFE) == 0xA && *(a2 + 32) == 1 && (*(a2 + 56) & 0x3F) == 0;
      }

      if (a1 != 4810)
      {
        return 0;
      }
    }

    else if (a1 != 4808)
    {
      return *(a2 + 16) == 1 && (*(a2 + 24) & 0xFFFFFFFE) == 0xA && *(a2 + 32) == 1 && (*(a2 + 56) & 0x3F) == 0;
    }

    if (*(a2 + 16) == 1)
    {
      return (*(a2 + 24) & 0xFFFFFFFE) == 10;
    }

    return 0;
  }

  result = 1;
  if (a1 > 4698)
  {
    v4 = a1 - 4699;
    if (v4 <= 0x1B)
    {
      if (((1 << v4) & 0x107) != 0)
      {
        return *(a2 + 24) == 0;
      }

      if (((1 << v4) & 0x268) != 0)
      {
        if (!*(a2 + 24))
        {
          return *(a2 + 40) == 0;
        }
      }

      else if (((1 << v4) & 0xC003000) != 0)
      {
        return result;
      }
    }

    return 0;
  }

  if ((a1 - 1445) >= 2)
  {
    if (a1 != 1396 && a1 != 1399)
    {
      return 0;
    }

    if (*a2 != 1)
    {
      return 0;
    }

    if (*(a2 + 16) != 1)
    {
      return 0;
    }

    v5 = *(a2 + 8);
    if (v5 != 7 && v5 != 9)
    {
      v6 = *(a2 + 24);
      if (v6 != 9 && v6 != 7)
      {
        return 0;
      }
    }

    if (*(a2 + 40))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_298CDEC14(int a1, uint64_t a2)
{
  result = 1;
  if (a1 <= 1475)
  {
    if ((a1 - 395) <= 0x38 && ((1 << (a1 + 117)) & 0x1E000000000000FLL) != 0 || (a1 - 314) < 4 || (a1 - 933) < 4)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 2236)
  {
    if ((a1 - 1476) <= 0xB)
    {
      v6 = 1 << (a1 + 60);
      if ((v6 & 0xA05) != 0)
      {
        goto LABEL_21;
      }

      if ((v6 & 0x500) != 0)
      {
        return result;
      }
    }

    v7 = a1 - 1682;
    if (v7 > 4 || v7 == 2)
    {
      return 0;
    }
  }

  else
  {
    if ((a1 - 2237) > 0x18)
    {
      goto LABEL_4;
    }

    v8 = 1 << (a1 + 67);
    if ((v8 & 0x1400003) == 0)
    {
      if ((v8 & 0xA00000) != 0)
      {
        return result;
      }

LABEL_4:
      v4 = a1 - 4798;
      if (v4 <= 0xD)
      {
        v5 = 1 << v4;
        if ((v5 & 0x2803) == 0)
        {
          if ((v5 & 0x1400) != 0)
          {
            return result;
          }

          return 0;
        }

        goto LABEL_21;
      }

      return 0;
    }
  }

LABEL_21:
  v9 = *(a2 + 56);
  if ((v9 & 0x3F) != 0)
  {
    return (v9 & 0x1C0) == 0 && (*(a2 + 56) & 0x3Fu) < 4;
  }

  return result;
}

BOOL sub_298CDED3C(int a1, uint64_t a2)
{
  if (a1 <= 1475)
  {
    return (a1 - 395) <= 0x38 && ((1 << (a1 + 117)) & 0x1E000000000000FLL) != 0 || (a1 - 314) < 4 || (a1 - 933) < 4;
  }

  if (a1 <= 2236)
  {
    if ((a1 - 1476) <= 0xB)
    {
      v4 = 1 << (a1 + 60);
      if ((v4 & 0xA05) != 0)
      {
        goto LABEL_21;
      }

      if ((v4 & 0x500) != 0)
      {
        return 1;
      }
    }

    if ((a1 - 1682) > 4 || a1 == 1684)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if ((a1 - 2237) <= 0x18)
  {
    v5 = 1 << (a1 + 67);
    if ((v5 & 0x1400003) != 0)
    {
      goto LABEL_21;
    }

    if ((v5 & 0xA00000) != 0)
    {
      return 1;
    }
  }

  if ((a1 - 4798) > 0xD)
  {
    return 0;
  }

  v2 = 1 << (a1 + 66);
  if ((v2 & 0x2803) == 0)
  {
    return (v2 & 0x1400) != 0;
  }

LABEL_21:
  v6 = *(a2 + 56);
  v7 = 0x10EuLL >> v6;
  if ((v6 & 0x1C0) != 0)
  {
    LOBYTE(v7) = 0;
  }

  if ((v6 & 0x3F) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_298CDEE70(int a1, uint64_t a2)
{
  result = 0;
  switch(a1)
  {
    case 4312:
    case 4313:
    case 4317:
    case 4318:
    case 4323:
    case 4324:
    case 4328:
    case 4329:
    case 4333:
    case 4334:
    case 4339:
    case 4340:
    case 4344:
    case 4345:
    case 4349:
    case 4350:
    case 4354:
    case 4355:
    case 4359:
    case 4360:
    case 4365:
    case 4366:
    case 4371:
    case 4372:
    case 4377:
    case 4378:
    case 4383:
    case 4384:
      goto LABEL_4;
    case 4314:
    case 4315:
    case 4316:
    case 4319:
    case 4320:
    case 4321:
    case 4322:
    case 4325:
    case 4326:
    case 4327:
    case 4330:
    case 4331:
    case 4332:
    case 4335:
    case 4336:
    case 4337:
    case 4338:
    case 4341:
    case 4342:
    case 4343:
    case 4346:
    case 4347:
    case 4348:
    case 4351:
    case 4352:
    case 4353:
    case 4356:
    case 4357:
    case 4358:
    case 4361:
    case 4362:
    case 4363:
    case 4364:
    case 4367:
    case 4368:
    case 4369:
    case 4370:
    case 4373:
    case 4374:
    case 4375:
    case 4376:
    case 4379:
    case 4380:
    case 4381:
    case 4382:
      return result;
    default:
      if ((a1 - 6688) <= 0x29 && ((1 << (a1 - 32)) & 0x318C6318C63) != 0 || (a1 - 4914) < 2)
      {
LABEL_4:
        result = 1;
        if (((1 << ((*(a2 + 56) >> 1) & 7)) & 0xBB) != 0)
        {
          result = *(a2 + 72) & 1;
        }
      }

      break;
  }

  return result;
}

BOOL sub_298CDF034(int a1, uint64_t a2)
{
  result = 0;
  if (a1 <= 2236)
  {
    if (((a1 - 1382) > 0x12 || ((1 << (a1 - 102)) & 0x48009) == 0) && ((a1 - 1476) > 0xB || ((1 << (a1 + 60)) & 0xA05) == 0))
    {
      v4 = a1 - 1682;
      if (v4 > 4 || v4 == 2)
      {
        return result;
      }
    }

    return *(a2 + 56) != 0;
  }

  if ((a1 - 2237) <= 0x18 && ((1 << (a1 + 67)) & 0x1400003) != 0)
  {
    return *(a2 + 56) != 0;
  }

  if ((a1 - 4798) <= 0xD && ((1 << (a1 + 66)) & 0x2803) != 0)
  {
    return *(a2 + 56) != 0;
  }

  v5 = a1 - 6786;
  if (v5 <= 0xA && ((1 << v5) & 0x489) != 0)
  {
    return *(a2 + 56) != 0;
  }

  return result;
}

uint64_t sub_298CDF12C(int a1, uint64_t a2)
{
  result = 0;
  switch(a1)
  {
    case 4312:
    case 4313:
    case 4317:
    case 4318:
    case 4323:
    case 4324:
    case 4328:
    case 4329:
    case 4333:
    case 4334:
    case 4339:
    case 4340:
    case 4344:
    case 4345:
    case 4349:
    case 4350:
    case 4354:
    case 4355:
    case 4359:
    case 4360:
    case 4365:
    case 4366:
    case 4371:
    case 4372:
    case 4377:
    case 4378:
    case 4383:
    case 4384:
      goto LABEL_4;
    case 4314:
    case 4315:
    case 4316:
    case 4319:
    case 4320:
    case 4321:
    case 4322:
    case 4325:
    case 4326:
    case 4327:
    case 4330:
    case 4331:
    case 4332:
    case 4335:
    case 4336:
    case 4337:
    case 4338:
    case 4341:
    case 4342:
    case 4343:
    case 4346:
    case 4347:
    case 4348:
    case 4351:
    case 4352:
    case 4353:
    case 4356:
    case 4357:
    case 4358:
    case 4361:
    case 4362:
    case 4363:
    case 4364:
    case 4367:
    case 4368:
    case 4369:
    case 4370:
    case 4373:
    case 4374:
    case 4375:
    case 4376:
    case 4379:
    case 4380:
    case 4381:
    case 4382:
      return result;
    default:
      if ((a1 - 6688) <= 0x29 && ((1 << (a1 - 32)) & 0x318C6318C63) != 0 || (a1 - 4914) < 2)
      {
LABEL_4:
        if ((*(a2 + 56) & 0xELL) == 6)
        {
          result = *(a2 + 72) & 1;
        }

        else
        {
          result = 1;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_298CDF2EC(int a1, uint64_t a2, int a3)
{
  if (a1 <= 43)
  {
    if (a1 <= 34)
    {
      if (a1 > 22)
      {
        if (a1 == 23)
        {
          if (a3 > 14)
          {
            switch(a3)
            {
              case 15:
                if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
                {
                  return 1581;
                }

                else
                {
                  return 1582;
                }

              case 16:
                if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
                {
                  return 1583;
                }

                else
                {
                  return 1584;
                }

              case 17:
                if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
                {
                  return 1585;
                }

                else
                {
                  return 1586;
                }
            }
          }

          else
          {
            switch(a3)
            {
              case 10:
                if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
                {
                  return 1575;
                }

                else
                {
                  return 1576;
                }

              case 11:
                if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
                {
                  return 1577;
                }

                else
                {
                  return 1578;
                }

              case 12:
                if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
                {
                  return 1579;
                }

                else
                {
                  return 1580;
                }
            }
          }
        }

        else if (a1 == 34)
        {
          if (a3 <= 10)
          {
            switch(a3)
            {
              case 1:
                return 1587;
              case 4:
                if (sub_298CDF12C(*a2, *(a2 + 16)))
                {
                  return 1588;
                }

                else
                {
                  return 1589;
                }

              case 10:
                return 1590;
            }
          }

          else if (a3 > 18)
          {
            if (a3 == 19)
            {
LABEL_1548:
              if (sub_298CDF12C(*a2, *(a2 + 16)))
              {
                return 1595;
              }

              else
              {
                return 1596;
              }
            }

            if (a3 == 20)
            {
              if (sub_298CDF12C(*a2, *(a2 + 16)))
              {
                return 1597;
              }

              else
              {
                return 1598;
              }
            }
          }

          else
          {
            if (a3 == 11)
            {
              if (sub_298CDEE70(*a2, *(a2 + 16)))
              {
                return 1591;
              }

              else
              {
                return 1592;
              }
            }

            if (a3 == 12)
            {
LABEL_991:
              if (sub_298CDEE70(*a2, *(a2 + 16)))
              {
                return 1593;
              }

              else
              {
                return 1594;
              }
            }
          }
        }
      }

      else if (a1 == 17)
      {
        if (a3 <= 14)
        {
          switch(a3)
          {
            case 5:
LABEL_1148:
              if (sub_298CDF034(*a2, *(a2 + 16)))
              {
                return 1555;
              }

              else
              {
                return 1556;
              }

            case 7:
LABEL_1117:
              if (sub_298CDF034(*a2, *(a2 + 16)))
              {
                return 1557;
              }

              else
              {
                return 1558;
              }

            case 9:
LABEL_1056:
              if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
              {
                return 1559;
              }

              else
              {
                return 1560;
              }
          }
        }

        else
        {
          if (a3 <= 16)
          {
            if (a3 == 15)
            {
LABEL_1270:
              if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
              {
                return 1561;
              }

              else
              {
                return 1562;
              }
            }

            else
            {
LABEL_1252:
              if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
              {
                return 1563;
              }

              else
              {
                return 1564;
              }
            }
          }

          if (a3 == 17)
          {
LABEL_1333:
            if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
            {
              return 1565;
            }

            else
            {
              return 1566;
            }
          }

          if (a3 == 18)
          {
LABEL_1406:
            if (sub_298CDF034(*a2, *(a2 + 16)))
            {
              return 1567;
            }

            else
            {
              return 1568;
            }
          }
        }
      }

      else if (a1 == 18)
      {
        switch(a3)
        {
          case 18:
            v207 = *a2 - 1383;
            if (v207 <= 0x13 && ((1 << v207) & 0xC8019) != 0 || (result = 1574, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              if (*(*(a2 + 16) + 56))
              {
                return 1573;
              }

              else
              {
                return 1574;
              }
            }

            return result;
          case 7:
            v206 = *a2 - 1383;
            if (v206 <= 0x13 && ((1 << v206) & 0xC8019) != 0 || (result = 1572, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              if (*(*(a2 + 16) + 56))
              {
                return 1571;
              }

              else
              {
                return 1572;
              }
            }

            return result;
          case 5:
            v3 = *a2 - 1383;
            if (v3 <= 0x13 && ((1 << v3) & 0xC8019) != 0 || (result = 1570, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              if (*(*(a2 + 16) + 56))
              {
                return 1569;
              }

              else
              {
                return 1570;
              }
            }

            return result;
        }
      }

      return 0;
    }

    if (a1 <= 38)
    {
      if (a1 != 35)
      {
        if (a1 != 36 || a3 != 15)
        {
          return 0;
        }

        v5 = *a2;
        if (*a2 <= 5414)
        {
          if ((v5 - 4587) >= 2 && (v5 - 4739) >= 2)
          {
            return 1600;
          }

          goto LABEL_1965;
        }

        if (v5 > 7190)
        {
          if (v5 != 7410)
          {
            v208 = 7191;
LABEL_1964:
            if (v5 != v208)
            {
              return 1600;
            }
          }
        }

        else if (v5 != 5415)
        {
          v208 = 5637;
          goto LABEL_1964;
        }

LABEL_1965:
        v266 = *(a2 + 16);
        if (*(v266 + 48) == 1 && (*(v266 + 56) & 0xFFFFFFFE) == 0xA)
        {
          return 1599;
        }

        return 1600;
      }

      if (a3 != 15)
      {
        return 0;
      }

      v14 = *a2;
      if (*a2 <= 5414)
      {
        if ((v14 - 4587) >= 2 && (v14 - 4739) >= 2)
        {
          return 1600;
        }

        goto LABEL_1974;
      }

      if (v14 > 7190)
      {
        if (v14 != 7410)
        {
          v209 = 7191;
LABEL_1973:
          if (v14 != v209)
          {
            return 1600;
          }
        }
      }

      else if (v14 != 5415)
      {
        v209 = 5637;
        goto LABEL_1973;
      }

LABEL_1974:
      v267 = *(a2 + 16);
      if (*(v267 + 48) == 1 && (*(v267 + 56) & 0xFFFFFFFE) == 0xA)
      {
        return 1599;
      }

      return 1600;
    }

    if (a1 != 39)
    {
      if (a1 == 43)
      {
        result = 1603;
        if (a3 > 10)
        {
          if ((a3 - 19) < 2)
          {
            return result;
          }

          if (a3 == 11)
          {
            if (sub_298CDEE70(*a2, *(a2 + 16)))
            {
              return 1606;
            }

            else
            {
              return 1607;
            }
          }

          if (a3 == 12)
          {
            if (sub_298CDEE70(*a2, *(a2 + 16)))
            {
              return 1608;
            }

            else
            {
              return 1609;
            }
          }
        }

        else
        {
          switch(a3)
          {
            case 1:
              return result;
            case 4:
              if (sub_298CDF12C(*a2, *(a2 + 16)))
              {
                return 1604;
              }

              else
              {
                return 1605;
              }

            case 10:
              return result;
          }
        }
      }

      return 0;
    }

    if (a3 != 15)
    {
      return 0;
    }

    v15 = *a2;
    if (*a2 > 5414)
    {
      if (v15 > 7190)
      {
        if (v15 == 7410)
        {
          goto LABEL_1980;
        }

        v210 = 7191;
      }

      else
      {
        if (v15 == 5415)
        {
          goto LABEL_1980;
        }

        v210 = 5637;
      }

      if (v15 != v210)
      {
        return 1602;
      }
    }

    else if ((v15 - 4587) >= 2 && (v15 - 4739) >= 2)
    {
      return 1602;
    }

LABEL_1980:
    v268 = *(a2 + 16);
    if (*(v268 + 48) == 1 && (*(v268 + 56) & 0xFFFFFFFE) == 0xA)
    {
      return 1601;
    }

    return 1602;
  }

  switch(a1)
  {
    case 213:
      result = 1620;
      switch(a3)
      {
        case 2:
          v78 = *a2 - 1383;
          if ((v78 > 0x13 || ((1 << v78) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v455 = *a2 - 1383;
          if ((v455 > 0x13 || ((1 << v455) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
          goto LABEL_1056;
        case 10:
          v165 = *a2;
          v166 = *(a2 + 16);
          v451 = sub_298CDE964(*a2, v166);
          result = 1621;
          if (!v451)
          {
            goto LABEL_2519;
          }

          return result;
        case 11:
          v27 = *a2;
          v28 = *(a2 + 16);
          v453 = sub_298CDE964(*a2, v28);
          result = 1623;
          if (!v453)
          {
            goto LABEL_2848;
          }

          return result;
        case 12:
          v27 = *a2;
          v28 = *(a2 + 16);
          v452 = sub_298CDE964(*a2, v28);
          result = 1625;
          if (!v452)
          {
            goto LABEL_2833;
          }

          return result;
        case 13:
          return result;
        case 15:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1635;
          }

          else
          {
            return 1636;
          }

        case 16:
          goto LABEL_1252;
        case 17:
          goto LABEL_2005;
        case 18:
          goto LABEL_1406;
        case 21:
          if (sub_298CDF034(*a2, *(a2 + 16)))
          {
            return 1627;
          }

          else
          {
            return 1628;
          }

        default:
          return 0;
      }

      return result;
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 255:
    case 256:
    case 257:
    case 258:
    case 259:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
    case 294:
    case 295:
    case 296:
    case 298:
    case 299:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 311:
    case 312:
    case 313:
    case 314:
    case 315:
    case 316:
    case 317:
    case 318:
    case 319:
    case 320:
    case 321:
    case 322:
    case 323:
    case 324:
    case 325:
    case 326:
    case 327:
    case 328:
    case 329:
    case 330:
    case 331:
    case 332:
    case 334:
    case 335:
    case 336:
    case 337:
    case 338:
    case 339:
    case 340:
    case 341:
    case 342:
    case 343:
    case 344:
    case 345:
    case 346:
    case 347:
    case 348:
    case 349:
    case 350:
    case 351:
    case 352:
    case 353:
    case 354:
    case 355:
    case 356:
    case 357:
    case 358:
    case 359:
    case 360:
    case 361:
    case 362:
    case 363:
    case 364:
    case 365:
    case 366:
    case 367:
    case 368:
    case 369:
    case 370:
    case 371:
    case 372:
    case 373:
    case 374:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 380:
    case 381:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
    case 388:
    case 389:
    case 390:
    case 391:
    case 392:
    case 393:
    case 394:
    case 395:
    case 396:
    case 397:
    case 398:
    case 399:
    case 400:
    case 401:
    case 402:
    case 403:
    case 404:
    case 405:
    case 406:
    case 407:
    case 408:
    case 409:
    case 410:
    case 411:
    case 412:
    case 413:
    case 414:
    case 415:
    case 416:
    case 417:
    case 418:
    case 419:
    case 420:
    case 421:
    case 422:
    case 423:
    case 424:
    case 425:
    case 426:
    case 427:
    case 428:
    case 429:
    case 430:
    case 431:
    case 432:
    case 433:
    case 434:
    case 435:
    case 436:
    case 437:
    case 438:
    case 439:
    case 440:
    case 441:
    case 442:
    case 443:
    case 444:
    case 445:
    case 446:
    case 447:
    case 448:
    case 449:
    case 450:
    case 451:
    case 452:
    case 453:
    case 454:
    case 455:
    case 456:
    case 457:
    case 458:
    case 459:
    case 460:
    case 461:
    case 462:
    case 463:
    case 464:
    case 465:
    case 466:
    case 467:
    case 468:
    case 469:
    case 472:
    case 473:
    case 474:
    case 475:
    case 476:
    case 477:
    case 479:
    case 482:
    case 483:
    case 484:
    case 485:
    case 486:
    case 487:
    case 488:
    case 489:
    case 490:
    case 491:
    case 492:
    case 493:
    case 494:
    case 495:
    case 496:
    case 497:
    case 498:
    case 499:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 511:
    case 512:
    case 513:
    case 514:
    case 515:
    case 516:
    case 517:
    case 518:
    case 519:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 531:
    case 532:
    case 533:
    case 534:
    case 535:
    case 536:
    case 537:
    case 538:
    case 539:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 549:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 557:
    case 558:
    case 559:
    case 560:
    case 561:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 614:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
    case 653:
    case 654:
    case 657:
    case 658:
    case 659:
    case 660:
    case 663:
    case 666:
    case 667:
    case 670:
    case 671:
    case 672:
    case 673:
    case 676:
    case 681:
    case 682:
    case 683:
    case 686:
    case 687:
    case 688:
    case 689:
    case 690:
    case 691:
    case 692:
    case 693:
    case 694:
    case 695:
    case 696:
    case 697:
    case 698:
    case 699:
    case 700:
    case 701:
    case 702:
    case 703:
    case 704:
    case 705:
    case 706:
    case 707:
    case 708:
    case 709:
    case 710:
    case 711:
    case 714:
    case 715:
    case 716:
    case 717:
    case 720:
    case 721:
    case 724:
    case 725:
    case 728:
    case 729:
    case 730:
    case 731:
    case 732:
    case 733:
    case 734:
    case 735:
    case 739:
    case 740:
    case 742:
    case 743:
    case 744:
    case 745:
    case 746:
    case 747:
    case 748:
    case 749:
    case 750:
    case 751:
    case 752:
    case 753:
    case 754:
    case 755:
    case 756:
    case 757:
    case 758:
    case 759:
    case 760:
    case 761:
    case 762:
    case 763:
    case 764:
    case 765:
    case 766:
    case 767:
    case 768:
    case 769:
    case 770:
    case 771:
    case 772:
    case 773:
    case 774:
    case 775:
    case 776:
    case 777:
    case 778:
    case 779:
    case 780:
    case 781:
    case 782:
    case 783:
    case 784:
    case 785:
    case 786:
    case 787:
    case 788:
    case 789:
    case 790:
    case 791:
    case 792:
    case 793:
    case 794:
    case 795:
    case 796:
    case 797:
    case 798:
    case 799:
    case 800:
    case 801:
    case 802:
    case 803:
    case 804:
    case 805:
    case 806:
    case 807:
    case 808:
    case 809:
    case 810:
    case 811:
    case 812:
    case 813:
    case 814:
    case 815:
    case 816:
    case 817:
    case 818:
    case 819:
    case 821:
    case 822:
    case 823:
    case 824:
    case 825:
    case 826:
    case 827:
    case 828:
    case 829:
    case 830:
    case 831:
    case 832:
    case 833:
    case 834:
    case 835:
    case 836:
    case 837:
    case 838:
    case 839:
    case 840:
    case 841:
    case 842:
    case 843:
    case 844:
    case 845:
    case 846:
    case 847:
    case 848:
    case 849:
    case 850:
    case 851:
    case 852:
    case 853:
    case 854:
    case 855:
    case 856:
    case 857:
    case 858:
    case 859:
    case 860:
    case 861:
    case 862:
    case 863:
    case 864:
    case 865:
    case 866:
    case 867:
    case 868:
    case 869:
    case 870:
    case 871:
    case 872:
    case 873:
    case 875:
    case 876:
    case 877:
    case 878:
    case 880:
    case 882:
    case 884:
    case 885:
    case 887:
    case 890:
    case 892:
    case 893:
    case 894:
    case 898:
    case 899:
    case 900:
    case 901:
    case 902:
    case 905:
    case 906:
    case 907:
    case 908:
    case 909:
    case 910:
    case 911:
    case 912:
    case 913:
    case 914:
    case 917:
    case 918:
    case 919:
    case 920:
    case 921:
    case 922:
    case 923:
    case 924:
    case 925:
    case 926:
    case 927:
    case 929:
    case 930:
    case 931:
    case 932:
    case 933:
    case 934:
    case 935:
    case 936:
    case 937:
    case 938:
    case 939:
    case 940:
    case 941:
    case 942:
    case 943:
    case 944:
    case 945:
    case 946:
    case 947:
    case 948:
    case 950:
    case 951:
    case 952:
    case 953:
    case 954:
    case 955:
    case 956:
    case 957:
    case 958:
    case 959:
    case 960:
    case 961:
    case 962:
    case 964:
    case 965:
    case 966:
    case 968:
    case 969:
    case 971:
    case 972:
    case 973:
    case 974:
    case 975:
    case 979:
    case 980:
    case 981:
    case 982:
    case 983:
    case 984:
    case 985:
    case 986:
    case 987:
    case 988:
    case 989:
    case 990:
    case 991:
    case 992:
    case 993:
    case 994:
    case 995:
    case 996:
    case 997:
    case 998:
    case 999:
    case 1000:
    case 1001:
    case 1002:
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1008:
    case 1009:
    case 1010:
    case 1011:
    case 1012:
    case 1013:
    case 1014:
    case 1015:
    case 1016:
    case 1017:
    case 1018:
    case 1019:
    case 1020:
    case 1021:
    case 1022:
    case 1023:
    case 1024:
    case 1025:
    case 1026:
    case 1031:
    case 1036:
    case 1037:
    case 1038:
    case 1039:
    case 1040:
    case 1041:
    case 1042:
    case 1043:
    case 1044:
    case 1045:
    case 1046:
    case 1047:
    case 1048:
    case 1049:
    case 1050:
    case 1051:
    case 1053:
    case 1054:
    case 1055:
    case 1056:
    case 1057:
    case 1058:
    case 1059:
    case 1060:
    case 1061:
    case 1062:
    case 1063:
    case 1064:
    case 1065:
    case 1066:
    case 1067:
    case 1079:
    case 1080:
    case 1081:
    case 1082:
    case 1083:
    case 1084:
    case 1085:
    case 1086:
    case 1087:
    case 1089:
    case 1090:
    case 1091:
    case 1092:
    case 1093:
    case 1094:
    case 1095:
    case 1096:
    case 1097:
    case 1098:
    case 1099:
    case 1100:
    case 1101:
    case 1102:
    case 1103:
    case 1104:
    case 1105:
    case 1106:
    case 1107:
    case 1108:
    case 1109:
    case 1110:
    case 1111:
    case 1112:
    case 1113:
    case 1114:
    case 1115:
    case 1116:
    case 1117:
    case 1118:
    case 1119:
    case 1120:
    case 1121:
    case 1122:
    case 1123:
    case 1124:
    case 1125:
    case 1126:
    case 1127:
    case 1128:
    case 1129:
    case 1130:
    case 1131:
    case 1132:
    case 1133:
    case 1134:
    case 1135:
    case 1136:
    case 1137:
    case 1139:
    case 1140:
    case 1141:
    case 1142:
    case 1143:
    case 1144:
    case 1145:
    case 1146:
    case 1147:
    case 1148:
    case 1149:
    case 1150:
    case 1151:
    case 1152:
    case 1153:
    case 1154:
    case 1155:
    case 1156:
    case 1157:
    case 1158:
    case 1159:
    case 1167:
    case 1168:
    case 1169:
    case 1170:
    case 1171:
    case 1172:
    case 1173:
    case 1174:
    case 1175:
    case 1176:
    case 1177:
    case 1178:
    case 1179:
    case 1180:
    case 1181:
    case 1182:
    case 1183:
    case 1184:
    case 1185:
    case 1186:
    case 1187:
    case 1188:
    case 1189:
    case 1190:
    case 1191:
    case 1192:
    case 1193:
    case 1194:
    case 1195:
    case 1196:
    case 1198:
    case 1199:
    case 1200:
    case 1201:
    case 1202:
    case 1203:
    case 1204:
    case 1205:
    case 1206:
    case 1207:
    case 1208:
    case 1209:
    case 1210:
    case 1211:
    case 1212:
    case 1213:
    case 1214:
    case 1215:
    case 1216:
    case 1217:
    case 1218:
    case 1219:
    case 1220:
    case 1221:
    case 1222:
    case 1223:
    case 1228:
    case 1229:
    case 1230:
    case 1231:
    case 1232:
    case 1233:
    case 1234:
    case 1235:
    case 1236:
    case 1237:
    case 1238:
    case 1239:
    case 1240:
    case 1241:
    case 1242:
    case 1243:
    case 1244:
    case 1245:
    case 1246:
    case 1247:
    case 1248:
    case 1249:
    case 1256:
    case 1257:
    case 1258:
    case 1259:
    case 1260:
    case 1261:
    case 1262:
    case 1263:
    case 1264:
    case 1265:
    case 1266:
    case 1268:
    case 1269:
    case 1270:
    case 1271:
    case 1272:
    case 1273:
    case 1274:
    case 1275:
    case 1276:
    case 1277:
    case 1278:
    case 1279:
    case 1280:
    case 1281:
    case 1282:
    case 1283:
    case 1284:
    case 1285:
    case 1286:
    case 1287:
    case 1288:
    case 1289:
    case 1290:
    case 1291:
    case 1292:
    case 1293:
    case 1294:
    case 1295:
    case 1296:
    case 1297:
    case 1298:
    case 1299:
    case 1300:
    case 1301:
    case 1302:
    case 1303:
    case 1304:
    case 1305:
    case 1306:
    case 1307:
    case 1308:
    case 1309:
    case 1310:
    case 1311:
    case 1312:
    case 1313:
    case 1314:
    case 1315:
    case 1316:
    case 1317:
    case 1318:
    case 1319:
    case 1320:
    case 1321:
    case 1322:
    case 1323:
    case 1324:
    case 1329:
    case 1330:
    case 1331:
    case 1332:
    case 1333:
    case 1334:
    case 1335:
    case 1336:
    case 1337:
    case 1338:
    case 1339:
    case 1340:
    case 1341:
    case 1342:
    case 1343:
    case 1344:
    case 1345:
    case 1346:
    case 1347:
    case 1348:
    case 1349:
    case 1350:
    case 1351:
    case 1352:
    case 1353:
    case 1354:
    case 1355:
    case 1356:
    case 1357:
    case 1358:
    case 1359:
    case 1360:
    case 1361:
    case 1362:
    case 1363:
    case 1364:
    case 1365:
    case 1366:
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
      return 0;
    case 243:
      if (a3 == 18)
      {
        goto LABEL_1406;
      }

      if (a3 != 7)
      {
        goto LABEL_440;
      }

      goto LABEL_1117;
    case 244:
      if (a3 != 17)
      {
        return 0;
      }

      v66 = *a2;
      v67 = 40;
      v68 = 24;
      v69 = 8;
      if (*a2 == 1723)
      {
        v69 = 24;
        v68 = 40;
      }

      v70 = v66 == 1720;
      if (v66 == 1720)
      {
        v71 = 24;
      }

      else
      {
        v71 = v69;
      }

      if (!v70)
      {
        v67 = v68;
      }

      if (*(*(a2 + 16) + v71) == *(*(a2 + 16) + v67))
      {
        return 1639;
      }

      else
      {
        return 1638;
      }

    case 245:
      if (a3 != 17)
      {
        return 0;
      }

      v79 = *a2;
      v80 = 40;
      v81 = 24;
      v82 = 8;
      if (*a2 == 1723)
      {
        v82 = 24;
        v81 = 40;
      }

      v83 = v79 == 1720;
      if (v79 == 1720)
      {
        v84 = 24;
      }

      else
      {
        v84 = v82;
      }

      if (!v83)
      {
        v80 = v81;
      }

      if (*(*(a2 + 16) + v84) == *(*(a2 + 16) + v80))
      {
        return 1640;
      }

      else
      {
        return 1641;
      }

    case 246:
      if (a3 != 17)
      {
        return 0;
      }

      v72 = *a2;
      v73 = 40;
      v74 = 24;
      v75 = 8;
      if (*a2 == 1723)
      {
        v75 = 24;
        v74 = 40;
      }

      v76 = v72 == 1720;
      if (v72 == 1720)
      {
        v77 = 24;
      }

      else
      {
        v77 = v75;
      }

      if (!v76)
      {
        v73 = v74;
      }

      if (*(*(a2 + 16) + v77) == *(*(a2 + 16) + v73))
      {
        return 1642;
      }

      else
      {
        return 1643;
      }

    case 247:
    case 248:
    case 470:
      if (a3 != 17)
      {
        return 0;
      }

      v6 = *a2;
      v7 = 40;
      v8 = 24;
      v9 = 8;
      if (*a2 == 1723)
      {
        v9 = 24;
        v8 = 40;
      }

      v10 = v6 == 1720;
      if (v6 == 1720)
      {
        v11 = 24;
      }

      else
      {
        v11 = v9;
      }

      if (!v10)
      {
        v7 = v8;
      }

      if (*(*(a2 + 16) + v11) == *(*(a2 + 16) + v7))
      {
        return 1644;
      }

      else
      {
        return 1645;
      }

    case 254:
      if (a3 != 17)
      {
        return 0;
      }

      v56 = (*a2 - 2183) > 0xC || ((1 << (*a2 + 121)) & 0x100B) == 0;
      if (!v56 || (result = 1638, v57 = *a2 - 3689, v57 <= 0xC) && ((1 << v57) & 0x100B) != 0)
      {
        v58 = *(a2 + 16);
        if (*(v58 + 40) == 31)
        {
          v59 = *(v58 + 56) - 1;
          if (v59 >= 4)
          {
            return 1638;
          }

          else
          {
            return dword_298D89A00[v59];
          }
        }

        else
        {
          return 1638;
        }
      }

      return result;
    case 260:
      if (a3 != 17)
      {
        return 0;
      }

      v60 = *a2;
      v61 = 40;
      v62 = 24;
      v63 = 8;
      if (*a2 == 1723)
      {
        v63 = 24;
        v62 = 40;
      }

      v64 = v60 == 1720;
      if (v60 == 1720)
      {
        v65 = 24;
      }

      else
      {
        v65 = v63;
      }

      if (!v64)
      {
        v61 = v62;
      }

      if (*(*(a2 + 16) + v65) == *(*(a2 + 16) + v61))
      {
        return 1643;
      }

      else
      {
        return 1646;
      }

    case 261:
      if (a3 != 17)
      {
        return 0;
      }

      v50 = *a2;
      v51 = 40;
      v52 = 24;
      v53 = 8;
      if (*a2 == 1723)
      {
        v53 = 24;
        v52 = 40;
      }

      v54 = v50 == 1720;
      if (v50 == 1720)
      {
        v55 = 24;
      }

      else
      {
        v55 = v53;
      }

      if (!v54)
      {
        v51 = v52;
      }

      if (*(*(a2 + 16) + v55) == *(*(a2 + 16) + v51))
      {
        return 1647;
      }

      else
      {
        return 1648;
      }

    case 297:
      if (a3 != 17)
      {
        return 0;
      }

      v97 = *a2;
      v98 = 40;
      v99 = 24;
      v100 = 8;
      if (*a2 == 1723)
      {
        v100 = 24;
        v99 = 40;
      }

      v101 = v97 == 1720;
      if (v97 == 1720)
      {
        v102 = 24;
      }

      else
      {
        v102 = v100;
      }

      if (!v101)
      {
        v98 = v99;
      }

      if (*(*(a2 + 16) + v102) == *(*(a2 + 16) + v98))
      {
        return 1649;
      }

      else
      {
        return 1650;
      }

    case 333:
      if (a3 != 17)
      {
        return 0;
      }

      v90 = *a2;
      v91 = 40;
      v92 = 24;
      v93 = 8;
      if (*a2 == 1723)
      {
        v93 = 24;
        v92 = 40;
      }

      v94 = v90 == 1720;
      if (v90 == 1720)
      {
        v95 = 24;
      }

      else
      {
        v95 = v93;
      }

      if (!v94)
      {
        v91 = v92;
      }

      if (*(*(a2 + 16) + v95) == *(*(a2 + 16) + v91))
      {
        return 1651;
      }

      else
      {
        return 1652;
      }

    case 471:
      if (a3 != 17)
      {
        return 0;
      }

      v40 = *a2;
      v41 = 40;
      v42 = 24;
      v43 = 8;
      if (*a2 == 1723)
      {
        v43 = 24;
        v42 = 40;
      }

      v44 = v40 == 1720;
      if (v40 == 1720)
      {
        v45 = 24;
      }

      else
      {
        v45 = v43;
      }

      if (!v44)
      {
        v41 = v42;
      }

      if (*(*(a2 + 16) + v45) == *(*(a2 + 16) + v41))
      {
        return 1653;
      }

      else
      {
        return 1654;
      }

    case 478:
      switch(a3)
      {
        case 12:
          if (*a2 == 1704 && *(*(a2 + 16) + 8) == 5)
          {
            return 1659;
          }

          else
          {
            return 1660;
          }

        case 11:
          if (*a2 == 1704 && *(*(a2 + 16) + 8) == 5)
          {
            return 1657;
          }

          else
          {
            return 1658;
          }

        case 10:
          if (*a2 == 1704 && *(*(a2 + 16) + 8) == 5)
          {
            return 1655;
          }

          else
          {
            return 1656;
          }

        default:
          return 0;
      }

    case 480:
      if (a3 <= 14)
      {
        if (a3 == 10)
        {
          if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
          {
            return 1575;
          }

          return 1576;
        }

        if (a3 != 11)
        {
          if (a3 != 12)
          {
            return 0;
          }

          if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
          {
            return 1661;
          }

          else
          {
            return 1662;
          }
        }

        if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
        {
          return 1577;
        }

        return 1578;
      }

      if (a3 == 15)
      {
        if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
        {
          return 1581;
        }

        return 1582;
      }

      if (a3 != 16)
      {
        if (a3 != 17)
        {
          return 0;
        }

        if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
        {
          return 1663;
        }

        else
        {
          return 1664;
        }
      }

      if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
      {
        return 1583;
      }

      return 1584;
    case 481:
      if (a3 <= 14)
      {
        if (a3 != 10)
        {
          if (a3 == 11)
          {
            if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
            {
              return 1577;
            }

            else
            {
              return 1578;
            }
          }

          else
          {
            if (a3 != 12)
            {
              return 0;
            }

            if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
            {
              return 1625;
            }

            else
            {
              return 1665;
            }
          }
        }

        if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
        {
          return 1575;
        }

        return 1576;
      }

      if (a3 != 15)
      {
        if (a3 == 16)
        {
          if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
          {
            return 1583;
          }

          else
          {
            return 1584;
          }
        }

        else
        {
          if (a3 != 17)
          {
            return 0;
          }

          if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
          {
            return 1663;
          }

          else
          {
            return 1664;
          }
        }
      }

      if ((*a2 - 2285) <= 1 && *(*(a2 + 16) + 24) == *(*(a2 + 16) + 40))
      {
        return 1581;
      }

      return 1582;
    case 597:
      if (a3 == 12)
      {
        v196 = *(a2 + 24);
        if (!v196)
        {
          return 1669;
        }

        v197 = 16 * v196;
        v198 = (*(a2 + 16) + 8);
        result = 1669;
        while (1)
        {
          if (*(v198 - 8) == 1)
          {
            v199 = *v198;
            if (v199 <= 0xAF && ((byte_298DFC5B4[v199 >> 3] >> (v199 & 7)) & 1) != 0)
            {
              break;
            }
          }

          v198 += 4;
          v197 -= 16;
          if (!v197)
          {
            return result;
          }
        }

        return 1668;
      }

      else
      {
        if (a3 != 11)
        {
          return 0;
        }

        v85 = *(a2 + 24);
        if (!v85)
        {
          return 1667;
        }

        v86 = 16 * v85;
        v87 = (*(a2 + 16) + 8);
        result = 1667;
        while (1)
        {
          if (*(v87 - 8) == 1)
          {
            v88 = *v87;
            if (v88 <= 0xAF && ((byte_298DFC5B4[v88 >> 3] >> (v88 & 7)) & 1) != 0)
            {
              break;
            }
          }

          v87 += 4;
          v86 -= 16;
          if (!v86)
          {
            return result;
          }
        }

        return 1666;
      }

    case 598:
      if (a3 == 12)
      {
        v192 = *(a2 + 24);
        if (!v192)
        {
          return 1669;
        }

        v193 = 16 * v192;
        v194 = (*(a2 + 16) + 8);
        result = 1669;
        while (1)
        {
          if (*(v194 - 8) == 1)
          {
            v195 = *v194;
            if (v195 <= 0xAF && ((byte_298DFC5B4[v195 >> 3] >> (v195 & 7)) & 1) != 0)
            {
              break;
            }
          }

          v194 += 4;
          v193 -= 16;
          if (!v193)
          {
            return result;
          }
        }

        return 1668;
      }

      else
      {
        if (a3 != 11)
        {
          return 0;
        }

        v46 = *(a2 + 24);
        if (!v46)
        {
          return 1667;
        }

        v47 = 16 * v46;
        v48 = (*(a2 + 16) + 8);
        result = 1667;
        while (1)
        {
          if (*(v48 - 8) == 1)
          {
            v49 = *v48;
            if (v49 <= 0xAF && ((byte_298DFC5B4[v49 >> 3] >> (v49 & 7)) & 1) != 0)
            {
              break;
            }
          }

          v48 += 4;
          v47 -= 16;
          if (!v47)
          {
            return result;
          }
        }

        return 1666;
      }

    case 655:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1672;
          }

          return 1673;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1674;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v348 = *(a2 + 24);
            if (v348)
            {
              v349 = *(a2 + 16);
              v350 = 16 * v348;
              v351 = (v349 + 8);
              v352 = v350;
              do
              {
                if (*(v351 - 8) == 1)
                {
                  v353 = *v351;
                  if (v353 <= 0x6F && ((byte_298DFB3AE[v353 >> 3] >> (v353 & 7)) & 1) != 0)
                  {
                    goto LABEL_2679;
                  }
                }

                v351 += 4;
                v352 -= 16;
              }

              while (v352);
              for (i = (v349 + 8); ; i += 4)
              {
                if (*(i - 8) == 1)
                {
                  v487 = *i;
                  if (v487 <= 0xAF && ((byte_298DFC5B4[v487 >> 3] >> (v487 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v350 -= 16;
                if (!v350)
                {
                  return 1678;
                }
              }

LABEL_2679:
              if (*(v349 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 656:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1679;
          }

          return 1679;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1679;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v330 = *(a2 + 24);
            if (v330)
            {
              v331 = *(a2 + 16);
              v332 = 16 * v330;
              v333 = (v331 + 8);
              v334 = v332;
              do
              {
                if (*(v333 - 8) == 1)
                {
                  v335 = *v333;
                  if (v335 <= 0x6F && ((byte_298DFB3AE[v335 >> 3] >> (v335 & 7)) & 1) != 0)
                  {
                    goto LABEL_2658;
                  }
                }

                v333 += 4;
                v334 -= 16;
              }

              while (v334);
              for (j = (v331 + 8); ; j += 4)
              {
                if (*(j - 8) == 1)
                {
                  v481 = *j;
                  if (v481 <= 0xAF && ((byte_298DFC5B4[v481 >> 3] >> (v481 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v332 -= 16;
                if (!v332)
                {
                  return 1678;
                }
              }

LABEL_2658:
              if (*(v331 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 661:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1672;
          }

          return 1673;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1674;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v360 = *(a2 + 24);
            if (v360)
            {
              v361 = *(a2 + 16);
              v362 = 16 * v360;
              v363 = (v361 + 8);
              v364 = v362;
              do
              {
                if (*(v363 - 8) == 1)
                {
                  v365 = *v363;
                  if (v365 <= 0x6F && ((byte_298DFB3AE[v365 >> 3] >> (v365 & 7)) & 1) != 0)
                  {
                    goto LABEL_2693;
                  }
                }

                v363 += 4;
                v364 -= 16;
              }

              while (v364);
              for (k = (v361 + 8); ; k += 4)
              {
                if (*(k - 8) == 1)
                {
                  v491 = *k;
                  if (v491 <= 0xAF && ((byte_298DFC5B4[v491 >> 3] >> (v491 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v362 -= 16;
                if (!v362)
                {
                  return 1678;
                }
              }

LABEL_2693:
              if (*(v361 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 662:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1679;
          }

          return 1679;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1679;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v305 = *(a2 + 24);
            if (v305)
            {
              v306 = *(a2 + 16);
              v307 = 16 * v305;
              v308 = (v306 + 8);
              v309 = v307;
              do
              {
                if (*(v308 - 8) == 1)
                {
                  v310 = *v308;
                  if (v310 <= 0x6F && ((byte_298DFB3AE[v310 >> 3] >> (v310 & 7)) & 1) != 0)
                  {
                    goto LABEL_2630;
                  }
                }

                v308 += 4;
                v309 -= 16;
              }

              while (v309);
              for (m = (v306 + 8); ; m += 4)
              {
                if (*(m - 8) == 1)
                {
                  v473 = *m;
                  if (v473 <= 0xAF && ((byte_298DFC5B4[v473 >> 3] >> (v473 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v307 -= 16;
                if (!v307)
                {
                  return 1678;
                }
              }

LABEL_2630:
              if (*(v306 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 664:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1680;
          }

          return 1591;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1593;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      return 0;
    case 665:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          goto LABEL_840;
        }

        if (a3 == 1)
        {
          return 1676;
        }

        goto LABEL_1203;
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 == 12)
        {
          goto LABEL_991;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      return 0;
    case 668:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1672;
          }

          return 1673;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1674;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v299 = *(a2 + 24);
            if (v299)
            {
              v300 = *(a2 + 16);
              v301 = 16 * v299;
              v302 = (v300 + 8);
              v303 = v301;
              do
              {
                if (*(v302 - 8) == 1)
                {
                  v304 = *v302;
                  if (v304 <= 0x6F && ((byte_298DFB3AE[v304 >> 3] >> (v304 & 7)) & 1) != 0)
                  {
                    goto LABEL_2623;
                  }
                }

                v302 += 4;
                v303 -= 16;
              }

              while (v303);
              for (n = (v300 + 8); ; n += 4)
              {
                if (*(n - 8) == 1)
                {
                  v471 = *n;
                  if (v471 <= 0xAF && ((byte_298DFC5B4[v471 >> 3] >> (v471 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v301 -= 16;
                if (!v301)
                {
                  return 1678;
                }
              }

LABEL_2623:
              if (*(v300 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 669:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1679;
          }

          return 1679;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1679;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v336 = *(a2 + 24);
            if (v336)
            {
              v337 = *(a2 + 16);
              v338 = 16 * v336;
              v339 = (v337 + 8);
              v340 = v338;
              do
              {
                if (*(v339 - 8) == 1)
                {
                  v341 = *v339;
                  if (v341 <= 0x6F && ((byte_298DFB3AE[v341 >> 3] >> (v341 & 7)) & 1) != 0)
                  {
                    goto LABEL_2665;
                  }
                }

                v339 += 4;
                v340 -= 16;
              }

              while (v340);
              for (ii = (v337 + 8); ; ii += 4)
              {
                if (*(ii - 8) == 1)
                {
                  v483 = *ii;
                  if (v483 <= 0xAF && ((byte_298DFC5B4[v483 >> 3] >> (v483 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v338 -= 16;
                if (!v338)
                {
                  return 1678;
                }
              }

LABEL_2665:
              if (*(v337 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 674:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            goto LABEL_1784;
          }

          return 1673;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1674;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v324 = *(a2 + 24);
            if (v324)
            {
              v325 = *(a2 + 16);
              v326 = 16 * v324;
              v327 = (v325 + 8);
              v328 = v326;
              do
              {
                if (*(v327 - 8) == 1)
                {
                  v329 = *v327;
                  if (v329 <= 0x6F && ((byte_298DFB3AE[v329 >> 3] >> (v329 & 7)) & 1) != 0)
                  {
                    goto LABEL_2651;
                  }
                }

                v327 += 4;
                v328 -= 16;
              }

              while (v328);
              for (jj = (v325 + 8); ; jj += 4)
              {
                if (*(jj - 8) == 1)
                {
                  v479 = *jj;
                  if (v479 <= 0xAF && ((byte_298DFC5B4[v479 >> 3] >> (v479 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v326 -= 16;
                if (!v326)
                {
                  return 1678;
                }
              }

LABEL_2651:
              if (*(v325 + 72) == 1)
              {
                return 1677;
              }
            }

            return 1678;
          case 19:
            return 1675;
          case 20:
            return 1598;
        }
      }

      return 0;
    case 675:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
LABEL_1784:
            if (sub_298CDEE70(*a2, *(a2 + 16)))
            {
              return 1672;
            }

            else
            {
              return 1681;
            }
          }

          else if (sub_298CDEE70(*a2, *(a2 + 16)))
          {
            return 1673;
          }

          else
          {
            return 1591;
          }
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          if (sub_298CDEE70(*a2, *(a2 + 16)))
          {
            return 1674;
          }

          else
          {
            return 1683;
          }
        }

        else
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1671;
        }
      }

      switch(a3)
      {
        case 17:
          v287 = *(a2 + 24);
          if (v287)
          {
            v288 = *(a2 + 16);
            v289 = 16 * v287;
            v290 = (v288 + 8);
            v291 = v289;
            do
            {
              if (*(v290 - 8) == 1)
              {
                v292 = *v290;
                if (v292 <= 0x6F && ((byte_298DFB3AE[v292 >> 3] >> (v292 & 7)) & 1) != 0)
                {
                  goto LABEL_2609;
                }
              }

              v290 += 4;
              v291 -= 16;
            }

            while (v291);
            for (kk = (v288 + 8); ; kk += 4)
            {
              if (*(kk - 8) == 1)
              {
                v467 = *kk;
                if (v467 <= 0xAF && ((byte_298DFC5B4[v467 >> 3] >> (v467 & 7)) & 1) != 0)
                {
                  break;
                }
              }

              v289 -= 16;
              if (!v289)
              {
                return 1678;
              }
            }

LABEL_2609:
            if (*(v288 + 72) == 1)
            {
              return 1677;
            }
          }

          return 1678;
        case 19:
          return 1675;
        case 20:
          return 1598;
      }

      return 0;
    case 677:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1680;
          }

          return 1591;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1593;
        }

        if (a3 == 13)
        {
          return 1685;
        }
      }

      return 0;
    case 678:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          goto LABEL_840;
        }

        if (a3 == 1)
        {
          return 1676;
        }

        goto LABEL_1203;
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 == 12)
        {
          goto LABEL_991;
        }

        if (a3 == 13)
        {
          return 1685;
        }
      }

      return 0;
    case 679:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1680;
          }

          return 1591;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1593;
        }

        if (a3 == 13)
        {
          return 1685;
        }
      }

      return 0;
    case 680:
      if (a3 > 11)
      {
        if (a3 > 18)
        {
          if (a3 == 19)
          {
            return 1675;
          }

          if (a3 == 20)
          {
            return 1598;
          }
        }

        else
        {
          if (a3 == 12)
          {
            goto LABEL_991;
          }

          if (a3 == 13)
          {
            return 1685;
          }
        }

        return 0;
      }

      if (a3 <= 9)
      {
        if (a3 != 1)
        {
          goto LABEL_1203;
        }

        return 1676;
      }

LABEL_840:
      if (a3 == 10)
      {
        goto LABEL_1020;
      }

      goto LABEL_1017;
    case 684:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1672;
          }

          else
          {
            return 1673;
          }
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1203;
          }

          return 1676;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1674;
        }

        if (a3 != 13)
        {
          return 0;
        }

        return 1671;
      }

      switch(a3)
      {
        case 17:
          v366 = *(a2 + 24);
          if (v366)
          {
            v367 = *(a2 + 16);
            v368 = 16 * v366;
            v369 = (v367 + 8);
            v370 = v368;
            do
            {
              if (*(v369 - 8) == 1)
              {
                v371 = *v369;
                if (v371 <= 0x6F && ((byte_298DFB3AE[v371 >> 3] >> (v371 & 7)) & 1) != 0)
                {
                  goto LABEL_2700;
                }
              }

              v369 += 4;
              v370 -= 16;
            }

            while (v370);
            for (mm = (v367 + 8); ; mm += 4)
            {
              if (*(mm - 8) == 1)
              {
                v493 = *mm;
                if (v493 <= 0xAF && ((byte_298DFC5B4[v493 >> 3] >> (v493 & 7)) & 1) != 0)
                {
                  break;
                }
              }

              v368 -= 16;
              if (!v368)
              {
                return 1678;
              }
            }

LABEL_2700:
            if (*(v367 + 72) == 1)
            {
              return 1677;
            }
          }

          return 1678;
        case 19:
          return 1675;
        case 20:
          return 1598;
      }

      return 0;
    case 685:
      if (a3 > 11)
      {
        if (a3 > 16)
        {
          switch(a3)
          {
            case 17:
              v318 = *(a2 + 24);
              if (!v318)
              {
                return 1678;
              }

              v319 = *(a2 + 16);
              v320 = 16 * v318;
              v321 = (v319 + 8);
              v322 = v320;
              while (1)
              {
                if (*(v321 - 8) == 1)
                {
                  v323 = *v321;
                  if (v323 <= 0x6F && ((byte_298DFB3AE[v323 >> 3] >> (v323 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v321 += 4;
                v322 -= 16;
                if (!v322)
                {
                  for (nn = (v319 + 8); ; nn += 4)
                  {
                    if (*(nn - 8) == 1)
                    {
                      v477 = *nn;
                      if (v477 <= 0xAF && ((byte_298DFC5B4[v477 >> 3] >> (v477 & 7)) & 1) != 0)
                      {
                        break;
                      }
                    }

                    v320 -= 16;
                    if (!v320)
                    {
                      return 1678;
                    }
                  }

                  break;
                }
              }

              if (*(v319 + 72) == 1)
              {
                return 1677;
              }

              else
              {
                return 1678;
              }

            case 19:
              return 1675;
            case 20:
              return 1598;
            default:
              return 0;
          }
        }

        if (a3 != 12)
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1671;
        }

        return 1679;
      }

      if (a3 > 9)
      {
        if (a3 != 10)
        {
          return 1679;
        }

        return 1679;
      }

      if (a3 == 1)
      {
        return 1676;
      }

LABEL_1203:
      if (a3 == 4)
      {
LABEL_1204:
        if (sub_298CDF12C(*a2, *(a2 + 16)))
        {
          return 1588;
        }

        else
        {
          return 1589;
        }
      }

      return 0;
    case 712:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1688;
          }

          return 1689;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1212;
          }

          return 1692;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1690;
        }

        if (a3 == 13)
        {
          return 1687;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v293 = *(a2 + 24);
            if (v293)
            {
              v294 = *(a2 + 16);
              v295 = 16 * v293;
              v296 = (v294 + 8);
              v297 = v295;
              do
              {
                if (*(v296 - 8) == 1)
                {
                  v298 = *v296;
                  if (v298 <= 0x6F && ((byte_298DFB3AE[v298 >> 3] >> (v298 & 7)) & 1) != 0)
                  {
                    goto LABEL_2616;
                  }
                }

                v296 += 4;
                v297 -= 16;
              }

              while (v297);
              for (i1 = (v294 + 8); ; i1 += 4)
              {
                if (*(i1 - 8) == 1)
                {
                  v469 = *i1;
                  if (v469 <= 0xAF && ((byte_298DFC5B4[v469 >> 3] >> (v469 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v295 -= 16;
                if (!v295)
                {
                  return 1695;
                }
              }

LABEL_2616:
              if (*(v294 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 713:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1690;
          }

          return 1690;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1212;
          }

          return 1692;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1690;
        }

        if (a3 == 13)
        {
          return 1687;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v281 = *(a2 + 24);
            if (v281)
            {
              v282 = *(a2 + 16);
              v283 = 16 * v281;
              v284 = (v282 + 8);
              v285 = v283;
              do
              {
                if (*(v284 - 8) == 1)
                {
                  v286 = *v284;
                  if (v286 <= 0x6F && ((byte_298DFB3AE[v286 >> 3] >> (v286 & 7)) & 1) != 0)
                  {
                    goto LABEL_2602;
                  }
                }

                v284 += 4;
                v285 -= 16;
              }

              while (v285);
              for (i2 = (v282 + 8); ; i2 += 4)
              {
                if (*(i2 - 8) == 1)
                {
                  v465 = *i2;
                  if (v465 <= 0xAF && ((byte_298DFC5B4[v465 >> 3] >> (v465 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v283 -= 16;
                if (!v283)
                {
                  return 1695;
                }
              }

LABEL_2602:
              if (*(v282 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 718:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1698;
          }

          return 1699;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1212;
          }

          return 1692;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1691;
        }

        if (a3 == 20)
        {
          return 1693;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1700;
        }

        if (a3 == 13)
        {
          return 1697;
        }
      }

      return 0;
    case 719:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          return 1701;
        }

        if (a3 == 1)
        {
          return 1692;
        }

        goto LABEL_1212;
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1691;
        }

        if (a3 == 20)
        {
          return 1693;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1701;
        }

        if (a3 == 13)
        {
          return 1697;
        }
      }

      return 0;
    case 722:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1688;
          }

          return 1689;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1212;
          }

          return 1692;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1690;
        }

        if (a3 == 13)
        {
          return 1687;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v342 = *(a2 + 24);
            if (v342)
            {
              v343 = *(a2 + 16);
              v344 = 16 * v342;
              v345 = (v343 + 8);
              v346 = v344;
              do
              {
                if (*(v345 - 8) == 1)
                {
                  v347 = *v345;
                  if (v347 <= 0x6F && ((byte_298DFB3AE[v347 >> 3] >> (v347 & 7)) & 1) != 0)
                  {
                    goto LABEL_2672;
                  }
                }

                v345 += 4;
                v346 -= 16;
              }

              while (v346);
              for (i3 = (v343 + 8); ; i3 += 4)
              {
                if (*(i3 - 8) == 1)
                {
                  v485 = *i3;
                  if (v485 <= 0xAF && ((byte_298DFC5B4[v485 >> 3] >> (v485 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v344 -= 16;
                if (!v344)
                {
                  return 1695;
                }
              }

LABEL_2672:
              if (*(v343 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 723:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1690;
          }

          return 1690;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1212;
          }

          return 1692;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1690;
        }

        if (a3 == 13)
        {
          return 1687;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v378 = *(a2 + 24);
            if (v378)
            {
              v379 = *(a2 + 16);
              v380 = 16 * v378;
              v381 = (v379 + 8);
              v382 = v380;
              do
              {
                if (*(v381 - 8) == 1)
                {
                  v383 = *v381;
                  if (v383 <= 0x6F && ((byte_298DFB3AE[v383 >> 3] >> (v383 & 7)) & 1) != 0)
                  {
                    goto LABEL_2715;
                  }
                }

                v381 += 4;
                v382 -= 16;
              }

              while (v382);
              for (i4 = (v379 + 8); ; i4 += 4)
              {
                if (*(i4 - 8) == 1)
                {
                  v497 = *i4;
                  if (v497 <= 0xAF && ((byte_298DFC5B4[v497 >> 3] >> (v497 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v380 -= 16;
                if (!v380)
                {
                  return 1695;
                }
              }

LABEL_2715:
              if (*(v379 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 726:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1688;
          }

          return 1689;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1212;
          }

          return 1692;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1704;
        }

        if (a3 != 13)
        {
          return 0;
        }

        return 1703;
      }

      switch(a3)
      {
        case 17:
          v354 = *(a2 + 24);
          if (v354)
          {
            v355 = *(a2 + 16);
            v356 = 16 * v354;
            v357 = (v355 + 8);
            v358 = v356;
            do
            {
              if (*(v357 - 8) == 1)
              {
                v359 = *v357;
                if (v359 <= 0x6F && ((byte_298DFB3AE[v359 >> 3] >> (v359 & 7)) & 1) != 0)
                {
                  goto LABEL_2686;
                }
              }

              v357 += 4;
              v358 -= 16;
            }

            while (v358);
            for (i5 = (v355 + 8); ; i5 += 4)
            {
              if (*(i5 - 8) == 1)
              {
                v489 = *i5;
                if (v489 <= 0xAF && ((byte_298DFC5B4[v489 >> 3] >> (v489 & 7)) & 1) != 0)
                {
                  break;
                }
              }

              v356 -= 16;
              if (!v356)
              {
                return 1695;
              }
            }

LABEL_2686:
            if (*(v355 + 72) == 1)
            {
              return 1694;
            }
          }

          return 1695;
        case 19:
          return 1691;
        case 20:
          return 1693;
      }

      return 0;
    case 727:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            if (sub_298CDEE70(*a2, *(a2 + 16)))
            {
              return 1688;
            }

            else
            {
              return 1690;
            }
          }

          else if (sub_298CDEE70(*a2, *(a2 + 16)))
          {
            return 1689;
          }

          else
          {
            return 1690;
          }
        }

        if (a3 == 1)
        {
          return 1692;
        }

LABEL_1212:
        if (a3 == 4)
        {
          goto LABEL_1221;
        }
      }

      else
      {
        if (a3 <= 16)
        {
          if (a3 == 12)
          {
            if (sub_298CDEE70(*a2, *(a2 + 16)))
            {
              return 1704;
            }

            else
            {
              return 1690;
            }
          }

          else
          {
            if (a3 != 13)
            {
              return 0;
            }

            return 1703;
          }
        }

        switch(a3)
        {
          case 17:
            v311 = *(a2 + 24);
            if (v311)
            {
              v312 = *(a2 + 16);
              v313 = 16 * v311;
              v314 = (v312 + 8);
              v315 = v313;
              do
              {
                if (*(v314 - 8) == 1)
                {
                  v316 = *v314;
                  if (v316 <= 0x6F && ((byte_298DFB3AE[v316 >> 3] >> (v316 & 7)) & 1) != 0)
                  {
                    goto LABEL_2637;
                  }
                }

                v314 += 4;
                v315 -= 16;
              }

              while (v315);
              for (i6 = (v312 + 8); ; i6 += 4)
              {
                if (*(i6 - 8) == 1)
                {
                  v475 = *i6;
                  if (v475 <= 0xAF && ((byte_298DFC5B4[v475 >> 3] >> (v475 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v313 -= 16;
                if (!v313)
                {
                  return 1695;
                }
              }

LABEL_2637:
              if (*(v312 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 736:
      if (a3 == 4)
      {
        return 1705;
      }

      if (a3 != 17)
      {
        if (a3 != 13)
        {
          return 0;
        }

        return 1707;
      }

      v217 = *a2;
      if (*a2 > 4700)
      {
        if (v217 > 4808)
        {
          if (v217 == 4809 || v217 == 4811)
          {
            v461 = *(a2 + 16);
            if (*(v461 + 16) == 1 && (*(v461 + 24) & 0xFFFFFFFE) == 0xA && !*(v461 + 56))
            {
              return 1708;
            }
          }

          return 1663;
        }

        if ((v217 - 4725) < 2)
        {
          v269 = *(a2 + 16);
          if (!*(v269 + 24) && !*(v269 + 40))
          {
            return 1708;
          }

          return 1663;
        }

        v507 = 4701;
      }

      else
      {
        if ((v217 - 3221) <= 4 && v217 != 3223)
        {
          v218 = *(a2 + 16);
          if (*(v218 + 16) == 1 && (*(v218 + 24) & 0xFFFFFFFE) == 0xA)
          {
            return 1708;
          }

          return 1663;
        }

        v507 = 4699;
      }

      if (v217 != v507 || *(*(a2 + 16) + 24))
      {
        return 1663;
      }

      return 1708;
    case 737:
      if (a3 != 4)
      {
        return 0;
      }

      return 1705;
    case 738:
      if (a3 != 4)
      {
        return 0;
      }

      return 1611;
    case 741:
      if (a3 != 4)
      {
        return 0;
      }

      return 1709;
    case 820:
      if (a3 == 12)
      {
        v200 = *(a2 + 24);
        if (v200)
        {
          v201 = 16 * v200;
          v202 = (*(a2 + 16) + 8);
          result = 1669;
          while (1)
          {
            if (*(v202 - 8) == 1)
            {
              v203 = *v202;
              if (v203 <= 0xAF && ((byte_298DFC5B4[v203 >> 3] >> (v203 & 7)) & 1) != 0)
              {
                break;
              }
            }

            v202 += 4;
            v201 -= 16;
            if (!v201)
            {
              return result;
            }
          }

          return 1668;
        }

        else
        {
          return 1669;
        }
      }

      else
      {
        if (a3 != 11)
        {
          return 0;
        }

        v113 = *(a2 + 24);
        if (v113)
        {
          v114 = 16 * v113;
          v115 = (*(a2 + 16) + 8);
          result = 1667;
          while (1)
          {
            if (*(v115 - 8) == 1)
            {
              v116 = *v115;
              if (v116 <= 0xAF && ((byte_298DFC5B4[v116 >> 3] >> (v116 & 7)) & 1) != 0)
              {
                break;
              }
            }

            v115 += 4;
            v114 -= 16;
            if (!v114)
            {
              return result;
            }
          }

          return 1666;
        }

        else
        {
          return 1667;
        }
      }

    case 874:
      if (a3 != 4)
      {
        return 0;
      }

      return 1611;
    case 879:
      switch(a3)
      {
        case 2:
          v126 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v126 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v440 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v440 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
          goto LABEL_1486;
        case 7:
          goto LABEL_1145;
        case 9:
          goto LABEL_1342;
        case 10:
          goto LABEL_1151;
        case 11:
          goto LABEL_757;
        case 12:
          goto LABEL_838;
        case 17:
          goto LABEL_1339;
        case 18:
          goto LABEL_1489;
        case 21:
          goto LABEL_1409;
        default:
          return 0;
      }

      return result;
    case 881:
      switch(a3)
      {
        case 2:
          v20 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v20 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v437 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v437 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
          goto LABEL_1486;
        case 7:
          goto LABEL_1145;
        case 9:
          goto LABEL_1342;
        case 10:
          goto LABEL_1151;
        case 11:
          goto LABEL_757;
        case 12:
          goto LABEL_838;
        case 17:
          goto LABEL_1339;
        case 18:
          goto LABEL_1489;
        case 21:
          goto LABEL_1409;
        default:
          return 0;
      }

      return result;
    case 883:
      if (a3 > 7)
      {
        goto LABEL_753;
      }

      if (a3 > 4)
      {
        goto LABEL_1139;
      }

      if (a3 == 2)
      {
        v406 = *a2 - 1383;
        if ((v406 > 0x13 || ((1 << v406) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2386;
        }

        v17 = *(*(a2 + 16) + 56);
        if (!v17)
        {
          goto LABEL_2387;
        }

        return 1712;
      }

      else
      {
        if (a3 != 3)
        {
          return 0;
        }

        v30 = *a2 - 1383;
        if ((v30 > 0x13 || ((1 << v30) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2559;
        }

        v31 = *(*(a2 + 16) + 56);
        if (!v31)
        {
          goto LABEL_2560;
        }

        return 1632;
      }

    case 886:
      if (a3 > 7)
      {
        goto LABEL_753;
      }

      if (a3 > 4)
      {
        goto LABEL_1139;
      }

      if (a3 == 2)
      {
        v412 = *a2 - 1383;
        if ((v412 > 0x13 || ((1 << v412) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2386;
        }

        v17 = *(*(a2 + 16) + 56);
        if (!v17)
        {
          goto LABEL_2387;
        }

        return 1712;
      }

      else
      {
        if (a3 != 3)
        {
          return 0;
        }

        v96 = *a2 - 1383;
        if ((v96 > 0x13 || ((1 << v96) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2559;
        }

        v31 = *(*(a2 + 16) + 56);
        if (!v31)
        {
          goto LABEL_2560;
        }

        return 1632;
      }

    case 888:
      if (a3 <= 7)
      {
        if (a3 > 4)
        {
LABEL_1139:
          if (a3 == 5)
          {
            goto LABEL_1148;
          }

          if (a3 == 6)
          {
            goto LABEL_1486;
          }

          goto LABEL_1145;
        }

        if (a3 == 2)
        {
          v419 = *a2 - 1383;
          if ((v419 > 0x13 || ((1 << v419) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v249 = *a2 - 1383;
          if ((v249 > 0x13 || ((1 << v249) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          return 1632;
        }
      }

      else
      {
LABEL_753:
        if (a3 > 11)
        {
          if (a3 != 12)
          {
            goto LABEL_1466;
          }

LABEL_838:
          v27 = *a2;
          v28 = *(a2 + 16);
          v144 = sub_298CDE964(*a2, v28);
          result = 1625;
          if (!v144)
          {
            goto LABEL_2833;
          }
        }

        else
        {
          if (a3 == 8)
          {
            goto LABEL_1486;
          }

          if (a3 == 10)
          {
LABEL_1151:
            v145 = *a2;
            v146 = *(a2 + 16);
            v170 = sub_298CDE964(*a2, v146);
            result = 1621;
            if (v170)
            {
              return result;
            }

            goto LABEL_1152;
          }

          if (a3 != 11)
          {
            return 0;
          }

LABEL_757:
          v27 = *a2;
          v28 = *(a2 + 16);
          v129 = sub_298CDE964(*a2, v28);
          result = 1623;
          if (!v129)
          {
            goto LABEL_2848;
          }
        }
      }

      return result;
    case 889:
      if (a3 > 11)
      {
        if (a3 == 12)
        {
          v27 = *a2;
          v28 = *(a2 + 16);
          if ((sub_298CDEA6C(*a2, v28) & 1) == 0)
          {
            goto LABEL_2832;
          }

          return 1617;
        }

        else
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1619;
        }
      }

      if (a3 != 10)
      {
        if (a3 != 11)
        {
          return 0;
        }

        v27 = *a2;
        v28 = *(a2 + 16);
        if (sub_298CDEA6C(*a2, v28))
        {
          return 1615;
        }

        goto LABEL_2838;
      }

      v240 = *a2;
      if ((*a2 | 2) == 0x12CA)
      {
        v241 = *(a2 + 16);
        if (*(v241 + 16) == 1 && (*(v241 + 24) & 0xFFFFFFFE) == 0xA && !*(v241 + 40))
        {
          return 1613;
        }
      }

      else
      {
        v241 = *(a2 + 16);
      }

      goto LABEL_2472;
    case 891:
      if (a3 <= 9)
      {
        if (a3 <= 5)
        {
          if (a3 != 2)
          {
            if (a3 == 3)
            {
              v32 = *a2 - 1383;
              if (v32 <= 0x13 && ((1 << v32) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
              {
                v31 = *(*(a2 + 16) + 56);
                if (!v31)
                {
                  goto LABEL_2560;
                }

                return 1632;
              }

LABEL_2559:
              LODWORD(v31) = *(*(a2 + 16) + 56);
LABEL_2560:
              if ((v31 & 0x3Fu) < 5 && (v31 & 0x1C0) == 0)
              {
                return 1633;
              }

              else
              {
                return 1634;
              }
            }

LABEL_440:
            if (a3 == 5)
            {
              goto LABEL_1148;
            }

            return 0;
          }

          v421 = *a2 - 1383;
          if (v421 <= 0x13 && ((1 << v421) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
          {
            v17 = *(*(a2 + 16) + 56);
            if (!v17)
            {
              goto LABEL_2387;
            }

            return 1712;
          }

LABEL_2386:
          LODWORD(v17) = *(*(a2 + 16) + 56);
LABEL_2387:
          if ((v17 & 0x3Fu) < 5 && (v17 & 0x1C0) == 0)
          {
            return 1713;
          }

          else
          {
            return 1714;
          }
        }

        if (a3 == 6)
        {
          goto LABEL_1486;
        }

        if (a3 != 7)
        {
          if (a3 == 8)
          {
            goto LABEL_1486;
          }

          return 0;
        }

        goto LABEL_1145;
      }

      if (a3 <= 16)
      {
        if (a3 != 10)
        {
          if (a3 != 11)
          {
            if (a3 != 12)
            {
              return 0;
            }

            v27 = *a2;
            if (*a2 > 4808)
            {
              if (v27 == 4809 || v27 == 4811)
              {
                v28 = *(a2 + 16);
                if (*(v28 + 16) == 1 && (*(v28 + 24) & 0xFFFFFFFE) == 0xA && *(v28 + 32) == 1 && (*(v28 + 56) & 0x3F) == 0)
                {
                  return 1617;
                }

                goto LABEL_2832;
              }
            }

            else if (v27 == 1396 || v27 == 1399)
            {
              v28 = *(a2 + 16);
              if (*v28 == 1 && *(v28 + 16) == 1)
              {
                v148 = *(v28 + 8);
                if (v148 == 7 || v148 == 9 || (v149 = *(v28 + 24), v149 == 9) || v149 == 7)
                {
                  if (!*(v28 + 40))
                  {
                    return 1617;
                  }
                }
              }

              goto LABEL_2832;
            }

            v28 = *(a2 + 16);
LABEL_2832:
            v512 = sub_298CDE964(v27, v28);
            result = 1625;
            if (v512)
            {
              return result;
            }

LABEL_2833:
            v134 = 1625;
            goto LABEL_2849;
          }

          v27 = *a2;
          if (*a2 > 4808)
          {
            if (v27 == 4809 || v27 == 4811)
            {
              v28 = *(a2 + 16);
              if (*(v28 + 16) == 1 && (*(v28 + 24) & 0xFFFFFFFE) == 0xA && *(v28 + 32) == 1 && (*(v28 + 56) & 0x3F) == 0)
              {
                return 1615;
              }

LABEL_2838:
              v514 = sub_298CDE964(v27, v28);
              result = 1623;
              if (v514)
              {
                return result;
              }

LABEL_2848:
              v134 = 1623;
              goto LABEL_2849;
            }
          }

          else if (v27 == 1396 || v27 == 1399)
          {
            v28 = *(a2 + 16);
            if (*v28 == 1 && *(v28 + 16) == 1)
            {
              v426 = *(v28 + 8);
              if (v426 == 7 || v426 == 9 || (v427 = *(v28 + 24), v427 == 9) || v427 == 7)
              {
                if (!*(v28 + 40))
                {
                  return 1615;
                }
              }
            }

            goto LABEL_2838;
          }

          v28 = *(a2 + 16);
          goto LABEL_2838;
        }

        v145 = *a2;
        if (*a2 > 4808)
        {
          if (v145 == 4809 || v145 == 4811)
          {
            v146 = *(a2 + 16);
            if (*(v146 + 16) == 1 && (*(v146 + 24) & 0xFFFFFFFE) == 0xA && *(v146 + 32) == 1 && (*(v146 + 56) & 0x3F) == 0)
            {
              return 1613;
            }

LABEL_2835:
            v513 = sub_298CDE964(*a2, v146);
            result = 1621;
            if (v513)
            {
              return result;
            }

LABEL_1152:
            if (sub_298CDEC14(v145, v146))
            {
              return 1621;
            }

            else
            {
              return 1622;
            }
          }
        }

        else if (v145 == 1396 || v145 == 1399)
        {
          v146 = *(a2 + 16);
          if (*v146 == 1 && *(v146 + 16) == 1)
          {
            v422 = *(v146 + 8);
            if (v422 == 7 || v422 == 9 || (v423 = *(v146 + 24), v423 == 9) || v423 == 7)
            {
              if (!*(v146 + 40))
              {
                return 1613;
              }
            }
          }

          goto LABEL_2835;
        }

        v146 = *(a2 + 16);
        goto LABEL_2835;
      }

      if (a3 != 17)
      {
LABEL_1466:
        if (a3 == 18)
        {
          goto LABEL_1489;
        }

        if (a3 == 21)
        {
LABEL_1486:
          if (sub_298CDF034(*a2, *(a2 + 16)))
          {
            return 1618;
          }

          else
          {
            return 1611;
          }
        }

        return 0;
      }

      v424 = *a2;
      if (*a2 > 4700)
      {
        if (v424 > 4808)
        {
          if (v424 != 4809 && v424 != 4811)
          {
            return 1663;
          }

          v510 = *(a2 + 16);
          if (*(v510 + 16) != 1 || (*(v510 + 24) & 0xFFFFFFFE) != 0xA || *(v510 + 56))
          {
            return 1663;
          }

          return 1708;
        }

        if ((v424 - 4725) < 2)
        {
          v504 = *(a2 + 16);
          if (*(v504 + 24) || *(v504 + 40))
          {
            return 1663;
          }

          return 1708;
        }

        v518 = 4701;
      }

      else
      {
        if ((v424 - 3221) <= 4 && v424 != 3223)
        {
          v425 = *(a2 + 16);
          if (*(v425 + 16) == 1 && (*(v425 + 24) & 0xFFFFFFFE) == 0xA)
          {
            return 1708;
          }

          return 1663;
        }

        v518 = 4699;
      }

      if (v424 != v518 || *(*(a2 + 16) + 24))
      {
        return 1663;
      }

      return 1708;
    case 895:
      result = 1620;
      switch(a3)
      {
        case 2:
          v29 = *a2 - 1383;
          if ((v29 > 0x13 || ((1 << v29) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v447 = *a2 - 1383;
          if ((v447 > 0x13 || ((1 << v447) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
          goto LABEL_1486;
        case 7:
          goto LABEL_1145;
        case 9:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1559;
          }

          else
          {
            return 1560;
          }

        case 10:
          goto LABEL_1151;
        case 11:
          goto LABEL_1599;
        case 12:
          goto LABEL_1591;
        case 13:
          return result;
        case 15:
          goto LABEL_1593;
        case 16:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1563;
          }

          else
          {
            return 1564;
          }

        case 17:
LABEL_2005:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1637;
          }

          else
          {
            return 1638;
          }

        case 18:
          goto LABEL_1406;
        case 21:
          goto LABEL_1763;
        default:
          return 0;
      }

      return result;
    case 896:
      if (a3 <= 10)
      {
        if (a3 <= 4)
        {
          if (a3 == 2)
          {
            v407 = *a2 - 1383;
            if ((v407 > 0x13 || ((1 << v407) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
            {
              goto LABEL_2475;
            }

            v21 = *(*(a2 + 16) + 56);
            if (!v21)
            {
              goto LABEL_2476;
            }

            return 1629;
          }

          else
          {
            if (a3 != 3)
            {
              return 0;
            }

            v245 = *a2 - 1383;
            if ((v245 > 0x13 || ((1 << v245) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
            {
              goto LABEL_2559;
            }

            v31 = *(*(a2 + 16) + 56);
            if (!v31)
            {
              goto LABEL_2560;
            }

            return 1632;
          }
        }

        switch(a3)
        {
          case 5:
            v408 = *a2 - 1383;
            if (v408 <= 0x13 && ((1 << v408) & 0xC8019) != 0)
            {
              goto LABEL_2306;
            }

            result = 1570;
            v409 = *a2 - 6787;
            if (v409 <= 0xB)
            {
              goto LABEL_2305;
            }

            return result;
          case 7:
            goto LABEL_1894;
          case 10:
            goto LABEL_1112;
        }
      }

      else
      {
        if (a3 <= 14)
        {
          if (a3 == 11)
          {
            goto LABEL_1599;
          }

          if (a3 == 12)
          {
            goto LABEL_1591;
          }

          if (a3 != 13)
          {
            return 0;
          }

          return 1620;
        }

        switch(a3)
        {
          case 15:
            goto LABEL_1593;
          case 18:
            goto LABEL_1901;
          case 21:
            goto LABEL_1393;
        }
      }

      return 0;
    case 897:
      if (a3 > 10)
      {
        if (a3 <= 14)
        {
          switch(a3)
          {
            case 11:
LABEL_1599:
              v107 = *a2;
              v108 = *(a2 + 16);
              v230 = sub_298CDE964(*a2, v108);
              result = 1623;
              if (v230)
              {
                return result;
              }

              v110 = 1623;
              break;
            case 12:
LABEL_1591:
              v107 = *a2;
              v108 = *(a2 + 16);
              v228 = sub_298CDE964(*a2, v108);
              result = 1625;
              if (v228)
              {
                return result;
              }

              v110 = 1625;
              break;
            case 13:
              return 1620;
            default:
              return 0;
          }

          goto LABEL_1760;
        }

        if (a3 == 15)
        {
LABEL_1593:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1635;
          }

          else
          {
            return 1636;
          }
        }

        if (a3 == 18)
        {
LABEL_1901:
          v262 = *a2 - 1383;
          if (v262 > 0x13 || ((1 << v262) & 0xC8019) == 0)
          {
            result = 1574;
            if ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0)
            {
              return result;
            }
          }

          goto LABEL_1905;
        }

        if (a3 != 21)
        {
          return 0;
        }

LABEL_1393:
        v213 = *a2 - 1383;
        if (v213 > 0x13 || ((1 << v213) & 0xC8019) == 0)
        {
          result = 1628;
          if ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0)
          {
            return result;
          }
        }

        goto LABEL_1397;
      }

      if (a3 <= 4)
      {
        if (a3 == 2)
        {
          v413 = *a2 - 1383;
          if ((v413 > 0x13 || ((1 << v413) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          return 1629;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v247 = *a2 - 1383;
          if ((v247 > 0x13 || ((1 << v247) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          return 1632;
        }
      }

      if (a3 == 5)
      {
        v414 = *a2 - 1383;
        if (v414 > 0x13 || ((1 << v414) & 0xC8019) == 0)
        {
          result = 1570;
          v409 = *a2 - 6787;
          if (v409 > 0xB)
          {
            return result;
          }

LABEL_2305:
          if (((1 << v409) & 0xC99) == 0)
          {
            return result;
          }
        }

        goto LABEL_2306;
      }

      if (a3 == 7)
      {
LABEL_1894:
        v261 = *a2 - 1383;
        if (v261 > 0x13 || ((1 << v261) & 0xC8019) == 0)
        {
          result = 1572;
          if ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0)
          {
            return result;
          }
        }

        goto LABEL_1898;
      }

      if (a3 != 10)
      {
        return 0;
      }

LABEL_1112:
      v165 = *a2;
      v166 = *(a2 + 16);
      v167 = sub_298CDE964(*a2, v166);
      result = 1621;
      if (v167)
      {
        return result;
      }

      goto LABEL_2519;
    case 903:
      if (a3 > 11)
      {
        if (a3 != 12)
        {
          if (a3 != 17)
          {
            return 0;
          }

          v152 = *a2;
          if (*a2 > 4700)
          {
            if (v152 > 4808)
            {
              if (v152 == 4809 || v152 == 4811)
              {
                v503 = *(a2 + 16);
                if (*(v503 + 16) == 1 && (*(v503 + 24) & 0xFFFFFFFE) == 0xA && !*(v503 + 56))
                {
                  return 1708;
                }
              }

              return 1717;
            }

            if ((v152 - 4725) < 2)
            {
              v317 = *(a2 + 16);
              if (!*(v317 + 24) && !*(v317 + 40))
              {
                return 1708;
              }

              return 1717;
            }

            v508 = 4701;
          }

          else
          {
            if ((v152 - 3221) <= 4 && v152 != 3223)
            {
              v153 = *(a2 + 16);
              if (*(v153 + 16) == 1 && (*(v153 + 24) & 0xFFFFFFFE) == 0xA)
              {
                return 1708;
              }

              return 1717;
            }

            v508 = 4699;
          }

          if (v152 == v508 && !*(*(a2 + 16) + 24))
          {
            return 1708;
          }

          return 1717;
        }

LABEL_947:
        result = 1716;
        v154 = *a2 - 4699;
        if (v154 > 9)
        {
          return result;
        }

        v155 = 1 << v154;
        if ((v155 & 0x107) == 0)
        {
          if ((v155 & 0x268) != 0)
          {
            goto LABEL_1261;
          }

          return result;
        }

LABEL_1263:
        v183 = (*(a2 + 16) + 24);
LABEL_1264:
        if (*v183)
        {
          return 1716;
        }

        else
        {
          return 1617;
        }
      }

      if (a3 != 10)
      {
        if (a3 != 11)
        {
          return 0;
        }

        result = 1614;
        v36 = *a2 - 4699;
        if (v36 <= 9)
        {
          v37 = 1 << v36;
          if ((v37 & 0x107) != 0)
          {
            goto LABEL_1565;
          }

          if ((v37 & 0x268) != 0)
          {
LABEL_1563:
            v223 = *(a2 + 16);
            if (!*(v223 + 24))
            {
              v224 = (v223 + 40);
LABEL_1566:
              if (*v224)
              {
                return 1614;
              }

              else
              {
                return 1615;
              }
            }
          }
        }

        return result;
      }

      result = 1612;
      v243 = *a2 - 4699;
      if (v243 > 9)
      {
        return result;
      }

      v123 = 1 << v243;
      if ((v123 & 0x107) != 0)
      {
LABEL_1789:
        v125 = (*(a2 + 16) + 24);
LABEL_1790:
        if (*v125)
        {
          return 1612;
        }

        else
        {
          return 1613;
        }
      }

LABEL_725:
      if ((v123 & 0x268) == 0)
      {
        return result;
      }

LABEL_726:
      v124 = *(a2 + 16);
      if (!*(v124 + 24))
      {
        v125 = (v124 + 40);
        goto LABEL_1790;
      }

      return result;
    case 904:
      if (a3 == 12)
      {
        goto LABEL_947;
      }

      if (a3 != 11)
      {
        return 0;
      }

      result = 1614;
      v111 = *a2 - 4699;
      if (v111 > 9)
      {
        return result;
      }

      v112 = 1 << v111;
      if ((v112 & 0x107) != 0)
      {
        goto LABEL_1565;
      }

      if ((v112 & 0x268) == 0)
      {
        return result;
      }

      goto LABEL_1563;
    case 915:
      if (a3 == 12)
      {
        goto LABEL_947;
      }

      if (a3 != 11)
      {
        if (a3 != 10)
        {
          return 0;
        }

        result = 1612;
        v122 = *a2 - 4699;
        if (v122 > 9)
        {
          return result;
        }

        v123 = 1 << v122;
        if ((v123 & 0x107) != 0)
        {
          goto LABEL_1789;
        }

        goto LABEL_725;
      }

      result = 1614;
      v221 = *a2 - 4699;
      if (v221 > 9)
      {
        return result;
      }

      v222 = 1 << v221;
      if ((v222 & 0x107) != 0)
      {
        goto LABEL_1565;
      }

      if ((v222 & 0x268) == 0)
      {
        return result;
      }

      goto LABEL_1563;
    case 916:
      if (a3 == 12)
      {
        goto LABEL_947;
      }

      if (a3 != 11)
      {
        return 0;
      }

      result = 1614;
      v117 = *a2 - 4699;
      if (v117 > 9)
      {
        return result;
      }

      v118 = 1 << v117;
      if ((v118 & 0x107) != 0)
      {
        goto LABEL_1565;
      }

      if ((v118 & 0x268) == 0)
      {
        return result;
      }

      goto LABEL_1563;
    case 928:
      if (a3 > 11)
      {
        if (a3 > 16)
        {
          if (a3 != 17)
          {
            if (a3 == 19)
            {
              return 1691;
            }

            if (a3 == 20)
            {
              return 1693;
            }

            return 0;
          }

          v384 = *(a2 + 24);
          if (!v384)
          {
            return 1695;
          }

          v385 = *(a2 + 16);
          v386 = 16 * v384;
          v387 = (v385 + 8);
          v388 = v386;
          while (1)
          {
            if (*(v387 - 8) == 1)
            {
              v389 = *v387;
              if (v389 <= 0x6F && ((byte_298DFB3AE[v389 >> 3] >> (v389 & 7)) & 1) != 0)
              {
                break;
              }
            }

            v387 += 4;
            v388 -= 16;
            if (!v388)
            {
              for (i7 = (v385 + 8); ; i7 += 4)
              {
                if (*(i7 - 8) == 1)
                {
                  v499 = *i7;
                  if (v499 <= 0xAF && ((byte_298DFC5B4[v499 >> 3] >> (v499 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v386 -= 16;
                if (!v386)
                {
                  return 1695;
                }
              }

              break;
            }
          }

          if (*(v385 + 72) != 1)
          {
            return 1695;
          }

          return 1694;
        }

        if (a3 != 12)
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1687;
        }

        return 1690;
      }

      if (a3 > 9)
      {
        if (a3 != 10)
        {
          return 1690;
        }

        return 1690;
      }

      if (a3 == 1)
      {
        return 1692;
      }

LABEL_1216:
      if (a3 != 4)
      {
        return 0;
      }

      goto LABEL_1221;
    case 949:
      if (a3 == 13)
      {
        return 1718;
      }

      if (a3 != 17)
      {
        return 0;
      }

      v130 = *a2;
      if (*a2 > 4700)
      {
        if (v130 > 4808)
        {
          if (v130 == 4809 || v130 == 4811)
          {
            v442 = *(a2 + 16);
            if (*(v442 + 16) == 1 && (*(v442 + 24) & 0xFFFFFFFE) == 0xA && !*(v442 + 56))
            {
              return 1708;
            }
          }

          return 1642;
        }

        if ((v130 - 4725) < 2)
        {
          v265 = *(a2 + 16);
          if (!*(v265 + 24) && !*(v265 + 40))
          {
            return 1708;
          }

          return 1642;
        }

        v502 = 4701;
      }

      else
      {
        if ((v130 - 3221) <= 4 && v130 != 3223)
        {
          v131 = *(a2 + 16);
          if (*(v131 + 16) == 1 && (*(v131 + 24) & 0xFFFFFFFE) == 0xA)
          {
            return 1708;
          }

          return 1642;
        }

        v502 = 4699;
      }

      if (v130 == v502 && !*(*(a2 + 16) + 24))
      {
        return 1708;
      }

      return 1642;
    case 963:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          goto LABEL_519;
        }

        if (a3 == 1)
        {
          return 1587;
        }

        goto LABEL_274;
      }

      if (a3 > 18)
      {
        goto LABEL_936;
      }

      if (a3 == 12)
      {
        goto LABEL_991;
      }

      if (a3 != 13)
      {
        return 0;
      }

      return 1671;
    case 967:
      if (a3 <= 11)
      {
        goto LABEL_519;
      }

      if (a3 == 12)
      {
        goto LABEL_991;
      }

      if (a3 != 13)
      {
        return 0;
      }

      return 1720;
    case 970:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
LABEL_519:
          if (a3 == 10)
          {
            goto LABEL_1020;
          }

          if (a3 == 11)
          {
            goto LABEL_1017;
          }
        }

        else
        {
          if (a3 == 1)
          {
            return 1587;
          }

LABEL_274:
          if (a3 == 4)
          {
            goto LABEL_1204;
          }
        }

        return 0;
      }

      if (a3 <= 18)
      {
        if (a3 == 12)
        {
          goto LABEL_991;
        }

        if (a3 == 13)
        {
          return 1685;
        }

        return 0;
      }

LABEL_936:
      if (a3 == 19)
      {
        goto LABEL_1425;
      }

      if (a3 != 20)
      {
        return 0;
      }

      goto LABEL_1545;
    case 976:
      if (a3 != 17)
      {
        if (a3 != 15)
        {
          return 0;
        }

        v22 = *a2;
        if (*a2 <= 5414)
        {
          if ((v22 - 4587) >= 2 && (v22 - 4739) >= 2)
          {
            return 1600;
          }

LABEL_2259:
          v405 = *(a2 + 16);
          if (*(v405 + 48) != 1 || (*(v405 + 56) & 0xFFFFFFFE) != 0xA)
          {
            return 1600;
          }

          return 1599;
        }

        if (v22 > 7190)
        {
          if (v22 == 7410)
          {
            goto LABEL_2259;
          }

          v260 = 7191;
        }

        else
        {
          if (v22 == 5415)
          {
            goto LABEL_2259;
          }

          v260 = 5637;
        }

        if (v22 != v260)
        {
          return 1600;
        }

        goto LABEL_2259;
      }

      v190 = *(a2 + 16);
      if (*(v190 + 48) == 1 && (*(v190 + 56) & 0xFFFFFFFE) == 0xA)
      {
        return 1721;
      }

      return 1722;
    case 977:
      if (a3 != 17)
      {
        if (a3 != 15)
        {
          return 0;
        }

        v39 = *a2;
        if (*a2 <= 5414)
        {
          if ((v39 - 4587) >= 2 && (v39 - 4739) >= 2)
          {
            return 1600;
          }

          goto LABEL_2287;
        }

        if (v39 > 7190)
        {
          if (v39 != 7410)
          {
            v263 = 7191;
LABEL_2286:
            if (v39 != v263)
            {
              return 1600;
            }
          }
        }

        else if (v39 != 5415)
        {
          v263 = 5637;
          goto LABEL_2286;
        }

LABEL_2287:
        v411 = *(a2 + 16);
        if (*(v411 + 48) == 1 && (*(v411 + 56) & 0xFFFFFFFE) == 0xA)
        {
          return 1599;
        }

        return 1600;
      }

      v191 = *(a2 + 16);
      if (*(v191 + 48) == 1 && (*(v191 + 56) & 0xFFFFFFFE) == 0xA)
      {
        return 1721;
      }

      return 1722;
    case 978:
      if (a3 == 17)
      {
        v204 = *(a2 + 16);
        if (*(v204 + 48) == 1 && (*(v204 + 56) & 0xFFFFFFFE) == 0xA)
        {
          return 1721;
        }

        return 1722;
      }

      if (a3 != 15)
      {
        return 0;
      }

      v119 = *a2;
      if (*a2 <= 5414)
      {
        if ((v119 - 4587) >= 2 && (v119 - 4739) >= 2)
        {
          return 1600;
        }

        goto LABEL_2330;
      }

      if (v119 > 7190)
      {
        if (v119 != 7410)
        {
          v264 = 7191;
LABEL_2329:
          if (v119 != v264)
          {
            return 1600;
          }
        }
      }

      else if (v119 != 5415)
      {
        v264 = 5637;
        goto LABEL_2329;
      }

LABEL_2330:
      v418 = *(a2 + 16);
      if (*(v418 + 48) == 1 && (*(v418 + 56) & 0xFFFFFFFE) == 0xA)
      {
        return 1599;
      }

      return 1600;
    case 1007:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          return 1701;
        }

        if (a3 == 1)
        {
          return 1692;
        }

        goto LABEL_1216;
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1691;
        }

        if (a3 == 20)
        {
          return 1693;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1701;
        }

        if (a3 == 13)
        {
          return 1697;
        }
      }

      return 0;
    case 1027:
      switch(a3)
      {
        case 2:
          v103 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v103 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v438 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v438 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1582;
        case 6:
        case 8:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
          goto LABEL_1342;
        case 10:
          goto LABEL_1585;
        case 11:
          goto LABEL_648;
        case 12:
          goto LABEL_1587;
        case 17:
          goto LABEL_1339;
        case 18:
          goto LABEL_1406;
        case 21:
          goto LABEL_1763;
        default:
          return 0;
      }

      return result;
    case 1028:
      if (a3 != 4)
      {
        return 0;
      }

      return 1705;
    case 1029:
      switch(a3)
      {
        case 2:
          v104 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v104 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v439 = (*a2 - 1383) > 0x13 || ((1 << (*a2 - 103)) & 0xC8019) == 0;
          if (v439 && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1582;
        case 6:
        case 8:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
LABEL_1342:
          if ((*(*(a2 + 16) + 56) & 0x1FF) != 0)
          {
            return 1711;
          }

          else
          {
            return 1710;
          }

        case 10:
          goto LABEL_1585;
        case 11:
          goto LABEL_648;
        case 12:
          goto LABEL_1587;
        case 17:
LABEL_1339:
          if ((*(*(a2 + 16) + 56) & 0x1FF) != 0)
          {
            return 1638;
          }

          else
          {
            return 1637;
          }

        case 18:
          goto LABEL_1406;
        case 21:
LABEL_1763:
          if (sub_298CDF034(*a2, *(a2 + 16)))
          {
            return 1627;
          }

          else
          {
            return 1628;
          }

        default:
          return 0;
      }

      return result;
    case 1030:
      if (a3 <= 7)
      {
        if (a3 <= 4)
        {
          if (a3 != 2)
          {
            if (a3 != 3)
            {
              return 0;
            }

            v248 = *a2 - 1383;
            if (v248 <= 0x13 && ((1 << v248) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              v31 = *(*(a2 + 16) + 56);
              if (!v31)
              {
                goto LABEL_2560;
              }

              return 1632;
            }

            goto LABEL_2559;
          }

          v415 = *a2 - 1383;
          if (v415 <= 0x13 && ((1 << v415) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
          {
            v17 = *(*(a2 + 16) + 56);
            if (!v17)
            {
              goto LABEL_2387;
            }

            return 1712;
          }

          goto LABEL_2386;
        }

        if (a3 == 5)
        {
LABEL_1582:
          if (sub_298CDF034(*a2, *(a2 + 16)))
          {
            return 1555;
          }

          else
          {
            return 1556;
          }
        }

        if (a3 != 6)
        {
          goto LABEL_1117;
        }

        goto LABEL_1403;
      }

      if (a3 <= 11)
      {
        if (a3 != 8)
        {
          if (a3 == 10)
          {
LABEL_1585:
            v165 = *a2;
            v166 = *(a2 + 16);
            v226 = sub_298CDE964(*a2, v166);
            result = 1621;
            if (!v226)
            {
LABEL_2519:
              if (sub_298CDEC14(v165, v166))
              {
                return 1621;
              }

              else
              {
                return 1622;
              }
            }

            return result;
          }

          if (a3 != 11)
          {
            return 0;
          }

LABEL_648:
          v107 = *a2;
          v108 = *(a2 + 16);
          v109 = sub_298CDE964(*a2, v108);
          v110 = 1623;
          result = 1623;
          if (v109)
          {
            return result;
          }

LABEL_1760:
          if (sub_298CDED3C(v107, v108))
          {
            return v110;
          }

          else
          {
            return v110 + 1;
          }
        }

LABEL_1403:
        if (sub_298CDF034(*a2, *(a2 + 16)))
        {
          return 1618;
        }

        else
        {
          return 1611;
        }
      }

      if (a3 != 12)
      {
        if (a3 == 18)
        {
          goto LABEL_1406;
        }

        if (a3 != 21)
        {
          return 0;
        }

        goto LABEL_1403;
      }

LABEL_1587:
      v184 = *a2;
      v185 = *(a2 + 16);
      v227 = sub_298CDE964(*a2, v185);
      result = 1661;
      if (v227)
      {
        return result;
      }

      goto LABEL_1588;
    case 1032:
      if (a3 <= 7)
      {
        if (a3 > 4)
        {
          goto LABEL_1143;
        }

        if (a3 == 2)
        {
          v417 = *a2 - 1383;
          if ((v417 > 0x13 || ((1 << v417) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v169 = *a2 - 1383;
          if ((v169 > 0x13 || ((1 << v169) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          return 1632;
        }
      }

      if (a3 > 11)
      {
        goto LABEL_746;
      }

      switch(a3)
      {
        case 8:
          goto LABEL_1486;
        case 10:
          goto LABEL_842;
        case 11:
          goto LABEL_798;
      }

      return 0;
    case 1033:
      if (a3 <= 7)
      {
        if (a3 > 4)
        {
          goto LABEL_1143;
        }

        if (a3 == 2)
        {
          v402 = *a2 - 1383;
          if ((v402 > 0x13 || ((1 << v402) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v158 = *a2 - 1383;
          if ((v158 > 0x13 || ((1 << v158) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          return 1632;
        }
      }

      if (a3 > 11)
      {
        goto LABEL_746;
      }

      switch(a3)
      {
        case 8:
          goto LABEL_1486;
        case 10:
          goto LABEL_842;
        case 11:
          goto LABEL_798;
      }

      return 0;
    case 1034:
      if (a3 <= 9)
      {
        if (a3 <= 5)
        {
          if (a3 != 2)
          {
            if (a3 == 3)
            {
              v434 = *a2 - 1383;
              if (v434 <= 0x13 && ((1 << v434) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
              {
                v159 = *(*(a2 + 16) + 56);
                if (!v159)
                {
                  goto LABEL_2571;
                }

                return 1632;
              }

              else
              {
LABEL_2570:
                LODWORD(v159) = *(*(a2 + 16) + 56);
LABEL_2571:
                if ((v159 & 0x3Fu) < 5 && (v159 & 0x1C0) == 0)
                {
                  return 1633;
                }

                else
                {
                  return 1634;
                }
              }
            }

            if (a3 == 5)
            {
              goto LABEL_1148;
            }

            return 0;
          }

          v428 = *a2 - 1383;
          if (v428 <= 0x13 && ((1 << v428) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
          {
            v17 = *(*(a2 + 16) + 56);
            if (!v17)
            {
              goto LABEL_2387;
            }

            return 1712;
          }

          goto LABEL_2386;
        }

        if (a3 == 6)
        {
          goto LABEL_1486;
        }

        if (a3 != 7)
        {
          if (a3 == 8)
          {
            goto LABEL_1486;
          }

          return 0;
        }

LABEL_1145:
        if (sub_298CDF034(*a2, *(a2 + 16)))
        {
          return 1557;
        }

        else
        {
          return 1558;
        }
      }

      if (a3 <= 16)
      {
        if (a3 != 10)
        {
          if (a3 != 11)
          {
            if (a3 != 12)
            {
              return 0;
            }

            v127 = *a2;
            if (*a2 > 4808)
            {
              if (v127 == 4809 || v127 == 4811)
              {
                v128 = *(a2 + 16);
                if (*(v128 + 16) == 1 && (*(v128 + 24) & 0xFFFFFFFE) == 0xA && *(v128 + 32) == 1 && (*(v128 + 56) & 0x3F) == 0)
                {
                  return 1617;
                }

                goto LABEL_2841;
              }
            }

            else if (v127 == 1396 || v127 == 1399)
            {
              v128 = *(a2 + 16);
              if (*v128 == 1 && *(v128 + 16) == 1)
              {
                v150 = *(v128 + 8);
                if (v150 == 7 || v150 == 9 || (v151 = *(v128 + 24), v151 == 9) || v151 == 7)
                {
                  if (!*(v128 + 40))
                  {
                    return 1617;
                  }
                }
              }

              goto LABEL_2841;
            }

            v128 = *(a2 + 16);
LABEL_2841:
            v515 = sub_298CDE964(*a2, v128);
            result = 1661;
            if (v515)
            {
              return result;
            }

LABEL_1774:
            if (sub_298CDED3C(v127, v128))
            {
              return 1661;
            }

            else
            {
              return 1723;
            }
          }

          v27 = *a2;
          if (*a2 > 4808)
          {
            if (v27 == 4809 || v27 == 4811)
            {
              v28 = *(a2 + 16);
              if (*(v28 + 16) == 1 && (*(v28 + 24) & 0xFFFFFFFE) == 0xA && *(v28 + 32) == 1 && (*(v28 + 56) & 0x3F) == 0)
              {
                return 1615;
              }

LABEL_2847:
              v517 = sub_298CDE964(*a2, v28);
              result = 1623;
              if (v517)
              {
                return result;
              }

              goto LABEL_2848;
            }
          }

          else if (v27 == 1396 || v27 == 1399)
          {
            v28 = *(a2 + 16);
            if (*v28 == 1 && *(v28 + 16) == 1)
            {
              v435 = *(v28 + 8);
              if (v435 == 7 || v435 == 9 || (v436 = *(v28 + 24), v436 == 9) || v436 == 7)
              {
                if (!*(v28 + 40))
                {
                  return 1615;
                }
              }
            }

            goto LABEL_2847;
          }

          v28 = *(a2 + 16);
          goto LABEL_2847;
        }

        v145 = *a2;
        if (*a2 > 4808)
        {
          if (v145 == 4809 || v145 == 4811)
          {
            v146 = *(a2 + 16);
            if (*(v146 + 16) == 1 && (*(v146 + 24) & 0xFFFFFFFE) == 0xA && *(v146 + 32) == 1 && (*(v146 + 56) & 0x3F) == 0)
            {
              return 1613;
            }

LABEL_2844:
            v516 = sub_298CDE964(*a2, v146);
            result = 1621;
            if (v516)
            {
              return result;
            }

            goto LABEL_1152;
          }
        }

        else if (v145 == 1396 || v145 == 1399)
        {
          v146 = *(a2 + 16);
          if (*v146 == 1 && *(v146 + 16) == 1)
          {
            v430 = *(v146 + 8);
            if (v430 == 7 || v430 == 9 || (v431 = *(v146 + 24), v431 == 9) || v431 == 7)
            {
              if (!*(v146 + 40))
              {
                return 1613;
              }
            }
          }

          goto LABEL_2844;
        }

        v146 = *(a2 + 16);
        goto LABEL_2844;
      }

      if (a3 != 17)
      {
        goto LABEL_1484;
      }

      v432 = *a2;
      if (*a2 > 4700)
      {
        if (v432 > 4808)
        {
          if (v432 == 4809 || v432 == 4811)
          {
            v511 = *(a2 + 16);
            if (*(v511 + 16) == 1 && (*(v511 + 24) & 0xFFFFFFFE) == 0xA && !*(v511 + 56))
            {
              return 1708;
            }
          }

          return 1663;
        }

        if ((v432 - 4725) < 2)
        {
          v505 = *(a2 + 16);
          if (!*(v505 + 24) && !*(v505 + 40))
          {
            return 1708;
          }

          return 1663;
        }

        v519 = 4701;
      }

      else
      {
        if ((v432 - 3221) <= 4 && v432 != 3223)
        {
          v433 = *(a2 + 16);
          if (*(v433 + 16) == 1 && (*(v433 + 24) & 0xFFFFFFFE) == 0xA)
          {
            return 1708;
          }

          return 1663;
        }

        v519 = 4699;
      }

      if (v432 == v519 && !*(*(a2 + 16) + 24))
      {
        return 1708;
      }

      return 1663;
    case 1035:
      if (a3 > 11)
      {
        if (a3 == 12)
        {
          v127 = *a2;
          v128 = *(a2 + 16);
          if ((sub_298CDEA6C(*a2, v128) & 1) == 0)
          {
            goto LABEL_1773;
          }

          return 1617;
        }

        else
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1619;
        }
      }

      if (a3 != 10)
      {
        if (a3 != 11)
        {
          return 0;
        }

        v27 = *a2;
        v28 = *(a2 + 16);
        if (sub_298CDEA6C(*a2, v28))
        {
          return 1615;
        }

        goto LABEL_799;
      }

      v240 = *a2;
      if ((*a2 | 2) == 0x12CA)
      {
        v241 = *(a2 + 16);
        if (*(v241 + 16) == 1 && (*(v241 + 24) & 0xFFFFFFFE) == 0xA && !*(v241 + 40))
        {
          return 1613;
        }
      }

      else
      {
        v241 = *(a2 + 16);
      }

LABEL_2472:
      v443 = sub_298CDEC14(v240, v241);
      goto LABEL_2587;
    case 1052:
      if (a3 != 13)
      {
        return 0;
      }

      return 1718;
    case 1068:
      result = 1620;
      switch(a3)
      {
        case 2:
          v106 = *a2 - 1383;
          if ((v106 > 0x13 || ((1 << v106) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          result = 1712;
          break;
        case 3:
          v457 = *a2 - 1383;
          if ((v457 > 0x13 || ((1 << v457) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
        case 21:
          goto LABEL_1486;
        case 7:
          goto LABEL_1145;
        case 9:
          goto LABEL_2011;
        case 10:
          goto LABEL_842;
        case 11:
          goto LABEL_798;
        case 12:
          goto LABEL_851;
        case 13:
          return result;
        case 15:
          goto LABEL_1270;
        case 16:
          goto LABEL_2017;
        case 17:
          goto LABEL_1333;
        case 18:
          goto LABEL_1489;
        default:
          return 0;
      }

      return result;
    case 1069:
      if (a3 <= 7)
      {
        if (a3 > 4)
        {
          goto LABEL_1143;
        }

        if (a3 == 2)
        {
          v416 = *a2 - 1383;
          if ((v416 > 0x13 || ((1 << v416) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v168 = *a2 - 1383;
          if ((v168 > 0x13 || ((1 << v168) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          return 1632;
        }
      }

      if (a3 > 11)
      {
        goto LABEL_746;
      }

      switch(a3)
      {
        case 8:
          goto LABEL_1486;
        case 10:
          goto LABEL_842;
        case 11:
          goto LABEL_798;
      }

      return 0;
    case 1070:
      if (a3 <= 7)
      {
        if (a3 > 4)
        {
          goto LABEL_1143;
        }

        if (a3 == 2)
        {
          v420 = *a2 - 1383;
          if ((v420 > 0x13 || ((1 << v420) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v250 = *a2 - 1383;
          if ((v250 > 0x13 || ((1 << v250) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          return 1632;
        }
      }

      if (a3 > 11)
      {
        goto LABEL_850;
      }

      if (a3 == 8)
      {
        goto LABEL_1486;
      }

      if (a3 == 10)
      {
        goto LABEL_842;
      }

      if (a3 != 11)
      {
        return 0;
      }

      goto LABEL_798;
    case 1071:
      if (a3 <= 7)
      {
        if (a3 > 4)
        {
          goto LABEL_1143;
        }

        if (a3 == 2)
        {
          v403 = *a2 - 1383;
          if ((v403 > 0x13 || ((1 << v403) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v160 = *a2 - 1383;
          if ((v160 > 0x13 || ((1 << v160) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          return 1632;
        }
      }

      if (a3 <= 11)
      {
        switch(a3)
        {
          case 8:
            goto LABEL_1486;
          case 10:
            goto LABEL_842;
          case 11:
            goto LABEL_798;
        }

        return 0;
      }

LABEL_746:
      if (a3 != 12)
      {
        goto LABEL_1484;
      }

      v127 = *a2;
      v128 = *(a2 + 16);
LABEL_1773:
      v242 = sub_298CDE964(v127, v128);
      result = 1661;
      if (v242)
      {
        return result;
      }

      goto LABEL_1774;
    case 1072:
      if (a3 > 7)
      {
        if (a3 > 11)
        {
LABEL_850:
          if (a3 == 12)
          {
LABEL_851:
            v27 = *a2;
            v28 = *(a2 + 16);
            goto LABEL_1450;
          }

LABEL_1484:
          if (a3 == 18)
          {
LABEL_1489:
            if (sub_298CDF034(*a2, *(a2 + 16)))
            {
              return 1567;
            }

            else
            {
              return 1568;
            }
          }

          if (a3 != 21)
          {
            return 0;
          }

          goto LABEL_1486;
        }

        if (a3 == 8)
        {
          goto LABEL_1486;
        }

        if (a3 != 10)
        {
          if (a3 != 11)
          {
            return 0;
          }

LABEL_798:
          v27 = *a2;
          v28 = *(a2 + 16);
          goto LABEL_799;
        }

LABEL_842:
        v145 = *a2;
        v146 = *(a2 + 16);
        v147 = sub_298CDE964(*a2, v146);
        result = 1621;
        if (!v147)
        {
          goto LABEL_1152;
        }

        return result;
      }

      if (a3 <= 4)
      {
        if (a3 == 2)
        {
          v404 = *a2 - 1383;
          if ((v404 > 0x13 || ((1 << v404) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v161 = *a2 - 1383;
          if ((v161 > 0x13 || ((1 << v161) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          return 1632;
        }
      }

LABEL_1143:
      if (a3 == 5)
      {
        goto LABEL_1148;
      }

      if (a3 == 6)
      {
        goto LABEL_1486;
      }

      goto LABEL_1145;
    case 1073:
      result = 1620;
      switch(a3)
      {
        case 2:
          v89 = *a2 - 1383;
          if ((v89 > 0x13 || ((1 << v89) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          result = 1712;
          break;
        case 3:
          v454 = *a2 - 1383;
          if ((v454 > 0x13 || ((1 << v454) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2570;
          }

          v159 = *(*(a2 + 16) + 56);
          if (!v159)
          {
            goto LABEL_2571;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
        case 21:
          goto LABEL_1486;
        case 7:
          goto LABEL_1145;
        case 9:
LABEL_2011:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1559;
          }

          else
          {
            return 1560;
          }

        case 10:
          goto LABEL_842;
        case 11:
          goto LABEL_798;
        case 12:
          goto LABEL_851;
        case 13:
          return result;
        case 15:
          goto LABEL_1270;
        case 16:
LABEL_2017:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1563;
          }

          else
          {
            return 1564;
          }

        case 17:
          goto LABEL_1333;
        case 18:
          goto LABEL_1489;
        default:
          return 0;
      }

      return result;
    case 1074:
      if (a3 == 12)
      {
        v27 = *a2;
        v28 = *(a2 + 16);
        if (sub_298CDEA6C(*a2, v28))
        {
          return 1617;
        }

LABEL_1450:
        v215 = sub_298CDE964(v27, v28);
        v134 = 1625;
        result = 1625;
        if (v215)
        {
          return result;
        }

LABEL_2849:
        if (sub_298CDED3C(v27, v28))
        {
          return v134;
        }

        else
        {
          return v134 + 1;
        }
      }

      if (a3 == 11)
      {
        v27 = *a2;
        v28 = *(a2 + 16);
        if (sub_298CDEA6C(*a2, v28))
        {
          return 1615;
        }

LABEL_799:
        v133 = sub_298CDE964(v27, v28);
        v134 = 1623;
        result = 1623;
        if (!v133)
        {
          goto LABEL_2849;
        }

        return result;
      }

      if (a3 != 10)
      {
        return 0;
      }

      v23 = *a2;
      if (*a2 > 4808)
      {
        if (v23 == 4809 || v23 == 4811)
        {
          v24 = *(a2 + 16);
          if (*(v24 + 16) == 1 && (*(v24 + 24) & 0xFFFFFFFE) == 0xA && *(v24 + 32) == 1 && (*(v24 + 56) & 0x3F) == 0)
          {
            return 1613;
          }

          goto LABEL_2586;
        }
      }

      else if (v23 == 1396 || v23 == 1399)
      {
        v24 = *(a2 + 16);
        if (*v24 == 1 && *(v24 + 16) == 1)
        {
          v25 = *(v24 + 8);
          if (v25 == 7 || v25 == 9 || (v26 = *(v24 + 24), v26 == 9) || v26 == 7)
          {
            if (!*(v24 + 40))
            {
              return 1613;
            }
          }
        }

LABEL_2586:
        v443 = sub_298CDE964(v23, v24);
LABEL_2587:
        if (v443)
        {
          return 1621;
        }

        else
        {
          return 1622;
        }
      }

      v24 = *(a2 + 16);
      goto LABEL_2586;
    case 1075:
      if (a3 > 11)
      {
        if (a3 <= 18)
        {
          if (a3 == 12)
          {
            return 1593;
          }

          if (a3 == 13)
          {
            return 1671;
          }

          return 0;
        }

        if (a3 != 19)
        {
          goto LABEL_1544;
        }

LABEL_1425:
        if (sub_298CDF12C(*a2, *(a2 + 16)))
        {
          return 1595;
        }

        else
        {
          return 1596;
        }
      }

      if (a3 > 9)
      {
        if (a3 == 10)
        {
          return 1680;
        }

        return 1591;
      }

      if (a3 == 1)
      {
        return 1587;
      }

      if (a3 == 4)
      {
        goto LABEL_1204;
      }

      return 0;
    case 1076:
      if (a3 > 11)
      {
        if (a3 > 18)
        {
          if (a3 == 19)
          {
            goto LABEL_1548;
          }

LABEL_1544:
          if (a3 == 20)
          {
LABEL_1545:
            if (sub_298CDF12C(*a2, *(a2 + 16)))
            {
              return 1597;
            }

            else
            {
              return 1598;
            }
          }
        }

        else
        {
          if (a3 == 12)
          {
            return 1593;
          }

          if (a3 == 13)
          {
            return 1685;
          }
        }

        return 0;
      }

      if (a3 <= 9)
      {
        if (a3 == 1)
        {
          return 1587;
        }

        goto LABEL_676;
      }

      if (a3 == 10)
      {
        return 1680;
      }

      return 1591;
    case 1077:
      if ((a3 - 10) >= 4)
      {
        return 0;
      }

      return dword_298D89A10[a3 - 10];
    case 1078:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1698;
          }

          return 1699;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1157;
          }

          return 1692;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1691;
        }

        if (a3 == 20)
        {
          return 1693;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1700;
        }

        if (a3 == 13)
        {
          return 1697;
        }
      }

      return 0;
    case 1088:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1688;
          }

          return 1689;
        }

        if (a3 == 1)
        {
          return 1692;
        }

LABEL_1157:
        if (a3 == 4)
        {
          goto LABEL_1221;
        }
      }

      else if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1690;
        }

        if (a3 == 13)
        {
          return 1687;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v275 = *(a2 + 24);
            if (v275)
            {
              v276 = *(a2 + 16);
              v277 = 16 * v275;
              v278 = (v276 + 8);
              v279 = v277;
              do
              {
                if (*(v278 - 8) == 1)
                {
                  v280 = *v278;
                  if (v280 <= 0x6F && ((byte_298DFB3AE[v280 >> 3] >> (v280 & 7)) & 1) != 0)
                  {
                    goto LABEL_2595;
                  }
                }

                v278 += 4;
                v279 -= 16;
              }

              while (v279);
              for (i8 = (v276 + 8); ; i8 += 4)
              {
                if (*(i8 - 8) == 1)
                {
                  v463 = *i8;
                  if (v463 <= 0xAF && ((byte_298DFC5B4[v463 >> 3] >> (v463 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v277 -= 16;
                if (!v277)
                {
                  return 1695;
                }
              }

LABEL_2595:
              if (*(v276 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 1138:
      if (a3 != 17)
      {
        return 0;
      }

      v33 = *a2;
      if (*a2 > 4700)
      {
        if (v33 > 4808)
        {
          if (v33 == 4809 || v33 == 4811)
          {
            v274 = *(a2 + 16);
            if (*(v274 + 16) == 1 && (*(v274 + 24) & 0xFFFFFFFE) == 0xA && !*(v274 + 56))
            {
              return 1708;
            }
          }

          return 1642;
        }

        if ((v33 - 4725) < 2)
        {
          v216 = *(a2 + 16);
          if (!*(v216 + 24) && !*(v216 + 40))
          {
            return 1708;
          }

          return 1642;
        }

        v441 = 4701;
      }

      else
      {
        if ((v33 - 3221) <= 4 && v33 != 3223)
        {
          v35 = *(a2 + 16);
          if (*(v35 + 16) == 1 && (*(v35 + 24) & 0xFFFFFFFE) == 0xA)
          {
            return 1708;
          }

          return 1642;
        }

        v441 = 4699;
      }

      if (v33 == v441 && !*(*(a2 + 16) + 24))
      {
        return 1708;
      }

      return 1642;
    case 1160:
      result = 1620;
      switch(a3)
      {
        case 2:
          v38 = *a2 - 1383;
          if ((v38 > 0x13 || ((1 << v38) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          result = 1712;
          break;
        case 3:
          v449 = *a2 - 1383;
          if ((v449 > 0x13 || ((1 << v449) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
        case 21:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
          goto LABEL_1576;
        case 10:
          goto LABEL_1104;
        case 11:
          goto LABEL_1268;
        case 12:
          goto LABEL_1267;
        case 13:
          return result;
        case 15:
          goto LABEL_1270;
        case 16:
          goto LABEL_1252;
        case 17:
          goto LABEL_1333;
        case 18:
          goto LABEL_1406;
        default:
          return 0;
      }

      return result;
    case 1161:
      result = 1620;
      switch(a3)
      {
        case 2:
          v16 = *a2 - 1383;
          if ((v16 > 0x13 || ((1 << v16) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          result = 1712;
          break;
        case 3:
          v445 = *a2 - 1383;
          if ((v445 > 0x13 || ((1 << v445) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
        case 21:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
          goto LABEL_1576;
        case 10:
          goto LABEL_1104;
        case 11:
          goto LABEL_1268;
        case 12:
          goto LABEL_1267;
        case 13:
          return result;
        case 15:
          goto LABEL_1270;
        case 16:
          goto LABEL_1252;
        case 17:
          goto LABEL_1333;
        case 18:
          goto LABEL_1406;
        default:
          return 0;
      }

      return result;
    case 1162:
      result = 1620;
      switch(a3)
      {
        case 2:
          v132 = *a2 - 1383;
          if ((v132 > 0x13 || ((1 << v132) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v458 = *a2 - 1383;
          if ((v458 > 0x13 || ((1 << v458) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
          goto LABEL_1576;
        case 10:
          goto LABEL_1104;
        case 11:
          goto LABEL_1268;
        case 12:
          goto LABEL_1267;
        case 13:
          return result;
        case 15:
          goto LABEL_1384;
        case 16:
          goto LABEL_1252;
        case 17:
          goto LABEL_2023;
        case 18:
          goto LABEL_1406;
        case 21:
          goto LABEL_1409;
        default:
          return 0;
      }

      return result;
    case 1163:
      result = 1620;
      switch(a3)
      {
        case 2:
          v105 = *a2 - 1383;
          if ((v105 > 0x13 || ((1 << v105) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2475;
          }

          v21 = *(*(a2 + 16) + 56);
          if (!v21)
          {
            goto LABEL_2476;
          }

          result = 1629;
          break;
        case 3:
          v456 = *a2 - 1383;
          if ((v456 > 0x13 || ((1 << v456) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          result = 1632;
          break;
        case 5:
          goto LABEL_1148;
        case 6:
        case 8:
          goto LABEL_1403;
        case 7:
          goto LABEL_1117;
        case 9:
LABEL_1576:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1559;
          }

          else
          {
            return 1560;
          }

        case 10:
          goto LABEL_1104;
        case 11:
          goto LABEL_1268;
        case 12:
          goto LABEL_1267;
        case 13:
          return result;
        case 15:
          goto LABEL_1384;
        case 16:
          goto LABEL_1252;
        case 17:
LABEL_2023:
          if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
          {
            return 1637;
          }

          else
          {
            return 1638;
          }

        case 18:
          goto LABEL_1406;
        case 21:
LABEL_1409:
          if (sub_298CDF034(*a2, *(a2 + 16)))
          {
            return 1627;
          }

          else
          {
            return 1628;
          }

        default:
          return 0;
      }

      return result;
    case 1164:
      if (a3 > 10)
      {
        if (a3 <= 14)
        {
          if (a3 == 11)
          {
            goto LABEL_1268;
          }

          if (a3 == 12)
          {
            goto LABEL_1267;
          }

          if (a3 != 13)
          {
            return 0;
          }

          return 1620;
        }

        switch(a3)
        {
          case 15:
            goto LABEL_1384;
          case 18:
            goto LABEL_1881;
          case 21:
            goto LABEL_1379;
        }

        return 0;
      }

      if (a3 > 4)
      {
        switch(a3)
        {
          case 5:
            goto LABEL_1886;
          case 7:
            goto LABEL_1876;
          case 10:
            goto LABEL_1104;
        }

        return 0;
      }

      if (a3 == 2)
      {
        v401 = *a2 - 1383;
        if ((v401 > 0x13 || ((1 << v401) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2475;
        }

        v21 = *(*(a2 + 16) + 56);
        if (!v21)
        {
          goto LABEL_2476;
        }

        return 1629;
      }

      else
      {
        if (a3 != 3)
        {
          return 0;
        }

        v244 = *a2 - 1383;
        if ((v244 > 0x13 || ((1 << v244) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2559;
        }

        v31 = *(*(a2 + 16) + 56);
        if (!v31)
        {
          goto LABEL_2560;
        }

        return 1632;
      }

    case 1165:
      if (a3 <= 10)
      {
        if (a3 <= 4)
        {
          if (a3 == 2)
          {
            v410 = *a2 - 1383;
            if (v410 <= 0x13 && ((1 << v410) & 0xC8019) != 0 || (*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              v21 = *(*(a2 + 16) + 56);
              if (v21)
              {
                return 1629;
              }
            }

            else
            {
LABEL_2475:
              LODWORD(v21) = *(*(a2 + 16) + 56);
            }

LABEL_2476:
            if ((v21 & 0x3Fu) < 5 && (v21 & 0x1C0) == 0)
            {
              return 1630;
            }

            else
            {
              return 1631;
            }
          }

          else
          {
            if (a3 != 3)
            {
              return 0;
            }

            v246 = *a2 - 1383;
            if ((v246 > 0x13 || ((1 << v246) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
            {
              goto LABEL_2559;
            }

            v31 = *(*(a2 + 16) + 56);
            if (!v31)
            {
              goto LABEL_2560;
            }

            return 1632;
          }
        }

        else
        {
          switch(a3)
          {
            case 5:
LABEL_1886:
              v259 = *a2 - 1383;
              if (v259 <= 0x13 && ((1 << v259) & 0xC8019) != 0)
              {
                goto LABEL_2306;
              }

              result = 1570;
              if ((*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
              {
                goto LABEL_2306;
              }

              break;
            case 7:
LABEL_1876:
              v257 = *a2 - 1383;
              if (v257 <= 0x13 && ((1 << v257) & 0xC8019) != 0)
              {
                goto LABEL_1898;
              }

              result = 1572;
              if ((*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
              {
                goto LABEL_1898;
              }

              break;
            case 10:
LABEL_1104:
              v162 = *a2;
              v163 = *(a2 + 16);
              v164 = sub_298CDE964(*a2, v163);
              result = 1621;
              if (!v164)
              {
                if (sub_298CDEC14(v162, v163))
                {
                  return 1621;
                }

                else
                {
                  return 1622;
                }
              }

              break;
            default:
              return 0;
          }
        }
      }

      else if (a3 > 14)
      {
        switch(a3)
        {
          case 15:
LABEL_1384:
            if ((*(*(a2 + 16) + 56) & 0x3Fu) < 5 && (*(*(a2 + 16) + 56) & 0x1C0) == 0)
            {
              return 1635;
            }

            else
            {
              return 1636;
            }

          case 18:
LABEL_1881:
            v258 = *a2 - 1383;
            if (v258 <= 0x13 && ((1 << v258) & 0xC8019) != 0)
            {
              goto LABEL_1905;
            }

            result = 1574;
            if ((*a2 - 6787) <= 0xB && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              goto LABEL_1905;
            }

            break;
          case 21:
LABEL_1379:
            v211 = *a2 - 1383;
            if (v211 <= 0x13 && ((1 << v211) & 0xC8019) != 0 || (result = 1628, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
LABEL_1397:
              if (*(*(a2 + 16) + 56))
              {
                return 1627;
              }

              else
              {
                return 1628;
              }
            }

            break;
          default:
            return 0;
        }
      }

      else
      {
        if (a3 == 11)
        {
LABEL_1268:
          v107 = *a2;
          v108 = *(a2 + 16);
          goto LABEL_1554;
        }

        if (a3 == 12)
        {
LABEL_1267:
          v184 = *a2;
          v185 = *(a2 + 16);
          goto LABEL_1558;
        }

        if (a3 != 13)
        {
          return 0;
        }

        return 1620;
      }

      return result;
    case 1166:
      if (a3 == 12)
      {
        v184 = *a2;
        v185 = *(a2 + 16);
        if (sub_298CDEA6C(*a2, v185))
        {
          return 1617;
        }

LABEL_1558:
        v220 = sub_298CDE964(v184, v185);
        result = 1661;
        if (v220)
        {
          return result;
        }

LABEL_1588:
        if (sub_298CDED3C(v184, v185))
        {
          return 1661;
        }

        else
        {
          return 1723;
        }
      }

      if (a3 == 11)
      {
        v107 = *a2;
        v108 = *(a2 + 16);
        if (sub_298CDEA6C(*a2, v108))
        {
          return 1615;
        }

LABEL_1554:
        v219 = sub_298CDE964(v107, v108);
        v110 = 1623;
        result = 1623;
        if (v219)
        {
          return result;
        }

        goto LABEL_1760;
      }

      if (a3 != 10)
      {
        return 0;
      }

      v23 = *a2;
      if (*a2 > 4808)
      {
        if (v23 == 4809 || v23 == 4811)
        {
          v24 = *(a2 + 16);
          if (*(v24 + 16) == 1 && (*(v24 + 24) & 0xFFFFFFFE) == 0xA && *(v24 + 32) == 1 && (*(v24 + 56) & 0x3F) == 0)
          {
            return 1613;
          }

          goto LABEL_2586;
        }
      }

      else if (v23 == 1396 || v23 == 1399)
      {
        v24 = *(a2 + 16);
        if (*v24 == 1 && *(v24 + 16) == 1)
        {
          v120 = *(v24 + 8);
          if (v120 == 7 || v120 == 9 || (v121 = *(v24 + 24), v121 == 9) || v121 == 7)
          {
            if (!*(v24 + 40))
            {
              return 1613;
            }
          }
        }

        goto LABEL_2586;
      }

      v24 = *(a2 + 16);
      goto LABEL_2586;
    case 1197:
      switch(a3)
      {
        case 18:
          goto LABEL_1406;
        case 7:
          goto LABEL_1117;
        case 5:
          goto LABEL_1148;
      }

      return 0;
    case 1224:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1680;
          }

          return 1591;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_676;
          }

          return 1676;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1593;
        }

        if (a3 == 13)
        {
          return 1671;
        }
      }

      return 0;
    case 1225:
      if (a3 > 11)
      {
        if (a3 <= 18)
        {
          if (a3 == 12)
          {
            return 1593;
          }

          if (a3 != 13)
          {
            return 0;
          }

          return 1671;
        }

        if (a3 == 19)
        {
          return 1675;
        }

        if (a3 == 20)
        {
          return 1598;
        }
      }

      else
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1680;
          }

          else
          {
            return 1591;
          }
        }

        if (a3 == 1)
        {
          return 1676;
        }

LABEL_676:
        if (a3 == 4)
        {
          goto LABEL_1204;
        }
      }

      return 0;
    case 1226:
      if (a3 > 11)
      {
        if (a3 > 18)
        {
          if (a3 == 19)
          {
            return 1675;
          }

          if (a3 == 20)
          {
            return 1598;
          }
        }

        else
        {
          if (a3 == 12)
          {
            goto LABEL_1712;
          }

          if (a3 == 13)
          {
            return 1671;
          }
        }

        return 0;
      }

      if (a3 > 9)
      {
        goto LABEL_1016;
      }

      if (a3 == 1)
      {
        return 1676;
      }

      goto LABEL_784;
    case 1227:
      if (a3 > 11)
      {
        if (a3 > 18)
        {
          if (a3 == 19)
          {
            return 1675;
          }

          else
          {
            if (a3 != 20)
            {
              return 0;
            }

            return 1598;
          }
        }

        else if (a3 == 12)
        {
LABEL_1712:
          if (sub_298CDEE70(*a2, *(a2 + 16)))
          {
            return 1593;
          }

          else
          {
            return 1594;
          }
        }

        else
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1671;
        }
      }

      if (a3 > 9)
      {
LABEL_1016:
        if (a3 == 10)
        {
LABEL_1020:
          if (sub_298CDEE70(*a2, *(a2 + 16)))
          {
            return 1681;
          }

          else
          {
            return 1682;
          }
        }

        else
        {
LABEL_1017:
          if (sub_298CDEE70(*a2, *(a2 + 16)))
          {
            return 1591;
          }

          else
          {
            return 1592;
          }
        }
      }

      if (a3 == 1)
      {
        return 1676;
      }

LABEL_784:
      if (a3 != 4)
      {
        return 0;
      }

      goto LABEL_1204;
    case 1250:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1698;
          }

          return 1699;
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1220;
          }

          return 1692;
        }
      }

      if (a3 > 18)
      {
        if (a3 == 19)
        {
          return 1691;
        }

        if (a3 == 20)
        {
          return 1693;
        }
      }

      else
      {
        if (a3 == 12)
        {
          return 1700;
        }

        if (a3 == 13)
        {
          return 1697;
        }
      }

      return 0;
    case 1251:
      if (a3 > 11)
      {
        if (a3 > 18)
        {
          if (a3 == 19)
          {
            return 1691;
          }

          if (a3 == 20)
          {
            return 1693;
          }
        }

        else
        {
          if (a3 == 12)
          {
            return 1701;
          }

          if (a3 == 13)
          {
            return 1697;
          }
        }

        return 0;
      }

      if (a3 <= 9)
      {
        if (a3 != 1)
        {
          goto LABEL_1220;
        }

        return 1692;
      }

      if (a3 == 10)
      {
        return 1701;
      }

      return 1701;
    case 1252:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1688;
          }

          else
          {
            return 1689;
          }
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1220;
          }

          return 1692;
        }
      }

      if (a3 <= 16)
      {
        if (a3 == 12)
        {
          return 1690;
        }

        if (a3 == 13)
        {
          return 1687;
        }
      }

      else
      {
        switch(a3)
        {
          case 17:
            v372 = *(a2 + 24);
            if (v372)
            {
              v373 = *(a2 + 16);
              v374 = 16 * v372;
              v375 = (v373 + 8);
              v376 = v374;
              do
              {
                if (*(v375 - 8) == 1)
                {
                  v377 = *v375;
                  if (v377 <= 0x6F && ((byte_298DFB3AE[v377 >> 3] >> (v377 & 7)) & 1) != 0)
                  {
                    goto LABEL_2708;
                  }
                }

                v375 += 4;
                v376 -= 16;
              }

              while (v376);
              for (i9 = (v373 + 8); ; i9 += 4)
              {
                if (*(i9 - 8) == 1)
                {
                  v495 = *i9;
                  if (v495 <= 0xAF && ((byte_298DFC5B4[v495 >> 3] >> (v495 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v374 -= 16;
                if (!v374)
                {
                  return 1695;
                }
              }

LABEL_2708:
              if (*(v373 + 72) == 1)
              {
                return 1694;
              }
            }

            return 1695;
          case 19:
            return 1691;
          case 20:
            return 1693;
        }
      }

      return 0;
    case 1253:
      if (a3 <= 11)
      {
        if (a3 <= 9)
        {
          if (a3 == 1)
          {
            return 1692;
          }

LABEL_1220:
          if (a3 != 4)
          {
            return 0;
          }

LABEL_1221:
          if (sub_298CDF12C(*a2, *(a2 + 16)))
          {
            return 1604;
          }

          else
          {
            return 1605;
          }
        }

        if (a3 == 10)
        {
          return 1690;
        }
      }

      else
      {
        if (a3 > 16)
        {
          if (a3 != 17)
          {
            if (a3 == 19)
            {
              return 1691;
            }

            if (a3 != 20)
            {
              return 0;
            }

            return 1693;
          }

          v390 = *(a2 + 24);
          if (!v390)
          {
            return 1695;
          }

          v391 = *(a2 + 16);
          v392 = 16 * v390;
          v393 = (v391 + 8);
          v394 = v392;
          while (1)
          {
            if (*(v393 - 8) == 1)
            {
              v395 = *v393;
              if (v395 <= 0x6F && ((byte_298DFB3AE[v395 >> 3] >> (v395 & 7)) & 1) != 0)
              {
                break;
              }
            }

            v393 += 4;
            v394 -= 16;
            if (!v394)
            {
              for (i10 = (v391 + 8); ; i10 += 4)
              {
                if (*(i10 - 8) == 1)
                {
                  v501 = *i10;
                  if (v501 <= 0xAF && ((byte_298DFC5B4[v501 >> 3] >> (v501 & 7)) & 1) != 0)
                  {
                    break;
                  }
                }

                v392 -= 16;
                if (!v392)
                {
                  return 1695;
                }
              }

              break;
            }
          }

          if (*(v391 + 72) != 1)
          {
            return 1695;
          }

          return 1694;
        }

        if (a3 != 12)
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1687;
        }
      }

      return 1690;
    case 1254:
      if (a3 <= 11)
      {
        if (a3 > 9)
        {
          if (a3 == 10)
          {
            return 1698;
          }

          else
          {
            return 1699;
          }
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_1220;
          }

          return 1692;
        }
      }

      if (a3 <= 18)
      {
        if (a3 == 12)
        {
          return 1700;
        }

        if (a3 != 13)
        {
          return 0;
        }

        return 1697;
      }

      if (a3 == 19)
      {
        return 1691;
      }

      if (a3 == 20)
      {
        return 1693;
      }

      return 0;
    case 1255:
      if (a3 > 11)
      {
        if (a3 > 18)
        {
          if (a3 == 19)
          {
            return 1691;
          }

          if (a3 == 20)
          {
            return 1693;
          }

          return 0;
        }

        if (a3 != 12)
        {
          if (a3 != 13)
          {
            return 0;
          }

          return 1697;
        }
      }

      else
      {
        if (a3 <= 9)
        {
          if (a3 != 1)
          {
            goto LABEL_1220;
          }

          return 1692;
        }

        if (a3 == 10)
        {
          return 1701;
        }
      }

      return 1701;
    case 1267:
      if (a3 == 12)
      {
        goto LABEL_1258;
      }

      if (a3 != 11)
      {
        if (a3 != 10)
        {
          return 0;
        }

        goto LABEL_128;
      }

      result = 1614;
      v214 = *a2 - 4699;
      if (v214 > 9)
      {
        return result;
      }

      v13 = 1 << v214;
      if ((v13 & 0x107) == 0)
      {
        goto LABEL_1435;
      }

      goto LABEL_1565;
    case 1325:
    case 1326:
    case 1327:
    case 1328:
      switch(a3)
      {
        case 18:
          goto LABEL_1406;
        case 7:
          goto LABEL_1117;
        case 5:
          goto LABEL_1148;
      }

      return 0;
    case 1414:
      if (a3 > 10)
      {
        if (a3 <= 12)
        {
          if (a3 == 11)
          {
            goto LABEL_1759;
          }

          goto LABEL_1755;
        }

        if (a3 == 13)
        {
          return 1620;
        }

        if (a3 == 18)
        {
          goto LABEL_1288;
        }

        if (a3 != 21)
        {
          return 0;
        }

        goto LABEL_1036;
      }

      if (a3 > 4)
      {
        if (a3 == 5)
        {
          goto LABEL_1277;
        }

        if (a3 == 7)
        {
          goto LABEL_1283;
        }

        if (a3 != 10)
        {
          return 0;
        }

        goto LABEL_806;
      }

      if (a3 == 2)
      {
        v399 = *a2 - 1383;
        if ((v399 > 0x13 || ((1 << v399) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2386;
        }

        v17 = *(*(a2 + 16) + 56);
        if (!v17)
        {
          goto LABEL_2387;
        }

        return 1712;
      }

      else
      {
        if (a3 != 3)
        {
          return 0;
        }

        v235 = *a2 - 1383;
        if ((v235 > 0x13 || ((1 << v235) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2559;
        }

        v31 = *(*(a2 + 16) + 56);
        if (!v31)
        {
          goto LABEL_2560;
        }

        return 1632;
      }

    case 1415:
      if (a3 > 10)
      {
        if (a3 <= 12)
        {
          if (a3 == 11)
          {
            goto LABEL_1759;
          }

          goto LABEL_1744;
        }

        switch(a3)
        {
          case 13:
            return 1620;
          case 18:
            goto LABEL_1288;
          case 21:
            goto LABEL_1036;
        }

        return 0;
      }

      if (a3 > 4)
      {
        switch(a3)
        {
          case 5:
            goto LABEL_1277;
          case 7:
            goto LABEL_1283;
          case 10:
            goto LABEL_806;
        }

        return 0;
      }

      if (a3 == 2)
      {
        v397 = *a2 - 1383;
        if ((v397 > 0x13 || ((1 << v397) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2386;
        }

        v17 = *(*(a2 + 16) + 56);
        if (!v17)
        {
          goto LABEL_2387;
        }

        return 1712;
      }

      else
      {
        if (a3 != 3)
        {
          return 0;
        }

        v232 = *a2 - 1383;
        if ((v232 > 0x13 || ((1 << v232) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2559;
        }

        v31 = *(*(a2 + 16) + 56);
        if (!v31)
        {
          goto LABEL_2560;
        }

        return 1632;
      }

    case 1416:
      if (a3 > 10)
      {
        if (a3 <= 12)
        {
          if (a3 == 11)
          {
            goto LABEL_1759;
          }

LABEL_1755:
          v236 = *a2;
          v237 = *(a2 + 16);
          v238 = sub_298CDE964(*a2, v237);
          result = 1661;
          if (!v238)
          {
            if (sub_298CDED3C(v236, v237))
            {
              return 1661;
            }

            else
            {
              return 1723;
            }
          }

          return result;
        }

        switch(a3)
        {
          case 13:
            return 1620;
          case 18:
            goto LABEL_1288;
          case 21:
            goto LABEL_1036;
        }

        return 0;
      }

      if (a3 > 4)
      {
        switch(a3)
        {
          case 5:
            goto LABEL_1277;
          case 7:
            goto LABEL_1283;
          case 10:
            goto LABEL_806;
        }

        return 0;
      }

      if (a3 == 2)
      {
        v396 = *a2 - 1383;
        if ((v396 > 0x13 || ((1 << v396) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2386;
        }

        v17 = *(*(a2 + 16) + 56);
        if (!v17)
        {
          goto LABEL_2387;
        }

        return 1712;
      }

      else
      {
        if (a3 != 3)
        {
          return 0;
        }

        v231 = *a2 - 1383;
        if ((v231 > 0x13 || ((1 << v231) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
        {
          goto LABEL_2559;
        }

        v31 = *(*(a2 + 16) + 56);
        if (!v31)
        {
          goto LABEL_2560;
        }

        return 1632;
      }

    case 1417:
      if (a3 <= 10)
      {
        if (a3 > 4)
        {
          switch(a3)
          {
            case 5:
LABEL_1277:
              v187 = *a2 - 1383;
              if (v187 <= 0x13 && ((1 << v187) & 0xC8019) != 0 || (result = 1570, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
              {
LABEL_2306:
                if (*(*(a2 + 16) + 56))
                {
                  return 1569;
                }

                else
                {
                  return 1570;
                }
              }

              break;
            case 7:
LABEL_1283:
              v188 = *a2 - 1383;
              if (v188 <= 0x13 && ((1 << v188) & 0xC8019) != 0 || (result = 1572, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
              {
LABEL_1898:
                if (*(*(a2 + 16) + 56))
                {
                  return 1571;
                }

                else
                {
                  return 1572;
                }
              }

              break;
            case 10:
LABEL_806:
              v135 = *a2;
              v136 = *(a2 + 16);
              v137 = sub_298CDE964(*a2, v136);
              result = 1621;
              if (!v137)
              {
                if (sub_298CDEC14(v135, v136))
                {
                  return 1621;
                }

                else
                {
                  return 1622;
                }
              }

              break;
            default:
              return 0;
          }

          return result;
        }

        if (a3 == 2)
        {
          v398 = *a2 - 1383;
          if ((v398 > 0x13 || ((1 << v398) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2386;
          }

          v17 = *(*(a2 + 16) + 56);
          if (!v17)
          {
            goto LABEL_2387;
          }

          return 1712;
        }

        else
        {
          if (a3 != 3)
          {
            return 0;
          }

          v233 = *a2 - 1383;
          if ((v233 > 0x13 || ((1 << v233) & 0xC8019) == 0) && ((*a2 - 6787) > 0xB || ((1 << (*a2 + 125)) & 0xC99) == 0))
          {
            goto LABEL_2559;
          }

          v31 = *(*(a2 + 16) + 56);
          if (!v31)
          {
            goto LABEL_2560;
          }

          return 1632;
        }
      }

      if (a3 > 12)
      {
        switch(a3)
        {
          case 13:
            return 1620;
          case 18:
LABEL_1288:
            v189 = *a2 - 1383;
            if (v189 <= 0x13 && ((1 << v189) & 0xC8019) != 0 || (result = 1574, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
LABEL_1905:
              if (*(*(a2 + 16) + 56))
              {
                return 1573;
              }

              else
              {
                return 1574;
              }
            }

            break;
          case 21:
LABEL_1036:
            v156 = *a2 - 1383;
            if (v156 <= 0x13 && ((1 << v156) & 0xC8019) != 0 || (result = 1611, (*a2 - 6787) <= 0xB) && ((1 << (*a2 + 125)) & 0xC99) != 0)
            {
              if (*(*(a2 + 16) + 56))
              {
                return 1618;
              }

              else
              {
                return 1611;
              }
            }

            break;
          default:
            return 0;
        }

        return result;
      }

      if (a3 != 11)
      {
LABEL_1744:
        v107 = *a2;
        v108 = *(a2 + 16);
        v234 = sub_298CDE964(*a2, v108);
        v110 = 1625;
        result = 1625;
        if (!v234)
        {
          goto LABEL_1760;
        }

        return result;
      }

LABEL_1759:
      v107 = *a2;
      v108 = *(a2 + 16);
      v239 = sub_298CDE964(*a2, v108);
      v110 = 1623;
      result = 1623;
      if (v239)
      {
        return result;
      }

      goto LABEL_1760;
    default:
      if (a1 != 44)
      {
        if (a1 != 1547)
        {
          return 0;
        }

        if (a3 <= 11)
        {
          if (a3 != 10)
          {
            if (a3 != 11)
            {
              return 0;
            }

            result = 1614;
            v12 = *a2 - 4699;
            if (v12 <= 9)
            {
              v13 = 1 << v12;
              if ((v13 & 0x107) != 0)
              {
LABEL_1565:
                v224 = (*(a2 + 16) + 24);
                goto LABEL_1566;
              }

LABEL_1435:
              if ((v13 & 0x268) != 0)
              {
                goto LABEL_1563;
              }
            }

            return result;
          }

LABEL_128:
          result = 1612;
          v18 = *a2 - 4699;
          if (v18 > 9)
          {
            return result;
          }

          v19 = 1 << v18;
          if ((v19 & 0x107) == 0)
          {
            if ((v19 & 0x268) != 0)
            {
              goto LABEL_726;
            }

            return result;
          }

          goto LABEL_1789;
        }

        if (a3 == 12)
        {
LABEL_1258:
          result = 1716;
          v180 = *a2 - 4699;
          if (v180 > 9)
          {
            return result;
          }

          v181 = 1 << v180;
          if ((v181 & 0x107) == 0)
          {
            if ((v181 & 0x268) == 0)
            {
              return result;
            }

LABEL_1261:
            v182 = *(a2 + 16);
            if (!*(v182 + 24))
            {
              v183 = (v182 + 40);
              goto LABEL_1264;
            }

            return result;
          }

          goto LABEL_1263;
        }

        if (a3 != 17)
        {
          return 0;
        }

        v171 = *a2;
        if (*a2 > 4700)
        {
          if (v171 > 4808)
          {
            if (v171 == 4809 || v171 == 4811)
            {
              v506 = *(a2 + 16);
              if (*(v506 + 16) == 1 && (*(v506 + 24) & 0xFFFFFFFE) == 0xA && !*(v506 + 56))
              {
                return 1708;
              }
            }

            return 1717;
          }

          if ((v171 - 4725) < 2)
          {
            v400 = *(a2 + 16);
            if (!*(v400 + 24) && !*(v400 + 40))
            {
              return 1708;
            }

            return 1717;
          }

          v509 = 4701;
        }

        else
        {
          if ((v171 - 3221) <= 4 && v171 != 3223)
          {
            v172 = *(a2 + 16);
            if (*(v172 + 16) == 1 && (*(v172 + 24) & 0xFFFFFFFE) == 0xA)
            {
              return 1708;
            }

            return 1717;
          }

          v509 = 4699;
        }

        if (v171 == v509 && !*(*(a2 + 16) + 24))
        {
          return 1708;
        }

        return 1717;
      }

      if (a3 <= 10)
      {
        if (a3 == 4)
        {
          return 1611;
        }

        if (a3 != 10)
        {
          return 0;
        }

        v138 = *(a2 + 24);
        if (!v138)
        {
          return 1613;
        }

        v139 = 16 * v138;
        v140 = (*(a2 + 16) + 8);
        while (1)
        {
          if (*(v140 - 8) == 1)
          {
            v141 = *v140;
            v142 = v141 >> 3;
            if (v141 > 0xAF)
            {
              if (v141 > 0xCF)
              {
                goto LABEL_822;
              }

              v142 = v142;
              v143 = 1 << (v141 & 7);
            }

            else
            {
              v143 = 1 << (v141 & 7);
              if ((v143 & byte_298DFC5B4[v142]) != 0)
              {
                return 1612;
              }

              if (v141 <= 0x4F && (v143 & *(L"" + v142)) != 0)
              {
                return 1612;
              }
            }

            if ((v143 & byte_298DFB8AA[v142]) != 0)
            {
              return 1612;
            }

            if (v141 <= 0x6F)
            {
              if ((v143 & byte_298DFB3AE[v142]) != 0)
              {
                return 1612;
              }

              if (v141 <= 0x2F && (v143 & byte_298DFB368[v142]) != 0)
              {
                return 1612;
              }
            }
          }

LABEL_822:
          v140 += 4;
          result = 1613;
          v139 -= 16;
          if (!v139)
          {
            return result;
          }
        }
      }

      if (a3 != 11)
      {
        if (a3 != 12)
        {
          return 0;
        }

        v173 = *(a2 + 24);
        if (!v173)
        {
          return 1617;
        }

        v174 = 16 * v173;
        v175 = (*(a2 + 16) + 8);
        while (1)
        {
          if (*(v175 - 8) == 1)
          {
            v176 = *v175;
            v177 = v176 >> 3;
            if (v176 > 0xAF)
            {
              if (v176 > 0xCF)
              {
                goto LABEL_1236;
              }

              v177 = v177;
              v178 = 1 << (v176 & 7);
            }

            else
            {
              v178 = 1 << (v176 & 7);
              if ((v178 & byte_298DFC5B4[v177]) != 0)
              {
                return 1616;
              }

              if (v176 <= 0x4F && (v178 & *(L"" + v177)) != 0)
              {
                return 1616;
              }
            }

            if ((v178 & byte_298DFB8AA[v177]) != 0)
            {
              return 1616;
            }

            if (v176 <= 0x6F)
            {
              if ((v178 & byte_298DFB3AE[v177]) != 0)
              {
                return 1616;
              }

              if (v176 <= 0x2F && (v178 & byte_298DFB368[v177]) != 0)
              {
                return 1616;
              }
            }
          }

LABEL_1236:
          v175 += 4;
          result = 1617;
          v174 -= 16;
          if (!v174)
          {
            return result;
          }
        }
      }

      v251 = *(a2 + 24);
      if (!v251)
      {
        return 1615;
      }

      v252 = 16 * v251;
      v253 = (*(a2 + 16) + 8);
      break;
  }

  while (1)
  {
    if (*(v253 - 8) == 1)
    {
      v254 = *v253;
      v255 = v254 >> 3;
      if (v254 > 0xAF)
      {
        if (v254 > 0xCF)
        {
          goto LABEL_1861;
        }

        v255 = v255;
        v256 = 1 << (v254 & 7);
      }

      else
      {
        v256 = 1 << (v254 & 7);
        if ((v256 & byte_298DFC5B4[v255]) != 0)
        {
          return 1614;
        }

        if (v254 <= 0x4F && (v256 & *(L"" + v255)) != 0)
        {
          return 1614;
        }
      }

      if ((v256 & byte_298DFB8AA[v255]) != 0)
      {
        return 1614;
      }

      if (v254 <= 0x6F)
      {
        if ((v256 & byte_298DFB3AE[v255]) != 0)
        {
          return 1614;
        }

        if (v254 <= 0x2F && (v256 & byte_298DFB368[v255]) != 0)
        {
          return 1614;
        }
      }
    }

LABEL_1861:
    v253 += 4;
    result = 1615;
    v252 -= 16;
    if (!v252)
    {
      return result;
    }
  }
}

uint64_t sub_298CE9C24(uint64_t result)
{
  for (i = 0; i != 904; i += 4)
  {
    v2 = *(&unk_298E03122 + i + 2);
    v3 = *(&unk_298E03122 + i);
    v16 = v2;
    v4 = *(result + 200);
    if (v4)
    {
      v5 = *(result + 184);
      v6 = v4 - 1;
      v7 = (v4 - 1) & (37 * v2);
      v8 = (v5 + 8 * v7);
      v9 = *v8;
      if (*v8 == v2)
      {
        goto LABEL_4;
      }

      v12 = 0;
      v13 = 1;
      while (v9 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -2;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (v5 + 8 * (v15 & v6));
        v9 = *v8;
        if (*v8 == v2)
        {
          goto LABEL_4;
        }
      }

      if (v12)
      {
        v10 = v12;
      }

      else
      {
        v10 = v8;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = result;
    v8 = sub_298CEA4C0((result + 184), &v16, v10);
    result = v11;
    *v8 = v2;
    v8[1] = 0;
LABEL_4:
    v8[1] = v3;
  }

  return result;
}

void *sub_298CE9D20()
{
  v0 = sub_298CEE78C();
  v1 = sub_298CEE7F8();
  v2 = sub_298CEE864();
  v3 = sub_298CEE8D0();
  v4 = sub_298CEE948();
  v0[6] = sub_298CE9F34;
  v0[8] = sub_298CEA04C;
  v0[10] = sub_298CEA0A4;
  v0[11] = sub_298CEA10C;
  v0[9] = sub_298CEA15C;
  v0[18] = sub_298CC7A58;
  v0[22] = sub_298CEA1B0;
  v0[21] = sub_298CEA298;
  v0[19] = sub_298CEA2A0;
  v0[29] = sub_298CEC44C;
  v0[28] = sub_298C9EF10;
  v0[27] = sub_298CEC648;
  v0[17] = sub_298CEA380;
  v1[6] = sub_298CE9F34;
  v1[10] = sub_298CEA0A4;
  v1[11] = sub_298CEA10C;
  v1[8] = sub_298CEA04C;
  v1[9] = sub_298CEA15C;
  v1[21] = sub_298CEA298;
  v1[22] = sub_298CEA1B0;
  v1[18] = sub_298CC7A58;
  v1[19] = sub_298CEA2A0;
  v1[28] = sub_298C9EF10;
  v1[29] = sub_298CEC44C;
  v1[27] = sub_298CEC648;
  v1[17] = sub_298CEA380;
  v2[6] = sub_298CE9F34;
  v2[10] = sub_298CEA0A4;
  v2[11] = sub_298CEA10C;
  v2[8] = sub_298CEA04C;
  v2[9] = sub_298CEA15C;
  v2[21] = sub_298CEA298;
  v2[22] = sub_298CEA1B0;
  v2[18] = sub_298CC7A58;
  v2[19] = sub_298CEA2A0;
  v2[28] = sub_298C9EF10;
  v2[29] = sub_298CEC44C;
  v2[27] = sub_298CEC648;
  v2[17] = sub_298CEA380;
  v3[6] = sub_298CE9F34;
  v3[10] = sub_298CEA0A4;
  v3[11] = sub_298CEA10C;
  v3[8] = sub_298CEA04C;
  v3[9] = sub_298CEA15C;
  v3[21] = sub_298CEA298;
  v3[22] = sub_298CEA1B0;
  v3[18] = sub_298CC7A58;
  v3[19] = sub_298CEA2A0;
  v3[28] = sub_298C9EF10;
  v3[29] = sub_298CEC44C;
  v3[27] = sub_298CEC648;
  v3[17] = sub_298CEA380;
  v4[6] = sub_298CE9F34;
  v4[10] = sub_298CEA0A4;
  v4[11] = sub_298CEA10C;
  v4[8] = sub_298CEA04C;
  v4[9] = sub_298CEA15C;
  v4[21] = sub_298CEA298;
  v4[22] = sub_298CEA1B0;
  v4[18] = sub_298CC7A58;
  v4[19] = sub_298CEA2A0;
  v4[28] = sub_298C9EF10;
  v4[29] = sub_298CEC44C;
  v4[27] = sub_298CEC648;
  v4[17] = sub_298CEA380;
  v5 = sub_298CEE78C();
  v6 = sub_298CEE864();
  v7 = sub_298CEE8D0();
  v8 = sub_298CEE948();
  v5[13] = sub_298C96428;
  v6[13] = sub_298C96428;
  v7[13] = sub_298C96428;
  v8[13] = sub_298C96428;
  result = sub_298CEE7F8();
  result[13] = sub_298C966B8;
  return result;
}

void sub_298CE9F34(uint64_t a1, _DWORD *a2)
{
  if (a2[11] == 5)
  {
    operator new();
  }

  if (a2[9] == 14)
  {
    v2 = a2[10];
    if (v2 == 19 || v2 == 0)
    {
      operator new();
    }
  }

  operator new();
}

void sub_298CEA10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = *(a1 + 24) != 3 || *(a1 + 28) != 34;
  }

  sub_298CEA8FC();
}

void sub_298CEA1B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a3;
  *a3 = 0;
  v6 = *a4;
  *a4 = 0;
  v7 = *a5;
  *a5 = 0;
  sub_298C9F00C();
}

void sub_298CEA2A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = 0;
  v6 = *a4;
  *a4 = 0;
  sub_298CEE20C();
}

uint64_t sub_298CEA380(uint64_t a1, int a2)
{
  if (!a2)
  {
    operator new();
  }

  if (a2 == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_298CEA444(uint64_t result, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (result + 8 * v5);
    v7 = *v6;
    if (*v6 != a3)
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -1)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -2;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 8 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_3:
  *a4 = v6;
  return result;
}

_DWORD *sub_298CEA4C0(_DWORD *a1, int *a2, _DWORD *a3)
{
  v9 = a3;
  v4 = a1[2];
  v5 = a1[4];
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - a1[3] > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298CEA580(a1, v5);
  sub_298CEA444(*v8, v8[4], *v7, &v9);
  a1 = v8;
  v4 = v8[2];
  a3 = v9;
LABEL_3:
  a1[2] = v4 + 1;
  if (*a3 != -1)
  {
    --a1[3];
  }

  return a3;
}

char *sub_298CEA580(uint64_t a1, int a2)
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
  result = operator new(8 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    sub_298CEA6DC(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vdupq_n_s64(v11);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_298D1A120)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 4) = -1;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 2) = -1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_298D1A110)))).i32[1])
      {
        *v16 = -1;
        v16[2] = -1;
      }

      v11 += 4;
      v16 += 8;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t sub_298CEA6DC(uint64_t result, int *a2, int *a3)
{
  *(result + 8) = 0;
  v3 = *result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v8 = *result;
LABEL_6:
      v11 = &v3[2 * v4];
      do
      {
        *v8 = -1;
        v8 += 2;
      }

      while (v8 != v11);
      goto LABEL_8;
    }

    v6 = v5 + 1;
    v7 = (v5 + 1) & 0x3FFFFFFFFFFFFFFELL;
    v8 = &v3[2 * v7];
    v9 = v3 + 2;
    v10 = v7;
    do
    {
      *(v9 - 2) = -1;
      *v9 = -1;
      v9 += 4;
      v10 -= 2;
    }

    while (v10);
    if (v6 != v7)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v12 = *a2;
    if (*a2 <= 0xFFFFFFFD)
    {
      v13 = *(result + 16) - 1;
      v14 = v13 & (37 * v12);
      v15 = &v3[2 * v14];
      v16 = *v15;
      if (v12 != *v15)
      {
        v17 = 0;
        v18 = 1;
        while (v16 != -1)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 == -2;
          }

          if (v19)
          {
            v17 = v15;
          }

          v20 = v14 + v18++;
          v14 = v20 & v13;
          v15 = &v3[2 * (v20 & v13)];
          v16 = *v15;
          if (v12 == *v15)
          {
            goto LABEL_11;
          }
        }

        if (v17)
        {
          v15 = v17;
        }
      }

LABEL_11:
      *v15 = v12;
      v15[1] = a2[1];
      ++*(result + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t sub_298CEA7F0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return a1;
}

double sub_298CEA834(uint64_t a1)
{
  *a1 = &unk_298DF4998;
  *(a1 + 8) = 0x5000002BDLL;
  *(a1 + 16) = 0;
  *(a1 + 24) = &off_29EEC61C8;
  *(a1 + 56) = &unk_298DF33C0;
  *(a1 + 64) = &unk_298DF3DFA;
  *(a1 + 40) = &unk_298DF8B50;
  *(a1 + 48) = &unk_298DF2050;
  *(a1 + 72) = "GPR64x8Class_with_sub_32_in_MatrixIndexGPR32_8_11_and_GPR64x8Class_with_x8sub_2_in_GPR64_with_sub_32_in_MatrixIndexGPR32_8_11";
  *(a1 + 80) = &unk_298DF38E8;
  *(a1 + 96) = 154;
  *(a1 + 88) = &unk_298DF3B92;
  *(a1 + 104) = &unk_298E02BA8;
  *(a1 + 144) = &unk_298E01248;
  *(a1 + 152) = &unk_298E015D8;
  *(a1 + 32) = 0x6700000121;
  *(a1 + 128) = &unk_298E01968;
  *(a1 + 136) = &unk_298E02288;
  *&result = 0x12400000124;
  *(a1 + 112) = xmmword_298D899F0;
  return result;
}

void sub_298CEAA10(uint64_t a1)
{
  sub_298CEAA58(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298CEAA58(uint64_t a1)
{
  *a1 = &unk_2A1F1D478;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_298CEAAF0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2[6];
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = (32 * *(**(a1 + 8) - 32 * v6) + 6 * *(**(a1 + 8) - 32 * v6 + 12) - 32 * v6 + **(a1 + 8) + 35);
  for (i = 8; ; i += 16)
  {
    v9 = *v7;
    v7 += 6;
    if (v9 == 4)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  v11 = *(*(a2 + 2) + i);
  v12 = (a3 & 0xFFFFFFFFFFFFF000) + (v11 << 12);
  v13 = a3 + 4 * v11;
  v14 = v11 + a3;
  if (v6 != 1445)
  {
    v14 = v13;
  }

  if (v6 == 1446)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  *a5 = v15;
  return 1;
}

void sub_298CEAB84(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 >= 8)
  {
    v6 = a4;
    v7 = 0;
    v8 = 0;
    v22 = a1;
    while (1)
    {
      v10 = a2 + v8;
      v11 = *(a2 + v8);
      if (v11 == -721214369)
      {
        v11 = *(v10 + 4);
        v12 = 8;
        if ((v11 & 0x9F000000) == 0x90000000)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 4;
        if ((v11 & 0x9F000000) == 0x90000000)
        {
LABEL_10:
          v13 = *(v10 + v12);
          if (v13 >> 22 == 997)
          {
            v14 = v8 + a1;
            v15 = ((v8 + a1) & 0xFFFFFFFFFFFFF000) + ((v11 >> 17) & 0x3000) + ((v11 << 9) & 0xFFFFC000) + ((v13 >> 7) & 0x7FF8);
            v16 = v6[2];
            if (v7 < v16)
            {
              *v7 = v14;
              *(v7 + 8) = v15;
              v7 += 16;
            }

            else
            {
              v17 = v7;
              v18 = v7 >> 4;
              v19 = v18 + 1;
              if ((v18 + 1) >> 60)
              {
                *v6 = 0;
                sub_298ADDDA0();
              }

              if (v16 >> 3 > v19)
              {
                v19 = v16 >> 3;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFF0)
              {
                v20 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v19;
              }

              if (v20)
              {
                if (!(v20 >> 60))
                {
                  operator new();
                }

                *a4 = 0;
                sub_298ADDDA0();
              }

              v21 = (16 * v18);
              *v21 = v14;
              v21[1] = v15;
              v7 = 16 * v18 + 16;
              memcpy(0, 0, v17);
              v6 = a4;
              a4[1] = v7;
              a4[2] = 0;
              a1 = v22;
            }

            v6[1] = v7;
            v8 += 4;
          }
        }
      }

      v9 = v8 + 11;
      v8 += 4;
      if (v9 >= a3)
      {
        *v6 = 0;
        return;
      }
    }
  }
}

void sub_298CEAD88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v193 = *MEMORY[0x29EDCA608];
  v15 = *((*(*a3[1] + 80))(a3[1], *(a6 + 12)) + 16);
  sub_298B45F80(a4, a5);
  v16 = *(a6 + 12);
  v17 = (*(a6 + 8) + *(a5 + 32));
  if (v15)
  {
    *a8 += v17;
  }

  if (v16 == 140)
  {
    v24 = *a3;
    v25 = *(a6 + 16);
    v26 = *(*a7 + 16);
    if (*(v26 + 8))
    {
      v30 = *(v26 - 8);
      v31 = *v30;
      v27 = (v30 + 2);
      v28 = v31;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v186 = 1283;
    v182 = "conditional branch requires assembler-local label. '";
    v184 = v27;
    v185 = v28;
    v32 = "' is external.";
LABEL_21:
    *&v187 = &v182;
    v188 = v32;
    v189 = 770;
    v180.__r_.__value_.__r.__words[0] = v25;
    *(v24 + 2056) = 1;
    *&v190 = &unk_2A1F1BDB8;
    *(&v190 + 1) = &v180;
    v191 = &v187;
    v192 = &v190;
    sub_298B2FFE4(v24, v25, &v190);
    v33 = v192;
    if (v192 != &v190)
    {
      goto LABEL_111;
    }

LABEL_22:
    (*(*v33 + 32))(v33);
    goto LABEL_113;
  }

  if (v16 == 138)
  {
    v21 = *a3;
    v22 = *(a6 + 16);
    v23 = "Invalid relocation on conditional branch!";
    goto LABEL_110;
  }

  if (v16 != 129)
  {
    v18 = *a7;
    if (v16 <= 3)
    {
      switch(v16)
      {
        case 1:
          v20 = 0;
          v178 = 0;
          goto LABEL_47;
        case 2:
          v20 = 0;
          v34 = 1;
          break;
        case 3:
          if (*(v18 + 1) == 2)
          {
            v20 = 7;
          }

          else
          {
            v20 = 0;
          }

          v34 = 2;
          break;
        default:
          goto LABEL_105;
      }
    }

    else
    {
      if ((v16 - 130) < 6)
      {
        v29 = *(v18 + 1);
        switch(v29)
        {
          case 22:
            v178 = 2;
            v20 = 9;
            break;
          case 24:
            v178 = 2;
            v20 = 4;
            break;
          case 26:
            v178 = 2;
            v20 = 6;
            break;
          default:
            goto LABEL_105;
        }

        goto LABEL_47;
      }

      if ((v16 - 141) >= 2)
      {
        if (v16 != 4)
        {
          goto LABEL_105;
        }

        if (*(v18 + 1) == 2)
        {
          v20 = 7;
        }

        else
        {
          v20 = 0;
        }

        v34 = 3;
      }

      else
      {
        v20 = 2;
        v34 = 2;
      }
    }

    v178 = v34;
    goto LABEL_47;
  }

  *a8 = 0;
  v18 = *a7;
  v19 = *(*a7 + 1);
  switch(v19)
  {
    case 21:
      v178 = 2;
      v20 = 8;
      break;
    case 23:
      v178 = 2;
      v20 = 3;
      break;
    case 25:
      v178 = 2;
      v20 = 5;
      break;
    default:
      v35 = *a3;
      v36 = *(a6 + 16);
      *&v187 = "ADR/ADRP relocations must be GOT relative";
      v189 = 259;
      *&v190 = v36;
      *(v35 + 2056) = 1;
      v182 = &unk_2A1F1BDB8;
      v183 = &v190;
      v184 = &v187;
      v185 = &v182;
      sub_298B2FFE4(v35, v36, &v182);
      if (v185 == &v182)
      {
        (*(*v185 + 32))(v185);
      }

      else if (v185)
      {
        (*(*v185 + 40))();
      }

LABEL_105:
      v21 = *a3;
      v22 = *(a6 + 16);
      v23 = "unknown AArch64 fixup kind!";
      goto LABEL_110;
  }

LABEL_47:
  v177 = v15 & 1;
  v37 = a7[1];
  v38 = a7[2];
  v175 = v17;
  v176 = a2;
  if (v18)
  {
    if (!v37)
    {
      v39 = *(v18 + 16);
      v172 = *(a5 + 16);
      if ((*(v172 + 243) & 2) == 0)
      {
        if (v178 != 3)
        {
          v42 = 0;
          v72 = *(v39 + 8);
          v73 = 0;
          if ((v72 & 2) == 0)
          {
            goto LABEL_123;
          }

          goto LABEL_118;
        }

        v40 = *v39;
        if (*v39 || (*(v39 + 8) & 0x7080) == 0x2000 && (*(v39 + 8) |= 8uLL, v40 = sub_298B45440(*(v39 + 24)), (*v39 = v40) != 0))
        {
          if (v40 != qword_2A13C3628)
          {
            v167 = v38;
            v41 = *(v40 + 16);
            if (*(v41 + 240) == 2)
            {
LABEL_54:
              v42 = 0;
              goto LABEL_157;
            }

            if (!*(v41 + 239) && strlen((v41 + 224)) == 6 && *(v41 + 224) == 1094999903 && *(v41 + 228) == 16724)
            {
              v115 = *(v41 + 200);
              v116 = *(v41 + 208);
              if (v116 == 16)
              {
                v121 = *v115;
                v120 = v115[1];
                if (v121 == 0x635F636A626F5F5FLL && v120 == 0x736665727373616CLL)
                {
                  goto LABEL_54;
                }
              }

              else if (v116 == 10)
              {
                v117 = *v115;
                v118 = *(v115 + 4);
                if (v117 == 0x6972747366635F5FLL && v118 == 26478)
                {
                  goto LABEL_54;
                }
              }
            }

            v42 = 1;
LABEL_157:
            v38 = v167;
            v72 = *(v39 + 8);
            if (v167)
            {
              v73 = 0;
            }

            else
            {
              v73 = v42;
            }

            if ((v72 & 2) == 0)
            {
              goto LABEL_123;
            }

            goto LABEL_118;
          }
        }
      }

      v42 = 1;
      v72 = *(v39 + 8);
      v73 = v38 == 0;
      if ((v72 & 2) == 0)
      {
        goto LABEL_123;
      }

LABEL_118:
      if (!v73)
      {
        v75 = *v39;
        if (!*v39 && ((v72 & 0x7080) != 0x2000 || (*(v39 + 8) = v72 | 8, v75 = sub_298B45440(*(v39 + 24)), (*v39 = v75) == 0)) || v75 == qword_2A13C3628)
        {
LABEL_173:
          v24 = *a3;
          v25 = *(a6 + 16);
          if ((*(v39 + 8) & 1) == 0)
          {
            goto LABEL_174;
          }

          v79 = *(v39 - 8);
          goto LABEL_176;
        }

        v76 = (*(**(*a3 + 144) + 24))(*(*a3 + 144), *(v75 + 16));
        v72 = *(v39 + 8);
        if ((v76 & 1) == 0)
        {
          v72 |= 0x800uLL;
          *(v39 + 8) = v72;
        }
      }

LABEL_123:
      v77 = *v39;
      if ((v72 & 0x802) == 2)
      {
        if (v77 || (v72 & 0x7080) == 0x2000 && (*(v39 + 8) = v72 | 8, v77 = sub_298B45440(*(v39 + 24)), (*v39 = v77) != 0))
        {
          if (v77 == qword_2A13C3628)
          {
            v49 = 0;
            goto LABEL_143;
          }

          v78 = (*(**(*a3 + 144) + 24))(*(*a3 + 144), *(v77 + 16));
          v77 = *v39;
          if (v78)
          {
            if (!v77)
            {
              *(v39 + 8) |= 8uLL;
              v77 = sub_298B45440(*(v39 + 24));
              *v39 = v77;
            }

            v49 = *(v77 + 24);
            goto LABEL_143;
          }

          v49 = 0;
          if (v77)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v49 = 0;
        }
      }

      else
      {
        v49 = v39;
        if (v77)
        {
          goto LABEL_143;
        }
      }

      if ((*(v39 + 8) & 0x7080) != 0x2000)
      {
        v77 = 0;
        goto LABEL_163;
      }

      v171 = v49;
      *(v39 + 8) |= 8uLL;
      v77 = sub_298B45440(*(v39 + 24));
      *v39 = v77;
      if (!v77)
      {
        v49 = v171;
        goto LABEL_163;
      }

      v49 = v171;
LABEL_143:
      if (v77 != qword_2A13C3628)
      {
        if ((*(v172 + 243) & 2) != 0 || !v49)
        {
          goto LABEL_170;
        }

LABEL_164:
        if (v49 == v39)
        {
          v50 = 0;
        }

        else
        {
          *&v187 = 0;
          v81 = v49;
          sub_298B460F8(a4, v39, 1, &v187);
          v82 = v38;
          v83 = v187;
          *&v187 = 0;
          sub_298B460F8(a4, v81, 1, &v187);
          v49 = v81;
          v50 = 0;
          v38 = v83 + v82 - v187;
        }

        v48 = v177;
        goto LABEL_231;
      }

LABEL_163:
      if (!v49)
      {
        if (!v77)
        {
          *(v39 + 8) |= 8uLL;
          v77 = sub_298B45440(*(v39 + 24));
          *v39 = v77;
        }

LABEL_170:
        if (v42)
        {
          v174 = *(*(v77 + 16) + 28) + 1;
          v84 = sub_298B6AF78(v176, v39, a4);
          v85 = v84 + v38;
          if (!v177)
          {
            v49 = 0;
            v38 += v84;
LABEL_230:
            v48 = v177;
            v50 = v174;
            goto LABEL_231;
          }

          v89 = *(v176 + 112);
          if (v89)
          {
            v90 = *(a5 + 16);
            v91 = *(v176 + 96);
            v92 = v89 - 1;
            v93 = ((v90 >> 4) ^ (v90 >> 9)) & (v89 - 1);
            v94 = *(v91 + 16 * v93);
            if (v94 == v90)
            {
              v95 = v84 + v38;
LABEL_181:
              v96 = *(v91 + 16 * v93 + 8);
              goto LABEL_229;
            }

            v124 = 1;
            while (v94 != -4096)
            {
              v125 = v93 + v124++;
              v93 = v125 & v92;
              v94 = *(v91 + 16 * v93);
              v95 = v85;
              if (v94 == v90)
              {
                goto LABEL_181;
              }
            }
          }

          v96 = 0;
          v95 = v85;
LABEL_229:
          sub_298B45F80(a4, a5);
          v49 = 0;
          v38 = v95 + (-1 << v178) - (v96 + *(a5 + 32) + *(a6 + 8));
          goto LABEL_230;
        }

        goto LABEL_173;
      }

      goto LABEL_164;
    }

LABEL_56:
    v43 = *(v18 + 16);
    v44 = *(v43 + 8);
    v45 = v43;
    if ((v44 & 0x802) == 2)
    {
      v46 = *v43;
      if ((*v43 || (v44 & 0x7080) == 0x2000 && (*(v43 + 8) = v44 | 8, v46 = sub_298B45440(*(v43 + 24)), (*v43 = v46) != 0)) && v46 != qword_2A13C3628 && (*(**(*a3 + 144) + 24))(*(*a3 + 144), *(v46 + 16)))
      {
        v47 = *v43;
        if (!*v43)
        {
          *(v43 + 8) |= 8uLL;
          v47 = sub_298B45440(*(v43 + 24));
          *v43 = v47;
        }

        v45 = *(v47 + 24);
      }

      else
      {
        v45 = 0;
      }
    }

    v173 = v45;
    v51 = *(a7[1] + 16);
    v52 = *(v51 + 8);
    v53 = v51;
    if ((v52 & 0x802) == 2)
    {
      v54 = *v51;
      if (!*v51 && ((v52 & 0x7080) != 0x2000 || (*(v51 + 8) = v52 | 8, v54 = sub_298B45440(*(v51 + 24)), (*v51 = v54) == 0)) || v54 == qword_2A13C3628)
      {
        v53 = 0;
        v56 = *(*a7 + 1);
        if (v56 != 2)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if ((*(**(*a3 + 144) + 24))(*(*a3 + 144), *(v54 + 16)))
      {
        v55 = *v51;
        if (!*v51)
        {
          *(v51 + 8) |= 8uLL;
          v55 = sub_298B45440(*(v51 + 24));
          *v51 = v55;
        }

        v53 = *(v55 + 24);
        v56 = *(*a7 + 1);
        if (v56 != 2)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      v53 = 0;
    }

    v56 = *(*a7 + 1);
    if (v56 != 2)
    {
      goto LABEL_83;
    }

LABEL_82:
    if (!*(a7[1] + 1))
    {
      v170 = v53;
      v58 = v38;
      *&v187 = 0;
      sub_298B460F8(a4, v51, 1, &v187);
      v59 = v187;
      sub_298B45F80(a4, a5);
      if (v59 == *(a5 + 32) + *(a6 + 8))
      {
        v60 = *(a5 + 16);
        v182 = v60;
        v187 = v173;
        v188 = v175 | (((v178 << 25) | 0x71000000u) << 32);
        v62 = (v176 + 48);
        v61 = *(v176 + 48);
        v63 = *(v176 + 64);
        if (v63)
        {
          v64 = v63 - 1;
          v65 = v64 & ((v60 >> 4) ^ (v60 >> 9));
          v66 = (v61 + 32 * v65);
          v67 = *v66;
          if (*v66 == v60)
          {
LABEL_256:
            sub_298B41A48((v66 + 1), &v187);
            goto LABEL_113;
          }

          v68 = 0;
          v69 = 1;
          while (v67 != -4096)
          {
            if (v68)
            {
              v70 = 0;
            }

            else
            {
              v70 = v67 == -8192;
            }

            if (v70)
            {
              v68 = v66;
            }

            v71 = v65 + v69++;
            v65 = v71 & v64;
            v66 = (v61 + 32 * v65);
            v67 = *v66;
            if (*v66 == v60)
            {
              goto LABEL_256;
            }
          }

          goto LABEL_297;
        }

LABEL_287:
        v154 = 0;
LABEL_300:
        v66 = sub_298B6B230(v62, &v182, &v182, v154);
        *v66 = v182;
        v66[1] = 0;
        v66[2] = 0;
        v66[3] = 0;
        goto LABEL_256;
      }

      v38 = v58;
      v53 = v170;
      if (*(*a7 + 1))
      {
        goto LABEL_109;
      }

      goto LABEL_84;
    }

LABEL_83:
    if (v56)
    {
      goto LABEL_109;
    }

LABEL_84:
    if (!*(a7[1] + 1))
    {
      if (v177)
      {
        v21 = *a3;
        v22 = *(a6 + 16);
        v23 = "unsupported pc-relative relocation of difference";
        goto LABEL_110;
      }

      if (!v173)
      {
        v24 = *a3;
        v25 = *(a6 + 16);
        if ((*(v43 + 8) & 1) == 0)
        {
LABEL_174:
          v86 = 0;
          v87 = 0;
LABEL_177:
          v186 = 1283;
          v182 = "unsupported relocation of local symbol '";
          v184 = v86;
          v185 = v87;
          v32 = "'. Must have non-local symbol earlier in section.";
          goto LABEL_21;
        }

        v79 = *(v43 - 8);
LABEL_176:
        v88 = *v79;
        v86 = (v79 + 2);
        v87 = v88;
        goto LABEL_177;
      }

      if (!v53)
      {
        v24 = *a3;
        v25 = *(a6 + 16);
        if ((*(v51 + 8) & 1) == 0)
        {
          goto LABEL_174;
        }

        v79 = *(v51 - 8);
        goto LABEL_176;
      }

      if (v173 == v53)
      {
        v21 = *a3;
        v22 = *(a6 + 16);
        v23 = "unsupported relocation with identical base";
        goto LABEL_110;
      }

      v57 = v53;
      v168 = v38;
      if (*v43 || (*(v43 + 8) & 0x7080) == 0x2000 && (*(v43 + 8) |= 8uLL, v97 = sub_298B45440(*(v43 + 24)), (*v43 = v97) != 0))
      {
        v169 = sub_298B6AF78(v176, v43, a4);
      }

      else
      {
        v169 = 0;
      }

      v98 = v173;
      if (*v173 || (*(v173 + 8) & 0x7080) == 0x2000 && (*(v173 + 8) |= 8uLL, v100 = sub_298B45440(*(v173 + 24)), v98 = v173, (*v173 = v100) != 0))
      {
        v99 = sub_298B6AF78(v176, v98, a4);
      }

      else
      {
        v99 = 0;
      }

      if (*v51 || (*(v51 + 8) & 0x7080) == 0x2000 && (*(v51 + 8) |= 8uLL, v102 = sub_298B45440(*(v51 + 24)), (*v51 = v102) != 0))
      {
        v101 = sub_298B6AF78(v176, v51, a4);
      }

      else
      {
        v101 = 0;
      }

      v103 = v57;
      if (*v57)
      {
        goto LABEL_199;
      }

      if ((*(v57 + 8) & 0x7080) == 0x2000)
      {
        *(v57 + 8) |= 8uLL;
        v105 = sub_298B45440(*(v57 + 24));
        v103 = v57;
        *v57 = v105;
        if (v105)
        {
LABEL_199:
          v104 = v176;
          v105 = sub_298B6AF78(v176, v103, a4);
          goto LABEL_205;
        }
      }

      else
      {
        v105 = 0;
      }

      v104 = v176;
LABEL_205:
      v106 = v169 + v168 - (v99 + v101) + v105;
      v107 = *(a5 + 16);
      v182 = v107;
      v187 = v173;
      v188 = v175 | (v178 << 57);
      v108 = (v104 + 48);
      v109 = *(v104 + 48);
      v110 = *(v104 + 64);
      if (v110)
      {
        v111 = v110 - 1;
        v112 = (v110 - 1) & ((v107 >> 4) ^ (v107 >> 9));
        v113 = (v109 + 32 * v112);
        v114 = *v113;
        if (*v113 == v107)
        {
          goto LABEL_207;
        }

        v163 = 0;
        v164 = 1;
        while (v114 != -4096)
        {
          if (v163)
          {
            v165 = 0;
          }

          else
          {
            v165 = v114 == -8192;
          }

          if (v165)
          {
            v163 = v113;
          }

          v166 = v112 + v164++;
          v112 = v166 & v111;
          v113 = (v109 + 32 * v112);
          v114 = *v113;
          v38 = v106;
          if (*v113 == v107)
          {
            goto LABEL_208;
          }
        }

        if (v163)
        {
          v123 = v163;
        }

        else
        {
          v123 = v113;
        }
      }

      else
      {
        v123 = 0;
      }

      v113 = sub_298B6B230(v108, &v182, &v182, v123);
      *v113 = v182;
      v113[1] = 0;
      v113[2] = 0;
      v113[3] = 0;
LABEL_207:
      v38 = v106;
LABEL_208:
      sub_298B41A48((v113 + 1), &v187);
      v50 = 0;
      v20 = 1;
      v48 = 0;
      v49 = v57;
      goto LABEL_231;
    }

LABEL_109:
    v21 = *a3;
    v22 = *(a6 + 16);
    v23 = "unsupported relocation of modified symbol";
    goto LABEL_110;
  }

  if (v37)
  {
    goto LABEL_56;
  }

  v48 = v177;
  if (v177)
  {
    v21 = *a3;
    v22 = *(a6 + 16);
    v23 = "PC relative absolute relocation!";
    goto LABEL_110;
  }

  v20 = 0;
  v49 = 0;
  v50 = 0;
LABEL_231:
  v126 = (v20 & 0xE) == 2 || v20 == 4;
  if (v126 && v38)
  {
    if ((v38 + 0x800000) >> 24)
    {
      v21 = *a3;
      v22 = *(a6 + 16);
      v23 = "addend too big for relocation";
      goto LABEL_110;
    }

    v127 = *(a5 + 16);
    v182 = v127;
    v187 = v49;
    v188 = v175 | (((v48 << 24) | (v178 << 25) | (v20 << 28) | v50) << 32);
    v128 = *(v176 + 48);
    v129 = *(v176 + 64);
    if (v129)
    {
      v130 = v129 - 1;
      v131 = (v129 - 1) & ((v127 >> 4) ^ (v127 >> 9));
      v132 = (v128 + 32 * v131);
      v133 = *v132;
      if (*v132 == v127)
      {
LABEL_240:
        sub_298B41A48((v132 + 1), &v187);
        v49 = 0;
        v48 = 0;
        LODWORD(v178) = 2;
        v20 = 10;
        v50 = v38;
        v38 = 0;
        goto LABEL_241;
      }

      v159 = 0;
      v160 = 1;
      while (v133 != -4096)
      {
        if (v159)
        {
          v161 = 0;
        }

        else
        {
          v161 = v133 == -8192;
        }

        if (v161)
        {
          v159 = v132;
        }

        v162 = v131 + v160++;
        v131 = v162 & v130;
        v132 = (v128 + 32 * v131);
        v133 = *v132;
        if (*v132 == v127)
        {
          goto LABEL_240;
        }
      }

      if (v159)
      {
        v158 = v159;
      }

      else
      {
        v158 = v132;
      }
    }

    else
    {
      v158 = 0;
    }

    v132 = sub_298B6B230((v176 + 48), &v182, &v182, v158);
    *v132 = v182;
    v132[1] = 0;
    v132[2] = 0;
    v132[3] = 0;
    goto LABEL_240;
  }

LABEL_241:
  if ((a7[3] & 0xFFFFFFFE) != 0xA)
  {
    goto LABEL_254;
  }

  if (*a6)
  {
    v134 = *a6 - 8;
  }

  else
  {
    v134 = 0;
  }

  if (v48)
  {
    v21 = *a3;
    v22 = *(a6 + 16);
    v23 = "invalid PC relative auth relocation";
    goto LABEL_110;
  }

  if (v178 == 3)
  {
    if (a7[1])
    {
      v21 = *a3;
      v22 = *(a6 + 16);
      v23 = "invalid auth relocation, can't reference two symbols";
      goto LABEL_110;
    }

    if (v38 == v38)
    {
      v38 = v38 | (*(v134 + 36) << 32) | ((*(v134 + 32) == 11) << 48) | (*(v134 + 38) << 49) | 0x8000000000000000;
      v20 = 11;
LABEL_254:
      *a8 = v38;
      v135 = *(a5 + 16);
      v182 = v135;
      v187 = v49;
      v188 = v175 | ((v50 | (v178 << 25) | (v48 << 24) | (v20 << 28)) << 32);
      v62 = (v176 + 48);
      v136 = *(v176 + 48);
      v137 = *(v176 + 64);
      if (v137)
      {
        v138 = v137 - 1;
        v139 = v138 & ((v135 >> 4) ^ (v135 >> 9));
        v66 = (v136 + 32 * v139);
        v140 = *v66;
        if (*v66 == v135)
        {
          goto LABEL_256;
        }

        v68 = 0;
        v155 = 1;
        while (v140 != -4096)
        {
          if (v68)
          {
            v156 = 0;
          }

          else
          {
            v156 = v140 == -8192;
          }

          if (v156)
          {
            v68 = v66;
          }

          v157 = v139 + v155++;
          v139 = v157 & v138;
          v66 = (v136 + 32 * v139);
          v140 = *v66;
          if (*v66 == v135)
          {
            goto LABEL_256;
          }
        }

LABEL_297:
        if (v68)
        {
          v154 = v68;
        }

        else
        {
          v154 = v66;
        }

        goto LABEL_300;
      }

      goto LABEL_287;
    }

    v141 = v38;
    v142 = *a3;
    v143 = *(a6 + 16);
    if ((v141 & 0x8000000000000000) != 0)
    {
      v147 = -v141;
      v148 = 1;
      v149 = 20;
      do
      {
        *(&v187 + v149) = (v147 % 0xA) | 0x30;
        ++v148;
        --v149;
        v146 = v147 > 9;
        v147 /= 0xAuLL;
      }

      while (v146);
      *(&v187 + v149) = 45;
      if (v148 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v148 > 0x16)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v148;
        if (v148)
        {
          memcpy(&__dst, &v187 + v149, v148);
        }

        __dst.__r_.__value_.__s.__data_[v148] = 0;
LABEL_276:
        v150 = std::string::insert(&__dst, 0, "too wide addend '");
        v151 = v150->__r_.__value_.__r.__words[2];
        *&v180.__r_.__value_.__l.__data_ = *&v150->__r_.__value_.__l.__data_;
        v180.__r_.__value_.__r.__words[2] = v151;
        v150->__r_.__value_.__l.__size_ = 0;
        v150->__r_.__value_.__r.__words[2] = 0;
        v150->__r_.__value_.__r.__words[0] = 0;
        v152 = std::string::append(&v180, "' in auth relocation");
        v153 = v152->__r_.__value_.__r.__words[2];
        v190 = *&v152->__r_.__value_.__l.__data_;
        v191 = v153;
        v152->__r_.__value_.__l.__size_ = 0;
        v152->__r_.__value_.__r.__words[2] = 0;
        v152->__r_.__value_.__r.__words[0] = 0;
        v189 = 260;
        *&v187 = &v190;
        *(v142 + 2056) = 1;
        v181 = v143;
        v182 = &unk_2A1F1BDB8;
        v183 = &v181;
        v184 = &v187;
        v185 = &v182;
        sub_298B2FFE4(v142, v143, &v182);
        if (v185 == &v182)
        {
          (*(*v185 + 32))(v185);
        }

        else if (v185)
        {
          (*(*v185 + 40))();
        }

        if (SHIBYTE(v191) < 0)
        {
          operator delete(v190);
          if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_282:
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_113;
            }

LABEL_286:
            operator delete(__dst.__r_.__value_.__l.__data_);
            goto LABEL_113;
          }
        }

        else if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_282;
        }

        operator delete(v180.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_286;
      }
    }

    else
    {
      v144 = 0;
      v145 = &v188 + 5;
      do
      {
        *--v145 = (v141 % 0xA) | 0x30;
        ++v144;
        v146 = v141 > 9;
        v141 /= 0xAuLL;
      }

      while (v146);
      if (v144 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v144 > 0x16)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v144;
        if (v144)
        {
          memcpy(&__dst, v145, v144);
        }

        __dst.__r_.__value_.__s.__data_[v144] = 0;
        goto LABEL_276;
      }
    }

    sub_298ADDDA0();
  }

  v21 = *a3;
  v22 = *(a6 + 16);
  v23 = "invalid auth relocation size, must be 8 bytes";
LABEL_110:
  *&v187 = v23;
  v189 = 259;
  *&v190 = v22;
  *(v21 + 2056) = 1;
  v182 = &unk_2A1F1BDB8;
  v183 = &v190;
  v184 = &v187;
  v185 = &v182;
  sub_298B2FFE4(v21, v22, &v182);
  v33 = v185;
  if (v185 == &v182)
  {
    goto LABEL_22;
  }

LABEL_111:
  if (v33)
  {
    (*(*v33 + 40))(v33);
  }

LABEL_113:
  v74 = *MEMORY[0x29EDCA608];
}

void *sub_298CEC280(void *result)
{
  *result = &unk_2A1F21580;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    sub_298CEC720((result + 2), v1);
    return v2;
  }

  return result;
}

void sub_298CEC2DC(void *a1)
{
  *a1 = &unk_2A1F21580;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    sub_298CEC720((a1 + 2), v2);
    v1 = vars8;
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298CEC354(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(result + 8);
    v4 = 200 * v2;
    v5 = *(v1 + 24) + 8;
    do
    {
      if (*(v5 + 8))
      {
        (*(*v3 + 168))(v3, *(v5 - 8), 0);
        result = sub_298B228EC(v5, v3);
      }

      v5 += 200;
      v4 -= 200;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_298CEC44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  if (v2 == 1)
  {
    operator new();
  }

  if (v2 == 3)
  {
    operator new();
  }

  return 0;
}

void sub_298CEC720(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = v3 + 200 * v4 - 48;
      v6 = -200 * v4;
      do
      {
        MEMORY[0x29C2945E0](*(v5 + 24), 8);
        sub_298AE9B00(v5, *(v5 + 8));
        v7 = *(v5 - 144);
        if ((v5 - 128) != v7)
        {
          free(v7);
        }

        v5 -= 200;
        v6 += 200;
      }

      while (v6);
      v3 = *(a2 + 24);
    }

    if (v3 != (a2 + 40))
    {
      free(v3);
    }

    MEMORY[0x29C2945E0](*a2, 8);

    JUMPOUT(0x29C2945F0);
  }
}

uint64_t sub_298CEC80C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4, int a5, uint64_t a6)
{
  v45 = *MEMORY[0x29EDCA608];
  v6 = *(a4 + 3);
  if (a5)
  {
    if ((*(a4 + 3) - 5) <= 0xFFFFFFFD)
    {
      v7 = a4[2];
      v33[0] = "Cannot represent this expression";
      v35 = 259;
      v41 = v7;
      *(a2 + 2056) = 1;
      v37[0] = &unk_2A1F1BDB8;
      v37[1] = &v41;
      v38 = v33;
      v39 = v37;
      sub_298B2FFE4(a2, v7, v37);
      if (v39 == v37)
      {
        (*(*v39 + 32))(v39);
        result = 1;
      }

      else
      {
        if (v39)
        {
          (*(*v39 + 40))();
        }

        result = 1;
      }

      goto LABEL_52;
    }

    v6 = 8;
  }

  if (*a3 == 0)
  {
    v9 = 0;
    v10 = *a4;
    v11 = (*a4 - 8);
    v12 = **a4;
    if (v12 != 4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *(*a3 + 1);
    v10 = *a4;
    v11 = (*a4 - 8);
    v12 = **a4;
    if (v12 != 4)
    {
      goto LABEL_13;
    }
  }

  if ((*(v10 + 24) & 7 | 8) != 9)
  {
    v13 = a4[2];
    v40 = 1283;
    v36 = v13;
    v37[0] = "relocation variant ";
    v38 = sub_298CDE03C(v11);
    v39 = v15;
    v33[0] = v37;
    v34 = " unsupported on COFF targets";
    v35 = 770;
    *(a2 + 2056) = 1;
    v41 = &unk_2A1F1BDB8;
    v42 = &v36;
    v43 = v33;
    v44 = &v41;
    sub_298B2FFE4(a2, v13, &v41);
    v16 = v44;
    if (v44 == &v41)
    {
      v19 = *(*v44 + 4);
LABEL_50:
      v19();
LABEL_51:
      result = 0;
      goto LABEL_52;
    }

LABEL_34:
    if (v16)
    {
      (*(*v16 + 5))(v16);
    }

    goto LABEL_51;
  }

LABEL_13:
  if (v6 > 130)
  {
    if (v6 > 137)
    {
      if ((v6 - 141) < 2)
      {
        result = 3;
        goto LABEL_52;
      }

      if (v6 == 138)
      {
        result = 16;
        goto LABEL_52;
      }

      if (v6 == 140)
      {
        result = 15;
        goto LABEL_52;
      }
    }

    else if ((v6 - 131) < 5)
    {
      if (v12 == 4 && *(v10 + 24) == 41)
      {
        result = 11;
      }

      else
      {
        result = 7;
      }

      goto LABEL_52;
    }

    goto LABEL_63;
  }

  if (v6 <= 19)
  {
    if (v6 > 7)
    {
      if (v6 == 8)
      {
        result = 17;
        goto LABEL_52;
      }

      if (v6 == 19)
      {
        result = 13;
        goto LABEL_52;
      }
    }

    else
    {
      if (v6 == 3)
      {
        if (v9 == 27)
        {
          v21 = 8;
        }

        else
        {
          v21 = 1;
        }

        if (v9 == 125)
        {
          result = 2;
        }

        else
        {
          result = v21;
        }

        goto LABEL_52;
      }

      if (v6 == 4)
      {
        result = 14;
        goto LABEL_52;
      }
    }

LABEL_63:
    if (v12 == 4)
    {
      v23 = a4[2];
      v40 = 1283;
      v36 = v23;
      v37[0] = "relocation type ";
      v38 = sub_298CDE03C(v11);
      v39 = v24;
      v33[0] = v37;
      v34 = " unsupported on COFF targets";
      v35 = 770;
      *(a2 + 2056) = 1;
      v41 = &unk_2A1F1BDB8;
      v42 = &v36;
      v43 = v33;
      v44 = &v41;
      sub_298B2FFE4(a2, v23, &v41);
      v16 = v44;
      if (v44 == &v41)
      {
        v19 = *(*v44 + 4);
        goto LABEL_50;
      }
    }

    else
    {
      v26 = (*(*a6 + 80))(a6, *(a4 + 3));
      v27 = a4[2];
      v28 = **v26;
      if (**v26)
      {
        v38 = *v26;
        v29 = 3;
        v30 = 2;
      }

      else
      {
        v30 = 3;
        v29 = 1;
      }

      v36 = v27;
      v37[0] = "relocation type ";
      LOBYTE(v40) = 3;
      HIBYTE(v40) = v29;
      v31 = v28 == 0;
      v32 = v37;
      if (v31)
      {
        v32 = "relocation type ";
      }

      v33[0] = v32;
      v34 = " unsupported on COFF targets";
      LOBYTE(v35) = v30;
      HIBYTE(v35) = 3;
      *(a2 + 2056) = 1;
      v41 = &unk_2A1F1BDB8;
      v42 = &v36;
      v43 = v33;
      v44 = &v41;
      sub_298B2FFE4(a2, v27, &v41);
      v16 = v44;
      if (v44 == &v41)
      {
        v19 = *(*v44 + 4);
        goto LABEL_50;
      }
    }

    goto LABEL_34;
  }

  if (v6 <= 128)
  {
    if (v6 == 20)
    {
      result = 8;
      goto LABEL_52;
    }

    if (v6 == 128)
    {
      result = 5;
      goto LABEL_52;
    }

    goto LABEL_63;
  }

  if (v6 == 129)
  {
    result = 4;
  }

  else
  {
    result = 6;
    if (v12 == 4)
    {
      v17 = *(v10 + 24);
      if (v17 == 57)
      {
        v18 = 10;
      }

      else
      {
        v18 = 6;
      }

      if (v17 == 41)
      {
        result = 9;
      }

      else
      {
        result = v18;
      }
    }
  }

LABEL_52:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298CECD74(uint64_t a1, unsigned int a2)
{
  v4 = sub_298B5F20C(*(a1 + 8), 0);
  if (v4)
  {
    if (a2 <= 0x1FF)
    {
      v5 = 2;
    }

    else
    {
      v5 = 11;
    }

    if (a2 >> 14)
    {
      v5 = 1;
    }

    *&v7 = 0;
    *(&v7 + 1) = a2 | 0xFFFFFFFF00000000;
    v8 = v5;
    if (*(a1 + 24) == 1)
    {
      v6 = sub_298B68BE4(v4 + 112, (a1 + 32));
    }

    else
    {
      v6 = v4 + 88;
    }

    sub_298B60964(v6, &v7);
  }
}

void sub_298CECE04(uint64_t a1, int a2)
{
  v4 = sub_298B5F20C(*(a1 + 8), 0);
  if (v4)
  {
    v6 = 0;
    v7 = a2;
    v8 = 0xCFFFFFFFFLL;
    if (*(a1 + 24) == 1)
    {
      v5 = sub_298B68BE4(v4 + 112, (a1 + 32));
    }

    else
    {
      v5 = v4 + 88;
    }

    sub_298B60964(v5, &v6);
  }
}

void sub_298CECE7C(uint64_t a1, int a2)
{
  v4 = sub_298B5F20C(*(a1 + 8), 0);
  if (v4)
  {
    v6 = 0;
    v7 = a2;
    v8 = 0xEFFFFFFFFLL;
    if (*(a1 + 24) == 1)
    {
      v5 = sub_298B68BE4(v4 + 112, (a1 + 32));
    }

    else
    {
      v5 = v4 + 88;
    }

    sub_298B60964(v5, &v6);
  }
}

void sub_298CECEF4(uint64_t a1, int a2)
{
  v4 = sub_298B5F20C(*(a1 + 8), 0);
  if (v4)
  {
    v6 = 0;
    v7 = a2;
    v8 = 0xDFFFFFFFFLL;
    if (*(a1 + 24) == 1)
    {
      v5 = sub_298B68BE4(v4 + 112, (a1 + 32));
    }

    else
    {
      v5 = v4 + 88;
    }

    sub_298B60964(v5, &v6);
  }
}

void sub_298CECF6C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 15;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CECFEC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 16;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED06C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 17;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED0EC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 18;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED16C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 19;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED1EC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 20;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED26C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 21;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED2EC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 22;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED36C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 23;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CED3EC(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 24;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CED460(uint64_t a1, int a2)
{
  v4 = sub_298B5F20C(*(a1 + 8), 0);
  if (v4)
  {
    v6 = 0;
    v7 = a2;
    v8 = 0x19FFFFFFFFLL;
    if (*(a1 + 24) == 1)
    {
      v5 = sub_298B68BE4(v4 + 112, (a1 + 32));
    }

    else
    {
      v5 = v4 + 88;
    }

    sub_298B60964(v5, &v6);
  }
}

void sub_298CED4D8(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 26;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CED54C(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 28;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

__n128 sub_298CED5C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_298B5F20C(v1, 0);
  if (!v2)
  {
    return result;
  }

  v4 = v2;
  *(v2 + 40) = (*(*v1 + 80))(v1);
  v15.n128_u64[0] = 0;
  v15.n128_u64[1] = 0xFFFFFFFF00000000;
  LODWORD(v16) = 27;
  v6 = v4[11];
  v5 = v4[12];
  v7 = v4[13];
  if (v5 >= v7)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) + 1;
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v11)
      {
        if (v11 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      operator new();
    }

    sub_298ADDDA0();
  }

  if (v6 == v5)
  {
    result = v15;
    v5[1].n128_u64[0] = v16;
    *v5 = result;
    v4[12] = v5 + 24;
    return result;
  }

  v8 = (v6 + 24);
  if (v5 >= 0x18)
  {
    v9 = &v5[1].n128_u64[1];
    v10 = *(v5 - 24);
    v5[1].n128_u64[0] = v5[-1].n128_u64[1];
    *v5 = v10;
    v4[12] = v5 + 24;
    if (v5 == v8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = v4[12];
  v4[12] = v5;
  if (v5 != v8)
  {
LABEL_19:
    memmove(v8, v6, v5 - v8 - 4);
    v9 = v4[12];
  }

LABEL_20:
  v13 = v9 <= &v15 || v6 > &v15;
  v14 = 24;
  if (v13)
  {
    v14 = 0;
  }

  result = *(&v15 + v14);
  v6[1].n128_u32[0] = *(&v15 + v14 + 16);
  *v6 = result;
  return result;
}

uint64_t sub_298CED838(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_298B5F20C(v2, 0);
  if (result)
  {
    *(a1 + 24) = 1;
    result = (*(*v2 + 80))(v2);
    *(a1 + 32) = result;
  }

  return result;
}

uint64_t sub_298CED8A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_298B5F20C(v2, 0);
  if (result)
  {
    *(a1 + 24) = 0;
    *&v7 = 0;
    *(&v7 + 1) = 0xFFFFFFFF00000000;
    v8 = 27;
    v4 = result;
    v5 = sub_298B68BE4(result + 112, (a1 + 32));
    sub_298B60964(v5, &v7);
    v6 = (*(*v2 + 80))(v2);
    result = sub_298B68BE4(v4 + 112, (a1 + 32));
    *(result + 32) = v6;
    *(a1 + 32) = 0;
  }

  return result;
}

void sub_298CED954(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 29;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CED9C8(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 10;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CEDA3C(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 30;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CEDAB0(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 31;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CEDB24(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 32;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CEDB98(uint64_t a1)
{
  v2 = sub_298B5F20C(*(a1 + 8), 0);
  if (v2)
  {
    *&v4 = 0;
    *(&v4 + 1) = 0xFFFFFFFF00000000;
    v5 = 33;
    if (*(a1 + 24) == 1)
    {
      v3 = sub_298B68BE4(v2 + 112, (a1 + 32));
    }

    else
    {
      v3 = v2 + 88;
    }

    sub_298B60964(v3, &v4);
  }
}

void sub_298CEDC0C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 34;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDC8C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 35;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDD0C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 36;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDD8C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 37;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDE0C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 38;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDE8C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 39;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDF0C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 40;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEDF8C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 41;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEE00C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 42;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEE08C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 43;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEE10C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 44;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void sub_298CEE18C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_298B5F20C(*(a1 + 8), 0);
  if (v6)
  {
    *&v8 = 0;
    *(&v8 + 1) = __PAIR64__(a2, a3);
    v9 = 45;
    if (*(a1 + 24) == 1)
    {
      v7 = sub_298B68BE4(v6 + 112, (a1 + 32));
    }

    else
    {
      v7 = v6 + 88;
    }

    sub_298B60964(v7, &v8);
  }
}

void *sub_298CEE398(void *result)
{
  *result = &unk_2A1F21580;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    sub_298CEC720((result + 2), v1);
    return v2;
  }

  return result;
}

void sub_298CEE3F4(void *a1)
{
  *a1 = &unk_2A1F21580;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    sub_298CEC720((a1 + 2), v2);
    v1 = vars8;
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298CEE46C(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    (*(*a1 + 168))(a1, *(a2 + 56), 0);
    *(a2 + 16) = (*(*a1 + 80))(a1);
  }

  v4 = sub_298B604D4(a1[1], a1 + 74, *(*(a1[1] + 160) + 696), *(a2 + 56));
  (*(*a1 + 168))(a1, v4, 0);

  sub_298B65650(a1, a2, 1);
}

void sub_298CEE558(uint64_t a1)
{
  if (((*(a1 + 88) - *(a1 + 80)) & 0x7FFFFFFF8) != 0)
  {
    sub_298B650F4(a1 + 568, a1);
  }
}

void sub_298CEE598(void *a1)
{
  *a1 = &unk_2A1F21768;
  sub_298B4A8F0(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298CEE5EC(void *a1, uint64_t a2)
{
  sub_298B60378(a1, a2);
  v3 = a1[13];
  if (!*(v3 + 16))
  {
    (*(*a1 + 168))(a1, *(v3 + 56), 0);
    *(v3 + 16) = (*(*a1 + 80))(a1);
  }

  v4 = sub_298B604D4(a1[1], a1 + 74, *(*(a1[1] + 160) + 696), *(v3 + 56));
  (*(*a1 + 168))(a1, v4, 0);

  sub_298B65650(a1, v3, 0);
}

void sub_298CEE6DC(uint64_t a1)
{
  if (-1171354717 * ((*(a1 + 32) - *(a1 + 24)) >> 3))
  {
    if (*(a1 + 320) == 1)
    {
      sub_298B38E2C(a1, 0, 1);
    }

    if (*(a1 + 321) == 1)
    {
      sub_298B38E2C(a1, 0, 0);
    }
  }

  (*(*a1 + 24))(a1);

  sub_298B6AD94(a1);
}

void *sub_298CEE78C()
{
  if ((atomic_load_explicit(&qword_2A13C3080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C3080))
  {
    xmmword_2A13C31A0 = 0u;
    unk_2A13C31B0 = 0u;
    xmmword_2A13C3180 = 0u;
    unk_2A13C3190 = 0u;
    xmmword_2A13C3160 = 0u;
    unk_2A13C3170 = 0u;
    xmmword_2A13C3140 = 0u;
    unk_2A13C3150 = 0u;
    __cxa_guard_release(&qword_2A13C3080);
  }

  return &unk_2A13C30A8;
}

void *sub_298CEE7F8()
{
  if ((atomic_load_explicit(&qword_2A13C3088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C3088))
  {
    xmmword_2A13C32B8 = 0u;
    unk_2A13C32C8 = 0u;
    xmmword_2A13C3298 = 0u;
    unk_2A13C32A8 = 0u;
    xmmword_2A13C3278 = 0u;
    unk_2A13C3288 = 0u;
    xmmword_2A13C3258 = 0u;
    unk_2A13C3268 = 0u;
    __cxa_guard_release(&qword_2A13C3088);
  }

  return &unk_2A13C31C0;
}

void *sub_298CEE864()
{
  if ((atomic_load_explicit(&qword_2A13C3090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C3090))
  {
    xmmword_2A13C33D0 = 0u;
    unk_2A13C33E0 = 0u;
    xmmword_2A13C33B0 = 0u;
    unk_2A13C33C0 = 0u;
    xmmword_2A13C3390 = 0u;
    unk_2A13C33A0 = 0u;
    xmmword_2A13C3370 = 0u;
    unk_2A13C3380 = 0u;
    __cxa_guard_release(&qword_2A13C3090);
  }

  return &unk_2A13C32D8;
}

void *sub_298CEE8D0()
{
  if ((atomic_load_explicit(&qword_2A13C3098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C3098))
  {
    xmmword_2A13C34F8 = 0u;
    xmmword_2A13C34E8 = 0u;
    xmmword_2A13C34D8 = 0u;
    xmmword_2A13C34C8 = 0u;
    xmmword_2A13C34B8 = 0u;
    xmmword_2A13C34A8 = 0u;
    xmmword_2A13C3488 = 0u;
    unk_2A13C3498 = 0u;
    __cxa_guard_release(&qword_2A13C3098);
  }

  return &unk_2A13C33F0;
}

void *sub_298CEE948()
{
  if ((atomic_load_explicit(&qword_2A13C30A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C30A0))
  {
    xmmword_2A13C3610 = 0u;
    xmmword_2A13C3600 = 0u;
    xmmword_2A13C35F0 = 0u;
    xmmword_2A13C35E0 = 0u;
    xmmword_2A13C35D0 = 0u;
    xmmword_2A13C35C0 = 0u;
    xmmword_2A13C35B0 = 0u;
    xmmword_2A13C35A0 = 0u;
    __cxa_guard_release(&qword_2A13C30A0);
  }

  return &unk_2A13C3508;
}

uint64_t sub_298CEE9C4()
{
  sub_298CEE8D0();
  sub_298B6CCD4(&unk_2A13C33F0, "arm64", "ARM64 (little endian)", "AArch64", sub_298CEEB00, 1);
  sub_298CEE948();
  sub_298B6CCD4(&unk_2A13C3508, "arm64_32", "ARM64 (little endian ILP32)", "AArch64", sub_298CEEB08, 1);
  sub_298CEE78C();
  sub_298B6CCD4(&unk_2A13C30A8, "aarch64", "AArch64 (little endian)", "AArch64", sub_298CEEB10, 1);
  sub_298CEE7F8();
  sub_298B6CCD4(&unk_2A13C31C0, "aarch64_be", "AArch64 (big endian)", "AArch64", sub_298CEEB1C, 1);
  sub_298CEE864();

  return sub_298B6CCD4(&unk_2A13C32D8, "aarch64_32", "AArch64 (little endian ILP32)", "AArch64", sub_298CEEB28, 1);
}

char **sub_298CEEB34(unsigned int a1)
{
  v1 = &unk_298EA2FA8;
  v2 = 8;
  do
  {
    v3 = v2 >> 1;
    v4 = &v1[8 * (v2 >> 1)];
    v6 = *v4;
    v5 = v4 + 8;
    v2 += ~(v2 >> 1);
    if (v6 < a1)
    {
      v1 = v5;
    }

    else
    {
      v2 = v3;
    }
  }

  while (v2);
  if (v1 == &unk_298EA2FE8 || *v1 != a1)
  {
    return 0;
  }

  else
  {
    return &(&off_29EED3730)[14 * *(v1 + 1)];
  }
}

char **sub_298CEEBA0(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  v28 = a2;
  if (a2)
  {
    v3 = a1;
    v2 = &v26;
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = v5 - 32;
      if ((v5 - 97) < 0x1A)
      {
        v4 = v6;
      }

      *v2++ = v4;
    }

    while (v3 != &a1[a2]);
  }

  else
  {
    v2 = &v26;
  }

  v7 = 0;
  *v2 = 0;
  v8 = v28;
  v24 = v27;
  __s1 = v26;
  if ((v28 & 0x80u) == 0)
  {
    v9 = v28;
  }

  else
  {
    v9 = v27;
  }

  if ((v28 & 0x80u) == 0)
  {
    v10 = &v26;
  }

  else
  {
    v10 = v26;
  }

  v11 = 1212;
  do
  {
    v12 = v11 >> 1;
    v13 = v7 + 16 * (v11 >> 1);
    v14 = *(&off_29EECBCD8 + v13);
    if (v14)
    {
      v15 = strlen(*(&off_29EECBCD8 + v13));
      v16 = v15;
      if (v9 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v9;
      }

      if (v17)
      {
        v18 = memcmp(v14, v10, v17);
        if (v18)
        {
          if (v18 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 < v9)
    {
LABEL_17:
      v7 = v13 + 16;
      v12 = v11 + ~v12;
    }

LABEL_18:
    v11 = v12;
  }

  while (v12);
  if (v7 == 19392)
  {
    goto LABEL_38;
  }

  v19 = strlen(*(&off_29EECBCD8 + v7));
  v20 = v19;
  if ((v8 & 0x80) != 0)
  {
    if (v19 != v24)
    {
      v22 = 0;
      goto LABEL_43;
    }

    v21 = __s1;
    if (v24 == -1)
    {
      sub_298ADDDA0();
    }

LABEL_37:
    if (!memcmp(v21, *(&off_29EECBCD8 + v7), v20))
    {
      v22 = &off_29EED3CE0[15 * *(&off_29EECBCD8 + v7 + 8)];
      if ((v8 & 0x80) == 0)
      {
        return v22;
      }

      goto LABEL_43;
    }

LABEL_38:
    v22 = 0;
    if ((v8 & 0x80) == 0)
    {
      return v22;
    }

LABEL_43:
    operator delete(__s1);
    return v22;
  }

  if (v19 == v8)
  {
    v21 = &v26;
    goto LABEL_37;
  }

  return 0;
}

void sub_298CEEE3C(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  v53 = *MEMORY[0x29EDCA608];
  v4 = (a1 >> 7) & 0xF;
  *(&v44.__r_.__value_.__s + 23) = 1;
  LOWORD(v44.__r_.__value_.__l.__data_) = (a1 >> 14) | 0x30;
  v5 = std::string::insert(&v44, 0, "S");
  v6 = v5->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v45, "_");
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v43 = 1;
  __s[0] = (a1 >> 11) & 7 | 0x30;
  __s[1] = 0;
  v9 = std::string::append(&v46, __s, 1uLL);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v47, "_C");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v4)
  {
    v13 = 20;
    do
    {
      v52.__r_.__value_.__s.__data_[v13--] = (v4 % 0xA) | 0x30;
      v14 = v4 > 9;
      v4 /= 0xAuLL;
    }

    while (v14);
    v15 = v13 + 1;
    v16 = 20 - v13;
    if ((20 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_48:
      sub_298ADDDA0();
    }
  }

  else
  {
    v52.__r_.__value_.__s.__data_[20] = 48;
    v15 = 20;
    v16 = 1;
  }

  v17 = (a1 >> 3) & 0xF;
  if (v16 > 0x16)
  {
    operator new();
  }

  v41 = v16;
  if (v15 != 21)
  {
    memcpy(__dst, &v52 + v15, v16);
  }

  *(__dst + v16) = 0;
  if ((v41 & 0x80u) == 0)
  {
    v18 = __dst;
  }

  else
  {
    v18 = __dst[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v19 = v41;
  }

  else
  {
    v19 = __dst[1];
  }

  v20 = std::string::append(&v48, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v49, "_C");
  v23 = v22->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v17)
  {
    v24 = 20;
    do
    {
      v52.__r_.__value_.__s.__data_[v24--] = (v17 % 0xA) | 0x30;
      v14 = v17 > 9;
      v17 /= 0xAuLL;
    }

    while (v14);
    v25 = v24 + 1;
    v26 = 20 - v24;
    if ((20 - v24) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v52.__r_.__value_.__s.__data_[20] = 48;
    v25 = 20;
    v26 = 1;
  }

  if (v26 > 0x16)
  {
    operator new();
  }

  v39 = v26;
  if (v25 != 21)
  {
    memcpy(__p, &v52 + v25, v26);
  }

  *(__p + v26) = 0;
  if ((v39 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v28 = v39;
  }

  else
  {
    v28 = __p[1];
  }

  v29 = std::string::append(&v50, v27, v28);
  v30 = v29->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v51, "_");
  v32 = v31->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v37 = 1;
  v36[0] = a1 & 7 | 0x30;
  v36[1] = 0;
  v33 = std::string::append(&v52, v36, 1uLL);
  *a2 = *v33;
  v33->__r_.__value_.__r.__words[0] = 0;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  if (v37 < 0)
  {
    operator delete(*v36);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_35:
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    }
  }

  else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v52.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_36:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v51.__r_.__value_.__l.__data_);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(__p[0]);
  if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v50.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_39:
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_55;
  }

LABEL_54:
  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(__dst[0]);
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_41:
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(v48.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_42:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_58;
  }

LABEL_57:
  operator delete(v47.__r_.__value_.__l.__data_);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(*__s);
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_60:
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_61;
  }

LABEL_59:
  operator delete(v46.__r_.__value_.__l.__data_);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_60;
  }

LABEL_45:
  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_46:
    v34 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_61:
  operator delete(v44.__r_.__value_.__l.__data_);
  v35 = *MEMORY[0x29EDCA608];
}

void *sub_298CEF3B8(void *result)
{
  *result = &unk_2A1F21E50;
  v1 = result[3];
  result[3] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void *sub_298CEF448(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[4];
  if (v4)
  {
    __s = 0;
    v25 = 2;
    result = v4(result[5], a3, &v25, a4, &__s);
    if (v25 > 4)
    {
      if (v25 > 6)
      {
        if (v25 == 7)
        {
          v12 = *(a2 + 32);
          if ((*(a2 + 24) - v12) <= 0x12)
          {
            result = sub_298B9BCEC(a2, "Objc selector ref: ", 0x13uLL);
            goto LABEL_31;
          }

          *(v12 + 15) = 540698213;
          *v12 = *"Objc selector ref: ";
          v16 = *(a2 + 32) + 19;
        }

        else
        {
          if (v25 != 8)
          {
            return result;
          }

          v9 = *(a2 + 32);
          if (*(a2 + 24) - v9 <= 0xFuLL)
          {
            result = sub_298B9BCEC(a2, "Objc class ref: ", 0x10uLL);
            goto LABEL_31;
          }

          *v9 = *"Objc class ref: ";
          v16 = *(a2 + 32) + 16;
        }
      }

      else if (v25 == 5)
      {
        v11 = *(a2 + 32);
        if (*(a2 + 24) - v11 <= 0xDuLL)
        {
          result = sub_298B9BCEC(a2, "Objc message: ", 0xEuLL);
          goto LABEL_31;
        }

        qmemcpy(v11, "Objc message: ", 14);
        v16 = *(a2 + 32) + 14;
      }

      else
      {
        v6 = *(a2 + 32);
        if ((*(a2 + 24) - v6) <= 0x11)
        {
          result = sub_298B9BCEC(a2, "Objc message ref: ", 0x12uLL);
LABEL_31:
          if (!__s)
          {
            return result;
          }

          v17 = strlen(__s);
          result = *(a2 + 32);
          if (v17 > *(a2 + 24) - result)
          {
            v18 = a2;
            v19 = __s;
            v20 = v17;
            return sub_298B9BCEC(v18, v19, v20);
          }

          if (!v17)
          {
            return result;
          }

          result = memcpy(result, __s, v17);
          v21 = *(a2 + 32) + v17;
LABEL_49:
          *(a2 + 32) = v21;
          return result;
        }

        *(v6 + 16) = 8250;
        *v6 = *"Objc message ref: ";
        v16 = *(a2 + 32) + 18;
      }

LABEL_30:
      *(a2 + 32) = v16;
      goto LABEL_31;
    }

    if (v25 == 2)
    {
      v10 = *(a2 + 32);
      if (*(a2 + 24) - v10 <= 0x1CuLL)
      {
        result = sub_298B9BCEC(a2, "literal pool symbol address: ", 0x1DuLL);
        goto LABEL_31;
      }

      qmemcpy(v10, "literal pool symbol address: ", 29);
      v16 = *(a2 + 32) + 29;
      goto LABEL_30;
    }

    if (v25 != 3)
    {
      if (v25 != 4)
      {
        return result;
      }

      v7 = *(a2 + 32);
      if (*(a2 + 24) - v7 > 0x14uLL)
      {
        qmemcpy(v7, "Objc cfstring ref: @", 21);
        v8 = (*(a2 + 32) + 21);
        *(a2 + 32) = v8;
      }

      else
      {
        result = sub_298B9BCEC(a2, "Objc cfstring ref: @", 0x15uLL);
        v8 = *(a2 + 32);
      }

      if (__s)
      {
        result = strlen(__s);
        v22 = result;
        if (result <= *(a2 + 24) - v8)
        {
          if (result)
          {
            result = memcpy(v8, __s, result);
            v8 = v22 + *(a2 + 32);
            *(a2 + 32) = v8;
          }
        }

        else
        {
          result = sub_298B9BCEC(a2, __s, result);
          v8 = *(a2 + 32);
        }
      }

      if (*(a2 + 24) != v8)
      {
        *v8 = 34;
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    v13 = *(a2 + 32);
    if ((*(a2 + 24) - v13) > 0x12)
    {
      *(v13 + 15) = 572537458;
      *v13 = *"literal pool for: ";
      *(a2 + 32) += 19;
      v14 = __s;
      if (__s)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(a2, "literal pool for: ", 0x13uLL);
      v14 = __s;
      if (__s)
      {
LABEL_24:
        v15 = strlen(v14);
        goto LABEL_42;
      }
    }

    v15 = 0;
LABEL_42:
    result = sub_298B9B3A0(a2, v14, v15, 0);
    v23 = *(a2 + 32);
    if (*(a2 + 24) != v23)
    {
      *v23 = 34;
LABEL_48:
      v21 = *(a2 + 32) + 1;
      goto LABEL_49;
    }

LABEL_50:
    v19 = "";
    v18 = a2;
    v20 = 1;
    return sub_298B9BCEC(v18, v19, v20);
  }

  return result;
}

uint64_t sub_298CEF83C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 44) != 5)
  {
    goto LABEL_21;
  }

  v3 = *(result + 24);
  if (v3 - 37 <= 1)
  {
    v4 = result;
    result = sub_298CF59FC(*(result + 24));
    if (result == 64)
    {
      *(a2 + 8) &= ~1u;
      *a2 = 16777223;
      return result;
    }

    v5 = result == 32;
    result = v4;
    if (v5)
    {
      *(a2 + 8) &= ~1u;
      *a2 = 7;
      return result;
    }
  }

  v5 = v3 > 0x24 || ((1 << v3) & 0x1800000006) == 0;
  if (!v5)
  {
    *(a2 + 8) &= ~1u;
    *a2 = 12;
    return result;
  }

  if (v3 - 3 > 2)
  {
    if (v3 == 23)
    {
      *(a2 + 8) &= ~1u;
      *a2 = 16777234;
      return result;
    }

    if (v3 == 21)
    {
      *(a2 + 8) &= ~1u;
      *a2 = 18;
      return result;
    }

LABEL_21:
    if (*(result + 23) >= 0)
    {
      v7 = result;
    }

    else
    {
      v7 = *result;
    }

    std::generic_category();
    memset(__p, 0, sizeof(__p));
    v9 = 0;
    v13 = 0;
    v14 = 0;
    v16 = __p;
    v15 = 0;
    v8 = &unk_2A1F1E040;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v18[0] = &unk_2A1F21EC8;
    v18[1] = "Unsupported triple for mach-o cpu %s: %s";
    v18[2] = "type";
    v18[3] = v7;
    sub_298B9B1F8(&v8, v18);
    operator new();
  }

  result = sub_298CF59FC(v3);
  if (result == 32)
  {
    v6 = 33554444;
  }

  else
  {
    v6 = 16777228;
  }

  *(a2 + 8) &= ~1u;
  *a2 = v6;
  return result;
}

void sub_298CEFB28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 44) != 5)
  {
    goto LABEL_30;
  }

  v3 = *(a1 + 24);
  if (v3 - 37 <= 1)
  {
    if (sub_298CF59FC(*(a1 + 24)) == 32)
    {
      goto LABEL_17;
    }

    v5 = *(a1 + 23);
    v6 = *a1;
    if (v5 >= 0)
    {
      v6 = a1;
    }

    if (v5 < 0)
    {
      v5 = *(a1 + 8);
    }

    v49 = v6;
    v50 = v5;
    LOBYTE(__p[0]) = 45;
    sub_298CF6014(&v49, __p, 1uLL, &v39);
    if (v40 != 7)
    {
LABEL_17:
      v11 = 3;
    }

    else
    {
      v7 = 2016949855;
      v8 = bswap32(*v39);
      if (v8 == 2016949855 && (v7 = 1597387880, v8 = bswap32(*(v39 + 3)), v8 == 1597387880))
      {
        v9 = 0;
      }

      else if (v8 < v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v11 = 3;
      }

      else
      {
        v11 = 8;
      }
    }

    goto LABEL_72;
  }

  if (v3 > 0x24)
  {
LABEL_30:
    if (*(a1 + 23) >= 0)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a1;
    }

    std::generic_category();
    memset(__p, 0, sizeof(__p));
    LODWORD(v40) = 0;
    v44 = 0;
    v45 = 0;
    v47 = __p;
    v46 = 0;
    v39 = &unk_2A1F1E040;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v49 = &unk_2A1F21EC8;
    v50 = "Unsupported triple for mach-o cpu %s: %s";
    v51 = "subtype";
    v52 = v31;
    sub_298B9B1F8(&v39, &v49);
    operator new();
  }

  if (((1 << v3) & 0x1800000006) != 0)
  {
    v12 = *(a1 + 23);
    v13 = *a1;
    if (v12 >= 0)
    {
      v13 = a1;
    }

    if (v12 < 0)
    {
      v12 = *(a1 + 8);
    }

    v49 = v13;
    v50 = v12;
    LOBYTE(__p[0]) = 45;
    sub_298CF6014(&v49, __p, 1uLL, &v39);
    v14 = sub_298CF108C(v39, v40);
    v22 = sub_298CF0A00(v14, v15, v16, v17, v18, v19, v20, v21);
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      v26 = 0;
      v27 = -v23;
      v28 = &off_29EEFC600;
      do
      {
        v29 = v28[1];
        if (v29 >= v25 && !memcmp(&(*v28)[v29 + v27], v24, v25))
        {
          v30 = -v26;
          goto LABEL_44;
        }

        v26 -= 72;
        v28 += 9;
      }

      while (v26 != -2952);
      v11 = 9;
    }

    else
    {
      v30 = 0;
LABEL_44:
      v32 = *(&off_29EEFC600 + v30 + 64);
      if (v32 == 40)
      {
        v33 = 12;
      }

      else
      {
        v33 = 9;
      }

      if (v32 == 39)
      {
        v34 = 11;
      }

      else
      {
        v34 = v33;
      }

      if (v32 == 15)
      {
        v35 = 16;
      }

      else
      {
        v35 = v34;
      }

      if (v32 == 14)
      {
        v36 = 15;
      }

      else
      {
        v36 = 9;
      }

      if (v32 == 10)
      {
        v37 = 14;
      }

      else
      {
        v37 = v36;
      }

      if (v32 <= 14)
      {
        v35 = v37;
      }

      if (v32 == 2)
      {
        v38 = 5;
      }

      else
      {
        v38 = 9;
      }

      if ((v32 - 6) < 2)
      {
        v38 = 6;
      }

      if ((v32 - 3) < 3)
      {
        v38 = 7;
      }

      if (v32 <= 9)
      {
        v11 = v38;
      }

      else
      {
        v11 = v35;
      }
    }

    goto LABEL_72;
  }

  if (((1 << v3) & 0x38) == 0)
  {
    if (((1 << v3) & 0xA00000) != 0)
    {
      *(a2 + 8) &= ~1u;
      *a2 = 0;
      return;
    }

    goto LABEL_30;
  }

  if (sub_298CF59FC(*(a1 + 24)) == 32)
  {
    v11 = 1;
  }

  else if (v3 == 3)
  {
    v11 = 2 * (*(a1 + 28) == 34);
  }

  else
  {
    v11 = 0;
  }

LABEL_72:
  *(a2 + 8) &= ~1u;
  *a2 = v11;
}

uint64_t sub_298CEFFAC(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return 0;
  }

  if (a2 >= 6)
  {
    v2 = *a1 == 1230192963 && *(a1 + 2) == 14916;
    if (v2)
    {
      return 40;
    }
  }

  v3 = *a1;
  if (v3 == 255)
  {
    return 0;
  }

  v4 = 33;
  switch(*a1)
  {
    case 1u:
      if (*a1 == 57089)
      {
        return 29;
      }

      if (*a1 != -2303)
      {
        return 0;
      }

      return 30;
    case 2u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Fu:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x60u:
    case 0x61u:
    case 0x62u:
    case 0x63u:
    case 0x65u:
    case 0x67u:
    case 0x69u:
    case 0x6Au:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Du:
    case 0x6Eu:
    case 0x6Fu:
    case 0x70u:
    case 0x71u:
    case 0x72u:
    case 0x73u:
    case 0x74u:
    case 0x75u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x79u:
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x80u:
    case 0x81u:
    case 0x82u:
    case 0x85u:
    case 0x86u:
    case 0x87u:
    case 0x88u:
    case 0x89u:
    case 0x8Au:
    case 0x8Bu:
    case 0x8Cu:
    case 0x8Du:
    case 0x8Eu:
    case 0x8Fu:
    case 0x91u:
    case 0x92u:
    case 0x93u:
    case 0x94u:
    case 0x95u:
    case 0x96u:
    case 0x97u:
    case 0x98u:
    case 0x99u:
    case 0x9Au:
    case 0x9Bu:
    case 0x9Cu:
    case 0x9Du:
    case 0x9Eu:
    case 0x9Fu:
    case 0xA0u:
    case 0xA1u:
    case 0xA2u:
    case 0xA3u:
    case 0xA4u:
    case 0xA5u:
    case 0xA6u:
    case 0xA7u:
    case 0xA8u:
    case 0xA9u:
    case 0xAAu:
    case 0xABu:
    case 0xACu:
    case 0xADu:
    case 0xAEu:
    case 0xAFu:
    case 0xB0u:
    case 0xB1u:
    case 0xB2u:
    case 0xB3u:
    case 0xB4u:
    case 0xB5u:
    case 0xB6u:
    case 0xB7u:
    case 0xB8u:
    case 0xB9u:
    case 0xBAu:
    case 0xBBu:
    case 0xBCu:
    case 0xBDu:
    case 0xBEu:
    case 0xBFu:
    case 0xC0u:
    case 0xC1u:
    case 0xC2u:
    case 0xC3u:
    case 0xC5u:
    case 0xC6u:
    case 0xC7u:
    case 0xC8u:
    case 0xC9u:
    case 0xCBu:
    case 0xCCu:
    case 0xCDu:
    case 0xD0u:
    case 0xD1u:
    case 0xD2u:
    case 0xD3u:
    case 0xD4u:
    case 0xD5u:
    case 0xD6u:
    case 0xD7u:
    case 0xD8u:
    case 0xD9u:
    case 0xDAu:
    case 0xDBu:
    case 0xDCu:
    case 0xDDu:
    case 0xDFu:
    case 0xE0u:
    case 0xE1u:
    case 0xE2u:
    case 0xE3u:
    case 0xE4u:
    case 0xE5u:
    case 0xE6u:
    case 0xE7u:
    case 0xE8u:
    case 0xE9u:
    case 0xEAu:
    case 0xEBu:
    case 0xECu:
    case 0xEDu:
    case 0xEEu:
    case 0xEFu:
    case 0xF1u:
    case 0xF2u:
    case 0xF3u:
    case 0xF4u:
    case 0xF5u:
    case 0xF6u:
    case 0xF7u:
    case 0xF8u:
    case 0xF9u:
    case 0xFAu:
    case 0xFBu:
    case 0xFCu:
    case 0xFDu:
      return 0;
    case 3u:
      if (!(*a1 ^ 0xF003 | a1[2]))
      {
        return 9;
      }

      v18 = *a1;
      v19 = 119734787;
LABEL_97:
      if (v18 == v19)
      {
        return 39;
      }

      return 0;
    case 7u:
      v18 = *a1;
      v19 = 50471687;
      goto LABEL_97;
    case 0x10u:
      if (*a1 != -1391395056)
      {
        return 0;
      }

      return 35;
    case 0x21u:
      if (a2 < 8)
      {
        return 0;
      }

      if (*a1 == 0xA3E686372613C21)
      {
        return 3;
      }

      v12 = *a1;
      v13 = 0x6E6968743C21;
LABEL_41:
      if (v12 != (v13 & 0xFFFFFFFFFFFFLL | 0xA3E000000000000))
      {
        return 0;
      }

      return 3;
    case 0x2Du:
      if (a2 < 9)
      {
        return 0;
      }

      if (*a1 != 0x70617421202D2D2DLL || a1[8] != 105)
      {
        if (a2 == 9)
        {
          return 0;
        }

        if (*a1 != 0x686372610A2D2D2DLL || *(a1 + 4) != 14963)
        {
          return 0;
        }
      }

      return 33;
    case 0x3Cu:
      if (a2 < 8)
      {
        return 0;
      }

      v12 = *a1;
      v13 = 0x66616769623CLL;
      goto LABEL_41;
    case 0x41u:
    case 0x4Eu:
      if (a1[1] != 166)
      {
        return 0;
      }

      return 25;
    case 0x42u:
      v26 = *a1;
      v27 = -557825214;
      return v26 == v27;
    case 0x43u:
      if (*a1 == 1112490819)
      {
        return 38;
      }

      if (*a1 != 1212371011)
      {
        return 0;
      }

      return 2;
    case 0x44u:
      if (*a1 != 1128421444)
      {
        return 0;
      }

      return 36;
    case 0x4Cu:
    case 0xC4u:
      goto LABEL_32;
    case 0x4Du:
      if (a2 >= 0x40 && *a1 == 23117)
      {
        v23 = *(a1 + 15);
        if (a2 < v23)
        {
          v23 = a2;
        }

        if (a2 - v23 >= 4 && *&a1[v23] == 17744)
        {
          return 27;
        }
      }

      else if (a2 < 0x1A)
      {
        goto LABEL_127;
      }

      if (*a1 == 0x666F736F7263694DLL && *(a1 + 1) == 0x202B2B432F432074 && *(a1 + 2) == 0x30302E372046534DLL && *(a1 + 12) == 2573)
      {
        return 32;
      }

LABEL_127:
      if (*a1 != 1347241037)
      {
        return 0;
      }

      return 23;
    case 0x50u:
    case 0x66u:
    case 0x83u:
    case 0x84u:
    case 0xF0u:
      if (*a1 == -1168773808)
      {
        return 34;
      }

LABEL_32:
      if (a1[1] == 1)
      {
        return 25;
      }

LABEL_33:
      if (a1[1] == 2)
      {
        return 25;
      }

      return 0;
    case 0x5Fu:
      if (a2 < 0x19)
      {
        return 0;
      }

      v14 = *a1 == 0x5F474E414C435F5FLL && *(a1 + 1) == 0x5F44414F4C46464FLL;
      if (!v14 || *(a1 + 2) != 0x5F5F454C444E5542)
      {
        return 0;
      }

      return 37;
    case 0x64u:
      v24 = a1[1];
      if (v24 == 170 || v24 == 134)
      {
        return 25;
      }

      else
      {
        return 0;
      }

    case 0x68u:
    case 0x90u:
      goto LABEL_33;
    case 0x7Bu:
      return v4;
    case 0x7Fu:
      if (a2 < 0x12 || *a1 != 1179403647)
      {
        return 0;
      }

      v20 = a1[5];
      v21 = 16;
      if (v20 != 2)
      {
        v21 = 17;
      }

      if (a1[v21])
      {
        return 4;
      }

      v2 = v20 == 2;
      v31 = 16;
      if (v2)
      {
        v31 = 17;
      }

      v32 = a1[v31];
      if ((v32 - 1) >= 4)
      {
        return 4;
      }

      else
      {
        return (v32 + 4);
      }

    case 0xCAu:
      if (*a1 == -1095041334)
      {
        if (a2 < 8)
        {
          return 0;
        }
      }

      else if (a2 < 8 || *a1 != -1078264118)
      {
        return 0;
      }

      if (a1[7] >= 43)
      {
        return 0;
      }

      return 21;
    case 0xCEu:
    case 0xCFu:
    case 0xFEu:
      if (*a1 == -822415874 || *a1 == -805638658)
      {
        v5 = 32;
        if (a1[3] == 206)
        {
          v5 = 28;
        }

        if (a2 < v5)
        {
          return 0;
        }

        v6 = 15;
        v7 = 14;
        v8 = 13;
      }

      else
      {
        if (*a1 != -17958194 && *a1 != -17958193)
        {
          return 0;
        }

        v11 = 32;
        if (v3 == 206)
        {
          v11 = 28;
        }

        if (a2 < v11)
        {
          return 0;
        }

        v6 = 12;
        v7 = 13;
        v8 = 14;
      }

      v9 = ((a1[v7] << 8) | (a1[v8] << 12) | a1[v6]) - 1;
      if (v9 >= 0xCu)
      {
        return 0;
      }

      return dword_298EA5B58[v9];
    case 0xDEu:
      v26 = *a1;
      v27 = 186106078;
      return v26 == v27;
    default:
      if (*a1 == -65536)
      {
        if (a2 >= 0x1C)
        {
          if (*(a1 + 12) == 0x4BA9BAEED1BAA1C7 && *(a1 + 20) == 0xB8DCA46AF6FA20AFLL)
          {
            return 25;
          }

          if (*(a1 + 12) ^ 0x4DABD9A50CB3FE38 | *(a1 + 20) ^ 0xC2532622B6D69BACLL)
          {
            return 26;
          }

          else
          {
            return 24;
          }
        }

        else
        {
          return 26;
        }
      }

      else
      {
        if (a2 < 0x10 || (*a1 == 0x2000000000 ? (v22 = *(a1 + 1) == 0xFFFF0000FFFFLL) : (v22 = 0), !v22))
        {
          if (a1[1])
          {
            if (*a1 == 1836278016)
            {
              return 31;
            }

            return 0;
          }

          return 25;
        }

        return 28;
      }
  }
}

_BYTE *sub_298CF0A00(_BYTE *__s1, uint64_t __n, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44[0] = __s1;
  v44[1] = __n;
  LOBYTE(v45) = 0;
  v47 = 0;
  if (__n <= 3)
  {
    if (__n == 2)
    {
      if (*__s1 != 13686)
      {
        if (*__s1 != 14198)
        {
          goto LABEL_42;
        }

        v9 = "v7-a";
        goto LABEL_40;
      }

      v9 = "v5t";
      v14 = 3;
LABEL_41:
      v45 = v9;
      v46 = v14;
      v47 = 1;
      goto LABEL_42;
    }

    if (__n != 3)
    {
      goto LABEL_42;
    }

    if (*__s1 == 13686 && __s1[2] == 101)
    {
      v9 = "v5te";
      goto LABEL_40;
    }

    if (*__s1 == 13942 && __s1[2] == 106)
    {
      v9 = "v6";
      v14 = 2;
      goto LABEL_41;
    }

    if (*__s1 != 13942 || __s1[2] != 109)
    {
      if (*__s1 != 13942 || __s1[2] != 122)
      {
        goto LABEL_42;
      }

      goto LABEL_10;
    }

    goto LABEL_39;
  }

  if (__n == 4)
  {
    if (*__s1 == 1818769014)
    {
      v9 = "v6k";
      v14 = 3;
      goto LABEL_41;
    }

    if (memcmp(__s1, "v6sm", 4uLL))
    {
      if (*__s1 != 1803171446)
      {
        goto LABEL_42;
      }

LABEL_10:
      v9 = "v6kz";
LABEL_40:
      v14 = 4;
      goto LABEL_41;
    }

LABEL_39:
    v9 = "v6-m";
    goto LABEL_40;
  }

  if (__n == 5 && *__s1 == 762525302 && __s1[4] == 109)
  {
    goto LABEL_39;
  }

LABEL_42:
  v16 = sub_298CF0F68(v44, "v7a", 3, "v7hl", 4, "v7l", 3, a8, "v7-a", 4);
  v17 = sub_298CF0EE8(v16, "v7r", 3, "v7-r", 4);
  v18 = sub_298CF0EE8(v17, "v7m", 3, "v7-m", 4);
  v19 = sub_298CF0EE8(v18, "v7em", 4, "v7e-m", 5);
  v21 = sub_298CF0FE8(v19, "v8", 2, "v8a", 3, "v8l", 3, v20, "aarch64", 7, "arm64", 5, "v8-a", 4);
  v22 = sub_298CF0EE8(v21, "v8.1a", 5, "v8.1-a", 6);
  v23 = sub_298CF0EE8(v22, "v8.2a", 5, "v8.2-a", 6);
  v24 = sub_298CF0EE8(v23, "v8.3a", 5, "v8.3-a", 6);
  v25 = sub_298CF0EE8(v24, "v8.4a", 5, "v8.4-a", 6);
  v26 = sub_298CF0EE8(v25, "v8.5a", 5, "v8.5-a", 6);
  v27 = sub_298CF0EE8(v26, "v8.6a", 5, "v8.6-a", 6);
  v28 = sub_298CF0EE8(v27, "v8.7a", 5, "v8.7-a", 6);
  v29 = sub_298CF0EE8(v28, "v8.8a", 5, "v8.8-a", 6);
  v30 = sub_298CF0EE8(v29, "v8.9a", 5, "v8.9-a", 6);
  v31 = sub_298CF0EE8(v30, "v8r", 3, "v8-r", 4);
  v32 = sub_298CF0EE8(v31, "v9", 2, "v9-a", 4);
  v33 = sub_298CF0EE8(v32, "v9a", 3, "v9-a", 4);
  v34 = sub_298CF0EE8(v33, "v9.1a", 5, "v9.1-a", 6);
  v35 = sub_298CF0EE8(v34, "v9.2a", 5, "v9.2-a", 6);
  v36 = sub_298CF0EE8(v35, "v9.3a", 5, "v9.3-a", 6);
  v37 = sub_298CF0EE8(v36, "v9.4a", 5, "v9.4-a", 6);
  v38 = sub_298CF0EE8(v37, "v9.5a", 5, "v9.5-a", 6);
  v39 = sub_298CF0EE8(v38, "v8m.base", 8, "v8-m.base", 9);
  v40 = sub_298CF0EE8(v39, "v8m.main", 8, "v8-m.main", 9);
  v41 = sub_298CF0EE8(v40, "v8.1m.main", 10, "v8.1-m.main", 11);
  v42 = *(v41 + 24);
  if (*(v41 + 32))
  {
    return *(v41 + 16);
  }

  else
  {
    return __s1;
  }
}

uint64_t sub_298CF0EE8(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(result + 32) & 1) == 0)
  {
    v6 = *(result + 8);
    if (v6 == a3)
    {
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = result;
      v8 = a5;
      v9 = a4;
      v10 = memcmp(*result, a2, v6);
      a4 = v9;
      a5 = v8;
      v11 = v10;
      result = v7;
      if (!v11)
      {
LABEL_6:
        *(result + 16) = a4;
        *(result + 24) = a5;
        *(result + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_298CF0F68(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_298CF0EE8(a1, a2, a3, a9, a10);
  v15 = sub_298CF0EE8(v14, a4, a5, a9, a10);

  return sub_298CF0EE8(v15, a6, a7, a9, a10);
}

uint64_t sub_298CF0FE8(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = sub_298CF0EE8(a1, a2, a3, a13, a14);
  v19 = sub_298CF0EE8(v18, a4, a5, a13, a14);

  return sub_298CF0F68(v19, a6, a7, a9, a10, a11, a12, v20, a13, a14);
}

const char *sub_298CF108C(const char *result, unint64_t a2)
{
  v25 = result;
  v26 = a2;
  if (a2 >= 8)
  {
    if (*result == 0x32335F34366D7261)
    {
      v4 = 8;
      goto LABEL_13;
    }

LABEL_3:
    v2 = *result == 913142369 && *(result + 2) == 25908;
    if (v2)
    {
      v4 = 6;
    }

    else if (*result == 913142369 && result[4] == 52)
    {
      v4 = 5;
    }

    else
    {
      if (a2 < 0xA)
      {
        goto LABEL_64;
      }

      if (*result != 0x5F34366863726161 || *(result + 4) != 12851)
      {
        goto LABEL_64;
      }

      v4 = 10;
    }

LABEL_13:
    v5 = a2;
    goto LABEL_14;
  }

  if (a2 >= 6)
  {
    goto LABEL_3;
  }

  if (a2 != 5)
  {
    if (a2 < 3)
    {
      v4 = -1;
      v5 = a2;
      goto LABEL_24;
    }

    if (*result != 29281 || result[2] != 109)
    {
      v4 = -1;
      v8 = result;
      v5 = a2;
      goto LABEL_26;
    }

    v4 = 3;
    goto LABEL_13;
  }

  if (*result == 913142369 && result[4] == 52)
  {
    v5 = 5;
    v4 = 5;
    goto LABEL_14;
  }

LABEL_64:
  v24 = result;
  if (*result == 29281 && result[2] == 109)
  {
    v4 = 3;
  }

  else
  {
    if (*result != 1836410996 || result[4] != 98)
    {
      if (a2 < 7 || (*result == 1668440417 ? (v18 = *(result + 3) == 875980899) : (v18 = 0), !v18))
      {
        v4 = -1;
        v8 = result;
        v5 = a2;
LABEL_26:
        if (*(v8 + v5 - 2) == 25189)
        {
          v5 -= 2;
          v25 = v8;
        }

        goto LABEL_28;
      }

      if (sub_298B96A54(&v25, "eb", 2uLL, 0) != -1)
      {
        return "";
      }

      v5 = v26;
      v4 = 7;
      if (v26 >= 7)
      {
        v19 = 7;
      }

      else
      {
        v19 = v26;
      }

      if (v26 - v19 >= 3)
      {
        v20 = bswap32(*(v25 + v19) | (*(v25 + v19 + 2) << 16));
        v21 = v20 >= 0x5F626500;
        v22 = v20 > 0x5F626500;
        v23 = !v21;
        v2 = v22 == v23;
        v4 = 7;
        if (v2)
        {
          v4 = 10;
        }
      }

      goto LABEL_75;
    }

    v4 = 5;
  }

  v5 = a2;
LABEL_75:
  result = v24;
LABEL_14:
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v5 - v6 >= 2)
  {
    v7 = v25;
    if (*(v25 + v6) == 25189)
    {
      v4 += 2;
      goto LABEL_33;
    }
  }

LABEL_24:
  if (v5 >= 2)
  {
    v8 = v25;
    goto LABEL_26;
  }

LABEL_28:
  if (v4 == -1)
  {
    if (!v5)
    {
      return result;
    }

    return v25;
  }

  v7 = v25;
LABEL_33:
  if (v5 >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = (v7 + v9);
  v11 = v5 - v9;
  v25 = v7 + v9;
  v26 = v11;
  if (v11)
  {
    if (v11 == 1 || *v10 == 118 && (v12 = v10[1], (v12 & 0x8000000000000000) == 0) && (*(MEMORY[0x29EDCA600] + 4 * v12 + 60) & 0x400) != 0)
    {
      if (sub_298B96A54(&v25, "eb", 2uLL, 0) == -1)
      {
        return v25;
      }
    }

    return "";
  }

  return result;
}

uint64_t sub_298CF13F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 5)
  {
    if (a2 < 3)
    {
      return 0;
    }

    if (*a1 != 29281 || *(a1 + 2) != 109)
    {
      return 0;
    }

LABEL_45:
    if (bswap32(*(a1 + a2 - 2)) >> 16 == 25954)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  if (*a1 == 1701671521 && *(a1 + 4) == 98)
  {
    return 2;
  }

  if (a2 >= 7)
  {
    if (*a1 == 1836410996 && *(a1 + 3) == 1650811501)
    {
      return 2;
    }

    if (a2 >= 0xA)
    {
      if (*a1 != 0x5F34366863726161 || *(a1 + 8) != 25954)
      {
        v5 = 0;
        goto LABEL_17;
      }

      return 2;
    }
  }

  v5 = 1;
LABEL_17:
  if (*a1 == 29281 && *(a1 + 2) == 109)
  {
    goto LABEL_45;
  }

  if (*a1 == 1836410996 && *(a1 + 4) == 98)
  {
    goto LABEL_45;
  }

  if (a2 >= 7)
  {
    v8 = *a1 == 1668440417 && *(a1 + 3) == 875980899;
    v9 = v8;
    if (v8)
    {
      v5 = 1;
    }

    if (v5)
    {
      return v9;
    }

    goto LABEL_50;
  }

  if (v5)
  {
    return 0;
  }

LABEL_50:
  v12 = 0x616172636836345FLL;
  v13 = bswap64(*a1);
  if (v13 == 0x616172636836345FLL)
  {
    v13 = bswap32(*(a1 + 8)) >> 16;
    v12 = 13106;
    if (v13 == 13106)
    {
      return 1;
    }
  }

  if (v13 < v12)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return v14 == 0;
}

uint64_t sub_298CF15B0(const char *a1, unint64_t a2)
{
  v2 = sub_298CF108C(a1, a2);
  v4 = sub_298CF108C(v2, v3);
  v12 = sub_298CF0A00(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = 0;
    v17 = -v13;
    v18 = &off_29EEFC600;
    do
    {
      v19 = v18[1];
      if (v19 >= v15 && !memcmp(&(*v18)[v19 + v17], v14, v15))
      {
        v20 = -v16;
        return dword_298EA5B88[*(&off_29EEFC600 + v20 + 64)];
      }

      v16 -= 72;
      v18 += 9;
    }

    while (v16 != -2952);
    return 0;
  }

  else
  {
    v20 = 0;
    return dword_298EA5B88[*(&off_29EEFC600 + v20 + 64)];
  }
}

uint64_t sub_298CF1680(const char *a1, unint64_t a2)
{
  v2 = sub_298CF108C(a1, a2);
  v4 = sub_298CF108C(v2, v3);
  v12 = sub_298CF0A00(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = 0;
    v17 = -v13;
    v18 = &off_29EEFC600;
    do
    {
      v19 = v18[1];
      if (v19 >= v15 && !memcmp(&(*v18)[v19 + v17], v14, v15))
      {
        v20 = -v16;
        return dword_298EA5C2C[*(&off_29EEFC600 + v20 + 64)];
      }

      v16 -= 72;
      v18 += 9;
    }

    while (v16 != -2952);
    return 0;
  }

  else
  {
    v20 = 0;
    return dword_298EA5C2C[*(&off_29EEFC600 + v20 + 64)];
  }
}

void sub_298CF1750(void *a1, uint64_t a2, uint64_t a3)
{
  v13[6] = *MEMORY[0x29EDCA608];
  v10[0] = a2;
  v10[1] = a3;
  v11 = v13;
  v12 = 0x300000000;
  sub_298B9702C(v10, &v11, 44, -1, 0);
  sub_298CF1850(a1, v12);
  v4 = v11;
  if (v12)
  {
    v6 = 16 * v12;
    do
    {
      v9 = *v4;
      sub_298B30724(__p, &v9);
      sub_298CF19C4(a1, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
      v6 -= 16;
    }

    while (v6);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void *sub_298CF1850(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      operator new();
    }

    sub_298ADDDA0();
  }

  return result;
}

void *sub_298CF192C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_298CF1750(a1, a2, a3);
  return a1;
}

uint64_t sub_298CF195C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_298CF19C4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_298ADDDA0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

char *sub_298CF1B2C(int a1)
{
  v1 = a1 - 2;
  v2 = qword_298EA5EE0[v1];
  return off_29EEFD378[v1];
}

uint64_t sub_298CF1B50(uint64_t a1, uint64_t a2)
{
  result = sub_298CF25AC(a1, a2);
  if (a2 == 7)
  {
    if (*a1 != 1668440417 || *(a1 + 3) != 875980899)
    {
      goto LABEL_6;
    }

    return 3;
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      if (*a1 == 0x5F34366863726161 && *(a1 + 8) == 25954)
      {
        return 4;
      }

      if (*a1 != 0x5F34366863726161 || *(a1 + 8) != 12851)
      {
        goto LABEL_6;
      }

      return 5;
    }

LABEL_197:
    if (a2 < 3)
    {
      if (a2 != 2 || *a1 != 25974)
      {
        return 0;
      }

      return 61;
    }

    goto LABEL_6;
  }

  if (a2 == 3)
  {
    if (*a1 == 29281 && *(a1 + 2) == 99)
    {
      return 6;
    }

    if (*a1 == 29281 && *(a1 + 2) == 109)
    {
      return 1;
    }

    if (*a1 == 30305 && *(a1 + 2) == 114)
    {
      return 7;
    }

    goto LABEL_6;
  }

  if (a2 != 5)
  {
    if (a2 == 8)
    {
      if (*a1 != 0x32335F34366D7261)
      {
        goto LABEL_6;
      }

      return 5;
    }

    goto LABEL_197;
  }

  if (*a1 == 913142369 && *(a1 + 4) == 52)
  {
    return 3;
  }

  if (*a1 == 1701671521 && *(a1 + 4) == 98)
  {
    return 2;
  }

LABEL_6:
  if (*a1 == 28770 && *(a1 + 2) == 102)
  {
    return result;
  }

  if (a2 != 4)
  {
    if (a2 > 6)
    {
      if (a2 > 10)
      {
        if (a2 == 11)
        {
          if (*a1 == 0x637261676E6F6F6CLL && *(a1 + 3) == 0x323368637261676ELL)
          {
            return 13;
          }

          else
          {
            if (*a1 != 0x637261676E6F6F6CLL || *(a1 + 3) != 0x343668637261676ELL)
            {
              return 0;
            }

            return 14;
          }
        }

        else
        {
          if (a2 != 14)
          {
            return 0;
          }

          if (*a1 == 0x63737265646E6572 && *(a1 + 6) == 0x3233747069726373)
          {
            return 59;
          }

          else
          {
            if (*a1 != 0x63737265646E6572 || *(a1 + 6) != 0x3436747069726373)
            {
              return 0;
            }

            return 60;
          }
        }
      }

      if (a2 != 7)
      {
        if (a2 != 8 || *a1 != 0x6C6534367370696DLL)
        {
          return 0;
        }

        return 19;
      }

      if (*a1 != 862154864 || *(a1 + 3) != 1701589555)
      {
        if (*a1 == 912486512 && *(a1 + 3) == 1701590070)
        {
          return 24;
        }

        if (*a1 == 1668508018 && *(a1 + 3) == 842233443)
        {
          return 27;
        }

        if (*a1 == 1668508018 && *(a1 + 3) == 875984483)
        {
          return 28;
        }

        if (*a1 == 1635280232 && *(a1 + 3) == 1852794721)
        {
          return 12;
        }

        if (*a1 == 1918988403 && *(a1 + 3) == 1818583922)
        {
          return 31;
        }

        if (*a1 == 1918988403 && *(a1 + 3) == 964060018)
        {
          return 30;
        }

        if (*a1 != 1953724787 || *(a1 + 3) != 2053989748)
        {
          if (*a1 == 1836410996 && *(a1 + 3) == 1650811501)
          {
            return 36;
          }

          if (*a1 == 1953527406 && *(a1 + 3) == 875985012)
          {
            return 42;
          }

          if (*a1 == 1768189281 && *(a1 + 3) == 875981929)
          {
            return 46;
          }

          if (*a1 == 1767994216 && *(a1 + 3) == 875981929)
          {
            return 48;
          }

          if (*a1 == 1919512691 && *(a1 + 3) == 842233458)
          {
            return 52;
          }

          if (*a1 == 1919512691 && *(a1 + 3) == 875984498)
          {
            return 53;
          }

          if (*a1 != 1768710507 || *(a1 + 3) != 1633840489)
          {
            return 0;
          }

          return 54;
        }

        return 32;
      }
    }

    else
    {
      if (a2 == 6)
      {
        if (*a1 == 1936746861 && *(a1 + 4) == 27749)
        {
          return 17;
        }

        if (*a1 == 1936746861 && *(a1 + 4) == 13366)
        {
          return 18;
        }

        if (*a1 == 879784813 && *(a1 + 4) == 12339)
        {
          return 20;
        }

        if (*a1 == 1734634849 && *(a1 + 4) == 28259)
        {
          return 26;
        }

        if (*a1 == 758528120 && *(a1 + 4) == 13366)
        {
          return 38;
        }

        if (*a1 == 1919512691 && *(a1 + 4) == 13366)
        {
          return 50;
        }

        if (*a1 == 1836278135 && *(a1 + 4) == 12851)
        {
          return 57;
        }

        if (*a1 == 1836278135 && *(a1 + 4) == 13366)
        {
          return 58;
        }

        if (*a1 ^ 0x6E657478 | *(a1 + 4) ^ 0x6173)
        {
          return 0;
        }

        return 40;
      }

      if (a2 == 3)
      {
        if (*a1 != 28784 || *(a1 + 2) != 99)
        {
          if (*a1 == 25460 && *(a1 + 2) == 101)
          {
            return 33;
          }

          if (*a1 != 14456 || *(a1 + 2) != 54)
          {
            return 0;
          }

          return 37;
        }

        return 21;
      }

      if (a2 != 5)
      {
        return 0;
      }

      if (*a1 == 912486512 && *(a1 + 4) == 52)
      {
        return 23;
      }

      if (*a1 == 862154864 && *(a1 + 4) == 50)
      {
        return 21;
      }

      if (*a1 != 1818456176 || *(a1 + 4) != 101)
      {
        if (*a1 == 1918988403 && *(a1 + 4) == 99)
        {
          return 29;
        }

        if (*a1 != 809055091 || *(a1 + 4) != 120)
        {
          if (*a1 == 1818583924 && *(a1 + 4) == 101)
          {
            return 34;
          }

          if (*a1 == 1836410996 && *(a1 + 4) == 98)
          {
            return 35;
          }

          if (*a1 == 1919902584 && *(a1 + 4) == 101)
          {
            return 39;
          }

          if (*a1 == 1953527406 && *(a1 + 4) == 120)
          {
            return 41;
          }

          if (*a1 == 1768189281 && *(a1 + 4) == 108)
          {
            return 45;
          }

          if (*a1 == 1767994216 && *(a1 + 4) == 108)
          {
            return 47;
          }

          if (*a1 == 1919512691 && *(a1 + 4) == 118)
          {
            return 51;
          }

          if (*a1 == 1634623852 && *(a1 + 4) == 105)
          {
            return 56;
          }

          if (*a1 != 1986095219 || *(a1 + 4) != 101)
          {
            return 0;
          }

          return 55;
        }

        return 32;
      }
    }

    return 22;
  }

  switch(*a1)
  {
    case 0x6B38366D:
      return 15;
    case 0x7370696D:
      return 16;
    case 0x30303672:
      return 25;
    case 0x36383369:
      return 37;
    case 0x3233656C:
      return 43;
    case 0x3436656C:
      return 44;
    case 0x72697073:
      return 49;
    case 0x796B7363:
      return 10;
  }

  if (*a1 != 1818851428)
  {
    return 0;
  }

  return 11;
}

uint64_t sub_298CF25AC(unsigned int *a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v2 = *a1 == 28770 && *(a1 + 2) == 102;
    goto LABEL_5;
  }

  if (a2 != 6)
  {
    if (a2 != 5)
    {
      return 0;
    }

    if (*a1 != 1701212258 || *(a1 + 4) != 98)
    {
      v7 = bswap64(*a1 | (*(a1 + 4) << 32));
      v8 = v7 >= 0x627066656C000000;
      v9 = v7 > 0x627066656C000000;
      v10 = !v8;
      v2 = v9 == v10;
      goto LABEL_5;
    }

    return 9;
  }

  if (*a1 == 1600548962 && *(a1 + 2) == 25954)
  {
    return 9;
  }

  v2 = *a1 == 1600548962 && *(a1 + 2) == 25964;
LABEL_5:
  v3 = v2;
  return (8 * v3);
}

uint64_t sub_298CF2680(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    v6 = *(a1 + 8);
    if (v6 == a3 && (!v6 || !memcmp(*a1, a2, v6)))
    {
      *(a1 + 16) = a4;
      *(a1 + 20) = 1;
    }
  }

  return a1;
}

uint64_t *sub_298CF26DC(uint64_t *a1, uint64_t a2)
{
  v58[8] = *MEMORY[0x29EDCA608];
  sub_298B996A4(a2, a1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v3 = *(a1 + 23);
  v4 = *a1;
  if (v3 >= 0)
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    v3 = a1[1];
  }

  v55[1] = v3;
  v56 = v58;
  v57 = 0x400000000;
  v55[0] = v4;
  sub_298B9702C(v55, &v56, 45, 3, 1);
  if (!v57)
  {
    goto LABEL_117;
  }

  *(a1 + 6) = sub_298CF2E4C(*v56, *(v56 + 1));
  v5 = *v56;
  v6 = *(v56 + 1);
  if (v6 >= 4 && *v5 == 1936746861 && (*(v5 + v6 - 4) == 1818572402 || *(v5 + v6 - 2) == 13938))
  {
    v28 = 39;
    goto LABEL_27;
  }

  switch(v6)
  {
    case 0xAuLL:
      if (*v5 == 0x7363707265776F70 && *(v5 + 8) == 25968)
      {
        v28 = 40;
        goto LABEL_27;
      }

      break;
    case 6uLL:
      if (*v5 == 913142369 && *(v5 + 4) == 25908)
      {
        v28 = 34;
        goto LABEL_27;
      }

      break;
    case 7uLL:
      if (*v5 == 913142369 && *(v5 + 3) == 1667576886)
      {
        v28 = 35;
        goto LABEL_27;
      }

      break;
    default:
      if (v6 < 5)
      {
        goto LABEL_19;
      }

      break;
  }

  if (*v5 == 1919512691 && *(v5 + 4) == 118)
  {
    v42 = v5 + v6;
    if (*(v5 + v6 - 4) == 808333686)
    {
      v28 = 41;
    }

    else
    {
      switch(*(v42 - 4))
      {
        case 0x312E3176:
          v28 = 42;
          break;
        case 0x322E3176:
          v28 = 43;
          break;
        case 0x332E3176:
          v28 = 44;
          break;
        case 0x342E3176:
          v28 = 45;
          break;
        case 0x352E3176:
          v28 = 46;
          break;
        case 0x362E3176:
          v28 = 47;
          break;
        default:
          v28 = 0;
          break;
      }
    }

    goto LABEL_27;
  }

LABEL_19:
  v9 = sub_298CF108C(*v56, *(v56 + 1));
  if (v10)
  {
    v11 = sub_298CF108C(v9, v10);
    v19 = sub_298CF0A00(v11, v12, v13, v14, v15, v16, v17, v18);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = 0;
      v24 = -v20;
      v25 = &off_29EEFC600;
      while (1)
      {
        v26 = v25[1];
        if (v26 >= v22 && !memcmp(&(*v25)[v26 + v24], v21, v22))
        {
          break;
        }

        v23 -= 72;
        v25 += 9;
        if (v23 == -2952)
        {
          goto LABEL_83;
        }
      }

      v27 = -v23;
    }

    else
    {
      v27 = 0;
    }

    v41 = *(&off_29EEFC600 + v27 + 64) - 2;
    if (v41 <= 0x26)
    {
      v28 = dword_298EA5F18[v41];
      goto LABEL_27;
    }

    goto LABEL_83;
  }

  if (v6 < 8)
  {
LABEL_83:
    v28 = 0;
    goto LABEL_27;
  }

  v44 = v5 + v6;
  if (*(v5 + v6 - 8) == 0x3361626D696C616BLL)
  {
    v28 = 36;
  }

  else if (*(v44 - 8) == 0x3461626D696C616BLL)
  {
    v28 = 37;
  }

  else if (*(v44 - 8) == 0x3561626D696C616BLL)
  {
    v28 = 38;
  }

  else
  {
    v28 = 0;
  }

LABEL_27:
  *(a1 + 7) = v28;
  v29 = v57;
  v30 = v56;
  if (v57 < 2)
  {
    v34 = *v56;
    v35 = *(v56 + 1);
    if (v35 >= 7)
    {
      if (*v34 == 1936746861 && *(v34 + 3) == 842231411)
      {
        v40 = 2;
        goto LABEL_116;
      }

      if (*v34 != 1936746861 || *(v34 + 4) != 13366)
      {
        if (v35 < 9)
        {
LABEL_49:
          if (v35 != 8 || *v34 != 0x6C6536727370696DLL)
          {
            goto LABEL_51;
          }

LABEL_70:
          v40 = 1;
          goto LABEL_116;
        }

        if (*v34 != 0x366173697370696DLL || *(v34 + 8) != 52)
        {
          if (*v34 == 0x336173697370696DLL && *(v34 + 8) == 50)
          {
            goto LABEL_70;
          }

          goto LABEL_49;
        }
      }

LABEL_115:
      v40 = 3;
      goto LABEL_116;
    }

    if (v35 == 4)
    {
      if (*v34 == 1936746861)
      {
        goto LABEL_70;
      }
    }

    else if (v35 == 6)
    {
      if (*v34 != 1936746861 || *(v34 + 4) != 13366)
      {
        if (*v34 != 1936746861 || *(v34 + 4) != 27749)
        {
          v48 = *v34;
          v49 = *(v34 + 4);
          if (v48 != 1936746861 || v49 != 13938)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_70;
      }

      goto LABEL_115;
    }

LABEL_51:
    v40 = 0;
LABEL_116:
    *(a1 + 10) = v40;
    goto LABEL_117;
  }

  *(a1 + 8) = sub_298CF392C(*(v56 + 2), *(v56 + 3));
  if (v29 != 2)
  {
    *(a1 + 9) = sub_298CF3B28(v30[4], v30[5]);
    if (v29 >= 4)
    {
      v31 = v30[6];
      v32 = v30[7];
      *(a1 + 10) = sub_298CF42E0(v31, v32);
      v33 = sub_298CF4B18(v31, v32);
      *(a1 + 11) = v33;
      goto LABEL_118;
    }
  }

LABEL_117:
  v33 = *(a1 + 11);
LABEL_118:
  if (!v33)
  {
    v51 = *(a1 + 9);
    v52 = 3;
    switch(*(a1 + 6))
    {
      case 2:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 0xA:
      case 0xC:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x16:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1D:
      case 0x1E:
      case 0x1F:
      case 0x21:
      case 0x22:
      case 0x24:
      case 0x27:
      case 0x28:
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2D:
      case 0x2E:
      case 0x2F:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x3B:
      case 0x3C:
      case 0x3D:
        break;
      case 0xB:
        v52 = 2;
        break;
      case 0x15:
      case 0x17:
        if (v51 > 0x1F)
        {
          goto LABEL_139;
        }

        if (((1 << v51) & 0xFC000222) != 0)
        {
          goto LABEL_123;
        }

        if (v51 == 19)
        {
          v52 = 8;
        }

        else
        {
LABEL_139:
          v52 = 3;
        }

        break;
      case 0x20:
        if (v51 == 15)
        {
          v52 = 4;
        }

        else
        {
          v52 = 3;
        }

        break;
      case 0x33:
      case 0x34:
      case 0x35:
        v52 = 6;
        break;
      case 0x39:
      case 0x3A:
        v52 = 7;
        break;
      default:
        if (v51 - 13 < 2)
        {
          v52 = 1;
        }

        else
        {
          v52 = 3;
          if (v51 <= 0x1F && ((1 << v51) & 0xFC000222) != 0)
          {
LABEL_123:
            v52 = 5;
          }
        }

        break;
    }

    *(a1 + 11) = v52;
  }

  if (v56 != v58)
  {
    free(v56);
  }

  v53 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298CF2E4C(uint64_t a1, unint64_t a2)
{
  v19 = a1;
  v20 = a2;
  LOBYTE(v21) = 0;
  v22 = 0;
  if (a2 == 4 && (*a1 == 909652841 || *a1 == 909653097 || *a1 == 909653353 || *a1 == 909653609))
  {
    v21 = 37;
    v22 = 1;
  }

  sub_298CF5C94(&v19, "i786", 4, "i886", 4, "i986", 4, 37);
  sub_298CF5C94(&v19, "amd64", 5, "x86_64", 6, "x86_64h", 7, 38);
  sub_298CF5BAC(&v19, "powerpc", 7, "powerpcspe", 10, "ppc", 3, v4, "ppc32", 5, 21);
  sub_298CF5C94(&v19, "powerpcle", 9, "ppcle", 5, "ppc32le", 7, 22);
  sub_298CF5C94(&v19, "powerpc64", 9, "ppu", 3, "ppc64", 5, 23);
  if ((v22 & 1) == 0)
  {
    if (v20 == 11)
    {
      if (*v19 != 0x3663707265776F70 || *(v19 + 3) != 0x656C343663707265)
      {
        goto LABEL_15;
      }

LABEL_14:
      v21 = 24;
      v22 = 1;
      goto LABEL_15;
    }

    if (v20 == 7 && *v19 == 912486512 && *(v19 + 3) == 1701590070)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  sub_298CF2680(&v19, "xscale", 6, 1);
  sub_298CF2680(&v19, "xscaleeb", 8, 2);
  sub_298CF2680(&v19, "aarch64", 7, 3);
  sub_298CF2680(&v19, "aarch64_be", 10, 4);
  sub_298CF2680(&v19, "aarch64_32", 10, 5);
  sub_298CF2680(&v19, "arc", 3, 6);
  sub_298CF2680(&v19, "arm64", 5, 3);
  sub_298CF2680(&v19, "arm64_32", 8, 5);
  sub_298CF2680(&v19, "arm64e", 6, 3);
  sub_298CF2680(&v19, "arm64ec", 7, 3);
  sub_298CF2680(&v19, "arm", 3, 1);
  sub_298CF2680(&v19, "armeb", 5, 2);
  sub_298CF2680(&v19, "thumb", 5, 35);
  sub_298CF2680(&v19, "thumbeb", 7, 36);
  sub_298CF2680(&v19, "avr", 3, 7);
  sub_298CF2680(&v19, "m68k", 4, 15);
  sub_298CF2680(&v19, "msp430", 6, 20);
  sub_298CF2680(&v19, "mips", 4, 16);
  sub_298CF5BAC(&v19, "mipseb", 6, "mipsallegrex", 12, "mipsisa32r6", 11, v6, "mipsr6", 6, 16);
  sub_298CF5BAC(&v19, "mipsel", 6, "mipsallegrexel", 14, "mipsisa32r6el", 13, v7, "mipsr6el", 8, 17);
  sub_298CF2680(&v19, "mips64", 6, 18);
  sub_298CF2680(&v19, "mips64eb", 8, 18);
  sub_298CF5BAC(&v19, "mipsn32", 7, "mipsisa64r6", 11, "mips64r6", 8, v8, "mipsn32r6", 9, 18);
  sub_298CF2680(&v19, "mips64el", 8, 19);
  sub_298CF5BAC(&v19, "mipsn32el", 9, "mipsisa64r6el", 13, "mips64r6el", 10, v9, "mipsn32r6el", 11, 19);
  sub_298CF2680(&v19, "r600", 4, 25);
  sub_298CF2680(&v19, "amdgcn", 6, 26);
  sub_298CF2680(&v19, "riscv32", 7, 27);
  sub_298CF2680(&v19, "riscv64", 7, 28);
  sub_298CF2680(&v19, "hexagon", 7, 12);
  sub_298CF5D58(&v19, "s390x", 5, "systemz", 7, 32);
  sub_298CF2680(&v19, "sparc", 5, 29);
  sub_298CF2680(&v19, "sparcel", 7, 31);
  sub_298CF5D58(&v19, "sparcv9", 7, "sparc64", 7, 30);
  sub_298CF2680(&v19, "tce", 3, 33);
  sub_298CF2680(&v19, "tcele", 5, 34);
  sub_298CF2680(&v19, "xcore", 5, 39);
  sub_298CF2680(&v19, "nvptx", 5, 41);
  sub_298CF2680(&v19, "nvptx64", 7, 42);
  sub_298CF2680(&v19, "le32", 4, 43);
  sub_298CF2680(&v19, "le64", 4, 44);
  sub_298CF2680(&v19, "amdil", 5, 45);
  sub_298CF2680(&v19, "amdil64", 7, 46);
  sub_298CF2680(&v19, "hsail", 5, 47);
  sub_298CF2680(&v19, "hsail64", 7, 48);
  sub_298CF2680(&v19, "spir", 4, 49);
  sub_298CF2680(&v19, "spir64", 6, 50);
  sub_298CF5C94(&v19, "spirv", 5, "spirv1.5", 8, "spirv1.6", 8, 51);
  sub_298CF2680(&v19, "spirv32", 7, 52);
  sub_298CF2680(&v19, "spirv32v1.0", 11, 52);
  sub_298CF2680(&v19, "spirv32v1.1", 11, 52);
  sub_298CF5BAC(&v19, "spirv32v1.2", 11, "spirv32v1.3", 11, "spirv32v1.4", 11, v10, "spirv32v1.5", 11, 52);
  sub_298CF2680(&v19, "spirv64", 7, 53);
  sub_298CF2680(&v19, "spirv64v1.0", 11, 53);
  sub_298CF2680(&v19, "spirv64v1.1", 11, 53);
  sub_298CF5BAC(&v19, "spirv64v1.2", 11, "spirv64v1.3", 11, "spirv64v1.4", 11, v11, "spirv64v1.5", 11, 53);
  if ((v22 & 1) == 0 && v20 >= 7 && *v19 == 1768710507 && *(v19 + 3) == 1633840489)
  {
    v21 = 54;
    v22 = 1;
  }

  sub_298CF2680(&v19, "lanai", 5, 56);
  sub_298CF2680(&v19, "renderscript32", 14, 59);
  sub_298CF2680(&v19, "renderscript64", 14, 60);
  sub_298CF2680(&v19, "shave", 5, 55);
  sub_298CF2680(&v19, "ve", 2, 61);
  sub_298CF2680(&v19, "wasm32", 6, 57);
  sub_298CF2680(&v19, "wasm64", 6, 58);
  sub_298CF2680(&v19, "csky", 4, 10);
  sub_298CF2680(&v19, "loongarch32", 11, 13);
  sub_298CF2680(&v19, "loongarch64", 11, 14);
  sub_298CF2680(&v19, "dxil", 4, 11);
  sub_298CF2680(&v19, "xtensa", 6, 40);
  if ((v22 & 1) == 0 || (result = v21) == 0)
  {
    if (a2 < 3)
    {
      return 0;
    }

    if (*a1 == 29281 && *(a1 + 2) == 109)
    {
      return sub_298CF5DEC(a1, a2);
    }

    if (a2 >= 5 && (*a1 == 1836410996 ? (v15 = *(a1 + 4) == 98) : (v15 = 0), v15 || a2 >= 7 && (*a1 == 1668440417 ? (v16 = *(a1 + 3) == 875980899) : (v16 = 0), v16)))
    {
      return sub_298CF5DEC(a1, a2);
    }

    else
    {
      if (*a1 != 28770 || *(a1 + 2) != 102)
      {
        return 0;
      }

      return sub_298CF25AC(a1, a2);
    }
  }

  return result;
}

uint64_t sub_298CF392C(uint64_t a1, uint64_t a2)
{
  if (a2 != 5)
  {
    if (a2 <= 2)
    {
      if (a2 == 2)
      {
        if (*a1 == 25456)
        {
          return 2;
        }

        if (*a1 == 25967)
        {
          return 13;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 3:
        if (*a1 != 26995 || *(a1 + 2) != 101)
        {
          if (*a1 == 29542 && *(a1 + 2) == 108)
          {
            return 4;
          }

          if (*a1 == 25193 && *(a1 + 2) == 109)
          {
            return 5;
          }

          if (*a1 == 28009 && *(a1 + 2) == 103)
          {
            return 6;
          }

          if (*a1 == 29805 && *(a1 + 2) == 105)
          {
            return 7;
          }

          if (*a1 == 29539 && *(a1 + 2) == 114)
          {
            return 9;
          }

          if (*a1 != 28001 || *(a1 + 2) != 100)
          {
            return 0;
          }

          return 10;
        }

        break;
      case 4:
        if (*a1 != 1768252275)
        {
          if (*a1 == 1634952557)
          {
            return 11;
          }

          if (*a1 == 1702065523)
          {
            return 12;
          }

          return 0;
        }

        break;
      case 6:
        if (*a1 != 1684633198 || *(a1 + 4) != 24937)
        {
          return 0;
        }

        return 8;
      default:
        return 0;
    }

    return 3;
  }

  return *a1 == 1819308129 && *(a1 + 4) == 101;
}

uint64_t sub_298CF3B28(uint64_t a1, unint64_t a2)
{
  if (a2 < 6)
  {
    if (a2 < 3)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == 2003984740 && *(a1 + 4) == 28265)
    {
      return 1;
    }

    if (a2 < 9)
    {
      if (a2 == 6)
      {
        if (*a1 != 28521 || *(a1 + 2) != 115)
        {
          goto LABEL_25;
        }

        return 5;
      }
    }

    else if (*a1 == 0x6C666E6F67617264 && *(a1 + 8) == 121)
    {
      return 2;
    }

    if (*a1 == 1701147238 && *(a1 + 3) == 1685283429)
    {
      return 3;
    }

    if (*a1 == 1751348582 && *(a1 + 3) == 1634300776)
    {
      return 4;
    }
  }

  if (*a1 == 28521 && *(a1 + 2) == 115)
  {
    return 5;
  }

  if (a2 < 8)
  {
    if (a2 < 5)
    {
      goto LABEL_29;
    }
  }

  else if (*a1 == 0x647362656572666BLL)
  {
    return 6;
  }

LABEL_25:
  if (*a1 == 1970170220 && *(a1 + 4) == 120)
  {
    return 7;
  }

LABEL_29:
  if (*a1 == 30316 && *(a1 + 2) == 50)
  {
    return 8;
  }

  if (a2 < 5)
  {
    if (a2 != 4 || *a1 != 1768318325)
    {
      goto LABEL_62;
    }

    return 13;
  }

  if (*a1 == 1868783981 && *(a1 + 4) == 115)
  {
    return 9;
  }

  if (a2 != 5)
  {
    if (*a1 == 1651795310 && *(a1 + 4) == 25715)
    {
      return 10;
    }

    if (a2 >= 7)
    {
      if (*a1 == 1852141679 && *(a1 + 3) == 1685283438)
      {
        return 11;
      }

      if (*a1 == 1634496371 && *(a1 + 3) == 1936290401)
      {
        return 12;
      }
    }
  }

  if (*a1 == 1768318325)
  {
    return 13;
  }

  if (*a1 == 862873975 && *(a1 + 4) == 50)
  {
    return 14;
  }

  if (a2 >= 7 && *a1 == 1684957559 && *(a1 + 3) == 1937207140)
  {
    return 14;
  }

LABEL_62:
  if (*a1 == 28538 && *(a1 + 2) == 115)
  {
    return 15;
  }

  if (a2 < 5)
  {
    if (a2 != 4)
    {
      if (*a1 != 26977 || *(a1 + 2) != 120)
      {
        goto LABEL_87;
      }

      return 19;
    }
  }

  else
  {
    if (*a1 == 1802068328 && *(a1 + 4) == 117)
    {
      return 16;
    }

    if (*a1 == 1835365490 && *(a1 + 4) == 115)
    {
      return 17;
    }
  }

  if (*a1 == 1818452334)
  {
    return 18;
  }

  if (*a1 == 26977 && *(a1 + 2) == 120)
  {
    return 19;
  }

  if (*a1 == 1633973603)
  {
    return 20;
  }

  if (*a1 == 1818457710)
  {
    return 21;
  }

  if (a2 >= 6 && *a1 == 1751412065 && *(a1 + 4) == 24947)
  {
    return 22;
  }

LABEL_87:
  if (*a1 == 29552 && *(a1 + 2) == 52)
  {
    return 23;
  }

  if (*a1 == 29552 && *(a1 + 2) == 53)
  {
    return 24;
  }

  if (a2 < 8)
  {
    if (a2 < 4)
    {
      return 0;
    }
  }

  else if (*a1 == 0x75636D6169666C65)
  {
    return 25;
  }

  if (*a1 == 1936684660)
  {
    return 26;
  }

  if (a2 < 7)
  {
    if (a2 < 5)
    {
      if (*a1 != 1936683640)
      {
        goto LABEL_129;
      }

      return 31;
    }
  }

  else
  {
    if (*a1 == 1668571511 && *(a1 + 3) == 1936681059)
    {
      return 27;
    }

    if (a2 != 7)
    {
      if (*a1 == 0x736F656764697262)
      {
        return 28;
      }

      if (a2 >= 9 && *a1 == 0x696B726576697264 && *(a1 + 8) == 116)
      {
        return 29;
      }
    }
  }

  if (*a1 == 1869636979 && *(a1 + 4) == 115)
  {
    return 30;
  }

  if (*a1 == 1936683640)
  {
    return 31;
  }

  if (a2 < 8)
  {
    if (a2 < 6)
    {
      goto LABEL_129;
    }

    goto LABEL_117;
  }

  if (*a1 == 0x736F6E6F69736976)
  {
    return 31;
  }

LABEL_117:
  if (*a1 == 1634952557 && *(a1 + 4) == 25651)
  {
    return 32;
  }

  if (*a1 == 1885629793 && *(a1 + 4) == 27745)
  {
    return 33;
  }

  if (*a1 == 1836213608 && *(a1 + 4) == 29801)
  {
    return 34;
  }

LABEL_129:
  if (*a1 == 1685222760)
  {
    return 35;
  }

  if (*a1 == 1769169271)
  {
    return 36;
  }

  if (a2 < 0xA)
  {
    if (a2 >= 6)
    {
      goto LABEL_141;
    }

    return 0;
  }

  if (*a1 == 0x7470697263736D65 && *(a1 + 8) == 28261)
  {
    return 37;
  }

  if (a2 != 10)
  {
    if (*a1 == 0x6F6D726564616873 && *(a1 + 3) == 0x6C65646F6D726564)
    {
      return 38;
    }

LABEL_141:
    if (*a1 != 1702127980 || *(a1 + 4) != 29551)
    {
      if (a2 < 8)
      {
        goto LABEL_147;
      }

      goto LABEL_146;
    }

    return 39;
  }

  if (*a1 == 1702127980 && *(a1 + 4) == 29551)
  {
    return 39;
  }

LABEL_146:
  if (*a1 != 0x7974696E65726573)
  {
LABEL_147:
    if (*a1 == 1802270070 && *(a1 + 4) == 28257)
    {
      return 41;
    }

    return 0;
  }

  return 40;
}

uint64_t sub_298CF42E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    if (*a1 == 1768055141 && *(a1 + 4) == 26216)
    {
      return 13;
    }

LABEL_6:
    if (*a1 == 1768055141)
    {
      return 12;
    }

    if (a2 < 9)
    {
      if (a2 != 8)
      {
        if (a2 < 7)
        {
          if (a2 != 6)
          {
            if (a2 < 5)
            {
              goto LABEL_59;
            }

            if (*a1 != 1937075815 || *(a1 + 4) != 102)
            {
              goto LABEL_59;
            }

            return 8;
          }

LABEL_21:
          if (*a1 == 1718972007 && *(a1 + 4) == 12851)
          {
            return 6;
          }

          if (*a1 == 1718972007 && *(a1 + 4) == 13366)
          {
            return 7;
          }

          if (*a1 != 1937075815 || *(a1 + 4) != 102)
          {
            if (*a1 == 2020961895 && *(a1 + 4) == 12851)
            {
              return 9;
            }

            if (a2 >= 9 && *a1 == 0x33706C695F756E67 && *(a1 + 8) == 50)
            {
              return 10;
            }

            if (*a1 == 1701080931 && *(a1 + 4) == 13873)
            {
              return 11;
            }

            goto LABEL_59;
          }

          return 8;
        }

LABEL_17:
        if (*a1 == 1702194791 && *(a1 + 3) == 1768055141)
        {
          return 4;
        }

        goto LABEL_21;
      }

      if (*a1 != 0x3436696261756E67)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (*a1 == 0x336E696261756E67 && *(a1 + 8) == 50)
      {
        return 2;
      }

      if (*a1 != 0x3436696261756E67)
      {
        if (*a1 == 0x6869626165756E67 && *(a1 + 8) == 102)
        {
          return 5;
        }

        goto LABEL_17;
      }
    }

    return 3;
  }

  if (a2 >= 4)
  {
    goto LABEL_6;
  }

  if (a2 != 3)
  {
    return 0;
  }

LABEL_59:
  if (*a1 == 28263 && *(a1 + 2) == 117)
  {
    return 1;
  }

  if (a2 < 7)
  {
    if (a2 < 4)
    {
      return 0;
    }

    goto LABEL_78;
  }

  if (*a1 == 1919184481 && *(a1 + 3) == 1684631410)
  {
    return 14;
  }

  if (a2 < 0xA)
  {
    if (a2 == 7)
    {
      goto LABEL_74;
    }
  }

  else if (*a1 == 0x696261656C73756DLL && *(a1 + 8) == 26216)
  {
    return 17;
  }

  if (*a1 == 0x696261656C73756DLL)
  {
    return 16;
  }

LABEL_74:
  if (*a1 == 1819506029 && *(a1 + 3) == 842233964)
  {
    return 18;
  }

LABEL_78:
  if (*a1 == 1819506029)
  {
    return 15;
  }

  if (*a1 == 1668707181)
  {
    return 19;
  }

  if (a2 >= 7)
  {
    if (*a1 == 1851880553 && *(a1 + 3) == 1836411246)
    {
      return 20;
    }

    if (*a1 != 1852275043 || *(a1 + 4) != 29557)
    {
      if (*a1 == 1701998435 && *(a1 + 3) == 1919705957)
      {
        return 22;
      }

      if (a2 >= 9)
      {
        if (*a1 == 0x696B6C656E72656BLL && *(a1 + 8) == 116)
        {
          return 23;
        }

        if (*a1 == 0x6F74616C756D6973 && *(a1 + 8) == 114)
        {
          return 24;
        }
      }

      goto LABEL_102;
    }

    return 21;
  }

  if (a2 != 6)
  {
    if (a2 < 5)
    {
      goto LABEL_116;
    }

    if (*a1 != 1702390128 || *(a1 + 4) != 108)
    {
      goto LABEL_116;
    }

    return 26;
  }

  if (*a1 == 1852275043 && *(a1 + 4) == 29557)
  {
    return 21;
  }

LABEL_102:
  if (*a1 == 1633902957 && *(a1 + 4) == 26978)
  {
    return 25;
  }

  if (*a1 == 1702390128 && *(a1 + 4) == 108)
  {
    return 26;
  }

  if (*a1 == 1953654134 && *(a1 + 4) == 30821)
  {
    return 27;
  }

  if (a2 >= 8 && *a1 == 0x797274656D6F6567)
  {
    return 28;
  }

LABEL_116:
  if (*a1 == 1819047272)
  {
    return 29;
  }

  if (a2 < 6)
  {
    goto LABEL_149;
  }

  if (*a1 == 1634561892 && *(a1 + 4) == 28265)
  {
    return 30;
  }

  if (a2 == 6)
  {
    if (*a1 != 1752788577 || *(a1 + 4) != 29801)
    {
      if (*a1 != 1936943469)
      {
        if (*a1 != 1752393069)
        {
          goto LABEL_158;
        }

        return 39;
      }

      return 37;
    }

    return 35;
  }

  if (*a1 == 1886220131 && *(a1 + 3) == 1702131056)
  {
    return 31;
  }

  if (*a1 == 1919052140 && *(a1 + 3) == 2037539186)
  {
    return 32;
  }

  if (a2 < 0xD)
  {
    if (a2 != 12)
    {
      goto LABEL_140;
    }
  }

  else if (*a1 == 0x72656E6567796172 && *(a1 + 5) == 0x6E6F69746172656ELL)
  {
    return 33;
  }

  if (*a1 == 0x6365737265746E69 && *(a1 + 8) == 1852795252)
  {
    return 34;
  }

LABEL_140:
  if (*a1 == 1752788577 && *(a1 + 4) == 29801)
  {
    return 35;
  }

  if (a2 >= 0xA && *a1 == 0x68747365736F6C63 && *(a1 + 8) == 29801)
  {
    return 36;
  }

LABEL_149:
  if (*a1 == 1936943469)
  {
    return 37;
  }

  if (a2 >= 8 && *a1 == 0x656C62616C6C6163)
  {
    return 38;
  }

  if (*a1 == 1752393069)
  {
    return 39;
  }

  if (a2 >= 0xD)
  {
    if (*a1 == 0x636966696C706D61 && *(a1 + 5) == 0x6E6F697461636966)
    {
      return 40;
    }

LABEL_158:
    if (*a1 == 1852141679 && *(a1 + 4) == 27747)
    {
      return 41;
    }

    goto LABEL_162;
  }

  if (a2 >= 6)
  {
    goto LABEL_158;
  }

LABEL_162:
  if (*a1 != 1936681071)
  {
    return 0;
  }

  return 42;
}

uint64_t sub_298CF4B18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
    if (*(a1 + a2 - 5) == 1718575992 && *(a1 + a2 - 1) == 102)
    {
      return 8;
    }
  }

  else if (a2 != 4)
  {
    if (a2 < 3)
    {
      return 0;
    }

    if (*a1 != 27749 || *(a1 + 2) != 102)
    {
      return 0;
    }

    return 3;
  }

  v5 = a1 + a2;
  if (*(a1 + a2 - 4) == 1717989219)
  {
    return 1;
  }

  if (*(v5 - 3) == 27749 && *(v5 - 1) == 102)
  {
    return 3;
  }

  if (*(v5 - 4) == 1717989223)
  {
    return 4;
  }

  if (a2 == 4)
  {
    if (*a1 != 1836278135)
    {
      return 0;
    }

    return 7;
  }

  if (*(v5 - 5) == 1751343469 && *(v5 - 1) == 111)
  {
    return 5;
  }

  if (*(v5 - 4) == 1836278135)
  {
    return 7;
  }

  if (*(v5 - 5) ^ 0x72697073 | *(v5 - 1) ^ 0x76)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void sub_298CF4C74(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v93[8] = *MEMORY[0x29EDCA608];
  v90[0] = a1;
  v90[1] = a2;
  v91 = v93;
  v92 = 0x400000000;
  sub_298B9702C(v90, &v91, 45, -1, 1);
  v82 = a3;
  if (!v92)
  {
    v4 = 0;
    goto LABEL_22;
  }

  v4 = sub_298CF2E4C(*v91, *(v91 + 1)) != 0;
  v5 = v92;
  if (v92 < 2)
  {
LABEL_22:
    v15 = 0;
    v7 = 0;
LABEL_23:
    v10 = 0;
    v83 = 0;
    goto LABEL_24;
  }

  v6 = v91;
  v7 = sub_298CF392C(*(v91 + 2), *(v91 + 3));
  if (v5 == 2)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = sub_298CF3B28(v8, v9);
  if (v9 < 6)
  {
    v12 = 0;
    HIDWORD(v83) = 0;
    v14 = 0;
    if (v9 != 5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *v8 == 2003269987 && *(v8 + 4) == 28265;
    v12 = v11;
  }

  v14 = *v8 == 1735289197 && *(v8 + 4) == 119;
  HIDWORD(v83) = v12;
LABEL_18:
  LODWORD(v83) = v14;
  if (v5 < 4)
  {
    v15 = 0;
    goto LABEL_24;
  }

  v15 = sub_298CF42E0(v6[6], v6[7]);
  if (v5 == 4)
  {
LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

  v16 = sub_298CF4B18(v6[8], v6[9]);
LABEL_25:
  v17 = 0;
  v89[0] = v4;
  v81 = v7;
  v89[1] = v7 != 0;
  v89[2] = v10 != 0;
  v89[3] = v15 != 0;
  do
  {
    if ((v89[v17] & 1) == 0)
    {
      v18 = v92;
      if (v92)
      {
        v19 = 0;
        LODWORD(v20) = 0;
        while (1)
        {
          if (v20 <= 3 && (v89[v19] & 1) != 0)
          {
            goto LABEL_31;
          }

          v21 = v10;
          v22 = v16;
          v23 = (v91 + 16 * v19);
          v24 = *v23;
          v25 = v23[1];
          if (v17 > 1)
          {
            break;
          }

          v26 = *v23;
          v27 = v23[1];
          if (v17)
          {
            v35 = sub_298CF392C(v26, v27);
            if (v35)
            {
              v81 = v35;
              goto LABEL_153;
            }

            v81 = 0;
          }

          else
          {
            if (sub_298CF2E4C(v26, v27))
            {
              goto LABEL_153;
            }

            v18 = v92;
          }

          v16 = v22;
          v10 = v21;
LABEL_31:
          v19 = (v20 + 1);
          LODWORD(v20) = v19;
          if (v19 == v18)
          {
            goto LABEL_63;
          }
        }

        v28 = *v23;
        v29 = v23[1];
        if (v17 == 2)
        {
          v30 = sub_298CF3B28(v28, v29);
          if (v25 < 6)
          {
            v32 = 0;
            v83 = 0;
            v11 = v25 == 5;
            v16 = v22;
            if (v11)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v32 = *v24 == 2003269987 && *(v24 + 4) == 28265;
            v16 = v22;
LABEL_46:
            v34 = *v24 == 1735289197 && *(v24 + 4) == 119;
            v83 = __PAIR64__(v32, v34);
          }

          v10 = v30;
          if (v30 || (v83 & 0x100000000) != 0 || v83)
          {
            goto LABEL_155;
          }

          v10 = 0;
          v83 = 0;
          goto LABEL_31;
        }

        v36 = sub_298CF42E0(v28, v29);
        if (v36)
        {
          v15 = v36;
LABEL_153:
          v16 = v22;
          goto LABEL_154;
        }

        v37 = sub_298CF4B18(v24, v25);
        v16 = 0;
        if (!v37)
        {
          v15 = 0;
          v10 = v21;
          goto LABEL_31;
        }

        v15 = 0;
        v16 = v37;
LABEL_154:
        v10 = v21;
LABEL_155:
        if (v17 >= v20)
        {
          if (v17 > v20)
          {
            do
            {
              v46 = v92;
              if (v92 > v20)
              {
                v47 = 0;
                v48 = v20;
                v49 = "";
                while (1)
                {
                  v50 = v49;
                  v51 = v47;
                  v52 = v91 + 16 * v48;
                  v49 = *v52;
                  v47 = *(v52 + 1);
                  *v52 = v50;
                  *(v52 + 1) = v51;
                  if (!v47)
                  {
                    break;
                  }

                  if (v48 <= 3)
                  {
                    v53 = 3;
                  }

                  else
                  {
                    v53 = v48;
                  }

                  while (v53 != v48)
                  {
                    if ((v89[++v48] & 1) == 0)
                    {
                      goto LABEL_82;
                    }
                  }

                  v48 = v53 + 1;
LABEL_82:
                  if (v46 <= v48)
                  {
                    sub_298AE0EC0(&v91, v49, v47);
                    break;
                  }
                }
              }

              if ((v20 + 1) > 4)
              {
                v54 = (v20 + 1);
              }

              else
              {
                v54 = 4;
              }

              while (v54 - 1 != v20)
              {
                v20 = (v20 + 1);
                v55 = v20;
                if ((v89[v20] & 1) == 0)
                {
                  goto LABEL_98;
                }
              }

              v20 = v54;
              v55 = v54;
LABEL_98:
              v56 = v20 >= v17;
              LODWORD(v20) = v55;
            }

            while (!v56);
          }
        }

        else
        {
          v80 = (v91 + 16 * v19);
          v45 = *v80;
          v44 = v80[1];
          *v80 = "";
          v80[1] = 0;
          if (v44)
          {
            LODWORD(v40) = v17;
            do
            {
              v38 = v40;
              if (v40 > 3)
              {
                v39 = v40;
              }

              else
              {
                if (v89[v40] != 1)
                {
                  v40 = v40;
LABEL_78:
                  v39 = v40;
                  goto LABEL_75;
                }

                v39 = v40 + (3 - v40) + 1;
                v40 = v40 + 1;
                if (v38 != 3)
                {
                  if (v89[v40] != 1)
                  {
                    goto LABEL_78;
                  }

                  v40 = v38 + 2;
                  if (v38 != 2)
                  {
                    if (v89[v40] != 1)
                    {
                      goto LABEL_78;
                    }

                    v40 = v38 + 3;
                    if (v38 != 1)
                    {
                      if (v89[v40])
                      {
                        LODWORD(v40) = 4;
                        goto LABEL_75;
                      }

                      goto LABEL_78;
                    }
                  }
                }
              }

LABEL_75:
              v41 = (v91 + 16 * v39);
              v42 = *v41;
              v43 = v41[1];
              *v41 = v45;
              v41[1] = v44;
              LODWORD(v40) = v40 + 1;
              v44 = v43;
              v45 = v42;
            }

            while (v43);
          }
        }

        v89[v17] = 1;
      }
    }

LABEL_63:
    ++v17;
  }

  while (v17 != 4);
  if (v92)
  {
    v67 = 16 * v92;
    v68 = v91 + 8;
    do
    {
      if (!*v68)
      {
        *(v68 - 1) = "unknown";
        *v68 = 7;
      }

      v68 += 2;
      v67 -= 16;
    }

    while (v67);
  }

  __p = 0;
  v87 = 0;
  v88 = 0;
  if (v15 != 14)
  {
    if (v81 != 12 || v15 != 4)
    {
      goto LABEL_115;
    }

    v57 = v91;
    v62 = "gnueabihf";
    v63 = 9;
LABEL_114:
    v57[6] = v62;
    v57[7] = v63;
    goto LABEL_115;
  }

  v57 = v91;
  v58 = *(v91 + 7);
  if (v58 < 0xB)
  {
    goto LABEL_115;
  }

  v59 = *(v91 + 6);
  if (*v59 != 0x6564696F72646E61 || *(v59 + 3) != 0x6962616564696F72)
  {
    goto LABEL_115;
  }

  v61 = v58 - 11;
  if (!v61)
  {
    v62 = "android";
    v63 = 7;
    goto LABEL_114;
  }

  v85 = 1283;
  v84[0] = "android";
  v84[2] = v59 + 11;
  v84[3] = v61;
  sub_298B996A4(v84, &__p);
  v77 = v91;
  v78 = SHIBYTE(v88);
  p_p = __p;
  if (v88 >= 0)
  {
    p_p = &__p;
  }

  if (v88 < 0)
  {
    v78 = v87;
  }

  *(v91 + 6) = p_p;
  v77[7] = v78;
LABEL_115:
  if (v10 != 14)
  {
    if (v83)
    {
      sub_298CF540C(&v91, 4uLL);
      v65 = v91;
      *(v91 + 4) = "windows";
      v65[5] = 7;
      v65[6] = "gnu";
      v66 = 3;
    }

    else
    {
      if ((v83 & 0x100000000) == 0)
      {
        goto LABEL_130;
      }

      sub_298CF540C(&v91, 4uLL);
      v65 = v91;
      *(v91 + 4) = "windows";
      v65[5] = 7;
      v65[6] = "cygnus";
      v66 = 6;
    }

LABEL_129:
    v65[7] = v66;
    goto LABEL_130;
  }

  sub_298CF540C(&v91, 4uLL);
  v64 = v91;
  *(v91 + 4) = "windows";
  v64[5] = 7;
  if (!v15)
  {
    if (v16 <= 1)
    {
      v64[6] = "msvc";
      v64[7] = 4;
      goto LABEL_140;
    }

    v75 = v64;
    v76 = sub_298CF1B2C(v16);
    v65 = v75;
    v75[6] = v76;
    goto LABEL_129;
  }

LABEL_130:
  v70 = v10 == 14 && v15 != 0;
  if (((v83 | HIDWORD(v83) | v70) & 1) != 0 && v16 > 1)
  {
    sub_298CF540C(&v91, 5uLL);
    v71 = sub_298CF1B2C(v16);
    v73 = v72;
    v64 = v91;
    *(v91 + 8) = v71;
    v64[9] = v73;
  }

  else
  {
    v64 = v91;
  }

LABEL_140:
  sub_298CF608C(v82, v64, &v64[2 * v92]);
  if (SHIBYTE(v88) < 0)
  {
    operator delete(__p);
  }

  if (v91 != v93)
  {
    free(v91);
  }

  v74 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298CF540C(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(result + 12) < a2)
      {
        v4 = result;
        sub_298B90A44(result, (result + 16), a2, 16);
        result = v4;
        v2 = *(v4 + 8);
      }

      if (a2 != v2)
      {
        v5 = result;
        bzero((*result + 16 * v2), 16 * (a2 - v2));
        result = v5;
      }
    }

    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_298CF548C(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  v4[0] = v2;
  v4[1] = v1;
  LOBYTE(v7) = 45;
  sub_298CF6014(v4, &v7, 1uLL, &v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  sub_298CF6014(&v7, v4, 1uLL, &v5);
  return v5;
}

uint64_t sub_298CF550C(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  v4[0] = v2;
  v4[1] = v1;
  LOBYTE(v7) = 45;
  sub_298CF6014(v4, &v7, 1uLL, v5);
  v7 = v6;
  LOBYTE(v4[0]) = 45;
  sub_298CF6014(&v7, v4, 1uLL, v5);
  return v6;
}

unint64_t sub_298CF558C(uint64_t a1)
{
  v2 = *(a1 + 23);
  v3 = *a1;
  if (v2 >= 0)
  {
    v3 = a1;
  }

  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  v12[0] = v3;
  v12[1] = v2;
  LOBYTE(v16) = 45;
  sub_298CF6014(v12, &v16, 1uLL, &v13);
  v16 = v15;
  LOBYTE(v12[0]) = 45;
  sub_298CF6014(&v16, v12, 1uLL, &v13);
  v16 = v15;
  LOBYTE(v12[0]) = 45;
  sub_298CF6014(&v16, v12, 1uLL, &v13);
  v4 = v13;
  v5 = v14;
  v6 = *(a1 + 36);
  v7 = qword_298EA5FB8[v6];
  v8 = v14 - v7;
  if (v14 >= v7 && !memcmp(v13, off_29EEFD3B0[v6], qword_298EA5FB8[v6]))
  {
    v4 += v7;
    v5 = v8;
  }

  else if (v6 == 9)
  {
    if (v5 >= 5 && *v4 == 1868783981 && v4[4] == 115)
    {
      v4 += 5;
      v5 -= 5;
    }
  }

  else if (v5 >= 8 && *v4 == 0x736F6E6F69736976)
  {
    v4 += 8;
    v5 -= 8;
  }

  v13 = 0;
  v14 = 0;
  sub_298B99F40(&v13, v4, v5);
  v10 = v14 & 0x8000000000000000;
  if (*(a1 + 36) == 30 && v13 == 0)
  {
    v10 = 0x8000000000000001;
  }

  return v10 | v13;
}

double sub_298CF5740(uint64_t a1, uint64_t a2)
{
  sub_298CF26DC(&v4, a2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  result = *&v6;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  return result;
}

void sub_298CF57A0(uint64_t a1, int a2, int a3)
{
  if (a2 <= 16)
  {
    if (a2 == 3)
    {
      if (a3 == 35)
      {
        v4 = "arm64ec";
        v5 = 7;
      }

      else
      {
        if (a3 != 34)
        {
          goto LABEL_28;
        }

        v4 = "arm64e";
        v5 = 6;
      }
    }

    else
    {
      if (a2 != 16 || a3 != 39)
      {
        goto LABEL_28;
      }

      v4 = "mipsisa32r6";
      v5 = 11;
    }
  }

  else
  {
    if (a2 != 17)
    {
      if (a2 != 18)
      {
        if (a2 == 19 && a3 == 39)
        {
          v4 = "mipsisa64r6el";
          v5 = 13;

          goto LABEL_8;
        }

        goto LABEL_28;
      }

      if (a3 == 39)
      {
        v4 = "mipsisa64r6";
        v5 = 11;

        goto LABEL_8;
      }

LABEL_28:
      v6 = a1;
      v7 = sub_298CF1B10(a2);
      a1 = v6;
      v5 = v8;
      v4 = v7;

      goto LABEL_8;
    }

    if (a3 != 39)
    {
      goto LABEL_28;
    }

    v4 = "mipsisa32r6el";
    v5 = 13;
  }

LABEL_8:
  sub_298CF58F0(a1, v4, v5);
}

void sub_298CF58F0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v13[8] = *MEMORY[0x29EDCA608];
  v11 = v13;
  v12 = xmmword_298D1AB80;
  sub_298CF6140(&v11, a2, &a2[a3]);
  sub_298CF6140(&v11, "-", "");
  v4 = sub_298CF548C(a1);
  sub_298CF6140(&v11, v4, &v4[v5]);
  sub_298CF6140(&v11, "-", "");
  v6 = sub_298CF550C(a1);
  sub_298CF6140(&v11, v6, &v6[v7]);
  v10 = 261;
  v9[0] = v11;
  v9[1] = v12;
  sub_298CF5740(a1, v9);
  if (v11 != v13)
  {
    free(v11);
  }

  v8 = *MEMORY[0x29EDCA608];
}

unint64_t sub_298CF5A0C(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v1 = a1;
  if (*(a1 + 24) != 3)
  {
    return 0;
  }

  result = 0x800000000000000ELL;
  v3 = *(v1 + 36);
  if (v3 <= 25)
  {
    if (v3 != 5)
    {
      if (v3 == 9)
      {
        return 0x800000000000000BLL;
      }

      return 0;
    }

    if ((*(v1 + 40) & 0xFFFFFFFE) == 0x18 || *(v1 + 28) == 34)
    {
      return result;
    }

    return 0;
  }

  if (v3 == 26)
  {
    if (*(v1 + 40) == 24)
    {
      return result;
    }

    v4 = *(v1 + 23);
    v5 = *(v1 + 8);
    if (v4 < 0)
    {
      v1 = *v1;
    }

    if (v4 < 0)
    {
      v4 = v5;
    }

    v7[0] = v1;
    v7[1] = v4;
    v9 = 45;
    sub_298CF6014(v7, &v9, 1uLL, v8);
    result = 0x800000000000000ELL;
    if (v8[1] == 6 && *v8[0] == 913142369 && *(v8[0] + 4) == 25908)
    {
      return result;
    }

    return 0;
  }

  if (v3 != 27)
  {
    if (v3 == 29)
    {
      return 0x8000000000000014;
    }

    return 0;
  }

  if (*(v1 + 40) == 24)
  {
    return 0x8000000000000007;
  }

  else
  {
    return 0x8000000000000009;
  }
}

uint64_t sub_298CF5BAC(uint64_t a1, const void *a2, uint64_t a3, void *__s2, uint64_t a5, void *a6, uint64_t a7, int a8, void *__s2a, uint64_t a10, int a11)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    if ((v16 = *a1, v17 = *(a1 + 8), v17 == a3) && (!v17 || !memcmp(*a1, a2, *(a1 + 8))) || v17 == a5 && (!v17 || !memcmp(v16, __s2, v17)) || v17 == a7 && (!v17 || !memcmp(v16, a6, v17)) || v17 == a10 && (!v17 || !memcmp(v16, __s2a, v17)))
    {
      *(a1 + 16) = a11;
      *(a1 + 20) = 1;
    }
  }

  return a1;
}

uint64_t sub_298CF5C94(uint64_t a1, const void *a2, uint64_t a3, void *__s2, uint64_t a5, void *a6, uint64_t a7, int a8)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    if ((v14 = *a1, v15 = *(a1 + 8), v15 == a3) && (!v15 || !memcmp(*a1, a2, *(a1 + 8))) || v15 == a5 && (!v15 || !memcmp(v14, __s2, v15)) || v15 == a7 && (!v15 || !memcmp(v14, a6, v15)))
    {
      *(a1 + 16) = a8;
      *(a1 + 20) = 1;
    }
  }

  return a1;
}

uint64_t sub_298CF5D58(uint64_t a1, const void *a2, uint64_t a3, void *__s2, uint64_t a5, int a6)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    if ((v10 = *a1, v11 = *(a1 + 8), v11 == a3) && (!v11 || !memcmp(*a1, a2, *(a1 + 8))) || v11 == a5 && (!v11 || !memcmp(v10, __s2, v11)))
    {
      *(a1 + 16) = a6;
      *(a1 + 20) = 1;
    }
  }

  return a1;
}

uint64_t sub_298CF5DEC(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 >= 7)
  {
    if (*a1 == *"aarch64" && *(a1 + 3) == *"ch64")
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (a2 >= 5)
  {
LABEL_6:
    if (*a1 != *"arm64" || *(a1 + 4) != aArm64_0[4])
    {
      if (*a1 == *"thumb" && *(a1 + 4) == aThumb[4])
      {
        v7 = 2;
        v8 = sub_298CF13F8(a1, a2);
        if (v8 == 1)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      goto LABEL_27;
    }

LABEL_17:
    v7 = 3;
    v8 = sub_298CF13F8(a1, a2);
    if (v8 == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (a2 < 3)
  {
    v7 = 0;
    v8 = sub_298CF13F8(a1, a2);
    if (v8 == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

LABEL_27:
  v7 = *a1 == *"arm" && *(a1 + 2) == aArm[2];
  v8 = sub_298CF13F8(a1, a2);
  if (v8 == 1)
  {
LABEL_34:
    v9 = dword_298EA5CD0[v7];
    v10 = sub_298CF108C(a1, a2);
    if (v11)
    {
      goto LABEL_35;
    }

    return 0;
  }

LABEL_18:
  if (v8 == 2)
  {
    v9 = dword_298EA5CE0[v7];
    v10 = sub_298CF108C(a1, a2);
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = sub_298CF108C(a1, a2);
    if (!v11)
    {
      return 0;
    }
  }

LABEL_35:
  if (v7 == 2 && v11 != 1 && (*v10 == 12918 || *v10 == 13174))
  {
    return 0;
  }

  v13 = v10;
  v14 = v11;
  v15 = sub_298CF1680(v10, v11);
  v16 = sub_298CF15B0(v13, v14);
  if (v8 == 2)
  {
    v17 = 36;
  }

  else
  {
    v17 = 35;
  }

  if (v16 == 6 && v15 == 3)
  {
    return v17;
  }

  else
  {
    return v9;
  }
}

__n128 sub_298CF6014@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_298B96A54(a1, a2, a3, 0);
  if (v7 == -1)
  {
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    result = *a1;
    *a4 = *a1;
  }

  else
  {
    v10 = *a1;
    v9 = a1[1];
    if (v7 >= v9)
    {
      v11 = a1[1];
    }

    else
    {
      v11 = v7;
    }

    v12 = v7 + a3;
    if (v9 < v7 + a3)
    {
      v12 = a1[1];
    }

    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = v10 + v12;
    *(a4 + 24) = v9 - v12;
  }

  return result;
}

std::string *sub_298CF608C(std::string *this, uint64_t a2, uint64_t a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v5 = this;
    v6 = ((a3 - a2) >> 4) - 1;
    v7 = a2;
    do
    {
      v6 += *(v7 + 8);
      v7 += 16;
    }

    while (v7 != a3);
    std::string::reserve(this, v6);
    this = std::string::append(v5, *a2, *(a2 + 8));
    for (i = a2 + 16; i != a3; this = std::string::append(v5, v9, v10))
    {
      std::string::append(v5, "-", 1uLL);
      v9 = *i;
      v10 = *(i + 8);
      i += 16;
    }
  }

  return this;
}

void sub_298CF6140(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = a3 - a2;
  v6 = a1[1];
  v7 = v6 + a3 - a2;
  if (a1[2] < v7)
  {
    v8 = a2;
    sub_298B90C08(a1, a1 + 3, v7, 1);
    a2 = v8;
    v6 = a1[1];
  }

  if (a2 != a3)
  {
    memcpy((*a1 + v6), a2, v5);
    v6 = a1[1];
  }

  a1[1] = v6 + v5;
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2A1C70290](retstr, __val);
}

{
  return MEMORY[0x2A1C702A0](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}