void *sub_1819A43DC(void *result, unsigned __int8 *__src, unsigned int a3)
{
  if (!__src)
  {
    return result;
  }

  v3 = a3;
  v4 = __src;
  v5 = result;
  v6 = result[3];
  if (v6 + a3 + 2 >= result[2])
  {
    result = sub_1819A417C(result, a3 + 2);
    if (result)
    {
      return result;
    }

    v6 = v5[3];
  }

  v7 = v5[1];
  v5[3] = v6 + 1;
  *(v7 + v6) = 34;
  while (1)
  {
    if (v3 < 4)
    {
      v13 = 0;
      if (!v3)
      {
LABEL_21:
        LODWORD(v11) = v13;
        v15 = v3 - v13;
        if (v3 <= v13)
        {
          break;
        }

        goto LABEL_25;
      }

LABEL_16:
      v11 = v13;
      while (byte_181A24A84[v4[v11]])
      {
        if (v3 == ++v11)
        {
          LODWORD(v11) = v3;
          goto LABEL_43;
        }
      }
    }

    else
    {
      LODWORD(v11) = 0;
      while (byte_181A24A84[v4[v11]])
      {
        v12 = v11 + 1;
        if (!byte_181A24A84[v4[(v11 + 1)]] || (v12 = v11 + 2, !byte_181A24A84[v4[(v11 + 2)]]))
        {
          LODWORD(v11) = v12;
          break;
        }

        if (!byte_181A24A84[v4[(v11 + 3)]])
        {
          LODWORD(v11) = v11 + 3;
          v15 = v3 - v11;
          if (v3 > v11)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }

        v13 = v11 + 4;
        v14 = v11 + 7;
        LODWORD(v11) = v11 + 4;
        if (v14 >= v3)
        {
          if (v13 >= v3)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }
      }
    }

    v15 = v3 - v11;
    if (v3 <= v11)
    {
      break;
    }

LABEL_25:
    if (v11)
    {
      v16 = v11;
      result = memcpy((v5[1] + v5[3]), v4, v11);
      v5[3] += v16;
      v4 += v16;
      v3 = v15;
    }

    v17 = *v4;
    switch(v17)
    {
      case '\\':
        goto LABEL_30;
      case '\'':
        v19 = v5[1];
        v20 = v5[3];
        v5[3] = v20 + 1;
        *(v19 + v20) = 39;
        break;
      case '""':
LABEL_30:
        v18 = v5[3];
        if (v18 + v3 + 3 > v5[2])
        {
          result = sub_1819A417C(v5, v3 + 3);
          if (result)
          {
            return result;
          }

          v18 = v5[3];
        }

        v8 = v5[1];
        v5[3] = v18 + 1;
        *(v8 + v18) = 92;
        v9 = v5[1];
        v10 = v5[3];
        v5[3] = v10 + 1;
        *(v9 + v10) = v17;
        break;
      default:
        v21 = v5[3];
        if (v21 + v3 + 7 > v5[2])
        {
          result = sub_1819A417C(v5, v3 + 7);
          if (result)
          {
            return result;
          }

          v21 = v5[3];
        }

        v22 = byte_181A24C93[v17];
        *(v5[1] + v21) = 92;
        v23 = v5[1] + v5[3];
        if (v22)
        {
          *(v23 + 1) = v22;
          v24 = 2;
        }

        else
        {
          *(v23 + 1) = 117;
          *(v5[1] + v5[3] + 2) = 48;
          *(v5[1] + v5[3] + 3) = 48;
          *(v5[1] + v5[3] + 4) = a0123456789abcd[v17 >> 4];
          *(v5[1] + v5[3] + 5) = a0123456789abcd[v17 & 0xF];
          v24 = 6;
        }

        v5[3] += v24;
        break;
    }

    ++v4;
    --v3;
  }

LABEL_43:
  v25 = v5[3];
  if (v11)
  {
    v26 = v11;
    result = memcpy((v5[1] + v25), v4, v11);
    v25 = v5[3] + v26;
  }

  v27 = v5[1];
  v5[3] = v25 + 1;
  *(v27 + v25) = 34;
  return result;
}

uint64_t sub_1819A470C(uint64_t a1, const void *a2, unsigned int a3)
{
  result = sub_1819A417C(a1, a3);
  if (!result)
  {
    result = memcpy((*(a1 + 8) + *(a1 + 24)), a2, a3);
    *(a1 + 24) += a3;
  }

  return result;
}

uint64_t sub_1819A4770(uint64_t a1, char a2)
{
  result = sub_1819A417C(a1, 1u);
  if (!result)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    *(a1 + 24) = v6 + 1;
    *(v5 + v6) = a2;
  }

  return result;
}

double sub_1819A47B4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v1 = *(a1 + 8);
    v4 = *(v1 - 8);
    v3 = (v1 - 8);
    v2 = v4;
    if (v4 >= 2)
    {
      *v3 = v2 - 1;
      goto LABEL_10;
    }

    v5 = &off_1ED452EB0;
    v6 = a1;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v5)(v3);
      a1 = v6;
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    a1 = v6;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 8) = a1 + 34;
  *&result = 100;
  *(a1 + 16) = xmmword_181A201B0;
  *(a1 + 32) = 1;
  return result;
}

void sub_1819A48A4(uint64_t a1)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 24);
  if (v2 >= *(a1 + 16))
  {
    sub_1819A4770(a1, 0);
    if (*(a1 + 33))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(a1 + 8);
    *(a1 + 24) = v2 + 1;
    *(v3 + v2) = 0;
    if (*(a1 + 33))
    {
LABEL_3:
      v4 = *a1;

      sqlite3_result_error_nomem(v4);
      return;
    }
  }

  v5 = *(a1 + 24) - 1;
  *(a1 + 24) = v5;
  v6 = *a1;
  *&v12 = *(a1 + 8);
  LODWORD(v13) = v5;
  if (v6)
  {
    v6 = *(*v6 + 24);
  }

  *(&v12 + 1) = v6;
  sub_1819A13A0(&v11, 0);
  if (HIBYTE(v13))
  {
    if (v11)
    {
      sub_181929C84(*(&v12 + 1), v11);
    }

    sqlite3_result_error_nomem(*a1);
  }

  else
  {
    v7 = *a1;
    v8 = v11;
    if (!*a1 || (DWORD2(v11) & 0x80000000) != 0)
    {
      if (*(v11 + 103))
      {
        v9 = *(v11 + 220);
        if (!v9)
        {
          *(v11 + 103) = 0;
          *(v8 + 424) = 0;
          v10 = *(v8 + 432) - 1;
          *(v8 + 432) = v10;
          if (!v10)
          {
            LOWORD(v9) = *(v8 + 438);
          }

          *(v8 + 436) = v9;
        }
      }

      if (v7)
      {
        *(v7 + 9) = 18;
        sub_1818900D0(*v7, "string or blob too big", -1, 1u, 0);
      }
    }

    else
    {
      sub_18190B23C(v7, v11, SDWORD2(v11), 0, sub_181916CE4);
    }
  }
}

double sub_1819A4A18(void *a1, uint64_t a2, double result)
{
  v4 = a1;
  if (!a2)
  {
    sub_1819012D0(99877);
    goto LABEL_9;
  }

  v5 = *(a2 + 20);
  v6 = byte_181A203AA[v5 & 0x3F];
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 5)
      {
        goto LABEL_9;
      }

      v8 = a1[3];
      if ((v8 + 4) < a1[2])
      {
        *(a1[1] + v8) = 1819047278;
        a1[3] += 4;
        return result;
      }

      v14 = "null";
      v15 = 4;
LABEL_62:

      sub_1819A470C(a1, v14, v15);
      return result;
    }

    if ((~v5 & 0x202) != 0 || *(a2 + 22) != 1)
    {
      if (v5)
      {
        v14 = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v14 = sub_18193CB70(a2, 1);
        LOWORD(v5) = *(a2 + 20);
        if ((v5 & 2) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v14 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
        goto LABEL_48;
      }
    }

    if (*(a2 + 22) == 1)
    {
      v15 = *(a2 + 16);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    }

LABEL_48:
    if ((v5 & 0x10) != 0)
    {
      v15 = *(a2 + 16);
      if ((v5 & 0x400) != 0)
      {
        v15 += *a2;
      }

      if ((v5 & 0x800) == 0)
      {
        goto LABEL_68;
      }
    }

    else if (v5)
    {
      v15 = 0;
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v19 = v14;
      v20 = sub_18193CB44(a2, 1);
      v14 = v19;
      v15 = v20;
      if ((*(a2 + 20) & 0x800) == 0)
      {
        goto LABEL_68;
      }
    }

LABEL_57:
    if (*(a2 + 23) == 74)
    {
      goto LABEL_58;
    }

LABEL_68:

    sub_1819A43DC(v4, v14, v15);
    return result;
  }

  if (v6 == 1)
  {
    if ((~v5 & 0x202) != 0 || *(a2 + 22) != 1)
    {
      if (v5)
      {
        v14 = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v14 = sub_18193CB70(a2, 1);
        LOWORD(v5) = *(a2 + 20);
        if ((v5 & 2) == 0)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v14 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_41:
        if ((v5 & 0x10) != 0)
        {
          v15 = *(a2 + 16);
          if ((v5 & 0x400) != 0)
          {
            v15 += *a2;
          }
        }

        else
        {
          if (v5)
          {
            return result;
          }

          v16 = a2;
          v17 = v14;
          v18 = sub_18193CB44(v16, 1);
          v14 = v17;
          v15 = v18;
        }

        goto LABEL_58;
      }
    }

    if (*(a2 + 22) != 1)
    {
      goto LABEL_41;
    }

    v15 = *(a2 + 16);
LABEL_58:
    if (!v15)
    {
      return result;
    }

    v21 = v15;
    v22 = *(v4 + 24);
    if (v22 + v15 < *(v4 + 16))
    {
      memcpy((*(v4 + 8) + v22), v14, v15);
      *(v4 + 24) += v21;
      return result;
    }

    a1 = v4;
    goto LABEL_62;
  }

  if (v6 == 2)
  {
    if ((v5 & 8) != 0)
    {
      v7 = *a2;
    }

    else if ((v5 & 0x24) != 0)
    {
      v7 = *a2;
    }

    else if ((v5 & 0x12) != 0)
    {
      v7 = sub_18193CF90(a2);
    }

    else
    {
      v7 = 0.0;
    }

    sub_1819A40A0(100, v4, "%!0.15g", *&v7);
    return result;
  }

LABEL_9:
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  if (sub_1819A02D4(a2, v24))
  {
    sub_1819A3204(v24, 0, v4);
    return result;
  }

  if (!*(v4 + 33))
  {
    v9 = *v4;
    if (*v4)
    {
      *(v9 + 36) = 1;
      sub_1818900D0(*v9, "JSON cannot hold BLOB values", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
    }

    *(v4 + 33) = 4;
    if (*(v4 + 32))
    {
      goto LABEL_77;
    }

    v10 = *(v4 + 8);
    v13 = *(v10 - 8);
    v12 = (v10 - 8);
    v11 = v13;
    if (v13 < 2)
    {
      v23 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
        --qword_1ED456A90;
        off_1ED452EB0(v12);
        v12 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_77;
        }

        v23 = &xmmword_1ED452F28;
      }

      (*v23)(v12);
    }

    else
    {
      *v12 = v11 - 1;
    }

LABEL_77:
    *(v4 + 8) = v4 + 34;
    *&result = 100;
    *(v4 + 16) = xmmword_181A201B0;
    *(v4 + 32) = 1;
  }

  return result;
}

