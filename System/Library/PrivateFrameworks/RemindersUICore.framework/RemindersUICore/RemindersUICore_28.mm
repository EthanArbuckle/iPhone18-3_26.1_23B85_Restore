uint64_t sub_21D355C78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(sub_21DBF563C() - 8);
  v8 = *(v7 + 64);
  v9 = 25;
  if (v8 > 0x19)
  {
    v9 = *(v7 + 64);
  }

  v10 = *(v7 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = v9 + ((v10 + 15) & ~(v10 | 7));
  v13 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = *(sub_21DBF6C1C() - 8);
  v15 = *(v14 + 80);
  v16 = ((*(v14 + 64) + ((v15 + 8) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v12 + 1 > v13)
  {
    v17 = v12 + 1;
  }

  else
  {
    v17 = v13;
  }

  if (v17 > v16)
  {
    v16 = v17;
  }

  if (v16 <= (v8 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v18 = v16;
  }

  v19 = *(sub_21DBF8D7C() - 8);
  v20 = *(v19 + 80);
  v21 = ((v20 + 1) & ~v20) + *(v19 + 64);
  if (v18 > v21)
  {
    v21 = v18;
  }

  v22 = 24;
  if (v21 > 0x18)
  {
    v22 = v21;
  }

  v23 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 - 1 >= a2)
  {
    goto LABEL_40;
  }

  v24 = (((v15 | v20 | v11) + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~(v15 | v20 | v11)) + ((((((v22 + 1) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_21;
  }

  v28 = (((1 << v25) + a2 - v6) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_40:
    if (v5 < 0x7FFFFFFF)
    {
      v31 = *(((a1 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      v30 = v31 + 1;
    }

    else
    {
      v30 = (*(v4 + 48))(a1, v5, v32);
    }

    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v28 > 0xFF)
  {
    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  if (v28 < 2)
  {
    goto LABEL_40;
  }

LABEL_21:
  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_40;
  }

LABEL_29:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 > 3)
    {
      LODWORD(v24) = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        LODWORD(v24) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v24) = *a1;
      }
    }

    else if (v24 == 1)
    {
      LODWORD(v24) = *a1;
    }

    else
    {
      LODWORD(v24) = *a1;
    }
  }

  return (v24 | v29) + v6;
}

void sub_21D355FF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v40 = v6;
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v41 = *(v6 + 84);
  v42 = v7;
  v8 = v7 - 1;
  v9 = *(sub_21DBF563C() - 8);
  v10 = *(v9 + 64);
  v11 = 25;
  if (v10 > 0x19)
  {
    v11 = *(v9 + 64);
  }

  v12 = *(v9 + 80) & 0xF8;
  v13 = v12 | 7;
  v14 = v11 + ((v12 + 15) & ~(v12 | 7));
  v15 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = *(sub_21DBF6C1C() - 8);
  v17 = *(v16 + 80);
  v18 = ((*(v16 + 64) + ((v17 + 8) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v14 + 1 > v15)
  {
    v19 = v14 + 1;
  }

  else
  {
    v19 = v15;
  }

  if (v19 > v18)
  {
    v18 = v19;
  }

  if (v18 <= (v10 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v20 = (v10 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v20 = v18;
  }

  v21 = *(sub_21DBF8D7C() - 8);
  v22 = *(v21 + 80);
  v23 = ((v22 + 1) & ~v22) + *(v21 + 64);
  if (v20 > v23)
  {
    v23 = v20;
  }

  v24 = 24;
  if (v23 > 0x18)
  {
    v24 = v23;
  }

  v25 = *(v6 + 64);
  v26 = ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v27 = ((v26 + (v17 | v22 | v13)) & ~(v17 | v22 | v13)) + ((((((v24 + 1) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v28 = 0;
    v29 = a1;
    v30 = v42;
LABEL_30:
    if (v8 >= a2)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v28 = 1;
  v29 = a1;
  v30 = v42;
  if (v27 > 3)
  {
    goto LABEL_30;
  }

  v31 = (((1 << (8 * v27)) + a3 - v42) >> (8 * v27)) + 1;
  if (HIWORD(v31))
  {
    v28 = 4;
    if (v8 >= a2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v31 < 0x100)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 >= 2)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0;
    }

    if (v8 >= a2)
    {
LABEL_40:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *&v29[v27] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_47;
        }

        *&v29[v27] = 0;
      }

      else if (v28)
      {
        v29[v27] = 0;
        if (!a2)
        {
          return;
        }

LABEL_47:
        v36 = a2 - v30;
        if (a2 >= v30)
        {
          if (((v25 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
          {
            bzero(v29, v26);
            *v29 = v36;
          }
        }

        else
        {
          v37 = a2 + 1;
          if (v41 < 0x7FFFFFFF)
          {
            v39 = (&v29[v25 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((v37 & 0x80000000) != 0)
            {
              v39[2] = 0;
              v39[3] = 0;
              *v39 = a2 - 0x7FFFFFFF;
              v39[1] = 0;
            }

            else
            {
              v39[3] = a2;
            }
          }

          else
          {
            v38 = *(v40 + 56);

            v38(v29, v37);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }
  }

LABEL_31:
  v33 = a2 - v30;
  if (v27 >= 4)
  {
    bzero(v29, v27);
    *v29 = v33;
    v34 = 1;
    if (v28 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v34 = (v33 >> (8 * v27)) + 1;
  if (!v27)
  {
LABEL_59:
    if (v28 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v35 = v33 & ~(-1 << (8 * v27));
  bzero(v29, v27);
  if (v27 == 3)
  {
    *v29 = v35;
    v29[2] = BYTE2(v35);
    goto LABEL_59;
  }

  if (v27 == 2)
  {
    *v29 = v35;
    if (v28 > 1)
    {
LABEL_63:
      if (v28 == 2)
      {
        *&v29[v27] = v34;
      }

      else
      {
        *&v29[v27] = v34;
      }

      return;
    }
  }

  else
  {
    *v29 = v33;
    if (v28 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v28)
  {
    v29[v27] = v34;
  }
}

void sub_21D35645C()
{
  if (!qword_27CE5AA40[0])
  {
    type metadata accessor for TTRReminderCellTitleViewModel();
    v0 = type metadata accessor for TTRBoardReminderCellOptionalUpdate();
    if (!v1)
    {
      atomic_store(v0, qword_27CE5AA40);
    }
  }
}

uint64_t sub_21D3564B4()
{
  type metadata accessor for TTRRemindersListInCellModule();
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRBoardReminderCellOptionalUpdate();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21D35659C(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v8 = *(v6 + 80);
  v7 = *(v6 + 84);
  v9 = v8 & 0xF8 | 7;
  v10 = *(v6 + 64);
  v11 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 - 8);
  v13 = *(v12 + 80);
  v14 = v13 & 0xF8 | 7;
  v15 = (*(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 9;
  if (*(v12 + 84))
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = v14 | v9;
  v20 = (v13 | v8) & 0x100000;
  v21 = ((((-2 - v9) | v9) - (v11 + v14) - 32) | v14) - v18;
  if (v19 != 7 || v20 != 0 || v21 < 0xFFFFFFFFFFFFFFE7)
  {
    v24 = *a2;
    *v3 = *a2;
    v3 = v24 + ((v19 + 16) & ~v19);

    return v3;
  }

  v39 = *(v12 + 84);
  v37 = *(*(v4 - 8) + 64);
  __n = v18;
  v40 = v16;
  v41 = *(a3 + 24);
  *a1 = *a2;
  v25 = a2 & 0xFFFFFFFFFFFFFFF8;
  v26 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v7 < 0x7FFFFFFF)
  {
    v28 = *(((v25 + v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    v27 = v11 + 32;
    if (v28 != -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v27 = v11 + 32;
    if ((*(v6 + 48))((a2 & 0xFFFFFFFFFFFFFFF8) + 8, v7, v5))
    {
LABEL_14:
      memcpy(((v3 & 0xFFFFFFFFFFFFFFF8) + 8), v26, v27);
      goto LABEL_19;
    }
  }

  (*(v6 + 16))((v3 & 0xFFFFFFFFFFFFFFF8) + 8, v26, v5);
  v29 = *(((v25 + v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
  *((((v3 & 0xFFFFFFFFFFFFFFF8) + v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 24) = v29;
  (**(v29 - 8))();
LABEL_19:
  v30 = (v27 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v31 = &v26[v27];
  if (!v39)
  {
    v33 = v40;
    v32 = v41;
    if (!v31[v40])
    {
      goto LABEL_27;
    }

    v34 = v31[v40] - 1;
    v35 = v40 & 0xFFFFFFF8;
    if ((v40 & 0xFFFFFFF8) != 0)
    {
      v34 = 0;
      v35 = *v31;
    }

    if ((v35 | v34) == 0xFFFFFFFF)
    {
      goto LABEL_27;
    }

LABEL_26:
    memcpy(v30, &v26[v27], __n);
    return v3;
  }

  v32 = v41;
  v33 = v40;
  if ((*(v12 + 48))(&v26[v27], v39, v41))
  {
    goto LABEL_26;
  }

LABEL_27:
  (*(v12 + 16))(v30, &v26[v27], v32);
  *((v30 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v31[v37 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    *(v30 + v33) = 0;
  }

  return v3;
}

uint64_t sub_21D3568D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80) & 0xF8 | 7;
  v6 = (a1 + v5 + 1) & ~v5;
  v7 = *(v4 + 64) + 7;
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 84) >= 0x7FFFFFFFu)
  {
    v9 = v8 + 32;
    if ((*(v4 + 48))(v6))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = *(((v7 + v6) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v9 = v8 + 32;
  if (v10 == -1)
  {
LABEL_7:
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_0((v7 + v6) & 0xFFFFFFFFFFFFFFF8);
  }

LABEL_8:
  v11 = *(a2 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = ((v9 + v6 + (*(v12 + 80) & 0xF8 | 7)) & ~(*(v12 + 80) & 0xF8 | 7));
  if (v13)
  {
    v22 = *(v11 - 8);
    result = (*(v12 + 48))(v14, v13, v11);
    v12 = v22;
    if (result)
    {
      return result;
    }

    goto LABEL_20;
  }

  v16 = ((*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(v14 + v16) || ((v17 = v16 & 0xFFFFFFF8, (v16 & 0xFFFFFFF8) != 0) ? (v18 = 0) : (v18 = *(v14 + v16) - 1), !v17 ? (v19 = 0) : (v19 = *v14), v20 = v19 | v18, result = (v20 + 1), v20 == -1))
  {
LABEL_20:
    v21 = *(v12 + 8);

    return v21(v14, v11);
  }

  return result;
}

_BYTE *sub_21D356AF8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80) & 0xF8;
  v8 = v7 + 8;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = (&a1[v8] & v9);
  v11 = (&a2[v8] & v9);
  v12 = *(v6 + 64) + 7;
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 84) < 0x7FFFFFFFu)
  {
    v15 = *((&v11[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v14 = v13 + 32;
    if (v15 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = v13 + 32;
    if ((*(v6 + 48))(v11))
    {
LABEL_3:
      memcpy(v10, v11, v14);
      goto LABEL_8;
    }
  }

  (*(v6 + 16))(v10, v11, v5);
  v16 = *((&v11[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
  *((&v10[v12] & 0xFFFFFFFFFFFFFFF8) + 24) = v16;
  (**(v16 - 8))();
LABEL_8:
  v17 = &v10[v14];
  v18 = *(a3 + 24);
  v19 = &v11[v14];
  v20 = *(v18 - 8);
  v21 = *(v20 + 84);
  v22 = *(v20 + 80) & 0xF8 | 7;
  v23 = (&v17[v22] & ~v22);
  v24 = (&v19[v22] & ~v22);
  v25 = *(v20 + 64) + 7;
  v26 = v25 & 0xFFFFFFFFFFFFFFF8;
  v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21)
  {
    if (!(*(v20 + 48))(&v19[v22] & ~v22, v21, v18))
    {
LABEL_19:
      (*(v20 + 16))(v23, v24, v18);
      *(&v23[v25] & 0xFFFFFFFFFFFFFFF8) = *((v24 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (!v21)
      {
        v23[v27] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(v24 + v27))
    {
      goto LABEL_19;
    }

    v28 = *(v24 + v27) - 1;
    v29 = v27 & 0xFFFFFFF8;
    if ((v27 & 0xFFFFFFF8) != 0)
    {
      v28 = 0;
      v29 = *v24;
    }

    if ((v29 | v28) == 0xFFFFFFFF)
    {
      goto LABEL_19;
    }
  }

  if (v21)
  {
    v30 = v26 + 8;
  }

  else
  {
    v30 = v26 + 9;
  }

  memcpy(v23, v24, v30);
  return a1;
}

_BYTE *sub_21D356DB8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 8;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = (&a1[v8] & v9);
  v11 = (&a2[v8] & v9);
  v12 = *(v5 + 64) + 7;
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 < 0x7FFFFFFF)
  {
    v19 = *(((v11 + v12) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v17 = v19 + 1;
    if (*((&v10[v12] & 0xFFFFFFFFFFFFFFF8) + 24) < 0xFFFFFFFFuLL)
    {
LABEL_3:
      if (!v17)
      {
        (*(v5 + 16))(v10, v11, v4);
        v18 = *(((v11 + v12) & 0xFFFFFFFFFFFFFFF8) + 24);
        *((&v10[v12] & 0xFFFFFFFFFFFFFFF8) + 24) = v18;
        (**(v18 - 8))();
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = *(v5 + 48);
    v16 = v15(&a1[v8] & v9, v6, v4);
    v17 = v15(v11, v6, v4);
    v3 = a3;
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v20 = &v10[v12];
  if (v17)
  {
    (*(v5 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(v20 & 0xFFFFFFFFFFFFFFF8);
LABEL_10:
    memcpy(v10, v11, v13);
    goto LABEL_12;
  }

  (*(v5 + 24))(v10, v11, v4);
  __swift_assign_boxed_opaque_existential_0((v20 & 0xFFFFFFFFFFFFFFF8), ((v11 + v12) & 0xFFFFFFFFFFFFFFF8));
LABEL_12:
  v21 = &v10[v13];
  v22 = *(v3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  v25 = *(v23 + 80) & 0xF8 | 7;
  v26 = (&v21[v25] & ~v25);
  v27 = ((v11 + v13 + v25) & ~v25);
  v28 = *(v23 + 64);
  v29 = v28 + 7;
  v30 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 8;
  v46 = v22;
  if (!v24)
  {
    if (*(v26 + v31))
    {
      v38 = *(v26 + v31) - 1;
      if (v30 == -8)
      {
        v39 = 0;
      }

      else
      {
        v38 = 0;
        v39 = *v26;
      }

      if ((v39 | v38) != 0xFFFFFFFF)
      {
        if (!*(v27 + v31))
        {
          goto LABEL_40;
        }

        v40 = *(v27 + v31) - 1;
        if (v30 == -8)
        {
          v41 = 0;
        }

        else
        {
          v40 = 0;
          v41 = *v27;
        }

        if ((v41 | v40) == 0xFFFFFFFF)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }
    }

    if (!*(v27 + v31))
    {
LABEL_37:
      (*(v23 + 24))(v26, v27);
      *((v26 + v29) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v29) & 0xFFFFFFFFFFFFFFF8);
      return a1;
    }

    v42 = *(v27 + v31) - 1;
    if (v30 != -8)
    {
      v42 = 0;
    }

    __n = v26;
    if (v30 == -8)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v27;
    }

    v37 = (v43 | v42) + 1;
LABEL_31:
    v26 = __n;
    if (v37)
    {
      (*(v23 + 8))(__n, v46);
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v32 = v28 + 7;
  v33 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v23 + 48);
  __n = &v21[v25] & ~v25;
  v35 = v22;
  v36 = v34(v26, v24);
  v37 = (v34)(v27, v24, v35);
  v30 = v33;
  v29 = v32;
  if (!v36)
  {
    goto LABEL_31;
  }

  v26 = __n;
  if (!v37)
  {
LABEL_40:
    (*(v23 + 16))(v26, v27, v46);
    *((v26 + v29) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v29) & 0xFFFFFFFFFFFFFFF8);
    if (!v24)
    {
      *(v26 + v31) = 0;
    }

    return a1;
  }

LABEL_33:
  if (v24)
  {
    v44 = v31;
  }

  else
  {
    v44 = v30 + 9;
  }

  memcpy(v26, v27, v44);
  return a1;
}

_BYTE *sub_21D357214(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80) & 0xF8;
  v8 = v7 + 8;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = (&a1[v8] & v9);
  v11 = (&a2[v8] & v9);
  v12 = *(v6 + 64) + 7;
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 84) < 0x7FFFFFFFu)
  {
    v15 = *((&v11[v12] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v14 = v13 + 32;
    if (v15 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = v13 + 32;
    if ((*(v6 + 48))(v11))
    {
LABEL_3:
      memcpy(v10, v11, v14);
      goto LABEL_8;
    }
  }

  (*(v6 + 32))(v10, v11, v5);
  v16 = (&v11[v12] & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  v18 = (&v10[v12] & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v16;
  v18[1] = v17;
LABEL_8:
  v19 = &v10[v14];
  v20 = *(a3 + 24);
  v21 = &v11[v14];
  v22 = *(v20 - 8);
  v23 = *(v22 + 84);
  v24 = *(v22 + 80) & 0xF8 | 7;
  v25 = (&v19[v24] & ~v24);
  v26 = (&v21[v24] & ~v24);
  v27 = *(v22 + 64) + 7;
  v28 = v27 & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v23)
  {
    if (!(*(v22 + 48))(&v21[v24] & ~v24, v23, v20))
    {
LABEL_19:
      (*(v22 + 32))(v25, v26, v20);
      *(&v25[v27] & 0xFFFFFFFFFFFFFFF8) = *((v26 + v27) & 0xFFFFFFFFFFFFFFF8);
      if (!v23)
      {
        v25[v29] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(v26 + v29))
    {
      goto LABEL_19;
    }

    v30 = *(v26 + v29) - 1;
    v31 = v29 & 0xFFFFFFF8;
    if ((v29 & 0xFFFFFFF8) != 0)
    {
      v30 = 0;
      v31 = *v26;
    }

    if ((v31 | v30) == 0xFFFFFFFF)
    {
      goto LABEL_19;
    }
  }

  if (v23)
  {
    v32 = v28 + 8;
  }

  else
  {
    v32 = v28 + 9;
  }

  memcpy(v25, v26, v32);
  return a1;
}

_BYTE *sub_21D35749C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 8;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = (&a1[v8] & v9);
  v11 = (&a2[v8] & v9);
  v12 = *(v5 + 64) + 7;
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 < 0x7FFFFFFF)
  {
    v21 = *(((v11 + v12) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    v17 = v21 + 1;
    if (*((&v10[v12] & 0xFFFFFFFFFFFFFFF8) + 24) < 0xFFFFFFFFuLL)
    {
LABEL_3:
      if (!v17)
      {
        (*(v5 + 32))(v10, v11, v4);
        v18 = ((v11 + v12) & 0xFFFFFFFFFFFFFFF8);
        v19 = v18[1];
        v20 = (&v10[v12] & 0xFFFFFFFFFFFFFFF8);
        *v20 = *v18;
        v20[1] = v19;
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = *(v5 + 48);
    v16 = v15(&a1[v8] & v9, v6, v4);
    v17 = v15(v11, v6, v4);
    v3 = a3;
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v22 = (&v10[v12] & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    (*(v5 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(&v10[v12] & 0xFFFFFFFFFFFFFFF8);
LABEL_10:
    memcpy(v10, v11, v13);
    goto LABEL_12;
  }

  (*(v5 + 40))(v10, v11, v4);
  v23 = ((v11 + v12) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_0(&v10[v12] & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
LABEL_12:
  v25 = &v10[v13];
  v26 = *(v3 + 24);
  v27 = *(v26 - 8);
  v28 = *(v27 + 84);
  v29 = *(v27 + 80) & 0xF8 | 7;
  v30 = (&v25[v29] & ~v29);
  v31 = ((v11 + v13 + v29) & ~v29);
  v32 = *(v27 + 64);
  v33 = v32 + 7;
  v34 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v34 + 8;
  v50 = v26;
  if (!v28)
  {
    if (*(v30 + v35))
    {
      v42 = *(v30 + v35) - 1;
      if (v34 == -8)
      {
        v43 = 0;
      }

      else
      {
        v42 = 0;
        v43 = *v30;
      }

      if ((v43 | v42) != 0xFFFFFFFF)
      {
        if (!*(v31 + v35))
        {
          goto LABEL_40;
        }

        v44 = *(v31 + v35) - 1;
        if (v34 == -8)
        {
          v45 = 0;
        }

        else
        {
          v44 = 0;
          v45 = *v31;
        }

        if ((v45 | v44) == 0xFFFFFFFF)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }
    }

    if (!*(v31 + v35))
    {
LABEL_37:
      (*(v27 + 40))(v30, v31);
      *((v30 + v33) & 0xFFFFFFFFFFFFFFF8) = *((v31 + v33) & 0xFFFFFFFFFFFFFFF8);
      return a1;
    }

    v46 = *(v31 + v35) - 1;
    if (v34 != -8)
    {
      v46 = 0;
    }

    __n = v30;
    if (v34 == -8)
    {
      v47 = 0;
    }

    else
    {
      v47 = *v31;
    }

    v41 = (v47 | v46) + 1;
LABEL_31:
    v30 = __n;
    if (v41)
    {
      (*(v27 + 8))(__n, v50);
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v36 = v32 + 7;
  v37 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v27 + 48);
  __n = &v25[v29] & ~v29;
  v39 = v26;
  v40 = v38(v30, v28);
  v41 = (v38)(v31, v28, v39);
  v34 = v37;
  v33 = v36;
  if (!v40)
  {
    goto LABEL_31;
  }

  v30 = __n;
  if (!v41)
  {
LABEL_40:
    (*(v27 + 32))(v30, v31, v50);
    *((v30 + v33) & 0xFFFFFFFFFFFFFFF8) = *((v31 + v33) & 0xFFFFFFFFFFFFFFF8);
    if (!v28)
    {
      *(v30 + v35) = 0;
    }

    return a1;
  }

LABEL_33:
  if (v28)
  {
    v48 = v35;
  }

  else
  {
    v48 = v34 + 9;
  }

  memcpy(v30, v31, v48);
  return a1;
}

uint64_t sub_21D3578CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v11)
  {
    v14 = 8;
  }

  else
  {
    v14 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 80) & 0xF8;
  v16 = v15 | 7;
  v17 = *(*(*(a3 + 16) - 8) + 64) + 7;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 32;
  v19 = *(v9 + 80) & 0xF8 | 7;
  v20 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_36;
  }

  v21 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + ((v18 + v19 + ((v15 + 8) & ~v16)) & ~v19);
  v22 = 8 * v21;
  if (v21 > 3)
  {
    goto LABEL_16;
  }

  v24 = ((v20 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v24))
  {
    v23 = *(a1 + v21);
    if (!v23)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v24 > 0xFF)
  {
    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v24 >= 2)
  {
LABEL_16:
    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_36;
    }

LABEL_23:
    v25 = (v23 - 1) << v22;
    if (v21 > 3)
    {
      v25 = 0;
    }

    if (v21)
    {
      if (v21 <= 3)
      {
        v26 = v21;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 2)
      {
        if (v26 == 3)
        {
          v27 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v27 = *a1;
        }
      }

      else if (v26 == 1)
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
      }
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v25) + 1;
  }

LABEL_36:
  v28 = (a1 + v16 + 1) & ~v16;
  if (v7 >= v12)
  {
    if (v5 < 0x7FFFFFFF)
    {
      v33 = *(((v17 + v28) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      v32 = v33 + 1;
    }

    else
    {
      v32 = (*(v4 + 48))(v28);
    }

    if (v32 >= 2)
    {
      return v32 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (*(v10 + 48))((v28 + v18 + v19) & ~v19, v11, v8);
    v30 = v29 != 0;
    result = (v29 - 1);
    if (result == 0 || !v30)
    {
      return 0;
    }
  }

  return result;
}

void sub_21D357B74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = v9 - 1;
  v15 = v12 - 1;
  if (!v12)
  {
    v15 = 0;
  }

  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9 - 1;
  }

  v17 = *(v7 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = v13 + 7;
  v20 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v21 = (v17 + 8) & ~(v17 | 7);
  v22 = *(v11 + 80) & 0xF8 | 7;
  v23 = (v20 + v22 + v21) & ~v22;
  v24 = (*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + 8;
  v26 = v24 + 9;
  if (v12)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = v23 + v27;
  v29 = a3 >= v16;
  v30 = a3 - v16;
  if (v30 == 0 || !v29)
  {
LABEL_27:
    if (v16 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v28 <= 3)
  {
    v31 = ((v30 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v31))
    {
      v6 = 4;
      if (v16 < a2)
      {
        goto LABEL_28;
      }

      goto LABEL_16;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 >= 2)
    {
      v6 = v32;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_27;
  }

  v6 = 1;
  if (v16 < a2)
  {
LABEL_28:
    v33 = ~v16 + a2;
    if (v28 < 4)
    {
      v34 = (v33 >> (8 * v28)) + 1;
      if (v28)
      {
        bzero(a1, v28);
        *a1 = v33;
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v33;
      v34 = 1;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *&a1[v28] = v34;
      }

      else
      {
        *&a1[v28] = v34;
      }
    }

    else if (v6)
    {
      a1[v28] = v34;
    }

    return;
  }

LABEL_16:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v28] = 0;
  }

  else if (v6)
  {
    a1[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v35 = ~v18;
  v36 = &a1[v18 + 1];
  v37 = (v36 & v35);
  if (v14 < v15)
  {
    v37 = (&v37[v20 + v22] & ~v22);
    if (v15 < a2)
    {
      if (v27 < 4)
      {
        v38 = ~(-1 << (8 * v27));
      }

      else
      {
        v38 = -1;
      }

      if (!v27)
      {
        return;
      }

      v39 = v38 & (~v15 + a2);
      bzero(v37, v27);
      if (v27 == 1)
      {
        *v37 = v39;
        return;
      }

LABEL_70:
      *v37 = v39;
      return;
    }

    v39 = a2 - v12;
    if (a2 < v12)
    {
      v40 = *(v11 + 56);
      v41 = a2 + 1;

      v40(v37, v41, v12, v10);
      return;
    }

    if (!v25)
    {
      return;
    }

    v45 = v37;
    v46 = v25;
LABEL_69:
    bzero(v45, v46);
    goto LABEL_70;
  }

  if (v14 < a2)
  {
    if (!v20)
    {
      return;
    }

    v39 = a2 - v9;
LABEL_68:
    v45 = (v36 & v35);
    v46 = v20;
    goto LABEL_69;
  }

  v39 = a2 - v9;
  if (a2 >= v9)
  {
    if (!v20)
    {
      return;
    }

    goto LABEL_68;
  }

  if (v8 < 0x7FFFFFFF)
  {
    v47 = (&v37[v19] & 0xFFFFFFFFFFFFFFF8);
    if (((a2 + 1) & 0x80000000) != 0)
    {
      v47[2] = 0;
      v47[3] = 0;
      *v47 = a2 - 0x7FFFFFFF;
      v47[1] = 0;
    }

    else
    {
      v47[3] = a2;
    }
  }

  else
  {
    v42 = *(v7 + 56);
    v43 = v36 & v35;
    v44 = a2 + 1;

    v42(v43, v44);
  }
}

void destroy for TTRBoardReminderCellCompletedButtonConfiguration(uint64_t a1)
{
  if (*(a1 + 32))
  {
  }
}

uint64_t initializeWithCopy for TTRBoardReminderCellCompletedButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v7 = (a2 + 32);
  v6 = *(a2 + 32);
  v8 = v4;
  v9 = v5;
  if (v6)
  {
    v10 = *(a2 + 40);
    *(a1 + 32) = v6;
    *(a1 + 40) = v10;
  }

  else
  {
    *(a1 + 32) = *v7;
  }

  return a1;
}

uint64_t assignWithCopy for TTRBoardReminderCellCompletedButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  v6 = v5;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  v10 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v10)
    {
      v12 = *(a2 + 40);
      *(a1 + 32) = v10;
      *(a1 + 40) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 40);
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRBoardReminderCellCompletedButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v6)
    {
      v8 = *(a2 + 40);
      *(a1 + 32) = v6;
      *(a1 + 40) = v8;
      return a1;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = *(a2 + 40);
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellCompletedButtonConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRBoardReminderCellCompletedButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRBoardReminderCellLocationConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellLocationConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRBoardReminderCellLocationConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRBoardReminderCellURLConfiguration.Attachment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = *(a2 + v8);
    *(a1 + v8) = v10;
    v11 = *(a2 + v9);
    *(a1 + v9) = v11;
    v12 = v10;
    v13 = v11;
  }

  return a1;
}

void destroy for TTRBoardReminderCellURLConfiguration.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a1 + *(a2 + 24));
}

uint64_t initializeWithCopy for TTRBoardReminderCellURLConfiguration.Attachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = *(a2 + v8);
  *(a1 + v8) = v10;
  v11 = v9;
  v12 = v10;
  return a1;
}

uint64_t assignWithCopy for TTRBoardReminderCellURLConfiguration.Attachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

uint64_t initializeWithTake for TTRBoardReminderCellURLConfiguration.Attachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for TTRBoardReminderCellURLConfiguration.Attachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_21D358768()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D35881C(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  return result;
}

void *sub_21D358874(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = *(a2 + 16);
  v7 = (a2 + 24);
  v6 = *(a2 + 24);
  v8 = v4;
  sub_21DBF8E0C();
  if (v6)
  {
    v9 = *(a2 + 32);
    a1[3] = v6;
    a1[4] = v9;
  }

  else
  {
    *(a1 + 3) = *v7;
  }

  return a1;
}

uint64_t sub_21D3588EC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  v7 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v7)
    {
      v9 = *(a2 + 32);
      *(a1 + 24) = v7;
      *(a1 + 32) = v9;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = *(a2 + 32);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;

  return a1;
}

uint64_t sub_21D3589A8(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  v6 = a2[3];
  if (!*(a1 + 24))
  {
    if (v6)
    {
      v8 = a2[4];
      *(a1 + 24) = v6;
      *(a1 + 32) = v8;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 3);
    return a1;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = a2[4];
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRSectionLite(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRSectionLite(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void destroy for TTRBoardReminderCellShowSubtasksConfiguration(uint64_t a1)
{
  if (*(a1 + 40))
  {
  }
}

uint64_t initializeWithCopy for TTRBoardReminderCellShowSubtasksConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v7 = (a2 + 40);
  v6 = *(a2 + 40);
  v8 = v4;
  v9 = v5;
  if (v6)
  {
    v10 = *(a2 + 48);
    *(a1 + 40) = v6;
    *(a1 + 48) = v10;
  }

  else
  {
    *(a1 + 40) = *v7;
  }

  return a1;
}

uint64_t assignWithCopy for TTRBoardReminderCellShowSubtasksConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  v7 = v6;

  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  *(a1 + 32) = v9;
  v10 = v9;

  v11 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v11)
    {
      v13 = *(a2 + 48);
      *(a1 + 40) = v11;
      *(a1 + 48) = v13;

      return a1;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v12 = *(a2 + 48);
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;

  return a1;
}

uint64_t assignWithTake for TTRBoardReminderCellShowSubtasksConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v7 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v7;
      return a1;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellShowSubtasksConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRBoardReminderCellShowSubtasksConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void destroy for TTRBoardReminderCellSubtaskCountConfiguration(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }
}

void *initializeWithCopy for TTRBoardReminderCellSubtaskCountConfiguration(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[2];
  a1[2] = v5;
  v7 = a2 + 3;
  v6 = a2[3];
  sub_21DBF8E0C();
  v8 = v5;
  if (v6)
  {
    v9 = a2[4];
    a1[3] = v6;
    a1[4] = v9;
  }

  else
  {
    *(a1 + 3) = *v7;
  }

  return a1;
}

void *assignWithCopy for TTRBoardReminderCellSubtaskCountConfiguration(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;

      return a1;
    }

LABEL_7:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

  return a1;
}

uint64_t assignWithTake for TTRBoardReminderCellSubtaskCountConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return a1;
}

uint64_t destroy for TTRBoardReminderCellSuggestedSectionConfiguration(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRBoardReminderCellSuggestedSectionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = (a2 + 16);
  v5 = *(a2 + 16);
  sub_21DBF8E0C();
  if (v5)
  {
    v7 = *(a2 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
  }

  else
  {
    *(a1 + 16) = *v6;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for TTRBoardReminderCellSuggestedSectionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v4;
      *(a1 + 24) = v6;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRBoardReminderCellSuggestedSectionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellSuggestedSectionConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRBoardReminderCellSuggestedSectionConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void destroy for TTRBoardReminderCellInfoButtonConfiguration(uint64_t a1)
{
  if (*(a1 + 24))
  {
  }
}

uint64_t initializeWithCopy for TTRBoardReminderCellInfoButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v7 = (a2 + 24);
  v6 = *(a2 + 24);
  v8 = v4;
  v9 = v5;
  if (v6)
  {
    v10 = *(a2 + 32);
    *(a1 + 24) = v6;
    *(a1 + 32) = v10;
  }

  else
  {
    *(a1 + 24) = *v7;
  }

  return a1;
}

uint64_t assignWithCopy for TTRBoardReminderCellInfoButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  v6 = v5;

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  *(a1 + 16) = v8;
  v9 = v8;

  v10 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v10)
    {
      v12 = *(a2 + 32);
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 32);
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;

  return a1;
}

uint64_t assignWithTake for TTRBoardReminderCellInfoButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellInfoButtonVisibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D359BDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

Swift::tuple_title_String_image_UIImage_optional __swiftcall TTRLocationQuickPickItem.titleAndImageForMenuItem()()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v2 = sub_21DBF516C();
        v4 = v3;
        if (qword_27CE56870 != -1)
        {
          swift_once();
        }

        v5 = qword_27CE5C590;
        v6 = qword_27CE5C590;
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v2 = sub_21DBF516C();
        v4 = v12;
        if (qword_27CE56878 != -1)
        {
          swift_once();
        }

        v5 = qword_27CE5C598;
        v13 = qword_27CE5C598;
      }
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v2 = sub_21DBF516C();
      v4 = v8;
      if (qword_27CE56860 != -1)
      {
        swift_once();
      }

      v5 = qword_27CE5C588;
      v9 = qword_27CE5C588;
    }

    goto LABEL_30;
  }

  if (v1 == 3)
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_19:
      v2 = sub_21DBF516C();
      v4 = v10;
      if (qword_280D1AC40 != -1)
      {
        swift_once();
      }

      v5 = qword_280D1AC48;
      v11 = qword_280D1AC48;
      goto LABEL_30;
    }

LABEL_31:
    swift_once();
    goto LABEL_19;
  }

  if (v1 == 4)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v4 = v14;
  v15 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

LABEL_30:
  v16 = v2;
  v17 = v4;
  v18 = v5;
  result.image.value.super.isa = v18;
  result.title._object = v17;
  result.title._countAndFlagsBits = v16;
  result.image.is_nil = v7;
  return result;
}

void sub_21D35A1C8(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, __n128 a5)
{
  v53 = a1;
  v54 = a2;
  v7 = (*v5)[5];
  v61 = vdupq_lane_s64(v7.i64[0], 0);
  v62 = v61;
  v58 = v7;
  v59 = a5;
  v60 = vdupq_laneq_s64(v7, 1);
  v63 = v60;
  v8 = type metadata accessor for TTRNormalizedItemLocation();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  v62 = v61;
  v63 = v60;
  v10 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = sub_21DBFBA8C();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v48 - v14;
  v62 = v61;
  v63 = v60;
  v15 = type metadata accessor for TTRTreeViewDropDestination();
  v16 = sub_21DBFBA8C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = *(v15 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  if (a3[3] >= 2)
  {
    v61.i64[0] = &v48 - v25;
    v64.val[0] = v58;
    v64.val[1] = v58;
    v59 = v58;
    v26 = &v62;
    vst2q_f64(v26, v64);
    v27 = type metadata accessor for TTRICollectionViewDropProposal();
    (*(v17 + 16))(v19, a3 + *(v27 + 60), v16);
    if ((*(v20 + 48))(v19, 1, v15) == 1)
    {
      (*(v17 + 8))(v19, v16);
      return;
    }

    v60.i64[0] = v5;
    v28 = v58;
    v29 = v61.i64[0];
    (*(v20 + 32))(v61.i64[0], v19, v15);
    v30 = *a3;
    v31 = a3[1];
    v32 = a3[2];
    v34 = v53;
    v33 = v54;
    v58.f64[0] = v28.f64[0];
    sub_21D35A794(v30, v31, v32, v53, v54, *&v28.f64[0], *&v28.f64[1], v57);
    (*(v20 + 16))(v23, v29, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
LABEL_11:
        (*(v55 + 8))(v57, v56);
        goto LABEL_12;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v36 = v50;
      v37 = v49;
      (*(v50 + 32))(v49, v23, v8);
      v38 = sub_21D35AAC4(v37);
      if (v39)
      {
        sub_21D35ACD4(v38, v39, v40, v41);
      }

      (*(v36 + 8))(v37, v8);
      goto LABEL_11;
    }

    v42 = v51;
    v43 = v23;
    v44 = v52;
    (*(v51 + 32))(v12, v43, v52);
    v45 = v33;
    v46 = v57;
    sub_21D35AF44(v34, v45, v57, v12, v62.i64);
    (*(v42 + 8))(v12, v44);
    sub_21D35B5E0(v62.i8);
    _s32AccessibilityInsertAtDescriptionVMa();
    v47 = sub_21DBFBA8C();
    (*(*(v47 - 8) + 8))(&v62, v47);
    (*(v55 + 8))(v46, v56);
LABEL_12:
    (*(v20 + 8))(v61.i64[0], v15);
  }
}

uint64_t sub_21D35A794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a4;
  v34 = a5;
  v14 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  v15 = sub_21DBFBA8C();
  v30 = *(v15 - 8);
  v31 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v32 = *(a6 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  type metadata accessor for TTRICollectionViewDragItemSources();
  if (!sub_21D76AA78())
  {
    goto LABEL_4;
  }

  v35 = a2;
  sub_21DBFA74C();
  swift_getWitnessTable();
  sub_21DBFACEC();
  v24 = *(v14 - 8);
  if ((*(v24 + 48))(v17, 1, v14) == 1)
  {
    (*(v30 + 8))(v17, v31);
LABEL_4:
    v35 = a6;
    v36 = a6;
    v37 = a7;
    v38 = a7;
    v25 = type metadata accessor for TTRNormalizedItemLocation();
    return (*(*(v25 - 8) + 56))(a8, 1, 1, v25);
  }

  v27 = v32;
  (*(v32 + 16))(v20, &v17[*(v14 + 28)], a6);
  (*(v24 + 8))(v17, v14);
  (*(v27 + 32))(v23, v20, a6);
  ObjectType = swift_getObjectType();
  (*(v34 + 56))(v23, ObjectType);
  return (*(v27 + 8))(v23, a6);
}

uint64_t sub_21D35AAC4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*&v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v17[-v5];
  v18.val[0].f64[0] = v3;
  v18.val[0].f64[1] = *v7;
  v18.val[1] = v18.val[0];
  v8 = v17;
  vst2q_f64(v8, v18);
  v9 = type metadata accessor for TTRNormalizedItemLocation();
  (*(v4 + 16))(v6, a1 + *(v9 + 60), COERCE_FLOAT64_T(*&v3));
  v10 = sub_21D35BE44(v6);
  v12 = v11;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = v1[3];
    ObjectType = swift_getObjectType();
    WitnessTable = swift_getWitnessTable();
    (*(v13 + 112))(v1, WitnessTable, v6, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  (*(v4 + 8))(v6, COERCE_FLOAT64_T(*&v3));
  if (v12)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D35ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_21DBF8E0C();
  v9 = sub_21DBFA17C();
  v11 = v10;

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21DC08D20;
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    *(v12 + 48) = a3;
    *(v12 + 56) = a4;
    v13 = qword_280D1AA40;
    sub_21DBF8E0C();
    if (v13 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v9 = sub_21DBFA07C();
    v11 = v14;
  }

  sub_21D35BAA0(v9, v11);
}

uint64_t sub_21D35AF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v74 = a4;
  v75 = a3;
  v71 = a5;
  v72 = a2;
  v6 = *(*v5 + 80);
  v76 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v65 - v9;
  v68 = v5;
  v66 = *(v10 + 88);
  v79 = vdupq_n_s64(v66);
  v80 = vdupq_n_s64(v6);
  v82 = v79;
  v81 = v80;
  v11 = type metadata accessor for TTRNormalizedItemLocation();
  v12 = sub_21DBFBA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = sub_21DBFBA8C();
  v69 = *(v20 - 8);
  v70 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  ObjectType = swift_getObjectType();
  v27 = *(v72 + 80);
  v77 = v22;
  v78 = v25;
  v28 = v22;
  v29 = v74;
  v27(v25, v28, v74, ObjectType);
  (*(v13 + 16))(v15, v75, v12);
  v75 = v16;
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v30 = v76;
    v31 = v73;
LABEL_9:
    v81 = v80;
    v82 = v79;
    v49 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
    TTRNormalizedItemLocationForInsertAt<>.effectiveParentItemID.getter(v49);
    v50 = v68;
    v44 = sub_21D35BE44(v31);
    v45 = v51;
    (*(v30 + 8))(v31, v6);
    v40 = v77;
    v52 = sub_21D35BF44(v77, v50, sub_21D35C2E8);
    if (v53)
    {
      v47 = v52;
      v48 = v53;
      v46 = 0;
      v41 = v78;
LABEL_18:
      v56 = *(v69 + 8);
      v57 = v40;
      v58 = v70;
      v56(v57, v70);
      result = (v56)(v41, v58);
      goto LABEL_19;
    }

    v41 = v78;
    v54 = sub_21D35BF44(v78, v50, sub_21D35C0A8);
    if (v55)
    {
      v47 = v54;
    }

    else
    {
      v47 = 0;
    }

    if (v55)
    {
      v48 = v55;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

LABEL_17:
    v46 = 1;
    goto LABEL_18;
  }

  (*(v75 + 32))(v19, v15, v11);
  v31 = v73;
  v72 = v11;
  TTRNormalizedItemLocation<>.effectiveParentItemID.getter(v11);
  v82 = v79;
  v81 = v80;
  v32 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v33 = v67;
  (TTRNormalizedItemLocationForInsertAt<>.effectiveParentItemID.getter)();
  v34 = sub_21DBFA10C();
  v35 = v76;
  v36 = *(v76 + 8);
  v36(v33, v6);
  result = (v36)(v31, v6);
  if ((v34 & 1) == 0)
  {
    v30 = v35;
    (*(v75 + 8))(v19, v72);
    goto LABEL_9;
  }

  v38 = *(v29 + *(v32 + 56));
  v39 = *&v19[*(v72 + 56)];
  v40 = v77;
  v41 = v78;
  if (v38 == v39)
  {
LABEL_7:
    (*(v75 + 8))(v19);
    v42 = v70;
    v43 = *(v69 + 8);
    v43(v40, v70);
    result = (v43)(v41, v42);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
LABEL_19:
    v59 = v71;
    *v71 = v44;
    v59[1] = v45;
    v59[2] = v46;
    v59[3] = v47;
    v59[4] = v48;
    return result;
  }

  if (!__OFADD__(v39, 1))
  {
    if (v38 != v39 + 1)
    {
      v60 = v72;
      if (v38 < v39)
      {
        v61 = sub_21D35BF44(v77, v68, sub_21D35C2E8);
        if (v62)
        {
          v47 = v61;
          v48 = v62;
          (*(v75 + 8))(v19, v60);
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_18;
        }
      }

      v63 = sub_21D35BF44(v41, v68, sub_21D35C0A8);
      if (v64)
      {
        v47 = v63;
      }

      else
      {
        v47 = 0;
      }

      if (v64)
      {
        v48 = v64;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      (*(v75 + 8))(v19, v60);
      v44 = 0;
      v45 = 0;
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D35B5E0(__int128 *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 16);
    *&v20 = *(a1 + 3);
    *(&v20 + 1) = v2;
    if (v3)
    {
      v19 = *a1;
      v4 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        v5 = v19;
LABEL_10:
        sub_21D35BFD0(&v20, v18);
        sub_21D35C02C(&v19, v18);
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21DC08D20;
        v10 = MEMORY[0x277D837D0];
        *(v9 + 56) = MEMORY[0x277D837D0];
        v11 = sub_21D17A884();
        *(v9 + 64) = v11;
        *(v9 + 32) = v5;
        *(v9 + 40) = v4;
        *(v9 + 96) = v10;
        *(v9 + 104) = v11;
        *(v9 + 72) = v20;
        goto LABEL_17;
      }

      v12 = qword_280D1BAA8;
      sub_21DBF8E0C();
      if (v12 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = *a1;
      v4 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        v5 = v19;
        goto LABEL_10;
      }

      v13 = qword_280D1BAA8;
      sub_21DBF8E0C();
      if (v13 == -1)
      {
LABEL_16:
        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_21DC08D00;
        *(v14 + 56) = MEMORY[0x277D837D0];
        *(v14 + 64) = sub_21D17A884();
        *(v14 + 32) = v20;
LABEL_17:
        v15 = sub_21DBFA17C();
        v8 = v16;

        v6 = v15;
        goto LABEL_18;
      }
    }

    swift_once();
    goto LABEL_16;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
LABEL_18:
  sub_21D35BAA0(v6, v8);
}

uint64_t sub_21D35B9DC(char a1)
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1 & 1);
  return sub_21DBFC82C();
}

uint64_t sub_21D35BA58()
{
  sub_21DBFC7DC();
  sub_21D35B9B4(v2, *v0);
  return sub_21DBFC82C();
}

uint64_t sub_21D35BAA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF9D2C();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF9D5C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CE468();
  v11 = sub_21DBFB12C();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_21D35C09C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);

  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_21D35BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  if (!v5 || (*(a1 + 32) == a2 ? (v6 = v5 == a3) : (v6 = 0), !v6 && (v7 = a1, v8 = sub_21DBFC64C(), a1 = v7, (v8 & 1) == 0)))
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;

    v9 = *MEMORY[0x277D76438];
    sub_21DBF8E0C();
    v10 = sub_21DBFA12C();
    UIAccessibilityPostNotification(v9, v10);
  }
}

uint64_t sub_21D35BE44(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  v6 = (*(v3 + 104))(v1, WitnessTable, a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_21D35BF44(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  sub_21DBFBA8C();
  sub_21D10AA90(a3, a2, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v5, &v7);
  return v7;
}

uint64_t sub_21D35C02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D35C0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21D35BE44(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t destroy for TTRIReminderDetailViewConfiguration.NavigationConfiguration()
{
}

uint64_t sub_21D35C114(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D35C15C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D35C1D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderViewModelComputedProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderViewModelComputedProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id TTRReminderLocationOptions.homeLocation.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRReminderLocationOptions.workLocation.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void TTRReminderLocationOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t TTRReminderLocationOptions.init(homeLocation:workLocation:canUseVehicleEvent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void destroy for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for TTRReminderLocationOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRReminderLocationOptions(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

RemindersUICore::TTRReminderCellHashtagSuggestion __swiftcall TTRReminderCellHashtagSuggestion.init(label:rangeToReplace:)(Swift::String label, __C::_NSRange rangeToReplace)
{
  *v2 = label;
  *(v2 + 16) = rangeToReplace;
  result.rangeToReplace = rangeToReplace;
  result.label = label;
  return result;
}

uint64_t TTRReminderCellHashtagSuggestion.label.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

id TTRReminderCellHashtagSuggestion.valueText.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v8 = sub_21DBFA23C();
  v9 = v3;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v1, v2);

  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = sub_21DBFA12C();

  v6 = [v4 initWithString_];

  return v6;
}

void TTRReminderCellHashtagSuggestion.iconImageInfo.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL static TTRReminderCellHashtagSuggestion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_21DBFC64C();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

id sub_21D35C71C()
{
  v1 = *v0;
  v2 = v0[1];
  v8 = sub_21DBFA23C();
  v9 = v3;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v1, v2);

  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = sub_21DBFA12C();

  v6 = [v4 initWithString_];

  return v6;
}

void sub_21D35C7CC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL _s15RemindersUICore32TTRReminderCellHashtagSuggestionV13contentsEqualySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_21DBFC64C();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t static TTRReminderCellHashtagSuggestion.identitiesEqual(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC3TipV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

unint64_t sub_21D35C8AC(uint64_t a1)
{
  result = sub_21D35C8D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21D35C8D4()
{
  result = qword_27CE5ABD8;
  if (!qword_27CE5ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5ABD8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRReminderCellHashtagSuggestion(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellHashtagSuggestion(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for TTRReminderCellHashtagSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t static TTRIOptionMenuCellContentState.Option.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29[0] = v29 - v9;
  v29[1] = a3;
  v29[2] = a4;
  v10 = type metadata accessor for TTRIOptionMenuCellContentState.Option();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v29 - v16;
  v19 = *(v18 + 48);
  v30 = v11;
  v20 = *(v11 + 16);
  v20(v29 - v16, v31, v10, v15);
  (v20)(&v17[v19], a2, v10);
  v31 = v8;
  v21 = *(v8 + 48);
  if (v21(v17, 1, v7) == 1)
  {
    v22 = 1;
    if (v21(&v17[v19], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v20)(v32, v17, v10);
    if (v21(&v17[v19], 1, v7) != 1)
    {
      v23 = v31;
      v24 = &v17[v19];
      v25 = v29[0];
      (*(v31 + 32))(v29[0], v24, v7);
      v26 = v32;
      v22 = static TTRIMenuItem.== infix(_:_:)();
      v27 = *(v23 + 8);
      v27(v25, v7);
      v27(v26, v7);
LABEL_8:
      v14 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, v7);
  }

  v22 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v22 & 1;
}

uint64_t TTRIOptionMenuCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRIOptionMenuCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIOptionMenuCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIOptionMenuCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t TTRIOptionMenuCellContentState.ttriAccessibilitySubtitle.getter()
{
  v1 = *(v0 + 88);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIOptionMenuCellContentState.ttriAccessibilitySubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t TTRIOptionMenuCellContentState.menuOptions.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0x1FFFFFFFELL;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  v26 = 0;
  v18 = *(a9 + 48);
  v25[2] = *(a9 + 32);
  v25[3] = v18;
  v19 = *(a9 + 16);
  v25[0] = *a9;
  v25[1] = v19;
  sub_21D0CF7E0(v25, &unk_27CE5EA00);
  v20 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v20;
  *(a9 + 64) = *(a1 + 64);
  v21 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v21;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  v22 = type metadata accessor for TTRIOptionMenuCellContentState();
  result = (*(*(a10 - 8) + 32))(a9 + *(v22 + 48), a7, a10);
  *(a9 + *(v22 + 52)) = a8;
  return result;
}

uint64_t TTRIOptionMenuCellContentState.subtitle.getter()
{
  type metadata accessor for TTRIOptionMenuCellContentState.Option();
  sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  sub_21DBFA48C();

  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D35D2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21[3] = a2;
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v21 - v8);
  v10 = type metadata accessor for TTRIOptionMenuCellContentState.Option();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  (*(v14 + 16))(v21 - v12, a1, v11);
  result = (*(v7 + 48))(v13, 1, v6);
  if (result == 1)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    v16 = (v9 + *(v6 + 44));
    v17 = v16[1];
    v21[1] = v3;
    if (v17)
    {
      v21[0] = *v16;
      v18 = v17;
    }

    else
    {
      v18 = v9[1];
      v21[0] = *v9;
      sub_21DBF8E0C();
    }

    type metadata accessor for TTRIOptionMenuCellContentState();
    sub_21DBF8E0C();
    v19 = sub_21DBFA10C();
    result = (*(v7 + 8))(v9, v6);
    if (v19)
    {
      v20 = v21[0];
    }

    else
    {

      v20 = 0;
      v18 = 0;
    }

    *a3 = v20;
    a3[1] = v18;
  }

  return result;
}

uint64_t static TTRIOptionMenuCellContentState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v60 = *(a1 + 32);
  v61 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v58 = *a1;
  v59 = v5;
  v7 = *(a2 + 48);
  v63[2] = *(a2 + 32);
  v63[3] = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v63[0] = *a2;
  v63[1] = v8;
  v10 = *(a1 + 48);
  v54 = v6;
  v55 = v10;
  v56 = v58;
  v62 = *(a1 + 64);
  v64 = *(a2 + 64);
  v57 = *(a1 + 16);
  v11 = *(&v59 + 1);
  v12 = v62;
  *&v53[7] = v63[0];
  *&v53[23] = *(a2 + 16);
  v13 = *(&v8 + 1);
  v14 = *(a2 + 48);
  v51 = v9;
  v52 = v14;
  v15 = v64;
  if (*(&v59 + 1) >> 1 != 0xFFFFFFFFLL || v62 >= 2u)
  {
    v17 = *(a1 + 16);
    v41 = *a1;
    *&v42 = v17;
    *(&v42 + 1) = *(&v59 + 1);
    v18 = *(a1 + 48);
    v43 = *(a1 + 32);
    v44 = v18;
    v45 = v62;
    v40 = v62;
    v38 = v43;
    v39 = v18;
    v36 = v41;
    v37 = v42;
    if (*(&v8 + 1) >> 1 != 0xFFFFFFFFLL || v64 >= 2u)
    {
      v31 = *a2;
      v19 = *(a2 + 16);
      v20 = *(a2 + 48);
      v33 = *(a2 + 32);
      v34 = v20;
      *&v32 = v19;
      *(&v32 + 1) = v13;
      v35 = v64;
      sub_21D1ADB0C(&v58, v29);
      sub_21D1ADB0C(v63, v29);
      sub_21D1ADB0C(&v41, v29);
      v21 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v36, &v31);
      v27[2] = v33;
      v27[3] = v34;
      v28 = v35;
      v27[0] = v31;
      v27[1] = v32;
      sub_21D35D940(v27);
      v29[2] = v38;
      v29[3] = v39;
      v30 = v40;
      v29[0] = v36;
      v29[1] = v37;
      sub_21D35D940(v29);
      v31 = v56;
      *&v32 = v57;
      *(&v32 + 1) = v11;
      v33 = v54;
      v34 = v55;
      v35 = v12;
      sub_21D0CF7E0(&v31, &unk_27CE5EA00);
      if ((v21 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v33 = v43;
    v34 = v44;
    v35 = v45;
    v31 = v41;
    v32 = v42;
    sub_21D1ADB0C(&v58, v29);
    sub_21D1ADB0C(v63, v29);
    sub_21D1ADB0C(&v41, v29);
    sub_21D35D940(&v31);
LABEL_20:
    v41 = v56;
    *&v42 = v57;
    *(&v42 + 1) = v11;
    v43 = v54;
    v44 = v55;
    v45 = v12;
    *v46 = *v53;
    *&v46[15] = *&v53[15];
    v47 = v13;
    v49 = v52;
    v48 = v51;
    v50 = v15;
    sub_21D0CF7E0(&v41, qword_27CE5ABE0);
    goto LABEL_21;
  }

  if (*(&v8 + 1) >> 1 != 0xFFFFFFFFLL || v64 >= 2u)
  {
    sub_21D1ADB0C(&v58, &v41);
    sub_21D1ADB0C(v63, &v41);
    goto LABEL_20;
  }

  v41 = *a1;
  *&v42 = *(a1 + 16);
  *(&v42 + 1) = *(&v59 + 1);
  v16 = *(a1 + 48);
  v43 = *(a1 + 32);
  v44 = v16;
  v45 = v62;
  sub_21D1ADB0C(&v58, &v36);
  sub_21D1ADB0C(v63, &v36);
  sub_21D0CF7E0(&v41, &unk_27CE5EA00);
LABEL_10:
  if ((*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = *(a1 + 96);
  v23 = *(a2 + 96);
  if (v22)
  {
    if (!v23 || (*(a1 + 88) != *(a2 + 88) || v22 != v23) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v23)
  {
    goto LABEL_21;
  }

  type metadata accessor for TTRIOptionMenuCellContentState.Option();
  swift_getWitnessTable();
  if (sub_21DBFA75C())
  {
    v26 = type metadata accessor for TTRIOptionMenuCellContentState();
    if (sub_21DBFA10C())
    {
      v24 = *(a1 + *(v26 + 52)) ^ *(a2 + *(v26 + 52)) ^ 1;
      return v24 & 1;
    }
  }

LABEL_21:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_21D35D9A0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *((*MEMORY[0x277D85000] & **a1) + 0xF8));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D35DA5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *((*MEMORY[0x277D85000] & **a2) + 0xF8));
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRIOptionMenuCellContent.action.getter()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0xF8));
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRIOptionMenuCellContent.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0xF8));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

uint64_t sub_21D35DCB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = (*a1 + *((*MEMORY[0x277D85000] & **a1) + 0x100));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_21D36301C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_21D0D0E78(v6);
}

uint64_t sub_21D35DD80(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_21D362FF4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + *((*MEMORY[0x277D85000] & **a2) + 0x100));
  swift_beginAccess();
  v11 = *v10;
  *v10 = v9;
  v10[1] = v8;
  sub_21D0D0E78(v5);
  return sub_21D0D0E88(v11);
}

uint64_t TTRIOptionMenuCellContent.stateChangeBlock.getter()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x100));
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRIOptionMenuCellContent.stateChangeBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x100));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

id TTRIOptionMenuCellContent.__allocating_init(state:menuImageProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = sub_21D3617F0(a1, a2, a3);
  swift_unknownObjectRelease();
  v10 = type metadata accessor for TTRIOptionMenuCellContentState();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id TTRIOptionMenuCellContent.init(state:menuImageProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21D3617F0(a1, a2, a3);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for TTRIOptionMenuCellContentState();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

Swift::Void __swiftcall TTRIOptionMenuCellContent.cellDidBecomeSelected()()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0xF8));
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {

    v2(v3);
    sub_21D0D0E88(v2);
  }
}

uint64_t TTRIOptionMenuCellContent.updateCell(_:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21D3618D8;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_16;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D35E378(void *a1, void *a2)
{
  v4 = *MEMORY[0x277D85000];
  v40 = *((*MEMORY[0x277D85000] & *a1) + 0x3A0);
  v5 = sub_21DBFBA8C();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - v6;
  v7 = type metadata accessor for TTRIOptionMenuCellContentState();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = *((*a2 & v4) + 0x78);
  v44 = a2;
  v12 = a2 + v11;
  swift_beginAccess();
  v13 = *(v12 + 3);
  v49 = *(v12 + 2);
  v50 = v13;
  v51 = v12[64];
  v14 = *(v12 + 1);
  v47 = *v12;
  v48 = v14;
  v15 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v16 = *(v15 + 3);
  v54 = *(v15 + 2);
  v55 = v16;
  v56 = v15[64];
  v17 = *(v15 + 1);
  v52 = *v15;
  v53 = v17;
  v57[2] = v54;
  v57[3] = v16;
  v58 = v56;
  v57[0] = v52;
  v57[1] = v17;
  v18 = v47;
  v19 = v48;
  v20 = v49;
  v21 = v50;
  v15[64] = v51;
  *(v15 + 2) = v20;
  *(v15 + 3) = v21;
  *v15 = v18;
  *(v15 + 1) = v19;
  sub_21D1ADB0C(&v47, v45);
  sub_21D1ADB0C(&v52, v45);
  sub_21D0CF7E0(v57, &unk_27CE5EA00);
  v45[2] = v54;
  v45[3] = v55;
  v46 = v56;
  v45[0] = v52;
  v45[1] = v53;
  sub_21DA7EF48(v45);
  sub_21D0CF7E0(&v52, &unk_27CE5EA00);
  v22 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v23 = v22;
  v24 = sub_21DBFA12C();

  [v23 setText_];

  (*(v8 + 16))(v10, v12, v7);
  v25 = TTRIOptionMenuCellContentState.subtitle.getter();
  v27 = v26;
  (*(v8 + 8))(v10, v7);
  sub_21DA7B5A0(v25, v27);
  v29 = *(v12 + 11);
  v28 = *(v12 + 12);
  v30 = (a1 + qword_27CE655D0);
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;
  sub_21DBF8E0C();

  v31 = sub_21DBF8E0C();
  sub_21D35E848(v31);
  v32 = v40;
  v33 = v41;
  v34 = *(v40 - 8);
  (*(v34 + 16))(v41, &v12[*(v7 + 48)], v40);
  (*(v34 + 56))(v33, 0, 1, v32);
  sub_21D3618E0(v33);
  (*(v42 + 8))(v33, v43);
  LODWORD(v34) = v12[*(v7 + 52)];
  v35 = qword_27CE65580;
  swift_beginAccess();
  v36 = *(a1 + v35);
  *(a1 + v35) = v34;
  if (v34 != v36)
  {
    [*(a1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  v37 = *(v44 + *((*MEMORY[0x277D85000] & *v44) + 0x108) + 8);
  v38 = swift_unknownObjectRetain();
  sub_21D361A5C(v38, v37);
  return swift_unknownObjectRelease();
}

uint64_t sub_21D35E848(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x3C8)) = a1;
  sub_21D3608D4();
}

uint64_t sub_21D35E91C()
{
  v1 = MEMORY[0x277D85000];
  sub_21D0D0E88(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xF8)));
  sub_21D0D0E88(*(v0 + *((*v1 & *v0) + 0x100)));

  return swift_unknownObjectRelease();
}

uint64_t sub_21D35E9C4(void *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_21D0D0E88(*(a1 + *((*MEMORY[0x277D85000] & *a1) + 0xF8)));
  sub_21D0D0E88(*(a1 + *((*v2 & *a1) + 0x100)));

  return swift_unknownObjectRelease();
}

uint64_t TTRIOptionMenuCellContent.selected(item:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
  v4 = type metadata accessor for TTRIOptionMenuCellContentState();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_21D0CEB98(a1, v27);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v3);
    (*(v11 + 32))(v14, v10, v3);
    v17 = MEMORY[0x277D85000];
    v18 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v19 = v26;
    v25 = *(v26 + 16);
    v25(v6, &v1[v18], v4);
    (*(v11 + 24))(&v6[*(v4 + 48)], v14, v3);
    sub_21DBE9678(v6);
    v20 = *(v19 + 8);
    v26 = v19 + 8;
    v24 = v20;
    v20(v6, v4);
    v21 = &v1[*((*v17 & *v1) + 0x100)];
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      swift_endAccess();
      v25(v6, &v1[v18], v4);

      v22(v6);
      sub_21D0D0E88(v22);
      v24(v6, v4);
      return (*(v11 + 8))(v14, v3);
    }

    else
    {
      (*(v11 + 8))(v14, v3);
      return swift_endAccess();
    }
  }

  else
  {
    v16(v10, 1, 1, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_21D35EE80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & v3) + 0x3A0);
  v110 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v77 = &v74 - v7;
  v8 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v90 = &v74 - v9;
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v80 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v74 - v13;
  v14 = *((v5 & v3) + 0x3A8);
  v15 = type metadata accessor for TTRIMenuItem();
  v92 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v88 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v16;
  MEMORY[0x28223BE20](v17);
  v115 = &v74 - v18;
  v96 = v14;
  v19 = type metadata accessor for TTRIOptionMenuCellContentState.Option();
  v113 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v102 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v20;
  MEMORY[0x28223BE20](v21);
  v116 = &v74 - v22;
  v118 = 0;
  v119 = MEMORY[0x277D84F90];
  v23 = (v2 + *((v5 & v3) + 0x3B8));
  swift_beginAccess();
  v24 = *v23;
  v114 = v15;
  v91 = v19;
  if (v24)
  {
    v25 = v23[1];
    ObjectType = swift_getObjectType();
    v27 = v4;
    v28 = *(v25 + 8);
    swift_unknownObjectRetain();
    v28(ObjectType, v25);
    v15 = v114;
    v4 = v27;
    v19 = v91;
    swift_unknownObjectRelease();
  }

  v94 = v23;
  v29 = *(v2 + *((*v4 & *v2) + 0x3C8));
  sub_21DBF8E0C();
  v30 = sub_21DBFA6DC();
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v86 = *((*v4 & *v2) + 0x3C0);
    swift_beginAccess();
    v32 = 0;
    v112 = (v113 + 16);
    v108 = (v113 + 32);
    v107 = (v92 + 48);
    v106 = (v92 + 32);
    v101 = (v110 + 16);
    v85 = (v110 + 56);
    v84 = (v104 + 16);
    v83 = (v110 + 48);
    v76 = (v110 + 32);
    v79 = (v110 + 8);
    v95 = (v104 + 8);
    v78 = (v105 + 8);
    v82 = v92 + 16;
    v81 = (v92 + 8);
    v93 = v31;
    v110 = v6;
    v87 = v8;
    v33 = v102;
    v111 = v2;
    v109 = v29;
    while (1)
    {
      v34 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v34)
      {
        (*(v113 + 16))(v116, v29 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v32, v19);
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v75 != 8)
        {
          __break(1u);
          return result;
        }

        v117[0] = result;
        (*v112)(v116, v117, v19);
        swift_unknownObjectRelease();
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      (*v108)(v33, v116, v19);
      if ((*v107)(v33, 1, v15) != 1)
      {
        break;
      }

      if (v118)
      {
        sub_21D0D8CF0(0, &qword_280D0C1F0);
        sub_21DBF8E0C();
        sub_21DBFB58C();
        MEMORY[0x223D42D80]();
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
          v15 = v114;
        }

        sub_21DBFA6CC();
        v93 = v119;

        v33 = v102;
      }

      v118 = MEMORY[0x277D84F90];
LABEL_7:
      v29 = v109;
      v32 = (v32 + 1);
      if (v35 == sub_21DBFA6DC())
      {
        goto LABEL_39;
      }
    }

    v105 = v35;
    v36 = v115;
    v104 = *v106;
    (v104)(v115, v33, v15);
    v37 = *v101;
    v99 = *(v15 + 40);
    v38 = v97;
    v100 = v37;
    v37(v97, &v36[v99], v6);
    (*v85)(v38, 0, 1, v6);
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = *v84;
    v41 = v90;
    (*v84)(v90, v38, v8);
    v40(&v41[v39], v2 + v86, v8);
    v42 = *v83;
    if ((*v83)(v41, 1, v6) == 1)
    {
      v43 = *v95;
      (*v95)(v38, v8);
      if (v42(&v41[v39], 1, v6) == 1)
      {
        v43(v41, v8);
LABEL_22:
        v103 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v44 = v80;
      v40(v80, v41, v8);
      if (v42(&v41[v39], 1, v6) != 1)
      {
        v45 = v77;
        (*v76)(v77, &v41[v39], v6);
        v46 = sub_21DBFA10C();
        v47 = *v79;
        (*v79)(v45, v6);
        v48 = *v95;
        (*v95)(v97, v8);
        v47(v44, v6);
        v48(v41, v8);
        if (v46)
        {
          goto LABEL_22;
        }

LABEL_20:
        v103 = 0;
LABEL_23:
        v49 = v114;
        sub_21D0D8CF0(0, &qword_280D0C1D0);
        v50 = v115;
        v51 = *(v115 + 2);
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = v92;
        v54 = v88;
        (*(v92 + 16))(v88, v50, v49);
        v55 = (*(v53 + 80) + 40) & ~*(v53 + 80);
        v56 = swift_allocObject();
        v57 = v96;
        v56[2] = v110;
        v56[3] = v57;
        v56[4] = v52;
        (v104)(v56 + v55, v54, v49);
        v58 = v51;
        sub_21DBF8E0C();
        v59 = sub_21DBFB77C();
        v60 = v118;
        v61 = v59;
        if (v60)
        {
          MEMORY[0x223D42D80]();
          v62 = v94;
          if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
        }

        else
        {
          MEMORY[0x223D42D80]();
          v62 = v94;
          if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v93 = v119;
        }

        v6 = v110;
        swift_beginAccess();
        if (*v62)
        {
          v63 = v62[1];
          swift_endAccess();
          v64 = swift_getObjectType();
          v117[3] = v6;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v117);
          v66 = v115;
          v100(boxed_opaque_existential_0, &v115[v99], v6);
          v67 = *(v63 + 16);
          swift_unknownObjectRetain();
          v67(v117, v61, v64, v63);

          swift_unknownObjectRelease();
          v15 = v114;
          (*v81)(v66, v114);
          __swift_destroy_boxed_opaque_existential_0(v117);
        }

        else
        {
          v15 = v114;
          (*v81)(v115, v114);
          swift_endAccess();
        }

        v2 = v111;
        v8 = v87;
        v19 = v91;
        v33 = v102;
        v35 = v105;
        goto LABEL_7;
      }

      (*v95)(v97, v8);
      (*v79)(v44, v6);
    }

    (*v78)(v41, TupleTypeMetadata2);
    goto LABEL_20;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_39:

  v32 = MEMORY[0x277D85000];
  if (v118)
  {
    sub_21D0D8CF0(0, &qword_280D0C1F0);
    sub_21DBF8E0C();
    sub_21DBFB58C();
    MEMORY[0x223D42D80]();
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_46:
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  v69 = *(v2 + *((*v32 & *v2) + 0x3D0));
  sub_21D0D8CF0(0, &qword_280D0C1F0);
  v70 = sub_21DBFB58C();
  [v69 setMenu_];

  [v69 setChangesSelectionAsPrimaryAction_];
  [v2 _setPopupMenuButton_];
  if (*v94)
  {
    v71 = v94[1];
    v72 = swift_getObjectType();
    v73 = *(v71 + 24);
    swift_unknownObjectRetain();
    v73(v69, v72, v71);
    swift_unknownObjectRelease();
  }
}

id TTRIOptionMenuTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIOptionMenuTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v39 = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_21DBFB83C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBFB95C();
  MEMORY[0x28223BE20](v15 - 8);
  *&v3[*((v7 & v5) + 0x3B0) + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v4[*((*v6 & *v4) + 0x3B8)];
  *v16 = 0;
  *(v16 + 1) = 0;
  (*(*(*((v7 & v5) + 0x3A0) - 8) + 56))(&v4[*((*v6 & *v4) + 0x3C0)], 1, 1, *((v7 & v5) + 0x3A0));
  v17 = *((*v6 & *v3) + 0x3C8);
  type metadata accessor for TTRIOptionMenuCellContentState.Option();
  *&v3[v17] = sub_21DBFA68C();
  type metadata accessor for TTRIOptionMenuTitlelessPopupButton();
  sub_21DBFB90C();
  (*(v12 + 104))(v14, *MEMORY[0x277D75000], v11);
  sub_21DBFB85C();
  sub_21DBFB82C();
  sub_21DBFB80C();
  sub_21DBF8D6C();
  v18 = sub_21DBF8D5C();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  sub_21DBFB8CC();
  v19 = sub_21DBFB96C();
  v20 = [v19 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setAdjustsFontForContentSizeCategory_];
  }

  [v19 setIsAccessibilityElement_];
  [v19 setShowsMenuAsPrimaryAction_];
  v40 = objc_opt_self();
  v22 = [v40 secondaryLabelColor];
  [v19 setTintColor_];

  *&v4[*((*MEMORY[0x277D85000] & *v4) + 0x3D0)] = v19;
  if (v41)
  {
    v23 = v19;
    v24 = sub_21DBFA12C();
  }

  else
  {
    v25 = v19;
    v24 = 0;
  }

  v46.receiver = v4;
  v46.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v46, sel_initWithStyle_reuseIdentifier_, v43, v24);

  v27 = &v26[qword_27CE65610];
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = *(v27 + 2);
  v31 = *(v27 + 3);
  v32 = *(v27 + 4);
  *v27 = v19;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v33 = v27[40];
  v27[40] = 1;
  v34 = v26;
  v35 = v19;
  v36 = v34;
  sub_21D361B20(v28, v29, v30, v31, v32, v33);
  sub_21D361BB4(v28, v29, v30, v31, v32, v33);
  v44[0] = v28;
  v44[1] = v29;
  v44[2] = v30;
  v44[3] = v31;
  v44[4] = v32;
  v45 = v33;
  sub_21DA7F6B4(v44);
  sub_21D361BB4(v28, v29, v30, v31, v32, v33);
  v37 = sub_21DA6ADA8(*MEMORY[0x277D76840], *MEMORY[0x277D76860], 0, 1);
  sub_21DA7BEA0(v37);
  v44[0] = [v40 secondaryLabelColor];
  sub_21DA7BAF4(v44);

  return v36;
}

char *sub_21D360450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIOptionMenuTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

uint64_t sub_21D3604F0(uint64_t a1)
{
  v28 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v25 = *MEMORY[0x277D85000] & *v1;
  v4 = *((v3 & v2) + 0x3A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v23 - v6;
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v23 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v23 - v11;
  v13 = *((v3 & v2) + 0x3C0);
  swift_beginAccess();
  v14 = *(TupleTypeMetadata2 + 48);
  v27 = v8;
  v15 = *(v8 + 16);
  v15(v12, v1 + v13, v7);
  v15(&v12[v14], v28, v7);
  v28 = v5;
  v16 = *(v5 + 48);
  if (v16(v12, 1, v4) == 1)
  {
    if (v16(&v12[v14], 1, v4) == 1)
    {
      return (*(v27 + 8))(v12, v7);
    }

    goto LABEL_6;
  }

  v15(v29, v12, v7);
  if (v16(&v12[v14], 1, v4) == 1)
  {
    (*(v28 + 8))(v29, v4);
LABEL_6:
    result = (*(v26 + 8))(v12, TupleTypeMetadata2);
    return sub_21D35EE80(result);
  }

  v18 = v28;
  v19 = v24;
  (*(v28 + 32))(v24, &v12[v14], v4);
  v20 = v29;
  v21 = sub_21DBFA10C();
  v22 = *(v18 + 8);
  v22(v19, v4);
  v22(v20, v4);
  result = (*(v27 + 8))(v12, v7);
  if ((v21 & 1) == 0)
  {
    return sub_21D35EE80(result);
  }

  return result;
}

uint64_t sub_21D3608D4()
{
  type metadata accessor for TTRIOptionMenuCellContentState.Option();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v0 = sub_21DBFA75C();

  if ((v0 & 1) == 0)
  {

    return sub_21D35EE80(result);
  }

  return result;
}

double TTRIOptionMenuTableViewCell.sideBySideTitleConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.6;
  *a1 = xmmword_21DC11540;
  *(a1 + 16) = xmmword_21DC11550;
  *(a1 + 32) = 0;
  return result;
}

void sub_21D3609E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-1] - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(type metadata accessor for TTRIMenuItem() + 40);
    v13 = *(a4 - 8);
    v14 = *(v13 + 16);
    v14(v9, a3 + v12, a4);
    (*(v13 + 56))(v9, 0, 1, a4);
    sub_21D3618E0(v9);
    (*(v7 + 8))(v9, v6);
    v15 = v11 + *((*MEMORY[0x277D85000] & *v11) + 0x3B0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      v20[3] = a4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
      v14(boxed_opaque_existential_0, a3 + v12, a4);
      (*(v16 + 8))(v20, ObjectType, v16);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    UIAccessibilityPostNotification(*MEMORY[0x277D76488], v11);
  }
}

uint64_t TTRIOptionMenuTableViewCell.accessibilityLabel.getter()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t (*TTRIOptionMenuTableViewCell.accessibilityLabel.modify(uint64_t *a1))()
{
  *a1 = TTRIOptionMenuTableViewCell.accessibilityLabel.getter();
  a1[1] = v2;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21D360D48(void *a1)
{
  v1 = a1;
  v2 = TTRIOptionMenuTableViewCell.accessibilityUserInputLabels.getter();

  if (v2)
  {
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *TTRIOptionMenuTableViewCell.accessibilityUserInputLabels.getter()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v3 = TTRIOptionMenuTableViewCell.accessibilityLabel.getter();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v2 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_21D210A84((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = v5;
    *(v9 + 5) = v6;
    v23 = v2;
  }

  v10 = [*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x3D0)) titleLabel];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 text];

    if (v12)
    {
      v13 = sub_21DBFA16C();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_21D210A84(0, *(v2 + 2) + 1, 1, v2);
      }

      v17 = *(v2 + 2);
      v16 = *(v2 + 3);
      if (v17 >= v16 >> 1)
      {
        v2 = sub_21D210A84((v16 > 1), v17 + 1, 1, v2);
      }

      *(v2 + 2) = v17 + 1;
      v18 = &v2[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v23 = v2;
    }
  }

  v22.receiver = v0;
  v22.super_class = ObjectType;
  result = objc_msgSendSuper2(&v22, sel_accessibilityUserInputLabels);
  if (result)
  {
    v20 = result;
    v21 = sub_21DBFA5EC();

    sub_21D5623AC(v21);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTRIOptionMenuTableViewCell.accessibilityValue.getter()
{
  v1 = (v0 + qword_27CE655D0);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 || (v1 = (v0 + qword_27CE655C8), swift_beginAccess(), (v2 = v1[1]) != 0))
  {
    v3 = *v1;
    sub_21DBF8E0C();
    v4 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_21D210A84((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x3D0));
  if (([v8 isHidden] & 1) == 0)
  {
    v9 = [v8 titleLabel];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 text];

      if (v11)
      {
        v12 = sub_21DBFA16C();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_21D210A84(0, *(v4 + 2) + 1, 1, v4);
        }

        v16 = *(v4 + 2);
        v15 = *(v4 + 3);
        if (v16 >= v15 >> 1)
        {
          v4 = sub_21D210A84((v15 > 1), v16 + 1, 1, v4);
        }

        *(v4 + 2) = v16 + 1;
        v17 = &v4[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
      }
    }
  }

  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v18 = sub_21DBFA07C();

  return v18;
}

uint64_t (*TTRIOptionMenuTableViewCell.accessibilityValue.modify(uint64_t *a1))()
{
  *a1 = TTRIOptionMenuTableViewCell.accessibilityValue.getter();
  a1[1] = v2;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21D3612E8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id TTRIOptionMenuTableViewCell.accessibilityHint.getter()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x3D0));
  if ([v1 isHidden])
  {
    return 0;
  }

  result = [v1 menu];
  if (result)
  {

    if (qword_27CE571A0 != -1)
    {
      swift_once();
    }

    v3 = qword_27CE66B00;
    sub_21DBF8E0C();
    return v3;
  }

  return result;
}

uint64_t (*TTRIOptionMenuTableViewCell.accessibilityHint.modify(id *a1))()
{
  *a1 = TTRIOptionMenuTableViewCell.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

double sub_21D361488(void *a1)
{
  v1 = a1;
  TTRIOptionMenuTableViewCell.accessibilityActivationPoint.getter();
  v3 = v2;

  return v3;
}

uint64_t (*TTRIOptionMenuTableViewCell.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  [*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x3D0)) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

void sub_21D36157C()
{
  v1 = MEMORY[0x277D85000];
  sub_21D157444(&v0[*((*MEMORY[0x277D85000] & *v0) + 0x3B0)]);
  swift_unknownObjectRelease();
  v2 = *((*v1 & *v0) + 0x3C0);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *&v0[*((*v1 & *v0) + 0x3D0)];
}

void sub_21D3616B4(char *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_21D157444(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x3B0)]);
  swift_unknownObjectRelease();
  v3 = *((*v2 & *a1) + 0x3C0);
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((*v2 & *a1) + 0x3D0)];
}

id sub_21D3617F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = MEMORY[0x277D85000];
  v8 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + *((*v7 & *v3) + 0x100));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v7 & *v3) + 0x108));
  *v10 = a2;
  v10[1] = a3;
  v14 = 0;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v11 = sub_21DBFA1AC();
  return sub_21DBE97E0(a1, &v14, v11, v12);
}

uint64_t sub_21D3618E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  v9 = *((v4 & v3) + 0x3C0);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  sub_21D3604F0(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21D361A5C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x3B8));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  v6 = swift_unknownObjectRelease();
  return sub_21D35EE80(v6);
}

id sub_21D361B20(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21D361B34(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id sub_21D361B34(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  switch(a6)
  {
    case 2:

      return swift_unknownObjectRetain();
    case 1:

      return result;
    case 0:
      v7 = a5;
      sub_21DBF8E0C();

      return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D361BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_21D361BC8(a1, a2, a3, a4, a5, a6);
  }
}

void sub_21D361BC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 == 2)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (a6 != 1)
    {
      if (a6)
      {
        return;
      }

      a1 = a5;
    }
  }
}

uint64_t sub_21D361C44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D361D08(char *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 - ((-113 - v6) | v6) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = &v10[(v6 & 0xF8 ^ 0x1F8) & (v6 + 16)];
  }

  else
  {
    v11 = *(a2 + 24);
    if ((v11 >> 1) > 0x80000000)
    {
      v17 = *(a2 + 48);
      *(a1 + 2) = *(a2 + 32);
      *(a1 + 3) = v17;
      a1[64] = *(a2 + 64);
      v18 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 1) = v18;
    }

    else
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      v27 = *(a2 + 40);
      v28 = *(a2 + 32);
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v29 = *(a2 + 64);
      v30 = a2;
      sub_21D361F04(*a2, v13, v14, v11, v28, v27, v15, v16, v29);
      a2 = v30;
      *v3 = v12;
      *(v3 + 8) = v13;
      *(v3 + 16) = v14;
      *(v3 + 24) = v11;
      *(v3 + 32) = v28;
      *(v3 + 40) = v27;
      *(v3 + 48) = v15;
      *(v3 + 56) = v16;
      *(v3 + 64) = v29;
    }

    v19 = v3 & 0xFFFFFFFFFFFFFFF8;
    *(v19 + 72) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 72);
    *(v19 + 80) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 80);
    v20 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
    v21 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v20[1] = v21[1];
    v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = *v23++;
    *v22++ = v24;
    v25 = *(v5 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v25(v22, v23, v4);
    *(v22 + v7) = *(v23 + v7);
  }

  return v3;
}

id sub_21D361F04(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = result;
  v10 = a9 >> 6;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      return result;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  v11 = a3;
  v12 = v9;
  result = a2;
LABEL_6:

  return result;
}

uint64_t sub_21D361F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if ((v4 >> 1) <= 0x80000000)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v4, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);

  return v6(v7);
}

void sub_21D362050(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = a9 >> 6;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      return;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  a1 = a3;
LABEL_6:
}

uint64_t sub_21D3620C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if ((v5 >> 1) > 0x80000000)
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v12 = *(a2 + 48);
    v11 = *(a2 + 56);
    v28 = a3;
    sub_21D361F04(*a2, v7, v8, v5, v9, v10, v12, v11, *(a2 + 64));
    a3 = v28;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v12;
    *(a1 + 56) = v11;
    *(a1 + 64) = v27;
  }

  v15 = a1 & 0xFFFFFFFFFFFFFFF8;
  *(v15 + 72) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 72);
  *(v15 + 80) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 80);
  v16 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v17 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 16);
  v21 = *(*(v20 - 8) + 16);
  v22 = *(v20 - 8) + 16;
  v23 = *(*(v20 - 8) + 80);
  v24 = (v18 + v23 + 8) & ~v23;
  v25 = (v19 + v23 + 8) & ~v23;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v21(v24, v25, v20);
  *(*(v22 + 48) + v24) = *(*(v22 + 48) + v25);
  return a1;
}

uint64_t sub_21D362268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  v8 = v7 >> 1;
  if ((v6 >> 1) > 0x80000000)
  {
    if (v8 <= 0x80000000)
    {
      v25 = *a2;
      v26 = *(a2 + 8);
      v27 = *(a2 + 16);
      v28 = *(a2 + 32);
      v29 = *(a2 + 40);
      v30 = *(a2 + 48);
      v31 = *(a2 + 56);
      sub_21D361F04(*a2, v26, v27, v7, v28, v29, v30, v31, *(a2 + 64));
      *a1 = v25;
      *(a1 + 8) = v26;
      v3 = a3;
      *(a1 + 16) = v27;
      *(a1 + 24) = v7;
      *(a1 + 32) = v28;
      *(a1 + 40) = v29;
      *(a1 + 48) = v30;
      *(a1 + 56) = v31;
      *(a1 + 64) = v48;
      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    v32 = *(a2 + 16);
    v33 = *(a2 + 32);
    v34 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v33;
    *(a1 + 48) = v34;
    *(a1 + 16) = v32;
    goto LABEL_8;
  }

  if (v8 > 0x80000000)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    goto LABEL_7;
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v14 = *(a2 + 56);
  sub_21D361F04(*a2, v10, v11, v7, v12, v13, v15, v14, *(a2 + 64));
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  *a1 = v9;
  *(a1 + 8) = v10;
  v3 = a3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v7;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v14;
  *(a1 + 64) = v47;
  sub_21D362050(v16, v17, v18, v19, v20, v21, v22, v23, v24);
LABEL_8:
  v35 = a1 & 0xFFFFFFFFFFFFFFF8;
  v36 = a2 & 0xFFFFFFFFFFFFFFF8;
  *(v35 + 72) = *(v36 + 72);
  *(v35 + 80) = *(v36 + 80);
  sub_21DBF8E0C();

  v37 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v36 + 95) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];
  sub_21DBF8E0C();

  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  sub_21DBF8E0C();

  v41 = *(*(v3 + 16) - 8);
  v42 = v41 + 24;
  v43 = *(v41 + 80);
  v44 = (v39 + v43 + 8) & ~v43;
  v45 = (v40 + v43 + 8) & ~v43;
  (*(v41 + 24))(v44, v45);
  *(*(v42 + 40) + v44) = *(*(v42 + 40) + v45);
  return a1;
}

uint64_t sub_21D3624E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 72) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 72);
  v6 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v8 + v12 + 8) & ~v12;
  v14 = (v9 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14);
  *(*(v11 + 32) + v13) = *(*(v11 + 32) + v14);
  return a1;
}

