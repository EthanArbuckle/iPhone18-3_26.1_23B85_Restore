void *sub_1818A3B68(void *result, int a2, uint64_t a3)
{
  if (a2 <= -12)
  {
    if (a2 <= -15)
    {
      if (a2 != -17)
      {
        if (a2 == -16)
        {
          if (a3)
          {
            if (!result[103])
            {
              v12 = *(a3 + 44) - 1;
              *(a3 + 44) = v12;
              if (!v12)
              {

                return sub_18194E094(result, a3);
              }
            }
          }
        }

        else if (a2 == -15)
        {

          return sub_18193A000(result, a3);
        }

        return result;
      }

      v14 = *(a3 + 8);
      if (v14)
      {
        v15 = result;
        v16 = a3;
        sub_181929C84(result, v14);
        result = v15;
        a3 = v16;
      }

      goto LABEL_52;
    }

    goto LABEL_13;
  }

  if (a2 > -9)
  {
    if (a2 == -8)
    {
      if (!a3)
      {
        return result;
      }

      if (result[103])
      {
        return result;
      }

      if ((*a3)-- != 1)
      {
        return result;
      }

      result = *(a3 + 16);
      goto LABEL_14;
    }

    if (a2 == -7)
    {
      if ((*(a3 + 4) & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    if (a2 != -6)
    {
      return result;
    }

LABEL_13:
    if (!a3)
    {
      return result;
    }

LABEL_14:

    return sub_181939EC8(result, a3);
  }

  if (a2 == -11)
  {
    if (result[103])
    {
      return result;
    }

    v3 = *a3;
    v4 = *(a3 + 24) - 1;
    *(a3 + 24) = v4;
    if (v4)
    {
      return result;
    }

    v5 = *(a3 + 16);
    v6 = v3;
    if (v5)
    {
      v7 = a3;
      (*(*v5 + 32))(v5);
      a3 = v7;
      v6 = *v7;
    }

    v8 = *(a3 + 8);
    v9 = *(v8 + 16) - 1;
    *(v8 + 16) = v9;
    if (!v9)
    {
      v10 = a3;
      v11 = *(v8 + 32);
      if (v11)
      {
        v11(*(v8 + 24));
      }

      sub_181929C84(v6, v8);
      a3 = v10;
    }

    result = v3;
    goto LABEL_52;
  }

  if (a2 != -10)
  {
    return result;
  }

  if (!result[103])
  {
    if (!a3)
    {
      return result;
    }

    if ((*(a3 + 20) & 0x9000) != 0 || *(a3 + 32))
    {
      v17 = a3;
      sub_18193CA00(a3);
      a3 = v17;
    }

    result = *(a3 + 24);
LABEL_52:

    return sub_181929C84(result, a3);
  }

  return sub_18193A050(result, a3);
}

uint64_t sub_1818A3DC0(uint64_t a1, int a2, _DWORD *a3)
{
  if (*(a1 + 17) || !*(a1 + 16) || a2 && *(a1 + 16) == 1)
  {
    return sub_181932F08(a1, a2, a3);
  }

  v4 = *(a1 + 8);
  if (a3)
  {
    *a3 = bswap32(*(*(v4[3] + 80) + 40));
  }

  if (a2 && (v5 = *v4, v6 = *(*a1 + 796), *(v5 + 128) < v6) && *(v5 + 10))
  {
    return sub_181935F24(v5, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1818A3E30(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 344);
  if (v2)
  {
LABEL_2:
    v49 = 0;
    if ((*(v2 + 60) & 0x80000000) == 0)
    {
      if (*(v2 + 64))
      {
        if (!*(v2 + 63))
        {
          (*(**(v2 + 8) + 112))(*(v2 + 8), 0, 1, 9);
        }

        *(v2 + 64) = 0;
        *(v2 + 124) = 0;
        *(v2 + 67) = 0;
      }

      if (!*(v2 + 63))
      {
        (*(**(v2 + 8) + 112))(*(v2 + 8), (*(v2 + 60) + 3), 1, 5);
      }

      *(v2 + 60) = -1;
      v2 = *(a1 + 344);
    }

    v50 = 0;
    v3 = *(v2 + 144);
    if (v3)
    {
      v9 = *v3 != *(v2 + 72) || v3[1] != *(v2 + 80) || v3[2] != *(v2 + 88) || v3[3] != *(v2 + 96) || v3[4] != *(v2 + 104) || v3[5] != *(v2 + 112);
      v10 = *(v2 + 160);
      if (v10)
      {
        v11 = *(v10 + 788);
        if (v11)
        {
          LODWORD(v51) = v11;
          v12 = *(v2 + 8);
          if (*v12)
          {
            (*(*v12 + 80))(v12, 34, &v51);
          }
        }
      }

      if (*(v2 + 63))
      {
        v13 = 0;
      }

      else
      {
        v13 = (*(**(v2 + 8) + 112))(*(v2 + 8), 1, 1, 6);
      }

      LODWORD(v51) = 0;
      v17 = *(v2 + 8);
      if (*v17)
      {
        v18 = v13;
        (*(*v17 + 80))(*(v2 + 8), 34, &v51);
        v13 = v18;
      }

      if (v13)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v13 = sub_1818A4DD0(v2, &v49, 0, &v50);
    }

    while (v13 == -1);
    if (!v3 || v13)
    {
      if (!v3 || *(v2 + 63))
      {
        goto LABEL_87;
      }
    }

    else if (*v3 == *(v2 + 72) && v3[1] == *(v2 + 80) && v3[2] == *(v2 + 88) && v3[3] == *(v2 + 96) && v3[4] == *(v2 + 104) && v3[5] == *(v2 + 112))
    {
      v13 = 0;
      if (*(v2 + 63))
      {
        goto LABEL_87;
      }
    }

    else if (v3[4] == *(v2 + 104) && *(v3 + 4) >= *(**(v2 + 48) + 128))
    {
      v13 = 0;
      v30 = *v3;
      v31 = *(v3 + 2);
      *(v2 + 88) = *(v3 + 1);
      *(v2 + 104) = v31;
      *(v2 + 72) = v30;
      v49 = v9;
      *(v2 + 120) = 1;
      if (*(v2 + 63))
      {
        goto LABEL_87;
      }
    }

    else
    {
      *(v2 + 120) = 1;
      if ((*(v2 + 60) & 0x80000000) == 0)
      {
        if (*(v2 + 64))
        {
          if (!*(v2 + 63))
          {
            (*(**(v2 + 8) + 112))(*(v2 + 8), 0, 1, 9);
          }

          *(v2 + 64) = 0;
          *(v2 + 124) = 0;
          *(v2 + 67) = 0;
        }

        if (!*(v2 + 63))
        {
          (*(**(v2 + 8) + 112))(*(v2 + 8), (*(v2 + 60) + 3), 1, 5);
        }

        *(v2 + 60) = -1;
        v13 = 769;
        if (!*(v2 + 63))
        {
          goto LABEL_86;
        }

LABEL_87:
        if (v13 | v49)
        {
LABEL_88:
          v26 = v13;
          sub_181934D80(a1);
          if (*(a1 + 27))
          {
            (*(**(a1 + 72) + 144))(*(a1 + 72), 0, 0);
          }

          v16 = v26;
          goto LABEL_92;
        }

LABEL_91:
        v16 = 0;
        goto LABEL_92;
      }

      v13 = 769;
      if (*(v2 + 63))
      {
        goto LABEL_87;
      }
    }

LABEL_86:
    v24 = *(v2 + 8);
    v25 = v13;
    (*(*v24 + 112))(v24, 1, 1, 5);
    v13 = v25;
    goto LABEL_87;
  }

  if (*(a1 + 21))
  {
    goto LABEL_91;
  }

  while (1)
  {
    v14 = *(a1 + 22);
    if (v14 != 5 && v14 != 0)
    {
      if (v14 <= 1)
      {
        goto LABEL_115;
      }

      goto LABEL_147;
    }

    if (*(a1 + 17))
    {
      goto LABEL_47;
    }

    v16 = (*(**(a1 + 72) + 56))(*(a1 + 72), 1);
    if (v16 != 5)
    {
      break;
    }

    if (!(*(a1 + 232))(*(a1 + 240)))
    {
      v16 = 5;
      goto LABEL_94;
    }
  }

  if (v16)
  {
    goto LABEL_93;
  }

  v14 = *(a1 + 22);
LABEL_47:
  if (v14 == 5)
  {
    goto LABEL_147;
  }

  *(a1 + 22) = 1;
LABEL_115:
  v32 = *a1;
  v50 = 1;
  v33 = **(a1 + 80);
  if (!v33)
  {
    v16 = (*(v32 + 56))(v32, *(a1 + 224), 0, &v50);
    if (v16 || v50 == 0)
    {
      if (v16)
      {
        goto LABEL_94;
      }

      goto LABEL_192;
    }
  }

  v49 = 0;
  v16 = (*(**(a1 + 72) + 72))(*(a1 + 72), &v49);
  if (!(v16 | v49))
  {
    v36 = *(a1 + 344);
    if (!v36 || *(v36 + 60) < 0 || (LODWORD(v36) = *(v36 + 92), !v36))
    {
      v16 = *(a1 + 72);
      v36 = *v16;
      if (!*v16)
      {
        goto LABEL_134;
      }

      v51 = 0;
      v16 = (*(v36 + 48))();
      if (v16)
      {
        goto LABEL_94;
      }

      v36 = (v51 + *(a1 + 200) - 1) / *(a1 + 200);
    }

    if (v36 > *(a1 + 188))
    {
      *(a1 + 188) = v36;
LABEL_138:
      if (!v33)
      {
        LODWORD(v51) = *(a1 + 180) & 0x1700000 | 0x801;
        v16 = (*(v32 + 40))(v32, *(a1 + 224), *(a1 + 80));
        if (v16 == 14)
        {
          goto LABEL_147;
        }

        if (v16)
        {
          goto LABEL_124;
        }
      }

      LOBYTE(v51) = 0;
      LODWORD(v16) = (*(**(a1 + 80) + 16))(*(a1 + 80), &v51, 1, 0);
      if (v16 == 522)
      {
        v16 = 0;
      }

      else
      {
        v16 = v16;
      }

      if (!v33)
      {
        v38 = *(a1 + 80);
        if (*v38)
        {
          v39 = v16;
          (*(*v38 + 8))(*(a1 + 80));
          v16 = v39;
          *v38 = 0;
        }
      }

      v35 = v51 == 0;
      if (!v16)
      {
        goto LABEL_146;
      }

      goto LABEL_94;
    }

LABEL_134:
    if (v33)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36 == 0;
    }

    if (!v37)
    {
      goto LABEL_138;
    }

    if (off_1EA831A10)
    {
      v16 = off_1EA831A10(v16);
    }

    v40 = *(a1 + 22);
    if (v40 > 5 || ((1 << v40) & 0x23) == 0)
    {
      goto LABEL_160;
    }

    if (*(a1 + 17))
    {
      if (v40 != 5)
      {
LABEL_159:
        *(a1 + 22) = 2;
      }
    }

    else
    {
      v16 = (*(**(a1 + 72) + 56))(*(a1 + 72), 2);
      if (v16)
      {
LABEL_177:
        if (off_1EA831A18)
        {
          off_1EA831A18(v16);
        }

        goto LABEL_192;
      }

      if (*(a1 + 22) != 5)
      {
        goto LABEL_159;
      }
    }

LABEL_160:
    v41 = *(v32 + 48);
    if (v41)
    {
      v16 = v41(v32, *(a1 + 224), 0);
    }

    if (!*(a1 + 8))
    {
      v16 = sub_181933E64(a1, 1);
    }

    goto LABEL_177;
  }

LABEL_124:
  v35 = 1;
  if (v16)
  {
    goto LABEL_94;
  }

LABEL_146:
  if (v35)
  {
    goto LABEL_192;
  }

LABEL_147:
  if (*(a1 + 18))
  {
    v16 = 776;
    goto LABEL_94;
  }

  v16 = sub_181933DD4(a1, 4);
  if (v16)
  {
    goto LABEL_94;
  }

  if (**(a1 + 80))
  {
    goto LABEL_151;
  }

  if (*(a1 + 9) == 2)
  {
    v16 = 0;
  }

  else
  {
    v42 = *a1;
    LODWORD(v51) = 0;
    v16 = (*(v42 + 56))(v42, *(a1 + 224), 0, &v51);
    v43 = *(a1 + 80);
    if (v16)
    {
      v44 = 1;
    }

    else
    {
      v44 = v51 == 0;
    }

    if (!v44)
    {
      v50 = 0;
      v16 = (*(v42 + 40))(v42, *(a1 + 224), v43, *(a1 + 180) & 0x1700000 | 0x802u, &v50);
      if (!v16)
      {
        if (v50)
        {
          v45 = sub_18192ACCC(71502);
          v46 = *(a1 + 80);
          if (*v46)
          {
            (*(*v46 + 8))(*(a1 + 80));
            *v46 = 0;
          }

          v16 = v45;
        }

        else
        {
          v16 = 0;
        }
      }

      v43 = *(a1 + 80);
    }

    if (*v43)
    {
LABEL_151:
      v16 = sub_18193B858(a1);
      if (v16)
      {
LABEL_189:
        if (v16 == 13 || v16 == 10)
        {
          *(a1 + 48) = v16;
          *(a1 + 21) = 6;
          *(a1 + 288) = sub_181933ECC;
        }

        goto LABEL_94;
      }

      v16 = sub_1818F84EC(a1, *(a1 + 16) == 0);
      *(a1 + 21) = 0;
      goto LABEL_188;
    }
  }

  if (!*(a1 + 8))
  {
    v47 = v16;
    sub_181933E64(a1, 1);
    v16 = v47;
  }

LABEL_188:
  if (v16)
  {
    goto LABEL_189;
  }

LABEL_192:
  if (!*(a1 + 16) && *(a1 + 28))
  {
    v16 = (*(**(a1 + 72) + 16))(*(a1 + 72), &v51, 16, 24);
    if (v16)
    {
      if (v16 != 522)
      {
        goto LABEL_93;
      }

      v51 = 0;
      v52 = 0;
    }

    if (*(a1 + 136) != v51 || *(a1 + 144) != v52)
    {
      sub_181934D80(a1);
      if (*(a1 + 27))
      {
        (*(**(a1 + 72) + 144))(*(a1 + 72), 0, 0);
      }
    }
  }

  v16 = sub_181A1D90C(a1);
  v2 = *(a1 + 344);
  if (v2)
  {
    goto LABEL_2;
  }

LABEL_92:
  if (!*(a1 + 16) && !*(a1 + 21) && !v16)
  {
    v29 = *(a1 + 344);
    if (v29)
    {
      if ((*(v29 + 60) & 0x80000000) == 0)
      {
        LODWORD(v29) = *(v29 + 92);
        if (v29)
        {
          goto LABEL_103;
        }
      }
    }

    v29 = **(a1 + 72);
    if (!v29)
    {
LABEL_105:
      *(a1 + 32) = v29;
      goto LABEL_106;
    }

    v51 = 0;
    v16 = (*(v29 + 48))();
    if (!v16)
    {
      v29 = (v51 + *(a1 + 200) - 1) / *(a1 + 200);
LABEL_103:
      if (v29 > *(a1 + 188))
      {
        *(a1 + 188) = v29;
      }

      goto LABEL_105;
    }

LABEL_94:
    v27 = v16;
    sub_1818CD8F0(a1);
    return v27;
  }

LABEL_93:
  if (v16)
  {
    goto LABEL_94;
  }

LABEL_106:
  result = 0;
  *(a1 + 21) = 1;
  *(a1 + 28) = 1;
  return result;
}

uint64_t sub_1818A4708(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 28);
  if (v4 >= a2)
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v7 = *(a1 + 16);
  v8 = v7[2];
  if (v8)
  {
    xmmword_1ED452F18(*&v8);
    v4 = *(a1 + 28);
  }

  v9 = v7[4].u8[0];
  if (v4 != v9)
  {
    result = 5;
    if (a2 > 1 || v9 > 2)
    {
      goto LABEL_50;
    }

    goto LABEL_12;
  }

  if (a2 == 1)
  {
LABEL_12:
    if (v9 - 1 <= 1)
    {
      result = 0;
      *(a1 + 28) = 1;
      v7[3] = vadd_s32(v7[3], 0x100000001);
      goto LABEL_50;
    }

    v10 = 1;
    v25 = 1;
    HIWORD(v26) = 0;
    v11 = 1;
    goto LABEL_15;
  }

  v25 = 1;
  HIWORD(v26) = 0;
  if (a2 != 4)
  {
    goto LABEL_29;
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 3;
LABEL_15:
  WORD2(v26) = v11;
  v24 = dword_1EA8315A8;
  if (sub_18192B4C8(a1, &v24))
  {
    v13 = *__error();
    result = 5;
    if (v13 > 0x3C)
    {
      goto LABEL_39;
    }

    if (((1 << v13) & 0x1000000800012010) == 0)
    {
      if (v13 != 1)
      {
LABEL_39:
        if (v13 != 77)
        {
          result = 3850;
          *(a1 + 32) = v13;
        }

        goto LABEL_50;
      }

      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (a2 != 4)
  {
    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_25:
    v24 = dword_1EA8315A8 + 2;
    v25 = 510;
    v14 = sub_18192B4C8(a1, &v24);
    if (v14)
    {
      v15 = *__error();
      if (v15 > 0x3C)
      {
        goto LABEL_55;
      }

      if (((1 << v15) & 0x1000000800012010) != 0)
      {
LABEL_28:
        v16 = 5;
        goto LABEL_42;
      }

      if (v15 == 1)
      {
        v16 = 3;
      }

      else
      {
LABEL_55:
        if (v15 == 77)
        {
          goto LABEL_28;
        }

        v16 = 3850;
      }
    }

    else
    {
      v16 = 0;
      LODWORD(v15) = 0;
    }

LABEL_42:
    v24 = dword_1EA8315A8;
    v25 = 1;
    WORD2(v26) = 2;
    v20 = sub_18192B4C8(a1, &v24);
    if (!v14 && v20)
    {
      v21 = *__error();
      result = 2058;
      *(a1 + 32) = v21;
      goto LABEL_50;
    }

    if (v16)
    {
      result = v16;
      if (v16 != 5)
      {
        *(a1 + 32) = v15;
      }

      goto LABEL_50;
    }

    v22 = v7[3].i32[1] + 1;
    v7[3].i32[0] = 1;
    v7[3].i32[1] = v22;
    goto LABEL_49;
  }

  *(a1 + 28) = 3;
  v7[4].i8[0] = 3;
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v7[3].i32[0] > 1)
  {
    result = 5;
    goto LABEL_50;
  }

LABEL_29:
  WORD2(v26) = 3;
  if (a2 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = dword_1EA8315A8 + v17;
  v19 = 510;
  if (a2 == 2)
  {
    v19 = 1;
  }

  v24 = v18;
  v25 = v19;
  if (!sub_18192B4C8(a1, &v24))
  {
LABEL_49:
    result = 0;
    *(a1 + 28) = a2;
    v7[4].i8[0] = a2;
    goto LABEL_50;
  }

  v13 = *__error();
  result = 5;
  if (v13 > 0x3C)
  {
    goto LABEL_39;
  }

  if (((1 << v13) & 0x1000000800012010) == 0)
  {
    if (v13 != 1)
    {
      goto LABEL_39;
    }

LABEL_38:
    result = 3;
    *(a1 + 32) = v13;
  }

LABEL_50:
  if (v7[2])
  {
    v23 = result;
    xmmword_1ED452F28(*&v7[2]);
    return v23;
  }

  return result;
}

uint64_t sub_1818A4A50(uint64_t a1, uint64_t a2, int a3, _BOOL4 *a4)
{
  if (a3)
  {
    v5 = off_1EE341AF8(a2, 6) == 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
    if (off_1EE341B28(a2, v8))
    {
      v5 = 0;
    }

    else
    {
      v5 = (WORD2(v8[0]) & 0xF000) != 0x8000 || v9 > 0;
    }
  }

  *a4 = v5;
  return 0;
}

uint64_t sub_1818A4AF0(uint64_t a1, void *a2)
{
  if (*(a1 + 168) || (v9 = 0u, v10 = 0u, v8 = 0u, memset(v7, 0, sizeof(v7)), (v3 = *(a1 + 64)) != 0) && *(*v3 + 168))
  {
    sqlite3_log(27, "denying fileSize on invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    result = off_1EE341B40(*(a1 + 24), v7);
    if (result)
    {
      *(a1 + 32) = *__error();
      return 1802;
    }

    else
    {
      v6 = v8;
      *(a1 + 152) = v8;
      if (v6 == 1)
      {
        v6 = 0;
      }

      *a2 = v6;
    }
  }

  return result;
}

uint64_t sub_1818A4BB0(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 16) || *(a1 + 344))
  {
    result = 0;
    *a2 = 1;
  }

  else if (*(a1 + 17))
  {
    return 14;
  }

  else if (*(a1 + 8) || (v6 = **(a1 + 72), *v6 >= 2) && *(v6 + 104))
  {
    v3 = *(a1 + 80);
    if (*v3)
    {
      v4 = a1;
      (*(*v3 + 8))(*(a1 + 80));
      a1 = v4;
      *v3 = 0;
    }

    v5 = a1;
    result = sub_1819339AC(a1);
    if (!result)
    {
      *(v5 + 9) = 5;
      *(v5 + 21) = 0;
    }
  }

  else
  {
    return 14;
  }

  return result;
}

uint64_t sub_1818A4C68(const char *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  sqlite3_snprintf(1024, __s, "%s", a1);
  v3 = strlen(__s);
  if (v3 < 1)
  {
LABEL_4:
    if (__s[0] != 47)
    {
      __s[0] = 46;
    }

    v5 = v11;
  }

  else
  {
    while (1)
    {
      v4 = v3;
      if (__s[v3] == 47)
      {
        break;
      }

      --v3;
      if (v4 < 2)
      {
        goto LABEL_4;
      }
    }

    v5 = &__s[v3];
  }

  *v5 = 0;
  v6 = sub_18192ACE0(__s, 0, 0, 0);
  result = 0;
  *a2 = v6;
  if (v6 < 0)
  {
    v8 = sub_18192ACCC(46124);
    v9 = *__error();
    memset(__strerrbuf, 0, sizeof(__strerrbuf));
    strerror_r(v9, __strerrbuf, 0x4FuLL);
    sqlite3_log(v8, "os_unix.c:%d: (%d) %s(%s) - %s", 46124, v9, "openDirectory", __s, __strerrbuf);
    return v8;
  }

  return result;
}

uint64_t sub_1818A4DD0(uint64_t a1, _DWORD *a2, int a3, int *a4)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v7 = *a4;
  v8 = *a4 + 1;
  *a4 = v8;
  if (v7 < 5)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    LODWORD(v14) = 0;
    v15 = (**(a1 + 48) + 96);
    goto LABEL_12;
  }

  v9 = v8 & 0x6FFFFFFF;
  if (v9 >= 0x65)
  {
    v106[0] = -1;
    sqlite3_file_control(*(a1 + 160), 0, 103, v106);
    v35 = HIDWORD(v106[0]);
    if (qword_1ED456C38 != -1)
    {
      sub_181A1E95C();
    }

    v36 = qword_1ED456C08;
    if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_ERROR))
    {
      sub_181A1ED14(a1, v35, v36);
      v37 = getprogname();
      if (!v37)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v37 = getprogname();
      if (!v37)
      {
        goto LABEL_64;
      }
    }

    v38 = v37;
    if (!strcmp(v37, "testfixture") || !strcmp(v38, "sqlite3") || !strcmp(v38, "xctest"))
    {
      return 15;
    }

LABEL_64:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_181A1EDAC();
    }

    return 15;
  }

  v10 = 39 * (v9 - 9) * (v9 - 9);
  if (v7 <= 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = (v11 + 998) / 0x3E8u;
  if (!a3)
  {
    LODWORD(v106[0]) = (v11 + 998) / 0x3E8u;
    v50 = *(a1 + 8);
    if (*v50)
    {
      (*(*v50 + 80))(v50, 34, v106);
    }
  }

  (*(*a1 + 112))();
  *a4 &= ~0x10000000u;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(a1 + 70))
  {
    v14 = 0;
    goto LABEL_77;
  }

  v39 = sub_1818A5900(a1, a2);
  if (v39 != 5)
  {
    v14 = v39;
    if (v39 != 773)
    {
      goto LABEL_77;
    }

    *a4 |= 0x10000000u;
  }

  v40 = *(a1 + 160);
  if (v40)
  {
    v41 = *(v40 + 788);
    if (v41)
    {
      LODWORD(v106[0]) = v41;
      v42 = *(a1 + 8);
      if (*v42)
      {
        (*(*v42 + 80))(v42, 34, v106);
      }
    }
  }

  if (!**(a1 + 48) || *(a1 + 63))
  {
    goto LABEL_76;
  }

  v54 = (*(**(a1 + 8) + 112))(*(a1 + 8), 2, 1, 6);
  if (v54)
  {
    if (v54 == 5)
    {
      v14 = 261;
    }

    else
    {
      v14 = v54;
    }
  }

  else
  {
    if (*(a1 + 63))
    {
LABEL_76:
      v14 = 0xFFFFFFFFLL;
      goto LABEL_77;
    }

    (*(**(a1 + 8) + 112))(*(a1 + 8), 2, 1, 5);
    v14 = 0xFFFFFFFFLL;
  }

LABEL_77:
  LODWORD(v106[0]) = 0;
  v43 = *(a1 + 8);
  if (*v43)
  {
    (*(*v43 + 80))(v43, 34, v106);
  }

  if (v14)
  {
    return v14;
  }

  if (!*(a1 + 70))
  {
    v15 = (**(a1 + 48) + 96);
    v52 = *v15;
    if (*v15 != *(a1 + 88))
    {
LABEL_94:
      LODWORD(v14) = 0;
      goto LABEL_12;
    }

    if (*(a1 + 152))
    {
      if (v52)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v52)
      {
        v55 = *(a1 + 144) == 0;
      }

      else
      {
        v55 = 1;
      }

      if (!v55)
      {
        goto LABEL_94;
      }
    }

    v56 = *(a1 + 63);
    if (*(a1 + 63))
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(**(a1 + 8) + 112))(*(a1 + 8), 3, 1, 6);
      v56 = *(a1 + 63);
    }

    if (v56 != 2)
    {
      (*(**(a1 + 8) + 120))(*(a1 + 8));
    }

    if (v14 != 5)
    {
      if (v14)
      {
        return v14;
      }

      v58 = **(a1 + 48);
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      v64 = v58[4];
      v63 = v58[5];
      if (v59 == *(a1 + 72) && v60 == *(a1 + 80) && v61 == *(a1 + 88) && v62 == *(a1 + 96) && v64 == *(a1 + 104) && v63 == *(a1 + 112))
      {
        v14 = 0;
        *(a1 + 60) = 0;
        return v14;
      }

      if (*(a1 + 63))
      {
        return 0xFFFFFFFFLL;
      }

      v70 = *(**(a1 + 8) + 112);
      goto LABEL_237;
    }