void sub_1819A4E40(uint64_t *a1, unsigned int a2, sqlite3_context *a3, int a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v59 = 0;
  if (a3)
  {
    v8 = *a3;
    v9 = *(*a3 + 24);
    v10 = sub_1819A0760(a1, a2, &v59);
    if (!v10)
    {
      *(a3 + 9) = 1;
      v11 = "malformed JSON";
      v12 = v8;
      v13 = -1;
LABEL_4:

      sub_1818900D0(v12, v11, -1, 1u, v13);
      return;
    }
  }

  else
  {
    v10 = sub_1819A0760(a1, a2, &v59);
    if (!v10)
    {
      return;
    }

    v9 = 0;
  }

  v14 = *a1;
  v15 = (*a1 + a2);
  v16 = *v15 & 0xF;
  if (v16 <= 4)
  {
    if ((*v15 & 0xFu) <= 2)
    {
      if ((*v15 & 0xF) != 0)
      {
        if (v16 == 1)
        {
          if (!v59)
          {
            v17 = a3;
            v18 = 1;
            goto LABEL_74;
          }
        }

        else if (!v59)
        {
          v17 = a3;
          v18 = 0;
LABEL_74:

          sqlite3_result_int(v17, v18);
          return;
        }

        goto LABEL_48;
      }

      if (!v59)
      {
        if (a3)
        {
          v39 = *a3;
          if ((*(*a3 + 20) & 0x9000) != 0)
          {

            sub_18193CA54(v39);
          }

          else
          {
            *(v39 + 20) = 1;
          }
        }

        return;
      }

LABEL_48:
      if (a3)
      {
        *(a3 + 9) = 1;
        sub_1818900D0(*a3, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
      }

      return;
    }

    v65[0] = 0;
    v19 = v59;
    if (!v59)
    {
      goto LABEL_48;
    }

    v20 = v10 + a2;
    v21 = *(v14 + v20);
    if (v21 == 45)
    {
      v19 = v59 - 1;
      if (v59 == 1)
      {
        goto LABEL_48;
      }

      v22 = v10 + 1;
      v20 = v10 + 1 + a2;
    }

    else
    {
      v22 = v10;
    }

    v40 = sub_181929E8C(v9, v19 + 1, 1565185748);
    if (!v40)
    {
LABEL_97:
      sqlite3_result_error_nomem(a3);
      return;
    }

    v41 = (v14 + v20);
    v42 = v40;
    memcpy(v40, v41, v19);
    *(v42 + v19) = 0;
    v43 = sub_18191A360(v42, v65);
    sub_181929C84(v9, v42);
    if (!v43)
    {
      if (v21 == 45)
      {
        v44 = -v65[0];
      }

      else
      {
        v44 = v65[0];
      }

      goto LABEL_93;
    }

    if (v21 == 45 && v43 == 3)
    {
      v44 = 0x8000000000000000;
LABEL_93:
      sqlite3_result_int64(a3, v44);
      return;
    }

    if (v21 == 45 && v43 != 1)
    {
      v10 = v22 - 1;
      ++v19;
      v23 = *a1;
      if (!*a1)
      {
        goto LABEL_97;
      }

LABEL_30:
      v24 = v10;
      v25 = sub_181929E8C(v9, v19 + 1, 1565185748);
      if (v25)
      {
        v26 = (v23 + v24 + a2);
        v27 = v25;
        memcpy(v25, v26, v19);
        v27[v19] = 0;
        v28 = strlen(v27);
        v29 = sub_1818E6334(v27, &v58, v28 & 0x3FFFFFFF, 1);
        sub_181929C84(v9, v27);
        if (v29 >= 1)
        {
          if (a3)
          {
            v30 = v58;
            v31 = *a3;
            if ((*(v31 + 20) & 0x9000) != 0)
            {
              sub_18193CA54(v31);
            }

            else
            {
              *(v31 + 20) = 1;
            }

            *v31 = v30;
            *(v31 + 20) = 8;
          }

          else
          {
            sub_1819012D0(100067);
          }

          return;
        }

        goto LABEL_48;
      }

      goto LABEL_97;
    }

    v10 = v22;
    if (v43 == 1)
    {
      goto LABEL_48;
    }

LABEL_29:
    v23 = *a1;
    if (!*a1)
    {
      goto LABEL_97;
    }

    goto LABEL_30;
  }

  if (v16 > 0xC)
  {
    goto LABEL_27;
  }

  if (((1 << v16) & 0x300) == 0)
  {
    if (((1 << v16) & 0x480) != 0)
    {
      if (!a3)
      {
        return;
      }

      v35 = v59;
      v15 = (v14 + v10 + a2);
      v36 = a3;
      v37 = 1;
LABEL_40:
      v38 = -1;
LABEL_82:

      sub_18190B23C(v36, v15, v35, v37, v38);
      return;
    }

    if (((1 << v16) & 0x1800) != 0)
    {
      if (!a3 || a4 || (*(*(a3 + 1) + 8) & 8) == 0)
      {
        v68 = 0;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v60 = v15;
        LODWORD(v61) = v59 + v10;
        v65[0] = a3;
        v65[1] = &v67[2];
        memset(v67, 0, sizeof(v67));
        v66 = xmmword_181A201B0;
        v67[0] = 1;
        sub_1819A3204(&v60, 0, v65);
        sub_1819A3DCC(v65, 0, 0);
        return;
      }

      v35 = v59 + v10;
      if ((v59 + v10) < 0)
      {
        *(a3 + 9) = 18;
        v12 = *a3;
        v11 = "string or blob too big";
        v13 = 0;
        goto LABEL_4;
      }

      v36 = a3;
      v37 = 0;
      goto LABEL_40;
    }

LABEL_27:
    if (v16 - 5 >= 2)
    {
      goto LABEL_48;
    }

    v58 = 0.0;
    v19 = v59;
    if (!v59)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  v32 = v10;
  v33 = v59;
  if (v9)
  {
    v34 = sub_181929E8C(v9, v59 + 1, 370076103);
    if (!v34)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v34 = sub_181902484(v59 + 1, 370076103);
    if (!v34)
    {
      goto LABEL_97;
    }
  }

  if (v33)
  {
    v45 = v32;
    v46 = 0;
    v47 = 0;
    v48 = v14 + v45 + a2;
    while (1)
    {
      v49 = (v48 + v47);
      v50 = *v49;
      if (v50 == 92)
      {
        break;
      }

      *(v34 + v46++) = v50;
LABEL_60:
      if (++v47 >= v33)
      {
        goto LABEL_80;
      }
    }

    LODWORD(v65[0]) = 0;
    v51 = sub_1819A0EB4(v49, v33 - v47, v65);
    v52 = v65[0];
    if (LODWORD(v65[0]) > 0x7F)
    {
      if (LODWORD(v65[0]) > 0x7FF)
      {
        if (HIWORD(LODWORD(v65[0])))
        {
          if (LODWORD(v65[0]) == 629145)
          {
LABEL_72:
            v47 = v47 + v51 - 1;
            goto LABEL_60;
          }

          *(v34 + v46) = (LODWORD(v65[0]) >> 18) | 0xF0;
          *(v34 + v46 + 1) = (v52 >> 12) & 0x3F | 0x80;
          v54 = v46 + 3;
          *(v34 + v46 + 2) = (v52 >> 6) & 0x3F | 0x80;
          v55 = v52 & 0x3F | 0x80;
          v53 = 4;
        }

        else
        {
          *(v34 + v46) = (LODWORD(v65[0]) >> 12) | 0xE0;
          v54 = v46 + 2;
          *(v34 + v46 + 1) = (v52 >> 6) & 0x3F | 0x80;
          v55 = v52 & 0x3F | 0x80;
          v53 = 3;
        }
      }

      else
      {
        v54 = v46 + 1;
        *(v34 + v46) = (LODWORD(v65[0]) >> 6) | 0xC0;
        v55 = v52 & 0x3F | 0x80;
        v53 = 2;
      }

      LOBYTE(v52) = v55;
    }

    else
    {
      v53 = 1;
      v54 = v46;
    }

    v46 += v53;
    *(v34 + v54) = v52;
    goto LABEL_72;
  }

  v46 = 0;
LABEL_80:
  *(v34 + v46) = 0;
  if (a3)
  {
    v36 = a3;
    v15 = v34;
    v35 = v46;
    v37 = 1;
    v38 = sub_181916CE4;
    goto LABEL_82;
  }

  if (*(v34 + 103))
  {
    v56 = *(v34 + 220);
    if (!v56)
    {
      *(v34 + 103) = 0;
      *(v34 + 424) = 0;
      v57 = *(v34 + 432) - 1;
      *(v34 + 432) = v57;
      if (!v57)
      {
        LOWORD(v56) = *(v34 + 438);
      }

      *(v34 + 436) = v56;
    }
  }
}

char *sub_1819A562C(uint64_t a1, const char *a2)
{
  result = sqlite3_mprintf("json_%s() needs an odd number of arguments", a2);
  v4 = result;
  if (a1)
  {
    *(a1 + 36) = 1;
    result = sub_1818900D0(*a1, result, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v4)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      v6 = *v5;

      return v6(v4);
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    result = off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

  return result;
}

void sub_1819A5738(sqlite3_context *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v8 = a2 - 1;
  v9 = sub_18199F1EC(a1, *a3, a2 != 1);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *__n = 0u;
  v47 = 0u;
  if (a2 >= 3)
  {
    v11 = 0;
    v12 = a3 + 1;
    for (i = 1; v8 > i; i += 2)
    {
      v14 = *v12;
      if (*v12)
      {
        if ((0xAAAAAAAAAAAAAAAALL >> *(v14 + 20)))
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1819012D0(99877);
        v14 = *v12;
        if (!*v12)
        {
          goto LABEL_129;
        }
      }

      v15 = *(v14 + 20);
      if ((~v15 & 0x202) != 0 || *(v14 + 22) != 1)
      {
        if (v15)
        {
          goto LABEL_129;
        }

        v16 = sub_18193CB70(v14, 1);
      }

      else
      {
        v16 = *(v14 + 8);
      }

      if (!v16)
      {
LABEL_129:
        sqlite3_result_error_nomem(a1);
        goto LABEL_157;
      }

      if (*v16 != 36)
      {
LABEL_130:
        v41 = *(v10 + 36);
        if (v41 < 2)
        {
          sub_1819A24BC(v10);
          sub_181929C84(*(v10 + 24), v10);
          if (v11 != -1)
          {
            goto LABEL_132;
          }
        }

        else
        {
          *(v10 + 36) = v41 - 1;
          if (v11 != -1)
          {
LABEL_132:
            sub_18199FF3C(a1, v16);
            return;
          }
        }

        if (a1)
        {
          *(a1 + 9) = 1;
          sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }

        return;
      }

      v17 = v12[1];
      if (v17)
      {
        v18 = byte_181A203AA[*(v17 + 20) & 0x3F];
      }

      else
      {
        sub_1819012D0(99877);
        v18 = 0;
      }

      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      *__n = 0u;
      v47 = 0u;
      if (a1)
      {
        v19 = *(*a1 + 24);
      }

      else
      {
        v19 = 0;
      }

      *(&v47 + 1) = v19;
      if (v18 <= 2)
      {
        if (v18 == 1)
        {
          if (!v17)
          {
            goto LABEL_142;
          }

          v21 = *(v17 + 20);
          if ((v21 & 2) != 0 && *(v17 + 22) == 1)
          {
            v22 = a4;
            v23 = v16;
            v24 = *(v17 + 16);
          }

          else
          {
            v22 = a4;
            v23 = v16;
            if ((v21 & 0x10) != 0)
            {
              v24 = *(v17 + 16);
              if ((v21 & 0x400) != 0)
              {
                v24 = (*v17 + v24);
              }
            }

            else if (v21)
            {
              v24 = 0;
            }

            else
            {
              v24 = sub_18193CB44(v17, 1);
              v21 = *(v17 + 20);
            }
          }

          if ((~v21 & 0x202) != 0 || *(v17 + 22) != 1)
          {
            if (v21)
            {
              goto LABEL_143;
            }

            v26 = sub_18193CB70(v17, 1);
          }

          else
          {
            v26 = *(v17 + 8);
          }

          if (!v26)
          {
            goto LABEL_143;
          }

          v30 = 3;
        }

        else
        {
          if (v18 != 2)
          {
            goto LABEL_34;
          }

          if (!v17)
          {
            sub_1819012D0(92272);
LABEL_142:
            sub_1819012D0(93690);
            goto LABEL_143;
          }

          v20 = *(v17 + 20);
          if ((v20 & 8) != 0)
          {
LABEL_50:
            v20 = *(v17 + 20);
          }

          else if ((v20 & 0x24) == 0 && (v20 & 0x12) != 0)
          {
            sub_18193CF90(v17);
            goto LABEL_50;
          }

          if ((v20 & 2) != 0 && *(v17 + 22) == 1)
          {
            v22 = a4;
            v23 = v16;
            v24 = *(v17 + 16);
          }

          else
          {
            v22 = a4;
            v23 = v16;
            if ((v20 & 0x10) != 0)
            {
              v24 = *(v17 + 16);
              if ((v20 & 0x400) != 0)
              {
                v24 = (*v17 + v24);
              }
            }

            else if (v20)
            {
              v24 = 0;
            }

            else
            {
              v24 = sub_18193CB44(v17, 1);
              v20 = *(v17 + 20);
            }
          }

          if ((~v20 & 0x202) != 0 || *(v17 + 22) != 1)
          {
            if (v20)
            {
              goto LABEL_143;
            }

            v26 = sub_18193CB70(v17, 1);
          }

          else
          {
            v26 = *(v17 + 8);
          }

          if (!v26)
          {
            goto LABEL_143;
          }

          v31 = *v26;
          if (v31 == 45)
          {
            if (v26[1] == 73)
            {
              if ((LODWORD(__n[1]) + 15) <= HIDWORD(__n[1]))
              {
                *(__n[0] + LODWORD(__n[1])) = 101;
                v39 = (LODWORD(__n[1]) + 1);
                LODWORD(__n[1]) += 7;
                v40 = __n[0] + v39;
                *(v40 + 4) = 14649;
                *v40 = 962935085;
              }

              else
              {
                sub_1819A291C(__n, 5, 6uLL, "-9e999");
              }

              goto LABEL_101;
            }
          }

          else if (v31 == 73)
          {
            if ((LODWORD(__n[1]) + 14) <= HIDWORD(__n[1]))
            {
              *(__n[0] + LODWORD(__n[1])) = 85;
              v37 = (LODWORD(__n[1]) + 1);
              LODWORD(__n[1]) += 6;
              v38 = __n[0] + v37;
              *(v38 + 4) = 57;
              *v38 = 960062777;
            }

            else
            {
              sub_1819A291C(__n, 5, 5uLL, "9e999");
            }

            goto LABEL_101;
          }

          v30 = 5;
        }

        v27 = v24;
LABEL_100:
        sub_1819A25B0(__n, v30, v27, v26);
LABEL_101:
        v16 = v23;
        a4 = v22;
        goto LABEL_102;
      }

      if (v18 != 3)
      {
        if (v18 != 4)
        {
LABEL_34:
          __n[0] = &unk_1EA831A80;
          LODWORD(__n[1]) = 1;
          goto LABEL_103;
        }

        if (!sub_1819A02D4(v17, __n))
        {
          if (a1)
          {
            *(a1 + 9) = 1;
            sub_1818900D0(*a1, "JSON cannot hold BLOB values", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
            if (!v49)
            {
LABEL_153:
              if (HIDWORD(__n[1]))
              {
                if (__n[0])
                {
                  sub_181929C84(*(&v47 + 1), __n[0]);
                }

                __n[0] = 0;
                __n[1] = 0;
              }

              goto LABEL_157;
            }

LABEL_144:
            v43 = (v47 - 8);
            v42 = *(v47 - 8);
            if (v42 < 2)
            {
              v44 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
                --qword_1ED456A90;
                off_1ED452EB0(v43);
                v43 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_152;
                }

                v44 = &xmmword_1ED452F28;
              }

              (*v44)(v43);
            }

            else
            {
              *v43 = v42 - 1;
            }

LABEL_152:
            *&v47 = 0;
            LODWORD(v48) = 0;
            LOBYTE(v49) = 0;
            goto LABEL_153;
          }

LABEL_143:
          if (!v49)
          {
            goto LABEL_153;
          }

          goto LABEL_144;
        }

        goto LABEL_102;
      }

      if (!v17)
      {
        goto LABEL_142;
      }

      v25 = *(v17 + 20);
      if ((~v25 & 0x202) != 0 || *(v17 + 22) != 1)
      {
        if (v25)
        {
          v26 = 0;
          if ((v25 & 2) == 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v26 = sub_18193CB70(v17, 1);
          LOWORD(v25) = *(v17 + 20);
          if ((v25 & 2) == 0)
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        v26 = *(v17 + 8);
        if ((v25 & 2) == 0)
        {
          goto LABEL_62;
        }
      }

      if (*(v17 + 22) != 1)
      {
LABEL_62:
        v22 = a4;
        v23 = v16;
        if ((v25 & 0x10) != 0)
        {
          v27 = *(v17 + 16);
          if ((v25 & 0x400) != 0)
          {
            v27 = (*v17 + v27);
          }
        }

        else if (v25)
        {
          v27 = 0;
        }

        else
        {
          v28 = v26;
          v29 = sub_18193CB44(v17, 1);
          v26 = v28;
          v27 = v29;
        }

        goto LABEL_78;
      }

      v22 = a4;
      v23 = v16;
      v27 = *(v17 + 16);
LABEL_78:
      if (!v26)
      {
        goto LABEL_143;
      }

      if ((*(v17 + 20) & 0x800) == 0 || *(v17 + 23) != 74)
      {
        v30 = 10;
        goto LABEL_100;
      }

      *&v47 = v26;
      LODWORD(v48) = v27;
      v16 = v23;
      a4 = v22;
      if (sub_1819A04A8(__n, a1))
      {
        if (a1)
        {
          *(a1 + 9) = 1;
          sub_1818900D0(*a1, "malformed JSON", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        }

        if (__n[0])
        {
          sub_181929C84(*(&v47 + 1), __n[0]);
        }

        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        *__n = 0u;
        v47 = 0u;
        goto LABEL_153;
      }

LABEL_102:
      if (HIBYTE(v48))
      {
        sqlite3_result_error_nomem(a1);
        if (!v49)
        {
          goto LABEL_153;
        }

        goto LABEL_144;
      }

LABEL_103:
      if (v16[1])
      {
        *(v10 + 51) = a4;
        v32 = __n[1];
        *(v10 + 64) = __n[0];
        *(v10 + 52) = 0;
        *(v10 + 56) = v32;
        v11 = sub_18199F840(v10, 0, v16 + 1, 0);
        if (v49)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (a4 == 4 || a4 == 2)
        {
          sub_1819A2BD8(v10, 0, *(v10 + 8), __n[0], LODWORD(__n[1]));
        }

        v11 = 0;
        if (v49)
        {
LABEL_110:
          v33 = v16;
          v35 = (v47 - 8);
          v34 = *(v47 - 8);
          if (v34 < 2)
          {
            v36 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
              --qword_1ED456A90;
              off_1ED452EB0(v35);
              v35 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_118;
              }

              v36 = &xmmword_1ED452F28;
            }

            (*v36)(v35);
          }

          else
          {
            *v35 = v34 - 1;
          }

LABEL_118:
          *&v47 = 0;
          LODWORD(v48) = 0;
          LOBYTE(v49) = 0;
          v16 = v33;
        }
      }

      if (HIDWORD(__n[1]))
      {
        if (__n[0])
        {
          sub_181929C84(*(&v47 + 1), __n[0]);
        }

        __n[0] = 0;
        __n[1] = 0;
      }

      if (v11 != -2 && v11 > 0xFFFFFFFC)
      {
        goto LABEL_130;
      }

LABEL_4:
      v12 += 2;
    }
  }

  sub_1819A0070(a1, v10);
LABEL_157:
  v45 = *(v10 + 36);
  if (v45 < 2)
  {
    sub_1819A24BC(v10);
    sub_181929C84(*(v10 + 24), v10);
  }

  else
  {
    *(v10 + 36) = v45 - 1;
  }
}

uint64_t sub_1819A6088(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4)
{
  v70 = 0;
  v69 = 0;
  v8 = (*a3 + a4);
  if ((*v8 & 0xF) == 0xC)
  {
    if ((*(*a1 + a2) & 0xF) != 0xC)
    {
      v9 = sub_1819A0760(a1, a2, &v70 + 1);
      sub_1819A2BD8(a1, v9 + a2, HIDWORD(v70), 0, 0);
      *(*a1 + a2) = *(*a1 + a2) & 0xF0 | 0xC;
    }

    v10 = sub_1819A0760(a3, a4, &v70 + 1);
    if (!v10)
    {
      return 2;
    }

    v11 = v10;
    v12 = HIDWORD(v70);
    v13 = sub_1819A0760(a1, a2, &v70 + 1);
    if (!v13)
    {
      return 1;
    }

    v14 = v11 + a4;
    v15 = v12 + v11 + a4;
    if (v14 < v15)
    {
      v16 = 0;
      v17 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v57 = HIDWORD(v70) + v13 + a2;
      v58 = v13 + a2;
      v67 = 0;
      v68 = 0;
      v55 = v15;
      while (1)
      {
        v18 = *a3;
        v19 = v14;
        v20 = *(*a3 + v14) & 0xF;
        if ((v20 - 11) < 0xFFFFFFFC)
        {
          return 2;
        }

        v21 = sub_1819A0760(a3, v14, &v68);
        if (!v21)
        {
          return 2;
        }

        __n = v68;
        v61 = (v21 + v19);
        v22 = v68 + v61;
        if (v22 >= v15)
        {
          return 2;
        }

        v56 = v21;
        v23 = sub_1819A0760(a3, v68 + v61, &v67);
        if (!v23 || v23 + v22 + v67 > v15)
        {
          return 2;
        }

        v52 = v67;
        v53 = v23;
        v54 = v19;
        v60 = v22;
        v59 = v23 + v22 + v67;
        v24 = v57 + *(a1 + 52);
        v25 = v58;
        if (v58 < v24)
        {
          v27 = v20 == 7 || v20 == 10;
          v65 = v27;
          v25 = v58;
          while (1)
          {
            v28 = *a1;
            v29 = *(*a1 + v25) & 0xF;
            if ((v29 - 11) < 0xFFFFFFFC)
            {
              return 1;
            }

            v30 = v25;
            v31 = sub_1819A0760(a1, v25, &v70);
            if (!v31)
            {
              return 1;
            }

            v32 = v31;
            v64 = v30;
            v33 = v31 + v30;
            v34 = v70 + v33;
            if (v70 + v33 >= v24)
            {
              return 1;
            }

            v35 = v70;
            v36 = sub_1819A0760(a1, v70 + v33, &v69);
            if (!v36)
            {
              return 1;
            }

            v63 = __PAIR64__(v34, v32);
            v62 = v36;
            v37 = v36 + v34;
            v16 = v69;
            v25 = v37 + v69;
            if (v37 + v69 > v24)
            {
              return 1;
            }

            v38 = *a3;
            v39 = (v28 + v33);
            v41 = v29 == 7 || v29 == 10;
            if (v65 && v41)
            {
              v17 = v35;
              if (__n != v35)
              {
                goto LABEL_38;
              }

              v42 = memcmp((v38 + v61), v39, __n) == 0;
            }

            else
            {
              v17 = v35;
              v42 = sub_1819A2F90((v38 + v61), __n, v65, v39, v35, v41);
            }

            if (v42)
            {
              v25 = v64;
LABEL_41:
              v18 = *a3;
              break;
            }

LABEL_38:
            if (v25 >= v24)
            {
              goto LABEL_41;
            }
          }
        }

        if (v25 < v24)
        {
          break;
        }

        if ((*(v18 + v60) & 0xF) != 0)
        {
          v46 = (__n + v56);
          if ((*(v18 + v60) & 0xF) == 0xC)
          {
            sub_1819A2BD8(a1, v24, 0, 0, (v46 + 1));
            if (*(a1 + 47))
            {
              return 3;
            }

            memcpy((*a1 + v24), (*a3 + v54), v46);
            v45 = v24 + v46;
            *(*a1 + v45) = 0;
            v43 = *(a1 + 52);
            *(a1 + 52) = 0;
            v44 = a1;
LABEL_49:
            result = sub_1819A6088(v44, v45, a3, v60);
            if (result)
            {
              return result;
            }

            *(a1 + 52) += v43;
            goto LABEL_55;
          }

          v48 = v52 + v53;
          sub_1819A2BD8(a1, v24, 0, 0, (v48 + v46));
          if (*(a1 + 47))
          {
            return 3;
          }

          memcpy((*a1 + v24), (*a3 + v54), v46);
          memcpy((*a1 + v24 + v46), (*a3 + v60), v48);
        }

LABEL_55:
        v15 = v55;
        v14 = v59;
        if (v59 >= v55)
        {
          goto LABEL_56;
        }
      }

      if ((*(v18 + v60) & 0xF) == 0)
      {
        sub_1819A2BD8(a1, v64, v62 + v63 + v17 + v16, 0, 0);
        if (*(a1 + 47))
        {
          return 3;
        }

        goto LABEL_55;
      }

      v43 = *(a1 + 52);
      *(a1 + 52) = 0;
      v44 = a1;
      v45 = HIDWORD(v63);
      goto LABEL_49;
    }

LABEL_56:
    if (*(a1 + 52))
    {
      sub_1819A2E6C(a1, a2);
    }
  }

  else
  {
    v49 = sub_1819A0760(a3, a4, &v70 + 1);
    v50 = HIDWORD(v70);
    HIDWORD(v70) = 0;
    v51 = sub_1819A0760(a1, a2, &v70 + 1);
    sub_1819A2BD8(a1, a2, HIDWORD(v70) + v51, v8, (v50 + v49));
  }

  if (*(a1 + 47))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1819A6558(uint64_t a1, unsigned int a2)
{
  v58 = 0;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = sub_1819A0760(*a1, a2, &v58);
  if (!v6)
  {
    *(v4 + 33) |= 2u;
    return (*(v5 + 2) + 1);
  }

  v7 = *(*v5 + a2) & 0xF;
  if (v7 == 12)
  {
    v12 = v6 + a2;
    v9 = v58 + v6 + a2;
    v13 = *(v4 + 24);
    if (v13 >= *(v4 + 16))
    {
      sub_1819A4770(v4, 123);
      if (v12 >= v9)
      {
LABEL_47:
        v28 = *(v4 + 24);
        if (v28 < *(v4 + 16))
        {
          v29 = *(v4 + 8);
          *(v4 + 24) = v28 + 1;
          v30 = 125;
          goto LABEL_49;
        }

        v31 = v4;
        v32 = 125;
LABEL_51:
        sub_1819A4770(v31, v32);
        return v9;
      }
    }

    else
    {
      v14 = *(v4 + 8);
      *(v4 + 24) = v13 + 1;
      *(v14 + v13) = 123;
      if (v12 >= v9)
      {
        goto LABEL_47;
      }
    }

    v18 = *(v4 + 24);
    if (v18 >= *(v4 + 16))
    {
      sub_1819A4770(v4, 10);
    }

    else
    {
      v19 = *(v4 + 8);
      *(v4 + 24) = v18 + 1;
      *(v19 + v18) = 10;
    }

    ++*(a1 + 28);
    if (!*(v4 + 33))
    {
      while (1)
      {
        if (*(a1 + 28))
        {
          v48 = 0;
          do
          {
            v49 = *(a1 + 24);
            if (v49)
            {
              v51 = *(a1 + 8);
              v50 = *(a1 + 16);
              v52 = v51[3];
              if ((v52 + v49) < v51[2])
              {
                memcpy((v51[1] + v52), v50, *(a1 + 24));
                v51[3] += v49;
              }

              else
              {
                sub_1819A470C(*(a1 + 8), v50, *(a1 + 24));
              }
            }

            ++v48;
          }

          while (v48 < *(a1 + 28));
        }

        v53 = sub_1819A3204(v5, v12, v4);
        if (v53 > v9)
        {
          break;
        }

        v54 = v53;
        v55 = *(v4 + 24);
        if ((v55 + 2) >= *(v4 + 16))
        {
          sub_1819A470C(v4, ": ", 2u);
        }

        else
        {
          *(*(v4 + 8) + v55) = 8250;
          *(v4 + 24) += 2;
        }

        v56 = sub_1819A6558(a1, v54);
        if (v56 >= v9)
        {
          goto LABEL_37;
        }

        v12 = v56;
        v57 = *(v4 + 24);
        if ((v57 + 2) < *(v4 + 16))
        {
          *(*(v4 + 8) + v57) = 2604;
          *(v4 + 24) += 2;
          if (*(v4 + 33))
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_1819A470C(v4, ",\n", 2u);
          if (*(v4 + 33))
          {
            goto LABEL_37;
          }
        }
      }

      *(v4 + 33) |= 2u;
    }

LABEL_37:
    v33 = *(v4 + 24);
    if (v33 >= *(v4 + 16))
    {
      sub_1819A4770(v4, 10);
    }

    else
    {
      v34 = *(v4 + 8);
      *(v4 + 24) = v33 + 1;
      *(v34 + v33) = 10;
    }

    v35 = *(a1 + 28) - 1;
    *(a1 + 28) = v35;
    if (v35)
    {
      v36 = 0;
      do
      {
        v37 = *(a1 + 24);
        if (v37)
        {
          v39 = *(a1 + 8);
          v38 = *(a1 + 16);
          v40 = v39[3];
          if ((v40 + v37) < v39[2])
          {
            memcpy((v39[1] + v40), v38, *(a1 + 24));
            v39[3] += v37;
          }

          else
          {
            sub_1819A470C(*(a1 + 8), v38, *(a1 + 24));
          }
        }

        ++v36;
      }

      while (v36 < *(a1 + 28));
    }

    goto LABEL_47;
  }

  if (v7 == 11)
  {
    v8 = v6 + a2;
    v9 = v58 + v8;
    v10 = *(v4 + 24);
    if (v10 >= *(v4 + 16))
    {
      sub_1819A4770(v4, 91);
      if (v8 >= v9)
      {
LABEL_32:
        v28 = *(v4 + 24);
        if (v28 < *(v4 + 16))
        {
          v29 = *(v4 + 8);
          *(v4 + 24) = v28 + 1;
          v30 = 93;
LABEL_49:
          *(v29 + v28) = v30;
          return v9;
        }

        v31 = v4;
        v32 = 93;
        goto LABEL_51;
      }
    }

    else
    {
      v11 = *(v4 + 8);
      *(v4 + 24) = v10 + 1;
      *(v11 + v10) = 91;
      if (v8 >= v9)
      {
        goto LABEL_32;
      }
    }

    v16 = *(v4 + 24);
    if (v16 >= *(v4 + 16))
    {
      sub_1819A4770(v4, 10);
    }

    else
    {
      v17 = *(v4 + 8);
      *(v4 + 24) = v16 + 1;
      *(v17 + v16) = 10;
    }

    ++*(a1 + 28);
    if (!*(v4 + 33))
    {
      while (1)
      {
        if (*(a1 + 28))
        {
          v41 = 0;
          do
          {
            v42 = *(a1 + 24);
            if (v42)
            {
              v44 = *(a1 + 8);
              v43 = *(a1 + 16);
              v45 = v44[3];
              if ((v45 + v42) < v44[2])
              {
                memcpy((v44[1] + v45), v43, *(a1 + 24));
                v44[3] += v42;
              }

              else
              {
                sub_1819A470C(*(a1 + 8), v43, *(a1 + 24));
              }
            }

            ++v41;
          }

          while (v41 < *(a1 + 28));
        }

        v46 = sub_1819A6558(a1, v8);
        if (v46 >= v9)
        {
          break;
        }

        v8 = v46;
        v47 = *(v4 + 24);
        if ((v47 + 2) < *(v4 + 16))
        {
          *(*(v4 + 8) + v47) = 2604;
          *(v4 + 24) += 2;
          if (*(v4 + 33))
          {
            break;
          }
        }

        else
        {
          sub_1819A470C(v4, ",\n", 2u);
          if (*(v4 + 33))
          {
            break;
          }
        }
      }
    }

    v20 = *(v4 + 24);
    if (v20 >= *(v4 + 16))
    {
      sub_1819A4770(v4, 10);
    }

    else
    {
      v21 = *(v4 + 8);
      *(v4 + 24) = v20 + 1;
      *(v21 + v20) = 10;
    }

    v22 = *(a1 + 28) - 1;
    *(a1 + 28) = v22;
    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = *(a1 + 24);
        if (v24)
        {
          v26 = *(a1 + 8);
          v25 = *(a1 + 16);
          v27 = v26[3];
          if ((v27 + v24) < v26[2])
          {
            memcpy((v26[1] + v27), v25, *(a1 + 24));
            v26[3] += v24;
          }

          else
          {
            sub_1819A470C(*(a1 + 8), v25, *(a1 + 24));
          }
        }

        ++v23;
      }

      while (v23 < *(a1 + 28));
    }

    goto LABEL_32;
  }

  return sub_1819A3204(v5, a2, v4);
}

void sub_1819A6B08(uint64_t *a1, int a2)
{
  if (!a1)
  {

    sub_1819012D0(100772);
    return;
  }

  v3 = a1[1];
  if (!v3 || !*(v3 + 32))
  {
    sub_1819012D0(100772);
    goto LABEL_8;
  }

  v5 = a1[2];
  if (*(v5 + 20) < 0)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_8:
    sub_18190B23C(a1, "[]", 2, 1u, 0);
LABEL_9:
    v7 = *a1;
    *(v7 + 23) = 74;
    *(v7 + 20) |= 0x800u;
    return;
  }

  v6 = sub_18190C2E0(a1, 0);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_15:
  *v6 = a1;
  v8 = *(v6 + 24);
  if (v8 >= *(v6 + 16))
  {
    sub_1819A4770(v6, 93);
    if (*(v6 + 33))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *(v6 + 8);
    *(v6 + 24) = v8 + 1;
    *(v9 + v8) = 93;
    if (*(v6 + 33))
    {
LABEL_17:

      sub_1819A3DCC(v6, 0, 0);
      return;
    }
  }

  if ((*(a1[1] + 8) & 8) == 0)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 24);
    if (a2)
    {
      if (*(v6 + 32))
      {
        v12 = -1;
      }

      else
      {
        v12 = sub_18193AB78;
      }

      sub_18190B23C(a1, v10, v11, 1u, v12);
      *(v6 + 32) = 1;
    }

    else
    {
      sub_18190B23C(a1, v10, v11, 1u, 0xFFFFFFFFFFFFFFFFLL);
      if (!*(v6 + 33))
      {
        --*(v6 + 24);
      }
    }

    goto LABEL_9;
  }

  sub_1819A48A4(v6);
  if (a2)
  {
    if (*(v6 + 32))
    {
      return;
    }

    v13 = *(v6 + 8);
    v16 = *(v13 - 8);
    v15 = (v13 - 8);
    v14 = v16;
    if (v16 >= 2)
    {
      *v15 = v14 - 1;
      return;
    }

    v17 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_40;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
    --qword_1ED456A90;
    off_1ED452EB0(v15);
    v15 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v17 = &xmmword_1ED452F28;
LABEL_40:
      v18 = *v17;

      v18(v15);
    }
  }

  else if (!*(v6 + 33))
  {
    --*(v6 + 24);
  }
}