uint64_t sub_21D3625B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  if ((v6 >> 1) > 0x80000000)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 24);
  if ((v7 >> 1) > 0x80000000)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
LABEL_5:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 64);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *a1 = *a2;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v9;
  sub_21D362050(v10, v11, v12, v6, v13, v14, v15, v16, v17);
LABEL_6:
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  v22 = a2 & 0xFFFFFFFFFFFFFFF8;
  *(v21 + 72) = *(v22 + 72);
  *(v21 + 80) = *(v22 + 80);

  v23 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 95) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v23[1] = v24[1];

  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  v27 = *(*(a3 + 16) - 8);
  v28 = v27 + 40;
  v29 = *(v27 + 80);
  v30 = (v25 + v29 + 8) & ~v29;
  v31 = (v26 + v29 + 8) & ~v29;
  (*(v27 + 40))(v30, v31);
  *(*(v28 + 24) + v30) = *(*(v28 + 24) + v31);
  return a1;
}

uint64_t sub_21D362750(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 112) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((v15 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v16 = *(v15 + 80);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21D3628EC(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 112) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 112) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((((((v19 + 95) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v19 + 72) = a2 & 0x7FFFFFFF;
    *(v19 + 80) = 0;
  }

  else
  {
    *(v19 + 80) = a2 - 1;
  }
}

uint64_t sub_21D362C30()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21D362D0C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  *&v0[*((*MEMORY[0x277D85000] & *v0) + 0x3B0) + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v0[*((*v1 & *v0) + 0x3B8)];
  *v4 = 0;
  *(v4 + 1) = 0;
  (*(*(*((v3 & v2) + 0x3A0) - 8) + 56))(&v0[*((*v1 & *v0) + 0x3C0)], 1, 1, *((v3 & v2) + 0x3A0));
  v5 = *((*v1 & *v0) + 0x3C8);
  type metadata accessor for TTRIOptionMenuCellContentState.Option();
  *&v0[v5] = sub_21DBFA68C();
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D362E80()
{
  v1 = MEMORY[0x277D85000];
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  *&v0[*((*MEMORY[0x277D85000] & *v0) + 0x3B0) + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v0[*((*v1 & *v0) + 0x3B8)];
  *v4 = 0;
  *(v4 + 1) = 0;
  (*(*(*((v3 & v2) + 0x3A0) - 8) + 56))(&v0[*((*v1 & *v0) + 0x3C0)], 1, 1, *((v3 & v2) + 0x3A0));
  v5 = *((*v1 & *v0) + 0x3C8);
  type metadata accessor for TTRIOptionMenuCellContentState.Option();
  *&v0[v5] = sub_21DBFA68C();
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D363044(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for TTRIMenuItem() - 8);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  sub_21D3609E4(a1, v5, v6, v3);
}

uint64_t TTRHashtagEditorModuleState.userCreatedNewLabels.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF78CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRHashtagEditorModuleState.userCreatedNewLabels.setter(uint64_t a1)
{
  v3 = sub_21DBF78CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t initializeBufferWithCopyOfBuffer for TTRHashtagEditorModuleState(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for TTRHashtagEditorModuleState(uint64_t a1)
{
  v2 = sub_21DBF78CC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for TTRHashtagEditorModuleState(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for TTRHashtagEditorModuleState(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for TTRHashtagEditorModuleState(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for TTRHashtagEditorModuleState(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF78CC();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for TTRHashtagEditorModuleState()
{
  result = qword_27CE5ADE8;
  if (!qword_27CE5ADE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D3634A4()
{
  result = sub_21DBF78CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_21D363530(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_21DBFBD0C();
    }

    else
    {
      v3 = sub_21DBFBCCC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_21D3657CC(v38, v39, v40, v1, &qword_280D0C348);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_21DBFA16C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21D18E678((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
          v6 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_21D15746C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_21D15746C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_21D15746C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_21D3638A8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5ADF8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5ADF8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D363970()
{
  v1 = v0;
  v60 = sub_21DBF6C1C();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF78CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52[0] = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v52 - v7;
  MEMORY[0x28223BE20](v9);
  v54 = v52 - v10;
  MEMORY[0x28223BE20](v11);
  v55 = v52 - v12;
  MEMORY[0x28223BE20](v13);
  v56 = v52 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v52 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v52 - v19;
  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState;
  swift_beginAccess();
  v22 = *(v4 + 16);
  v53 = v21;
  v22(v20, v1 + v21, v3);
  v23 = sub_21DBF786C();
  v61 = v22;
  v62 = v4 + 16;
  if ((v23 & 1) == 0)
  {
    if (qword_27CE56628 != -1)
    {
      swift_once();
    }

    v24 = sub_21DBF84BC();
    __swift_project_value_buffer(v24, qword_27CE5ADF8);
    v22(v17, v20, v3);
    v25 = sub_21DBF84AC();
    v26 = sub_21DBFAE9C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = *(sub_21DBF785C() + 16);

      (*(v4 + 8))(v17, v3);
      *(v27 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v25, v26, "TTRIHashtagEditorPresenter: restore previous user created labels {count: %ld}", v27, 0xCu);
      MEMORY[0x223D46520](v27, -1, -1);
    }

    else
    {
      (*(v4 + 8))(v17, v3);
    }

    v22 = v61;
  }

  v29 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_interactor);
  sub_21D365FBC();
  v30 = v54;
  sub_21DBF784C();
  v52[1] = v29;
  v31 = [*(v29 + 32) hashtagContext];
  v57 = v20;
  if (v31)
  {
    v32 = v31;
    v33 = [v31 hashtags];

    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D365CC4();
    v34 = sub_21DBFAAAC();

    v63 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148);
    sub_21D365D2C();
    v35 = v52[0];
    sub_21DBF789C();
    sub_21DBF782C();
    v36 = *(v4 + 8);
    v36(v35, v3);
    v36(v30, v3);
    v37 = *(v4 + 32);
    v37(v30, v8, v3);
  }

  else
  {
    v37 = *(v4 + 32);
  }

  v38 = v55;
  v37(v55, v30, v3);
  v22(v8, v1 + v53, v3);
  v39 = v56;
  sub_21DBF782C();
  v40 = *(v4 + 8);
  v40(v8, v3);
  v40(v38, v3);
  v41 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_hashtagLabelCollection;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v41, v39, v3);
  swift_endAccess();
  v42 = off_282EB2EA0;
  type metadata accessor for TTRHashtagEditorInteractor();
  v43 = v42();
  v61(v8, v1 + v41, v3);
  sub_21D363530(v43);

  sub_21DBF783C();

  v40(v8, v3);
  v44 = v59;
  sub_21DBF6BDC();

  v45 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
  swift_beginAccess();
  v46 = v58;
  v47 = *(v58 + 40);
  v48 = v60;
  v47(v1 + v45, v44, v60);
  swift_endAccess();
  (*(v46 + 16))(v44, v1 + v45, v48);
  v49 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_initialSelectedHashtagLabels;
  swift_beginAccess();
  v47(v1 + v49, v44, v48);
  swift_endAccess();
  v50._object = 0x800000021DC4B070;
  v50._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v50);
  _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0();
  return (v40)(v57, v3);
}

uint64_t sub_21D36407C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[6] = 0;
  v30[7] = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30[2] = a1;
  v30[3] = a2;
  v30[4] = 0;
  v30[5] = v10;
  sub_21DBF8E0C();
  v11 = sub_21DBFA30C();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = (v7 + 8);
    do
    {
      sub_21DBF4C2C();
      v17 = sub_21DBF4BFC();
      (*v15)(v9, v6);
      if (v17)
      {
        MEMORY[0x223D42A90](v13, v14);
      }

      v13 = sub_21DBFA30C();
      v14 = v16;
    }

    while (v16);
  }

  v18 = sub_21D97EC88(75);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if ((a3 & 1) == 0)
  {
    if (!sub_21D364CF4(a1, a2) || !((v18 ^ v20) >> 14))
    {
      goto LABEL_14;
    }

LABEL_13:
    v25 = MEMORY[0x223D429B0](v18, v20, v22, v24);
    v27 = v26;

    sub_21D364E44(v25, v27);

    return 0;
  }

  if ((v18 ^ v20) >= 0x4000)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (sub_21D365AA0(v18, v20, v22, v24, a1, a2))
  {

    return 0;
  }

  else
  {
    v29 = MEMORY[0x223D429B0](v18, v20, v22, v24);

    return v29;
  }
}

void sub_21D36430C(void (*a1)(char *), uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v38 = a3;
  v7 = type metadata accessor for TTRHashtagEditorModuleState();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF6C1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56628 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE5ADF8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v15 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
  swift_beginAccess();
  (*(v11 + 16))(v13, v4 + v15, v10);
  v16 = (*(v11 + 88))(v13, v10);
  if (v16 != *MEMORY[0x277D45378])
  {
    if (v16 == *MEMORY[0x277D45398] || v16 == *MEMORY[0x277D45380])
    {
      v27 = sub_21DBF84AC();
      v28 = sub_21DBFAECC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_21D0C9000, v27, v28, "TTRIHashtagEditorPresenter: unexpected selectedHashtagLabels type", v29, 2u);
        MEMORY[0x223D46520](v29, -1, -1);
      }

      v30 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState;
      swift_beginAccess();
      sub_21D365D90(v5 + v30, v9, type metadata accessor for TTRHashtagEditorModuleState);
      a1(v9);
      sub_21D365C68(v9);
      v25 = 0;
      goto LABEL_16;
    }

LABEL_20:
    v34 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v34);
    sub_21DAEAB00("unknown selectedHashtagLabels", 29, 2);
    __break(1u);
    return;
  }

  (*(v11 + 96))(v13, v10);
  v17 = *v13;

  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50) + 64);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v18 = objc_opt_self();
  v19 = sub_21DBFA12C();

  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21D365C60;
  *(v21 + 24) = v20;
  v43 = sub_21D0E6070;
  v44 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_21D0E6204;
  v42 = &block_descriptor_17;
  v22 = _Block_copy(&aBlock);

  sub_21DBF8E0C();

  [v18 withActionName:v19 block:v22];

  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
    goto LABEL_20;
  }

  v23 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState;
  swift_beginAccess();
  sub_21D365D90(v5 + v23, v9, type metadata accessor for TTRHashtagEditorModuleState);
  v38(v17, v9);

  sub_21D365C68(v9);
  v24 = sub_21DBF6C0C();
  (*(*(v24 - 8) + 8))(&v13[v36], v24);
  v25 = sub_21D365C60;
LABEL_16:
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_savesOnCommit) == 1)
  {
    v31 = [*(*(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_interactor) + 32) saveRequest];
    sub_21D0D8CF0(0, &qword_280D1B900);
    v32 = sub_21DBFB12C();
    v43 = sub_21D3663A4;
    v44 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_21D11E5E4;
    v42 = &block_descriptor_8;
    v33 = _Block_copy(&aBlock);
    [v31 saveWithQueue:v32 completion:v33];
    _Block_release(v33);
  }

  sub_21D0D0E88(v25);
}

uint64_t sub_21D364A14(uint64_t a1, uint64_t a2)
{

  TTRReminderEditor.updateHashtags(toMatchLabels:)(a2);
}

uint64_t sub_21D364A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v20[-v15];
  v17 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability____lazy_storage___newHashtagCommittingCharacters;
  swift_beginAccess();
  sub_21D365B18(v2 + v17, v16);
  if ((*(v5 + 48))(v16, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v16, v4);
  }

  sub_21D365B88(v16);
  sub_21DBF4C5C();
  sub_21DBF4BCC();
  sub_21DBF4C6C();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  (*(v5 + 16))(v13, a1, v4);
  (*(v5 + 56))(v13, 0, 1, v4);
  swift_beginAccess();
  sub_21D365BF0(v13, v2 + v17);
  return swift_endAccess();
}

BOOL sub_21D364CF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DBF4CAC();
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  v14[0] = a1;
  v14[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v14[2] = 0;
  v14[3] = v8;
  v9 = (v5 + 8);
  sub_21DBF8E0C();
  do
  {
    sub_21DBFA30C();
    v11 = v10;
    if (!v10)
    {
      break;
    }

    sub_21D364A68(v7);
    v12 = sub_21DBF4BFC();

    (*v9)(v7, v4);
  }

  while ((v12 & 1) == 0);

  return v11 != 0;
}

void sub_21D364E44(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v42 = sub_21DBF6C1C();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_21DBF78CC();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = HIBYTE(a2) & 0xF;
  v46 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v41 = v17;
    v37 = v8;
    v38 = v11;
    v39 = v6;
    v21 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_hashtagLabelCollection;
    swift_beginAccess();
    v22 = v45;
    v44 = *(v45 + 16);
    v44(v19, v3 + v21, v12);
    v43 = a1;
    v23 = sub_21DBF788C();
    v24 = *(v22 + 8);
    v24(v19, v12);
    if ((v23 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_21DC08D00;
      *(v25 + 32) = v43;
      *(v25 + 40) = v46;
      sub_21DBF8E0C();
      sub_21DBF784C();
      v44(v14, v3 + v21, v12);
      v26 = v41;
      sub_21DBF782C();
      v24(v14, v12);
      swift_beginAccess();
      v40 = v24;
      v45 = *(v45 + 40);
      (v45)(v3 + v21, v26, v12);
      swift_endAccess();
      v27 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState;
      swift_beginAccess();
      v44(v14, v3 + v27, v12);
      sub_21DBF782C();
      v40(v14, v12);
      v40(v19, v12);
      swift_beginAccess();
      (v45)(v3 + v27, v41, v12);
      v24 = v40;
      swift_endAccess();
    }

    v44(v19, v3 + v21, v12);
    sub_21DBF781C();
    v29 = v28;
    v24(v19, v12);
    if (v29)
    {
      v30 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
      swift_beginAccess();
      v31 = v39;
      v32 = v37;
      v33 = v42;
      (*(v39 + 16))(v37, v3 + v30, v42);
      v34 = v38;
      sub_21DBF6B7C();

      (*(v31 + 8))(v32, v33);
      swift_beginAccess();
      (*(v31 + 40))(v3 + v30, v34, v33);
      swift_endAccess();
    }

    v35._object = 0x800000021DC4B070;
    v35._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v35);
  }
}

uint64_t sub_21D36534C()
{
  sub_21D365C68(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState);
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_initialSelectedHashtagLabels;
  v2 = sub_21DBF6C1C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_hashtagLabelCollection;
  v5 = sub_21DBF78CC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels, v2);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater));
  swift_unknownObjectRelease();

  sub_21D365B88(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability____lazy_storage___newHashtagCommittingCharacters);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRHashtagEditorPresenterCapability()
{
  result = qword_27CE5AE30;
  if (!qword_27CE5AE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D365500()
{
  sub_21DBF78CC();
  if (v0 <= 0x3F)
  {
    sub_21DBF6C1C();
    if (v1 <= 0x3F)
    {
      sub_21D365634();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21D365634()
{
  if (!qword_27CE5AE40)
  {
    sub_21DBF4CAC();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5AE40);
    }
  }
}

void sub_21D36568C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
  if (v1)
  {

    v1(v2);

    sub_21D0D0E88(v1);
  }
}

uint64_t sub_21D365708@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
    return sub_21D365D90(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for TTRRecurrenceRuleModel);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_21D3657CC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223D44550](a1, a2, v9);
      sub_21D0D8CF0(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_21D0D8CF0(0, a5);
    if (sub_21DBFBD5C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_21DBFBD6C();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_21DBFB62C();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_21DBFB63C();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_21D3659F8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21D365A4C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21D365AA0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_21DBFC5AC() & 1;
  }
}

uint64_t sub_21D365B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D365B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D365BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D365C68(uint64_t a1)
{
  v2 = type metadata accessor for TTRHashtagEditorModuleState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D365CC4()
{
  result = qword_280D0C340;
  if (!qword_280D0C340)
  {
    sub_21D0D8CF0(255, &qword_280D0C348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C340);
  }

  return result;
}

unint64_t sub_21D365D2C()
{
  result = qword_280D0C370;
  if (!qword_280D0C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C370);
  }

  return result;
}

uint64_t sub_21D365D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D365E00()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5AE68);
  v1 = __swift_project_value_buffer(v0, qword_27CE5AE68);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_21D365EC8(void *a1, void *a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = a1;
  v2[5] = a2;
  v5 = type metadata accessor for TTRBasicUndoContext();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v13[3] = v5;
  v13[4] = &protocol witness table for TTRBasicUndoContext;
  v13[0] = v6;
  sub_21D1826C4(v13, v12);
  type metadata accessor for TTRReminderEditor();
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 16) = a1;
  sub_21D1826C4(v12, v7 + 24);
  *(v7 + 64) = 0;
  v8 = a1;
  v9 = a2;
  v10 = [v8 fetchedCurrentDueDateDeltaAlert];
  sub_21D311700(v13);
  sub_21D311700(v12);
  *(v7 + 72) = v10;
  v2[6] = v7;
  return v2;
}