LABEL_12:
    v16 = *(a1 + 88);
    v17 = *(a1 + 144);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18 < v16)
      {
        v16 = v18;
      }
    }

    v19 = v15 + 1;
    v20 = v15[2];
    v21 = v20 <= v16;
    if (v20 > v16)
    {
      v20 = 0;
    }

    v22 = v15[3];
    if (v20 <= v22 && v22 <= v16)
    {
      v20 = v15[3];
      v21 = 2;
    }

    v25 = v15[4];
    if (v20 <= v25 && v25 <= v16)
    {
      v20 = v15[4];
      v21 = 3;
    }

    v28 = v15[5];
    v30 = v20 > v28 || v28 > v16;
    if (v30)
    {
      v31 = v20;
    }

    else
    {
      v31 = v15[5];
    }

    if (v30)
    {
      v32 = v21;
    }

    else
    {
      v32 = 4;
    }

    if ((*(a1 + 66) & 2) == 0)
    {
      if (v31 >= v16 && v32 != 0)
      {
LABEL_199:
        LODWORD(v106[0]) = v12;
        v87 = *(a1 + 8);
        if (*v87)
        {
          (*(*v87 + 80))(v87, 34, v106);
          v87 = *(a1 + 8);
        }

        if (*(a1 + 63))
        {
          v88 = 0;
        }

        else
        {
          v88 = (*(*v87 + 112))(v87, v32 + 3, 1, 6);
          v87 = *(a1 + 8);
        }

        LODWORD(v106[0]) = 0;
        if (*v87)
        {
          (*(*v87 + 80))(v87, 34, v106);
        }

        if (v88)
        {
          if (v88 == 773)
          {
            *a4 |= 0x10000000u;
          }

          if (v88 == 5)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v88;
          }
        }

        *(a1 + 120) = *v15 + 1;
        if (*(a1 + 63) != 2)
        {
          (*(**(a1 + 8) + 120))(*(a1 + 8));
        }

        if (v19[v32] == v31)
        {
          v89 = **(a1 + 48);
          v90 = *v89;
          v91 = v89[1];
          v92 = v89[2];
          v93 = v89[3];
          v95 = v89[4];
          v94 = v89[5];
          v96 = v90 == *(a1 + 72) && v91 == *(a1 + 80);
          v97 = v96 && v92 == *(a1 + 88);
          v98 = v97 && v93 == *(a1 + 96);
          v99 = v98 && v95 == *(a1 + 104);
          if (v99 && v94 == *(a1 + 112))
          {
            v14 = 0;
            *(a1 + 60) = v32;
            return v14;
          }
        }

        if (*(a1 + 63))
        {
          return 0xFFFFFFFFLL;
        }

        v70 = *(**(a1 + 8) + 112);
LABEL_237:
        v70();
        return 0xFFFFFFFFLL;
      }

      if (*(a1 + 63))
      {
        v34 = 4;
LABEL_53:
        v32 = 1;
LABEL_54:
        v19[v32] = v16;
        if (!*(a1 + 63))
        {
          (*(**(a1 + 8) + 112))(*(a1 + 8), v34, 1, 9);
        }

        v31 = v16;
        goto LABEL_199;
      }

      v34 = 4;
      v51 = (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 1, 10);
      if (v51 != 5)
      {
        v14 = v51;
        if (v51)
        {
          return v14;
        }

        goto LABEL_53;
      }

      if (*(a1 + 63))
      {
        v34 = 5;
        v32 = 2;
        goto LABEL_54;
      }

      v34 = 5;
      v57 = (*(**(a1 + 8) + 112))(*(a1 + 8), 5, 1, 10);
      if (!v57)
      {
        v32 = 2;
        goto LABEL_54;
      }

      v14 = v57;
      if (v57 != 5)
      {
        return v14;
      }

      if (*(a1 + 63))
      {
        v34 = 6;
        v32 = 3;
        goto LABEL_54;
      }

      v34 = 6;
      v71 = (*(**(a1 + 8) + 112))(*(a1 + 8), 6, 1, 10);
      if (!v71)
      {
        v32 = 3;
        goto LABEL_54;
      }

      v14 = v71;
      if (v71 != 5)
      {
        return v14;
      }

      if (*(a1 + 63))
      {
        v34 = 7;
        v32 = 4;
        goto LABEL_54;
      }

      v34 = 7;
      v86 = (*(**(a1 + 8) + 112))(*(a1 + 8), 7, 1, 10);
      if (!v86)
      {
        v32 = 4;
        goto LABEL_54;
      }

      v14 = v86;
      if (v86 != 5)
      {
        return v14;
      }
    }

    if (!v32)
    {
      if (v14 == 5)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1288;
      }
    }

    goto LABEL_199;
  }

  v104 = 0;
  v105 = 0;
  v44 = *(a1 + 8);
  if (!*(a1 + 63))
  {
    v53 = (*(*v44 + 112))(v44, 3, 1, 6);
    if (v53)
    {
      if (v53 == 5)
      {
        v14 = 0xFFFFFFFFLL;
      }

      else
      {
        v14 = v53;
      }

      goto LABEL_172;
    }

    v44 = *(a1 + 8);
  }

  *(a1 + 60) = 0;
  v45 = (*(*v44 + 104))(v44, 0, 0x8000, 0, &v104);
  if (v45 == 8)
  {
    goto LABEL_129;
  }

  v14 = v45;
  if (v45 != 1288)
  {
    goto LABEL_171;
  }

  v46 = **(a1 + 48);
  v48 = v46[1];
  v47 = v46[2];
  *(a1 + 72) = *v46;
  *(a1 + 88) = v48;
  *(a1 + 104) = v47;
  v49 = (*(**(a1 + 16) + 48))(*(a1 + 16), &v105);
  if (!v49)
  {
    if (v105 <= 31)
    {
      *a2 = 1;
      if (*(a1 + 88))
      {
        v14 = 0xFFFFFFFFLL;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        return v14;
      }

      goto LABEL_172;
    }

    v49 = (*(**(a1 + 16) + 16))(*(a1 + 16), v106, 32, 0);
    if (!v49)
    {
      if (*(a1 + 104) != v106[2])
      {
LABEL_129:
        v14 = 0xFFFFFFFFLL;
        goto LABEL_172;
      }

      v72 = *(a1 + 56);
      if (sqlite3_initialize() || (v73 = v72 + 24, (v74 = sub_181902484(v73, 0x100004077774924)) == 0))
      {
        v14 = 7;
        goto LABEL_172;
      }

      v75 = v74;
      v76 = *(a1 + 96);
      v77 = *(a1 + 88) * (*(a1 + 56) + 24) + 32;
      if ((v77 + v73) <= v105)
      {
        while (1)
        {
          v102 = 0;
          v83 = (*(**(a1 + 16) + 16))(*(a1 + 16), v75, v73, v77);
          if (v83)
          {
            v14 = v83;
            goto LABEL_165;
          }

          if (!sub_18193835C(a1, &v103, &v102, &v75[3], v75, v84, v85))
          {
            goto LABEL_164;
          }

          if (v102)
          {
            break;
          }

          v77 += v73;
          if ((v73 + v77) > v105)
          {
            goto LABEL_164;
          }
        }

        v14 = 0xFFFFFFFFLL;
      }

      else
      {
LABEL_164:
        v14 = 0;
      }

LABEL_165:
      *(a1 + 96) = v76;
      v78 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_170;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v75);
      --qword_1ED456A90;
      off_1ED452EB0(v75);
      v75 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v78 = &xmmword_1ED452F28;
LABEL_170:
        (*v78)(v75);
      }

LABEL_171:
      if (!v14)
      {
        return v14;
      }

      goto LABEL_172;
    }
  }

  v14 = v49;
LABEL_172:
  if (*(a1 + 40) >= 1)
  {
    for (i = 0; i < *(a1 + 40); ++i)
    {
      v80 = *(*(a1 + 48) + 8 * i);
      if (v80)
      {
        v81 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v80);
          --qword_1ED456A90;
          off_1ED452EB0(v80);
          v80 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_175;
          }

          v81 = &xmmword_1ED452F28;
        }

        (*v81)(v80);
      }

LABEL_175:
      *(*(a1 + 48) + 8 * i) = 0;
    }
  }

  *(a1 + 70) = 0;
  if ((*(a1 + 60) & 0x80000000) == 0)
  {
    v82 = *(a1 + 63);
    if (*(a1 + 64))
    {
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 9);
        v82 = *(a1 + 63);
      }

      *(a1 + 64) = 0;
      *(a1 + 124) = 0;
      *(a1 + 67) = 0;
    }

    if (!v82)
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), (*(a1 + 60) + 3), 1, 5);
    }

    *(a1 + 60) = -1;
  }

  *a2 = 1;
  return v14;
}

uint64_t sub_1818A5900(uint64_t a1, _DWORD *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v103 = 0;
  if (*(a1 + 40) >= 1)
  {
    v103 = **(a1 + 48);
    if (v103)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  v5 = sub_1819346F0(a1, 0, &v103);
  v4 = v5;
  if (v5)
  {
    if (v5 != 1288)
    {
      return v4;
    }

    *(a1 + 70) = 1;
    *(a1 + 63) = 2;
    *a2 = 1;
  }

  if (v103)
  {
LABEL_8:
    v6 = sub_1818A72FC(a1, a2);
    if (!v6)
    {
      goto LABEL_42;
    }

    v7 = v6;
    v4 = v6;
    if (v6 == 6922)
    {
      goto LABEL_45;
    }

    if (*(a1 + 70))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = 1;
  if (*(a1 + 70))
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((*(a1 + 66) & 2) != 0)
  {
    if (!*(a1 + 63))
    {
      v12 = (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 6);
      if (v12)
      {
        goto LABEL_44;
      }

      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 5);
        v4 = 264;
        if (*(a1 + 70))
        {
          goto LABEL_46;
        }

        return v4;
      }
    }

    v4 = 264;
    if (*(a1 + 70))
    {
      goto LABEL_46;
    }

    return v4;
  }

LABEL_14:
  v8 = *(a1 + 64);
  if (*(a1 + 64))
  {
    goto LABEL_17;
  }

  if (!*(a1 + 63))
  {
    v12 = (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 10);
    if (v12)
    {
LABEL_44:
      v4 = v12;
      goto LABEL_45;
    }
  }

  *(a1 + 64) = 2;
LABEL_17:
  if (*(a1 + 40) < 1 || (v103 = **(a1 + 48)) == 0)
  {
    v4 = sub_1819346F0(a1, 0, &v103);
    if (v4)
    {
LABEL_33:
      if (!v8)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }
  }

  if (!sub_1818A72FC(a1, a2))
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_33;
  }

  v109[0] = 0;
  v9 = *(a1 + 8);
  if (*v9)
  {
    (*(*v9 + 80))(v9, 34, v109);
    v9 = *(a1 + 8);
  }

  v108 = 0;
  v107 = 0;
  if (*v9)
  {
    (*(*v9 + 80))(v9, 34, &v107);
  }

  v10 = *(a1 + 65);
  if (!*(a1 + 63))
  {
    v4 = (*(**(a1 + 8) + 112))(*(a1 + 8), (v10 + 1), (2 - v10), 10);
    if (v4)
    {
      goto LABEL_38;
    }
  }

  *(a1 + 72) = 0u;
  v11 = (a1 + 72);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v4 = (*(**(a1 + 16) + 48))(*(a1 + 16), &v108);
  if (v4)
  {
    goto LABEL_27;
  }

  if (v108 < 33)
  {
    goto LABEL_78;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), v109, 32, 0);
  if (v4)
  {
    goto LABEL_27;
  }

  if (((LOBYTE(v109[0]) << 24) | (BYTE1(v109[0]) << 16) | (BYTE2(v109[0]) << 8) | HIBYTE(v109[0]) & 0xFE) != 0x377F0682 || (v17 = v110 << 24, v100 = v111, v18 = v17 | (v111 << 16), v19 = v113, v98 = v112, v20 = v18 | v113 | (v112 << 8), (v20 & (v20 - 1)) != 0) || v20 - 65537 < 0xFFFF01FF || (v21 = HIBYTE(v109[0]) & 1, *(a1 + 85) = v21, *(a1 + 56) = v20, *(a1 + 136) = bswap32(v114), *(a1 + 104) = v115, sub_181937F98(v21 ^ 1u, v109, 24, 0, (a1 + 96)), *(a1 + 96) != bswap32(v116)) || *(a1 + 100) != bswap32(v117))
  {
LABEL_78:
    v22 = 0;
    v23 = 0;
    goto LABEL_79;
  }

  if (bswap32(v109[1]) != 3007000)
  {
    v4 = sub_18192ACCC(75604);
    goto LABEL_27;
  }

  if (sqlite3_initialize() || (v93 = v19, v95 = v17, v91 = v20 + 24, (v97 = sub_181902484(v91 + 0x8000, 0x1000040BDFB0063)) == 0))
  {
    v4 = 7;
    goto LABEL_27;
  }

  v22 = 0;
  v46 = 0;
  v23 = 0;
  v85 = &v97[3] + v20;
  v47 = (v108 - 32) / v91;
  v82 = ((v47 + 4096) + 0xFFFFFFFF021) >> 12;
  v87 = v47;
  v88 = &v97[3];
  v81 = (v98 << 8) | HIWORD(v18);
  v48 = v97 + (v95 | (v100 << 16) | (v98 << 8) | v93);
  v83 = v48 + 24;
  v84 = (v48 + 32792);
  v49 = v95 + (v100 << 16) + (v98 << 8) + v93;
  v86 = (v49 + 24);
  v50 = &v97[3] + v49;
  v51 = 0;
  v90 = v50;
  do
  {
    v94 = v51;
    v96 = v46;
    v52 = v51 + 4062;
    if (v52 >= v87)
    {
      v52 = v87;
    }

    v92 = v52;
    v106 = 0;
    v53 = (v46 << 12) | 0xFDEu;
    if (v87 < v53)
    {
      v53 = v87;
    }

    v99 = v53;
    if (*(a1 + 40) > v46 && (v54 = *(a1 + 48), v55 = *(v54 + 8 * v46), (v106 = v55) != 0))
    {
      v4 = 0;
    }

    else
    {
      v4 = sub_1819346F0(a1, v46, &v106);
      v55 = v106;
      if (!v106)
      {
        break;
      }

      v54 = *(a1 + 48);
      LODWORD(v46) = v96;
      v50 = v90;
    }

    if (v46)
    {
      v56 = ((v46 << 12) - 33);
    }

    else
    {
      v56 = 1;
    }

    *(v54 + 8 * v46) = v85;
    if (v56 <= v99)
    {
      v101 = v56;
      v105 = 0;
      v104 = 0;
      v58 = (*(**(a1 + 16) + 16))(*(a1 + 16), v97, v91, (v56 - 1) * v91 + 32);
      if (v58)
      {
        v4 = v58;
        v57 = 0;
        v50 = v90;
        LODWORD(v46) = v96;
      }

      else
      {
        v80 = v55;
        if (sub_18193835C(a1, &v105, &v104, v88, v97, v59, v60))
        {
          v89 = 0;
          v61 = v101;
          v62 = v86 * v101 + 32;
          while (1)
          {
            v102 = v61;
            v63 = sub_1818A758C(a1, v61, v105);
            if (v63)
            {
LABEL_139:
              v4 = v63;
              goto LABEL_140;
            }

            v64 = v104;
            if (v104)
            {
              *(a1 + 88) = v102;
              *(a1 + 92) = v64;
              *(a1 + 86) = v81;
              v22 = *(a1 + 96);
              v23 = *(a1 + 100);
            }

            v89 = v102 >= v99;
            if (v92 == v102)
            {
              break;
            }

            v105 = 0;
            v104 = 0;
            v63 = (*(**(a1 + 16) + 16))(*(a1 + 16), v97, v91, v62);
            if (v63)
            {
              goto LABEL_139;
            }

            v67 = sub_18193835C(a1, &v105, &v104, v88, v97, v65, v66);
            v62 += v86;
            v61 = v102 + 1;
            if (!v67)
            {
              v4 = 0;
LABEL_140:
              v50 = v90;
              v57 = v89;
              goto LABEL_141;
            }
          }

          v4 = 0;
          LODWORD(v46) = v96;
          v50 = v90;
          v57 = v102 >= v99;
          v55 = v80;
        }

        else
        {
          v57 = 0;
          v4 = 0;
          v50 = v90;
LABEL_141:
          v55 = v80;
          LODWORD(v46) = v96;
        }
      }
    }

    else
    {
      v57 = 1;
    }

    *(*(a1 + 48) + 8 * v46) = v55;
    v68 = 34;
    if (v46)
    {
      v68 = 0;
    }

    v69 = 4 * v68;
    v70 = (v55 + 4 * v68);
    if (v70 >= v84 || &v83[4 * v68] >= v55 + 0x8000)
    {
      v72 = 0x2000 - v68;
      v73 = (0x2000 - v68) & 0x3FFC;
      v68 += v73;
      v74 = &v50[v69];
      v75 = v73;
      while (1)
      {
        v76 = *v74;
        v77 = vmovn_s32(vmvnq_s8(vceqq_s32(*v70, *v74)));
        if (v77.i8[0])
        {
          v70->i32[0] = v76.i32[0];
          if ((v77.i8[2] & 1) == 0)
          {
            goto LABEL_153;
          }
        }

        else if ((v77.i8[2] & 1) == 0)
        {
LABEL_153:
          if (v77.i8[4])
          {
            goto LABEL_154;
          }

          goto LABEL_158;
        }

        v70->i32[1] = v76.i32[1];
        if (v77.i8[4])
        {
LABEL_154:
          v70->i32[2] = v76.i32[2];
          if (v77.i8[6])
          {
            goto LABEL_159;
          }

          goto LABEL_150;
        }

LABEL_158:
        if (v77.i8[6])
        {
LABEL_159:
          v70->i32[3] = v76.i32[3];
        }

LABEL_150:
        ++v70;
        ++v74;
        v75 -= 4;
        if (!v75)
        {
          if (v72 == v73)
          {
            goto LABEL_161;
          }

          break;
        }
      }
    }

    v78 = 4 * v68;
    do
    {
      v79 = *&v50[v78];
      if (*(v55 + v78) != v79)
      {
        *(v55 + v78) = v79;
      }

      v78 += 4;
    }

    while (v78 != 0x8000);
LABEL_161:
    if (!v57)
    {
      break;
    }

    v46 = (v46 + 1);
    v51 = v94 + 4096;
  }

  while (v46 <= v82);
  sqlite3_free(v97);
  if (!v4)
  {
LABEL_79:
    *(a1 + 96) = v22;
    *(a1 + 100) = v23;
    v24 = **(a1 + 48);
    *(a1 + 84) = 1;
    v25 = *(a1 + 76);
    v26 = *(a1 + 88);
    v27 = v25 + *(a1 + 84);
    v28 = v25 + *(a1 + 80);
    *(a1 + 72) = 3007000;
    v28 += 6014000;
    v29 = v27 + 3007000 + v28;
    v30 = v26 + v28 + v29;
    v31 = *(a1 + 92) + v29 + v30;
    v32 = v30 + v22 + v31;
    v33 = v31 + v23 + v32;
    v34 = v32 + *(a1 + 104) + v33;
    v35 = v33 + *(a1 + 108) + v34;
    *(a1 + 112) = v34;
    *(a1 + 116) = v35;
    v36 = *v11;
    v37 = *(a1 + 104);
    v24[4] = *(a1 + 88);
    v24[5] = v37;
    v24[3] = v36;
    if (*(a1 + 63) != 2)
    {
      (*(**(a1 + 8) + 120))(*(a1 + 8));
    }

    v38 = *v11;
    v39 = *(a1 + 104);
    v24[1] = *(a1 + 88);
    v24[2] = v39;
    *v24 = v38;
    v40 = **(a1 + 48);
    v40[24] = 0;
    v40[32] = *(a1 + 88);
    v40[25] = 0;
    if (*(a1 + 63))
    {
LABEL_82:
      v41 = *(a1 + 88);
      if (!v41)
      {
        v41 = -1;
      }

      v40[26] = v41;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 1, 9);
        goto LABEL_89;
      }

LABEL_90:
      v40[27] = -1;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 5, 1, 9);
        goto LABEL_92;
      }

LABEL_93:
      v40[28] = -1;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 6, 1, 9);
        goto LABEL_95;
      }

LABEL_96:
      v40[29] = -1;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 7, 1, 9);
      }

      v4 = 0;
LABEL_99:
      if (*(a1 + 92))
      {
        sqlite3_log(283, "recovered %d frames from WAL file %s", *(a1 + 88), *(a1 + 128));
      }
    }

    else
    {
      v42 = (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 1, 10);
      if (v42 == 5)
      {
LABEL_89:
        if (*(a1 + 63))
        {
          goto LABEL_90;
        }

        v43 = (*(**(a1 + 8) + 112))(*(a1 + 8), 5, 1, 10);
        if (v43 == 5)
        {
LABEL_92:
          if (*(a1 + 63))
          {
            goto LABEL_93;
          }

          v44 = (*(**(a1 + 8) + 112))(*(a1 + 8), 6, 1, 10);
          if (v44 == 5)
          {
LABEL_95:
            if (*(a1 + 63))
            {
              goto LABEL_96;
            }

            v45 = (*(**(a1 + 8) + 112))(*(a1 + 8), 7, 1, 10);
            v4 = v45;
            if (v45 == 5)
            {
              goto LABEL_99;
            }

            if (!v45)
            {
              goto LABEL_96;
            }
          }

          else
          {
            v4 = v44;
            if (!v44)
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          v4 = v43;
          if (!v43)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v4 = v42;
        if (!v42)
        {
          goto LABEL_82;
        }
      }
    }
  }

LABEL_27:
  if (!*(a1 + 63))
  {
    (*(**(a1 + 8) + 112))(*(a1 + 8), (v10 + 1), (2 - v10), 9);
  }

LABEL_38:
  v7 = 1;
  *a2 = 1;
  if (!v8)
  {
LABEL_39:
    *(a1 + 64) = 0;
    if (!*(a1 + 63))
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 9);
    }
  }

LABEL_41:
  if (!v7)
  {
LABEL_42:
    if (*(a1 + 72) != 3007000)
    {
      v12 = sub_18192ACCC(76897);
      goto LABEL_44;
    }
  }

LABEL_45:
  if (*(a1 + 70))
  {
LABEL_46:
    if (v4)
    {
      if (*(a1 + 40) >= 1)
      {
        for (i = 0; i < *(a1 + 40); ++i)
        {
          v14 = *(*(a1 + 48) + 8 * i);
          if (v14)
          {
            v15 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(v14);
              --qword_1ED456A90;
              off_1ED452EB0(v14);
              v14 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_50;
              }

              v15 = &xmmword_1ED452F28;
            }

            (*v15)(v14);
          }

LABEL_50:
          *(*(a1 + 48) + 8 * i) = 0;
        }
      }

      if (*(a1 + 63) != 2)
      {
        (*(**(a1 + 8) + 128))(*(a1 + 8), 0);
      }

      *(a1 + 70) = 0;
      if (v4 == 522)
      {
        v4 = 0xFFFFFFFFLL;
      }

      else
      {
        v4 = v4;
      }
    }

    *(a1 + 63) = 0;
  }

  return v4;
}

uint64_t sub_1818A6540(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v10 = off_1EE341D20();
  if (v10 < 0x8000)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 >> 15;
  }

  if (*(a1 + 168))
  {
    goto LABEL_5;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    if (*(*v13 + 168))
    {
LABEL_5:
      sqlite3_log(27, "denying shm read from invalidated fd %d", *(a1 + 24));
      return 6922;
    }

    goto LABEL_9;
  }

  if (sqlite3_initialize())
  {
    return 7;
  }

  v21 = sub_181902484(24, 0x1020040684C9801);
  if (!v21)
  {
    return 7;
  }

  v22 = v21;
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
  v23 = &unk_1ED456000;
  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v24 = *(a1 + 16);
  v25 = *(v24 + 56);
  if (v25)
  {
    result = 0;
    goto LABEL_27;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v30 = *(a1 + 56);
  if (off_1EE341B40(*(a1 + 24), &v102))
  {
    *(a1 + 32) = *__error();
    v28 = 1802;
    goto LABEL_89;
  }

  if (*a1 == &unk_1EEF8FD48)
  {
    v54 = *(a1 + 40);
    v55 = *(v54 + 16);
    if (!v55 || (v56 = *v55, *v56 < 2) || !*(v56 + 104) || (v30 = *(v54 + 24)) == 0)
    {
      v28 = sub_18192ACCC(48218);
      goto LABEL_89;
    }
  }

  v53 = strlen(v30);
  if (sqlite3_initialize() || (v97 = v53, v100 = v53, (v58 = sub_181902484(v53 + 182, 0x10B0040278A46C8)) == 0))
  {
LABEL_83:
    v28 = 7;
    goto LABEL_89;
  }

  v25 = v58;
  bzero(v58, v97 + 182);
  *(v25 + 16) = v25 + 176;
  v59 = v100 + 6;
  v101 = (v25 + 176);
  sqlite3_snprintf(v59, (v25 + 176), "%s-shm", v30);
  *(v25 + 24) = -1;
  v60 = *(a1 + 16);
  *(v60 + 56) = v25;
  *v25 = v60;
  if (word_1ED452E84)
  {
    v61 = sqlite3_initialize();
    if (v61)
    {
      *(v25 + 8) = 0;
      goto LABEL_83;
    }

    v68 = qword_1ED452F08(v61);
    *(v25 + 8) = v68;
    if (!v68)
    {
      goto LABEL_83;
    }

    v98 = (v25 + 64);
    v69 = sqlite3_initialize();
    if (v69)
    {
      v70 = 0;
LABEL_114:
      v98[v70] = 0;
      goto LABEL_83;
    }

    v71 = qword_1ED452F08(v69);
    *v98 = v71;
    if (!v71)
    {
      goto LABEL_83;
    }

    v72 = sqlite3_initialize();
    if (v72)
    {
      v70 = 1;
      goto LABEL_114;
    }

    v73 = qword_1ED452F08(v72);
    *(v25 + 72) = v73;
    if (!v73)
    {
      goto LABEL_83;
    }

    v74 = sqlite3_initialize();
    if (v74)
    {
      v70 = 2;
      goto LABEL_114;
    }

    v75 = qword_1ED452F08(v74);
    *(v25 + 80) = v75;
    if (!v75)
    {
      goto LABEL_83;
    }

    v76 = sqlite3_initialize();
    if (v76)
    {
      v70 = 3;
      goto LABEL_114;
    }

    v77 = qword_1ED452F08(v76);
    *(v25 + 88) = v77;
    if (!v77)
    {
      goto LABEL_83;
    }

    v78 = sqlite3_initialize();
    if (v78)
    {
      v70 = 4;
      goto LABEL_114;
    }

    v79 = qword_1ED452F08(v78);
    *(v25 + 96) = v79;
    if (!v79)
    {
      goto LABEL_83;
    }

    v80 = sqlite3_initialize();
    if (v80)
    {
      v70 = 5;
      goto LABEL_114;
    }

    v81 = qword_1ED452F08(v80);
    *(v25 + 104) = v81;
    if (!v81)
    {
      goto LABEL_83;
    }

    v82 = sqlite3_initialize();
    if (v82)
    {
      v70 = 6;
      goto LABEL_114;
    }

    v83 = qword_1ED452F08(v82);
    *(v25 + 112) = v83;
    if (!v83)
    {
      goto LABEL_83;
    }

    v84 = sqlite3_initialize();
    if (v84)
    {
      v70 = 7;
      goto LABEL_114;
    }

    v85 = qword_1ED452F08(v84);
    *(v25 + 120) = v85;
    if (!v85)
    {
      goto LABEL_83;
    }
  }

  if (*(v24 + 33))
  {
    result = 0;
    v23 = &unk_1ED456000;
    goto LABEL_27;
  }

  v86 = *(a1 + 120) & 0x20000100;
  v87 = dword_181A27B00[(*(a1 + 124) >> 20) & 7];
  if (off_1EE341AF8(v101, 6) && (*__error() == 1 || *__error() == 13))
  {
    *(v25 + 24) = -1;
  }

  else
  {
    if (sqlite3_uri_BOOLean(*(a1 + 56), "readonly_shm", 0))
    {
      v88 = *(v25 + 24);
    }

    else
    {
      v88 = sub_18192ACE0(v101, v86 | 0x202u, WORD2(v102) & 0x1FF, v87);
      *(v25 + 24) = v88;
    }

    if ((v88 & 0x80000000) == 0)
    {
      goto LABEL_150;
    }
  }

  v88 = sub_18192ACE0(v101, v86, WORD2(v102) & 0x1FF, v87);
  *(v25 + 24) = v88;
  if ((v88 & 0x80000000) != 0)
  {
    if (*__error() == 1)
    {
      v91 = *__error();
      v28 = 23;
      v92 = 23;
      v93 = (v25 + 176);
      v94 = 48293;
    }

    else
    {
      v95 = sub_18192ACCC(48295);
      v91 = *__error();
      v28 = v95;
      v92 = v95;
      v93 = v101;
      v94 = 48295;
    }

    sub_18192AC04(v92, "open", v93, v91, v94);
    goto LABEL_89;
  }

  *(v25 + 34) = 1;
LABEL_150:
  if ((*(a1 + 30) & 2) == 0)
  {
    v89 = sub_18192F8BC(v88, *(a1 + 124) & 0x700000, 1);
    v28 = v89;
    if (v89 == 10)
    {
      *(a1 + 32) = *__error();
    }

    else if (!v89)
    {
      v88 = *(v25 + 24);
      goto LABEL_154;
    }

    off_1EE341AE0(*(v25 + 24));
    goto LABEL_89;
  }

LABEL_154:
  sub_18192F808(v88, v103, DWORD1(v103));
  v90 = sub_18192FB78(a1, v25);
  v28 = v90;
  if (v90 == 1288 || !v90)
  {
    sub_18192E440(*(v25 + 24), (v25 + 160), 8);
    result = v28;
    v23 = &unk_1ED456000;
LABEL_27:
    *v22 = v25;
    ++*(v25 + 48);
    *(a1 + 64) = v22;
    v26 = v23[354];
    if (v26)
    {
      v27 = result;
      xmmword_1ED452F28(v26);
      result = v27;
    }

    if (!*(v25 + 8))
    {
      v22[1] = *(v25 + 56);
      *(v25 + 56) = v22;
      if (result)
      {
        return result;
      }

      goto LABEL_37;
    }

    v28 = result;
    xmmword_1ED452F18(*(v25 + 8));
    v29 = *(v25 + 8);
    v22[1] = *(v25 + 56);
    *(v25 + 56) = v22;
    if (v29)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_89:
  sub_18192FD04(a1);
  v57 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_94:
    (*v57)(v22);
    goto LABEL_95;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v22);
  --qword_1ED456A90;
  off_1ED452EB0(v22);
  v22 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v57 = &xmmword_1ED452F28;
    goto LABEL_94;
  }