void sub_1819A6D9C(uint64_t *a1, int a2)
{
  if (!a1)
  {

    sub_1819012D0(100772);
    return;
  }

  v3 = a1[1];
  if (!v3 || !*(v3 + 32))
  {
    sub_1819012D0(100772);
    goto LABEL_8;
  }

  v5 = a1[2];
  if (*(v5 + 20) < 0)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_8:
    sub_18190B23C(a1, "{}", 2, 1u, 0);
LABEL_9:
    v7 = *a1;
    *(v7 + 23) = 74;
    *(v7 + 20) |= 0x800u;
    return;
  }

  v6 = sub_18190C2E0(a1, 0);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_15:
  v8 = *(v6 + 24);
  if (v8 >= *(v6 + 16))
  {
    sub_1819A4770(v6, 125);
  }

  else
  {
    v9 = *(v6 + 8);
    *(v6 + 24) = v8 + 1;
    *(v9 + v8) = 125;
  }

  *v6 = a1;
  if (*(v6 + 33))
  {

    sub_1819A3DCC(v6, 0, 0);
    return;
  }

  if ((*(a1[1] + 8) & 8) == 0)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 24);
    if (a2)
    {
      if (*(v6 + 32))
      {
        v12 = -1;
      }

      else
      {
        v12 = sub_18193AB78;
      }

      sub_18190B23C(a1, v10, v11, 1u, v12);
      *(v6 + 32) = 1;
    }

    else
    {
      sub_18190B23C(a1, v10, v11, 1u, 0xFFFFFFFFFFFFFFFFLL);
      if (!*(v6 + 33))
      {
        --*(v6 + 24);
      }
    }

    goto LABEL_9;
  }

  sub_1819A48A4(v6);
  if (a2)
  {
    if (*(v6 + 32))
    {
      return;
    }

    v13 = *(v6 + 8);
    v16 = *(v13 - 8);
    v15 = (v13 - 8);
    v14 = v16;
    if (v16 >= 2)
    {
      *v15 = v14 - 1;
      return;
    }

    v17 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_41;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
    --qword_1ED456A90;
    off_1ED452EB0(v15);
    v15 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v17 = &xmmword_1ED452F28;
LABEL_41:
      v18 = *v17;

      v18(v15);
    }
  }

  else if (!*(v6 + 33))
  {
    --*(v6 + 24);
  }
}

void *sub_1819A7030(int a1, malloc_type_id_t type_id)
{
  v4 = qword_1EA831A88;
  if (!qword_1EA831A88)
  {
    v4 = malloc_default_zone();
  }

  result = malloc_type_zone_malloc(v4, a1, type_id);
  if (!result)
  {
    sqlite3_log(7, "failed to allocate %u bytes of memory", a1);
    return 0;
  }

  return result;
}

void *sub_1819A7098(void *ptr, int a2, malloc_type_id_t type_id)
{
  v6 = qword_1EA831A88;
  if (!qword_1EA831A88)
  {
    v6 = malloc_default_zone();
  }

  result = malloc_type_zone_realloc(v6, ptr, a2, type_id);
  if (!result)
  {
    if (qword_1EA831A88)
    {
      v8 = (*(qword_1EA831A88 + 16))(qword_1EA831A88, ptr);
    }

    else
    {
      v8 = malloc_size(ptr);
    }

    sqlite3_log(7, "failed memory resize %u to %u bytes", v8, a2);
    return 0;
  }

  return result;
}

uint64_t sub_1819A7134()
{
  xmmword_1EA8319F0 = 0u;
  *&qword_1EA831A00 = 0u;
  xmmword_1EA8319D0 = 0u;
  *&dword_1EA8319E0 = 0u;
  xmmword_1EA8319B0 = 0u;
  *&qword_1EA8319C0 = 0u;
  xmmword_1EA831990 = 0u;
  unk_1EA8319A0 = 0u;
  xmmword_1EA831980 = 0u;
  v0 = qword_1ED452FD0;
  if (qword_1ED452FD0)
  {
    v1 = word_1ED452E84 == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = !v1;
  DWORD1(xmmword_1EA8319D0) = v2;
  if (word_1ED452E84)
  {
    *&xmmword_1EA831980 = qword_1ED452F08(6);
    if (word_1ED452E84)
    {
      v3 = qword_1ED452F08(7);
    }

    else
    {
      v3 = 0;
    }

    *(&xmmword_1EA8319F0 + 1) = v3;
    v0 = qword_1ED452FD0;
    LOBYTE(v2) = DWORD1(xmmword_1EA8319D0) != 0;
  }

  if (!dword_1ED452FDC)
  {
    LOBYTE(v2) = 0;
  }

  if ((v2 & (v0 == 0)) != 0)
  {
    v4 = dword_1ED452FDC;
  }

  else
  {
    v4 = 0;
  }

  DWORD2(xmmword_1EA8319D0) = v4;
  LODWORD(xmmword_1EA831990) = 10;
  LODWORD(xmmword_1EA8319D0) = 1;
  return 0;
}

double sub_1819A722C()
{
  result = 0.0;
  xmmword_1EA8319F0 = 0u;
  *&qword_1EA831A00 = 0u;
  xmmword_1EA8319D0 = 0u;
  *&dword_1EA8319E0 = 0u;
  xmmword_1EA8319B0 = 0u;
  *&qword_1EA8319C0 = 0u;
  xmmword_1EA831990 = 0u;
  unk_1EA8319A0 = 0u;
  xmmword_1EA831980 = 0u;
  return result;
}

int32x2_t *sub_1819A7250(__int32 a1, __int32 a2, int a3)
{
  v6 = 80 * SDWORD1(xmmword_1EA8319D0);
  v7 = sub_181902484(v6 + 88, 0x10B004071D573B0);
  v8 = v7;
  if (v7)
  {
    bzero(v7, v6 + 88);
    v9 = &xmmword_1EA831980;
    if (DWORD1(xmmword_1EA8319D0))
    {
      v9 = &v8[11];
      v8[13].i32[0] = 10;
    }

    if (!*(v9 + 23))
    {
      *(v9 + 23) = 1;
      *(v9 + 8) = v9 + 24;
      *(v9 + 9) = v9 + 24;
    }

    *v8 = v9;
    v8[2].i32[0] = a1;
    v8[2].i32[1] = a2;
    v8[3].i32[0] = ((a1 + 7) & 0xFFFFFFF8) + ((a2 + 7) & 0xFFFFFFF8) + 56;
    v8[3].i32[1] = a3 != 0;
    sub_1819A9278(v8);
    if (a3)
    {
      v8[4].i32[0] = 10;
      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      *(v9 + 3) = v10 + 10;
      *(v9 + 4) = v11 - v10;
      v12 = (v9 + 20);
    }

    else
    {
      v12 = v8 + 6;
    }

    v8[1] = v12;
    if (!v8[7].i32[1])
    {
      sub_1819A7828(v8);
      return 0;
    }
  }

  return v8;
}

_DWORD *sub_1819A7370(_DWORD *result, unsigned int a2)
{
  if (result[7])
  {
    v2 = result;
    v3 = *result;
    v4 = result[9];
    v5 = *(*result + 8);
    v6 = *(*result + 12);
    v7 = v4 - v5 + 2147418112;
    if (v7 >= a2)
    {
      v7 = a2;
    }

    v8 = v7 - v4 + v5;
    *(v3 + 8) = v8;
    *(v3 + 16) = v8 - v6 + 10;
    result[9] = v7;
    for (result[10] = 9 * v7 / 0xA; *(v3 + 20) > *(v3 + 8); --**(v18 + 8))
    {
      v11 = *(v3 + 72);
      if (*(v11 + 22))
      {
        break;
      }

      v13 = *(v11 + 40);
      v12 = *(v11 + 48);
      v14 = *(v11 + 32);
      *(v12 + 40) = v13;
      *(v13 + 48) = v12;
      *(v11 + 40) = 0;
      --*(v14 + 52);
      v15 = (*(v14 + 64) + 8 * (*(v11 + 16) % *(v14 + 60)));
      do
      {
        v16 = v15;
        v17 = *v15;
        v15 = (*v15 + 24);
      }

      while (v17 != v11);
      *v16 = *v15;
      --*(v14 + 56);
      v18 = *(v11 + 32);
      if (*(v11 + 20))
      {
        *(v11 + 24) = *(v18 + 72);
        *(v18 + 72) = v11;
      }

      else
      {
        result = sub_181935120(*v11);
      }
    }

    if (!v2[14])
    {
      v9 = *(v2 + 10);
      if (v9)
      {
        v10 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
          --qword_1ED456A90;
          result = off_1ED452EB0(v9);
          v9 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_13;
          }

          v10 = &xmmword_1ED452F28;
        }

        result = (*v10)(v9);
LABEL_13:
        *(v2 + 9) = 0;
        *(v2 + 10) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1819A7548(uint64_t a1, unsigned int a2, int a3)
{
  result = *(*(a1 + 64) + 8 * (a2 % *(a1 + 60)));
  if (result)
  {
    while (*(result + 16) != a2)
    {
      result = *(result + 24);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    v5 = *(result + 40);
    if (v5)
    {
      v6 = *(result + 48);
      *(v6 + 40) = v5;
      *(v5 + 48) = v6;
      *(result + 40) = 0;
      --*(*(result + 32) + 52);
    }
  }

  else
  {
LABEL_4:
    if (a3)
    {
      return sub_1819A93FC(a1, a2, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1819A75B8(unint64_t result, uint64_t a2, int a3)
{
  if (a3 || (v3 = *result, *(*result + 20) > *(*result + 8)))
  {
    v4 = *(a2 + 32);
    v5 = (*(v4 + 64) + 8 * (*(a2 + 16) % *(v4 + 60)));
    do
    {
      v6 = v5;
      v7 = *v5;
      v5 = (*v5 + 24);
    }

    while (v7 != a2);
    *v6 = *v5;
    --*(v4 + 56);
    v8 = *(a2 + 32);
    if (*(a2 + 20))
    {
      *(a2 + 24) = *(v8 + 72);
      *(v8 + 72) = a2;
    }

    else
    {
      result = sub_181935120(*a2);
    }

    v9 = *(v8 + 8);
    v10 = -1;
  }

  else
  {
    *(a2 + 48) = v3 + 24;
    v11 = *(v3 + 64);
    *(a2 + 40) = v11;
    *(v11 + 48) = a2;
    *(v3 + 64) = a2;
    v9 = (result + 52);
    v10 = 1;
  }

  *v9 += v10;
  return result;
}

uint64_t sub_1819A768C(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(result + 60);
  v5 = (*(result + 64) + 8 * (a3 % v4));
  do
  {
    v6 = v5;
    v7 = *v5;
    v5 = (*v5 + 24);
  }

  while (v7 != a2);
  *v6 = *(a2 + 24);
  v8 = a4 % v4;
  v9 = *(result + 64);
  v10 = *(v9 + 8 * v8);
  *(a2 + 16) = a4;
  *(a2 + 24) = v10;
  *(v9 + 8 * v8) = a2;
  if (*(result + 44) < a4)
  {
    *(result + 44) = a4;
  }

  return result;
}

unint64_t sub_1819A76EC(unint64_t result, unsigned int a2)
{
  v2 = *(result + 44);
  if (v2 >= a2)
  {
    v4 = result;
    v5 = *(result + 60);
    if (v2 - a2 >= v5)
    {
      v6 = v5 >> 1;
      v7 = (v5 >> 1) - 1;
    }

    else
    {
      v6 = a2 % v5;
      v7 = v2 % v5;
    }

    while (1)
    {
      v8 = (*(v4 + 64) + 8 * v6);
      v9 = *v8;
      if (*v8)
      {
        break;
      }

LABEL_16:
      if (v6 == v7)
      {
        *(v4 + 44) = a2 - 1;
        return result;
      }

      v6 = (v6 + 1) % *(v4 + 60);
    }

    while (1)
    {
      while (*(v9 + 16) < a2)
      {
        v8 = (v9 + 24);
        v9 = *(v9 + 24);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      --*(v4 + 56);
      *v8 = *(v9 + 24);
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(v9 + 48);
        *(v11 + 40) = v10;
        *(v10 + 48) = v11;
        *(v9 + 40) = 0;
        v12 = *(v9 + 32);
        --*(v12 + 52);
        if (!*(v9 + 20))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = *(v9 + 32);
        if (!*(v9 + 20))
        {
LABEL_14:
          result = sub_181935120(*v9);
          goto LABEL_15;
        }
      }

      *(v9 + 24) = *(v12 + 72);
      *(v12 + 72) = v9;
LABEL_15:
      --**(v12 + 8);
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_1819A7828(int32x2_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *a1;
  if (!a1[7].i32[0])
  {
    goto LABEL_19;
  }

  v4 = a1[5].u32[1];
  v5 = a1[7].u32[1];
  v6 = (v5 >> 1) - 1;
  v7 = v4 >= v5;
  if (v4 >= v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = a1[5].i32[1];
  }

  while (1)
  {
    v10 = v1[8];
    v11 = v8;
    for (i = *(*&v10 + 8 * v8); i; i = *(*&v10 + 8 * v11))
    {
      --v1[7].i32[0];
      *(*&v10 + 8 * v11) = *(i + 24);
      v13 = *(i + 40);
      if (v13)
      {
        v14 = *(i + 48);
        *(v14 + 40) = v13;
        *(v13 + 48) = v14;
        *(i + 40) = 0;
        v15 = *(i + 32);
        --*(v15 + 52);
        if (*(i + 20))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = *(i + 32);
        if (*(i + 20))
        {
LABEL_17:
          *(i + 24) = *(v15 + 72);
          *(v15 + 72) = i;
          goto LABEL_12;
        }
      }

      sub_181935120(*i);
LABEL_12:
      --**(v15 + 8);
    }

    if (v11 == v9)
    {
      break;
    }

    v8 = (v11 + 1) % v1[7].i32[1];
  }

  v3 = *v1;
LABEL_19:
  v16 = vsub_s32(v2[1], vrev64_s32(v1[4]));
  v2[1] = v16;
  v2[2].i32[0] = v16.i32[0] - v16.i32[1] + 10;
  while (*(*&v3 + 20) > *(*&v3 + 8))
  {
    v17 = *(*&v3 + 72);
    if (*(v17 + 22))
    {
      break;
    }

    v19 = *(v17 + 40);
    v18 = *(v17 + 48);
    v20 = *(v17 + 32);
    *(v18 + 40) = v19;
    *(v19 + 48) = v18;
    *(v17 + 40) = 0;
    --*(v20 + 52);
    v21 = (*(v20 + 64) + 8 * (*(v17 + 16) % *(v20 + 60)));
    do
    {
      v22 = v21;
      v23 = *v21;
      v21 = (*v21 + 24);
    }

    while (v23 != v17);
    *v22 = *v21;
    --*(v20 + 56);
    v24 = *(v17 + 32);
    if (*(v17 + 20))
    {
      *(v17 + 24) = *(v24 + 72);
      *(v24 + 72) = v17;
    }

    else
    {
      sub_181935120(*v17);
    }

    --**(v24 + 8);
  }

  v25 = v1[10];
  if (!v1[7].i32[0])
  {
    if (!*&v25)
    {
      goto LABEL_44;
    }

    v27 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(*&v25);
      --qword_1ED456A90;
      off_1ED452EB0(*&v25);
      v25 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_43;
      }

      v27 = &xmmword_1ED452F28;
    }

    (*v27)(v25);
LABEL_43:
    v1[9] = 0;
    v1[10] = 0;
    goto LABEL_44;
  }

  if (!*&v25)
  {
    goto LABEL_44;
  }

  v26 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_35;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(*&v25);
  --qword_1ED456A90;
  off_1ED452EB0(*&v25);
  v25 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v26 = &xmmword_1ED452F28;
LABEL_35:
    (*v26)(v25);
  }

LABEL_44:
  v28 = v1[8];
  if (!*&v28)
  {
    goto LABEL_51;
  }

  v29 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_50;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(*&v28);
  --qword_1ED456A90;
  off_1ED452EB0(*&v28);
  v28 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v29 = &xmmword_1ED452F28;
LABEL_50:
    (*v29)(v28);
  }

LABEL_51:
  v30 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_56:
    v32 = *v30;

    return v32(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v30 = &xmmword_1ED452F28;
    goto LABEL_56;
  }

  return result;
}

_DWORD *sub_1819A7C4C(_DWORD *result)
{
  if (result[7])
  {
    v1 = result;
    v2 = *result;
    v3 = *(*result + 8);
    for (*(v2 + 8) = 0; *(v2 + 20) > *(v2 + 8); --**(v13 + 8))
    {
      v6 = *(v2 + 72);
      if (*(v6 + 22))
      {
        break;
      }

      v8 = *(v6 + 40);
      v7 = *(v6 + 48);
      v9 = *(v6 + 32);
      *(v7 + 40) = v8;
      *(v8 + 48) = v7;
      *(v6 + 40) = 0;
      --*(v9 + 52);
      v10 = (*(v9 + 64) + 8 * (*(v6 + 16) % *(v9 + 60)));
      do
      {
        v11 = v10;
        v12 = *v10;
        v10 = (*v10 + 24);
      }

      while (v12 != v6);
      *v11 = *v10;
      --*(v9 + 56);
      v13 = *(v6 + 32);
      if (*(v6 + 20))
      {
        *(v6 + 24) = *(v13 + 72);
        *(v13 + 72) = v6;
      }

      else
      {
        result = sub_181935120(*v6);
      }
    }

    if (v1[14])
    {
      goto LABEL_12;
    }

    v4 = *(v1 + 10);
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
      --qword_1ED456A90;
      result = off_1ED452EB0(v4);
      v4 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_11;
      }

      v5 = &xmmword_1ED452F28;
    }

    result = (*v5)(v4);
LABEL_11:
    *(v1 + 9) = 0;
    *(v1 + 10) = 0;
LABEL_12:
    *(v2 + 8) = v3;
  }

  return result;
}

unint64_t sub_1819A7DE8(unint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = result;
  v5 = *(result + 32);
  if (v5)
  {
    v6 = *(*(result + 40) + 8 * (a4 % v5));
    if (v6)
    {
      while (*(v6 + 16) != a4)
      {
        v6 = *(v6 + 24);
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v7 = a3;
      v8 = a2;
      v9 = a4;
      v16 = v6;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        sub_181A1EE20();
      }

      result = sub_1819A8D0C(v4, &v16);
      v5 = *(v4 + 32);
      a4 = v9;
      a2 = v8;
      a3 = v7;
    }
  }

LABEL_9:
  v10 = (*(v4 + 40) + 8 * (a3 % v5));
  do
  {
    v11 = v10;
    v12 = *v10;
    v10 = (*v10 + 24);
  }

  while (v12 != a2);
  *v11 = *(a2 + 24);
  v13 = a4 % v5;
  v14 = *(v4 + 40);
  v15 = *(v14 + 8 * v13);
  *(a2 + 16) = a4;
  *(a2 + 24) = v15;
  *(v14 + 8 * v13) = a2;
  if (*(v4 + 120) < a4)
  {
    *(v4 + 120) = a4;
  }

  return result;
}

uint64_t sub_1819A7F00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 144);
    v3 = *(result + 144);
    if (v3)
    {
      v4 = (result + 152);
      v5 = (result + 160);
      v6 = (result + 176);
      v7 = MEMORY[0x1E69E9A60];
      while (1)
      {
        v20 = 1;
        result = MEMORY[0x1865D8700](*v7, v3[3], 0, &v20);
        if (result)
        {
          return result;
        }

        v9 = *(v3 + 32);
        if (v9 == 2)
        {
          v16 = *v3;
          if (!*v3 && *v2 != v3)
          {
            goto LABEL_40;
          }

          v11 = v3 + 1;
          v17 = v3[1];
          if (v17)
          {
            *v17 = v16;
            v16 = *v3;
          }

          if (v16)
          {
            *(v16 + 8) = v17;
          }

          if (*(v1 + 136) == v3)
          {
            *(v1 + 136) = v16;
          }

          if (*v2 != v3)
          {
            goto LABEL_39;
          }

          v13 = v2;
          goto LABEL_38;
        }

        if (v9 == 1)
        {
          break;
        }

        if (*(v3 + 32))
        {
          goto LABEL_40;
        }

        v10 = *v3;
        if (!*v3 && *v6 != v3)
        {
          goto LABEL_40;
        }

        v11 = v3 + 1;
        v12 = v3[1];
        if (v12)
        {
          *v12 = v10;
          v10 = *v3;
        }

        if (v10)
        {
          *(v10 + 8) = v12;
        }

        if (*(v1 + 168) == v3)
        {
          *(v1 + 168) = v10;
        }

        if (*v6 == v3)
        {
          v13 = (v1 + 176);
LABEL_38:
          *v13 = *v11;
        }

LABEL_39:
        *v3 = 0;
        v3[1] = 0;
LABEL_40:
        if (*(v3 + 33) + *(v3 + 34) >= *(v1 + 124))
        {
          v19 = *v5;
          if (*v5)
          {
            *v19 = v3;
            v3[1] = v19;
          }

          else
          {
            *v4 = v3;
          }

          v8 = (v1 + 160);
        }

        else
        {
          v18 = *v4;
          if (*v4)
          {
            v18[1] = v3;
            *v3 = v18;
          }

          else
          {
            *v5 = v3;
          }

          v8 = (v1 + 152);
        }

        *v8 = v3;
        *(v3 + 32) = 1;
        v3 = *v2;
        if (!*v2)
        {
          return result;
        }
      }

      v14 = *v3;
      if (!*v3 && *v5 != v3)
      {
        goto LABEL_40;
      }

      v11 = v3 + 1;
      v15 = v3[1];
      if (v15)
      {
        *v15 = v14;
        v14 = *v3;
      }

      if (v14)
      {
        *(v14 + 8) = v15;
      }

      if (*v4 == v3)
      {
        *v4 = v14;
      }

      if (*v5 != v3)
      {
        goto LABEL_39;
      }

      v13 = (v1 + 160);
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t sub_1819A811C(uint64_t result)
{
  if (*(result + 132) > *(result + 128))
  {
    v84[11] = v1;
    v84[12] = v2;
    v3 = result;
    v4 = *(result + 152);
    if (v4)
    {
      v5 = (result + 144);
      v6 = (result + 160);
      v80 = (result + 176);
      do
      {
        if (*(v3 + 132) <= *(v3 + 128))
        {
          break;
        }

        v8 = v4;
        v4 = *v4;
        if (*(v8 + 33))
        {
          continue;
        }

        if (*(v8 + 34))
        {
          v9 = *(v3 + 124);
          if (v9 >= 1)
          {
            for (i = 0; i < v9; ++i)
            {
              v84[0] = *(v8[2] + 8 * i);
              if (v84[0])
              {
                sub_1819A8D0C(v3, v84);
                v9 = *(v3 + 124);
              }
            }
          }
        }

        v11 = *(v8 + 32);
        if (v11 == 2)
        {
          v18 = *v8;
          if (*v8 || *v5 == v8)
          {
            v13 = v8 + 1;
            v19 = v8[1];
            if (v19)
            {
              *v19 = v18;
              v18 = *v8;
            }

            if (v18)
            {
              *(v18 + 8) = v19;
            }

            if (*(v3 + 136) == v8)
            {
              *(v3 + 136) = v18;
            }

            if (*v5 == v8)
            {
              v15 = (v3 + 144);
LABEL_45:
              *v15 = *v13;
            }

LABEL_46:
            *v8 = 0;
            v8[1] = 0;
          }
        }

        else if (v11 == 1)
        {
          v16 = *v8;
          if (*v8 || *v6 == v8)
          {
            v13 = v8 + 1;
            v17 = v8[1];
            if (v17)
            {
              *v17 = v16;
              v16 = *v8;
            }

            if (v16)
            {
              *(v16 + 8) = v17;
            }

            if (*(v3 + 152) == v8)
            {
              *(v3 + 152) = v16;
            }

            if (*v6 == v8)
            {
              v15 = (v3 + 160);
              goto LABEL_45;
            }

            goto LABEL_46;
          }
        }

        else if (!*(v8 + 32))
        {
          v12 = *v8;
          if (*v8 || *v80 == v8)
          {
            v13 = v8 + 1;
            v14 = v8[1];
            if (v14)
            {
              *v14 = v12;
              v12 = *v8;
            }

            if (v12)
            {
              *(v12 + 8) = v14;
            }

            if (*(v3 + 168) == v8)
            {
              *(v3 + 168) = v12;
            }

            if (*v80 == v8)
            {
              v15 = v80;
              goto LABEL_45;
            }

            goto LABEL_46;
          }
        }

        --*(v3 + 132);
        v20 = v8[2];
        if (v20)
        {
          v21 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v20);
            --qword_1ED456A90;
            off_1ED452EB0(v20);
            v20 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_54;
            }

            v21 = &xmmword_1ED452F28;
          }

          (*v21)(v20);
        }

LABEL_54:
        v22 = v8[3];
        if (v22)
        {
          MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v22, *(v3 + 8));
        }

        v7 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          result = off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            continue;
          }

          v7 = &xmmword_1ED452F28;
        }

        result = (*v7)(v8);
      }

      while (v4);
    }

    v23 = *(v3 + 136);
    if (v23)
    {
      v24 = (v3 + 144);
      v25 = (v3 + 160);
      v81 = (v3 + 176);
      do
      {
        if (*(v3 + 132) <= *(v3 + 128))
        {
          break;
        }

        v27 = v23;
        v23 = *v23;
        if (*(v27 + 33))
        {
          continue;
        }

        if (*(v27 + 34))
        {
          v28 = *(v3 + 124);
          if (v28 >= 1)
          {
            for (j = 0; j < v28; ++j)
            {
              v84[0] = *(v27[2] + 8 * j);
              if (v84[0])
              {
                sub_1819A8D0C(v3, v84);
                v28 = *(v3 + 124);
              }
            }
          }
        }

        v30 = *(v27 + 32);
        if (v30 == 2)
        {
          v37 = *v27;
          if (*v27 || *v24 == v27)
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

            if (*(v3 + 136) == v27)
            {
              *(v3 + 136) = v37;
            }

            if (*v24 == v27)
            {
              v34 = (v3 + 144);
LABEL_110:
              *v34 = *v32;
            }

LABEL_111:
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

            if (*(v3 + 152) == v27)
            {
              *(v3 + 152) = v35;
            }

            if (*v25 == v27)
            {
              v34 = (v3 + 160);
              goto LABEL_110;
            }

            goto LABEL_111;
          }
        }

        else if (!*(v27 + 32))
        {
          v31 = *v27;
          if (*v27 || *v81 == v27)
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

            if (*(v3 + 168) == v27)
            {
              *(v3 + 168) = v31;
            }

            if (*v81 == v27)
            {
              v34 = (v3 + 176);
              goto LABEL_110;
            }

            goto LABEL_111;
          }
        }

        --*(v3 + 132);
        v39 = v27[2];
        if (v39)
        {
          v40 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v39);
            --qword_1ED456A90;
            off_1ED452EB0(v39);
            v39 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_119;
            }

            v40 = &xmmword_1ED452F28;
          }

          (*v40)(v39);
        }