char *sub_21D365FBC()
{
  v1 = sub_21DBF6AEC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6AFC();
  v5 = *(v0 + 32);
  v6 = [v5 saveRequest];
  v7 = [v6 store];

  (*(v2 + 104))(v4, *MEMORY[0x277D45328], v1);
  v8 = sub_21DBF6ADC();
  (*(v2 + 8))(v4, v1);

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v9 = sub_21DBFBD7C();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_3:
  v23 = MEMORY[0x277D84F90];
  result = sub_21D18E678(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v23;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 name];
      v16 = sub_21DBFA16C();
      v18 = v17;

      v23 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21D18E678((v19 > 1), v20 + 1, 1);
        v12 = v23;
      }

      ++v11;
      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v9 != v11);

    return v12;
  }

  __break(1u);
  return result;
}

void sub_21D3663A4(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27CE56630 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE5AE68);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Error saving reminder: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return;
    }

    v15 = a1;
  }

  else
  {
    if (qword_27CE56630 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5AE68);
    oslog = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v13, "Reminder saved!", v14, 2u);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v15 = oslog;
  }
}

uint64_t sub_21D366638()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D3666AC()
{
  v1 = [*(v0 + 32) hashtags];
  sub_21D366710();
  sub_21D365CC4();
  v2 = sub_21DBFAAAC();

  return v2;
}