LABEL_95:
  v29 = qword_1ED456B10;
  if (qword_1ED456B10)
  {
LABEL_31:
    xmmword_1ED452F28(v29);
  }

LABEL_32:
  result = v28;
  if (v28)
  {
    return result;
  }

LABEL_37:
  v13 = *(a1 + 64);
LABEL_9:
  v14 = *v13;
  v15 = *(*v13 + 8);
  if (v15)
  {
    xmmword_1ED452F18(v15);
  }

  if (*(v14 + 35))
  {
    LODWORD(result) = sub_18192FB78(a1, v14);
    if (result)
    {
      goto LABEL_56;
    }

    *(v14 + 35) = 0;
  }

  v16 = (v11 + a2) / v11 * v11;
  if (v16 <= *(v14 + 32))
  {
    goto LABEL_55;
  }

  v17 = *(v14 + 16);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  *(v14 + 28) = a3;
  v18 = *(v14 + 24);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (off_1EE341B40(v18, &v102))
  {
    v19 = *__error();
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v19, __strerrbuf, 0x4FuLL);
    v20 = &byte_181A2878D;
    if (v17)
    {
      v20 = v17;
    }

    sqlite3_log(4874, "os_unix.c:%d: (%d) %s(%s) - %s", 48440, v19, "unixShmMap-stat", v20, __strerrbuf);
    LODWORD(result) = 4874;
    goto LABEL_56;
  }

  v31 = v16 * a3;
  v32 = v108;
  if (v108 >= v31)
  {
    goto LABEL_50;
  }

  if (!a4)
  {
LABEL_55:
    LODWORD(result) = 0;
    goto LABEL_56;
  }

  if (v108 < 0)
  {
    v32 = v108 + 4095;
  }

  v33 = (v31 + (v31 < 0 ? 0xFFF : 0)) >> 12;
  v34 = (v32 >> 12);
  if (v34 < v33)
  {
    v96 = v33;
    do
    {
      v35 = *(v14 + 24);
      v99 = v34;
      v36 = (v34 << 12) | 0xFFFLL;
      while (1)
      {
        v37 = off_1EE341BE8(v35, &byte_181A2878D, 1uLL, v36);
        if ((v37 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          if (*__error() == 28)
          {
            v62 = 13;
          }

          else
          {
            v62 = 4874;
          }

          goto LABEL_104;
        }
      }

      if (v37 != 1)
      {
        v62 = 4874;
LABEL_104:
        v63 = *__error();
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v63, __strerrbuf, 0x4FuLL);
        v64 = &byte_181A2878D;
        if (v17)
        {
          v64 = v17;
        }

        sqlite3_log(v62, "os_unix.c:%d: (%d) %s(%s) - %s", 48468, v63, "unixShmMap-write", v64, __strerrbuf);
        LODWORD(result) = v62;
        goto LABEL_56;
      }

      v34 = v99 + 1;
    }

    while ((v99 + 1) < v96);
  }

LABEL_50:
  v38 = *(v14 + 40);
  if (sqlite3_initialize() || (v39 = sub_18190287C(v38, (8 * v16) & ~((8 * v16) >> 31), 0x10040436913F5)) == 0)
  {
    LODWORD(result) = 3082;
    goto LABEL_56;
  }

  *(v14 + 40) = v39;
  if (v16 <= *(v14 + 32))
  {
    goto LABEL_55;
  }

  v40 = v11 * a3;
  v41 = a3;
  while ((*(v14 + 24) & 0x80000000) != 0)
  {
    if (sqlite3_initialize() || (v48 = sub_181902484(v40, 3620296983)) == 0)
    {
      LODWORD(result) = 7;
      goto LABEL_56;
    }

    v49 = v48;
    bzero(v48, v40);
    v47 = v49;
LABEL_77:
    v50 = *(v14 + 32);
    if (v11 >= 1)
    {
      v51 = 8 * v50;
      v52 = v11;
      do
      {
        *(*(v14 + 40) + v51) = v47;
        v51 += 8;
        v47 += v41;
        --v52;
      }

      while (v52);
    }

    LODWORD(result) = 0;
    v45 = v50 + v11;
    *(v14 + 32) = v45;
    if (v16 <= v45)
    {
      goto LABEL_56;
    }
  }

  if (*(v14 + 34))
  {
    v46 = 1;
  }

  else
  {
    v46 = 3;
  }

  v47 = off_1EE341CD8(0, v40, v46, 1);
  if (v47 != -1)
  {
    goto LABEL_77;
  }

  v65 = *(v14 + 16);
  v66 = *__error();
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  *__strerrbuf = 0u;
  strerror_r(v66, __strerrbuf, 0x4FuLL);
  v67 = &byte_181A2878D;
  if (v65)
  {
    v67 = v65;
  }

  sqlite3_log(5386, "os_unix.c:%d: (%d) %s(%s) - %s", 48495, v66, "mmap", v67, __strerrbuf);
  LODWORD(result) = 5386;
LABEL_56:
  if (*(v14 + 32) <= a2)
  {
    v42 = 0;
  }

  else
  {
    v42 = *(*(v14 + 40) + 8 * a2);
  }

  *a5 = v42;
  if (result)
  {
    v43 = 1;
  }

  else
  {
    v43 = *(v14 + 34) == 0;
  }

  if (v43)
  {
    result = result;
  }

  else
  {
    result = 8;
  }

  if (*(v14 + 8))
  {
    v44 = result;
    xmmword_1ED452F28(*(v14 + 8));
    return v44;
  }

  return result;
}

uint64_t sub_1818A6FE4(uint64_t a1, int a2, int a3, int a4)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    return 5130;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 5130;
  }

  v8 = a2;
  v10 = a3 + a2;
  v11 = (1 << (a3 + a2)) + (-1 << a2);
  if (((a4 & 1) == 0 || (v11 & (*(v4 + 9) | *(v4 + 10))) == 0) && a4 != 10 && (a4 != 6 || (v11 & *(v4 + 9)) != 0))
  {
    return 0;
  }

  LODWORD(v14) = a2;
  if (a3 < 1)
  {
LABEL_21:
    v18 = v5 + 128;
    if (a4)
    {
      if ((a4 & 4) != 0)
      {
        v23 = *(v18 + 4 * v8);
        if (v23 >= 2)
        {
          v12 = 0;
          *(v18 + 4 * v8) = v23 - 1;
          *(v4 + 9) &= ~v11;
          if (v14 <= v8)
          {
            return v12;
          }

          goto LABEL_50;
        }
      }

      v12 = sub_1819300A8(a1);
      if (!v12)
      {
        bzero((v18 + 4 * v8), 4 * a3);
        *(v4 + 9) &= ~v11;
        *(v4 + 10) &= ~v11;
        if (v14 <= v8)
        {
          return v12;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if ((a4 & 4) == 0)
    {
      if (a3 >= 1)
      {
        v19 = v8;
        while (!*(v18 + 4 * v19))
        {
          if (++v19 >= v10)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_48;
      }

LABEL_27:
      v20 = v10;
      v21 = sub_1819300A8(a1);
      if (!v21)
      {
        *(v4 + 10) |= v11;
        if (a3 >= 1)
        {
          if (v20 <= v8 + 1)
          {
            v22 = v8 + 1;
          }

          else
          {
            v22 = v20;
          }

          memset((v5 + 4 * v8 + 128), 255, 4 * (v22 + ~v8) + 4);
        }

        v12 = 0;
        if (v14 <= v8)
        {
          return v12;
        }

LABEL_50:
        v25 = v14;
        do
        {
          v26 = *(v5 + 56 + 8 * v25);
          if (v26)
          {
            xmmword_1ED452F28(v26);
          }

          --v25;
        }

        while (v25 > v8);
        return v12;
      }

LABEL_55:
      v12 = v21;
      if (v14 > v8)
      {
        goto LABEL_50;
      }

      return v12;
    }

    v24 = *(v18 + 4 * v8);
    if (v24 < 0)
    {
LABEL_48:
      v12 = 5;
LABEL_49:
      if (v14 <= v8)
      {
        return v12;
      }

      goto LABEL_50;
    }

    if (!v24)
    {
      v21 = sub_1819300A8(a1);
      if (v21)
      {
        goto LABEL_55;
      }

      v24 = *(v18 + 4 * v8);
    }

    v12 = 0;
    *(v4 + 9) |= v11;
    *(v18 + 4 * v8) = v24 + 1;
    if (v14 <= v8)
    {
      return v12;
    }

    goto LABEL_50;
  }

  v14 = a2;
  v27 = a3 + a2;
  v15 = v10;
  while (1)
  {
    v16 = *(v5 + 64 + 8 * v14);
    if (a4 != 10)
    {
      if (v16)
      {
        xmmword_1ED452F18(v16);
      }

      goto LABEL_13;
    }

    if (v16)
    {
      v17 = (*(&xmmword_1ED452F18 + 1))();
      if (v17)
      {
        break;
      }
    }

LABEL_13:
    if (++v14 >= v15)
    {
      v8 = a2;
      v10 = v27;
      goto LABEL_21;
    }
  }

  v12 = v17;
  v8 = a2;
  if (v14 > a2)
  {
    goto LABEL_50;
  }

  return v12;
}

uint64_t sub_1818A72FC(uint64_t a1, _DWORD *a2)
{
  v2 = **(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      if (*(*v3 + 16) == sub_181893698 && *(v3 + 128) <= 3u)
      {
        if (*(v3 + 168))
        {
          goto LABEL_39;
        }

        v20 = *(v3 + 64);
        if (v20)
        {
          if (*(*v20 + 168))
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  v22 = *v2;
  v23 = v2[1];
  v24 = v2[2];
  if (*(a1 + 63) != 2)
  {
    v4 = a1;
    v5 = a2;
    (*(*v3 + 120))(v3);
    a2 = v5;
    a1 = v4;
    v3 = *(v4 + 8);
  }

  if (v3 && *v3 && *(*v3 + 16) == sub_181893698 && *(v3 + 128) <= 3u && (*(v3 + 168) || (v21 = *(v3 + 64)) != 0 && *(*v21 + 168)))
  {
LABEL_39:
    sqlite3_log(27, "denying shm read from invalidated fd %d", *(v3 + 24));
    return 6922;
  }

  else
  {
    v6 = 1;
    if (!(v22 ^ *(v2 + 6) | *(&v22 + 1) ^ *(v2 + 7) | v23 ^ *(v2 + 8) | *(&v23 + 1) ^ *(v2 + 9) | v24 ^ *(v2 + 10) | *(&v24 + 1) ^ *(v2 + 11)))
    {
      if (BYTE12(v22))
      {
        v7 = v22 + DWORD2(v22) + DWORD1(v22) + v22;
        v8 = HIDWORD(v22) + DWORD1(v22) + v22 + v7;
        v9 = v7 + v23 + v8;
        v10 = DWORD1(v23) + v8 + v9;
        v11 = v9 + DWORD2(v23) + v10;
        v12 = HIDWORD(v23) + v10 + v11;
        v13 = v11 + v24 + v12;
        v6 = 1;
        if (__PAIR64__(DWORD1(v24) + v12 + v13, v13) == *(&v24 + 1))
        {
          v17 = *(a1 + 72) == v22 && *(a1 + 80) == *(&v22 + 1) && *(a1 + 88) == v23 && *(a1 + 96) == *(&v23 + 1) && *(a1 + 104) == v24;
          v6 = 0;
          if (!v17 || *(a1 + 112) != *(&v24 + 1))
          {
            *a2 = 1;
            *(a1 + 72) = v22;
            *(a1 + 88) = v23;
            *(a1 + 104) = v24;
            *(a1 + 56) = (*(a1 + 86) | (*(a1 + 86) << 16)) & 0x1FE00;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1818A758C(uint64_t a1, int a2, int a3)
{
  v28 = 0;
  v29 = 0;
  v6 = ((a2 + 4096) + 0xFFFFFFFF021) >> 12;
  if (*(a1 + 40) > v6 && (v7 = *(*(a1 + 48) + 8 * v6), (v28 = v7) != 0))
  {
    result = 0;
  }

  else
  {
    result = sub_1819346F0(a1, ((a2 + 4096) + 0xFFFFFFFF021) >> 12, &v28);
    v7 = v28;
    if (!v28)
    {
      if (result <= 1)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  v9 = 136;
  if (v6)
  {
    v9 = 0;
    v10 = (v6 << 12) - 34;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v29) = v10;
  if (!result)
  {
    v11 = v7 + v9;
    v12 = a2 - v10;
    if (a2 - v10 == 1)
    {
      bzero((v7 + v9), 0x8000 - v9);
    }

    v13 = v7 + 0x4000;
    v14 = v11 + 4 * v12;
    if (*(v14 - 4))
    {
      v15 = *(a1 + 88);
      if (v15)
      {
        v30 = 0;
        v31[0] = 0;
        v31[1] = 0;
        v16 = ((v15 + 4096) + 0xFFFFFFFF021) >> 12;
        if (*(a1 + 40) > v16 && (v17 = *(*(a1 + 48) + 8 * v16), (v31[0] = v17) != 0))
        {
          v18 = 0;
        }

        else
        {
          v18 = sub_1819346F0(a1, v16, v31);
          v17 = v31[0];
          if (!v31[0])
          {
            goto LABEL_31;
          }
        }

        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = 136;
        }

        if (!v18)
        {
          v20 = 0;
          v21 = v17 + 0x4000;
          v22 = v17 + v19;
          v23 = (v16 << 12) - 34;
          if (!v16)
          {
            v23 = 0;
          }

          v24 = *(a1 + 88) - v23;
          do
          {
            if (v24 < *(v21 + v20))
            {
              *(v21 + v20) = 0;
            }

            v20 += 2;
          }

          while (v20 != 0x4000);
          bzero((v22 + 4 * v24), v21 - (v22 + 4 * v24));
        }
      }
    }

LABEL_31:
    v25 = (383 * a3) & 0x1FFF;
    if (*(v13 + 2 * v25))
    {
      v26 = ~a2 + v10;
      while (!__CFADD__(v26++, 1))
      {
        v25 = (v25 + 1) & 0x1FFF;
        if (!*(v13 + 2 * v25))
        {
          goto LABEL_35;
        }
      }

      return sub_18190EDA8(75467);
    }

    else
    {
LABEL_35:
      result = 0;
      *(v14 - 4) = a3;
      *(v13 + 2 * v25) = v12;
    }
  }

  return result;
}

__n128 sub_1818A77D8(uint64_t a1)
{
  *(a1 + 72) = 3007000;
  v1 = a1 + 72;
  *(a1 + 84) = 1;
  v2 = *(a1 + 76);
  v3 = v2 + *(a1 + 84);
  v4 = **(a1 + 48);
  v5 = v2 + *(a1 + 80) + 6014000;
  v6 = v3 + 3007000 + v5;
  v7 = v5 + *(a1 + 88) + v6;
  v8 = *(a1 + 92) + v6 + v7;
  v9 = v7 + *(a1 + 96) + v8;
  v10 = *(a1 + 100) + v8 + v9;
  v11 = v9 + *(a1 + 104) + v10;
  v12 = *(a1 + 108);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12 + v10 + v11;
  v13 = *(a1 + 72);
  v14 = *(a1 + 104);
  *(v4 + 64) = *(a1 + 88);
  *(v4 + 80) = v14;
  *(v4 + 48) = v13;
  if (*(a1 + 63) != 2)
  {
    (*(**(a1 + 8) + 120))(*(a1 + 8));
  }

  result = *v1;
  v16 = *(v1 + 32);
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v16;
  *v4 = result;
  return result;
}

void sqlite3_log(int iErrCode, const char *zFormat, ...)
{
  va_start(va, zFormat);
  v3 = MEMORY[0x1EEE9AC00](*&iErrCode, zFormat);
  v20 = *MEMORY[0x1E69E9840];
  if (off_1ED453010 || (dword_1ED45305C & 1) != 0)
  {
    v10 = 0;
    v15 = 0;
    v11 = &v16;
    v12 = 5120;
    v13 = 0;
    v14 = 0;
    sqlite3_str_vappendf(&v10, v2, va);
    if (v11)
    {
      *(v11 + HIDWORD(v13)) = 0;
      if (v13)
      {
        if ((v14 & 0x400) == 0)
        {
          sub_18192A12C(&v10);
        }
      }
    }

    if (off_1ED453010)
    {
      (off_1ED453010)(qword_1ED453018, v3, &v16);
    }

    if (dword_1ED45305C)
    {
      if (qword_1ED456C38 != -1)
      {
        sub_181A1E95C();
      }

      if (v16 != 0x2068637573206F6ELL || *(&v16 + 7) != 0x203A656C62617420)
      {
        v5 = v16 == 0x6E656D6574617473 && *(&v16 + 1) == 0x7374726F62612074;
        if (!v5 || v17 != 544497952)
        {
          v7 = qword_1ED456C08;
          v8 = OS_LOG_TYPE_ERROR;
          switch(v3)
          {
            case 0:
            case 17:
            case 19:
            case 27:
            case 100:
            case 101:
              return;
            case 1:
            case 2:
            case 7:
            case 10:
            case 11:
            case 13:
            case 15:
            case 21:
            case 26:
              goto LABEL_24;
            case 14:
              v7 = qword_1ED456C10;
              goto LABEL_24;
            default:
              v8 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
              if (os_log_type_enabled(v7, v8))
              {
                if ((dword_1ED45305C & 0x20) != 0)
                {
                  v9 = qword_1ED456C08;
                  if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v19 = &v16;
                    _os_log_impl(&dword_18188D000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
                  }
                }

                if (os_log_type_enabled(v7, v8))
                {
                  *buf = 136315138;
                  v19 = &v16;
                  _os_log_impl(&dword_18188D000, v7, v8, "%s", buf, 0xCu);
                }
              }

              break;
          }
        }
      }
    }
  }
}

uint64_t sub_1818A7CF0(int a1, int a2)
{
  result = sub_181902484(192, 0x10A00403F9A86B3);
  if (result)
  {
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    if (a2 <= 16)
    {
      v5 = 16;
    }

    else
    {
      v5 = a2;
    }

    v6 = (v5 + 7) & 0xFFFFFFF8;
    *result = a1;
    *(result + 4) = v6;
    v7 = v6 + a1;
    if (v7 <= 0x20000)
    {
      v8 = 0x20000;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*MEMORY[0x1E69E9AA0] + v8) & ~*MEMORY[0x1E69E9AA0];
    *(result + 8) = v9;
    v10 = v9 / v7;
    *(result + 124) = v10;
    if (v10 <= 10)
    {
      LODWORD(v10) = 10;
    }

    *(result + 16) = v10;
  }

  return result;
}

uint64_t sub_1818A7DA8(uint64_t result, int a2)
{
  if (a2 >= 0x3FFFFFFF)
  {
    v2 = 0x3FFFFFFF;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= *(result + 16))
  {
    v2 = *(result + 16);
  }

  v3 = *(result + 124);
  v4 = (v2 - 1) / v3 + 1;
  v5 = v3 * v4;
  v6 = v5 << 31 >> 31;
  if (v6 != v5 || v6 < 0)
  {
    do
    {
      do
      {
        v4 /= 2;
        v7 = v3 * v4;
        v5 = v7 << 31 >> 31;
      }

      while (v5 != v7);
    }

    while (v5 < 0);
  }

  *(result + 128) = v4;
  *(result + 20) = v5;
  return sub_1819A811C(result);
}

unint64_t sub_1818A7E0C(int *a1, unsigned int a2, int a3)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v51 = 0;
  if (a3 == 1 && off_1EA831A10)
  {
    off_1EA831A10(a1);
  }

  v6 = sub_1819A9100(a1, a2, &v51);
  v7 = v6;
  if (!a3 || v6)
  {
    goto LABEL_82;
  }

  if ((*(a1 + 8) || *(a1 + 10) || *(a1 + 12) || *(a1 + 14)) && a1[7] >= a1[5])
  {
    v8 = a1[12];
    v9 = *&a1[4 * ((v8 - 1) & 3) + 16];
    if (!v9)
    {
      do
      {
        v10 = v8++ & 3;
        v9 = *&a1[4 * v10 + 16];
      }

      while (!v9);
      a1[12] = v8;
    }

    v6 = sub_1819A9100(a1, *(v9 - 24), 0);
    if (v6)
    {
      v7 = v6;
      v11 = a1[8];
      if (v11)
      {
        v12 = *(a1 + 5);
        if (v12)
        {
          v13 = (v12 + 8 * (*(v6 + 16) % v11));
          v14 = *v13;
          if (*v13 == v6)
          {
LABEL_21:
            *v13 = *(v6 + 24);
          }

          else
          {
            while (v14)
            {
              v15 = v14;
              v14 = *(v14 + 24);
              if (v14 == v6)
              {
                v13 = (v15 + 24);
                goto LABEL_21;
              }
            }
          }

          *(v6 + 24) = 0;
          --a1[7];
        }
      }

      goto LABEL_59;
    }
  }

  if (a3 != 2 && a1[7] >= a1[5])
  {
    v7 = 0;
    goto LABEL_59;
  }

  v6 = sub_1819352D4(64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_59;
  }

  v16 = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v52[0] = a1 + 42;
  v52[1] = a1 + 34;
  v50 = (a1 + 34);
  v52[2] = a1 + 38;
  v52[3] = 0;
  do
  {
    v19 = v52[v16];
    if (v19)
    {
      v18 = *v19;
      if (*v19 && *(v18 + 34) + *(v18 + 33) < a1[31])
      {
        goto LABEL_56;
      }

      goto LABEL_30;
    }

    v6 = sub_181902484(40, 0x10A2040E3317920);
    v18 = v6;
    if (!v6)
    {
      goto LABEL_30;
    }

    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    v20 = 8 * a1[31];
    v21 = sub_181902484(v20, 0x2004093837F09);
    if (v21)
    {
      v22 = v21;
      bzero(v21, v20);
      *(v18 + 16) = v22;
      v6 = vm_allocate(*MEMORY[0x1E69E9A60], (v18 + 24), *(a1 + 1), 1040187395);
      if (!v6)
      {
        *(v18 + 32) = 2;
        v25 = *v50;
        if (*v50)
        {
          *(v25 + 8) = v18;
          *v18 = v25;
        }

        else
        {
          *(a1 + 18) = v18;
        }

        *(a1 + 17) = v18;
        ++a1[33];
        goto LABEL_30;
      }

      v23 = *(v18 + 16);
      if (!v23)
      {
        goto LABEL_46;
      }

      v24 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_44;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v23);
      --qword_1ED456A90;
      off_1ED452EB0(v23);
      v23 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v24 = &xmmword_1ED452F28;
LABEL_44:
        (*v24)(v23);
      }
    }

    else
    {
      *(v18 + 16) = 0;
    }

LABEL_46:
    v17 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_29;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v18);
    --qword_1ED456A90;
    v6 = off_1ED452EB0(v18);
    v18 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v17 = &xmmword_1ED452F28;
LABEL_29:
      v6 = (*v17)(v18);
      v18 = 0;
    }

LABEL_30:
    ++v16;
  }

  while (v16 != 4);
  if (!v18)
  {
    goto LABEL_57;
  }

LABEL_56:
  v6 = sub_1818A84DC(a1, v18, 0, 0);
  if (!v6)
  {
    v41 = *(v18 + 16);
    v42 = -1;
    do
    {
      v43 = *v41++;
      ++v42;
    }

    while (v43);
    *(v41 - 1) = v7;
    v44 = *a1;
    v45 = a1[1];
    v46 = v45 + v44;
    v47 = *(v18 + 24) + (v45 + v44) * v42;
    *v7 = v47;
    *(v7 + 8) = v47 + v44;
    *(v7 + 56) = v18;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 += v46;
      if (qword_1ED456A48 > qword_1ED456A98)
      {
        qword_1ED456A98 = qword_1ED456A48;
      }

      v48 = qword_1ED456A90;
      v49 = ++qword_1ED456A90;
      if (v48 >= qword_1ED456AE0)
      {
        qword_1ED456AE0 = v49;
      }

      v6 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v6 = xmmword_1ED452F28(xmmword_1ED456AF0);
      }
    }
  }

LABEL_57:
  if (!*v7)
  {
    v6 = sub_181935120(v7);
    v7 = 0;
  }

LABEL_59:
  v26 = a1[8];
  if (a1[7] >= v26)
  {
    v27 = 2 * v26;
    v28 = v27 <= 0x100 ? 256 : v27;
    v6 = sub_181902484(8 * v28, 0x2004093837F09);
    if (v6)
    {
      v29 = v6;
      bzero(v6, 8 * v28);
      v30 = a1[8];
      if (v30)
      {
        for (i = 0; i != v30; ++i)
        {
          v32 = *(*(a1 + 5) + 8 * i);
          if (v32)
          {
            do
            {
              v33 = *(v32 + 16) % v28;
              v34 = *(v32 + 24);
              *(v32 + 24) = *(v29 + 8 * v33);
              *(v29 + 8 * v33) = v32;
              v32 = v34;
            }

            while (v34);
          }
        }
      }

      v35 = *(a1 + 5);
      if (v35)
      {
        v36 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_76;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v35);
        --qword_1ED456A90;
        v6 = off_1ED452EB0(v35);
        v35 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v36 = &xmmword_1ED452F28;
LABEL_76:
          v6 = (*v36)(v35);
        }
      }

      *(a1 + 5) = v29;
      a1[8] = v28;
    }
  }

  if (v7)
  {
    v37 = a1[8];
    if (v37)
    {
      if (*(a1 + 5))
      {
        v38 = a2 % v37;
        ++a1[7];
        *(v7 + 16) = a2;
        *(v7 + 33) = 4;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        bzero(*v7, *a1);
        bzero(*(v7 + 8), a1[1]);
        v39 = *(a1 + 5);
        *(v7 + 24) = *(v39 + 8 * v38);
        *(v39 + 8 * v38) = v7;
      }
    }
  }

LABEL_82:
  if (a3 == 1 && off_1EA831A18)
  {
    off_1EA831A18(v6);
  }

  if (a1[30] < a2)
  {
    a1[30] = a2;
  }

  if (v7)
  {
    *(v7 + 32) = *(v7 + 32) & 0xFE | v51 & 1;
  }

  return v7;
}

uint64_t sub_1818A84DC(uint64_t a1, uint64_t *a2, int a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a2 + 33);
  if (!v8)
  {
    if (*(a2 + 32) == 1)
    {
      v52 = 0;
      result = MEMORY[0x1865D8700](*MEMORY[0x1E69E9A60], a2[3], 0, &v52);
      if (result)
      {
        return result;
      }

      if (*(a1 + 184))
      {
        *(a1 + 184) = 0;
        goto LABEL_141;
      }

      if (v52 == 2)
      {
LABEL_141:
        bzero(a2[3], *(a1 + 8));
        if (*(a2 + 34))
        {
          v50 = *(a1 + 124);
          if (v50 >= 1)
          {
            for (i = 0; i < v50; ++i)
            {
              v53 = *(a2[2] + 8 * i);
              if (v53)
              {
                sub_1819A8D0C(a1, &v53);
                v50 = *(a1 + 124);
              }
            }
          }
        }

        if (a4)
        {
          *a4 = 14;
        }

        v10 = *(a2 + 33);
        if (a3 != 1)
        {
          *(a2 + 33) = ++v10;
        }

        goto LABEL_11;
      }

      v8 = *(a2 + 33);
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = v8 + 1;
  *(a2 + 33) = v10;
  if (a3 == 1)
  {
    --*(a2 + 34);
  }

LABEL_11:
  if (v10 == 1)
  {
    v16 = *(a2 + 32);
    if (v16 == 2)
    {
      v41 = *a2;
      if (!*a2 && *(a1 + 144) != a2)
      {
        goto LABEL_75;
      }

      v18 = a2 + 1;
      v42 = a2[1];
      if (v42)
      {
        *v42 = v41;
        v41 = *a2;
      }

      if (v41)
      {
        *(v41 + 8) = v42;
      }

      if (*(a1 + 136) == a2)
      {
        *(a1 + 136) = v41;
      }

      v20 = (a1 + 144);
      if (*(a1 + 144) != a2)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v16 != 1)
      {
        if (!*(a2 + 32))
        {
          v17 = *a2;
          if (*a2 || *(a1 + 176) == a2)
          {
            v18 = a2 + 1;
            v19 = a2[1];
            if (v19)
            {
              *v19 = v17;
              v17 = *a2;
            }

            if (v17)
            {
              *(v17 + 8) = v19;
            }

            if (*(a1 + 168) == a2)
            {
              *(a1 + 168) = v17;
            }

            v20 = (a1 + 176);
            if (*(a1 + 176) != a2)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

LABEL_75:
        v37 = (a1 + 168);
        if (*(a2 + 34) + 1 < *(a1 + 124))
        {
          v38 = *v37;
          if (!*v37)
          {
LABEL_121:
            *(a1 + 176) = a2;
            goto LABEL_126;
          }

LABEL_77:
          *(v38 + 8) = a2;
          *a2 = v38;
LABEL_126:
          result = 0;
          *v37 = a2;
          *(a2 + 32) = 0;
          return result;
        }

LABEL_122:
        v49 = *(a1 + 176);
        v48 = (a1 + 176);
        v47 = v49;
        if (v49)
        {
          *v47 = a2;
          a2[1] = v47;
        }

        else
        {
          *v37 = a2;
        }

        v37 = v48;
        goto LABEL_126;
      }

      v35 = *a2;
      if (!*a2 && *(a1 + 160) != a2)
      {
        goto LABEL_75;
      }

      v18 = a2 + 1;
      v36 = a2[1];
      if (v36)
      {
        *v36 = v35;
        v35 = *a2;
      }

      if (v35)
      {
        *(v35 + 8) = v36;
      }

      if (*(a1 + 152) == a2)
      {
        *(a1 + 152) = v35;
      }

      v20 = (a1 + 160);
      if (*(a1 + 160) != a2)
      {
        goto LABEL_74;
      }
    }

LABEL_73:
    *v20 = *v18;
LABEL_74:
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_75;
  }

  if (v10)
  {
    v21 = *(a2 + 34) + v10;
    if (v21 != *(a1 + 124))
    {
      return 0;
    }

    v22 = *(a2 + 32);
    if (v22 == 2)
    {
      v45 = *a2;
      if (!*a2 && *(a1 + 144) != a2)
      {
        goto LABEL_119;
      }

      v24 = a2 + 1;
      v46 = a2[1];
      if (v46)
      {
        *v46 = v45;
        v45 = *a2;
      }

      if (v45)
      {
        *(v45 + 8) = v46;
      }

      if (*(a1 + 136) == a2)
      {
        *(a1 + 136) = v45;
      }

      v26 = (a1 + 144);
      v27 = *(a1 + 144);
    }

    else if (v22 == 1)
    {
      v43 = *a2;
      if (!*a2 && *(a1 + 160) != a2)
      {
        goto LABEL_119;
      }

      v24 = a2 + 1;
      v44 = a2[1];
      if (v44)
      {
        *v44 = v43;
        v43 = *a2;
      }

      if (v43)
      {
        *(v43 + 8) = v44;
      }

      if (*(a1 + 152) == a2)
      {
        *(a1 + 152) = v43;
      }

      v26 = (a1 + 160);
      v27 = *(a1 + 160);
    }

    else
    {
      if (*(a2 + 32))
      {
        goto LABEL_119;
      }

      v23 = *a2;
      if (!*a2 && *(a1 + 176) != a2)
      {
        goto LABEL_119;
      }

      v24 = a2 + 1;
      v25 = a2[1];
      if (v25)
      {
        *v25 = v23;
        v23 = *a2;
      }

      if (v23)
      {
        *(v23 + 8) = v25;
      }

      if (*(a1 + 168) == a2)
      {
        *(a1 + 168) = v23;
      }

      v26 = (a1 + 176);
      v27 = *(a1 + 176);
    }

    if (v27 == a2)
    {
      *v26 = *v24;
    }

    *a2 = 0;
    a2[1] = 0;
LABEL_119:
    v37 = (a1 + 168);
    if (v21 < *(a1 + 124))
    {
      v38 = *v37;
      if (!*v37)
      {
        goto LABEL_121;
      }

      goto LABEL_77;
    }

    goto LABEL_122;
  }

  v11 = *(a2 + 32);
  if (v11 == 2)
  {
    v39 = *a2;
    if (!*a2 && *(a1 + 144) != a2)
    {
      goto LABEL_60;
    }

    v13 = a2 + 1;
    v40 = a2[1];
    if (v40)
    {
      *v40 = v39;
      v39 = *a2;
    }

    if (v39)
    {
      *(v39 + 8) = v40;
    }

    if (*(a1 + 136) == a2)
    {
      *(a1 + 136) = v39;
    }

    v15 = (a1 + 144);
    if (*(a1 + 144) != a2)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v11 == 1)
  {
    v28 = *a2;
    if (!*a2 && *(a1 + 160) != a2)
    {
      goto LABEL_60;
    }

    v13 = a2 + 1;
    v29 = a2[1];
    if (v29)
    {
      *v29 = v28;
      v28 = *a2;
    }

    if (v28)
    {
      *(v28 + 8) = v29;
    }

    if (*(a1 + 152) == a2)
    {
      *(a1 + 152) = v28;
    }

    v15 = (a1 + 160);
    if (*(a1 + 160) != a2)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (*(a2 + 32))
  {
    goto LABEL_60;
  }

  v12 = *a2;
  if (!*a2 && *(a1 + 176) != a2)
  {
    goto LABEL_60;
  }

  v13 = a2 + 1;
  v14 = a2[1];
  if (v14)
  {
    *v14 = v12;
    v12 = *a2;
  }

  if (v12)
  {
    *(v12 + 8) = v14;
  }

  if (*(a1 + 168) == a2)
  {
    *(a1 + 168) = v12;
  }

  v15 = (a1 + 176);
  if (*(a1 + 176) == a2)
  {
LABEL_58:
    *v15 = *v13;
  }

LABEL_59:
  *a2 = 0;
  a2[1] = 0;
LABEL_60:
  v30 = (a1 + 136);
  if (*(a2 + 34) >= *(a1 + 124))
  {
    v34 = *(a1 + 144);
    v33 = (a1 + 144);
    v32 = v34;
    if (v34)
    {
      *v32 = a2;
      a2[1] = v32;
    }

    else
    {
      *v30 = a2;
    }

    v30 = v33;
  }

  else
  {
    v31 = *v30;
    if (*v30)
    {
      *(v31 + 8) = a2;
      *a2 = v31;
    }

    else
    {
      *(a1 + 144) = a2;
    }
  }

  result = 0;
  *v30 = a2;
  *(a2 + 32) = 2;
  return result;
}

__n128 sub_1818A8A8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11 = 0;
  v3 = *(v2 + 344);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (sub_18193452C(v3, *(a1 + 48), &v11))
  {
    return result;
  }

  if (v11)
  {
    v5 = *(v2 + 344);
    v6 = *(v2 + 200);
    v7 = (*(v5 + 86) | (*(v5 + 86) << 16)) & 0x1FE00;
    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(**(v5 + 16) + 16))(*(v5 + 16), *(a1 + 8), v8, (v7 | 0x18u) * (v11 - 1) + 56);
  }

  else
  {
LABEL_8:
    v9 = (*(**(v2 + 72) + 16))(*(v2 + 72), *(a1 + 8), *(v2 + 200), *(v2 + 200) * (*(a1 + 48) - 1));
    if (v9 == 522)
    {
      v9 = 0;
    }
  }

  if (*(a1 + 48) == 1)
  {
    if (!v9)
    {
      result = *(*(a1 + 8) + 24);
      *(v2 + 136) = result;
      v10 = *(v2 + 296);
      if (v10)
      {
        goto LABEL_14;
      }

      return result;
    }

    *(v2 + 136) = -1;
    *(v2 + 144) = -1;
  }

  v10 = *(v2 + 296);
  if (v10)
  {
LABEL_14:
    v10(*(v2 + 320), *(a1 + 8), *(a1 + 48), 3);
  }

  return result;
}

void *sub_1818A8BAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v24 = 0x10000000000;
  v10 = *(a1 + 136);
  v21 = &v25;
  v22 = 512;
  v23 = v10;
  sqlite3_str_vappendf(&v20, a2, &a9);
  if (v21 && (v21[v24] = 0, v23) && (v24 & 0x40000000000) == 0)
  {
    result = sub_18192A12C(&v20);
  }

  else
  {
    result = v21;
  }

  if (BYTE4(v24) == 7 && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    if (*(a1 + 344))
    {
      v18 = result;
      sub_181910730(*(a1 + 344), "out of memory", v11, v12, v13, v14, v15, v16, &a9);
      result = v18;
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

  return result;
}

uint64_t sub_1818A8CF0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v22 = 0;
  if (!a3 || a2 == 156 && *a3 && (v7 = a1, v8 = sub_181949B34(*a3, &v22), a1 = v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a3 + 8) + 1;
  }

  result = sub_181929E8C(a1, v9 + 80, 0x1032040B79D87BDLL);
  if (result)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = v6;
    *(result + 52) = -1;
    if (a3)
    {
      if (!v9)
      {
        v14 = v22;
        if (v22)
        {
          v15 = 276826112;
        }

        else
        {
          v15 = 545261568;
        }

        *(result + 4) |= v15;
        *(result + 8) = v14;
        goto LABEL_29;
      }

      v11 = (result + 80);
      *(result + 8) = result + 80;
      v12 = *(a3 + 8);
      if (v12)
      {
        v13 = result;
        memcpy((result + 80), *a3, v12);
        result = v13;
        v11[*(a3 + 8)] = 0;
        if (!a4)
        {
          goto LABEL_29;
        }

LABEL_18:
        v16 = *v11;
        if (byte_181A204C8[*v11] < 0)
        {
          v17 = 0;
          if (v16 == 34)
          {
            v18 = 67108992;
          }

          else
          {
            v18 = 0x4000000;
          }

          *(result + 4) |= v18;
          if (v16 == 91)
          {
            v16 = 93;
          }

          for (i = 1; ; ++i)
          {
            v20 = i;
            v21 = v11[i];
            if (v21 == v16)
            {
              ++i;
              LOBYTE(v21) = v16;
              if (v11[v20 + 1] != v16)
              {
                break;
              }
            }

            v11[v17++] = v21;
          }

          v11[v17] = 0;
        }

        goto LABEL_29;
      }

      *v11 = 0;
      if (a4)
      {
        goto LABEL_18;
      }
    }

LABEL_29:
    *(result + 40) = 1;
  }

  return result;
}

void *sub_1818A8EA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      *(a2 + 24) = a4;
      *(a2 + 4) |= *(a4 + 4) & 0x400208;
      v5 = *(a4 + 40) + 1;
      *(a2 + 40) = v5;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      v5 = 1;
      *(a2 + 40) = 1;
      if (!a3)
      {
        return result;
      }
    }

    *(a2 + 16) = a3;
    *(a2 + 4) |= *(a3 + 4) & 0x400208;
    v8 = *(a3 + 40);
    if (v8 >= v5)
    {
      *(a2 + 40) = v8 + 1;
    }
  }

  else
  {
    if (a3)
    {
      v6 = result;
      v7 = a4;
      sub_1819439E0(result, a3);
      result = v6;
      a4 = v7;
    }

    if (a4)
    {

      return sub_1819439E0(result, a4);
    }
  }

  return result;
}

int *sub_1818A8F6C(uint64_t *a1, int *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return sub_18197FD9C(*a1, a3);
  }

  v3 = *a2;
  if (a2[1] <= *a2)
  {
    return sub_18197FE14(*a1, a2, a3);
  }

  *a2 = v3 + 1;
  v4 = &a2[6 * v3];
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a3;
  return a2;
}