LABEL_119:
        v41 = v27[3];
        if (v41)
        {
          MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v41, *(v3 + 8));
        }

        v26 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v27);
          --qword_1ED456A90;
          result = off_1ED452EB0(v27);
          v27 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            continue;
          }

          v26 = &xmmword_1ED452F28;
        }

        result = (*v26)(v27);
      }

      while (v23);
    }

    v42 = *(v3 + 152);
    if (v42)
    {
      v82 = (v3 + 144);
      v43 = (v3 + 160);
      v44 = (v3 + 176);
      do
      {
        if (*(v3 + 132) <= *(v3 + 128))
        {
          break;
        }

        v46 = *v42;
        if (*(v42 + 34))
        {
          v47 = *(v3 + 124);
          if (v47 >= 1)
          {
            for (k = 0; k < v47; ++k)
            {
              v84[0] = *(v42[2] + 8 * k);
              if (v84[0])
              {
                sub_1819A8D0C(v3, v84);
                v47 = *(v3 + 124);
              }
            }
          }
        }

        v49 = *(v42 + 32);
        if (v49 == 2)
        {
          v56 = *v42;
          if (*v42 || *v82 == v42)
          {
            v51 = v42 + 1;
            v57 = v42[1];
            if (v57)
            {
              *v57 = v56;
              v56 = *v42;
            }

            if (v56)
            {
              *(v56 + 8) = v57;
            }

            if (*(v3 + 136) == v42)
            {
              *(v3 + 136) = v56;
            }

            if (*v82 == v42)
            {
              v53 = (v3 + 144);
LABEL_174:
              *v53 = *v51;
            }

LABEL_175:
            *v42 = 0;
            v42[1] = 0;
          }
        }

        else if (v49 == 1)
        {
          v54 = *v42;
          if (*v42 || *v43 == v42)
          {
            v51 = v42 + 1;
            v55 = v42[1];
            if (v55)
            {
              *v55 = v54;
              v54 = *v42;
            }

            if (v54)
            {
              *(v54 + 8) = v55;
            }

            if (*(v3 + 152) == v42)
            {
              *(v3 + 152) = v54;
            }

            if (*v43 == v42)
            {
              v53 = (v3 + 160);
              goto LABEL_174;
            }

            goto LABEL_175;
          }
        }

        else if (!*(v42 + 32))
        {
          v50 = *v42;
          if (*v42 || *v44 == v42)
          {
            v51 = v42 + 1;
            v52 = v42[1];
            if (v52)
            {
              *v52 = v50;
              v50 = *v42;
            }

            if (v50)
            {
              *(v50 + 8) = v52;
            }

            if (*(v3 + 168) == v42)
            {
              *(v3 + 168) = v50;
            }

            if (*v44 == v42)
            {
              v53 = (v3 + 176);
              goto LABEL_174;
            }

            goto LABEL_175;
          }
        }

        --*(v3 + 132);
        v58 = v42[2];
        if (!v58)
        {
          goto LABEL_183;
        }

        v59 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_182;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v58);
        --qword_1ED456A90;
        off_1ED452EB0(v58);
        v58 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v59 = &xmmword_1ED452F28;
LABEL_182:
          (*v59)(v58);
        }

LABEL_183:
        v60 = v42[3];
        if (v60)
        {
          MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v60, *(v3 + 8));
        }

        v45 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v42);
          --qword_1ED456A90;
          result = off_1ED452EB0(v42);
          v42 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_136;
          }

          v45 = &xmmword_1ED452F28;
        }

        result = (*v45)(v42);
LABEL_136:
        v42 = v46;
      }

      while (v46);
    }

    v61 = *(v3 + 136);
    if (v61)
    {
      v83 = (v3 + 144);
      v62 = (v3 + 160);
      v63 = (v3 + 176);
      do
      {
        if (*(v3 + 132) <= *(v3 + 128))
        {
          return result;
        }

        v65 = *v61;
        if (*(v61 + 34))
        {
          v66 = *(v3 + 124);
          if (v66 >= 1)
          {
            for (m = 0; m < v66; ++m)
            {
              v84[0] = *(v61[2] + 8 * m);
              if (v84[0])
              {
                sub_1819A8D0C(v3, v84);
                v66 = *(v3 + 124);
              }
            }
          }
        }

        v68 = *(v61 + 32);
        if (v68 == 2)
        {
          v75 = *v61;
          if (*v61 || *v83 == v61)
          {
            v70 = v61 + 1;
            v76 = v61[1];
            if (v76)
            {
              *v76 = v75;
              v75 = *v61;
            }

            if (v75)
            {
              *(v75 + 8) = v76;
            }

            if (*(v3 + 136) == v61)
            {
              *(v3 + 136) = v75;
            }

            if (*v83 == v61)
            {
              v72 = (v3 + 144);
LABEL_238:
              *v72 = *v70;
            }

LABEL_239:
            *v61 = 0;
            v61[1] = 0;
          }
        }

        else if (v68 == 1)
        {
          v73 = *v61;
          if (*v61 || *v62 == v61)
          {
            v70 = v61 + 1;
            v74 = v61[1];
            if (v74)
            {
              *v74 = v73;
              v73 = *v61;
            }

            if (v73)
            {
              *(v73 + 8) = v74;
            }

            if (*(v3 + 152) == v61)
            {
              *(v3 + 152) = v73;
            }

            if (*v62 == v61)
            {
              v72 = (v3 + 160);
              goto LABEL_238;
            }

            goto LABEL_239;
          }
        }

        else if (!*(v61 + 32))
        {
          v69 = *v61;
          if (*v61 || *v63 == v61)
          {
            v70 = v61 + 1;
            v71 = v61[1];
            if (v71)
            {
              *v71 = v69;
              v69 = *v61;
            }

            if (v69)
            {
              *(v69 + 8) = v71;
            }

            if (*(v3 + 168) == v61)
            {
              *(v3 + 168) = v69;
            }

            if (*v63 == v61)
            {
              v72 = (v3 + 176);
              goto LABEL_238;
            }

            goto LABEL_239;
          }
        }

        --*(v3 + 132);
        v77 = v61[2];
        if (!v77)
        {
          goto LABEL_247;
        }

        v78 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_246;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v77);
        --qword_1ED456A90;
        off_1ED452EB0(v77);
        v77 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v78 = &xmmword_1ED452F28;
LABEL_246:
          (*v78)(v77);
        }

LABEL_247:
        v79 = v61[3];
        if (v79)
        {
          MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v79, *(v3 + 8));
        }

        v64 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v61);
          --qword_1ED456A90;
          result = off_1ED452EB0(v61);
          v61 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_200;
          }

          v64 = &xmmword_1ED452F28;
        }

        result = (*v64)(v61);
LABEL_200:
        v61 = v65;
      }

      while (v65);
    }
  }

  return result;
}

uint64_t **sub_1819A8C80(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 == 2)
  {
    v5 = result + 17;
    return sub_1819A900C(v5, a2);
  }

  if (v2 == 1)
  {
    v5 = result + 19;
    return sub_1819A900C(v5, a2);
  }

  if (!*(a2 + 32))
  {
    v3 = *a2;
    if (*a2 || result[22] == a2)
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        *v4 = v3;
        v3 = *a2;
      }

      if (v3)
      {
        *(v3 + 8) = v4;
      }

      if (result[21] == a2)
      {
        result[21] = v3;
      }

      if (result[22] == a2)
      {
        result[22] = *(a2 + 8);
      }

      *a2 = 0;
      *(a2 + 8) = 0;
    }
  }

  return result;
}

unint64_t sub_1819A8D0C(int *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 56);
  *a2 = 0;
  if (v3)
  {
    *(*(v3 + 16) + 8 * ((*v2 - *(v3 + 24)) / (a1[1] + *a1))) = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    v5 = *(a1 + 5);
    if (v5)
    {
      v6 = (v5 + 8 * (*(v2 + 16) % v4));
      v7 = *v6;
      if (*v6 == v2)
      {
LABEL_9:
        *v6 = *(v2 + 24);
      }

      else
      {
        while (v7)
        {
          v8 = v7;
          v7 = *(v7 + 24);
          if (v7 == v2)
          {
            v6 = (v8 + 24);
            goto LABEL_9;
          }
        }
      }

      *(v2 + 24) = 0;
      --a1[7];
    }
  }

  v9 = *(v2 + 33);
  if (v9 > 3)
  {
LABEL_12:
    if (!v3)
    {
      goto LABEL_55;
    }

    v10 = *(v3 + 33) - 1;
    *(v3 + 33) = v10;
    if (v10)
    {
      if (*(v3 + 34) + v10 == a1[31] - 1)
      {
        v11 = a1;
        sub_1819A9068(a1, v3, 0);
        a1 = v11;
      }

      goto LABEL_55;
    }

    v16 = *(v3 + 32);
    if (v16 == 2)
    {
      v19 = a1;
      v20 = (a1 + 34);
    }

    else
    {
      if (v16 != 1)
      {
        if (!*(v3 + 32))
        {
          v17 = *v3;
          if (*v3 || *(a1 + 22) == v3)
          {
            v18 = *(v3 + 8);
            if (v18)
            {
              *v18 = v17;
              v17 = *v3;
            }

            if (v17)
            {
              *(v17 + 8) = v18;
            }

            if (*(a1 + 21) == v3)
            {
              *(a1 + 21) = v17;
            }

            if (*(a1 + 22) == v3)
            {
              *(a1 + 22) = *(v3 + 8);
            }

            *v3 = 0;
            *(v3 + 8) = 0;
          }
        }

        goto LABEL_46;
      }

      v19 = a1;
      v20 = (a1 + 38);
    }

    sub_1819A900C(v20, v3);
    a1 = v19;
LABEL_46:
    v21 = (a1 + 34);
    if (*(v3 + 33) + *(v3 + 34) >= a1[31])
    {
      v23 = *(a1 + 18);
      if (v23)
      {
        *v23 = v3;
        *(v3 + 8) = v23;
      }

      else
      {
        *v21 = v3;
      }

      v21 = (a1 + 36);
    }

    else
    {
      v22 = *v21;
      if (*v21)
      {
        *(v22 + 8) = v3;
        *v3 = v22;
      }

      else
      {
        *(a1 + 18) = v3;
      }
    }

    *v21 = v3;
    *(v3 + 32) = 2;
    goto LABEL_55;
  }

  v12 = (v2 + 40);
  v13 = *(v2 + 40);
  if (v13)
  {
    v14 = &a1[4 * v9 + 14];
  }

  else
  {
    v14 = &a1[4 * v9 + 14];
    if (*(v14 + 1) != v12)
    {
      goto LABEL_12;
    }
  }

  v15 = *(v2 + 48);
  if (v15)
  {
    *v15 = v13;
    v13 = *v12;
  }

  if (v13)
  {
    *(v13 + 8) = v15;
  }

  if (*v14 == v12)
  {
    *v14 = v13;
  }

  if (*(v14 + 1) == v12)
  {
    *(v14 + 1) = *(v2 + 48);
  }

  *v12 = 0;
  *(v2 + 48) = 0;
  *(v2 + 33) = 4;
  --a1[6];
  if (v3)
  {
    --*(v3 + 34);
  }

LABEL_55:
  if (dword_1ED452E80)
  {
    v24 = a1[1] + *a1;
    v25 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
      v25 = xmmword_1ED456AF0;
    }

    qword_1ED456A48 -= v24;
    --qword_1ED456A90;
    if (v25)
    {
      xmmword_1ED452F28(v25);
    }
  }

  return sub_181935120(v2);
}