unint64_t sub_21D366710()
{
  result = qword_280D0C348;
  if (!qword_280D0C348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C348);
  }

  return result;
}

uint64_t TTRIButtonCellContentState.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIButtonCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static TTRIButtonCellContentState.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21D36681C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE5AE80);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D3668BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE5AE80);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21D366A24@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE5AE88);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D366AC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE5AE88);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21D366BAC(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21D366C34(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRIButtonCellContent.init(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + qword_27CE5AE80);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + qword_27CE5AE88);
  *v5 = 0;
  v5[1] = 0;
  v6 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v6 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v6 & *v1) + 0x90)) = 0;
  v7 = (v1 + *((*v6 & *v1) + 0x78));
  *v7 = v2;
  v7[1] = v3;
  *(v1 + *((*v6 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v6 & *v1) + 0x88));
  *v8 = 0x61426E6F74747542;
  v8[1] = 0xEF6C6C6543656764;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE90);
  return objc_msgSendSuper2(&v10, sel_init);
}

void TTRIButtonCellContent.updateCell(_:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15RemindersUICore23TTRIButtonCellTableCell_button);
  swift_beginAccess();
  sub_21DBF8E0C();
  v2 = sub_21DBFA12C();

  [v1 setTitle:v2 forState:0];

  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277D76918];
    v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 fontDescriptorWithDesign_];

      if (v8)
      {
        v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
        if (v9)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [objc_opt_self() preferredFontForTextStyle_];
LABEL_8:

    [v4 setFont_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setNumberOfLines_];
  }
}