int *sub_1818A8FB4(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  v13 = *a1;
  if (!a2 && a7)
  {
    if (*a7)
    {
      v14 = "ON";
LABEL_7:
      sub_181910730(a1, "a JOIN clause is required before %s", a3, a4, a5, a6, a7, a8, v14);
      goto LABEL_18;
    }

    if (*(a7 + 8))
    {
      v14 = "USING";
      goto LABEL_7;
    }
  }

  result = sub_1818A930C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v17 = &result[18 * *result - 16];
    v18 = *(a1 + 302);
    v19 = result;
    if (v18 >= 2)
    {
      v20 = *v17;
      if (*v17)
      {
        if (!v11 || !*v11)
        {
          v11 = a3;
        }

        if (v18 != 3)
        {
          v21 = *a1 ? sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4) : sub_181902484(32, 0x10F00409A20EBA4);
          v26 = v21;
          result = v19;
          if (v26)
          {
            *v26 = 0u;
            *(v26 + 16) = 0u;
            *v26 = v20;
            *(v26 + 8) = *v11;
            *(v26 + 24) = a1[51];
            a1[51] = v26;
          }
        }
      }
    }

    v27 = *(a5 + 8);
    if (v27)
    {
      v28 = *a5;
      if (v28)
      {
        v29 = sub_181929E8C(v13, v27 + 1, 1565185748);
        v30 = v29;
        if (v29 && (memcpy(v29, v28, v27), v30[v27] = 0, v31 = *v30, byte_181A204C8[*v30] < 0))
        {
          v32 = 0;
          if (v31 == 91)
          {
            v31 = 93;
          }

          v33 = 1;
          result = v19;
          while (1)
          {
            v34 = v33;
            v35 = v30[v33];
            if (v35 == v31)
            {
              ++v33;
              LOBYTE(v35) = v31;
              if (v30[v34 + 1] != v31)
              {
                break;
              }
            }

            v30[v32++] = v35;
            ++v33;
          }

          v30[v32] = 0;
        }

        else
        {
          result = v19;
        }
      }

      else
      {
        v30 = 0;
      }

      *(v17 + 8) = v30;
    }

    if (a6)
    {
      v36 = *(v17 + 27);
      if (v36)
      {
        *(v17 + 64) = 0;
        *(v17 + 27) = v36 & 0xFE;
      }

      else
      {
        v37 = *(v17 + 64);
        if (v37)
        {
          sub_181929C84(*a1, v37);
          *(v17 + 64) = 0;
        }
      }

      v38 = sub_181929E8C(*a1, 0x18uLL, 0x10200405AF6BDC9);
      *(v17 + 64) = v38;
      if (!v38)
      {
        sub_1818BB408(*a1, a6, 1);
        result = v19;
        if (a7)
        {
LABEL_56:
          if (*(a7 + 8))
          {
            *(v17 + 25) |= 0x800u;
            *(v17 + 56) = *(a7 + 8);
          }

          else
          {
            *(v17 + 56) = *a7;
          }

          return result;
        }

LABEL_59:
        *(v17 + 56) = 0;
        return result;
      }

      *(v17 + 25) |= 4u;
      v38[1] = 0;
      v38[2] = 0;
      *v38 = a6;
      result = v19;
      if ((*(a6 + 5) & 8) != 0)
      {
        *(v17 + 25) |= 0x4000u;
      }
    }

    if (a7)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  if (a7)
  {
LABEL_18:
    if (*a7)
    {
      sub_1819439E0(v13, *a7);
    }

    else
    {
      v22 = *(a7 + 8);
      if (v22)
      {
        v23 = *v22;
        if (*v22 >= 1)
        {
          v24 = 0;
          do
          {
            v25 = v22[v24 + 1];
            if (v25)
            {
              sub_181929C84(v13, v25);
              v23 = *v22;
            }

            ++v24;
          }

          while (v24 < v23);
        }

        sub_181939EC8(v13, v22);
      }
    }
  }

  if (a6)
  {
    sub_1818BB408(v13, a6, 1);
  }

  return 0;
}

int *sub_1818A930C(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    result = sub_1818A95FC(a1, a2, 1, *a2, a5, a6, a7, a8);
    if (!result)
    {
      sub_1818BB5B0(v10, a2);
      return 0;
    }

    v13 = *result - 1;
  }

  else
  {
    result = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
    if (!result)
    {
      return result;
    }

    v13 = 0;
    *result = 0x100000001;
    *(result + 6) = 0u;
    *(result + 2) = 0u;
    *(result + 10) = 0u;
    *(result + 14) = 0u;
    *(result + 9) = 0;
    result[9] = -1;
  }

  v14 = &result[18 * v13];
  if (!a4 || (v15 = *a4) == 0)
  {
    if (a3 && (v29 = *a3) != 0)
    {
      v30 = result;
      v31 = *(a3 + 8);
      v32 = sub_181929E8C(v10, v31 + 1, 1565185748);
      v33 = v32;
      if (v32 && (memcpy(v32, v29, v31), v33[v31] = 0, byte_181A204C8[*v33] < 0))
      {
        v34 = 0;
        if (*v33 == 91)
        {
          v35 = 93;
        }

        else
        {
          v35 = *v33;
        }

        v36 = 1;
        result = v30;
        while (1)
        {
          v37 = v36;
          v38 = v33[v36];
          if (v38 == v35)
          {
            ++v36;
            LOBYTE(v38) = v35;
            if (v33[v37 + 1] != v35)
            {
              break;
            }
          }

          v33[v34++] = v38;
          ++v36;
        }

        v33[v34] = 0;
      }

      else
      {
        result = v30;
      }
    }

    else
    {
      v33 = 0;
    }

    *(v14 + 1) = v33;
LABEL_31:
    *(v14 + 9) = 0;
    return result;
  }

  v16 = result;
  v17 = *(a4 + 8);
  v18 = sub_181929E8C(v10, v17 + 1, 1565185748);
  v19 = v18;
  if (v18)
  {
    memcpy(v18, v15, v17);
    v19[v17] = 0;
    if (byte_181A204C8[*v19] < 0)
    {
      v20 = 0;
      if (*v19 == 91)
      {
        v21 = 93;
      }

      else
      {
        v21 = *v19;
      }

      for (i = 1; ; ++i)
      {
        v23 = i;
        v24 = v19[i];
        if (v24 == v21)
        {
          ++i;
          LOBYTE(v24) = v21;
          if (v19[v23 + 1] != v21)
          {
            break;
          }
        }

        v19[v20++] = v24;
      }

      v19[v20] = 0;
    }
  }

  *(v14 + 1) = v19;
  result = v16;
  if (!a3)
  {
    goto LABEL_31;
  }

  v25 = *a3;
  if (!*a3)
  {
    goto LABEL_31;
  }

  v26 = *(a3 + 8);
  v27 = sub_181929E8C(v10, v26 + 1, 1565185748);
  v28 = v27;
  if (v27 && (memcpy(v27, v25, v26), v28[v26] = 0, byte_181A204C8[*v28] < 0))
  {
    v39 = 0;
    if (*v28 == 91)
    {
      v40 = 93;
    }

    else
    {
      v40 = *v28;
    }

    v41 = 1;
    result = v16;
    while (1)
    {
      v42 = v41;
      v43 = v28[v41];
      if (v43 == v40)
      {
        ++v41;
        LOBYTE(v43) = v40;
        if (v28[v42 + 1] != v40)
        {
          break;
        }
      }

      v28[v39++] = v43;
      ++v41;
    }

    v28[v39] = 0;
    *(v14 + 9) = v28;
  }

  else
  {
    result = v16;
    *(v14 + 9) = v28;
  }

  return result;
}

int *sub_1818A95FC(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = *a2;
  v12 = *a2 + a3;
  if (v12 <= a2[1])
  {
    goto LABEL_16;
  }

  if (v12 >= 200)
  {
    sub_181910730(a1, "too many FROM clause terms, max: %d", a3, a4, a5, a6, a7, a8, 200);
    return 0;
  }

  v13 = *a1;
  if (2 * v11 + a3 >= 200)
  {
    v14 = 200;
  }

  else
  {
    v14 = 2 * v11 + a3;
  }

  v15 = 72 * v14 + 8;
  if (*(v13 + 512) <= a2)
  {
    goto LABEL_13;
  }

  if (*(v13 + 496) > a2)
  {
    if (*(v13 + 504) <= a2 && v15 <= *(v13 + 438))
    {
      goto LABEL_15;
    }

LABEL_13:
    v16 = sub_181929F38(v13, a2, v15, 0x103204056E3F560);
    v10 = v16;
    if (!v16)
    {
      return v10;
    }

    v11 = *v16;
    goto LABEL_15;
  }

  if (v15 >= 0x81)
  {
    goto LABEL_13;
  }

LABEL_15:
  v10[1] = v14;
LABEL_16:
  if (v11 <= v8)
  {
    v19 = v8;
    v18 = v9;
  }

  else
  {
    v17 = v11;
    v18 = v9;
    v19 = v8;
    v20 = 72 * v11 - 64;
    v21 = 72 * (v17 + v9) - 64;
    do
    {
      --v17;
      v22 = v10 + v21;
      *v22 = *(v10 + v20);
      v23 = *(v10 + v20 + 16);
      v24 = *(v10 + v20 + 32);
      v25 = *(v10 + v20 + 48);
      *(v22 + 8) = *(v10 + v20 + 64);
      *(v22 + 2) = v24;
      *(v22 + 3) = v25;
      *(v22 + 1) = v23;
      v20 -= 72;
      v21 -= 72;
    }

    while (v17 > v8);
    v11 = *v10;
  }

  *v10 = v11 + v9;
  bzero(&v10[18 * v19 + 2], 72 * v18);
  if (v9 >= 1)
  {
    v26 = v8 + v9;
    if (v19 + 1 > v26)
    {
      v27 = v19 + 1;
    }

    else
    {
      v27 = v8 + v9;
    }

    v28 = v27 - v19;
    if ((v27 - v19) < 2)
    {
      v29 = v19;
LABEL_30:
      v32 = 72 * v29 + 36;
      do
      {
        *(v10 + v32) = -1;
        ++v29;
        v32 += 72;
      }

      while (v29 < v26);
      return v10;
    }

    v29 = v19 + (v28 & 0xFFFFFFFFFFFFFFFELL);
    v30 = &v10[18 * v19 + 27];
    v31 = v28 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v30 - 18) = -1;
      *v30 = -1;
      v30 += 36;
      v31 -= 2;
    }

    while (v31);
    if (v28 != (v28 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_30;
    }
  }

  return v10;
}

_OWORD *sub_1818A9824(void **a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  memset(v25, 0, sizeof(v25));
  v15 = sub_181929E8C(*a1, 0x80uLL, 0x102004058EEC421);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v25;
  }

  if (!a2)
  {
    v18 = sub_181929E8C(*a1, 0x51uLL, 0x1032040B79D87BDLL);
    if (v18)
    {
      *(v18 + 32) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *v18 = 0u;
      *(v18 + 16) = 0u;
      *v18 = -76;
      *(v18 + 52) = -1;
      *(v18 + 80) = 0;
      *(v18 + 8) = v18 + 80;
      *(v18 + 40) = 1;
    }

    a2 = sub_18197FD9C(*a1, v18);
  }

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v25;
  }

  *(v19 + 4) = a2;
  *v17 = -117;
  *(v19 + 1) = 0;
  *(v19 + 1) = a8;
  v20 = *(a1 + 31) + 1;
  *(a1 + 31) = v20;
  *(v19 + 4) = v20;
  *(v19 + 20) = -1;
  *(v19 + 1) = 0;
  if (!a3)
  {
    if (*a1)
    {
      a3 = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    a3 = sub_181902484(80, 0x103204056E3F560);
    if (a3)
    {
LABEL_14:
      a3[3] = 0u;
      a3[4] = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      *a3 = 0u;
    }
  }

LABEL_15:
  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v25;
  }

  *(v21 + 5) = a3;
  *(v21 + 6) = a4;
  *(v21 + 7) = a5;
  *(v21 + 8) = a6;
  *(v21 + 9) = a7;
  v21[5] = 0u;
  *(v21 + 12) = a9;
  *(v21 + 104) = 0u;
  *(v21 + 15) = 0;
  if (*(*a1 + 103))
  {
    sub_1818BB408(*a1, v17, v17 != v25);
    return 0;
  }

  return v16;
}

uint64_t sub_1818A9A10(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v1071 = 0;
  v1070 = 0;
  v1068 = 0;
  v11 = *a1;
  v12 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a2 || *(a1 + 13))
  {
    return 1;
  }

  v14 = *a1;
  v15 = *(*a1 + 528);
  v1060 = v12;
  if (!v15 || *(v14 + 197) || *(a1 + 302))
  {
    goto LABEL_8;
  }

  v31 = v15(*(v14 + 536), 21, 0, 0, 0, a1[46]);
  if (v31 == 1)
  {
    v38 = 23;
    v39 = "not authorized";
LABEL_42:
    sub_181910730(a1, v39, v32, v33, v34, v35, v36, v37, v979);
    *(a1 + 6) = v38;
    return 1;
  }

  if ((v31 & 0xFFFFFFFD) != 0)
  {
    v38 = 1;
    v39 = "authorizer malfunction";
    goto LABEL_42;
  }

  if (v31)
  {
    return 1;
  }