uint64_t **sub_1819A900C(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 || result[1] == a2)
  {
    v3 = a2[1];
    if (v3)
    {
      *v3 = v2;
      v2 = *a2;
    }

    if (v2)
    {
      v2[1] = v3;
    }

    if (*result == a2)
    {
      *result = v2;
    }

    if (result[1] == a2)
    {
      result[1] = a2[1];
    }

    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t **sub_1819A9068(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = sub_1819A8C80(a1, a2);
  v7 = (a1 - 16 * a3 + 168);
  if (*(a2 + 33) + *(a2 + 34) >= *(a1 + 124))
  {
    v9 = *(a1 - 16 * a3 + 176);
    if (v9)
    {
      *v9 = a2;
      *(a2 + 8) = v9;
    }

    else
    {
      *v7 = a2;
    }

    v7 = (a1 - 16 * a3 + 176);
  }

  else
  {
    v8 = *v7;
    if (*v7)
    {
      *(v8 + 8) = a2;
      *a2 = v8;
    }

    else
    {
      *(a1 - 16 * a3 + 176) = a2;
    }
  }

  *v7 = a2;
  *(a2 + 32) = a3;
  return result;
}

uint64_t sub_1819A9100(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }

LABEL_6:
    *a3 = v3;
    return result;
  }

  result = *(*(a1 + 40) + 8 * (a2 % v3));
  if (!result)
  {
LABEL_5:
    v3 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  while (*(result + 16) != a2)
  {
    result = *(result + 24);
    if (!result)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v6 = *(result + 33);
  if (v6 <= 3)
  {
    v7 = (result + 40);
    if (*(result + 40) || *(a1 + 16 * v6 + 64) == v7)
    {
      v8 = a3;
      v9 = result;
      v10 = sub_1818A84DC(a1, *(result + 56), 1, &v15);
      if (v10 | v15)
      {
        result = 0;
        a3 = v8;
        goto LABEL_27;
      }

      result = v9;
      v11 = *(v9 + 33);
      a3 = v8;
      if (v11 <= 3)
      {
        v12 = *v7;
        if (*v7)
        {
          v13 = (a1 + 16 * v11 + 56);
        }

        else
        {
          v13 = (a1 + 56 + 16 * v11);
          if (v13[1] != v7)
          {
            goto LABEL_27;
          }
        }

        v14 = *(v9 + 48);
        if (v14)
        {
          *v14 = v12;
          v12 = *v7;
        }

        if (v12)
        {
          v12[1] = v14;
        }

        if (*v13 == v7)
        {
          *v13 = v12;
        }

        if (v13[1] == v7)
        {
          v13[1] = *(v9 + 48);
        }

        *v7 = 0;
        v7[1] = 0;
        *(v9 + 33) = 4;
        --*(a1 + 24);
      }
    }
  }

LABEL_27:
  v3 = 1;
  if (a3)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1819A9278(uint64_t a1)
{
  v2 = *(a1 + 60);
  if ((2 * v2) <= 0x100)
  {
    v3 = 256;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v2 && off_1EA831A10)
  {
    off_1EA831A10(a1);
  }

  v4 = sub_181902484(8 * v3, 0x2004093837F09);
  v5 = v4;
  if (v4)
  {
    bzero(v4, 8 * v3);
  }

  if (*(a1 + 60) && off_1EA831A18)
  {
    off_1EA831A18(v4);
  }

  if (v5)
  {
    v6 = *(a1 + 60);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(*(a1 + 64) + 8 * i);
        if (v8)
        {
          do
          {
            v9 = *(v8 + 16) % v3;
            v10 = *(v8 + 24);
            *(v8 + 24) = v5[v9];
            v5[v9] = v8;
            v8 = v10;
          }

          while (v10);
        }
      }
    }

    v11 = *(a1 + 64);
    if (!v11)
    {
      goto LABEL_26;
    }

    v12 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_26;
      }

      v12 = &xmmword_1ED452F28;
    }

    (*v12)(v11);
LABEL_26:
    *(a1 + 64) = v5;
    *(a1 + 60) = v3;
  }
}

uint64_t sub_1819A93FC(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *a1;
  v6 = *(a1 + 56);
  if (a3 == 1)
  {
    v7 = *(a1 + 52);
    v8 = v6 - v7;
    if (v6 - v7 >= *(v5 + 16) || v8 >= *(a1 + 40))
    {
      return 0;
    }

    if (dword_1EA8319E0 && *(a1 + 20) + *(a1 + 16) <= SHIDWORD(xmmword_1EA8319D0))
    {
      if (!dword_1EA831A0C)
      {
        goto LABEL_10;
      }
    }

    else if (!dword_1ED456B08)
    {
      goto LABEL_10;
    }

    if (v7 < v8)
    {
      return 0;
    }
  }

LABEL_10:
  if (v6 >= *(a1 + 60))
  {
    v9 = a3;
    sub_1819A9278(a1);
    a3 = v9;
  }

  v10 = *(a1 + 28);
  if (!v10)
  {
    goto LABEL_14;
  }

  result = *(v5 + 72);
  if (*(result + 22))
  {
    goto LABEL_14;
  }

  if ((*(a1 + 56) + 1) < *(a1 + 36))
  {
    if (dword_1EA8319E0 && *(a1 + 20) + *(a1 + 16) <= SHIDWORD(xmmword_1EA8319D0))
    {
      if (!dword_1EA831A0C)
      {
LABEL_14:
        result = *(a1 + 72);
        if (result)
        {
          goto LABEL_15;
        }

        if (!*(a1 + 56))
        {
          v16 = DWORD2(xmmword_1EA8319D0);
          if (DWORD2(xmmword_1EA8319D0))
          {
            if (*(a1 + 36) >= 3u)
            {
              v17 = a3;
              if (off_1EA831A10)
              {
                off_1EA831A10(0);
                v16 = DWORD2(xmmword_1EA8319D0);
              }

              if (v16 < 1)
              {
                v19 = -1024 * v16;
                v18 = *(a1 + 24);
              }

              else
              {
                v18 = *(a1 + 24);
                v19 = v18 * v16;
              }

              v28 = v18 * *(a1 + 36);
              if (v19 >= v28)
              {
                v29 = v28;
              }

              else
              {
                v29 = v19;
              }

              v30 = sub_181902484(v29, 1174865778);
              v31 = v30;
              *(a1 + 80) = v30;
              if (off_1EA831A18)
              {
                off_1EA831A18(v30);
              }

              if (v31)
              {
                v32 = xmmword_1ED452EC0(v31);
                v33 = *(a1 + 24);
                v34 = *(a1 + 16);
                v35 = *(a1 + 72);
                v36 = v32 / v33;
                do
                {
                  v37 = v31 + v34;
                  *v37 = v31;
                  *(v37 + 8) = v31 + v34 + 56;
                  *(v37 + 20) = 1;
                  *(v37 + 24) = v35;
                  *(v37 + 48) = 0;
                  v31 += v33;
                  v35 = v37;
                  --v36;
                }

                while (v36);
                result = v31 + v34 - v33;
                goto LABEL_15;
              }

              result = *(a1 + 72);
              a3 = v17;
              if (result)
              {
LABEL_15:
                v12 = (result + 24);
                *(a1 + 72) = *(result + 24);
LABEL_24:
                *v12 = 0;
                ++**(a1 + 8);
                goto LABEL_25;
              }
            }
          }
        }

        if (a3 == 1)
        {
          if (off_1EA831A10)
          {
            off_1EA831A10(0);
          }

          v13 = sub_1819352D4(*(a1 + 24));
          v14 = v13;
          if (off_1EA831A18)
          {
            off_1EA831A18(v13);
          }

          if (v14)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v14 = sub_1819352D4(*(a1 + 24));
          if (v14)
          {
LABEL_23:
            result = v14 + *(a1 + 16);
            *result = v14;
            *(result + 8) = result + 56;
            *(result + 20) = 0;
            v12 = (result + 48);
            goto LABEL_24;
          }
        }

        return 0;
      }
    }

    else if (!dword_1ED456B08)
    {
      goto LABEL_14;
    }
  }

  v20 = *(result + 32);
  v21 = (*(v20 + 64) + 8 * (*(result + 16) % *(v20 + 60)));
  do
  {
    v22 = v21;
    v23 = *v21;
    v21 = (*v21 + 24);
  }

  while (v23 != result);
  *v22 = *v21;
  --*(v20 + 56);
  v25 = *(result + 40);
  v24 = *(result + 48);
  v26 = *(result + 32);
  *(v24 + 40) = v25;
  *(v25 + 48) = v24;
  *(result + 40) = 0;
  --*(v26 + 52);
  if (*(v26 + 24) != *(a1 + 24))
  {
    if (*(result + 20))
    {
      *(result + 24) = *(v26 + 72);
      *(v26 + 72) = result;
    }

    else
    {
      v27 = a3;
      sub_181935120(*result);
      a3 = v27;
    }

    --**(v26 + 8);
    goto LABEL_14;
  }

  *(v5 + 20) += v10 - *(v26 + 28);
LABEL_25:
  v15 = a2 % *(a1 + 60);
  ++*(a1 + 56);
  *(result + 16) = a2;
  *(result + 24) = *(*(a1 + 64) + 8 * v15);
  *(result + 32) = a1;
  *(result + 40) = 0;
  **(result + 8) = 0;
  *(*(a1 + 64) + 8 * v15) = result;
  if (*(a1 + 44) < a2)
  {
    *(a1 + 44) = a2;
  }

  return result;
}

void *sub_1819A97C4(void *result, uint64_t a2)
{
  v4 = *(a2 + 80);
  v2 = (a2 + 80);
  v3 = v4;
  if (v4)
  {
    if (*v3 == result)
    {
LABEL_6:
      *v2 = *(v3 + 40);
      v6 = *v3;
      v7 = *(v3 + 24) - 1;
      *(v3 + 24) = v7;
      if (!v7)
      {
        v8 = *(v3 + 16);
        v9 = v6;
        if (v8)
        {
          (*(*v8 + 32))(v8);
          v9 = *v3;
        }

        v10 = *(v3 + 8);
        v11 = *(v10 + 16) - 1;
        *(v10 + 16) = v11;
        if (!v11)
        {
          v12 = *(v10 + 32);
          if (v12)
          {
            v12(*(v10 + 24));
          }

          sub_181929C84(v9, v10);
        }

        return sub_181929C84(v6, v3);
      }
    }

    else
    {
      while (1)
      {
        v5 = v3;
        v3 = *(v3 + 40);
        if (!v3)
        {
          break;
        }

        if (*v3 == result)
        {
          v2 = (v5 + 40);
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

void *sub_1819A98A8(void *result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      v4 = result;
      (*(v2 + 8))(*(v2 + 16));

      return sub_181929C84(v4, v2);
    }
  }

  return result;
}

uint64_t sub_1819A9910(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (*(a1 + 17) && (++*(a1 + 20), !*(a1 + 18)))
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    v9 = a4;
    sub_181932DEC(a1);
    a4 = v9;
    a3 = v8;
    a2 = v7;
    a1 = v6;
    if (*(v4 + 36))
    {
LABEL_5:
      v5 = 6;
      if (!*(a1 + 17))
      {
        return v5;
      }

      goto LABEL_18;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_5;
  }

  v10 = *v4;
  v11 = *a1;
  v12 = *(v10 + 344);
  if (!v12)
  {
    if (*(v10 + 9) != 5 || (v15 = a1, v16 = a2, v17 = a3, v18 = a4, sqlite3_exec(*a1, "PRAGMA table_list", 0, 0, 0), a4 = v18, a3 = v17, a2 = v16, a1 = v15, (v12 = *(v10 + 344)) == 0))
    {
      v5 = 0;
      if (!*(a1 + 17))
      {
        return v5;
      }

      goto LABEL_18;
    }
  }

  v13 = a1;
  if (a2)
  {
    v14 = *(v10 + 232);
  }

  else
  {
    v14 = 0;
  }

  v5 = sub_1818EFBBC(v12, v11, a2, v14, *(v10 + 240), *(v10 + 15), *(v10 + 200), *(v10 + 328), a3, a4);
  a1 = v13;
  if (*(v13 + 17))
  {
LABEL_18:
    v19 = *(a1 + 20) - 1;
    *(a1 + 20) = v19;
    if (!v19)
    {
      sub_181932ECC(a1);
    }
  }

  return v5;
}

uint64_t sub_1819A9A90(int a1, int a2, char *__s1, int a4, char *__s2)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      if (__s1[v5 - 1] != 32)
      {
        break;
      }

      --v5;
    }

    while (v5);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_11:
    LODWORD(v6) = 0;
    goto LABEL_12;
  }

  LODWORD(v5) = 0;
  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = a4;
  do
  {
    if (__s2[v6 - 1] != 32)
    {
      break;
    }

    --v6;
  }

  while (v6);
LABEL_12:
  v7 = v5 - v6;
  if (v5 >= v6)
  {
    LODWORD(v5) = v6;
  }

  LODWORD(result) = memcmp(__s1, __s2, v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v7;
  }
}

void sub_1819A9B1C(uint64_t a1)
{
  if (sqlite3_overload_function(a1, "MATCH", 2) == 7 && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v8 = *(a1 + 344);
    if (v8)
    {
      sub_181910730(v8, "out of memory", v2, v3, v4, v5, v6, v7, v10);
      for (i = *(a1 + 344); ; ++*(i + 52))
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
}

uint64_t sub_1819A9BC4(unsigned __int8 *a1)
{
  if (!a1)
  {
    v2 = "NULL";
    goto LABEL_11;
  }

  v1 = a1[113];
  if (v1 == 186)
  {
LABEL_5:
    v2 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v2);

    return sub_1819012D0(166473);
  }

  if (v1 != 118)
  {
    if (v1 != 109)
    {
      v2 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  result = sub_181894BA4(a1, "fts4aux", &unk_1EEF90480, 0, 0);
  if (result)
  {
    return result;
  }

  if (sqlite3_initialize())
  {
    return 7;
  }

  v5 = sub_181902484(40, 0x102004085CCE030);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  *v5 = 257;
  *(v5 + 4) = 0;
  v7 = (v5 + 4);
  *(v5 + 24) = 0;
  *(v5 + 12) = 0;
  *(v5 + 32) = 0;
  v17 = 7;
  if (sub_1818942AC(v5, "simple", 7, &unk_1EEF90548))
  {
    goto LABEL_27;
  }

  v17 = 7;
  if (sub_1818942AC(v6, "porter", 7, &unk_1EEF90580))
  {
    goto LABEL_27;
  }

  if (sub_1818942AC(v6, "unicode61", 10, &unk_1EEF90448))
  {
    v17 = 7;
    goto LABEL_27;
  }

  v8 = sub_181915678(a1, "fts3_tokenizer", 1, 524289, v6, sub_1819B2FE8, 0, 0, 0, 0, 0);
  if (v8)
  {
    v17 = v8;
    goto LABEL_27;
  }

  v17 = sub_181915678(a1, "fts3_tokenizer", 2, 524289, v6, sub_1819B2FE8, 0, 0, 0, 0, 0);
  if (v17 || (v17 = sqlite3_overload_function(a1, "snippet", -1)) != 0 || (v17 = sqlite3_overload_function(a1, "offsets", 1)) != 0 || (v17 = sqlite3_overload_function(a1, "matchinfo", 1)) != 0 || (v17 = sqlite3_overload_function(a1, "matchinfo", 2)) != 0 || (v17 = sqlite3_overload_function(a1, "optimize", 1)) != 0)
  {
LABEL_27:
    v9 = *(v6 + 8);
    *(v6 + 8) = 0;
    v10 = *(v6 + 24);
    if (!v10)
    {
      goto LABEL_34;
    }

    v11 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_34:
        *(v6 + 24) = 0;
        *(v6 + 16) = 0;
        if (v9)
        {
          while (1)
          {
            v12 = *v9;
            if (*(v6 + 1))
            {
              v13 = v9[3];
              if (v13)
              {
                v14 = &off_1ED452EB0;
                if (!dword_1ED452E80)
                {
                  goto LABEL_45;
                }

                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48 -= xmmword_1ED452EC0(v13);
                --qword_1ED456A90;
                off_1ED452EB0(v13);
                v13 = xmmword_1ED456AF0;
                if (xmmword_1ED456AF0)
                {
                  break;
                }
              }
            }

LABEL_46:
            v15 = &off_1ED452EB0;
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
                goto LABEL_37;
              }

              v15 = &xmmword_1ED452F28;
            }

            (*v15)(v9);
LABEL_37:
            v9 = v12;
            if (!v12)
            {
              goto LABEL_51;
            }
          }

          v14 = &xmmword_1ED452F28;
LABEL_45:
          (*v14)(v13);
          goto LABEL_46;
        }

LABEL_51:
        *v7 = 0;
        v16 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v6);
          --qword_1ED456A90;
          off_1ED452EB0(v6);
          v6 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            return v17;
          }

          v16 = &xmmword_1ED452F28;
        }

        (*v16)(v6);
        return v17;
      }

      v11 = &xmmword_1ED452F28;
    }

    (*v11)(v10);
    goto LABEL_34;
  }

  ++*(v6 + 32);
  result = sqlite3_create_module_v2(a1, "fts3", &stru_1EEF90380, v6, sub_1818EEBE4);
  if (!result)
  {
    ++*(v6 + 32);
    result = sqlite3_create_module_v2(a1, "fts4", &stru_1EEF90380, v6, sub_1818EEBE4);
    if (!result)
    {
      ++*(v6 + 32);

      return sqlite3_create_module_v2(a1, "fts3tokenize", &stru_1EEF905F8, v6, sub_1818EEBE4);
    }
  }

  return result;
}