void sub_21D3670E4(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = a1;
  }

  v6 = &a1[qword_27CE5AE80];
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {

    v7(v8);
    sub_21D0D0E88(v7);

    sub_21D1A8418(v9);
  }

  else
  {
    sub_21D1A8418(v9);
  }
}

uint64_t sub_21D3671DC()
{
  sub_21D0D0E88(*(v0 + qword_27CE5AE80));
  v1 = *(v0 + qword_27CE5AE88);

  return sub_21D0D0E88(v1);
}

uint64_t sub_21D367224(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE5AE80));
  v2 = *(a1 + qword_27CE5AE88);

  return sub_21D0D0E88(v2);
}

id TTRIButtonCellTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void *TTRIButtonCellTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() buttonWithType_];
  *&v3[OBJC_IVAR____TtC15RemindersUICore23TTRIButtonCellTableCell_button] = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a3)
  {
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  v36.receiver = v3;
  v36.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v36, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC15RemindersUICore23TTRIButtonCellTableCell_button;
  [v11 addSubview_];

  v13 = [*&v10[v12] heightAnchor];
  v33 = [v13 constraintGreaterThanOrEqualToConstant_];

  v14 = *&v10[v12];
  v15 = [v10 contentView];

  v16 = UIView.constraintsEqualTo(_:edges:)(v15, 15);
  v35 = v16;
  v17 = [*&v10[v12] titleLabel];
  if (v17)
  {
    v18 = v17;
    v19 = *&v10[v12];
    v20 = UIView.constraintsEqualTo(_:edges:)(v19, 5);

    sub_21D562934(v20);
    v16 = v35;
  }

  v32 = v10;
  if (v16 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v22 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223D44740](v22, v16);
      }

      else
      {
        if (v22 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v23 = *(v16 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      type metadata accessor for UILayoutPriority(0);
      [v33 priority];
      sub_21D367748();
      sub_21DBF84EC();
      LODWORD(v26) = v34;
      [v24 setPriority_];

      ++v22;
      if (v25 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v33;
  v29 = v33;
  sub_21D562934(inited);
  sub_21D3677A0();
  v30 = sub_21DBFA5DC();

  [v27 activateConstraints_];

  return v32;
}

unint64_t sub_21D367748()
{
  result = qword_280D0C2C0;
  if (!qword_280D0C2C0)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C2C0);
  }

  return result;
}

unint64_t sub_21D3677A0()
{
  result = qword_280D177D0;
  if (!qword_280D177D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D177D0);
  }

  return result;
}