LABEL_8:
  if (*v8 <= 6u)
  {
    v16 = *(a2 + 9);
    if (v16)
    {
      sub_18195B158(a1, sub_181964684, v16);
      *(a2 + 9) = 0;
    }

    *(a2 + 1) = *(a2 + 1) & 0xFFBFFFFE | 0x400000;
  }

  memset(v1069, 0, 56);
  sub_18195FBC4(a1, a2, 0);
  if (*(a1 + 13))
  {
    goto LABEL_13;
  }

  v28 = *(a2 + 1);
  if ((v28 & 0x800000) != 0)
  {
    v29 = *(a2 + 5);
    if (sub_181964690(v29 + 8, v29))
    {
      v30 = *(v29 + 16);
      if (!v30)
      {
        v30 = **(v29 + 24);
      }

      sub_181910730(a1, "target object/alias may not appear in FROM clause: %s", v18, v19, v20, v21, v22, v23, v30);
      goto LABEL_13;
    }

    *(a2 + 1) = v28 & 0xFF7FFFFF;
  }

  if (*v8 == 9)
  {
    sub_18196478C(a1, a2);
  }

  v1049 = v8;
  if (!*(a2 + 14) || *(a2 + 10) || (a2[6] & 0x10) != 0 || *(a1 + 302) > 1u)
  {
    goto LABEL_135;
  }

  v40 = sub_1818E7DFC(a1, v17, v18, v19, v20, v21, v22, v23);
  v1050 = *(a2 + 5);
  v41 = *a1;
  v1031 = *(a2 + 7);
  v1037 = *(a2 + 6);
  v1024 = *(a2 + 8);
  v42 = *(a2 + 14);
  v43 = *(a2 + 1);
  if (*a1)
  {
    v44 = sub_181929E8C(v41, 0x78uLL, 0x10B2040A26A9E65);
    if (!v44)
    {
      v45 = v41[43];
      if (v45)
      {
        *(v45 + 24) = 7;
        ++*(v45 + 52);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v44 = sub_181902484(120, 0x10B2040A26A9E65);
    if (!v44)
    {
      goto LABEL_13;
    }
  }

  v46 = v44;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 112) = 0;
  *(v44 + 80) = 0u;
  *(v44 + 96) = 0u;
  *(v44 + 64) = 0u;
  v1074 = 0uLL;
  *&v1072 = a1;
  *(&v1072 + 1) = sub_181968B20;
  *&v1073 = sub_181961BBC;
  *(&v1073 + 1) = 0;
  sub_1818AEE70(&v1072, a2);
  v47 = *(a2 + 1);
  if ((v47 & 8) == 0)
  {
    *(&v1072 + 1) = sub_18196887C;
    *&v1073 = 0;
    sub_181959CE8(&v1072, *(a2 + 9));
    v47 = *(a2 + 1);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  v1017 = (a2 + 40);
  *(a2 + 1) = v47 & 0xFFEFFFF7 | 0x100000;
  v48 = sub_1819688D4(a1, 0, *(v42 + 16), 1);
  v49 = sub_1819688D4(a1, v48, *(v42 + 24), 1);
  if (v49)
  {
    v50 = *(a2 + 9);
    if (v50)
    {
      v51 = *v49;
      if (*v50 <= *v49)
      {
        *v49 = *v50;
        v52 = v49;
        if (!sub_181959974(v49, v50, 0xFFFFFFFFLL))
        {
          v53 = *(a2 + 9);
          if (v53)
          {
            sub_18194E5B8(v41, v53);
          }

          *(a2 + 9) = 0;
        }

        v49 = v52;
        *v52 = v51;
      }
    }
  }

  v54 = *(a1 + 14);
  *(v42 + 88) = v54;
  *(a1 + 14) = v54 + 4;
  v55 = *(a2 + 4);
  *&v1067[8] = 0;
  *&v1067[16] = 0;
  *(&v1076 + 1) = v46;
  v1077 = 0;
  *&v1075 = v42;
  *(&v1075 + 1) = v1050;
  *&v1076 = 0;
  *&v1066 = a1;
  *(&v1066 + 1) = sub_181968C50;
  *v1067 = sub_181968E90;
  *&v1067[24] = &v1075;
  v1043 = v41;
  v1011 = v49;
  if (!v55 || (v56 = *v55, *v55 < 1))
  {
    v59 = 0;
    goto LABEL_69;
  }

  for (i = (v55 + 2); !*i; i += 3)
  {
    if (v56 < 2)
    {
      goto LABEL_67;
    }

LABEL_60:
    --v56;
  }

  if (sub_181959BA0(&v1066, *i))
  {
    v58 = 1;
  }

  else
  {
    v58 = v56 <= 1;
  }

  if (!v58)
  {
    goto LABEL_60;
  }

LABEL_67:
  v59 = v1076;
  v41 = v1043;
LABEL_69:
  v60 = *(a2 + 9);
  *&v1067[8] = 0;
  *&v1067[16] = 0;
  *(&v1076 + 1) = v46;
  v1077 = 0;
  *&v1075 = v42;
  *(&v1075 + 1) = v1050;
  *&v1076 = v59;
  *&v1066 = a1;
  *(&v1066 + 1) = sub_181968C50;
  *v1067 = sub_181968E90;
  *&v1067[24] = &v1075;
  if (!v60)
  {
    goto LABEL_81;
  }

  v61 = *v60;
  if (*v60 < 1)
  {
    goto LABEL_81;
  }

  v62 = (v60 + 2);
  while (2)
  {
    if (!*v62)
    {
      if (v61 < 2)
      {
        break;
      }

      goto LABEL_73;
    }

    if (sub_181959BA0(&v1066, *v62))
    {
      v63 = 1;
    }

    else
    {
      v63 = v61 <= 1;
    }

    if (!v63)
    {
LABEL_73:
      --v61;
      v62 += 3;
      continue;
    }

    break;
  }

  v59 = v1076;
LABEL_81:
  v1008 = v43;
  if (v59)
  {
    v64 = *v59;
  }

  else
  {
    v64 = 0;
  }

  *(v42 + 120) = v64;
  v65 = sub_1819688D4(a1, v59, *(v42 + 16), 0);
  v69 = sub_1819688D4(a1, v65, *(v42 + 24), 0);
  v70 = v42;
  while (2)
  {
    while (2)
    {
      v72 = *(*(v70 + 112) + 32);
      if ((*(*(v70 + 80) + 6) & 0x10) == 0)
      {
        if (v69)
        {
          v73 = *v69;
        }

        else
        {
          v73 = 0;
        }

        *(v70 + 124) = v73;
        v69 = sub_1819688D4(a1, v69, v72, 0);
        goto LABEL_107;
      }

      *&v1067[8] = 0;
      *&v1067[16] = 0;
      *(&v1076 + 1) = v46;
      v1077 = 0;
      *&v1075 = v42;
      *(&v1075 + 1) = v1050;
      *&v1076 = v69;
      *&v1066 = a1;
      *(&v1066 + 1) = sub_181968C50;
      *v1067 = sub_181968E90;
      *&v1067[24] = &v1075;
      if (!v72)
      {
        goto LABEL_101;
      }

      v74 = *v72;
      if (*v72 < 1)
      {
        goto LABEL_101;
      }

      v75 = (v72 + 2);
      while (2)
      {
        if (!*v75)
        {
          if (v74 < 2)
          {
            break;
          }

          goto LABEL_93;
        }

        if (sub_181959BA0(&v1066, *v75))
        {
          v76 = 1;
        }

        else
        {
          v76 = v74 <= 1;
        }

        if (!v76)
        {
LABEL_93:
          --v74;
          v75 += 3;
          continue;
        }

        break;
      }

      v69 = v1076;
LABEL_101:
      v41 = v1043;
      if (v69)
      {
        v77 = *v69;
      }

      else
      {
        v77 = 0;
      }

      *(v70 + 124) = v77;
      *(v70 + 140) = 1;
LABEL_107:
      v78 = *(v70 + 72);
      if (v78)
      {
        v79 = sub_1818C7FEC(v41, v78, 0, 0);
        if (v69)
        {
          v80 = *v69;
          if (v69[1] > *v69)
          {
            *v69 = v80 + 1;
            v81 = &v69[6 * v80];
            *(v81 + 2) = 0;
            *(v81 + 3) = 0;
            *(v81 + 1) = v79;
            goto LABEL_114;
          }

          v82 = sub_18197FE14(*a1, v69, v79);
        }

        else
        {
          v82 = sub_18197FD9C(*a1, v79);
        }

        v69 = v82;
      }

LABEL_114:
      v83 = *(a1 + 15);
      v84 = (v83 + 1);
      *(v70 + 92) = v84;
      v83 += 2;
      *(a1 + 15) = v83;
      *(v70 + 96) = v83;
      v85 = *(v40 + 144);
      if (*(v40 + 148) > v85)
      {
        *(v40 + 144) = v85 + 1;
        v71 = *(v40 + 136) + 40 * v85;
        *v71 = 75;
        *(v71 + 8) = v84;
        *(v71 + 12) = 0;
        *(v71 + 28) = 0;
        *(v71 + 20) = 0;
        *(v71 + 36) = 0;
        v70 = *(v70 + 64);
        if (!v70)
        {
          goto LABEL_116;
        }

        continue;
      }

      break;
    }

    sub_18194C8AC(v40, 75, 0, v84, 0, v66, v67, v68);
    v70 = *(v70 + 64);
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_116:
  if (!v69)
  {
    v86 = sub_181950A08(v41, 156, "0");
    v69 = sub_18197FD9C(*a1, v86);
  }

  v87 = sub_1818A9824(a1, v69, v1050, v1037, v1031, v1024, v1011, 0, 0);
  v88 = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
  if (!v88)
  {
    *v1017 = 0;
    v8 = v1049;
    v92 = 1;
    if (!v87)
    {
      goto LABEL_133;
    }

    v93 = v1043;
    goto LABEL_130;
  }

  v89 = v88;
  *v88 = 0x100000001;
  *(v88 + 24) = 0u;
  *(v88 + 8) = 0u;
  *(v88 + 40) = 0u;
  *(v88 + 56) = 0u;
  *(v88 + 72) = 0;
  *(v88 + 36) = -1;
  *(v88 + 8) = 0;
  *v1017 = v88;
  v90 = *(v88 + 35);
  v8 = v1049;
  if (v90)
  {
    *(v88 + 72) = 0;
    *(v88 + 35) = v90 & 0xFE;
  }

  else
  {
    v91 = *(v88 + 72);
    if (v91)
    {
      sub_181929C84(*a1, v91);
      *(v89 + 72) = 0;
    }
  }

  v94 = sub_181929E8C(*a1, 0x18uLL, 0x10200405AF6BDC9);
  *(v89 + 72) = v94;
  if (!v94)
  {
    if (!v87)
    {
LABEL_131:
      v92 = 1;
      goto LABEL_133;
    }

    v93 = *a1;
    v92 = 1;
LABEL_130:
    sub_1818BB408(v93, v87, 1);
    goto LABEL_133;
  }

  *(v89 + 33) |= 4u;
  v94[1] = 0;
  v94[2] = 0;
  *v94 = v87;
  *(*v1017 + 33) |= 0x10u;
  sub_1818EC1FC(a1, *v1017);
  *(v87 + 1) |= 0x8000040u;
  v95 = sub_18195E03C(a1, v87, 64);
  *(v87 + 1) |= v1008 & 8;
  if (v95)
  {
    v96 = *v95;
    v97 = *(v95 + 16);
    v98 = *(v95 + 48);
    *(v46 + 32) = *(v95 + 32);
    *(v46 + 48) = v98;
    *v46 = v96;
    *(v46 + 16) = v97;
    v99 = *(v95 + 64);
    v100 = *(v95 + 80);
    v101 = *(v95 + 96);
    *(v46 + 112) = *(v95 + 112);
    *(v46 + 80) = v100;
    *(v46 + 96) = v101;
    *(v46 + 64) = v99;
    *(v46 + 48) |= 0x4000u;
    *(*v1017 + 3) = v46;
    v1074 = 0u;
    *&v1072 = 0;
    *(&v1072 + 1) = sub_181968AD0;
    *&v1073 = sub_181968AFC;
    *(&v1073 + 1) = sub_181968B10;
    v46 = v95;
    sub_1818AEE70(&v1072, v87);
    goto LABEL_131;
  }

  v92 = 0;
LABEL_133:
  v102 = *(v1043 + 103);
  sub_18195B158(a1, sub_1818BB760, v46);
  result = 1;
  if (!v92 || v102)
  {
    goto LABEL_14;
  }

LABEL_135:
  v103 = *(a2 + 9);
  v104 = *(a2 + 5);
  v105 = *(a2 + 1);
  v106 = 0uLL;
  memset(v1069 + 8, 0, 48);
  *&v1069[0] = v103;
  v1051 = (a2 + 72);
  v107 = *(a2 + 10);
  if (v107)
  {
LABEL_136:
    v108 = *a1;
    v109 = *(v8 + 1);
    v1075 = *v8;
    v1076 = v109;
    v1077 = *(v8 + 4);
    v110 = sub_1818E7DFC(a1, v17, v18, v19, v20, v21, v22, v23);
    v117 = v110;
    v118 = v1075;
    if (v1075 == 12)
    {
      v111 = DWORD1(v1075);
      v112 = **(a2 + 4);
      v119 = *(v110 + 144);
      if (*(v110 + 148) <= v119)
      {
        sub_18194C8AC(v110, 117, DWORD1(v1075), v112, 0, v114, v115, v116);
      }

      else
      {
        *(v110 + 144) = v119 + 1;
        v120 = *(v110 + 136) + 40 * v119;
        *v120 = 117;
        *(v120 + 4) = v111;
        *(v120 + 8) = v112;
        *(v120 + 12) = 0;
        *(v120 + 28) = 0;
        *(v120 + 20) = 0;
        *(v120 + 36) = 0;
      }

      v118 = 14;
      LOBYTE(v1075) = 14;
    }

    v122 = *(a2 + 1);
    if ((v122 & 0x400) != 0)
    {
      v123 = *(a2 + 12);
      if (!*(a2 + 14))
      {
        v124 = 1;
        v125 = a2;
        while (1)
        {
          v126 = *(v125 + 80);
          if (!v126)
          {
            break;
          }

          v124 += v123 == 0;
          v125 = *(v125 + 80);
          if (*(v126 + 112))
          {
            goto LABEL_147;
          }
        }

        v342 = "S";
        if (v124 == 1)
        {
          v342 = &byte_181A2878D;
        }

        sub_18195AD8C(a1, 0, "SCAN %d CONSTANT ROW%s", v124, v342);
        while (1)
        {
          sub_1818B6C58(a1, v125, 0xFFFFFFFFuLL, 0, 0, &v1075, 1, 1);
          if (v123)
          {
            break;
          }

          *(v125 + 2) = v124;
          v125 = *(v125 + 88);
          if (!v125)
          {
            result = 0;
            goto LABEL_798;
          }
        }

        v125 = 0;
        result = 0;
        goto LABEL_798;
      }
    }

LABEL_147:
    if ((v122 & 0x2000) != 0)
    {
      v127 = a2;
      while ((v127[5] & 0x20) != 0)
      {
        v127 = *(v127 + 10);
        if (!v127)
        {
          goto LABEL_151;
        }
      }

      v159 = *(a2 + 5);
      v160 = **(a2 + 4);
      v161 = a1[2];
      v1066 = 0u;
      memset(v1067, 0, 24);
      if (*(a2 + 14))
      {
        sub_181910730(a1, "cannot use window functions in recursive queries", v111, v112, v113, v114, v115, v116, v979);
        goto LABEL_747;
      }

      v343 = *a1;
      v344 = *(*a1 + 528);
      if (!v344 || *(v343 + 197) || *(a1 + 302))
      {
LABEL_456:
        v345 = (*(a1 + 18) - 1);
        *(a1 + 18) = v345;
        *(a2 + 1) = 320;
        sub_1818B4A80(a1, a2, v345, v112, v113, v114, v115, v116);
        v1039 = *(a2 + 12);
        v1046 = v108;
        v349 = *(a2 + 2);
        v350 = *(a2 + 3);
        *(a2 + 12) = 0;
        *(a2 + 1) = 0;
        v351 = *v159;
        v1015 = v350;
        if (v351 < 1)
        {
LABEL_460:
          v353 = 0;
        }

        else
        {
          v352 = v159 + 9;
          while ((*(v352 - 3) & 0x80) == 0)
          {
            v352 += 18;
            if (!--v351)
            {
              goto LABEL_460;
            }
          }

          v353 = *v352;
        }

        v500 = *(a2 + 9);
        v501 = *(a1 + 14);
        v502 = (v501 + 1);
        *(a1 + 14) = v502;
        v1034 = v345;
        if (*a2 == 135)
        {
          if (v500)
          {
            v503 = 6;
          }

          else
          {
            v503 = 5;
          }

          *(a1 + 14) = v501 + 2;
        }

        else
        {
          v502 = 0;
          if (v500)
          {
            v503 = 7;
          }

          else
          {
            v503 = 8;
          }
        }

        LOBYTE(v1066) = v503;
        *&v1067[8] = 0;
        DWORD1(v1066) = v501;
        *(&v1066 + 1) = 0;
        *v1067 = 0;
        v504 = (*(a1 + 15) + 1);
        *(a1 + 15) = v504;
        v505 = *(v161 + 144);
        v1022 = v349;
        v1028 = v353;
        if (*(v161 + 148) <= v505)
        {
          sub_18194C8AC(v161, 121, v353, v504, v160, v346, v347, v348);
        }

        else
        {
          *(v161 + 144) = v505 + 1;
          v506 = *(v161 + 136) + 40 * v505;
          *v506 = 121;
          *(v506 + 4) = v353;
          *(v506 + 8) = v504;
          *(v506 + 12) = v160;
          *(v506 + 24) = 0;
          *(v506 + 32) = 0;
          *(v506 + 16) = 0;
        }

        if (v500)
        {
          v507 = sub_1819694BC(a1, a2);
          v511 = sub_1818A2964(v161, 117, v501, (*v500 + 2), 0, v508, v509, v510);
          sub_1818B49F8(v161, v511, v507, 0xFFFFFFF8);
          *&v1067[16] = v500;
        }

        else
        {
          sub_1818A2964(v161, 117, v501, v160, 0, v346, v347, v348);
        }

        v1062 = v500;
        if (v502)
        {
          *(a2 + 5) = sub_1818A2964(v161, 117, v502, 0, 0, v515, v516, v517);
          v518 = *(a2 + 1) | 0x20;
          *(a2 + 1) = v518;
        }

        else
        {
          v518 = *(a2 + 1);
        }

        *v1051 = 0;
        v519 = a2;
        do
        {
          if ((v518 & 8) != 0)
          {
            sub_181910730(a1, "recursive aggregate queries not supported", v512, v513, v514, v515, v516, v517, v979);
            goto LABEL_744;
          }

          v520 = v519;
          *v519 = -120;
          v519 = *(v519 + 10);
          v518 = *(v519 + 1);
        }

        while ((v518 & 0x2000) != 0);
        *(v519 + 11) = 0;
        sub_18195AD8C(a1, 1, "SETUP");
        v521 = sub_1818A9A10(a1, v519, &v1066);
        *(v519 + 11) = a2;
        if (!v521)
        {
          v525 = sub_1818A2964(v161, 36, v501, v1034, 0, v522, v523, v524);
          sub_1818A2964(v161, 136, v1028, 0, 0, v526, v527, v528);
          if (v1062)
          {
            v532 = (*v1062 + 1);
            v533 = v161;
            v534 = 94;
            v535 = v501;
            v536 = v504;
          }

          else
          {
            v533 = v161;
            v534 = -122;
            v535 = v501;
            v532 = v504;
            v536 = 0;
          }

          sub_1818A2964(v533, v534, v535, v532, v536, v529, v530, v531);
          sub_1818A2964(v161, 130, v501, 0, 0, v589, v590, v591);
          v592 = (*(a1 + 18) - 1);
          *(a1 + 18) = v592;
          sub_181969748(v161, v1015, v592, v593, v594, v595, v596, v597);
          sub_1818B6C58(a1, a2, v1028, 0, 0, &v1075, v592, v1034);
          if (v1022)
          {
            sub_1818A2964(v161, 61, v1022, v1034, 0, v598, v599, v600);
          }

          sub_181958CD8(v161, v592);
          *(v520 + 10) = 0;
          sub_18195AD8C(a1, 1, "RECURSIVE STEP");
          sub_1818A9A10(a1, a2, &v1066);
          *(v520 + 10) = v519;
          sub_1818A2964(v161, 9, 0, v525, 0, v601, v602, v603);
          sub_181958CD8(v161, v1034);
        }

LABEL_744:
        if (*v1051)
        {
          sub_18194E5B8(*a1, *v1051);
        }

        *(a2 + 9) = v1062;
        v108 = v1046;
        *(a2 + 12) = v1039;
        goto LABEL_747;
      }

      v581 = v344(*(v343 + 536), 33, 0, 0, 0, a1[46]);
      if (v581 == 1)
      {
        v583 = 23;
        v584 = "not authorized";
LABEL_750:
        sub_181910730(a1, v584, v582, v112, v113, v114, v115, v116, v979);
        *(a1 + 6) = v583;
        goto LABEL_747;
      }

      if ((v581 & 0xFFFFFFFD) != 0)
      {
        v583 = 1;
        v584 = "authorizer malfunction";
        goto LABEL_750;
      }

      if (!v581)
      {
        goto LABEL_456;
      }

LABEL_747:
      v125 = 0;
      result = 0;
LABEL_763:
      if (*(a1 + 13) || (a2[4] & 0x20) == 0)
      {
        goto LABEL_798;
      }

      v1056 = v125;
      v1065 = result;
      v619 = **(a2 + 4);
      v620 = v619 + 1;
      v621 = v108;
      v622 = 9 * (v619 + 1);
      v623 = sub_181929E8C(v621, v622 + 32, 0x2004093837F09);
      if (v623)
      {
        v630 = v623;
        v631 = v623 + 32;
        *(v623 + 24) = v623 + 32 + 8 * v620;
        *(v623 + 6) = v619;
        *(v623 + 8) = v620;
        *(v623 + 4) = *(v621 + 100);
        v632 = v621;
        *(v623 + 16) = v621;
        *v623 = 1;
        bzero((v623 + 32), v622);
        v638 = a2;
        result = v1065;
        v8 = v1049;
        v125 = v1056;
        if (v619 > 0)
        {
          v639 = 0;
          do
          {
            v640 = sub_1818E450C(a1, a2, v639, v633, v634, v635, v636, v637);
            *(v631 + 8 * v639) = v640;
            if (!v640)
            {
              *(v631 + 8 * v639) = *(v632 + 16);
            }

            ++v639;
          }

          while (v619 != v639);
          v638 = a2;
          result = v1065;
        }

        do
        {
          v641 = *(v638 + 5);
          if ((v641 & 0x80000000) == 0)
          {
            v642 = *v117;
            if (*(*v117 + 103))
            {
              dword_1EA831A60 = v619;
              v643 = (*v630)++;
              if (!*(v642 + 824))
              {
                *v630 = v643;
                if (!v643)
                {
                  sub_181939EC8(*(v630 + 16), v630);
                  result = v1065;
                }
              }
            }

            else
            {
              v644 = *(v117 + 136) + 40 * v641;
              *(v644 + 8) = v619;
              ++*v630;
              if (*(v644 + 1))
              {
                sub_18194CB90(v117, v644, v630, 0xFFFFFFF8);
                result = v1065;
              }

              else
              {
                *(v644 + 16) = v630;
                *(v644 + 1) = -8;
              }
            }

            *(v638 + 5) = -1;
            v645 = *(v638 + 6);
            if ((v645 & 0x80000000) == 0)
            {
              v646 = *v117;
              if (*(*v117 + 103))
              {
                dword_1EA831A60 = v619;
                v647 = (*v630)++;
                if (!*(v646 + 824))
                {
                  *v630 = v647;
                  if (!v647)
                  {
                    sub_181939EC8(*(v630 + 16), v630);
                    result = v1065;
                  }
                }
              }

              else
              {
                v648 = *(v117 + 136) + 40 * v645;
                *(v648 + 8) = v619;
                ++*v630;
                if (*(v648 + 1))
                {
                  sub_18194CB90(v117, v648, v630, 0xFFFFFFF8);
                  result = v1065;
                }

                else
                {
                  *(v648 + 16) = v630;
                  *(v648 + 1) = -8;
                }
              }

              *(v638 + 6) = -1;
            }
          }

          v638 = *(v638 + 10);
        }

        while (v638);
        v204 = (*v630)-- == 1;
        if (v204)
        {
          sub_181939EC8(*(v630 + 16), v630);
          result = v1065;
        }
      }

      else
      {
        if (*(v621 + 103))
        {
          goto LABEL_794;
        }

        v8 = v1049;
        if (*(v621 + 104))
        {
          goto LABEL_797;
        }

        *(v621 + 103) = 1;
        if (*(v621 + 220) >= 1)
        {
          *(v621 + 424) = 1;
        }

        ++*(v621 + 432);
        *(v621 + 436) = 0;
        v650 = *(v621 + 344);
        if (!v650)
        {
LABEL_797:
          result = 7;
          v125 = v1056;
          goto LABEL_798;
        }

        sub_181910730(v650, "out of memory", v624, v625, v626, v627, v628, v629, v979);
        v651 = *(v621 + 344);
        *(v651 + 24) = 7;
        v652 = *(v651 + 216);
        if (!v652)
        {
LABEL_794:
          result = 7;
        }

        else
        {
          result = 7;
          do
          {
            ++*(v652 + 52);
            *(v652 + 24) = 7;
            v652 = *(v652 + 216);
          }

          while (v652);
        }

        v8 = v1049;
        v125 = v1056;
      }

LABEL_798:
      *(v8 + 4) = v1076;
      *(v8 + 1) = *(&v1075 + 1);
      if (v125)
      {
        v649 = result;
        sub_18195B158(a1, sub_1819694AC, v125);
        result = v649;
      }

LABEL_800:
      if (!*(a2 + 11))
      {
        goto LABEL_16;
      }

      return result;
    }

LABEL_151:
    v128 = *v1051;
    if (*v1051)
    {
      v1066 = 0u;
      memset(v1067, 0, 24);
      *&v1074 = 0;
      v1072 = 0u;
      v1073 = 0u;
      v129 = *a1;
      v130 = a1[2];
      v131 = *(a1 + 18);
      v1001 = v131 - 2;
      *(a1 + 18) = v131 - 2;
      v1032 = *a2;
      v132 = *v128;
      if (v1032 == 136 || *(v129 + 103))
      {
LABEL_154:
        v133 = (v132 + 1);
        v134 = sub_181929E8C(v129, 4 * v133, 0x100004052888210);
        __s = v134;
        if (v134)
        {
          *v134 = v132;
          if (v132 >= 1)
          {
            if (v133 < 0x11 || ((v138 = (v134 + 1), v134 + 1 < (&v128[6 * v133 - 4] - 2)) ? (v139 = v128 + 7 >= &v134[v133]) : (v139 = 1), !v139))
            {
              v141 = 1;
              v142 = (v128 + 2);
              goto LABEL_181;
            }

            v140 = (v133 - 1) & 0xFFFFFFFFFFFFFFF8;
            v141 = v140 | 1;
            v142 = &v128[6 * v140 + 2];
            v143 = (v128 + 25);
            v144.i64[0] = -1;
            v144.i64[1] = -1;
            v145 = v140;
            do
            {
              v146.i16[0] = v143[12];
              v146.i16[1] = v143[24];
              v146.i16[2] = v143[36];
              v146.i16[3] = v143[48];
              v147.i16[0] = *(v143 - 36);
              v147.i16[1] = *(v143 - 24);
              v147.i16[2] = *(v143 - 12);
              v147.i16[3] = *v143;
              *v138 = vaddw_u16(v144, v147);
              v138[1] = vaddw_u16(v144, v146);
              v138 += 2;
              v143 += 96;
              v145 -= 8;
            }

            while (v145);
            if (v133 - 1 != v140)
            {
LABEL_181:
              v163 = v133 - v141;
              v164 = &v134[v141];
              v165 = (v142 + 20);
              do
              {
                v166 = *v165;
                v165 += 12;
                *v164++ = v166 - 1;
                --v163;
              }

              while (v163);
            }
          }

          v992 = sub_1819694BC(a1, a2);
        }

        else
        {
          v992 = 0;
        }

        v1061 = v131 - 1;
        v167 = v1032;
        v1012 = v129;
        v998 = v132;
        if (v1032 == 136)
        {
          v168 = 0;
          v169 = 0;
LABEL_484:
          v1020 = v169;
          if ((*(v129 + 98) & 0x20) != 0)
          {
            goto LABEL_490;
          }

          v363 = *(a2 + 10);
          if (!v363)
          {
            goto LABEL_490;
          }

          v364 = 1;
          v365 = a2;
          do
          {
            if (*v365 != v167)
            {
              break;
            }

            v365 = v363;
            ++v364;
            v363 = *(v363 + 10);
          }

          while (v363);
          if (v364 >= 4)
          {
            v372 = 2;
            v366 = a2;
            do
            {
              v366 = *(v366 + 10);
              v372 += 2;
            }

            while (v372 < v364);
            v1027 = 1;
          }

          else
          {
LABEL_490:
            v1027 = 1;
            v366 = a2;
          }
        }

        else
        {
          v1052 = v131;
          v170 = **(a2 + 4);
          v171 = *(a1 + 15);
          v172 = (v171 + 1);
          v173 = v170 + 1;
          *(a1 + 15) = v171 + v170 + 1;
          v174 = *(v130 + 36);
          if (*(v130 + 37) <= v174)
          {
            sub_18194C8AC(v130, 71, 0, v172, 0, v135, v136, v137);
          }

          else
          {
            *(v130 + 36) = v174 + 1;
            v175 = &v130[17][5 * v174];
            *v175 = 71;
            *(v175 + 8) = v172;
            *(v175 + 12) = 0;
            *(v175 + 28) = 0;
            *(v175 + 20) = 0;
            *(v175 + 36) = 0;
          }

          v1020 = v172;
          v328 = 9 * v173;
          v329 = sub_181929E8C(v129, v328 + 32, 0x2004093837F09);
          v168 = v329;
          if (v329)
          {
            *(v329 + 24) = v329 + 32 + 8 * v173;
            *(v329 + 6) = v170;
            *(v329 + 8) = v173;
            *(v329 + 4) = *(v129 + 100);
            *(v329 + 16) = v129;
            *v329 = 1;
            bzero((v329 + 32), v328);
            v131 = v1052;
            if (v170 > 0)
            {
              for (j = 0; j != v170; ++j)
              {
                *(v168 + 32 + 8 * j) = sub_1818E450C(a1, a2, j, v336, v337, v338, v339, v340);
                *(*(v168 + 24) + j) = 0;
              }
            }
          }

          else
          {
            v131 = v1052;
            if (!*(v129 + 103) && !*(v129 + 104))
            {
              *(v129 + 103) = 1;
              if (*(v129 + 220) >= 1)
              {
                *(v129 + 424) = 1;
              }

              ++*(v129 + 432);
              *(v129 + 436) = 0;
              v579 = *(v129 + 344);
              if (v579)
              {
                sub_181910730(v579, "out of memory", v330, v331, v332, v333, v334, v335, v979);
                for (k = *(v129 + 344); ; ++*(k + 52))
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
          }

          v167 = v1032;
          if ((v1032 - 135) <= 1)
          {
            v169 = v172;
            goto LABEL_484;
          }

          v1027 = 0;
          v366 = a2;
        }

        v389 = *(v366 + 10);
        *(v366 + 10) = 0;
        *(v389 + 88) = 0;
        *(v389 + 72) = sub_1818C83A0(*a1, v128, 0);
        sub_181961BC4(a1, a2, *(a2 + 9), "ORDER", v373, v374, v375, v376);
        v1040 = v389;
        sub_181961BC4(a1, v389, *(v389 + 72), "ORDER", v377, v378, v379, v380);
        sub_1818B4A80(a1, a2, v1061, v381, v382, v383, v384, v385);
        LODWORD(v389) = 0;
        if (v167 == 136)
        {
          v390 = *(a2 + 2);
          LODWORD(v391) = 0;
          if (v390)
          {
            v392 = *(a1 + 15);
            v389 = (v392 + 1);
            v391 = (v392 + 2);
            *(a1 + 15) = v391;
            v393 = *(a2 + 3);
            if (v393)
            {
              v394 = (v393 + 1);
            }

            else
            {
              v394 = v390;
            }

            v395 = *(v130 + 36);
            if (*(v130 + 37) <= v395)
            {
              sub_18194C8AC(v130, 80, v394, v389, 0, v386, v387, v388);
            }

            else
            {
              *(v130 + 36) = v395 + 1;
              v396 = &v130[17][5 * v395];
              *v396 = 80;
              *(v396 + 4) = v394;
              *(v396 + 8) = v389;
              *(v396 + 12) = 0;
              *(v396 + 28) = 0;
              *(v396 + 20) = 0;
              *(v396 + 36) = 0;
            }

            v397 = *(v130 + 36);
            if (*(v130 + 37) <= v397)
            {
              sub_18194C8AC(v130, 80, v389, v391, 0, v386, v387, v388);
            }

            else
            {
              *(v130 + 36) = v397 + 1;
              v398 = &v130[17][5 * v397];
              *v398 = 80;
              *(v398 + 4) = v389;
              *(v398 + 8) = v391;
              *(v398 + 12) = 0;
              *(v398 + 28) = 0;
              *(v398 + 20) = 0;
              *(v398 + 36) = 0;
            }
          }
        }

        else
        {
          LODWORD(v391) = 0;
        }

        v1005 = v391;
        v399 = *(a2 + 12);
        if (v399)
        {
          sub_1819439E0(v1012, v399);
        }

        *(a2 + 12) = 0;
        v400 = *(a1 + 15);
        v1009 = v400 + 4;
        *(a1 + 15) = v400 + 4;
        LOBYTE(v1066) = 13;
        v1055 = v400 + 1;
        DWORD1(v1066) = v400 + 1;
        *&v1067[8] = 0;
        *(&v1066 + 1) = 0;
        *v1067 = 0;
        LOBYTE(v1072) = 13;
        v1047 = v400 + 2;
        DWORD1(v1072) = v400 + 2;
        *(&v1073 + 1) = 0;
        *(&v1072 + 1) = 0;
        LODWORD(v1073) = 0;
        if ((*a2 + 120) > 2u)
        {
          v401 = "UNION";
        }

        else
        {
          v401 = off_1E6A284D0[(*a2 + 120)];
        }

        sub_18195AD8C(a1, 1, "MERGE (%s)", v401);
        v405 = *(v130 + 36);
        v406 = (v405 + 1);
        if (*(v130 + 37) <= v405)
        {
          v405 = sub_18194C8AC(v130, 11, v1055, 0, v406, v402, v403, v404);
        }

        else
        {
          *(v130 + 36) = v406;
          v407 = &v130[17][5 * v405];
          *v407 = 11;
          *(v407 + 4) = v1055;
          *(v407 + 12) = v406;
          *(v407 + 24) = 0;
          *(v407 + 32) = 0;
          *(v407 + 16) = 0;
        }

        *(v1040 + 8) = v389;
        sub_18195AD8C(a1, 1, "LEFT");
        sub_1818A9A10(a1, v1040, &v1066);
        v411 = *(v130 + 36);
        if (*(v130 + 37) <= v411)
        {
          sub_18194C8AC(v130, 68, v1055, 0, 0, v408, v409, v410);
        }

        else
        {
          *(v130 + 36) = v411 + 1;
          v412 = &v130[17][5 * v411];
          *v412 = 68;
          *(v412 + 4) = v1055;
          *(v412 + 8) = 0u;
          *(v412 + 24) = 0u;
        }

        v413 = v130[3];
        *(v413 + 31) = 0;
        *(v413 + 11) = 0;
        v414 = *(v130 + 36);
        if (*(*v130 + 103))
        {
          v415 = &byte_1EA831A58;
        }

        else
        {
          v415 = &v130[17][5 * v405];
        }

        v416 = v1001;
        v417 = v1020;
        v418 = (v400 + 3);
        *(v415 + 2) = v414;
        v419 = (v414 + 1);
        if (*(v130 + 37) <= v414)
        {
          v990 = sub_18194C8AC(v130, 11, v1047, 0, v419, v408, v409, v410);
        }

        else
        {
          *(v130 + 36) = v419;
          v990 = v414;
          v420 = &v130[17][5 * v414];
          *v420 = 11;
          *(v420 + 4) = v1047;
          *(v420 + 12) = v419;
          *(v420 + 24) = 0;
          *(v420 + 32) = 0;
          *(v420 + 16) = 0;
        }

        v421 = *(a2 + 1);
        *(a2 + 1) = v1005;
        sub_18195AD8C(a1, 1, "RIGHT");
        sub_1818A9A10(a1, a2, &v1072);
        *(a2 + 1) = v421;
        v425 = *(v130 + 36);
        if (*(v130 + 37) <= v425)
        {
          sub_18194C8AC(v130, 68, v1047, 0, 0, v422, v423, v424);
        }

        else
        {
          *(v130 + 36) = v425 + 1;
          v426 = &v130[17][5 * v425];
          *v426 = 68;
          *(v426 + 4) = v1047;
          *(v426 + 8) = 0u;
          *(v426 + 24) = 0u;
        }

        v427 = v130[3];
        *(v427 + 31) = 0;
        *(v427 + 11) = 0;
        v1021 = sub_1819697A4(a1, a2, &v1066, v1049, v418, v1020, v168, v1061);
        v1006 = 0;
        if (v1027)
        {
          v1006 = sub_1819697A4(a1, a2, &v1072, v1049, v1009, v417, v168, v1061);
        }

        if (v168)
        {
          v204 = (*v168)-- == 1;
          if (v204)
          {
            sub_181939EC8(*(v168 + 16), v168);
          }
        }

        if ((v1032 - 137) >= 2)
        {
          v432 = *(v130 + 36);
          if (*(v130 + 37) <= v432)
          {
            v432 = sub_18194C8AC(v130, 10, v1009, v1006, 0, v428, v429, v430);
          }

          else
          {
            *(v130 + 36) = v432 + 1;
            v435 = &v130[17][5 * v432];
            *v435 = 10;
            *(v435 + 4) = v1009;
            *(v435 + 8) = v1006;
            *(v435 + 12) = 0;
            *(v435 + 28) = 0;
            *(v435 + 20) = 0;
            *(v435 + 36) = 0;
          }

          v431 = *(v130 + 36);
          if (*(v130 + 37) <= v431)
          {
            v431 = sub_18194C8AC(v130, 12, v1047, v1061, 0, v428, v429, v430);
          }

          else
          {
            *(v130 + 36) = v431 + 1;
            v436 = &v130[17][5 * v431];
            *v436 = 12;
            *(v436 + 4) = v1047;
            *(v436 + 8) = v1061;
            *(v436 + 12) = 0;
            *(v436 + 28) = 0;
            *(v436 + 20) = 0;
            *(v436 + 36) = 0;
          }

          v437 = *(v130 + 36);
          if (*(v130 + 37) <= v437)
          {
            sub_18194C8AC(v130, 9, 0, v432, 0, v428, v429, v430);
          }

          else
          {
            *(v130 + 36) = v437 + 1;
            v438 = &v130[17][5 * v437];
            *v438 = 9;
            *(v438 + 8) = v432;
            *(v438 + 12) = 0;
            *(v438 + 28) = 0;
            *(v438 + 20) = 0;
            *(v438 + 36) = 0;
          }

          v439 = *(a2 + 1);
          v440 = *(v1040 + 2);
          if (v439 >= v440)
          {
            v441 = *(a2 + 1);
            if (v440 + 49 >= v439)
            {
              if (v440 + 31 >= v439)
              {
                v441 = v439 + byte_181A245A6[v439 - v440];
              }

              else
              {
                v441 = v439 + 1;
              }
            }
          }

          else
          {
            v441 = *(v1040 + 2);
            if (v439 + 49 >= v440)
            {
              if (v439 + 31 >= v440)
              {
                v441 = v440 + byte_181A245A6[v440 - v439];
              }

              else
              {
                v441 = v440 + 1;
              }
            }
          }

          *(a2 + 1) = v441;
        }

        else
        {
          v431 = v1061;
          v432 = v1061;
          if (v1032 == 138)
          {
            v433 = *(v1040 + 2);
            if (*(a2 + 1) > v433)
            {
              *(a2 + 1) = v433;
            }

            v432 = v1061;
            v434 = v1061;
            goto LABEL_590;
          }
        }

        v434 = *(v130 + 36);
        if (*(v130 + 37) <= v434)
        {
          v434 = sub_18194C8AC(v130, 10, v418, v1021, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v434 + 1;
          v454 = &v130[17][5 * v434];
          *v454 = 10;
          *(v454 + 4) = v418;
          *(v454 + 8) = v1021;
          *(v454 + 12) = 0;
          *(v454 + 28) = 0;
          *(v454 + 20) = 0;
          *(v454 + 36) = 0;
        }

        v455 = *(v130 + 36);
        if (*(v130 + 37) <= v455)
        {
          sub_18194C8AC(v130, 12, v1055, v1061, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v455 + 1;
          v456 = &v130[17][5 * v455];
          *v456 = 12;
          *(v456 + 4) = v1055;
          *(v456 + 8) = v1061;
          *(v456 + 12) = 0;
          *(v456 + 28) = 0;
          *(v456 + 20) = 0;
          *(v456 + 36) = 0;
        }

        v457 = *(v130 + 36);
        if (*(v130 + 37) <= v457)
        {
          sub_18194C8AC(v130, 9, 0, v434, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v457 + 1;
          v458 = &v130[17][5 * v457];
          *v458 = 9;
          *(v458 + 8) = v434;
          *(v458 + 12) = 0;
          *(v458 + 28) = 0;
          *(v458 + 20) = 0;
          *(v458 + 36) = 0;
        }

        v1061 = v431;
LABEL_590:
        v459 = *(v130 + 36);
        if (*(v130 + 37) <= v459)
        {
          v459 = sub_18194C8AC(v130, 10, v418, v1021, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v459 + 1;
          v460 = &v130[17][5 * v459];
          *v460 = 10;
          *(v460 + 4) = v418;
          *(v460 + 8) = v1021;
          *(v460 + 12) = 0;
          *(v460 + 28) = 0;
          *(v460 + 20) = 0;
          *(v460 + 36) = 0;
        }

        v461 = *(v130 + 36);
        if (*(v130 + 37) <= v461)
        {
          sub_18194C8AC(v130, 12, v1055, v432, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v461 + 1;
          v462 = &v130[17][5 * v461];
          *v462 = 12;
          *(v462 + 4) = v1055;
          *(v462 + 8) = v432;
          *(v462 + 12) = 0;
          *(v462 + 28) = 0;
          *(v462 + 20) = 0;
          *(v462 + 36) = 0;
        }

        v463 = *(v130 + 36);
        if (*(v130 + 37) <= v463)
        {
          sub_18194C8AC(v130, 9, 0, v1001, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v463 + 1;
          v464 = &v130[17][5 * v463];
          *v464 = 9;
          *(v464 + 8) = v1001;
          *(v464 + 12) = 0;
          *(v464 + 28) = 0;
          *(v464 + 20) = 0;
          *(v464 + 36) = 0;
        }

        if (v1032 == 136)
        {
          v465 = v459;
        }

        else if (v1032 == 138)
        {
          v465 = (v459 + 1);
        }

        else
        {
          v466 = *(v130 + 36);
          if (*(v130 + 37) <= v466)
          {
            v466 = sub_18194C8AC(v130, 12, v1055, v432, 0, v428, v429, v430);
          }

          else
          {
            *(v130 + 36) = v466 + 1;
            v467 = &v130[17][5 * v466];
            *v467 = 12;
            *(v467 + 4) = v1055;
            *(v467 + 8) = v432;
            *(v467 + 12) = 0;
            *(v467 + 28) = 0;
            *(v467 + 20) = 0;
            *(v467 + 36) = 0;
          }

          v468 = *(v130 + 36);
          if (*(v130 + 37) <= v468)
          {
            sub_18194C8AC(v130, 9, 0, v1001, 0, v428, v429, v430);
          }

          else
          {
            *(v130 + 36) = v468 + 1;
            v469 = &v130[17][5 * v468];
            *v469 = 9;
            *(v469 + 8) = v1001;
            *(v469 + 12) = 0;
            *(v469 + 28) = 0;
            *(v469 + 20) = 0;
            *(v469 + 36) = 0;
          }

          v465 = v459;
          v459 = v466;
          v416 = v1001;
        }

        v470 = *(v130 + 36);
        if (v1027)
        {
          if (*(v130 + 37) <= v470)
          {
            sub_18194C8AC(v130, 10, v1009, v1006, 0, v428, v429, v430);
          }

          else
          {
            *(v130 + 36) = v470 + 1;
            v471 = &v130[17][5 * v470];
            *v471 = 10;
            *(v471 + 4) = v1009;
            *(v471 + 8) = v1006;
            *(v471 + 12) = 0;
            *(v471 + 28) = 0;
            *(v471 + 20) = 0;
            *(v471 + 36) = 0;
          }
        }

        v472 = *(v130 + 36);
        if (*(v130 + 37) <= v472)
        {
          sub_18194C8AC(v130, 12, v1047, v434, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v472 + 1;
          v473 = &v130[17][5 * v472];
          *v473 = 12;
          *(v473 + 4) = v1047;
          *(v473 + 8) = v434;
          *(v473 + 12) = 0;
          *(v473 + 28) = 0;
          *(v473 + 20) = 0;
          *(v473 + 36) = 0;
        }

        v474 = *(v130 + 36);
        if (*(v130 + 37) <= v474)
        {
          sub_18194C8AC(v130, 9, 0, v416, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v474 + 1;
          v475 = &v130[17][5 * v474];
          *v475 = 9;
          *(v475 + 8) = v416;
          *(v475 + 12) = 0;
          *(v475 + 28) = 0;
          *(v475 + 20) = 0;
          *(v475 + 36) = 0;
        }

        v476 = *(v130 + 36);
        if (*(*v130 + 103))
        {
          v477 = &byte_1EA831A58;
        }

        else
        {
          v477 = &v130[17][5 * v990];
        }

        *(v477 + 2) = v476;
        if (*(v130 + 37) <= v476)
        {
          sub_18194C8AC(v130, 12, v1055, v1061, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v476 + 1;
          v478 = &v130[17][5 * v476];
          *v478 = 12;
          *(v478 + 4) = v1055;
          *(v478 + 8) = v1061;
          *(v478 + 12) = 0;
          *(v478 + 28) = 0;
          *(v478 + 20) = 0;
          *(v478 + 36) = 0;
        }

        v479 = *(v130 + 36);
        if (*(v130 + 37) <= v479)
        {
          sub_18194C8AC(v130, 12, v1047, v434, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v479 + 1;
          v480 = &v130[17][5 * v479];
          *v480 = 12;
          *(v480 + 4) = v1047;
          *(v480 + 8) = v434;
          *(v480 + 12) = 0;
          *(v480 + 28) = 0;
          *(v480 + 20) = 0;
          *(v480 + 36) = 0;
        }

        v481 = v130[3];
        v482 = 1 - v131;
        if (*(v481 + 18) + *(v481 + 19) < 0)
        {
          sub_18195CB84(v130[3], v130, v482);
          v483 = *(v130 + 36);
        }

        else
        {
          v483 = *(v130 + 36);
          *(v481[10] + 4 * v482) = v483;
        }

        if (*(v130 + 37) <= v483)
        {
          v483 = sub_18194C8AC(v130, 89, 0, 0, 0, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v483 + 1;
          v484 = &v130[17][5 * v483];
          *v484 = 89;
          *(v484 + 1) = 0u;
          *(v484 + 17) = 0u;
          *(v484 + 32) = 0;
        }

        if (*(*v130 + 103))
        {
          if (__s)
          {
            sub_181939EC8(*v130, __s);
          }
        }

        else
        {
          if (v483 < 0)
          {
            v483 = *(v130 + 36) - 1;
          }

          v485 = &v130[17][5 * v483];
          if (*(v485 + 1))
          {
            sub_18194CB90(v130, v485, __s, 0xFFFFFFF2);
          }

          else if (__s)
          {
            *(v485 + 16) = __s;
            *(v485 + 1) = -14;
          }
        }

        v486 = HIDWORD(v1066);
        v487 = HIDWORD(v1072);
        v488 = *(v130 + 36);
        if (*(v130 + 37) <= v488)
        {
          v488 = sub_18194C8AC(v130, 90, HIDWORD(v1066), HIDWORD(v1072), v998, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v488 + 1;
          v489 = &v130[17][5 * v488];
          *v489 = 90;
          *(v489 + 4) = v486;
          *(v489 + 8) = v487;
          *(v489 + 12) = v998;
          *(v489 + 24) = 0;
          *(v489 + 32) = 0;
          *(v489 + 16) = 0;
        }

        if (*(*v130 + 103))
        {
          if (v992)
          {
            if (!(*v130)[103])
            {
              v204 = (*v992)-- == 1;
              if (v204)
              {
                sub_181939EC8(*(v992 + 2), v992);
              }
            }
          }
        }

        else
        {
          if (v488 < 0)
          {
            v488 = *(v130 + 36) - 1;
          }

          v490 = &v130[17][5 * v488];
          if (*(v490 + 1))
          {
            sub_18194CB90(v130, v490, v992, 0xFFFFFFF8);
          }

          else if (v992)
          {
            *(v490 + 16) = v992;
            *(v490 + 1) = -8;
          }
        }

        v491 = *(v130 + 36);
        if (v491 >= 1)
        {
          *(&v130[17][5 * v491 - 4] - 3) = 1;
        }

        if (*(v130 + 37) <= v491)
        {
          sub_18194C8AC(v130, 14, v465, v459, v470, v428, v429, v430);
        }

        else
        {
          *(v130 + 36) = v491 + 1;
          v492 = &v130[17][5 * v491];
          *v492 = 14;
          *(v492 + 4) = v465;
          *(v492 + 8) = v459;
          *(v492 + 12) = v470;
          *(v492 + 24) = 0;
          *(v492 + 32) = 0;
          *(v492 + 16) = 0;
        }

        v493 = v130[3];
        v494 = -v131;
        if (*(v493 + 72) + *(v493 + 76) < 0)
        {
          sub_18195CB84(v493, v130, v494);
        }

        else
        {
          *(*(v493 + 80) + 4 * v494) = *(v130 + 36);
        }

        v495 = *(v366 + 10);
        if (v495)
        {
          sub_18195B158(a1, sub_1819694AC, v495);
        }

        *(v366 + 10) = v1040;
        *(v1040 + 88) = v366;
        v496 = *(v1040 + 72);
        if (v496)
        {
          sub_18194E5B8(v1012, v496);
        }

        *(v1040 + 72) = 0;
        v497 = *(a1 + 78);
        if (v497)
        {
          v498 = a1[2];
          if (*(*v498 + 103))
          {
            v499 = &byte_1EA831A58;
          }

          else
          {
            v499 = (v498[17] + 40 * v497);
          }

          v497 = *(v499 + 2);
        }

        *(a1 + 78) = v497;
        result = *(a1 + 13) != 0;
        goto LABEL_800;
      }

      v354 = 1;
      while (2)
      {
        if (v354 > **(a2 + 4))
        {
          goto LABEL_154;
        }

        if (v132 < 1)
        {
          v357 = 0;
        }

        else
        {
          v357 = 0;
          v358 = (v128 + 7);
          while (1)
          {
            v359 = *v358;
            v358 += 12;
            if (v354 == v359)
            {
              break;
            }

            if (v132 == ++v357)
            {
              goto LABEL_473;
            }
          }
        }

        if (v357 == v132)
        {
LABEL_473:
          v1078[0] = 0;
          v1078[1] = 0;
          v360 = sub_1818A8CF0(v129, 156, v1078, 0);
          if (!v360)
          {
            result = 7;
            goto LABEL_800;
          }

          *(v360 + 4) |= 0x800u;
          *(v360 + 8) = v354;
          if (v128)
          {
            v361 = *v128;
            if (v128[1] <= *v128)
            {
              v362 = sub_18197FE14(*a1, v128, v360);
              goto LABEL_478;
            }

            *v128 = v361 + 1;
            v355 = &v128[6 * v361 + 2];
            v355[1] = 0;
            v355[2] = 0;
            *v355 = v360;
            *v1051 = v128;
LABEL_463:
            v356 = &v128[6 * v132++];
            *(v356 + 14) = v354;
          }

          else
          {
            v362 = sub_18197FD9C(*a1, v360);
LABEL_478:
            v128 = v362;
            *v1051 = v362;
            if (v362)
            {
              goto LABEL_463;
            }
          }
        }

        ++v354;
        if (*(v129 + 103))
        {
          goto LABEL_154;
        }

        continue;
      }
    }

    if (!*(v107 + 80))
    {
      sub_18195AD8C(a1, 1, "COMPOUND QUERY");
      sub_18195AD8C(a1, 1, "LEFT-MOST SUBQUERY");
    }

    v148 = *a2;
    if (v148 == 135 || v148 == 137)
    {
      v1066 = 0u;
      memset(v1067, 0, 24);
      if (v118 == 1)
      {
        v162 = DWORD1(v1075);
      }

      else
      {
        v162 = *(a1 + 14);
        *(a1 + 14) = v162 + 1;
        v367 = *(v117 + 144);
        if (*(v117 + 148) <= v367)
        {
          v367 = sub_18194C8AC(v117, 117, v162, 0, 0, v114, v115, v116);
        }

        else
        {
          *(v117 + 144) = v367 + 1;
          v368 = *(v117 + 136) + 40 * v367;
          *v368 = 117;
          *(v368 + 4) = v162;
          *(v368 + 8) = 0uLL;
          *(v368 + 24) = 0uLL;
        }

        *(a2 + 5) = v367;
        v442 = a2;
        do
        {
          v443 = v442;
          v442 = *(v442 + 11);
        }

        while (v442);
        *(v443 + 1) |= 0x20u;
      }

      LOBYTE(v1066) = 1;
      *&v1067[8] = 0;
      DWORD1(v1066) = v162;
      *(&v1066 + 1) = 0;
      *v1067 = 0;
      result = sub_1818A9A10(a1, v107, &v1066);
      if (!result)
      {
        v444 = *a2;
        if (v444 == 137)
        {
          v445 = 2;
        }

        else
        {
          v445 = 1;
        }

        *(a2 + 10) = 0;
        v446 = *(a2 + 12);
        *(a2 + 12) = 0;
        LOBYTE(v1066) = v445;
        v447 = v444 + 120;
        if (v447 > 2u)
        {
          v448 = "UNION";
        }

        else
        {
          v448 = off_1E6A284D0[v447];
        }

        sub_18195AD8C(a1, 1, "%s USING TEMP B-TREE", v448);
        v1063 = sub_1818A9A10(a1, a2, &v1066);
        v125 = *(a2 + 10);
        *(a2 + 9) = 0;
        *(a2 + 10) = v107;
        if (*a2 == 135)
        {
          *(a2 + 1) = sub_18196941C(*(a2 + 1), *(v107 + 2));
        }

        v542 = *(a2 + 12);
        if (v542)
        {
          sub_1819439E0(v108, v542);
        }

        *(a2 + 12) = v446;
        *(a2 + 1) = 0;
        if (v118 != 1 && !*(v108 + 103))
        {
          v543 = *(a1 + 18);
          v544 = (v543 - 1);
          v545 = (v543 - 2);
          *(a1 + 18) = v545;
          sub_1818B4A80(a1, a2, v544, v537, v538, v539, v540, v541);
          sub_1818A2964(v117, 36, v162, v544, 0, v546, v547, v548);
          v549 = *(v117 + 144);
          sub_1818B6C58(a1, a2, v162, 0, 0, &v1075, v545, v544);
          v550 = v545;
          v8 = v1049;
          sub_181958CD8(v117, v550);
          sub_1818A2964(v117, 39, v162, v549, 0, v551, v552, v553);
          sub_181958CD8(v117, v544);
          sub_1818A2964(v117, 122, v162, 0, 0, v554, v555, v556);
        }

        result = v1063;
        goto LABEL_756;
      }
    }

    else if (v148 == 136)
    {
      LODWORD(v1066) = 0;
      *(v107 + 8) = *(a2 + 1);
      *(v107 + 96) = *(a2 + 12);
      result = sub_1818A9A10(a1, v107, &v1075);
      *(v107 + 96) = 0;
      if (!result)
      {
        *(a2 + 10) = 0;
        v152 = *(v107 + 8);
        *(a2 + 1) = v152;
        if (v152)
        {
          v156 = sub_1818A2964(v117, 17, v152, 0, 0, v149, v150, v151);
          v157 = *(a2 + 3);
          v158 = v108;
          if (v157)
          {
            sub_1818A2964(v117, 160, *(a2 + 2), (v157 + 1), v157, v153, v154, v155);
          }
        }

        else
        {
          v158 = v108;
          v156 = 0;
        }

        sub_18195AD8C(a1, 1, "UNION ALL");
        v585 = sub_1818A9A10(a1, a2, &v1075);
        v125 = *(a2 + 10);
        *(a2 + 10) = v107;
        *(a2 + 1) = sub_18196941C(*(a2 + 1), *(v107 + 2));
        v586 = *(a2 + 12);
        if (v586)
        {
          if (sub_18195A9F8(*(v586 + 16), &v1066, a1))
          {
            if (v1066 >= 1)
            {
              v587 = *(a2 + 1);
              v588 = sub_181919E10(v1066);
              if (v587 > v588)
              {
                *(a2 + 1) = v588;
              }
            }
          }
        }

        result = v585;
        v108 = v158;
        if (v156)
        {
          if (*(*v117 + 103))
          {
            dword_1EA831A60 = *(v117 + 144);
          }

          else
          {
            *(*(v117 + 136) + 40 * v156 + 8) = *(v117 + 144);
          }
        }

LABEL_756:
        if (!*(a2 + 11))
        {
          v616 = *(a1 + 78);
          if (v616)
          {
            v617 = a1[2];
            if (*(*v617 + 103))
            {
              v618 = &byte_1EA831A58;
            }

            else
            {
              v618 = (v617[17] + 40 * v616);
            }

            v616 = *(v618 + 2);
          }

          *(a1 + 78) = v616;
        }

        goto LABEL_763;
      }
    }

    else
    {
      v1066 = 0u;
      memset(v1067, 0, 24);
      v369 = *(a1 + 14);
      *(a1 + 14) = v369 + 2;
      v370 = *(v117 + 144);
      if (*(v117 + 148) <= v370)
      {
        v370 = sub_18194C8AC(v117, 117, v369, 0, 0, v114, v115, v116);
      }

      else
      {
        *(v117 + 144) = v370 + 1;
        v371 = *(v117 + 136) + 40 * v370;
        *v371 = 117;
        *(v371 + 4) = v369;
        *(v371 + 8) = 0uLL;
        *(v371 + 24) = 0uLL;
      }

      *(a2 + 5) = v370;
      v449 = a2;
      do
      {
        v450 = v449;
        v449 = *(v449 + 11);
      }

      while (v449);
      *(v450 + 1) |= 0x20u;
      LOBYTE(v1066) = 1;
      *&v1067[8] = 0;
      DWORD1(v1066) = v369;
      *(&v1066 + 1) = 0;
      *v1067 = 0;
      result = sub_1818A9A10(a1, v107, &v1066);
      if (!result)
      {
        *(a2 + 6) = sub_1818A2964(v117, 117, (v369 + 1), 0, 0, v451, v452, v453);
        *(a2 + 10) = 0;
        v557 = *(a2 + 12);
        *(a2 + 12) = 0;
        DWORD1(v1066) = v369 + 1;
        if ((*a2 + 120) > 2u)
        {
          v558 = "UNION";
        }

        else
        {
          v558 = off_1E6A284D0[(*a2 + 120)];
        }

        sub_18195AD8C(a1, 1, "%s USING TEMP B-TREE", v558);
        result = sub_1818A9A10(a1, a2, &v1066);
        v125 = *(a2 + 10);
        *(a2 + 10) = v107;
        v564 = *(v107 + 2);
        if (*(a2 + 1) > v564)
        {
          *(a2 + 1) = v564;
        }

        v565 = *(a2 + 12);
        if (v565)
        {
          v566 = result;
          sub_1819439E0(v108, v565);
          result = v566;
        }

        *(a2 + 12) = v557;
        if (!result)
        {
          v567 = result;
          v568 = *(a1 + 18);
          v569 = (v568 - 1);
          v570 = (v568 - 2);
          *(a1 + 18) = v570;
          sub_1818B4A80(a1, a2, v569, v559, v560, v561, v562, v563);
          sub_1818A2964(v117, 36, v369, v569, 0, v571, v572, v573);
          if (*(a1 + 31))
          {
            v577 = *(a1 + 31) - 1;
            *(a1 + 31) = v577;
            v578 = *(a1 + v577 + 46);
          }

          else
          {
            v578 = (*(a1 + 15) + 1);
            *(a1 + 15) = v578;
          }

          v1064 = sub_1818A2964(v117, 134, v369, v578, 0, v574, v575, v576);
          sub_181910A18(v117, 28, (v369 + 1), v570, v578, 0, v604, v605);
          if (v578)
          {
            v606 = *(a1 + 31);
            if (v606 <= 7)
            {
              *(a1 + 31) = v606 + 1;
              *(a1 + v606 + 46) = v578;
            }
          }

          sub_1818B6C58(a1, a2, v369, 0, 0, &v1075, v570, v569);
          sub_181958CD8(v117, v570);
          sub_1818A2964(v117, 39, v369, v1064, 0, v607, v608, v609);
          sub_181958CD8(v117, v569);
          sub_1818A2964(v117, 122, (v369 + 1), 0, 0, v610, v611, v612);
          sub_1818A2964(v117, 122, v369, 0, 0, v613, v614, v615);
          result = v567;
          v8 = v1049;
        }

        goto LABEL_756;
      }
    }

    v125 = 0;
    goto LABEL_798;
  }

  v1038 = v105;
  v121 = 0;
  while (2)
  {
    if (v121 >= *v104)
    {
      v260 = *(a2 + 6);
      if (v260 && *v260 == 44 && (*(v11 + 97) & 0x80) == 0)
      {
        sub_181964C00(a1, a2);
      }

      if ((*(v11 + 96) & 0x201) == 0 && sub_181964D08(a1, a2))
      {
        if (*(v11 + 103))
        {
          goto LABEL_13;
        }

        v104 = *(a2 + 5);
      }

      if (*v104 >= 1)
      {
        v261 = 0;
        v262 = v104 + 2;
        v263 = 0uLL;
        while (1)
        {
          v264 = &v262[18 * v261];
          *&v1067[16] = 0;
          v1066 = v263;
          *v1067 = v263;
          if (*(v264 + 4))
          {
            goto LABEL_377;
          }

          v18 = *v264;
          if (!*v264)
          {
            goto LABEL_377;
          }

          if (*(v264 + 27))
          {
            break;
          }

          if ((*(v264 + 25) & 4) == 0)
          {
            v283 = (v264 + 16);
LABEL_413:
            v20 = *v283;
            goto LABEL_414;
          }

          v20 = 0;
LABEL_414:
          v304 = *a1;
          v305 = *(*a1 + 528);
          if (v305 && !*(v304 + 197) && !*(a1 + 302))
          {
            v306 = v305(*(v304 + 536), 20);
            if (v306 == 1)
            {
              v307 = 23;
              v308 = "not authorized";
LABEL_431:
              sub_181910730(a1, v308, v18, v19, v20, v21, v22, v23, v979);
              *(a1 + 6) = v307;
              v263 = 0uLL;
              goto LABEL_377;
            }

            v263 = 0uLL;
            if ((v306 & 0xFFFFFFFD) != 0)
            {
              v307 = 1;
              v308 = "authorizer malfunction";
              goto LABEL_431;
            }
          }

LABEL_377:
          if ((*(v264 + 25) & 4) != 0)
          {
            v265 = *(v264 + 8);
            if (!*(v265 + 2))
            {
              v266 = *v265;
              LODWORD(v1072) = 0;
              sub_1818CB0C0(a2, &v1072);
              *(a1 + 77) += v1072;
              v270 = *(v11 + 96);
              if ((v270 & 0x1000) == 0)
              {
                if ((*(v264 + 25) & 0x200) == 0 || (v271 = *(v264 + 6), *(v271 + 18)) && *v271 <= 1)
                {
                  sub_181964FA4(a1, v266, *(a2 + 6), v104, v261, v267, v268, v269);
                  v270 = *(v11 + 96);
                }
              }

              if ((v270 & 0x4000000) == 0)
              {
                sub_181965288(&v262[18 * v261]);
              }

              v1053 = v266;
              v1045 = a1[46];
              a1[46] = *v264;
              if (sub_1819653E0(a1, v104, v261, *(a2 + 1)))
              {
                v275 = *(v1060 + 144);
                v276 = (*(a1 + 15) + 1);
                *(a1 + 15) = v276;
                *(v265 + 3) = v276;
                sub_1818A2964(v1060, 11, v276, 0, (v275 + 1), v272, v273, v274);
                *(v265 + 2) = v275 + 1;
                v277 = *(v265 + 3);
                LOBYTE(v1066) = 13;
                *&v1067[8] = 0;
                DWORD1(v1066) = v277;
                *(&v1066 + 1) = 0;
                *v1067 = 0;
                v979 = v264;
                sub_18195AD8C(a1, 1, "CO-ROUTINE %!S");
                sub_1818A9A10(a1, v266, &v1066);
                *(*(v264 + 2) + 58) = *(v266 + 2);
                *(v264 + 25) |= 0x40u;
                *(v265 + 4) = HIDWORD(v1066);
                sub_1818A2964(v1060, 68, *(v265 + 3), 0, 0, v278, v279, v280);
                v281 = *(v1060 + 24);
                *(v281 + 31) = 0;
                *(v281 + 44) = 0;
                v282 = &byte_1EA831A58;
                if (!*(*v1060 + 103))
                {
                  v282 = (*(v1060 + 136) + 40 * v275);
                }

                *(v282 + 2) = *(v1060 + 144);
                *(a1 + 31) = 0;
                *(a1 + 11) = 0;
                v262 = v104 + 2;
              }

              else
              {
                if ((*(v264 + 25) & 0x200) != 0 && (v289 = *(v264 + 6), v290 = *(v289 + 4), v290 >= 1))
                {
                  sub_1818A2964(v1060, 10, *(v289 + 8), v290, 0, v272, v273, v274);
                  v294 = v264[7];
                  v295 = *(v289 + 12);
                  if (v294 != v295)
                  {
                    sub_1818A2964(v1060, 114, v294, v295, 0, v291, v292, v293);
                  }

                  v296 = *(v289 + 16);
                }

                else
                {
                  v297 = sub_18196556C(v104, &v262[18 * v261], 0, v261);
                  v301 = v297;
                  if (!v297)
                  {
                    v309 = *(a1 + 15) + 1;
                    *(a1 + 15) = v309;
                    *(v265 + 3) = v309;
                    v1014 = sub_1818A2964(v1060, 9, 0, 0, 0, v298, v299, v300);
                    *(v265 + 2) = v1014 + 1;
                    v313 = *(v264 + 25);
                    *(v264 + 25) = v313 | 0x20;
                    if ((v313 & 0x10) == 0)
                    {
                      LODWORD(v301) = sub_1818A2964(v1060, 15, 0, 0, 0, v310, v311, v312);
                    }

                    v314 = v264[7];
                    LOBYTE(v1066) = 12;
                    *&v1067[8] = 0;
                    DWORD1(v1066) = v314;
                    *(&v1066 + 1) = 0;
                    *v1067 = 0;
                    v1019 = sub_18195AD8C(a1, 1, "MATERIALIZE %!S", &v262[18 * v261]);
                    sub_1818A9A10(a1, v1053, &v1066);
                    *(*(v264 + 2) + 58) = *(v1053 + 2);
                    if (v301)
                    {
                      v318 = &byte_1EA831A58;
                      if (!*(*v1060 + 103))
                      {
                        v318 = (*(v1060 + 136) + 40 * v301);
                      }

                      *(v318 + 2) = *(v1060 + 144);
                    }

                    sub_1818A2964(v1060, 67, *(v265 + 3), (v1014 + 1), 0, v315, v316, v317);
                    sub_18195B0C0(v1060, v1019, v1019, -1);
                    v319 = &byte_1EA831A58;
                    if (!*(*v1060 + 103))
                    {
                      v319 = (*(v1060 + 136) + 40 * v1014);
                    }

                    *(v319 + 2) = *(v1060 + 144);
                    *(a1 + 31) = 0;
                    *(a1 + 11) = 0;
                    if ((*(v264 + 25) & 0x210) == 0x200)
                    {
                      v320 = *(v264 + 6);
                      *(v320 + 4) = v265[1];
                      *(v320 + 12) = v264[7];
                      *(v320 + 16) = *(v1053 + 2);
                    }

                    goto LABEL_409;
                  }

                  v302 = *(v297 + 64);
                  v303 = v302[2];
                  if (v303)
                  {
                    sub_1818A2964(v1060, 10, v302[3], v303, 0, v298, v299, v300);
                  }

                  sub_1818A2964(v1060, 114, v264[7], *(v301 + 28), 0, v298, v299, v300);
                  v296 = *(*v302 + 2);
                }

                *(v1053 + 2) = v296;
              }

LABEL_409:
              if (*(v11 + 103))
              {
                goto LABEL_13;
              }

              LODWORD(v1072) = 0;
              sub_1818CB0C0(a2, &v1072);
              *(a1 + 77) -= v1072;
              a1[46] = v1045;
              v263 = 0uLL;
            }
          }

          if (++v261 >= *v104)
          {
            goto LABEL_432;
          }
        }

        v284 = *(v264 + 8);
        if (v284)
        {
          v285 = (*(*a1 + 32) + 24);
          v286 = 0xFFFFFFFF00000000;
          do
          {
            v287 = *v285;
            v285 += 4;
            v286 += 0x100000000;
          }

          while (v287 != v284);
          v288 = v286 >> 32;
        }

        else
        {
          v288 = -32768;
        }

        v283 = (*(v11 + 32) + 32 * v288);
        goto LABEL_413;
      }

LABEL_432:
      v321 = *(a2 + 4);
      v322 = *(a2 + 7);
      v1054 = *(a2 + 6);
      v323 = *(a2 + 8);
      v324 = *(a2 + 1);
      LOBYTE(v1070) = v324 & 1;
      if ((v324 & 9) != 1 || sub_181959974(*&v1069[0], v321, 0xFFFFFFFFLL) || (*(v11 + 96) & 4) != 0 || *(a2 + 14))
      {
LABEL_817:
        if (*&v1069[0])
        {
          v658 = sub_181965648(a1, *&v1069[0], 0, *v321);
          v659 = *(a1 + 14);
          *(a1 + 14) = v659 + 1;
          HIDWORD(v1069[0]) = v659;
          v663 = sub_1818A2964(v1060, 117, v659, (**&v1069[0] + *v321 + 1), 0, v660, v661, v662);
          sub_1818B49F8(v1060, v663, v658, 0xFFFFFFF8);
        }

        else
        {
          v663 = -1;
        }

        v664 = v1038;
        DWORD2(v1069[1]) = v663;
        v665 = v1060;
        if (*v1049 != 12)
        {
          goto LABEL_838;
        }

        sub_1818A2964(v1060, 117, *(v1049 + 1), *v321, 0, v21, v22, v23);
        v665 = v1060;
        if ((a2[5] & 8) == 0)
        {
          goto LABEL_838;
        }

        v666 = *v321;
        if (v666 <= 1)
        {
          v667 = v323;
        }

        else
        {
          if ((*(&v321[6 * v666] + 1) & 0x40) != 0)
          {
LABEL_834:
            v666 = v666;
            v673 = v321 + 25;
            v674 = v321 + 25;
            do
            {
              v675 = *v674;
              v674 += 24;
              if ((v675 & 0x40) == 0)
              {
                **(v673 - 17) = 122;
              }

              v673 = v674;
              --v666;
            }

            while (v666);
LABEL_838:
            v676 = (*(a1 + 18) - 1);
            *(a1 + 18) = v676;
            if ((a2[5] & 0x40) == 0)
            {
              *(a2 + 1) = 320;
            }

            if (*(a2 + 12))
            {
              sub_1818B4A80(a1, a2, v676, v19, v20, v21, v22, v23);
              v665 = v1060;
            }

            if (!*(a2 + 2) && (DWORD2(v1069[1]) & 0x80000000) == 0)
            {
              if (*(*v665 + 103))
              {
                v677 = &byte_1EA831A58;
              }

              else
              {
                v677 = (v665[17] + 40 * DWORD2(v1069[1]));
              }

              *v677 = 119;
              BYTE4(v1069[2]) |= 1u;
            }

            if (a2[4])
            {
              v679 = *(a1 + 14);
              *(a1 + 14) = v679 + 1;
              HIDWORD(v1070) = v679;
              v680 = sub_181965648(a1, *(a2 + 4), 0, 0);
              LODWORD(v679) = sub_1818A2964(v1060, 117, v679, 0, 0, v681, v682, v683);
              sub_1818B49F8(v1060, v679, v680, 0xFFFFFFF8);
              v1071 = v679;
              v684 = *(v1060 + 144);
              if (v684 >= 1)
              {
                *(*(v1060 + 136) + 40 * v684 - 38) = 8;
              }

              v678 = 3;
              v664 = v1038;
            }

            else
            {
              v678 = 0;
            }

            BYTE1(v1070) = v678;
            if ((v664 & 8) == 0 && !v322)
            {
              v685 = *(a2 + 1) & 0x4000 | ((v1070 != 0) << 8);
              v686 = *(a2 + 14);
              if (v686)
              {
                sub_1819657CC(a1, a2, v18, v19, v20, v21, v22, v23);
              }

              v687 = sub_1818B507C(a1, v104, v1054, *&v1069[0], *(a2 + 4), a2, v685, *(a2 + 1));
              if (!v687)
              {
                goto LABEL_13;
              }

              v691 = v687;
              v692 = *(v687 + 70);
              if (v692 < *(a2 + 1))
              {
                *(a2 + 1) = v692;
                if (*v1049 - 5 <= 1)
                {
                  *(a2 + 1) = v692 - 30;
                }
              }

              if (v1070 && *(v687 + 67))
              {
                BYTE1(v1070) = *(v687 + 67);
              }

              if (*&v1069[0])
              {
                v693 = *(v687 + 65) & ~(*(v687 + 65) >> 31);
                DWORD2(v1069[0]) = v693;
                if ((*(v687 + 68) & 4) != 0)
                {
                  v720 = v687 + 120 * *(v687 + 64);
                  v721 = *(v720 + 792);
                  v694 = (v720 + 752);
                  if (v721)
                  {
                    v694 = (v687 + 48);
                  }
                }

                else
                {
                  v694 = (v687 + 48);
                }

                LODWORD(v1069[2]) = *v694;
                if (**&v1069[0] != v693)
                {
                  goto LABEL_905;
                }

                *&v1069[0] = 0;
              }

              if ((DWORD2(v1069[1]) & 0x80000000) == 0)
              {
                sub_1818B6C00(v1060, SDWORD2(v1069[1]));
              }

LABEL_905:
              if (!v686)
              {
                sub_1818B6C58(a1, a2, 0xFFFFFFFFuLL, v1069, &v1070, v1049, *(v691 + 48), *(v691 + 52));
                sub_1818B9E4C(v691, v735, v736, v737, v738, v739, v740, v741);
LABEL_1092:
                if (BYTE1(v1070) == 3)
                {
                  sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s", "DISTINCT");
                }

                if (*&v1069[0])
                {
                  sub_1818E4EE4(a1, a2, v1069, *v321, v1049);
                }

                sub_181958CD8(v1060, v676);
                result = *(a1 + 13) > 0;
                goto LABEL_14;
              }

              v722 = *(a1 + 18);
              v723 = v722 - 1;
              v724 = (v722 - 2);
              v1029 = v321;
              v725 = v676;
              v676 = (v722 - 3);
              *(a1 + 18) = v676;
              v726 = (*(a1 + 15) + 1);
              *(a1 + 15) = v726;
              sub_181965E3C(a1, a2, v691, v726, (v722 - 1), v688, v689, v690);
              sub_1818A2964(v1060, 9, 0, v676, 0, v727, v728, v729);
              sub_181958CD8(v1060, v723);
              LODWORD(v1069[2]) = 0;
              sub_1818B6C58(a1, a2, 0xFFFFFFFFuLL, v1069, &v1070, v1049, v724, v676);
              sub_181958CD8(v1060, v724);
              sub_1818A2964(v1060, 67, v726, 0, 0, v730, v731, v732);
              v733 = v1060;
              v734 = v676;
              LODWORD(v676) = v725;
              v321 = v1029;
LABEL_1091:
              sub_181958CD8(v733, v734);
              goto LABEL_1092;
            }

            memset(v1067, 0, sizeof(v1067));
            v1066 = 0u;
            if (!v322)
            {
              *(a2 + 1) = 0;
              goto LABEL_893;
            }

            v695 = *(a2 + 4);
            v696 = *v695;
            if (v696 >= 1)
            {
              v697 = v695 + 2;
              if (v696 == 1)
              {
                v698 = v695 + 2;
                v699 = 1;
LABEL_875:
                v702 = v698 + 11;
                v703 = v699 + 1;
                do
                {
                  *v702 = 0;
                  v702 += 12;
                  --v703;
                }

                while (v703 > 1);
                goto LABEL_877;
              }

              v698 = &v697[6 * (v696 & 0x7FFFFFFE)];
              v699 = v696 - (v696 & 0x7FFFFFFE);
              v700 = v697 + 23;
              v701 = v696 & 0x7FFFFFFE;
              do
              {
                *(v700 - 12) = 0;
                *v700 = 0;
                v700 += 24;
                v701 -= 2;
              }

              while (v701);
              if ((v696 & 0x7FFFFFFE) != v696)
              {
                goto LABEL_875;
              }
            }

LABEL_877:
            v704 = *v322;
            if (v704 < 1)
            {
              goto LABEL_885;
            }

            if (v704 == 1)
            {
              v705 = (v322 + 2);
              v706 = *v322;
            }

            else
            {
              v705 = &v322[6 * (v704 & 0x7FFFFFFE) + 2];
              v706 = v704 - (v704 & 0x7FFFFFFE);
              v707 = v322 + 27;
              v708 = v704 & 0x7FFFFFFE;
              do
              {
                *(v707 - 12) = 0;
                *v707 = 0;
                v707 += 24;
                v708 -= 2;
              }

              while (v708);
              if ((v704 & 0x7FFFFFFE) == v704)
              {
LABEL_885:
                if (*(a2 + 1) >= 67)
                {
                  *(a2 + 1) = 66;
                }

                v711 = *&v1069[0];
                if (*&v1069[0])
                {
                  v712 = *v322;
                  if (v712 == **&v1069[0])
                  {
                    if (v712 >= 1)
                    {
                      v713 = (*&v1069[0] + 24);
                      v714 = v322 + 6;
                      do
                      {
                        v715 = *v713;
                        v713 += 24;
                        *v714 = v715 & 1;
                        v714 += 24;
                        --v712;
                      }

                      while (v712);
                    }

                    v716 = sub_181959974(v322, v711, 0xFFFFFFFFLL) != 0;
LABEL_894:
                    v1035 = v716;
                    v717 = *(a1 + 18) - 1;
                    *(a1 + 18) = v717;
                    v718 = sub_18190C56C(v11, 0x40uLL, 0x1020040567C6545);
                    if (v718)
                    {
                      sub_18195B158(a1, sub_1819679DC, v718);
                    }

                    v1048 = v718;
                    if (*(v11 + 103))
                    {
                      goto LABEL_13;
                    }

                    v718[15] = *(a2 + 4);
                    memset(&v1067[8], 0, 32);
                    *&v1066 = a1;
                    *(&v1066 + 1) = v104;
                    *v1067 = v718;
                    if (v322)
                    {
                      v719 = *v322;
                    }

                    else
                    {
                      v719 = 0;
                    }

                    v718[1] = v719;
                    *(v718 + 3) = v322;
                    sub_181967A38(&v1066, v321);
                    sub_181967A38(&v1066, *&v1069[0]);
                    if (v323)
                    {
                      if (v322)
                      {
                        *&v1074 = 0;
                        *&v1072 = a1;
                        *(&v1072 + 1) = sub_18197F7EC;
                        v1073 = 0uLL;
                        *(&v1074 + 1) = a2;
                        v742 = *(a2 + 8);
                        if (v742)
                        {
                          sub_181959BA0(&v1072, v742);
                        }

                        v1054 = *(a2 + 6);
                      }

                      *&v1072 = 0;
                      *(&v1072 + 1) = sub_1818EAE9C;
                      *&v1073 = sub_181968AFC;
                      *&v1074 = 0;
                      *(&v1074 + 1) = &v1066;
                      *(&v1073 + 1) = sub_181968B10;
                      sub_181959BA0(&v1072, v323);
                    }

                    v718[11] = v718[10];
                    if (*(a2 + 7) || *(a2 + 8) || v718[14] != 1)
                    {
                      v1041 = 0;
                    }

                    else
                    {
                      v1041 = sub_181967AF8(v11, **(v718 + 6), &v1068);
                    }

                    sub_181967C9C(v718, &v1066);
                    if (*(v11 + 103))
                    {
                      goto LABEL_13;
                    }

                    v1023 = v717;
                    v1007 = v323;
                    if (v322)
                    {
                      v988 = v676;
                      v1030 = v321;
                      if (v718[14] != 1 || (v743 = *(v718 + 6), (v743[2] & 0x80000000) != 0))
                      {
                        v1000 = 0;
                        v1003 = 0;
                      }

                      else
                      {
                        v744 = *v743;
                        if (v744 && (*(v744 + 5) & 0x10) == 0 && (v745 = *(v744 + 32)) != 0)
                        {
                          v746 = *(v745 + 8);
                          if (v746)
                          {
                            v747 = sub_1818C7FEC(v11, v746, 0, 0);
                          }

                          else
                          {
                            v747 = 0;
                          }

                          v955 = sub_1818C83A0(v11, v322, 0);
                          v1000 = sub_1818A8F6C(a1, v955, v747);
                          if (v1000)
                          {
                            v956 = 1280;
                          }

                          else
                          {
                            v956 = 0;
                          }

                          v1003 = v956;
                        }

                        else
                        {
                          v1000 = 0;
                          v1003 = 0;
                        }
                      }

                      v760 = *(a1 + 14);
                      *(a1 + 14) = v760 + 1;
                      v718[2] = v760;
                      v761 = sub_181965648(a1, v322, 0, v718[10]);
                      v983 = sub_1818A2964(v1060, 119, v718[2], v718[1], 0, v762, v763, v764);
                      v987 = v761;
                      sub_1818B49F8(v1060, v983, v761, 0xFFFFFFF8);
                      v765 = *(a1 + 15);
                      v766 = *(a1 + 18);
                      v767 = (v765 + 4);
                      *(a1 + 15) = v767;
                      v986 = v766;
                      v768 = (v766 - 2);
                      *(a1 + 18) = v768;
                      v769 = (v765 + 5);
                      v770 = *v322 + v767;
                      *(a1 + 15) = v770;
                      v985 = v770;
                      *(a1 + 15) = *v322 + v770;
                      v1016 = v765;
                      sub_1818A2964(v1060, 71, 0, (v765 + 2), 0, v771, v772, v773);
                      v1010 = v769;
                      sub_1818A2964(v1060, 75, 0, v769, *v322 + v767, v774, v775, v776);
                      __sb = v767;
                      v994 = v768;
                      sub_1818A2964(v1060, 10, v767, v768, 0, v777, v778, v779);
                      if (v1070 == 2)
                      {
                        v780 = 128;
                      }

                      else
                      {
                        v780 = 64;
                      }

                      if (v1035)
                      {
                        v781 = 0;
                      }

                      else
                      {
                        v781 = 512;
                      }

                      v782 = sub_1818B507C(a1, v104, v1054, v322, v1000, a2, v781 | v780 | v1003, 0);
                      if (!v782)
                      {
                        if (v1000)
                        {
                          sub_18194E5B8(v11, v1000);
                        }

                        goto LABEL_13;
                      }

                      v786 = v782;
                      if (a1[12])
                      {
                        sub_181967E7C(a2, v718, &v1066);
                      }

                      v787 = *(a1 + 15);
                      v718[4] = v787 + 1;
                      *(a1 + 15) = v718[10] + v787 + v718[14];
                      v991 = *(v786 + 67);
                      v1057 = *(v786 + 65) & ~(*(v786 + 65) >> 31);
                      v1042 = *v322;
                      v984 = v786;
                      if (*v322 == v1057)
                      {
                        v788 = 0;
                        v981 = 0;
                      }

                      else
                      {
                        v789 = "GROUP BY";
                        if (v1070 && (a2[4] & 1) == 0)
                        {
                          v789 = "DISTINCT";
                        }

                        v980 = sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s", v789);
                        v790 = *v322;
                        v791 = v718[10];
                        v792 = *v322;
                        if (v791 >= 1)
                        {
                          v793 = (*(v718 + 4) + 24);
                          v794 = *v322;
                          LODWORD(v792) = *v322;
                          do
                          {
                            v795 = *v793;
                            v793 += 8;
                            v796 = v795 < v794;
                            if (v795 < v794)
                            {
                              v792 = v792;
                            }

                            else
                            {
                              v792 = (v792 + 1);
                            }

                            if (!v796)
                            {
                              ++v794;
                            }

                            --v791;
                          }

                          while (v791);
                        }

                        v797 = sub_18195883C(a1, v792);
                        sub_1819588AC(a1, v322, v797, 0, 0, v798, v799, v800);
                        *v718 = 1;
                        v804 = v718[10];
                        if (v804 >= 1)
                        {
                          v805 = 0;
                          for (m = 0; m < v804; ++m)
                          {
                            v807 = *(v718 + 4) + v805;
                            if (*(v807 + 24) >= v790)
                            {
                              sub_181956EF4(a1, *(v807 + 8), (v790 + v797));
                              ++v790;
                              v804 = v718[10];
                            }

                            v805 += 32;
                          }
                        }

                        *v718 = 0;
                        if (*(a1 + 31))
                        {
                          v808 = *(a1 + 31) - 1;
                          *(a1 + 31) = v808;
                          v809 = *(a1 + v808 + 46);
                        }

                        else
                        {
                          v809 = (*(a1 + 15) + 1);
                          *(a1 + 15) = v809;
                        }

                        if ((*(*v1060 + 49) & 4) != 0)
                        {
                          v834 = *(v1060 + 144);
                          v835 = *(v1060 + 392);
                          v836 = 56 * v835;
                          v837 = v835 + 1;
                          do
                          {
                            if (--v837 < 1)
                            {
                              goto LABEL_1008;
                            }

                            v838 = v836 - 56;
                            v839 = *(v1060 + 400);
                            v840 = *(v839 + v836 - 56);
                            v836 -= 56;
                          }

                          while (v840 != v980);
                          if (v834 >= 1)
                          {
                            *(v839 + v838 + 32) = v834;
                          }
                        }

LABEL_1008:
                        sub_1818A2964(v1060, 97, v797, v792, v809, v801, v802, v803);
                        sub_1818A2964(v1060, 139, *(v1048 + 8), v809, 0, v841, v842, v843);
                        sub_18195B0C0(v1060, v980, *(v1060 + 144) - 2, -1);
                        if (v809)
                        {
                          v851 = *(a1 + 31);
                          if (v851 <= 7)
                          {
                            *(a1 + 31) = v851 + 1;
                            *(a1 + v851 + 46) = v809;
                          }
                        }

                        if (v792 == 1)
                        {
                          if (v797)
                          {
                            v852 = *(a1 + 31);
                            if (v852 <= 7)
                            {
                              *(a1 + 31) = v852 + 1;
                              *(a1 + v852 + 46) = v797;
                            }
                          }
                        }

                        else if (*(a1 + 11) < v792)
                        {
                          *(a1 + 11) = v792;
                          *(a1 + 12) = v797;
                        }

                        sub_1818B9E4C(v984, v844, v845, v846, v847, v848, v849, v850);
                        v856 = *(a1 + 14);
                        *(a1 + 14) = v856 + 1;
                        v788 = v856;
                        *(v1048 + 12) = v856;
                        if (*(a1 + 31))
                        {
                          v857 = *(a1 + 31) - 1;
                          *(a1 + 31) = v857;
                          v981 = *(a1 + v857 + 46);
                        }

                        else
                        {
                          v981 = *(a1 + 15) + 1;
                          *(a1 + 15) = v981;
                        }

                        if ((*(*v1060 + 49) & 4) != 0)
                        {
                          v858 = *(v1060 + 144);
                          v859 = *(v1060 + 392);
                          v860 = 56 * v859;
                          v861 = v859 + 1;
                          do
                          {
                            if (--v861 < 1)
                            {
                              goto LABEL_1026;
                            }

                            v862 = v860 - 56;
                            v863 = *(v1060 + 400);
                            v864 = *(v863 + v860 - 56);
                            v860 -= 56;
                          }

                          while (v864 != v980);
                          if (v858 >= 1)
                          {
                            *(v863 + v862 + 28) = v858;
                          }
                        }

LABEL_1026:
                        sub_1818A2964(v1060, 121, v788, v981, v792, v853, v854, v855);
                        v718 = v1048;
                        sub_1818A2964(v1060, 34, *(v1048 + 8), v1023, 0, v865, v866, v867);
                        *(v1048 + 1) = 1;
                        sub_18195B0C0(v1060, v980, -1, v788);
                        sub_18195B0C0(v1060, v980, -1, *(v1048 + 8));
                      }

                      if (a1[12])
                      {
                        sub_181967F64(v718);
                      }

                      if (!v1035 && (*(v11 + 96) & 4) == 0)
                      {
                        if (v1042 == v1057 && (*(v984 + 68) & 8) == 0)
                        {
                          v868 = v1060;
                          v869 = *(v1060 + 144);
LABEL_1037:
                          v1036 = v986 - 1;
                          v870 = (v985 + 1);
                          v871 = *v322;
                          v982 = v869;
                          if (v871 >= 1)
                          {
                            for (n = 0; n < v871; ++n)
                            {
                              v873 = &v322[6 * n + 2];
                              v874 = *(v873 + 20);
                              if (v1042 == v1057)
                              {
                                *v1048 = 1;
                                sub_181956EF4(a1, *v873, (v870 + n));
                              }

                              else
                              {
                                sub_1818A2964(v868, 94, v788, n, (v870 + n), v783, v784, v785);
                              }

                              v868 = v1060;
                              if (v874)
                              {
                                for (ii = *(*(a2 + 4) + 24 * (v874 - 1) + 8); ; ii = *(v876 + 2))
                                {
                                  v876 = sub_1819575A0(ii);
                                  v868 = v1060;
                                  if (!v876)
                                  {
                                    goto LABEL_1039;
                                  }

                                  v877 = *v876;
                                  if (v877 != 179)
                                  {
                                    break;
                                  }
                                }

                                if (v877 != 170 && v877 != 176)
                                {
                                  sub_181958F90(ii, v1010 + n);
                                  v868 = v1060;
                                }
                              }

LABEL_1039:
                              v871 = *v322;
                            }
                          }

                          LODWORD(v676) = v988;
                          v321 = v1030;
                          if (v987)
                          {
                            ++*v987;
                          }

                          v878 = sub_1818A2964(v1060, 90, v1010, v870, v871, v783, v784, v785);
                          sub_1818B49F8(v1060, v878, v987, 0xFFFFFFF8);
                          v879 = *(v1060 + 144);
                          sub_1818A2964(v1060, 14, (v879 + 1), 0, (v879 + 1), v880, v881, v882);
                          sub_1818A2964(v1060, 10, (v1016 + 3), v1036, 0, v883, v884, v885);
                          sub_1818A2964(a1[2], 79, v870, v1010, *v322, v886, v887, v888);
                          sub_1818A2964(v1060, 50, (v1016 + 2), v1023, 0, v889, v890, v891);
                          sub_1818A2964(v1060, 10, __sb, v994, 0, v892, v893, v894);
                          if (*(*v1060 + 103))
                          {
                            v899 = &byte_1EA831A58;
                          }

                          else
                          {
                            v899 = (*(v1060 + 136) + 40 * v879);
                          }

                          *(v899 + 2) = *(v1060 + 144);
                          sub_1818EB5A0(a1, (v1016 + 1), v1048, v991, v895, v896, v897, v898);
                          sub_1818A2964(v1060, 71, 1uLL, (v1016 + 1), 0, v900, v901, v902);
                          if (v1042 == v1057)
                          {
                            sub_1818B9E4C(v984, v903, v904, v905, v906, v907, v908, v909);
                            sub_1818B6C00(v1060, v983);
                          }

                          else
                          {
                            sub_1818A2964(v1060, 37, *(v1048 + 8), v982, 0, v907, v908, v909);
                          }

                          if (v1000)
                          {
                            sub_18194E5B8(v11, v1000);
                          }

                          sub_1818A2964(v1060, 10, (v1016 + 3), v1036, 0, v910, v911, v912);
                          LODWORD(v913) = v1023;
                          sub_1818A2964(v1060, 9, 0, v1023, 0, v914, v915, v916);
                          v1059 = *(v1060 + 144);
                          sub_1818A2964(v1060, 71, 1uLL, (v1016 + 2), 0, v917, v918, v919);
                          sub_1818A2964(v1060, 67, (v1016 + 3), 0, 0, v920, v921, v922);
                          sub_181958CD8(v1060, v1036);
                          v923 = *(v1060 + 144);
                          sub_1818A2964(v1060, 50, (v1016 + 1), (v923 + 2), 0, v924, v925, v926);
                          sub_1818A2964(v1060, 67, (v1016 + 3), 0, 0, v927, v928, v929);
                          sub_181967FF4(a1, v1048, v930, v931, v932, v933, v934, v935);
                          sub_1818DD640(a1, v1007);
                          sub_1818B6C58(a1, a2, 0xFFFFFFFFuLL, v1069, &v1070, v1049, (v923 + 1), v1059);
                          sub_1818A2964(v1060, 67, (v1016 + 3), 0, 0, v936, v937, v938);
                          sub_181958CD8(v1060, v994);
                          sub_1818EB1E8(a1, v1048, v939, v940, v941, v942, v943, v944);
                          sub_1818A2964(v1060, 71, 0, (v1016 + 1), 0, v945, v946, v947);
                          sub_1818A2964(v1060, 67, __sb, 0, 0, v948, v949, v950);
                          if (v1003 && v991)
                          {
                            sub_181968590(a1, v991, *(*(v1048 + 48) + 16), *(*(v1048 + 48) + 20));
                          }

                          goto LABEL_1090;
                        }

                        *&v1069[0] = 0;
                        sub_1818B6C00(v1060, SDWORD2(v1069[1]));
                        v718 = v1048;
                      }

                      v868 = v1060;
                      v869 = *(v1060 + 144);
                      if (v1042 != v1057)
                      {
                        sub_1818A2964(v1060, 133, v718[2], v981, v788, v783, v784, v785);
                        v868 = v1060;
                      }

                      goto LABEL_1037;
                    }

                    v748 = sub_1819686A8(a2, v718);
                    if (v748)
                    {
                      v755 = v748;
                      v756 = *(v748 + 96);
                      if (v756)
                      {
                        v757 = (*(*a1 + 32) + 24);
                        LODWORD(v758) = -1;
                        do
                        {
                          v759 = *v757;
                          v757 += 4;
                          v758 = (v758 + 1);
                        }

                        while (v759 != v756);
                      }

                      else
                      {
                        v758 = 4294934528;
                      }

                      v813 = *(a1 + 14);
                      *(a1 + 14) = v813 + 1;
                      v814 = *(v748 + 40);
                      if (a1[19])
                      {
                        v815 = a1[19];
                      }

                      else
                      {
                        v815 = a1;
                      }

                      v816 = *(v815 + 116);
                      v817 = *(v755 + 40);
                      if ((v816 & (1 << v758)) == 0)
                      {
                        *(v815 + 116) = v816 | (1 << v758);
                        v817 = v814;
                        if (v758 == 1)
                        {
                          sub_1819108F4(v815);
                          v817 = *(v755 + 40);
                        }
                      }

                      sub_181957014(a1, v758, v817, 0, *v755);
                      if ((*(v755 + 48) & 0x80) != 0)
                      {
                        for (jj = *(v755 + 16); jj; jj = *(jj + 40))
                        {
                          if ((*(jj + 99) & 3) == 2)
                          {
                            break;
                          }
                        }
                      }

                      else
                      {
                        jj = 0;
                      }

                      if ((*(*(a2 + 5) + 33) & 1) == 0)
                      {
                        for (kk = *(v755 + 16); kk; kk = *(kk + 40))
                        {
                          if ((*(kk + 99) & 4) == 0)
                          {
                            v828 = *(kk + 92);
                            if (v828 < *(v755 + 60) && !*(kk + 72) && (!jj || v828 < *(jj + 92)))
                            {
                              jj = kk;
                            }
                          }
                        }
                      }

                      if (jj)
                      {
                        v1058 = *(jj + 88);
                        v822 = sub_1819572CC(a1, jj);
                        sub_181910A18(v1060, 102, v813, v1058, v758, 1, v823, v824);
                        if (v822)
                        {
                          sub_1818B49F8(v1060, -1, v822, 0xFFFFFFF8);
                        }
                      }

                      else
                      {
                        sub_181910A18(v1060, 102, v813, v814, v758, 1, v818, v819);
                      }

                      v829 = *(a1 + 15);
                      *(v1048 + 16) = v829 + 1;
                      v830 = *(v1048 + 40);
                      *(a1 + 15) = v830 + v829 + *(v1048 + 56);
                      sub_1818A2964(v1060, 98, v813, (v830 + v829 + 1), 0, v825, v826, v827);
                      sub_1818A2964(v1060, 122, v813, 0, 0, v831, v832, v833);
                      sub_181968744(a1, v755, jj);
LABEL_1089:
                      *&v1069[0] = 0;
                      v913 = v1023;
                      sub_1818DD640(a1, v1007);
                      sub_1818B6C58(a1, a2, 0xFFFFFFFFuLL, 0, 0, v1049, v913, v913);
LABEL_1090:
                      v733 = v1060;
                      v734 = v913;
                      goto LABEL_1091;
                    }

                    v810 = v718[14];
                    if (v718[11])
                    {
                      if (v810 < 1)
                      {
                        LODWORD(v811) = 0;
                      }

                      else
                      {
                        v811 = 0;
                        v812 = *(v718 + 6) + 8;
                        while ((*(*(v812 - 8) + 7) & 1) != 0 || (*(*v812 + 4) & 0x20) == 0)
                        {
                          ++v811;
                          v812 += 32;
                          if (v810 == v811)
                          {
                            goto LABEL_1071;
                          }
                        }
                      }

                      if (v811 == v810)
                      {
LABEL_1071:
                        v952 = (*(a1 + 15) + 1);
                        *(a1 + 15) = v952;
                        sub_1818A2964(v1060, 71, 0, v952, 0, v752, v753, v754);
                        v953 = 0;
                        v954 = 0;
                        LODWORD(v810) = v718[14];
LABEL_1080:
                        v957 = *(a1 + 15);
                        v718[4] = v957 + 1;
                        *(a1 + 15) = v957 + v810 + v718[10];
                        sub_1818EB1E8(a1, v718, v749, v750, v751, v752, v753, v754);
                        v958 = sub_1818B507C(a1, v104, v1054, v1068, v953, a2, v954 | v1041, 0);
                        if (!v958)
                        {
                          goto LABEL_13;
                        }

                        v963 = v958;
                        v964 = *(v958 + 67);
                        sub_1818EB5A0(a1, v952, v1048, v964, v959, v960, v961, v962);
                        if (v964)
                        {
                          v972 = *(v1048 + 48);
                          if (v972)
                          {
                            sub_181968590(a1, v964, *(v972 + 16), *(v972 + 20));
                          }
                        }

                        if (v952)
                        {
                          sub_1818A2964(v1060, 71, 1uLL, v952, 0, v969, v970, v971);
                        }

                        if (v1041)
                        {
                          sub_1819687D4(v1060, v963, v966, v967, v968, v969, v970, v971);
                        }

                        sub_1818B9E4C(v963, v965, v966, v967, v968, v969, v970, v971);
                        sub_181967FF4(a1, v1048, v973, v974, v975, v976, v977, v978);
                        goto LABEL_1089;
                      }
                    }

                    else if (v810 == 1)
                    {
                      v951 = *(v718 + 6);
                      if ((v951[4] & 0x80000000) != 0)
                      {
                        v952 = 0;
                        v953 = 0;
                        v954 = 0;
                      }

                      else
                      {
                        v952 = 0;
                        v953 = *(*v951 + 32);
                        if (v953)
                        {
                          v954 = 1280;
                        }

                        else
                        {
                          v954 = 0;
                        }
                      }

                      LODWORD(v810) = 1;
                      goto LABEL_1080;
                    }

                    v952 = 0;
                    v953 = 0;
                    v954 = 0;
                    goto LABEL_1080;
                  }
                }

LABEL_893:
                v716 = 1;
                goto LABEL_894;
              }
            }

            v709 = (v705 + 22);
            v710 = v706 + 1;
            do
            {
              *v709 = 0;
              v709 += 12;
              --v710;
            }

            while (v710 > 1);
            goto LABEL_885;
          }

          v667 = v323;
          v668 = 24 * v666 - 16;
          v669 = v666 + 1;
          do
          {
            v670 = v321 + v668;
            v671 = *(v321 + v668);
            if (v671)
            {
              sub_1819439E0(v11, v671);
              v665 = v1060;
            }

            v672 = *(v670 + 1);
            if (v672)
            {
              sub_181929C84(v11, v672);
              v665 = v1060;
            }

            LODWORD(v666) = *v321 - 1;
            *v321 = v666;
            if (--v669 <= 2)
            {
              break;
            }

            v668 -= 24;
          }

          while ((*(v670 - 7) & 0x40) == 0);
        }

        v323 = v667;
        v664 = v1038;
        if (v666 < 1)
        {
          goto LABEL_838;
        }

        goto LABEL_834;
      }

      *(a2 + 1) &= ~1u;
      v325 = sub_1818C83A0(v11, v321, 0);
      v322 = v325;
      *(a2 + 7) = v325;
      if (v325)
      {
        v326 = *v325;
        if (v326 >= 1)
        {
          if (v326 == 1)
          {
            v327 = 0;
          }

          else
          {
            v653 = 0;
            v327 = v326 & 0x7FFFFFFE;
            v654 = v325 + 13;
            do
            {
              *(v654 - 12) = v653 | 1;
              *v654 = v653 + 2;
              v654 += 24;
              v653 += 2;
            }

            while (v327 != v653);
            if (v327 == v326)
            {
              goto LABEL_816;
            }
          }

          v655 = &v325[6 * v327 + 7];
          v656 = v326 - v327;
          v657 = v327 + 1;
          do
          {
            *v655 = v657;
            v655 += 12;
            ++v657;
            --v656;
          }

          while (v656);
        }
      }

LABEL_816:
      *(a2 + 1) |= 8u;
      LOBYTE(v1070) = 2;
      goto LABEL_817;
    }

    v176 = &v104[18 * v121];
    if ((*(v176 + 33) & 4) != 0)
    {
      v177 = **(v176 + 9);
    }

    else
    {
      v177 = 0;
    }

    v178 = *(v176 + 3);
    if ((v176[8] & 0x48) != 0)
    {
      v179 = sub_18195A790(*(a2 + 6), v176[9], v176[8] & 0x40);
      v106 = 0uLL;
      if (v179)
      {
        if ((*(v11 + 97) & 0x20) == 0)
        {
          v180 = *(v176 + 32);
          if ((v180 & 8) != 0)
          {
            if ((v176[8] & 0x10) != 0)
            {
              v180 &= ~8u;
              *(v176 + 32) = v180;
            }

            else
            {
              *(v176 + 32) = v180 & 0xC7;
              sub_181964B00(*(a2 + 6), v176[9], 0);
              v106 = 0uLL;
              v180 = *(v176 + 32);
            }
          }

          if ((v180 & 0x40) != 0)
          {
            v181 = v121 + 1;
            v182 = *v104;
            if (v121 + 1 < *v104)
            {
              v183 = v181;
              v184 = &v104[18 * v181 + 8];
              do
              {
                v185 = *v184;
                if ((*v184 & 0x10) != 0)
                {
                  if ((*v184 & 8) != 0)
                  {
                    *v184 = v185 & 0xEF;
                  }

                  else
                  {
                    *v184 = v185 & 0xC7;
                    sub_181964B00(*(a2 + 6), *(v184 + 4), 1);
                    v106 = 0uLL;
                    v182 = *v104;
                  }
                }

                ++v183;
                v184 += 72;
              }

              while (v183 < v182);
            }

            v186 = v182 + 1;
            v187 = &v104[18 * v182 - 10];
            v8 = v1049;
            do
            {
              if (--v186 < 1)
              {
                break;
              }

              v188 = *v187;
              *v187 &= ~0x40u;
              v187 -= 18;
            }

            while ((v188 & 0x10) == 0);
          }
        }
      }
    }

    if (!v177)
    {
      goto LABEL_189;
    }

    v189 = *(v178 + 54);
    if (**(v177 + 32) != v189)
    {
      sub_181910730(a1, "expected %d columns for '%s' but got %d", v18, v19, v20, v21, v22, v23, v189);
      goto LABEL_13;
    }

    if ((*(v176 + 33) & 0x200) != 0 && !*(*(v176 + 7) + 18) || (v190 = *(v177 + 4), (v190 & 8) != 0))
    {
LABEL_189:
      ++v121;
      v107 = *(a2 + 10);
      if (v107)
      {
        goto LABEL_136;
      }

      continue;
    }

    break;
  }

  v18 = *(v177 + 72);
  if (v18)
  {
    if ((*v1051 || *v104 >= 2) && (v190 & 0x8002000) == 0 && !*(v177 + 96) && (a2[7] & 8) == 0 && (*(v11 + 98) & 4) == 0)
    {
      sub_18195B158(a1, sub_181964684, v18);
      v106 = 0uLL;
      *(v177 + 72) = 0;
      goto LABEL_227;
    }

    if (!v121 && (a2[6] & 4) != 0 && (*v104 == 1 || (v104[26] & 0x22) != 0))
    {
      v121 = 0;
      goto LABEL_189;
    }
  }

LABEL_227:
  v191 = *a1;
  v192 = *(*a1 + 96);
  if (v192)
  {
    goto LABEL_230;
  }

  v193 = a1[46];
  *v1067 = v106;
  *&v1067[16] = v106;
  v1066 = v106;
  if (*(a2 + 14))
  {
    goto LABEL_230;
  }

  v194 = *(a2 + 5);
  v195 = &v194[18 * v121];
  v196 = **(v195 + 9);
  if (*(v196 + 112))
  {
    goto LABEL_230;
  }

  v197 = *(v196 + 40);
  v198 = *(v196 + 96);
  if (v198)
  {
    if (*(a2 + 12))
    {
      goto LABEL_230;
    }

    if (*(v198 + 24))
    {
      goto LABEL_230;
    }

    v199 = *(a2 + 1);
    if ((v199 & 0x100) != 0)
    {
      goto LABEL_230;
    }
  }

  else
  {
    v199 = *(a2 + 1);
  }

  if (!*v197)
  {
    goto LABEL_230;
  }

  v200 = *(v196 + 4);
  if ((v200 & 1) != 0 || v198 && ((v1038 & 8) != 0 || *v194 > 1))
  {
    goto LABEL_230;
  }

  v201 = *v1051;
  if (*v1051)
  {
    if (*(v196 + 72))
    {
      goto LABEL_230;
    }
  }

  if ((v1038 & 8) != 0 && *(v196 + 72))
  {
    goto LABEL_230;
  }

  if (v198)
  {
    if (*(a2 + 6) || *(v196 + 4) & 0x2000 | v199 & 1)
    {
      goto LABEL_230;
    }
  }

  else if ((v200 & 0x2000) != 0)
  {
    goto LABEL_230;
  }

  v999 = v195[9];
  v1044 = *(a2 + 5);
  v1033 = &v194[18 * v121];
  v202 = *(v195 + 32);
  v1004 = v202 & 0x60;
  if ((v202 & 0x60) != 0)
  {
    v203 = v202 & 0x10 | v199 & 1;
    v204 = *v197 <= 1 && v203 == 0;
    v8 = v1049;
    v106 = 0uLL;
    if (!v204)
    {
      goto LABEL_230;
    }

    v993 = 1;
  }

  else
  {
    v993 = 0;
  }

  v8 = v1049;
  v106 = 0uLL;
  if (v121 >= 1 && (*(v197 + 32) & 0x40) != 0)
  {
    goto LABEL_230;
  }

  if (!*(v196 + 80))
  {
    goto LABEL_292;
  }

  v8 = v1049;
  if ((v1038 & 8) != 0 || *(v196 + 72) || v1004 | v199 & 1)
  {
    goto LABEL_230;
  }

  v205 = **(v195 + 9);
  do
  {
    v8 = v1049;
    v106 = 0uLL;
    if ((v205[4] & 9) != 0)
    {
      goto LABEL_230;
    }

    v206 = *(v205 + 10);
    if (v206)
    {
      if (*v205 != 136)
      {
        goto LABEL_230;
      }
    }

    v207 = *(v205 + 5);
    if (*v207 < 1 || *(v205 + 14) || v121 >= 1 && (*(v207 + 32) & 0x40) != 0)
    {
      goto LABEL_230;
    }

    v205 = *(v205 + 10);
  }

  while (v206);
  if (v201)
  {
    v208 = *v201;
    if (v208 >= 1)
    {
      v209 = (v201 + 7);
      do
      {
        v210 = *v209;
        v209 += 12;
        v8 = v1049;
        v106 = 0uLL;
        if (!v210)
        {
          goto LABEL_230;
        }

        --v208;
      }

      while (v208);
    }
  }

  v8 = v1049;
  if ((v199 & 0x2000) != 0)
  {
    goto LABEL_230;
  }

  v211 = sub_181968ED4(v196);
  v106 = 0uLL;
  if (v211)
  {
    goto LABEL_230;
  }

  if (*v1044 < 2)
  {
    goto LABEL_292;
  }

  v8 = v1049;
  if ((v192 & 0x800000) != 0 || *(a1 + 31) > 500)
  {
LABEL_230:
    if (*(v11 + 103))
    {
      goto LABEL_13;
    }

    v104 = *(a2 + 5);
    if (*v8 >= 9u)
    {
      *&v1069[0] = *v1051;
    }

    goto LABEL_189;
  }

  v1025 = sub_18190C56C(v191, 4 * *(a1 + 14) + 4, 0x100004052888210);
  if (v1025)
  {
    *v1025 = *(a1 + 14);
  }

  else
  {
LABEL_292:
    v1025 = 0;
  }

  a1[46] = *(v1033 + 1);
  sub_18195CEF8(a1, 21, 0, 0, 0);
  v989 = 0;
  a1[46] = v193;
  if ((*(v1033 + 33) & 4) != 0)
  {
    v216 = *(v1033 + 9);
    v989 = *v216;
    sub_181929C84(v191, v216);
    *(v1033 + 9) = 0;
    *(v1033 + 33) &= ~4u;
  }

  v217 = *(v1033 + 1);
  if (v217)
  {
    sub_181929C84(v191, v217);
  }

  v218 = *(v1033 + 2);
  if (v218)
  {
    sub_181929C84(v191, v218);
  }

  v219 = v1033;
  *(v1033 + 1) = 0;
  *(v1033 + 2) = 0;
  v220 = *(v196 + 80);
  if (v220)
  {
    v221 = *(a2 + 10);
    do
    {
      v223 = *(a2 + 9);
      v224 = *(a2 + 12);
      v225 = *(v219 + 3);
      *(v219 + 3) = 0;
      *(a2 + 12) = 0;
      *v1051 = 0;
      *(a2 + 10) = 0;
      v222 = sub_1818CB220(v191, a2, 0);
      v219 = v1033;
      *(a2 + 12) = v224;
      *(a2 + 9) = v223;
      *a2 = -120;
      *(v1033 + 3) = v225;
      if (v222)
      {
        v226 = *(a1 + 31) + 1;
        *(a1 + 31) = v226;
        *(v222 + 16) = v226;
        if (v1025 && !*(v191 + 103))
        {
          v227 = v222;
          sub_181968F78(a1, v222, v121, v1025);
          v222 = v227;
        }

        *(v222 + 80) = v221;
        if (v221)
        {
          *(v221 + 88) = v222;
        }

        *(v222 + 88) = a2;
        v221 = v222;
        v219 = v1033;
      }

      else
      {
        v222 = v221;
      }

      *(a2 + 10) = v222;
      v220 = *(v220 + 80);
    }

    while (v220);
  }

  if (v1025)
  {
    sub_181929C84(v191, v1025);
  }

  if (*(v191 + 103))
  {
    sub_181960508(a1, (v1033 + 2), v989, 0);
    goto LABEL_366;
  }

  v228 = *(v1033 + 3);
  if (v228)
  {
    if (*(v228 + 44) == 1)
    {
      if (a1[19])
      {
        v229 = a1[19];
      }

      else
      {
        v229 = a1;
      }

      sub_18195B158(v229, sub_181968FEC, v228);
    }

    else
    {
      --*(v228 + 44);
    }

    *(v1033 + 3) = 0;
  }

  __sa = (72 * v121);
  v230 = a2;
  v231 = v989;
  while (2)
  {
    v232 = v1044[18 * v121 + 8];
    v233 = *(v231 + 40);
    v1013 = v231;
    v1018 = *v233;
    v1044 = *(v230 + 5);
    v1026 = v230;
    if (v230 == a2)
    {
      v234 = *(v1033 + 32);
    }

    else
    {
      v234 = 0;
    }

    v235 = v232 & 0x40;
    if (v1018 < 2)
    {
      v1002 = v233[9];
      if (v1018 == 1)
      {
        goto LABEL_331;
      }

      v244 = 0;
    }

    else
    {
      v1044 = sub_1818A95FC(a1, v1044, (v1018 - 1), (v121 + 1), v212, v213, v214, v215);
      if (!v1044)
      {
        break;
      }

      *(v230 + 5) = v1044;
      v1002 = v233[9];
LABEL_331:
      v236 = v233 + 2;
      v237 = &__sa[v1044 + 32];
      v238 = v1018;
      v239 = 0uLL;
      do
      {
        if ((*(v237 + 1) & 0x800) != 0)
        {
          sub_181943C90(v191, *(v237 + 32));
          v239 = 0uLL;
        }

        v240 = (v237 - 24);
        v241 = *(v236 + 1);
        v242 = *(v236 + 2);
        v243 = *(v236 + 3);
        *(v237 + 40) = *(v236 + 8);
        *(v237 + 8) = v242;
        *(v237 + 24) = v243;
        v240[1] = v241;
        *v240 = *v236;
        *v237 |= v235;
        v237 += 72;
        *(v236 + 8) = 0;
        *(v236 + 2) = v239;
        *(v236 + 3) = v239;
        *v236 = v239;
        *(v236 + 1) = v239;
        v236 += 18;
        --v238;
      }

      while (v238);
      v244 = 1;
    }

    LOBYTE(v1044[18 * v121 + 8]) = v234 | v235 | v1044[18 * v121 + 8] & 0x40;
    v245 = v1013;
    v246 = *(v1013 + 72);
    if (v246 && (*(v1026 + 6) & 0x40) == 0)
    {
      v247 = *v246;
      if (v247 >= 1)
      {
        if (v247 == 1)
        {
          v248 = 0;
          goto LABEL_345;
        }

        v248 = v247 & 0x7FFFFFFE;
        v249 = v246 + 13;
        v250 = v248;
        do
        {
          *(v249 - 12) = 0;
          *v249 = 0;
          v249 += 24;
          v250 -= 2;
        }

        while (v250);
        if (v248 != v247)
        {
LABEL_345:
          v251 = v247 - v248;
          v252 = &v246[6 * v248 + 7];
          do
          {
            *v252 = 0;
            v252 += 6;
            --v251;
          }

          while (v251);
        }
      }

      *(v1026 + 72) = v246;
      v245 = v1013;
      *(v1013 + 72) = 0;
    }

    v253 = *(v245 + 48);
    *(v245 + 48) = 0;
    if (v1004)
    {
      sub_181961AFC(v253, v1002, 1);
    }

    if (v253)
    {
      v254 = *(v1026 + 48);
      if (v254)
      {
        v253 = sub_18194F098(a1, 44, v253, v254);
      }

      *(v1026 + 48) = v253;
    }

    if (!*(v191 + 103))
    {
      *&v1074 = 0;
      *&v1072 = a1;
      *(&v1072 + 1) = __PAIR64__(v1002, v999);
      v1073 = v993;
      v255 = v1013;
      *(&v1073 + 1) = *(v1013 + 32);
      do
      {
        v256 = v255;
        v255 = *(v255 + 80);
      }

      while (v255);
      *&v1074 = *(v256 + 32);
      sub_181969010(&v1072, v1026, 0);
    }

    *(v1026 + 4) |= *(v1013 + 4) & 0x100;
    v257 = *(v1013 + 96);
    if (v257)
    {
      *(v1026 + 96) = v257;
      *(v1013 + 96) = 0;
    }

    v258 = v1018;
    if (v244)
    {
      v259 = &__sa[v1044 + 8];
      do
      {
        sub_1819691D0(v1026, v259);
        v259 += 72;
        --v258;
      }

      while (v258);
    }

    v230 = *(v1026 + 80);
    v231 = *(v1013 + 80);
    if (v230)
    {
      continue;
    }

    break;
  }

  memset(&v1067[8], 0, 24);
  *&v1066 = a1;
  *(&v1066 + 1) = sub_181968B20;
  *v1067 = sub_181961BBC;
  sub_1818AEE70(&v1066, v989);
  if (v989)
  {
    sub_1818BB408(v191, v989, 1);
  }

LABEL_366:
  if (!*(a1 + 13))
  {
    v121 = -1;
    v8 = v1049;
    v106 = 0uLL;
    goto LABEL_230;
  }

LABEL_13:
  result = 1;
LABEL_14:
  if (v1068)
  {
    v24 = result;
    sub_18194E5B8(v11, v1068);
    result = v24;
  }

LABEL_16:
  v25 = *(a1 + 78);
  if (v25)
  {
    v26 = a1[2];
    if (*(*v26 + 103))
    {
      v27 = &byte_1EA831A58;
    }

    else
    {
      v27 = (v26[17] + 40 * v25);
    }

    v25 = *(v27 + 2);
  }

  *(a1 + 78) = v25;
  return result;
}