uint64_t sub_1819AA178(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (sqlite3_initialize())
  {
    return 7;
  }

  v3 = sub_181902484(112, 0x10A00407F602E8ELL);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  v5 = (v3 + 96);
  *v3 = 3;
  *(v3 + 24) = sub_1819D348C;
  *(v3 + 8) = sub_1819D3554;
  *(v3 + 16) = sub_1819D3654;
  *(v3 + 32) = sub_1819D36FC;
  *(v3 + 40) = sub_1819D3814;
  *(v3 + 48) = a1;
  sqlite3_initialize();
  arc4random_buf(v5, 0x10uLL);
  *v5 = veorq_s8(*v5, xmmword_181A201C0);
  if (!a1)
  {
    v7 = "NULL";
    goto LABEL_27;
  }

  v6 = *(a1 + 113);
  if (v6 == 186)
  {
LABEL_9:
    v7 = "unopened";
LABEL_27:
    sqlite3_log(21, "API call with %s database connection pointer", v7);

    return sub_1819012D0(166489);
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  result = sub_181894BA4(a1, "fts5", &unk_1EEF906C0, v4, sub_1819D38B0);
  if (!result)
  {
    result = (v4)[3](v4, "snippet", 0, sub_1819FAAEC, 0);
    v8 = result == 0;
    if (!result)
    {
      result = (v4)[3](v4, "highlight", 0, sub_1819FB7C4, 0);
      v8 = result == 0;
      if (!result)
      {
        result = (v4)[3](v4, "bm25", 0, sub_1819FBD18, 0);
        v8 = result == 0;
        if (!result)
        {
          result = (v4)[3](v4, "fts5_get_locale", 0, sub_1819FC298, 0);
          v8 = result == 0;
        }
      }
    }

    if (v8)
    {
      v14[0] = xmmword_1EEF90868;
      v14[1] = *&off_1EEF90878;
      v15[0] = xmmword_1EEF90888;
      v15[1] = *&off_1EEF90898;
      v13[0] = xmmword_1EEF90848;
      v13[1] = *&off_1EEF90858;
      result = (v4)[1](v4, xmmword_1EEF90848, v4, v13 + 8, 0);
      v9 = result == 0;
      if (!result)
      {
        result = (v4)[1](v4, *&v14[0], v4, v14 + 8, 0);
        v9 = result == 0;
        if (!result)
        {
          result = (v4)[1](v4, *&v15[0], v4, v15 + 8, 0);
          v9 = result == 0;
        }
      }

      if (v9)
      {
        v12[0] = xmmword_1EEF908A8;
        v12[1] = *off_1EEF908B8;
        result = (v4)[4](v4, "porter", v4, v12, 0);
        if (!result)
        {
          v10 = *(a1 + 113);
          if (v10 == 186)
          {
            goto LABEL_25;
          }

          if (v10 != 118)
          {
            if (v10 != 109)
            {
              v11 = "invalid";
              goto LABEL_36;
            }

LABEL_25:
            v11 = "unopened";
LABEL_36:
            sqlite3_log(21, "API call with %s database connection pointer", v11);
            return sub_1819012D0(166489);
          }

          result = sub_181894BA4(a1, "fts5vocab", &unk_1EEF908C8, v4, 0);
          if (!result)
          {
            result = sub_181915678(a1, "fts5", 1, 1, v4, sub_1819D3AA4, 0, 0, 0, 0, 0);
            if (!result)
            {
              result = sub_181915678(a1, "fts5_source_id", 0, 2099201, v4, sub_1819D3B44, 0, 0, 0, 0, 0);
              if (!result)
              {
                result = sub_181915678(a1, "fts5_locale", 2, 19922945, v4, sub_1819D3B64, 0, 0, 0, 0, 0);
                if (!result)
                {
                  return sub_181915678(a1, "fts5_insttoken", 1, 18874369, v4, sub_1819D3EF4, 0, 0, 0, 0, 0);
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

uint64_t sub_1819AA698(uint64_t a1)
{
  result = sub_181915678(a1, "rtreenode", 2, 1, 0, sub_181A039A0, 0, 0, 0, 0, 0);
  if (result)
  {
    return result;
  }

  result = sub_181915678(a1, "rtreedepth", 1, 1, 0, sub_181A03E30, 0, 0, 0, 0, 0);
  if (result)
  {
    return result;
  }

  result = sub_181915678(a1, "rtreecheck", 0xFFFFFFFFLL, 1, 0, sub_181A03F80, 0, 0, 0, 0, 0);
  if (result)
  {
    return result;
  }

  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_16;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_9:
    v4 = "unopened";
LABEL_16:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(166489);
  }

  if (v3 != 118)
  {
    if (v3 == 109)
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = "invalid";
    goto LABEL_16;
  }

  result = sub_181894BA4(a1, "rtree", &unk_1EE341D88, 0, 0);
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 113);
  if (v5 == 186)
  {
    goto LABEL_9;
  }

  if (v5 != 118)
  {
    if (v5 == 109)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  return sub_181894BA4(a1, "rtree_i32", &unk_1EE341D88, 1, 0);
}

uint64_t sub_1819AA874(uint64_t a1)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_11;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(166473);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  return sub_181894BA4(a1, "dbstat", &unk_1EE341E50, 0, 0);
}

uint64_t sub_1819AA924()
{
  if (off_1ED453038)
  {
    return off_1ED453038(500);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1819AA940(uint64_t a1)
{
  if (!a1)
  {
    v2 = "NULL";
    goto LABEL_14;
  }

  v1 = *(a1 + 113);
  v2 = "unopened";
  if (v1 == 109)
  {
    goto LABEL_14;
  }

  if (v1 != 118)
  {
    if (v1 != 186)
    {
LABEL_5:
      v2 = "invalid";
    }

LABEL_14:
    sqlite3_log(21, "API call with %s database connection pointer", v2);

    return sub_1819012D0(166473);
  }

  result = sub_181894BA4(a1, "json_each", &unk_1EE341F18, 0, 0);
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 113);
  v2 = "unopened";
  if (v5 == 109 || v5 == 186)
  {
    goto LABEL_14;
  }

  if (v5 != 118)
  {
    goto LABEL_5;
  }

  return sub_181894BA4(a1, "json_tree", &unk_1EE341FE0, 0, 0);
}

uint64_t sub_1819AAA64(uint64_t a1)
{
  v5 = a1;
  if (!a1)
  {
    v2 = "NULL";
    goto LABEL_8;
  }

  v1 = *(a1 + 113);
  if (v1 != 186)
  {
    if (v1 != 118)
    {
      goto LABEL_4;
    }

    result = sub_181894BA4(a1, "bytecode", &unk_1EE3420A8, 0, 0);
    if (result)
    {
      return result;
    }

    v1 = *(a1 + 113);
    if (v1 != 186)
    {
      if (v1 == 118)
      {
        return sub_181894BA4(a1, "tables_used", &unk_1EE3420A8, &v5, 0);
      }

LABEL_4:
      if (v1 != 109)
      {
        v2 = "invalid";
        goto LABEL_8;
      }
    }
  }

  v2 = "unopened";
LABEL_8:
  sqlite3_log(21, "API call with %s database connection pointer", v2);

  return sub_1819012D0(166473);
}

void sub_1819AAB64(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  sqlite3_free(*(a1 + 24));
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    if (*(a1 + 1))
    {
      v4 = v3[3];
      if (v4)
      {
        sqlite3_free(v4);
      }
    }

    sqlite3_free(v3);
  }

  *(a1 + 4) = 0;
}

uint64_t sub_1819AABD8(int a1, const char **a2, uint64_t *a3)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v7 = sub_181902484(24, 0x107004072DB05ABLL);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *(v7 + 2) = 1;
  if (a1 < 1)
  {
    result = 0;
    goto LABEL_51;
  }

  v9 = 1;
  v10 = a1;
  do
  {
    v16 = *a2;
    v17 = strlen(*a2);
    if (v17 == 19)
    {
      if (*v16 == 0x645F65766F6D6572 && *(v16 + 1) == 0x6369746972636169 && *(v16 + 11) == 0x313D736369746972)
      {
        result = 0;
        *(v8 + 8) = 1;
        goto LABEL_8;
      }

      if (*v16 == 0x645F65766F6D6572 && *(v16 + 1) == 0x6369746972636169 && *(v16 + 11) == 0x303D736369746972)
      {
        result = 0;
        *(v8 + 8) = 0;
        goto LABEL_8;
      }

      if (*v16 == 0x645F65766F6D6572 && *(v16 + 1) == 0x6369746972636169 && *(v16 + 11) == 0x323D736369746972)
      {
        result = 0;
        *(v8 + 8) = 2;
        goto LABEL_8;
      }
    }

    else if (v17 < 11)
    {
      goto LABEL_49;
    }

    if (*v16 == 0x6168636E656B6F74 && *(v16 + 3) == 0x3D73726168636E65)
    {
      v11 = v17 - 11;
      v12 = (v16 + 11);
      v13 = v8;
      v14 = 1;
    }

    else
    {
      if (*v16 != 0x6F74617261706573 || *(v16 + 3) != 0x3D73726F74617261)
      {
LABEL_49:
        result = 1;
        goto LABEL_50;
      }

      v11 = v17 - 11;
      v12 = (v16 + 11);
      v13 = v8;
      v14 = 0;
    }

    result = sub_1819AB7D0(v13, v14, v12, v11);
    if (result)
    {
      break;
    }

LABEL_8:
    ++a2;
  }

  while (v9++ < v10);
  if (!result)
  {
    goto LABEL_51;
  }

LABEL_50:
  v26 = result;
  sub_1819AAE30(v8);
  result = v26;
  v8 = 0;
LABEL_51:
  *a3 = v8;
  return result;
}

uint64_t sub_1819AAE30(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v2);
      --qword_1ED456A90;
      off_1ED452EB0(v2);
      v2 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_9;
      }

      v3 = &xmmword_1ED452F28;
    }

    (*v3)(v2);
  }

LABEL_9:
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_14:
    (*v4)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1819AAF5C(uint64_t a1, const char *a2, int a3, uint64_t *a4)
{
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484(48, 0x10700408E35660CLL);
  if (!v8)
  {
    return 7;
  }

  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  *(v8 + 8) = a2;
  if (a2)
  {
    if (a3 < 0)
    {
      v9 = v8;
      v10 = strlen(a2);
      v8 = v9;
      *(v9 + 16) = v10;
    }

    else
    {
      *(v8 + 16) = a3;
    }
  }

  else
  {
    *(v8 + 16) = 0;
    *(v8 + 8) = &byte_181A2878D;
  }

  *a4 = v8;
  return 0;
}

uint64_t sub_1819AB00C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v3)(v2);
      goto LABEL_8;
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
      v3 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_13:
    (*v4)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1819AB130(uint64_t *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a1;
  v8 = *a1;
  v7 = a1[1];
  v9 = *(a1 + 4);
  v10 = (v7 + *(a1 + 5));
  v11 = (v7 + v9);
  v12 = byte_181A20D3A;
  do
  {
    while (1)
    {
      if (v10 >= v11)
      {
        return 101;
      }

      v13 = v10;
      v15 = *v10++;
      v14 = v15;
      v16 = v15 - 192;
      if (v15 < 0xC0)
      {
        goto LABEL_13;
      }

      v14 = byte_181A20D3A[v16];
      if (v10 < v11)
      {
        v17 = v7 + v9 - 1 - v13;
        while (1)
        {
          v18 = *v10;
          if ((*v10 & 0xC0) != 0x80)
          {
            break;
          }

          ++v10;
          v14 = v18 & 0x3F | (v14 << 6);
          if (!--v17)
          {
            v10 = (v7 + v9);
            break;
          }
        }
      }

      v19 = 65533;
      if (v14 >> 1 != 0x7FFF && v14 >= 0x80 && (v14 & 0xFFFFF800) != 0xD800)
      {
LABEL_13:
        if (v14 <= 0x7F)
        {
          v20 = (~dword_181A253C8[v14 >> 5] >> v14) & 1;
          goto LABEL_26;
        }

        if (v14 >> 22)
        {
          v20 = 1;
          goto LABEL_26;
        }

        v19 = v14;
      }

      v21 = 0;
      v22 = 0;
      v23 = 405;
      v24 = (v19 << 10) | 0x3FF;
      do
      {
        v25 = (v23 + v21) >> 1;
        v26 = dword_181A24D70[v25];
        if (v24 < v26)
        {
          v23 = v25 - 1;
        }

        else
        {
          v22 = (v23 + v21) >> 1;
        }

        if (v24 >= v26)
        {
          v21 = v25 + 1;
        }
      }

      while (v23 >= v21);
      v20 = (dword_181A24D70[v22] & 0x3FFu) + (dword_181A24D70[v22] >> 10) <= v19;
      v14 = v19;
LABEL_26:
      v27 = *(v8 + 12);
      v28 = __OFSUB__(v27, 1);
      v29 = v27 - 1;
      if (v29 < 0 == v28)
      {
        break;
      }

LABEL_2:
      if (v20)
      {
        goto LABEL_35;
      }
    }

    v30 = 0;
    while (1)
    {
      v31 = (v30 + v29) >> 1;
      v32 = *(*(v8 + 16) + 4 * v31);
      if (v32 == v14)
      {
        break;
      }

      if (v32 >= v14)
      {
        v29 = v31 - 1;
      }

      else
      {
        v30 = v31 + 1;
      }

      if (v29 < v30)
      {
        goto LABEL_2;
      }
    }
  }

  while (v20 == 1);
LABEL_35:
  v88 = v7 + v9 - 1;
  v33 = v6[4];
  v34 = v33;
  while (1)
  {
    v35 = *(v6 + 10);
    if (&v34[-v33] < v35 - 4)
    {
      goto LABEL_45;
    }

    v36 = v13;
    v37 = v11;
    v38 = v8;
    v39 = v12;
    v40 = v6;
    v41 = v35 + 64;
    v42 = sqlite3_initialize();
    if (!v41 || v42 != 0)
    {
      return 7;
    }

    v44 = sub_18190287C(v33, v41, 1801012206);
    if (!v44)
    {
      return 7;
    }

    v6 = v40;
    v34 = &v34[v44 - v40[4]];
    v40[4] = v44;
    *(v40 + 10) += 64;
    v12 = v39;
    v8 = v38;
    v11 = v37;
    v13 = v36;
LABEL_45:
    if (v14 <= 127)
    {
      if (v14 - 65 < 0x1A)
      {
        v14 |= 0x20u;
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    if (HIWORD(v14))
    {
      if (v14 - 66560 < 0x28)
      {
        v14 += 40;
      }

      goto LABEL_81;
    }

    v45 = 0;
    v46 = *(v8 + 8);
    v47 = 162;
    v48 = -1;
    do
    {
      v49 = (v47 + v45) / 2;
      v50 = word_181A253D8[2 * v49];
      if (v14 >= v50)
      {
        v45 = v49 + 1;
      }

      else
      {
        v47 = v49 - 1;
      }

      if (v14 >= v50)
      {
        v48 = v49;
      }
    }

    while (v47 >= v45);
    v51 = &word_181A253D8[2 * v48];
    v52 = *v51;
    if (*(v51 + 3) + v52 <= v14 || (v53 = *(v51 + 2), ((v14 ^ v52) & v53 & 1) != 0))
    {
      if (!v46)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v14 = (*(&unk_181A2778C + (v53 & 0xFE)) + v14);
      if (!v46)
      {
        goto LABEL_74;
      }
    }

    v54 = 0;
    v55 = 0;
    v56 = 125;
    v57 = (8 * v14) | 7;
    do
    {
      v58 = (v56 + v54) / 2;
      v59 = word_181A27826[v58];
      if (v57 < v59)
      {
        v56 = v58 - 1;
      }

      else
      {
        v55 = (v56 + v54) / 2;
      }

      if (v57 >= v59)
      {
        v54 = v58 + 1;
      }
    }

    while (v56 >= v54);
    if (v46 == 2 || (byte_181A27922[v55] & 0x80000000) == 0)
    {
      v60 = word_181A27826[v55];
      if (((v60 & 7) + (v60 >> 3)) < v14)
      {
        goto LABEL_75;
      }

      v14 = byte_181A27922[v55] & 0x7F;
    }

LABEL_74:
    if (!v14)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v14 <= 127)
    {
      *v34++ = v14;
      goto LABEL_82;
    }

    if (v14 <= 0x7FF)
    {
      *v34 = (v14 >> 6) | 0xC0;
      v34[1] = v14 & 0x3F | 0x80;
      v34 += 2;
      goto LABEL_82;
    }

    if (!HIWORD(v14))
    {
      *v34 = (v14 >> 12) | 0xE0;
      v34[1] = (v14 >> 6) & 0x3F | 0x80;
      v34[2] = v14 & 0x3F | 0x80;
      v34 += 3;
      goto LABEL_82;
    }

LABEL_81:
    *v34 = (v14 >> 18) & 7 | 0xF0;
    v34[1] = (v14 >> 12) & 0x3F | 0x80;
    v34[2] = (v14 >> 6) & 0x3F | 0x80;
    v34[3] = v14 & 0x3F | 0x80;
    v34 += 4;
LABEL_82:
    LODWORD(v61) = v10;
    if (v10 >= v11)
    {
      goto LABEL_123;
    }

    v62 = *v10;
    v61 = v10 + 1;
    v14 = v62;
    v63 = v62 - 192;
    if (v62 < 0xC0)
    {
      goto LABEL_92;
    }

    v14 = v12[v63];
    if (v61 < v11)
    {
      v64 = v88 - v10;
      while (1)
      {
        v65 = *v61;
        if ((*v61 & 0xC0) != 0x80)
        {
          break;
        }

        ++v61;
        v14 = v65 & 0x3F | (v14 << 6);
        if (!--v64)
        {
          v61 = v11;
          break;
        }
      }
    }

    v66 = 65533;
    if (v14 >> 1 != 0x7FFF && v14 >= 0x80 && (v14 & 0xFFFFF800) != 0xD800)
    {
LABEL_92:
      if (v14 <= 0x7F)
      {
        v67 = (~dword_181A253C8[v14 >> 5] >> v14) & 1;
        goto LABEL_105;
      }

      if (v14 >> 22)
      {
        v67 = 1;
        goto LABEL_105;
      }

      v66 = v14;
    }

    v68 = 0;
    v69 = 0;
    v70 = 405;
    v71 = (v66 << 10) | 0x3FF;
    do
    {
      v72 = (v70 + v68) >> 1;
      v73 = dword_181A24D70[v72];
      if (v71 < v73)
      {
        v70 = v72 - 1;
      }

      else
      {
        v69 = (v70 + v68) >> 1;
      }

      if (v71 >= v73)
      {
        v68 = v72 + 1;
      }
    }

    while (v70 >= v68);
    v67 = (dword_181A24D70[v69] & 0x3FFu) + (dword_181A24D70[v69] >> 10) <= v66;
    v14 = v66;
LABEL_105:
    v74 = *(v8 + 12);
    v28 = __OFSUB__(v74, 1);
    v75 = v74 - 1;
    if (v75 < 0 != v28)
    {
LABEL_112:
      if (v67)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v76 = 0;
      while (1)
      {
        v77 = (v76 + v75) >> 1;
        v78 = *(*(v8 + 16) + 4 * v77);
        if (v78 == v14)
        {
          break;
        }

        if (v78 >= v14)
        {
          v75 = v77 - 1;
        }

        else
        {
          v76 = v77 + 1;
        }

        if (v75 < v76)
        {
          goto LABEL_112;
        }
      }

      if (v67 != 1)
      {
        goto LABEL_36;
      }
    }

    if (v14 - 818 < 0xFFFFFFCE || (v14 >= 0x320 ? (v79 = -32) : (v79 = 0), v14 >= 0x320 ? (v80 = 221688) : (v80 = 134389727), ((v80 >> (v14 + v79)) & 1) == 0))
    {
LABEL_123:
      result = 0;
      *(v6 + 5) = v61 - *(v6 + 2);
      v82 = v6[4];
      *a2 = v82;
      *a3 = v34 - v82;
      LODWORD(v82) = *(v6 + 2);
      *a4 = v13 - v82;
      *a5 = v10 - v82;
      LODWORD(v82) = *(v6 + 6);
      *(v6 + 6) = v82 + 1;
      *a6 = v82;
      return result;
    }

LABEL_36:
    v33 = v6[4];
    v10 = v61;
  }
}

uint64_t sub_1819AB7D0(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  v5 = a4;
  v6 = &a3[a4];
  v7 = a3;
  do
  {
    v9 = v7 + 1;
    v8 = *v7;
    if (v8 < 0xC0)
    {
      ++v7;
    }

    else
    {
      v8 = byte_181A20D3A[v8 - 192];
      if (v9 < v6)
      {
        v10 = v6 - 1 - v7;
        while (1)
        {
          v11 = *v9;
          if ((*v9 & 0xC0) != 0x80)
          {
            break;
          }

          ++v9;
          v8 = v11 & 0x3F | (v8 << 6);
          if (!--v10)
          {
            v7 = v6;
            goto LABEL_13;
          }
        }
      }

      v7 = v9;
LABEL_13:
      v12 = 65533;
      if (v8 >> 1 == 0x7FFF || v8 < 0x80 || (v8 & 0xFFFFF800) == 0xD800)
      {
        goto LABEL_21;
      }
    }

    if (v8 <= 0x7F)
    {
      if (((~dword_181A253C8[v8 >> 5] >> v8) & 1) == a2)
      {
        continue;
      }

LABEL_31:
      if (v8 - 818 < 0xFFFFFFCE || (v8 >= 0x320 ? (v20 = -32) : (v20 = 0), v8 >= 0x320 ? (v21 = 221688) : (v21 = 134389727), ((v21 >> (v8 + v20)) & 1) == 0))
      {
        ++v4;
      }

      continue;
    }

    if (v8 >> 22)
    {
      if (a2 == 1)
      {
        continue;
      }

      goto LABEL_31;
    }

    v12 = v8;
LABEL_21:
    v13 = 0;
    v14 = 0;
    v15 = 405;
    v16 = (v12 << 10) | 0x3FF;
    do
    {
      v17 = (v15 + v13) >> 1;
      v18 = dword_181A24D70[v17];
      if (v16 < v18)
      {
        v15 = v17 - 1;
      }

      else
      {
        v14 = (v15 + v13) >> 1;
      }

      if (v16 >= v18)
      {
        v13 = v17 + 1;
      }
    }

    while (v15 >= v13);
    v19 = (dword_181A24D70[v14] & 0x3FFu) + (dword_181A24D70[v14] >> 10) <= v12;
    v8 = v12;
    if (v19 != a2)
    {
      goto LABEL_31;
    }
  }

  while (v7 < v6);
  if (!v4)
  {
    return 0;
  }

  v22 = v5;
  v25 = *(a1 + 16);
  v27 = *(a1 + 12) + v4;
  v28 = sqlite3_initialize();
  result = 7;
  if (v27 && !v28)
  {
    v30 = sub_18190287C(v25, 4 * v27, 0x100004052888210);
    if (v30)
    {
      v31 = a1;
      v32 = *(a1 + 12);
      v33 = a3;
      while (1)
      {
        v35 = v33 + 1;
        v34 = *v33;
        if (v34 < 0xC0)
        {
          ++v33;
        }

        else
        {
          v34 = byte_181A20D3A[v34 - 192];
          if (v35 < v6)
          {
            v36 = &a3[v22 - 1] - v33;
            while (1)
            {
              v37 = *v35;
              if ((*v35 & 0xC0) != 0x80)
              {
                break;
              }

              ++v35;
              v34 = v37 & 0x3F | (v34 << 6);
              if (!--v36)
              {
                v33 = v6;
                goto LABEL_55;
              }
            }
          }

          v33 = v35;
LABEL_55:
          v38 = 65533;
          if (v34 >> 1 == 0x7FFF || v34 < 0x80 || (v34 & 0xFFFFF800) == 0xD800)
          {
            goto LABEL_63;
          }
        }

        if (v34 <= 0x7F)
        {
          if (((~dword_181A253C8[v34 >> 5] >> v34) & 1) != a2)
          {
            goto LABEL_73;
          }

          goto LABEL_46;
        }

        if (v34 >> 22)
        {
          if (a2 != 1)
          {
            goto LABEL_73;
          }

          goto LABEL_46;
        }

        v38 = v34;
LABEL_63:
        v39 = 0;
        v40 = 0;
        v41 = 405;
        v42 = (v38 << 10) | 0x3FF;
        do
        {
          v43 = (v41 + v39) >> 1;
          v44 = dword_181A24D70[v43];
          if (v42 < v44)
          {
            v41 = v43 - 1;
          }

          else
          {
            v40 = (v41 + v39) >> 1;
          }

          if (v42 >= v44)
          {
            v39 = v43 + 1;
          }
        }

        while (v41 >= v39);
        v45 = (dword_181A24D70[v40] & 0x3FFu) + (dword_181A24D70[v40] >> 10) <= v38;
        v34 = v38;
        if (v45 != a2)
        {
LABEL_73:
          if (v34 - 818 < 0xFFFFFFCE || (v34 >= 0x320 ? (v46 = -32) : (v46 = 0), v34 >= 0x320 ? (v47 = 221688) : (v47 = 134389727), ((v47 >> (v34 + v46)) & 1) == 0))
          {
            if (v32 < 1)
            {
              LODWORD(v48) = 0;
            }

            else
            {
              v48 = 0;
              while (*(v30 + 4 * v48) < v34)
              {
                if (v32 == ++v48)
                {
                  LODWORD(v48) = v32;
                  goto LABEL_45;
                }
              }

              if (v32 > v48)
              {
                v49 = v32 - v48;
                v50 = v32;
                if (v49 < 8)
                {
                  goto LABEL_92;
                }

                v50 = v32 - (v49 & 0xFFFFFFFFFFFFFFF8);
                v51 = (v30 - 16 + 4 * v32);
                v52 = v49 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v53 = *(v51 - 1);
                  *(v51 + 4) = *v51;
                  *(v51 - 12) = v53;
                  v51 -= 2;
                  v52 -= 8;
                }

                while (v52);
                if (v49 != (v49 & 0xFFFFFFFFFFFFFFF8))
                {
LABEL_92:
                  v54 = (v30 + 4 * v50);
                  v55 = v54;
                  do
                  {
                    v56 = *--v55;
                    *v54 = v56;
                    --v50;
                    v54 = v55;
                  }

                  while (v50 > v48);
                }
              }
            }

LABEL_45:
            *(v30 + 4 * v48) = v34;
            ++v32;
          }
        }

LABEL_46:
        if (v33 >= v6)
        {
          *(v31 + 16) = v30;
          result = 0;
          *(v31 + 12) = v32;
          return result;
        }
      }
    }

    return 7;
  }

  return result;
}

uint64_t sub_1819ABC70(sqlite3 *a1, int a2, int a3, uint64_t a4, void *a5, char **a6)
{
  if ((a3 - 6) < 0xFFFFFFFE)
  {
    goto LABEL_2;
  }

  v12 = *(a4 + 8);
  v13 = strlen(v12);
  if (a3 != 5)
  {
    v17 = v13;
    v18 = 24;
    goto LABEL_18;
  }

  if (!v12 || v13 != 4)
  {
    goto LABEL_2;
  }

  if ((*v12 & 0xDF) != 0x54)
  {
    v16 = 116;
    goto LABEL_16;
  }

  v14 = (v12 + 1);
  if ((v12[1] & 0xDF) != 0x45)
  {
    v16 = 101;
LABEL_15:
    v12 = v14;
LABEL_16:
    if (v16 == byte_181A20298[*v12])
    {
      goto LABEL_17;
    }

LABEL_2:
    sub_1819AD2A4(a6, "invalid arguments to fts4aux constructor");
    return 1;
  }

  v14 = (v12 + 2);
  if ((v12[2] & 0xDF) != 0x4D)
  {
    v16 = 109;
    goto LABEL_15;
  }

  v15 = *(v12 + 3);
  v12 += 3;
  if ((v15 & 0xFFFFFFDF) != 0x50)
  {
    v16 = 112;
    goto LABEL_16;
  }

LABEL_17:
  v12 = *(a4 + 24);
  v17 = strlen(v12);
  v18 = 32;
LABEL_18:
  v19 = *(a4 + v18);
  v20 = strlen(v19);
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)");
  if (!result)
  {
    if (sqlite3_initialize())
    {
      return 7;
    }

    v21 = v17;
    v22 = v20;
    v23 = v21 + v20;
    v24 = sub_181902484(v23 + 562, 0x107004075084CA3);
    if (!v24)
    {
      return 7;
    }

    else
    {
      v25 = v24;
      bzero(v24, v23 + 562);
      v25[3] = v25 + 4;
      v25[8] = v25 + 70;
      v25[9] = v25 + v21 + 561;
      v25[7] = a1;
      *(v25 + 131) = 1;
      memcpy(v25 + 70, v12, v21);
      memcpy(v25 + v21 + 561, v19, v22);
      v26 = *(v25[3] + 40);
      v27 = *v26;
      if ((v27 - 34) <= 0x3E && ((1 << (v27 - 34)) & 0x4200000000000021) != 0)
      {
        if (v27 == 91)
        {
          v29 = 93;
        }

        else
        {
          v29 = *v26;
        }

        v30 = v26[1];
        if (v26[1])
        {
          v31 = 0;
          v32 = 1;
          v33 = 1;
          while (1)
          {
            if (v30 == v29)
            {
              if (v26[v32 + 1] != v29)
              {
LABEL_36:
                v31 = v31;
                goto LABEL_38;
              }

              v26[v31] = v29;
              v33 += 2;
            }

            else
            {
              ++v33;
              v26[v31] = v30;
            }

            ++v31;
            v32 = v33;
            v30 = v26[v33];
            if (!v26[v33])
            {
              goto LABEL_36;
            }
          }
        }

        v31 = 0;
LABEL_38:
        v26[v31] = 0;
      }

      result = 0;
      *a5 = v25;
    }
  }

  return result;
}

uint64_t sub_1819ABEF0(uint64_t a1, unsigned int *a2)
{
  if (a2[4] == 1)
  {
    v2 = *(a2 + 3);
    if (!*v2 && !*(v2 + 4))
    {
      a2[15] = 1;
    }
  }

  v3 = *a2;
  if (v3 <= 0)
  {
    a2[10] = 0;
    *(a2 + 8) = 0x40D3880000000000;
    return 0;
  }

  v4 = 0;
  v5 = (*(a2 + 1) + 4);
  v6 = -1;
  v7 = -1;
  v8 = -1;
  v9 = -1;
  do
  {
    if (v5[1])
    {
      v10 = *v5;
      v11 = *(v5 - 1);
      if (v10 == 2)
      {
        v12 = v4;
      }

      else
      {
        v12 = v6;
      }

      if (v10 == 16 || v10 == 8)
      {
        v14 = v4;
      }

      else
      {
        v14 = v8;
      }

      if (v10 == 4 || v10 == 32)
      {
        v16 = v4;
      }

      else
      {
        v16 = v9;
      }

      if (!v11)
      {
        v9 = v16;
        v8 = v14;
        v6 = v12;
      }

      if (v10 == 2 && v11 == 4)
      {
        v7 = v4;
      }
    }

    ++v4;
    v5 += 12;
  }

  while (v3 != v4);
  if ((v6 & 0x80000000) != 0)
  {
    a2[10] = 0;
    *(a2 + 8) = 0x40D3880000000000;
    v18 = 1;
    if ((v9 & 0x80000000) != 0)
    {
      v21 = 4;
      v19 = 20000.0;
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *(*(a2 + 4) + 8 * v9) = 1;
      a2[10] = 2;
      *(a2 + 8) = 0x40C3880000000000;
      v21 = 6;
      v19 = 10000.0;
      v18 = 2;
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_38;
      }
    }

    *(*(a2 + 4) + 8 * v8) = v18;
    a2[10] = v21;
    ++v18;
    v19 = v19 * 0.5;
    *(a2 + 8) = v19;
    goto LABEL_38;
  }

  a2[10] = 1;
  *(*(a2 + 4) + 8 * v6) = 1;
  *(a2 + 8) = 0x4014000000000000;
  v18 = 2;
  v19 = 5.0;
LABEL_38:
  if ((v7 & 0x80000000) == 0)
  {
    *(*(a2 + 4) + 8 * v7) = v18;
    *(a2 + 8) = v19 + -1.0;
  }

  return 0;
}

uint64_t sub_1819AC088(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 24);
  for (i = 112; i != 432; i += 8)
  {
    sqlite3_finalize(*(v2 + i));
  }

  v4 = *(v2 + 472);
  if (v4)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v5)(v4);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (v1)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_16:
      (*v6)(v1);
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
    --qword_1ED456A90;
    off_1ED452EB0(v1);
    v1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
      goto LABEL_16;
    }
  }

  return 0;
}