void *assignWithCopy for TTRIReminderCellQuickBarLocationViewModel(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t type metadata accessor for TTRIButtonCellContent()
{
  result = qword_27CE5AEA0;
  if (!qword_27CE5AEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id TTRISliderCellContentState.icon.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21D36796C(v2, v3, v4);
}

id sub_21D36796C(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

__n128 TTRISliderCellContentState.icon.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_21D367A08(*v1, v1[1], v1[2]);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

void sub_21D367A08(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

uint64_t TTRISliderCellContentState.title.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRISliderCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TTRISliderCellContentState.subtitle.getter()
{
  v1 = *(v0 + 40);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRISliderCellContentState.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 TTRISliderCellContentState.init(icon:title:subtitle:minimumValue:maximumValue:value:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>)
{
  v19 = *a1;
  v17 = a1[1].n128_u64[0];
  sub_21D367A08(1, 0, 0);
  result = v19;
  *a6 = v19;
  a6[1].n128_u64[0] = v17;
  a6[1].n128_u64[1] = a2;
  a6[2].n128_u64[0] = a3;
  a6[2].n128_u64[1] = a4;
  a6[3].n128_u64[0] = a5;
  a6[3].n128_f32[2] = a7;
  a6[3].n128_f32[3] = a8;
  a6[4].n128_f32[0] = a9;
  return result;
}

uint64_t sub_21D367CC0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE5AEB0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D367D60(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE5AEB0);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21D367EC8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE5AEB8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D367F68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE5AEB8);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21D368050(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21D3680D8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRISliderCellContent.init(state:)(uint64_t a1)
{
  v3 = (v1 + qword_27CE5AEB0);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + qword_27CE5AEB8);
  *v4 = 0;
  v4[1] = 0;
  v5 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v5 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v5 & *v1) + 0x90)) = 0;
  v6 = v1 + *((*v5 & *v1) + 0x78);
  *(v6 + 16) = *(a1 + 64);
  v7 = *(a1 + 48);
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 3) = v7;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v1 + *((*v5 & *v1) + 0x80)) = 0;
  v9 = (v1 + *((*v5 & *v1) + 0x88));
  *v9 = 0x6543726564696C53;
  v9[1] = 0xEA00000000006C6CLL;
  v11.receiver = v1;
  v11.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AEC0);
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t TTRISliderCellContent.updateCell(_:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21D369054;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_18;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

id sub_21D3684D4(uint64_t a1, void *a2)
{
  v3 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78));
  swift_beginAccess();
  v22 = *v3;
  v4 = v3[1].i64[0];
  v5 = v3->i64[0];
  v6 = v3->i64[0] == 1;
  v7 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v27 = *(v7 + 32);
  v28 = v8;
  v29 = *(v7 + 64);
  v9 = *(v7 + 16);
  v25 = *v7;
  v26 = v9;
  v30[2] = v27;
  v30[3] = v8;
  v31 = v29;
  v30[0] = v25;
  v30[1] = v9;
  *&v9 = vdup_n_s32(v6);
  v10.i64[0] = v9;
  v10.i64[1] = DWORD1(v9);
  v11 = vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL));
  *v7 = vbicq_s8(v22, v11);
  *(v7 + 16) = vbslq_s8(v11, xmmword_21DC119C0, v4);
  *(v7 + 64) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  sub_21D36796C(v5, v22.i64[1], v4);
  sub_21D1ADB0C(&v25, v23);
  sub_21D1ADB7C(v30);
  v23[2] = v27;
  v23[3] = v28;
  v24 = v29;
  v23[0] = v25;
  v23[1] = v26;
  sub_21DA7EF48(v23);
  sub_21D1ADB7C(&v25);
  v12 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v13 = v12;
  v14 = sub_21DBFA12C();

  [v13 setText_];

  v15 = v3[2].i64[1];
  v16 = v3[3].i64[0];
  sub_21DBF8E0C();
  sub_21DA7B5A0(v15, v16);
  v17 = *(a1 + qword_27CE5AEC8);
  LODWORD(v18) = v3[3].i32[2];
  [v17 setMinimumValue_];
  LODWORD(v19) = v3[3].i32[3];
  [v17 setMaximumValue_];
  LODWORD(v20) = v3[4].i32[0];
  return [v17 setValue_];
}

void sub_21D3686EC(uint64_t a1)
{
  sub_21D0CEB98(a1, v35);
  sub_21D369514();
  if (swift_dynamicCast())
  {
    v2 = v34;
    v3 = MEMORY[0x277D85000];
    v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v5 = *(v4 + 3);
    v31 = *(v4 + 2);
    v32 = v5;
    v33 = *(v4 + 16);
    v6 = *(v4 + 1);
    v30[0] = *v4;
    v30[1] = v6;
    v26 = v30[0];
    v27 = v6;
    v28 = v31;
    v29 = v5;
    sub_21D369560(v30, v36);
    [v2 value];
    v8 = v7;
    v36[0] = v26;
    v36[1] = v27;
    v36[2] = v28;
    v36[3] = v29;
    v37 = v7;
    v9 = *((*v3 & *v1) + 0x90);
    *(v1 + v9) = 1;
    sub_21D369560(v36, &v21);
    sub_21D5C6918(v36);
    *(v1 + v9) = 0;
    v10 = (v1 + qword_27CE5AEB8);
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v17[0] = v26;
      v17[1] = v27;
      v17[2] = v28;
      v17[3] = v29;
      v18 = v8;
      v14 = v28;
      v15 = v29;
      v16 = v8;
      v12 = v26;
      v13 = v27;
      sub_21D0D0E78(v11);
      sub_21D369560(v17, &v21);
      v11(&v12);
      sub_21D0D0E88(v11);

      v19[2] = v14;
      v19[3] = v15;
      v20 = v16;
      v19[0] = v12;
      v19[1] = v13;
      sub_21D369598(v19);
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v24 = v29;
      v25 = v8;
      sub_21D369598(&v21);
    }

    else
    {
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v24 = v29;
      v25 = v8;
      sub_21D369598(&v21);
    }
  }
}