double sub_1819AC1E0(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v4 = sub_181902484(168, 0x10F0040C252621CLL);
    if (v4)
    {
      *(v4 + 160) = 0;
      result = 0.0;
      *(v4 + 128) = 0u;
      *(v4 + 144) = 0u;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 80) = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 48) = 0u;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t sub_1819AC254(uint64_t a1)
{
  v1 = a1;
  v2 = *(*a1 + 24);
  v3 = *(v2 + 480);
  if (v3)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = v5[3];
    if (v6)
    {
      xmmword_1ED452F18(v6);
    }

    sub_181929C84(v5, v3);
    v7 = v5[3];
    if (v7)
    {
      xmmword_1ED452F28(v7);
    }

    sqlite3_finalize(v4);
  }

  *(v2 + 480) = 0;
  if (*(v1 + 16) >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(*(v1 + 8) + 8 * v8);
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(v9 + 80);
      if (v10)
      {
        v11 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_18;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
        --qword_1ED456A90;
        off_1ED452EB0(v10);
        v10 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          break;
        }
      }

LABEL_19:
      if (!*(v9 + 5))
      {
        v12 = *(v9 + 40);
        if (v12)
        {
          v13 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
            --qword_1ED456A90;
            off_1ED452EB0(v12);
            v12 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_27;
            }

            v13 = &xmmword_1ED452F28;
          }

          (*v13)(v12);
        }
      }

LABEL_27:
      v14 = *(v9 + 56);
      if (v14)
      {
        v15 = v14[3];
        v16 = v14[4];
        v17 = v16[3];
        if (v17)
        {
          xmmword_1ED452F18(v17);
        }

        sub_181929C84(v16, v14);
        v18 = v16[3];
        if (v18)
        {
          xmmword_1ED452F28(v18);
        }

        sqlite3_finalize(v15);
      }

      v19 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
        --qword_1ED456A90;
        off_1ED452EB0(v9);
        v9 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_10;
        }

        v19 = &xmmword_1ED452F28;
      }

      (*v19)(v9);
LABEL_10:
      if (++v8 >= *(v1 + 16))
      {
        goto LABEL_38;
      }
    }

    v11 = &xmmword_1ED452F28;
LABEL_18:
    (*v11)(v10);
    goto LABEL_19;
  }

LABEL_38:
  v20 = *(v1 + 8);
  if (v20)
  {
    v21 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_44:
      (*v21)(v20);
      goto LABEL_45;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v21 = &xmmword_1ED452F28;
      goto LABEL_44;
    }
  }

LABEL_45:
  v22 = *(v1 + 32);
  if (!v22)
  {
    goto LABEL_52;
  }

  v23 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_51;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
  --qword_1ED456A90;
  off_1ED452EB0(v22);
  v22 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v23 = &xmmword_1ED452F28;
LABEL_51:
    (*v23)(v22);
  }

LABEL_52:
  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  *(v1 + 32) = 0;
  v24 = *(v1 + 96);
  if (!v24)
  {
    goto LABEL_59;
  }

  v25 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_58;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v24);
  --qword_1ED456A90;
  off_1ED452EB0(v24);
  v24 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v25 = &xmmword_1ED452F28;
LABEL_58:
    (*v25)(v24);
  }

LABEL_59:
  v26 = *(v1 + 120);
  if (!v26)
  {
    goto LABEL_66;
  }

  v27 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_65;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
  --qword_1ED456A90;
  off_1ED452EB0(v26);
  v26 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v27 = &xmmword_1ED452F28;
LABEL_65:
    (*v27)(v26);
  }

LABEL_66:
  v28 = *(v1 + 160);
  if (!v28)
  {
    goto LABEL_73;
  }

  v29 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_72;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v28);
  --qword_1ED456A90;
  off_1ED452EB0(v28);
  v28 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v29 = &xmmword_1ED452F28;
LABEL_72:
    (*v29)(v28);
  }

LABEL_73:
  v30 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_78:
    (*v30)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v30 = &xmmword_1ED452F28;
    goto LABEL_78;
  }

  return 0;
}

uint64_t sub_1819AC774(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t *a5)
{
  v58 = *(*a1 + 24);
  v6 = (a2 & 2) >> 1;
  if ((a2 & 2) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if ((a2 & 4) != 0)
  {
    v8 = (a2 & 2) >> 1;
  }

  else
  {
    v8 = -1;
  }

  if ((a2 & 4) == 0)
  {
    v7 = (a2 & 2) >> 1;
  }

  v53 = a2 != 1;
  if (a2 == 1)
  {
    LOBYTE(v6) = 0;
  }

  v56 = v6;
  if (a2 == 1)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v54 = v9;
  if (a2 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v51 = v10;
  v11 = a1 + 8;
  if (*(a1 + 16) >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*v11 + 8 * v12);
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *(v13 + 80);
      if (v14)
      {
        v15 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_28;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
        --qword_1ED456A90;
        off_1ED452EB0(v14);
        v14 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          break;
        }
      }

LABEL_29:
      if (!*(v13 + 5))
      {
        v16 = *(v13 + 40);
        if (v16)
        {
          v17 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
            --qword_1ED456A90;
            off_1ED452EB0(v16);
            v16 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_37;
            }

            v17 = &xmmword_1ED452F28;
          }

          (*v17)(v16);
        }
      }

LABEL_37:
      v18 = *(v13 + 56);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        v21 = v19[3];
        if (v21)
        {
          xmmword_1ED452F18(v21);
        }

        sub_181929C84(v19, v18);
        v22 = v19[3];
        if (v22)
        {
          xmmword_1ED452F28(v22);
        }

        sqlite3_finalize(v20);
      }

      v23 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
        --qword_1ED456A90;
        off_1ED452EB0(v13);
        v13 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_20;
        }

        v23 = &xmmword_1ED452F28;
      }

      (*v23)(v13);
LABEL_20:
      if (++v12 >= *(a1 + 16))
      {
        goto LABEL_48;
      }
    }

    v15 = &xmmword_1ED452F28;
LABEL_28:
    (*v15)(v14);
    goto LABEL_29;
  }

LABEL_48:
  v24 = *v11;
  if (*v11)
  {
    v25 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_54:
      (*v25)(v24);
      goto LABEL_55;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v24);
    --qword_1ED456A90;
    off_1ED452EB0(v24);
    v24 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v25 = &xmmword_1ED452F28;
      goto LABEL_54;
    }
  }

LABEL_55:
  v26 = *(a1 + 32);
  if (!v26)
  {
    goto LABEL_62;
  }

  v27 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_61;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
  --qword_1ED456A90;
  off_1ED452EB0(v26);
  v26 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v27 = &xmmword_1ED452F28;
LABEL_61:
    (*v27)(v26);
  }

LABEL_62:
  v28 = (a1 + 96);
  v29 = *(a1 + 96);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  if (!v29)
  {
    goto LABEL_69;
  }

  v30 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_68;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v29);
  --qword_1ED456A90;
  off_1ED452EB0(v29);
  v29 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v30 = &xmmword_1ED452F28;
LABEL_68:
    (*v30)(v29);
  }

LABEL_69:
  v31 = *(a1 + 160);
  if (!v31)
  {
    goto LABEL_76;
  }

  v32 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_75;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v31);
  --qword_1ED456A90;
  off_1ED452EB0(v31);
  v31 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v32 = &xmmword_1ED452F28;
LABEL_75:
    (*v32)(v31);
  }

LABEL_76:
  v33 = *(a1 + 120);
  if (!v33)
  {
    goto LABEL_83;
  }

  v34 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_82;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v33);
  --qword_1ED456A90;
  off_1ED452EB0(v33);
  v33 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v34 = &xmmword_1ED452F28;
LABEL_82:
    (*v34)(v33);
  }

LABEL_83:
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  if (a2 == 1)
  {
    v35 = 3;
  }

  else
  {
    v35 = 19;
  }

  *(a1 + 112) = v35;
  if ((a2 == 1) | v56 & 1)
  {
    v36 = *a5;
    if (*a5)
    {
      v37 = *(v36 + 20);
      if ((~v37 & 0x202) != 0 || *(v36 + 22) != 1)
      {
        if (v37)
        {
          goto LABEL_96;
        }

        v38 = sub_18193CB70(v36, 1);
        if (!v38)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v38 = *(v36 + 8);
        if (!v38)
        {
          goto LABEL_96;
        }
      }

      v39 = sqlite3_mprintf("%s", v38);
      *v28 = v39;
      if (!v39)
      {
        return 7;
      }

      *(a1 + 104) = strlen(v39);
    }
  }

LABEL_96:
  if (v54 < 0)
  {
    goto LABEL_106;
  }

  v40 = a5[v54];
  if (v40)
  {
    v41 = *(v40 + 20);
    if ((~v41 & 0x202) != 0 || *(v40 + 22) != 1)
    {
      if (v41)
      {
        v40 = 0;
      }

      else
      {
        v40 = sub_18193CB70(v40, 1);
      }
    }

    else
    {
      v40 = *(v40 + 8);
    }
  }

  v42 = sqlite3_mprintf("%s", v40);
  *(a1 + 120) = v42;
  if (!v42)
  {
    return 7;
  }

  *(a1 + 128) = strlen(v42);