uint64_t sub_21D368910(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D3686EC(v4);

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_21D3689A4()
{
  sub_21D0D0E88(*(v0 + qword_27CE5AEB0));
  v1 = *(v0 + qword_27CE5AEB8);

  return sub_21D0D0E88(v1);
}

uint64_t sub_21D3689F0(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE5AEB0));
  v2 = *(a1 + qword_27CE5AEB8);

  return sub_21D0D0E88(v2);
}

id TTRISliderTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRISliderTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  *&v3[qword_27CE5AEC8] = v7;
  if (a3)
  {
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  v26.receiver = v3;
  v26.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v26, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = qword_27CE5AEC8;
  v11 = *&v9[qword_27CE5AEC8];
  v12 = v9;
  v13 = v11;
  [v13 sizeThatFits_];
  [v13 setLayoutSize_withContentPriority_];

  v14 = *&v9[v10];
  v15 = &v12[qword_27CE65610];
  swift_beginAccess();
  v16 = *v15;
  v17 = *(v15 + 1);
  v18 = *(v15 + 2);
  v19 = *(v15 + 3);
  v20 = *(v15 + 4);
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v21 = v15[40];
  v15[40] = 1;
  v22 = v14;
  sub_21D361B20(v16, v17, v18, v19, v20, v21);
  sub_21D361BB4(v16, v17, v18, v19, v20, v21);
  v24[0] = v16;
  v24[1] = v17;
  v24[2] = v18;
  v24[3] = v19;
  v24[4] = v20;
  v25 = v21;
  sub_21DA7F6B4(v24);

  sub_21D361BB4(v16, v17, v18, v19, v20, v21);
  return v12;
}

char *sub_21D368CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRISliderTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

BOOL _s15RemindersUICore26TTRISliderCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  v9 = *(a1 + 60);
  v11 = *(a1 + 64);
  v13 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v16 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *(a2 + 56);
  v19 = *(a2 + 60);
  v21 = *(a2 + 64);
  if (*a1 == 1)
  {
    v29 = *(a2 + 40);
    v30 = *(a1 + 40);
    v31 = *(a2 + 48);
    v32 = *(a1 + 48);
    sub_21D36796C(1, v2, v4);
    if (v13 == 1)
    {
      sub_21D36796C(1, v12, v14);
      sub_21D367A08(1, v2, v4);
      goto LABEL_11;
    }

    sub_21D36796C(v13, v12, v14);
LABEL_7:
    sub_21D367A08(v3, v2, v4);
    sub_21D367A08(v13, v12, v14);
    return 0;
  }

  v36 = *a1;
  v37 = v2;
  v38 = v4;
  if (v13 == 1)
  {
    sub_21D36796C(v3, v2, v4);
    sub_21D36796C(1, v12, v14);
    sub_21D36796C(v3, v2, v4);

    goto LABEL_7;
  }

  v29 = v16;
  v30 = v6;
  v31 = v18;
  v32 = v8;
  v33 = v13;
  v34 = v12;
  v35 = v14;
  sub_21D36796C(v3, v2, v4);
  sub_21D36796C(v13, v12, v14);
  sub_21D36796C(v3, v2, v4);
  v23 = sub_21DA823C8(&v36, &v33);
  v24 = v34;
  v25 = v35;

  v26 = v37;
  v27 = v38;

  sub_21D367A08(v3, v2, v4);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if ((v5 != v15 || v7 != v17) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (!v32)
  {
    result = 0;
    if (v31)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  if (v30 == v29 && v32 == v31)
  {
    result = 0;
  }

  else
  {
    v28 = sub_21DBFC64C();
    result = 0;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

LABEL_22:
  if (v10 == v20 && v9 == v19)
  {
    return v11 == v21;
  }

  return result;
}

uint64_t destroy for TTRISliderCellContentState(id *a1)
{
  if (*a1 != 1)
  {
  }
}

uint64_t initializeWithCopy for TTRISliderCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    v7 = v4;
    v8 = v5;
    v9 = v6;
  }

  v10 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v10;
  v11 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v11;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRISliderCellContentState(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 == 1)
  {
    if (v5 == 1)
    {
      v6 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v6;
    }

    else
    {
      *a1 = v5;
      v8 = *(a2 + 1);
      *(a1 + 8) = v8;
      v9 = *(a2 + 2);
      *(a1 + 16) = v9;
      v10 = v5;
      v11 = v8;
      v12 = v9;
    }
  }

  else if (v5 == 1)
  {
    sub_21D36927C(a1);
    v7 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    *a1 = v5;
    v13 = v5;

    v14 = *(a1 + 8);
    v15 = *(a2 + 1);
    *(a1 + 8) = v15;
    v16 = v15;

    v17 = *(a1 + 16);
    v18 = *(a2 + 2);
    *(a1 + 16) = v18;
    v19 = v18;
  }

  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = *(a2 + 4);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 6);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 15);
  *(a1 + 64) = *(a2 + 16);
  return a1;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRISliderCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 != 1)
  {
    if (*a2 != 1)
    {
      *a1 = *a2;

      v5 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);

      v6 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);

      goto LABEL_6;
    }

    sub_21D36927C(a1);
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
LABEL_6:
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;

  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISliderCellContentState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRISliderCellContentState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21D369514()
{
  result = qword_27CE5AEF0;
  if (!qword_27CE5AEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5AEF0);
  }

  return result;
}

uint64_t TTRIStaticTableViewDisclosureTextAccessoryProvider.Text.regular.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIStaticTableViewDisclosureTextAccessoryProvider.Text.shortened.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

void *TTRIStaticTableViewDisclosureTextAccessoryProvider.Text.textColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t TTRIStaticTableViewDisclosureTextAccessoryProvider.Text.init(regular:shortened:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_21D3696CC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D369738(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t sub_21D3697D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  v8 = v7;
  sub_21DBF8E0C();
  return sub_21DBF8E0C();
}

uint64_t sub_21D369858(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v13 = a1[2];
  v14 = *a1;
  v4 = a1[4];
  v5 = (*a2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v10 = v5[4];
  *v5 = v14;
  v5[1] = v2;
  v5[2] = v13;
  v5[3] = v3;
  v5[4] = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v11 = v4;
  *&v15 = v7;
  *(&v15 + 1) = v6;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  sub_21D369928(&v15);
}

void sub_21D369928(__int128 *a1)
{
  v18 = a1[1];
  v19 = *a1;
  v2 = *(a1 + 4);
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v22 = *v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v20[0] = v19;
  v20[1] = v18;
  v21 = v2;
  v8 = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  LOBYTE(v4) = _s15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProviderC0G0V2eeoiySbAE_AEtFZ_0(&v22, v20);
  v9 = v26;

  if ((v4 & 1) == 0)
  {
    if (v3[3])
    {
      v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
      if ([v10 numberOfLines])
      {
        [v10 invalidateIntrinsicContentSize];
        return;
      }

      v11 = v3[3];
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
    v13 = v3[1];
    v14 = v3[2];
    v15 = v3[4];
    v22 = *v3;
    v23 = v13;
    v24 = v14;
    v25 = v11;
    v26 = v15;
    v16 = v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = sub_21D36AA04(&v22);

    [v12 setAttributedText_];
  }
}

uint64_t sub_21D369AA8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  v8 = v7;
  sub_21DBF8E0C();
  return sub_21DBF8E0C();
}

uint64_t sub_21D369B24(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v12 = *(a1 + 1);
  v4 = a1[4];
  v5 = (v1 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  *v5 = v2;
  v5[1] = v3;
  *(v5 + 1) = v12;
  v5[4] = v4;
  *&v13 = v6;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_21D369928(&v13);
}

void (*sub_21D369BD4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  *v4 = *v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v11 = v10;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return sub_21D369C9C;
}

void sub_21D369C9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[8] + (*a1)[9]);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v10 = *v3;
  v9 = v3[1];
  v12 = v3[2];
  v11 = v3[3];
  v13 = v3[4];
  *v3 = v5;
  v3[1] = v4;
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v8;
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v14 = v8;
    *&v16 = v10;
    *(&v16 + 1) = v9;
    v17 = v12;
    v18 = v11;
    v19 = v13;
    sub_21D369928(&v16);

    v15 = v2[4];
  }

  else
  {
    *&v16 = v10;
    *(&v16 + 1) = v9;
    v17 = v12;
    v18 = v11;
    v19 = v13;
    sub_21D369928(&v16);
  }

  free(v2);
}

uint64_t sub_21D369DA8()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon);
  swift_beginAccess();
  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

void sub_21D369E00(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
  v7 = (v2 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
  swift_beginAccess();
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[4];
  v14[0] = *v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v12 = v11;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v13 = sub_21D36AA04(v14);

  [v6 setAttributedText_];
}

void (*sub_21D369EFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D369F60;
}

void sub_21D369F60(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
    v6 = (v4 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
    swift_beginAccess();
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    v10 = v6[4];
    v13[0] = *v6;
    v13[1] = v7;
    v13[2] = v8;
    v13[3] = v9;
    v13[4] = v10;
    v11 = v10;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v12 = sub_21D36AA04(v13);

    [v5 setAttributedText_];
  }
}