LABEL_106:
  if (v51 < a4)
  {
    v43 = a5[v51];
    if (v43)
    {
      v44 = *(v43 + 20);
      if ((v44 & 0x24) != 0)
      {
        v45 = *v43;
LABEL_114:
        v46 = LODWORD(v45) & ~(SLODWORD(v45) >> 31);
        goto LABEL_115;
      }

      if ((v44 & 8) != 0)
      {
        v50 = *v43;
        if (*v43 >= -9.22337204e18)
        {
          if (v50 <= 9.22337204e18)
          {
            *&v45 = v50;
          }

          else
          {
            LODWORD(v45) = -1;
          }
        }

        else
        {
          LODWORD(v45) = 0;
        }

        goto LABEL_114;
      }

      if ((v44 & 0x12) != 0 && *(v43 + 8))
      {
        LODWORD(v45) = sub_18193CFCC(v43);
        goto LABEL_114;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    LODWORD(v45) = 0;
    goto LABEL_114;
  }

  v46 = 0;
LABEL_115:
  *(a1 + 132) = v46;
  v48 = *(a1 + 96);
  v49 = *(a1 + 104);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0;
  result = sub_1819AD3D8(v58, v46, 0, 0xFFFFFFFE, v48, v49, 0, v53, v11);
  if (!result)
  {
    *(a1 + 24) = v28;
    result = sub_1819AEA58(v58, v11, *(a1 + 96), *(a1 + 104));
    if (!result)
    {

      return sub_1819ACE9C(a1);
    }
  }

  return result;
}

uint64_t sub_1819ACE9C(uint64_t a1)
{
  v2 = *(*a1 + 24);
  ++*(a1 + 144);
  v3 = *(a1 + 152);
  v4 = v3 + 1;
  v5 = 16 * v3 + 16;
  do
  {
    if (v4 >= *(a1 + 156))
    {
      *(a1 + 152) = v3 + 1;
      v8 = sub_1819AF3DC(v2, a1 + 8);
      if (v8 != 100)
      {
        v7 = v8;
        goto LABEL_15;
      }

      v9 = *(a1 + 88);
      v10 = *(a1 + 80);
      v11 = *(a1 + 120);
      if (v11)
      {
        v12 = *(a1 + 128);
        v13 = *(a1 + 72);
        v14 = v12 >= v13 ? *(a1 + 72) : *(a1 + 128);
        v15 = memcmp(v11, *(a1 + 64), v14);
        if (v15 < 0 || v12 < v13 && !v15)
        {
          v7 = 0;
LABEL_15:
          *(a1 + 136) = 1;
          return v7;
        }
      }

      v17 = *(a1 + 156);
      v18 = *(a1 + 160);
      if (v17 <= 1)
      {
        if (sqlite3_initialize())
        {
          return 7;
        }

        v19 = sub_18190287C(v18, 0x20uLL, 0x1000040451B5BE8);
        if (!v19)
        {
          return 7;
        }

        v18 = v19;
        bzero((v19 + 16 * *(a1 + 156)), 16 * (2 - *(a1 + 156)));
        *(a1 + 160) = v18;
        *(a1 + 156) = 2;
        v17 = 2;
      }

      bzero(v18, 16 * v17);
      if (v9 < 1)
      {
        v7 = 0;
        *(a1 + 152) = 0;
        return v7;
      }

      v7 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v30 = 0;
        v23 = sub_1819AE95C((v10 + v22), &v30);
        if (v20)
        {
          if (v20 == 1)
          {
            v24 = v30;
            if (v30 >= 2)
            {
              ++*(*(a1 + 160) + 16);
            }
          }

          else
          {
            if (v20 != 2)
            {
              v21 = v30;
              if (v30 < 1)
              {
                v7 = 267;
              }

              else
              {
                v25 = v30 + 2;
                v26 = *(a1 + 160);
                if (*(a1 + 156) < v30 + 2)
                {
                  v27 = v23;
                  if (sqlite3_initialize())
                  {
                    return 7;
                  }

                  v28 = sub_18190287C(v26, 16 * v25, 0x1000040451B5BE8);
                  if (!v28)
                  {
                    return 7;
                  }

                  v26 = v28;
                  bzero((v28 + 16 * *(a1 + 156)), 16 * (v25 - *(a1 + 156)));
                  *(a1 + 160) = v26;
                  *(a1 + 156) = v25;
                  v23 = v27;
                }

                ++*(v26 + 16 * (v21 + 1));
                v20 = 2;
              }

              goto LABEL_25;
            }

            v24 = v30;
          }

          if (v24)
          {
            if (v24 == 1)
            {
              v20 = 3;
            }

            else
            {
              v29 = *(a1 + 160);
              ++*(v29 + 16 * v21 + 24);
              ++*(v29 + 8);
              v20 = 2;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v21 = 0;
          ++**(a1 + 160);
          v20 = 1;
        }

LABEL_25:
        v22 += v23;
        if (v22 >= v9)
        {
          *(a1 + 152) = 0;
          return v7;
        }
      }
    }

    v6 = *(*(a1 + 160) + v5);
    LODWORD(v3) = v3 + 1;
    ++v4;
    v5 += 16;
  }

  while (v6 <= 0);
  v7 = 0;
  *(a1 + 152) = v3;
  return v7;
}

uint64_t sub_1819AD198(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (!a2)
      {
        return 0;
      }

      v4 = *(*(a1 + 160) + 16 * *(a1 + 152));
      goto LABEL_17;
    }

    if (a3 == 3)
    {
      if (!a2)
      {
        return 0;
      }

      v4 = *(*(a1 + 160) + 16 * *(a1 + 152) + 8);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
    if (!a2)
    {
      return 0;
    }

    v5 = *(a1 + 72);
    v6 = *(a1 + 64);
    v7 = a2;
    v8 = v6;
    v9 = -1;
LABEL_22:
    sub_18190B23C(v7, v8, v5, 1u, v9);
    return 0;
  }

  if (a3 != 1)
  {
LABEL_11:
    if (!a2)
    {
      return 0;
    }

    v4 = *(a1 + 132);
    goto LABEL_17;
  }

  v3 = *(a1 + 152);
  if (!v3)
  {
    if (!a2)
    {
      return 0;
    }

    v7 = a2;
    v8 = "*";
    v5 = -1;
    v9 = 0;
    goto LABEL_22;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = v3 - 1;
LABEL_17:
  v10 = *a2;
  if ((*(*a2 + 20) & 0x9000) != 0)
  {
    sub_18193D288(v10, v4);
  }

  else
  {
    *v10 = v4;
    *(v10 + 20) = 4;
  }

  return 0;
}

char *sub_1819AD2A4(char **a1, char *a2, ...)
{
  va_start(va, a2);
  v4 = *a1;
  if (*a1)
  {
    v5 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v5)(v4);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v5 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  result = sqlite3_vmprintf(a2, va);
  *a1 = result;
  return result;
}

void sub_1819AD380(void *a1)
{
  if (a1)
  {
    sqlite3_free(*(a1 + 10));
    if (!*(a1 + 5))
    {
      sqlite3_free(*(a1 + 5));
    }

    sqlite3_blob_close(*(a1 + 7));
  }

  sqlite3_free(a1);
}

uint64_t sub_1819AD3D8(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v9 = a8;
  v10 = a7;
  v11 = a5;
  v14 = a2;
  v15 = a1;
  if ((a4 & 0x80000000) == 0)
  {
    pStmt = 0;
    v16 = sub_1819AE4E4(a1, 0xCu, &pStmt, 0);
    v17 = pStmt;
    if (v16)
    {
      goto LABEL_115;
    }

    v18 = v14;
    v19 = *(v15 + 492);
    if (sub_1818DF6EC(pStmt, 0))
    {
      goto LABEL_60;
    }

    v20 = ((a3 + v19 * v18) << 10) + a4;
    v21 = *(v17 + 16);
    if ((*(v21 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v21, v20);
    }

    else
    {
      *v21 = v20;
      *(v21 + 20) = 4;
    }

    goto LABEL_58;
  }

  v22 = *(a1 + 496);
  if (v22 && *(a1 + 520) == a2)
  {
    v23 = v22 + 40 * a3;
    if (a8 | a7)
    {
      v24 = *(v23 + 16);
      pStmt = v24;
      if (v24)
      {
        v25 = a8 | a7;
        p_pStmt = 0;
        v28 = 0;
        v29 = 0;
        v30 = 7;
        do
        {
          if (!a6 || *(v24 + 8) >= a6 && !memcmp(*(v24 + 3), a5, a6))
          {
            if (v29 == v28)
            {
              v28 += 16;
              v31 = sqlite3_initialize();
              if (!v28 || v31)
              {
                v45 = 0;
                v46 = 0;
LABEL_124:
                v15 = a1;
                v9 = a8;
                goto LABEL_126;
              }

              v32 = sub_18190287C(p_pStmt, 8 * v28, 0x2004093837F09);
              if (!v32)
              {
                v45 = 0;
                v46 = 0;
                v30 = 7;
                goto LABEL_124;
              }

              p_pStmt = v32;
            }

            p_pStmt[v29] = v24;
            v24 = pStmt;
            ++v29;
          }

          v24 = *v24;
          pStmt = v24;
        }

        while (v24);
        if (v29 >= 2)
        {
          qsort(p_pStmt, v29, 8uLL, sub_1819AE440);
          v15 = a1;
          v9 = a8;
          goto LABEL_45;
        }

        v45 = 1;
        v15 = a1;
        v9 = a8;
        if (v29 == 1)
        {
          v29 = 1;
          goto LABEL_45;
        }

        v30 = 0;
        v46 = 0;
LABEL_126:
        v14 = a2;
LABEL_127:
        if (!v25 || !p_pStmt)
        {
          goto LABEL_136;
        }

        v86 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v87 = v46;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(p_pStmt);
          --qword_1ED456A90;
          off_1ED452EB0(p_pStmt);
          p_pStmt = xmmword_1ED456AF0;
          v14 = a2;
          v46 = v87;
          if (!xmmword_1ED456AF0)
          {
LABEL_136:
            v88 = v45 ^ 1;
            if (!v46)
            {
              v88 = 1;
            }

            v11 = a5;
            v10 = a7;
            if ((v88 & 1) == 0)
            {
              v89 = *(a9 + 8);
              v90 = *a9;
              if ((v89 & 0xF) == 0)
              {
                v91 = v46;
                v92 = v89 + 16;
                v93 = sqlite3_initialize();
                if (!v92 || v93 || (v94 = sub_18190287C(v90, 8 * v92, 0x2004093837F09)) == 0)
                {
                  sub_1819AD380(v91);
                  v17 = 0;
                  goto LABEL_146;
                }

                v90 = v94;
                *a9 = v94;
                v89 = *(a9 + 8);
                v14 = a2;
                v46 = v91;
              }

              v30 = 0;
              *(a9 + 8) = v89 + 1;
              *(v90 + 8 * v89) = v46;
            }

            goto LABEL_22;
          }

          v86 = &xmmword_1ED452F28;
        }

        else
        {
          v87 = v46;
        }

        (*v86)(p_pStmt);
        v46 = v87;
        goto LABEL_136;
      }
    }

    else if (*(v23 + 32))
    {
      v37 = sub_1819AE48C;
      if (*(v23 + 8) == 1)
      {
        v37 = sub_181894AF0;
      }

      v38 = v37(a5, a6);
      v39 = *(v23 + 32);
      if (v39)
      {
        v40 = (v39 + 16 * ((*(v23 + 24) - 1) & v38));
        v43 = *v40;
        v41 = (v40 + 2);
        v42 = v43;
        if (*(v23 + 8) == 1)
        {
          v44 = sub_181894B58;
        }

        else
        {
          v44 = sub_1819AE4C4;
        }

        while (v42)
        {
          v41 = *v41;
          if (!v41)
          {
            break;
          }

          --v42;
          if (!(v44)(*(v41 + 3), *(v41 + 8), v11, a6))
          {
            v25 = 0;
            pStmt = v41;
            v29 = 1;
            p_pStmt = &pStmt;
            v9 = a8;
LABEL_45:
            v14 = a2;
            if (sqlite3_initialize())
            {
              v45 = 0;
              v46 = 0;
              v30 = 7;
              goto LABEL_127;
            }

            v47 = 8 * (v29 + 1);
            v48 = sub_181902484(v47 + 136, 0x10B0040ED1AEB9FLL);
            if (v48)
            {
              v49 = v47 + 136;
              v50 = v48;
              bzero(v48, v49);
              *v50 = 0x7FFFFFFF;
              v50[8] = v50 + 17;
              memcpy(v50 + 17, p_pStmt, 8 * v29);
              v46 = v50;
              v30 = 0;
              v45 = 1;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v30 = 7;
            }

            goto LABEL_126;
          }
        }
      }
    }

    v30 = 0;
    v9 = a8;
    v10 = a7;
    v14 = a2;
  }

  else
  {
    v30 = 0;
  }

LABEL_22:
  v17 = 0;
  if (a4 == -1 || v30)
  {
    goto LABEL_147;
  }

  pStmt = 0;
  v16 = sub_1819AE4E4(v15, 0xDu, &pStmt, 0);
  v17 = pStmt;
  if (v16)
  {
    goto LABEL_115;
  }

  v33 = v10;
  v34 = *(v15 + 492);
  if (!sub_1818DF6EC(pStmt, 0))
  {
    v35 = (a3 + v34 * v14) << 10;
    v36 = *(v17 + 16);
    if ((*(v36 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v36, v35);
    }

    else
    {
      *v36 = v35;
      *(v36 + 20) = 4;
    }

    v51 = *(*v17 + 24);
    if (v51)
    {
      xmmword_1ED452F28(v51);
    }
  }

  v52 = *(v15 + 492);
  if (sub_1818DF6EC(v17, 1u))
  {
    v10 = v33;
    goto LABEL_60;
  }

  v53 = ((a3 + v52 * v14) << 10) | 0x3FF;
  v54 = *(v17 + 16);
  if ((*(v54 + 84) & 0x9000) != 0)
  {
    sub_18193D288(v54 + 64, v53);
  }

  else
  {
    *(v54 + 64) = v53;
    *(v54 + 84) = 4;
  }

  v10 = v33;
LABEL_58:
  v55 = *(*v17 + 24);
  if (v55)
  {
    xmmword_1ED452F28(v55);
  }

LABEL_60:
  v56 = &v106;
  if (!v10)
  {
    v56 = 0;
  }

  v101 = v56;
  v99 = v9 | v10;
  v103 = (v9 | v10) == 0;
  v16 = sqlite3_step(v17);
  if (v16 != 100)
  {
LABEL_115:
    v84 = v16;
LABEL_116:
    v85 = sqlite3_reset(v17);
    if (v84 == 101)
    {
      return v85;
    }

    else
    {
      return v84;
    }
  }

  v97 = v15;
  while (1)
  {
    pStmt = sqlite3_column_int64(v17, 1);
    v106 = sqlite3_column_int64(v17, 2);
    v59 = sqlite3_column_int64(v17, 3);
    LODWORD(v60) = sqlite3_column_bytes(v17, 4);
    v61 = sqlite3_column_blob(v17, 4);
    v62 = v61;
    v63 = pStmt;
    if (!v11 || !pStmt || !v61)
    {
      goto LABEL_71;
    }

    v16 = sub_1819ADDD0(v97, v11, a6, v61, v60, &pStmt, v101);
    if (v16)
    {
      goto LABEL_115;
    }

    v63 = pStmt;
    if (!v99)
    {
      v106 = pStmt;
      v64 = pStmt;
      v65 = *(a9 + 8);
      if (pStmt)
      {
LABEL_72:
        v66 = 0;
        if (sqlite3_initialize())
        {
          goto LABEL_119;
        }

        goto LABEL_77;
      }
    }

    else
    {
LABEL_71:
      v64 = v63;
      v63 = v106;
      v65 = *(a9 + 8);
      if (v64)
      {
        goto LABEL_72;
      }
    }

    if (v63)
    {
      v84 = 267;
      goto LABEL_116;
    }

    v66 = v60 + 20;
    if (sqlite3_initialize())
    {
      goto LABEL_119;
    }

LABEL_77:
    v67 = sub_181902484(v66 + 136, 0x10B0040ED1AEB9FLL);
    if (!v67)
    {
LABEL_119:
      v84 = 7;
      goto LABEL_116;
    }

    v68 = v67;
    *v67 = 0u;
    *(v67 + 16) = 0u;
    *(v67 + 128) = 0;
    *(v67 + 96) = 0u;
    *(v67 + 112) = 0u;
    *(v67 + 64) = 0u;
    *(v67 + 80) = 0u;
    *(v67 + 32) = 0u;
    *(v67 + 48) = 0u;
    *v67 = v65 + 1;
    *(v67 + 4) = v103;
    *(v67 + 8) = v64;
    *(v67 + 16) = v63;
    *(v67 + 24) = v59;
    if (v66)
    {
      v69 = v67 + 136;
      *(v67 + 40) = v67 + 136;
      *(v67 + 5) = 1;
      *(v67 + 48) = v60;
      if (v60)
      {
        v60 = v60;
        memcpy((v67 + 136), v62, v60);
      }

      else
      {
        v60 = 0;
      }

      v70 = v69 + v60;
      *v70 = 0;
      *(v70 + 8) = 0;
      *(v70 + 16) = 0;
    }

    else
    {
      *(v67 + 32) = v64 - 1;
    }

    v58 = *(a9 + 8);
    v57 = *a9;
    if ((v58 & 0xF) == 0)
    {
      break;
    }

LABEL_65:
    *(a9 + 8) = v58 + 1;
    *(v57 + 8 * v58) = v68;
    v16 = sqlite3_step(v17);
    v11 = a5;
    if (v16 != 100)
    {
      goto LABEL_115;
    }
  }

  v71 = v58 + 16;
  v72 = sqlite3_initialize();
  if (v71)
  {
    if (!v72)
    {
      v73 = sub_18190287C(v57, 8 * v71, 0x2004093837F09);
      if (v73)
      {
        v57 = v73;
        *a9 = v73;
        v58 = *(a9 + 8);
        goto LABEL_65;
      }
    }
  }

  v74 = *(v68 + 80);
  if (v74)
  {
    v75 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_94;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v74);
    --qword_1ED456A90;
    off_1ED452EB0(v74);
    v74 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v75 = &xmmword_1ED452F28;
LABEL_94:
      (*v75)(v74);
    }
  }

  if (!*(v68 + 5))
  {
    v76 = *(v68 + 40);
    if (v76)
    {
      v77 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_102;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v76);
      --qword_1ED456A90;
      off_1ED452EB0(v76);
      v76 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v77 = &xmmword_1ED452F28;
LABEL_102:
        (*v77)(v76);
      }
    }
  }

  v78 = *(v68 + 56);
  if (v78)
  {
    v79 = v78[3];
    v80 = v78[4];
    v81 = v80[3];
    if (v81)
    {
      xmmword_1ED452F18(v81);
    }

    sub_181929C84(v80, v78);
    v82 = v80[3];
    if (v82)
    {
      xmmword_1ED452F28(v82);
    }

    sqlite3_finalize(v79);
  }

  v83 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_114:
    (*v83)(v68);
    goto LABEL_146;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v68);
  --qword_1ED456A90;
  off_1ED452EB0(v68);
  v68 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v83 = &xmmword_1ED452F28;
    goto LABEL_114;
  }

LABEL_146:
  v30 = 7;
LABEL_147:
  sqlite3_reset(v17);
  return v30;
}

uint64_t sub_1819ADDD0(uint64_t a1, const void *a2, uint64_t a3, char *a4, int a5, sqlite3_int64 *a6, sqlite3_int64 *a7)
{
  v9 = a4;
  v12 = *a4;
  if (*a4 < 0)
  {
    v12 = v12 & 0x7F | (a4[1] << 7);
    if (a4[1] < 0)
    {
      v12 = v12 & 0x3FFF | (a4[2] << 14);
      if (a4[2] < 0)
      {
        v12 = v12 & 0x1FFFFF | (a4[3] << 21);
        if (a4[3] < 0)
        {
          v12 = v12 & 0xFFFFFFF | ((a4[4] & 7) << 28);
        }
      }
    }
  }

  v13 = &a4[a5];
  v64 = 0;
  v14 = &a4[sub_1819AE95C(a4, &v64)];
  v15 = &v14[sub_1819AE95C(v14, &v64)];
  if (v15 > v13)
  {
    return 267;
  }

  v57 = v12;
  v55 = a1;
  v56 = a7;
  v54 = a6;
  if (v15 >= v13)
  {
    v62 = 0;
    v18 = a6;
    v21 = a7;
LABEL_61:
    if (v18)
    {
      *v18 = v64;
    }

    v38 = v62;
    v16 = 0;
    if (v21)
    {
      *v21 = v64;
    }

    v39 = 1;
    v40 = v56;
    if (v62)
    {
      goto LABEL_71;
    }

    goto LABEL_77;
  }

  v17 = v13;
  v18 = a6;
  v19 = 0;
  v20 = 0;
  v60 = 0;
  v62 = 0;
  v21 = a7;
  v59 = a3;
  v58 = v9;
  while (1)
  {
    v22 = (v18 | v21) != 0;
    if (!(v18 | v21))
    {
      v16 = 0;
      goto LABEL_70;
    }

    if ((v20 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_26;
    }

    v23 = *v15;
    if (*v15 < 0)
    {
      v23 = v23 & 0x7F | (v15[1] << 7);
      if (v15[1] < 0)
      {
        v23 = v23 & 0x3FFF | (v15[2] << 14);
        if (v15[2] < 0)
        {
          v23 = v23 & 0x1FFFFF | (v15[3] << 21);
          if (v15[3] < 0)
          {
            v23 = v23 & 0xFFFFFFF | ((v15[4] & 7) << 28);
            v24 = 5;
          }

          else
          {
            v24 = 4;
          }
        }

        else
        {
          v24 = 3;
        }
      }

      else
      {
        v24 = 2;
      }
    }

    else
    {
      v24 = 1;
    }

    if (v23 > v19)
    {
      break;
    }

    v15 += v24;
LABEL_26:
    v25 = *v15;
    if (*v15 < 0)
    {
      v25 = v25 & 0x7F | (v15[1] << 7);
      if (v15[1] < 0)
      {
        v25 = v25 & 0x3FFF | (v15[2] << 14);
        if (v15[2] < 0)
        {
          v25 = v25 & 0x1FFFFF | (v15[3] << 21);
          if (v15[3] < 0)
          {
            v25 = v25 & 0xFFFFFFF | ((v15[4] & 7) << 28);
            v26 = 5;
          }

          else
          {
            v26 = 4;
          }
        }

        else
        {
          v26 = 3;
        }
      }

      else
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 1;
    }

    v27 = &v15[v26];
    v16 = 267;
    if (&v15[v26] - v9 < v23 || !v25 || (v17 - v27) < v25)
    {
      goto LABEL_70;
    }

    v28 = v21;
    v29 = v17;
    v30 = v25 + v23;
    if (v30 <= v60)
    {
      v32 = v62;
    }

    else
    {
      if (sqlite3_initialize() || (v60 = 2 * v30, (v31 = sub_18190287C(v62, 2 * v30, 0x100004077774924)) == 0))
      {
        v16 = 7;
        goto LABEL_70;
      }

      v32 = v31;
    }

    memcpy(&v32[v23], v27, v25);
    v19 = v25 + v23;
    a3 = v59;
    if ((v25 + v23) >= v59)
    {
      v33 = v59;
    }

    else
    {
      v33 = v25 + v23;
    }

    v34 = memcmp(a2, v32, v33);
    v35 = v64;
    v62 = v32;
    if (!v18)
    {
      v17 = v29;
      v21 = v28;
      goto LABEL_57;
    }

    v37 = v19 <= v59 || v34 != 0;
    v17 = v29;
    v21 = v28;
    if (v34 < 0 || !v37)
    {
      *v18 = v64;
      v35 = v64;
LABEL_57:
      v9 = v58;
      v18 = 0;
      if (v21 && v34 < 0)
      {
        v18 = 0;
        *v21 = v35;
        v21 = 0;
      }

      goto LABEL_11;
    }

    v9 = v58;
LABEL_11:
    v15 = &v27[v25];
    v64 = v35 + 1;
    v20 = 1;
    if (v15 >= v17)
    {
      goto LABEL_61;
    }
  }

  v16 = 267;
LABEL_70:
  v39 = !v22;
  a3 = v59;
  v38 = v62;
  v40 = v56;
  if (v62)
  {
LABEL_71:
    v41 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_76;
    }

    v42 = v38;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v42);
    --qword_1ED456A90;
    off_1ED452EB0(v42);
    if (xmmword_1ED456AF0)
    {
      v41 = &xmmword_1ED452F28;
LABEL_76:
      (*v41)();
    }
  }

LABEL_77:
  if (v57 > 1)
  {
    v43 = v39;
  }

  else
  {
    v43 = 0;
  }

  if (v43 == 1)
  {
    v64 = 0;
    v63 = 0;
    v44 = v54;
    if (!v54)
    {
      v45 = v55;
LABEL_96:
      if (v44)
      {
        v48 = v44;
      }

      else
      {
        v48 = v40;
      }

      v49 = sub_1819AE770(v45, *v48, &v64, &v63);
      v50 = v64;
      if (v49)
      {
        v16 = v49;
        if (!v64)
        {
          return v16;
        }
      }

      else
      {
        v51 = *v64;
        if (*v64 < 0)
        {
          v51 = v51 & 0x7F | (v64[1] << 7);
          if (v64[1] < 0)
          {
            v51 = v51 & 0x3FFF | (v64[2] << 14);
            if (v64[2] < 0)
            {
              v51 = v51 & 0x1FFFFF | (v64[3] << 21);
              if (v64[3] < 0)
              {
                v51 = v51 & 0xFFFFFFF | ((v64[4] & 7) << 28);
              }
            }
          }
        }

        if (v51 >= v57)
        {
          v16 = 267;
        }

        else
        {
          v16 = sub_1819ADDD0(v45, a2, a3, v64, v63, v44, v40);
          v50 = v64;
          if (!v64)
          {
            return v16;
          }
        }
      }

      v52 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v50);
        --qword_1ED456A90;
        off_1ED452EB0(v50);
        v50 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          return v16;
        }

        v52 = &xmmword_1ED452F28;
      }

      (*v52)(v50);
      return v16;
    }

    v45 = v55;
    if (!v40 || *v54 == *v40)
    {
      goto LABEL_96;
    }

    v16 = sub_1819AE770(v55, *v54, &v64, &v63);
    if (!v16)
    {
      v16 = sub_1819ADDD0(v55, a2, a3, v64, v63, v54, 0);
    }

    v46 = v64;
    if (v64)
    {
      v47 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_92;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v46);
      --qword_1ED456A90;
      off_1ED452EB0(v46);
      v46 = xmmword_1ED456AF0;
      v45 = v55;
      if (xmmword_1ED456AF0)
      {
        v47 = &xmmword_1ED452F28;
LABEL_92:
        (*v47)(v46);
      }
    }

    v64 = 0;
    if (!v16)
    {
      v44 = 0;
      goto LABEL_96;
    }
  }

  return v16;
}