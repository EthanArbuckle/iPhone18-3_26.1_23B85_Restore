uint64_t sub_1AF70D248(_DWORD *a1, unint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  v8 = *v3;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v9 = sub_1AFDFF2F8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v8 + 48) + 16 * v11);
      if (v13[2] == a3 && v13[3] == v7)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    LODWORD(a2) = *v13;
    LODWORD(v15) = v13[1];
  }

  else
  {
LABEL_8:
    v15 = HIDWORD(a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1AF711640(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v15;
  a1[2] = a3;
  a1[3] = v7;
  return result;
}

uint64_t sub_1AF70D374(uint64_t a1)
{
  sub_1AF71985C(0, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF70D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF70D45C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();
  v11 = sub_1AFDFF2F8();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_1AFDFEE28() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_1AF712060(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_1AF70D658(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a2);
  v8 = sub_1AFDFF2F8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 16 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v14 = (*(v7 + 48) + 16 * v10);
    v15 = v14[1];
    *a1 = *v14;
    a1[1] = v15;

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;

    sub_1AF712224(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AF70D7B0(void *a1, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1AFDFE118();

    if (v17)
    {

      sub_1AF0D4478(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      v27 = sub_1AFDFE108();
      v28 = sub_1AF70EAB8(v15, v27 + 1, a5, a3, a4, a6);
      v29 = *(v28 + 16);
      if (*(v28 + 24) <= v29)
      {
        sub_1AF70F8EC(v29 + 1, a5, a3, a4, a6);
      }

      v30 = v16;
      sub_1AF7112F8(v30, v28);

      *v11 = v28;
      *a1 = v30;
      return 1;
    }
  }

  else
  {
    sub_1AF0D4478(0, a3);
    v19 = sub_1AFDFDC38();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1AFDFDC48();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v26 = a2;
      sub_1AF712C40(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v38;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF70DA24(_DWORD *a1, unint64_t a2)
{
  v5 = HIDWORD(a2);
  v6 = *v2;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v7 = sub_1AFDFF2F8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 8 * v9);
      v13 = *v11;
      v12 = v11[1];
      if (v13 == a2 && v12 == v5)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1AF71237C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_1AF70DB3C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1AFDFCEF8();
  sub_1AFDFF288();
  sub_1AFDFD038();
  v7 = sub_1AFDFF2F8();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1AFDFCEF8();
      v13 = v12;
      if (v11 == sub_1AFDFCEF8() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1AFDFEE28();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1AF7124E4(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1AF70DCE8(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a2);
  v6 = sub_1AFDFF2F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *a1 = *(*(v5 + 48) + 8 * v8);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v11 = swift_unknownObjectRetain();
    sub_1AF7126C4(v11, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1AF70DE00(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  v6 = sub_1AFDFF2F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF712808(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AF70DEF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = *v3;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](a3);
  v9 = sub_1AFDFF2F8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 4);
      if (*v13 == v5 && v15 == v7)
      {
        v17 = *(v13 + 8);
        if (v17 == a3)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = 0;
    LODWORD(v5) = v14;
    LODWORD(v7) = v15;
    a3 = v17;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1AF71294C(v5, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = v5;
  *(a1 + 4) = v7;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_1AF70E044(_DWORD *a1, unint64_t a2)
{
  v5 = HIDWORD(a2);
  v6 = *v2;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v7 = sub_1AFDFF2F8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 8 * v9);
      v13 = *v11;
      v12 = v11[1];
      if (v13 == a2 && v12 == v5)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1AF712AD8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_1AF70E180(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1AFDFF288();
  v5 = BYTE1(a2);
  sub_1AFDFD038();

  sub_1AFDFD038();

  v6 = sub_1AFDFF2F8();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v33;
    sub_1AF712DE0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v33 = v35;
    result = 1;
    goto LABEL_56;
  }

  v9 = ~v7;
  while (1)
  {
    v11 = (*(v4 + 48) + 2 * v8);
    if (*v11 > 1u)
    {
      if (*v11 == 2)
      {
        v12 = 0xE700000000000000;
        v13 = 0x534F6863746177;
      }

      else
      {
        v12 = 0xE400000000000000;
        v13 = 1397716596;
      }
    }

    else if (*v11)
    {
      v12 = 0xE500000000000000;
      v13 = 0x534F63616DLL;
    }

    else
    {
      v12 = 0xE300000000000000;
      v13 = 5459817;
    }

    v14 = v11[1];
    v15 = 0x534F6863746177;
    if (a2 != 2)
    {
      v15 = 1397716596;
    }

    v16 = 0xE700000000000000;
    if (a2 != 2)
    {
      v16 = 0xE400000000000000;
    }

    v17 = 5459817;
    if (a2)
    {
      v17 = 0x534F63616DLL;
    }

    v18 = 0xE300000000000000;
    if (a2)
    {
      v18 = 0xE500000000000000;
    }

    v19 = a2 <= 1u ? v17 : v15;
    v20 = a2 <= 1u ? v18 : v16;
    if (v13 == v19 && v12 == v20)
    {
    }

    else
    {
      v21 = sub_1AFDFEE28();

      if ((v21 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v22 = 0xE600000000000000;
        v23 = 0x6534366D7261;
      }

      else
      {
        v22 = 0xE800000000000000;
        v23 = 0x32335F34366D7261;
      }
    }

    else if (v14)
    {
      v22 = 0xE500000000000000;
      v23 = 0x34366D7261;
    }

    else
    {
      v22 = 0xE600000000000000;
      v23 = 0x34365F363878;
    }

    v24 = 0x32335F34366D7261;
    if (BYTE1(a2) == 2)
    {
      v24 = 0x6534366D7261;
    }

    v25 = 0xE800000000000000;
    if (BYTE1(a2) == 2)
    {
      v25 = 0xE600000000000000;
    }

    v26 = 0x34365F363878;
    if (BYTE1(a2))
    {
      v26 = 0x34366D7261;
    }

    v27 = 0xE500000000000000;
    if (!BYTE1(a2))
    {
      v27 = 0xE600000000000000;
    }

    v28 = BYTE1(a2) <= 1u ? v26 : v24;
    v29 = BYTE1(a2) <= 1u ? v27 : v25;
    if (v23 == v28 && v22 == v29)
    {
      break;
    }

    v10 = sub_1AFDFEE28();

    if (v10)
    {
      goto LABEL_54;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

LABEL_54:
  result = 0;
  v31 = (*(v4 + 48) + 2 * v8);
  LOBYTE(a2) = *v31;
  v5 = v31[1];
LABEL_56:
  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_1AF70E5AC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1AFDFF278();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1AF71324C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AF70E690(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1AFDFF288();
  sub_1AFAA0C08(v16, a2);
  v7 = sub_1AFDFF2F8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      sub_1AF443EE0(v11);
      v12 = sub_1AFAB5FF0(v11, a2);
      sub_1AF443F24(v11);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1AF443F24(a2);
    v15 = *(*(v6 + 48) + 8 * v9);
    *a1 = v15;
    sub_1AF443EE0(v15);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v3;
    sub_1AF443EE0(a2);
    sub_1AF713380(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1AF70E7D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1AF7193F0(&qword_1EB633A20, MEMORY[0x1E69695A8]);
  v34 = a2;
  v12 = sub_1AFDFCCF8();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1AF7193F0(&qword_1EB633A10, MEMORY[0x1E69695A8]);
      v22 = sub_1AFDFCE58();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1AF7134EC(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1AF70EAB8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a2)
  {
    sub_1AF718468(0, a3, a4, a5, a6);
    v10 = sub_1AFDFE1A8();
    v22 = v10;
    sub_1AFDFE0C8();
    if (sub_1AFDFE138())
    {
      sub_1AF0D4478(0, a4);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1AF70F8EC(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v22;
        v11 = sub_1AFDFDC38();
        v12 = v22 + 56;
        v13 = -1 << *(v22 + 32);
        v14 = v11 & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v22 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v22 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = (63 - v13) >> 6;
          do
          {
            if (v15 + 1 == v18)
            {
              v15 = 0;
            }

            else
            {
              ++v15;
            }

            v19 = *(v12 + 8 * v15);
          }

          while (v19 == -1);
          v16 = __clz(__rbit64(~v19)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v22 + 48) + 8 * v16) = v21;
        ++*(v22 + 16);
      }

      while (sub_1AFDFE138());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1AF70ECB0()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71985C(0, &unk_1ED7230D0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v25 = -1 << v6;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v26 = 1 << *(v2 + 32);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      v17 = *(*(v2 + 48) + 8 * v13);
      v18 = sub_1AFDFF278();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v22)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v23 = *(v10 + 8 * v21);
        }

        while (v23 == -1);
        v11 = __clz(__rbit64(~v23)) + (v21 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v17;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v2 + 64 + 8 * v5);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }

    if (v26 >= 64)
    {
      bzero((v2 + 56), 8 * v9);
    }

    else
    {
      *(v2 + 56) = v25;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF70EEE0()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1ED7230E0, sub_1AF6781F0, &type metadata for CommandQueue.DirtyPropagation, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v30 = (v2 + 56);
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 12);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v22 = sub_1AFDFF2F8();
      v23 = -1 << *(v4 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v10 + 8 * v25);
        }

        while (v27 == -1);
        v11 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v19;
      *(v12 + 8) = v20;
      *(v12 + 12) = v21;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v5);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF70F170()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71985C(0, &qword_1ED726B68, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v29 = (v2 + 56);
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = (*(v2 + 48) + 16 * v14);
      v19 = *v18;
      v20 = v18[1];
      sub_1AFDFF288();
      sub_1AFDFD038();
      v21 = sub_1AFDFF2F8();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v22) >> 6;
        do
        {
          if (v24 + 1 == v25)
          {
            v24 = 0;
          }

          else
          {
            ++v24;
          }

          v26 = *(v10 + 8 * v24);
        }

        while (v26 == -1);
        v11 = __clz(__rbit64(~v26)) + (v24 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v19;
      v12[1] = v20;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v5);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero(v29, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v29 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF70F3DC()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB63DB50, sub_1AF719808, &type metadata for ShaderArchive.Library, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v33 = v1;
    v34 = v2;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v32 = (v2 + 56);
    v11 = v2 + 64;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v5 << 6);
LABEL_14:
      v19 = (*(v2 + 48) + 32 * v15);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      sub_1AFDFF288();
      v35 = v20;
      sub_1AFDFD038();
      sub_1AFDFD038();
      v24 = sub_1AFDFF2F8();
      v25 = -1 << *(v4 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v10 + 8 * (v26 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v26) & ~*(v10 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = (63 - v25) >> 6;
        do
        {
          if (v27 + 1 == v28)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v29 = *(v10 + 8 * v27);
        }

        while (v29 == -1);
        v12 = __clz(__rbit64(~v29)) + (v27 << 6);
      }

      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      v2 = v34;
      *v13 = v35;
      v13[1] = v21;
      v13[2] = v22;
      v13[3] = v23;
      ++*(v4 + 16);
    }

    v16 = v5 << 6;
    while (1)
    {
      v17 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v18 = *(v11 + 8 * v5);
      v16 += 64;
      ++v5;
      if (v18)
      {
        v8 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v5 = v17;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    v1 = v33;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF70F67C()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1EB63DA90, sub_1AF43CFC0, &type metadata for VertexLayout, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    v28 = (v1 + 56);
    while (v7)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v4 << 6);
LABEL_14:
      v17 = (*(v1 + 48) + 16 * v13);
      v18 = *v17;
      v19 = v17[1];
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v18);
      v20 = sub_1AFDFF2F8();
      v21 = -1 << *(v3 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v9 + 8 * (v22 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v22) & ~*(v9 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = (63 - v21) >> 6;
        do
        {
          if (v23 + 1 == v24)
          {
            v23 = 0;
          }

          else
          {
            ++v23;
          }

          v25 = *(v9 + 8 * v23);
        }

        while (v25 == -1);
        v10 = __clz(__rbit64(~v25)) + (v23 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = (*(v3 + 48) + 16 * v10);
      *v11 = v18;
      v11[1] = v19;
      ++*(v3 + 16);
    }

    v14 = v4 << 6;
    while (1)
    {
      v15 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v16 = *(v1 + 64 + 8 * v4);
      v14 += 64;
      ++v4;
      if (v16)
      {
        v7 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v4 = v15;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v1 + 32);
    if (v26 >= 64)
    {
      bzero(v28, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v28 = -1 << v26;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF70F8EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1AF718468(0, a2, a3, a4, a5);
  v8 = sub_1AFDFE198();
  v9 = v8;
  if (*(v7 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v8 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v10 << 6);
LABEL_14:
      v22 = *(*(v7 + 48) + 8 * v18);
      v23 = sub_1AFDFDC38();
      v24 = -1 << *(v9 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v15 + 8 * v26);
        }

        while (v28 == -1);
        v16 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v22;
      ++*(v9 + 16);
    }

    v19 = v10 << 6;
    while (1)
    {
      v20 = v10 + 1;
      if (v10 + 1 >= v14)
      {
        break;
      }

      v21 = *(v7 + 64 + 8 * v10);
      v19 += 64;
      ++v10;
      if (v21)
      {
        v13 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v10 = v20;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *(v7 + 56) = -1 << v29;
    }

    v6 = v31;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_1AF70FAFC()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB632938, sub_1AF43B694, &type metadata for Entity, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v5 = v3;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v6 << 6);
LABEL_14:
      *&v4 = *(*(v2 + 48) + 8 * v14);
      v26 = v4;
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v18 = sub_1AFDFF2F8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v22)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v23 = *(v11 + 8 * v21);
        }

        while (v23 == -1);
        v12 = __clz(__rbit64(~v23)) + (v21 << 6);
      }

      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(&v4 + 1) = *(&v26 + 1);
      *(*(v5 + 48) + 8 * v12) = v26;
      ++*(v5 + 16);
    }

    v15 = v6 << 6;
    while (1)
    {
      v16 = v6 + 1;
      if (v6 + 1 >= v10)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v6);
      v15 += 64;
      ++v6;
      if (v17)
      {
        v9 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v6 = v16;
        goto LABEL_14;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *(v2 + 56) = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v5;
  return result;
}

uint64_t sub_1AF70FD78()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71935C();
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v0;
    v29 = v2;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v27 = (v2 + 56);
    v11 = v2 + 64;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = *(*(v2 + 48) + 8 * v14);
      sub_1AFDFCEF8();
      sub_1AFDFF288();
      sub_1AFDFD038();
      v19 = sub_1AFDFF2F8();

      v20 = -1 << *(v4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = (63 - v20) >> 6;
        do
        {
          if (v22 + 1 == v23)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          v24 = *(v10 + 8 * v22);
        }

        while (v24 == -1);
        v12 = __clz(__rbit64(~v24)) + (v22 << 6);
      }

      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v18;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v11 + 8 * v5);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v27, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v27 = -1 << v25;
    }

    v1 = v28;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF70FFD4()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1ED72E040, sub_1AF719B38, &type metadata for CommandBufferTracker.UnscheduledCommandBuffer, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    v25 = (v1 + 56);
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v4 << 6);
LABEL_14:
      v16 = *(*(v1 + 48) + 8 * v12);
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v16);
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v9 + 8 * v20);
        }

        while (v22 == -1);
        v10 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 8 * v10) = v16;
      ++*(v3 + 16);
    }

    v13 = v4 << 6;
    while (1)
    {
      v14 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v15 = *(v1 + 64 + 8 * v4);
      v13 += 64;
      ++v4;
      if (v15)
      {
        v7 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) + v13;
        v4 = v14;
        goto LABEL_14;
      }
    }

    v23 = 1 << *(v1 + 32);
    if (v23 >= 64)
    {
      bzero(v25, ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v23;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF710238()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1EB632928, sub_1AF7199BC, &type metadata for EffectID, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    v25 = (v1 + 56);
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v4 << 6);
LABEL_14:
      v16 = *(*(v1 + 48) + 4 * v12);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v9 + 8 * v20);
        }

        while (v22 == -1);
        v10 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 4 * v10) = v16;
      ++*(v3 + 16);
    }

    v13 = v4 << 6;
    while (1)
    {
      v14 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v15 = *(v1 + 64 + 8 * v4);
      v13 += 64;
      ++v4;
      if (v15)
      {
        v7 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) + v13;
        v4 = v14;
        goto LABEL_14;
      }
    }

    v23 = 1 << *(v1 + 32);
    if (v23 >= 64)
    {
      bzero(v25, ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v23;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF71049C()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB63DC28, sub_1AF719968, &type metadata for EntityInstance, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v32 = v2;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v31 = (v2 + 56);
    v11 = v2 + 64;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v5 << 6);
LABEL_14:
      v19 = *(v2 + 48) + 16 * v15;
      v20 = *v19;
      v21 = *(v19 + 4);
      v22 = *(v19 + 8);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      MEMORY[0x1B271ACB0](v22);
      v23 = sub_1AFDFF2F8();
      v24 = -1 << *(v4 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v10 + 8 * v26);
        }

        while (v28 == -1);
        v12 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v20;
      *(v13 + 4) = v21;
      *(v13 + 8) = v22;
      ++*(v4 + 16);
      v2 = v32;
    }

    v16 = v5 << 6;
    while (1)
    {
      v17 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v18 = *(v11 + 8 * v5);
      v16 += 64;
      ++v5;
      if (v18)
      {
        v8 = (v18 - 1) & v18;
        v15 = __clz(__rbit64(v18)) + v16;
        v5 = v17;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v31, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v31 = -1 << v29;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF710734()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB630C78, sub_1AF719A10, &type metadata for EmitterReference, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v5 = v3;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v6 << 6);
LABEL_14:
      *&v4 = *(*(v2 + 48) + 8 * v14);
      v26 = v4;
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v18 = sub_1AFDFF2F8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v22)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v23 = *(v11 + 8 * v21);
        }

        while (v23 == -1);
        v12 = __clz(__rbit64(~v23)) + (v21 << 6);
      }

      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(&v4 + 1) = *(&v26 + 1);
      *(*(v5 + 48) + 8 * v12) = v26;
      ++*(v5 + 16);
    }

    v15 = v6 << 6;
    while (1)
    {
      v16 = v6 + 1;
      if (v6 + 1 >= v10)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v6);
      v15 += 64;
      ++v6;
      if (v17)
      {
        v9 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v6 = v16;
        goto LABEL_14;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *(v2 + 56) = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v5;
  return result;
}

uint64_t sub_1AF7109B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB63DC40, sub_1AF444A40, &type metadata for Target, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_10:
      sub_1AF71137C(*(*(v2 + 48) + 2 * v10), v3);
    }

    v11 = v4 << 6;
    while (1)
    {
      v12 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v13 = *(v2 + 64 + 8 * v4);
      v11 += 64;
      ++v4;
      if (v13)
      {
        v7 = (v13 - 1) & v13;
        v10 = __clz(__rbit64(v13)) + v11;
        v4 = v12;
        goto LABEL_10;
      }
    }

    v14 = 1 << *(v2 + 32);
    if (v14 >= 64)
    {
      bzero((v2 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *(v2 + 56) = -1 << v14;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_1AF710B48()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71985C(0, &qword_1EB63DB38, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v25 = -1 << v6;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v26 = 1 << *(v2 + 32);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      v17 = *(*(v2 + 48) + 8 * v13);
      v18 = sub_1AFDFF278();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v22)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v23 = *(v10 + 8 * v21);
        }

        while (v23 == -1);
        v11 = __clz(__rbit64(~v23)) + (v21 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v17;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v2 + 64 + 8 * v5);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }

    if (v26 >= 64)
    {
      bzero((v2 + 56), 8 * v9);
    }

    else
    {
      *(v2 + 56) = v25;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF710D78()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1EB63DB40, sub_1AF444B6C, &type metadata for ScriptLocation, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    v25 = (v1 + 56);
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v4 << 6);
LABEL_14:
      v16 = *(*(v1 + 48) + 8 * v12);
      sub_1AFDFF288();
      sub_1AFAA0C08(v26, v16);
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v9 + 8 * v20);
        }

        while (v22 == -1);
        v10 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 8 * v10) = v16;
      ++*(v3 + 16);
    }

    v13 = v4 << 6;
    while (1)
    {
      v14 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v15 = *(v1 + 64 + 8 * v4);
      v13 += 64;
      ++v4;
      if (v15)
      {
        v7 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) + v13;
        v4 = v14;
        goto LABEL_14;
      }
    }

    v23 = 1 << *(v1 + 32);
    if (v23 >= 64)
    {
      bzero(v25, ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v23;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF710FDC()
{
  v1 = v0;
  v38 = sub_1AFDFC318();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v3);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1AF719BCC();
  v6 = sub_1AFDFE198();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = *(v5 + 56);
    v32 = (v5 + 56);
    v33 = v0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    v34 = v2 + 32;
    v35 = v2;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(v2 + 72);
      v22 = *(v5 + 48) + v21 * v17;
      v36 = *(v2 + 32);
      v36(v37, v22, v38);
      sub_1AF7193F0(&qword_1EB633A20, MEMORY[0x1E69695A8]);
      v23 = sub_1AFDFCCF8();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v14 + 8 * v26);
        }

        while (v28 == -1);
        v15 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      v2 = v35;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v36((*(v7 + 48) + v15 * v21), v37, v38);
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v13)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 64);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v12 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v32, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v29;
    }

    v1 = v33;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

unint64_t sub_1AF7112F8(uint64_t a1, uint64_t a2)
{
  sub_1AFDFDC38();
  result = sub_1AFDFE088();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1AF71137C(__int16 a1, uint64_t a2)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  sub_1AFDFD038();

  sub_1AFDFF2F8();
  result = sub_1AFDFE088();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 2 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1AF71150C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AF70ECB0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AF71490C(&unk_1ED7230D0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
      a2 = v7;
LABEL_12:
      v11 = *v3;
      *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v11 + 48) + 8 * a2) = v4;
      ++*(v11 + 16);
      return result;
    }

    sub_1AF714E08();
  }

  v8 = *v3;
  result = sub_1AFDFF278();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = ~v9;
  while (*(*(v8 + 48) + 8 * a2) != v4)
  {
    a2 = (a2 + 1) & v10;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF711640(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = a2;
  v6 = result;
  v7 = HIDWORD(a2);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1AF70EEE0();
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a3;
      result = sub_1AF7137A4();
      a3 = v10;
LABEL_15:
      v18 = *v4;
      *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v19 = *(v18 + 48) + 16 * a3;
      *v19 = v6;
      *(v19 + 8) = v5;
      *(v19 + 12) = v7;
      ++*(v18 + 16);
      return result;
    }

    sub_1AF714FF4();
  }

  v11 = *v4;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  result = sub_1AFDFF2F8();
  v12 = -1 << *(v11 + 32);
  a3 = result & ~v12;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = ~v12;
  while (1)
  {
    v14 = *(v11 + 48) + 16 * a3;
    v16 = *(v14 + 8);
    v15 = *(v14 + 12);
    if (v16 == v5 && v15 == v7)
    {
      break;
    }

    a3 = (a3 + 1) & v13;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF7117B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AF7117C8()
{
  result = qword_1EB63D9F0;
  if (!qword_1EB63D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D9F0);
  }

  return result;
}

uint64_t destroy for Renderer.CurrentRenderContext()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for Renderer.CurrentRenderContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  v7 = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for Renderer.CurrentRenderContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

__n128 initializeWithTake for Renderer.CurrentRenderContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for Renderer.CurrentRenderContext(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for Renderer.CurrentRenderContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Renderer.CurrentRenderContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Renderer.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for Renderer.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

__n128 initializeWithTake for Renderer.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for Renderer.Options(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for Renderer.Options(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for Renderer.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

unint64_t sub_1AF711EDC()
{
  result = qword_1EB63DA60;
  if (!qword_1EB63DA60)
  {
    sub_1AF0D96E0(255, &qword_1EB63DA68, &type metadata for StereoMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DA60);
  }

  return result;
}

unint64_t sub_1AF711F5C()
{
  result = qword_1EB63DA70;
  if (!qword_1EB63DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DA70);
  }

  return result;
}

unint64_t sub_1AF711FB4()
{
  result = qword_1EB63DA78;
  if (!qword_1EB63DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DA78);
  }

  return result;
}

unint64_t sub_1AF71200C()
{
  result = qword_1ED72E190;
  if (!qword_1ED72E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72E190);
  }

  return result;
}

uint64_t sub_1AF712060(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1AF70F3DC();
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_1AF713A94();
        goto LABEL_22;
      }

      sub_1AF715478();
    }

    v14 = *v6;
    sub_1AFDFF288();
    sub_1AFDFD038();
    sub_1AFDFD038();
    result = sub_1AFDFF2F8();
    v15 = v14 + 56;
    v16 = -1 << *(v14 + 32);
    a5 = result & ~v16;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v17 = ~v16;
      v18 = *(v14 + 48);
      while (1)
      {
        v19 = (v18 + 32 * a5);
        v20 = v19[2];
        v21 = v19[3];
        v22 = *v19 == v11 && v19[1] == a2;
        if (v22 || (result = sub_1AFDFEE28(), (result & 1) != 0))
        {
          if (v20 == a3 && v21 == a4)
          {
            break;
          }

          result = sub_1AFDFEE28();
          if (result)
          {
            break;
          }
        }

        a5 = (a5 + 1) & v17;
        if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      result = sub_1AFDFF198();
      __break(1u);
    }
  }

LABEL_22:
  v24 = *v26;
  *(*v26 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  ++*(v24 + 16);
  return result;
}

uint64_t sub_1AF712224(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1AF70F67C();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1AF713C30();
      a3 = v9;
LABEL_12:
      v13 = *v4;
      *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v14 = (*(v13 + 48) + 16 * a3);
      *v14 = v6;
      v14[1] = a2;
      ++*(v13 + 16);
      return result;
    }

    sub_1AF715710();
  }

  v10 = *v4;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v6);
  result = sub_1AFDFF2F8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = ~v11;
  while (*(*(v10 + 48) + 16 * a3) != v6)
  {
    a3 = (a3 + 1) & v12;
    if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

unint64_t sub_1AF71237C(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = HIDWORD(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1AF70FAFC();
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1AF713F14();
      a2 = v8;
LABEL_15:
      v16 = *v3;
      *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v17 = (*(v16 + 48) + 8 * a2);
      *v17 = v4;
      v17[1] = v5;
      ++*(v16 + 16);
      return result;
    }

    sub_1AF715B18();
  }

  v9 = *v3;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  result = sub_1AFDFF2F8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = ~v10;
  while (1)
  {
    v12 = (*(v9 + 48) + 8 * a2);
    v14 = *v12;
    v13 = v12[1];
    if (v14 == v4 && v13 == v5)
    {
      break;
    }

    a2 = (a2 + 1) & v11;
    if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF7124E4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1AF70FD78();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1AF714080();
LABEL_16:
      v19 = *v4;
      *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v19 + 48) + 8 * a2) = v6;
      ++*(v19 + 16);
      return result;
    }

    sub_1AF715D48();
  }

  v9 = *v3;
  sub_1AFDFCEF8();
  sub_1AFDFF288();
  sub_1AFDFD038();
  v10 = sub_1AFDFF2F8();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = ~v11;
  type metadata accessor for VFXTriggerType(0);
  while (1)
  {
    v13 = sub_1AFDFCEF8();
    v15 = v14;
    if (v13 == sub_1AFDFCEF8() && v15 == v16)
    {
      break;
    }

    v18 = sub_1AFDFEE28();

    if (v18)
    {
      goto LABEL_18;
    }

    a2 = (a2 + 1) & v12;
    if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF7126C4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AF70FFD4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AF7141C8();
      a2 = v7;
LABEL_12:
      v11 = *v3;
      *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v11 + 48) + 8 * a2) = v4;
      ++*(v11 + 16);
      return result;
    }

    sub_1AF715F6C();
  }

  v8 = *v3;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v4);
  result = sub_1AFDFF2F8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = ~v9;
  while (*(*(v8 + 48) + 8 * a2) != v4)
  {
    a2 = (a2 + 1) & v10;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF712808(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AF710238();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AF714348();
      a2 = v7;
LABEL_12:
      v11 = *v3;
      *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v11 + 48) + 4 * a2) = v4;
      ++*(v11 + 16);
      return result;
    }

    sub_1AF71618C();
  }

  v8 = *v3;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  result = sub_1AFDFF2F8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = ~v9;
  while (*(*(v8 + 48) + 4 * a2) != v4)
  {
    a2 = (a2 + 1) & v10;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

unint64_t sub_1AF71294C(unint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = HIDWORD(result);
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1AF71049C();
    }

    else
    {
      if (v9 > v8)
      {
        v10 = a3;
        result = sub_1AF7144B4();
        a3 = v10;
        goto LABEL_18;
      }

      sub_1AF7163A4();
    }

    v11 = *v4;
    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    MEMORY[0x1B271ACB0](a2);
    result = sub_1AFDFF2F8();
    v12 = -1 << *(v11 + 32);
    a3 = result & ~v12;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = *(v11 + 48) + 16 * a3;
        v15 = *v14 == v6 && *(v14 + 4) == v7;
        if (v15 && *(v14 + 8) == a2)
        {
          break;
        }

        a3 = (a3 + 1) & v13;
        if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = sub_1AFDFF198();
      __break(1u);
    }
  }

LABEL_18:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(v16 + 48) + 16 * a3;
  *v17 = v6;
  *(v17 + 4) = v7;
  *(v17 + 8) = a2;
  ++*(v16 + 16);
  return result;
}

unint64_t sub_1AF712AD8(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = HIDWORD(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1AF710734();
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1AF714634();
      a2 = v8;
LABEL_15:
      v16 = *v3;
      *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v17 = (*(v16 + 48) + 8 * a2);
      *v17 = v4;
      v17[1] = v5;
      ++*(v16 + 16);
      return result;
    }

    sub_1AF7165FC();
  }

  v9 = *v3;
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  result = sub_1AFDFF2F8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = ~v10;
  while (1)
  {
    v12 = (*(v9 + 48) + 8 * a2);
    v14 = *v12;
    v13 = v12[1];
    if (v14 == v4 && v13 == v5)
    {
      break;
    }

    a2 = (a2 + 1) & v11;
    if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

void sub_1AF712C40(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    sub_1AF70F8EC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1AF713DBC(a4, a5, a6, a7);
LABEL_12:
      v19 = *v7;
      *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v19 + 48) + 8 * a2) = a1;
      ++*(v19 + 16);
      return;
    }

    v12 = a5;
    sub_1AF71594C(v10 + 1, a4, a5, a6, a7);
  }

  v13 = *v7;
  v14 = sub_1AFDFDC38();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = ~v15;
  sub_1AF0D4478(0, v12);
  while (1)
  {
    v17 = *(*(v13 + 48) + 8 * a2);
    v18 = sub_1AFDFDC48();

    if (v18)
    {
      break;
    }

    a2 = (a2 + 1) & v16;
    if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1AFDFF198();
  __break(1u);
}

uint64_t sub_1AF712DE0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_61;
  }

  if (a3)
  {
    sub_1AF7109B0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1AF7147A0();
      goto LABEL_61;
    }

    sub_1AF71682C();
  }

  v33 = *v3;
  sub_1AFDFF288();
  v8 = BYTE1(v5);
  sub_1AFDFD038();

  sub_1AFDFD038();

  result = sub_1AFDFF2F8();
  v9 = -1 << *(v33 + 32);
  a2 = result & ~v9;
  if (((*(v33 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v10 = ~v9;
  while (1)
  {
    v12 = (*(v33 + 48) + 2 * a2);
    if (*v12 > 1u)
    {
      if (*v12 == 2)
      {
        v13 = 0xE700000000000000;
        v14 = 0x534F6863746177;
      }

      else
      {
        v13 = 0xE400000000000000;
        v14 = 1397716596;
      }
    }

    else if (*v12)
    {
      v13 = 0xE500000000000000;
      v14 = 0x534F63616DLL;
    }

    else
    {
      v13 = 0xE300000000000000;
      v14 = 5459817;
    }

    v15 = v12[1];
    v16 = v5;
    v17 = 0x534F6863746177;
    if (v5 != 2)
    {
      v17 = 1397716596;
    }

    v18 = 0xE700000000000000;
    if (v5 != 2)
    {
      v18 = 0xE400000000000000;
    }

    v19 = 5459817;
    if (v5)
    {
      v19 = 0x534F63616DLL;
    }

    v20 = 0xE300000000000000;
    if (v5)
    {
      v20 = 0xE500000000000000;
    }

    v21 = v5 <= 1u ? v19 : v17;
    v22 = v5 <= 1u ? v20 : v18;
    if (v14 == v21 && v13 == v22)
    {
    }

    else
    {
      v23 = sub_1AFDFEE28();

      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v24 = 0xE600000000000000;
        v25 = 0x6534366D7261;
      }

      else
      {
        v24 = 0xE800000000000000;
        v25 = 0x32335F34366D7261;
      }
    }

    else if (v15)
    {
      v24 = 0xE500000000000000;
      v25 = 0x34366D7261;
    }

    else
    {
      v24 = 0xE600000000000000;
      v25 = 0x34365F363878;
    }

    v26 = 0x32335F34366D7261;
    if (v8 == 2)
    {
      v26 = 0x6534366D7261;
    }

    v27 = 0xE800000000000000;
    if (v8 == 2)
    {
      v27 = 0xE600000000000000;
    }

    v28 = 0x34365F363878;
    if (v8)
    {
      v28 = 0x34366D7261;
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = v8 <= 1 ? v28 : v26;
    v5 = v8 <= 1 ? v29 : v27;
    if (v25 == v30 && v24 == v5)
    {
      break;
    }

    v11 = sub_1AFDFEE28();

    if (v11)
    {
      goto LABEL_60;
    }

LABEL_11:
    a2 = (a2 + 1) & v10;
    v5 = v16;
    if (((*(v33 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  result = sub_1AFDFF198();
  __break(1u);
LABEL_61:
  v31 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + 2 * a2) = v5;
  ++*(v31 + 16);
  return result;
}

uint64_t sub_1AF71324C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AF710B48();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AF71490C(&qword_1EB63DB38, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
      a2 = v7;
LABEL_12:
      v11 = *v3;
      *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v11 + 48) + 8 * a2) = v4;
      ++*(v11 + 16);
      return result;
    }

    sub_1AF716984();
  }

  v8 = *v3;
  result = sub_1AFDFF278();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = ~v9;
  while (*(*(v8 + 48) + 8 * a2) != v4)
  {
    a2 = (a2 + 1) & v10;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

unint64_t sub_1AF713380(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AF710D78();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1AF714A60();
LABEL_12:
      v14 = *v4;
      *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v14 + 48) + 8 * a2) = v6;
      ++*(v14 + 16);
      return result;
    }

    sub_1AF716B70();
  }

  v9 = *v3;
  sub_1AFDFF288();
  sub_1AFAA0C08(v15, v6);
  result = sub_1AFDFF2F8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = ~v10;
  while (1)
  {
    v12 = *(*(v9 + 48) + 8 * a2);
    sub_1AF443EE0(v12);
    v13 = sub_1AFAB5FF0(v12, v6);
    result = sub_1AF443F24(v12);
    if (v13)
    {
      break;
    }

    a2 = (a2 + 1) & v11;
    if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF7134EC(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v27 = v3;
  v28 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AF710FDC();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1AF714BE0();
LABEL_12:
      v24 = v28;
      v25 = *v27;
      *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v30, v6, v9);
      ++*(v25 + 16);
      return result;
    }

    sub_1AF716D90();
  }

  v14 = *v3;
  sub_1AF7193F0(&qword_1EB633A20, MEMORY[0x1E69695A8]);
  v15 = sub_1AFDFCCF8();
  v16 = v14 + 56;
  v29 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v18 = ~v17;
  v21 = *(v7 + 16);
  v20 = v7 + 16;
  v19 = v21;
  v22 = *(v20 + 56);
  while (1)
  {
    v19(v11, *(v29 + 48) + v22 * a2, v6);
    sub_1AF7193F0(&qword_1EB633A10, MEMORY[0x1E69695A8]);
    v23 = sub_1AFDFCE58();
    (*(v20 - 8))(v11, v6);
    if (v23)
    {
      break;
    }

    a2 = (a2 + 1) & v18;
    if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = sub_1AFDFF198();
  __break(1u);
  return result;
}

uint64_t sub_1AF7137A4()
{
  v1 = v0;
  sub_1AF719AD0(0, &qword_1ED7230E0, sub_1AF6781F0, &type metadata for CommandQueue.DirtyPropagation, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      ;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF713914()
{
  v1 = v0;
  sub_1AF71985C(0, &qword_1ED726B68, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + v18);
      v20 = v19[1];
      v21 = (*(v4 + 48) + v18);
      *v21 = *v19;
      v21[1] = v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF713A94()
{
  v1 = v0;
  sub_1AF719AD0(0, &qword_1EB63DB50, sub_1AF719808, &type metadata for ShaderArchive.Library, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 32 * v14;
      v19 = (*(v2 + 48) + v18);
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = (*(v4 + 48) + v18);
      *v23 = *v19;
      v23[1] = v20;
      v23[2] = v21;
      v23[3] = v22;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF713C30()
{
  v1 = v0;
  sub_1AF719AD0(0, &unk_1EB63DA90, sub_1AF43CFC0, &type metadata for VertexLayout, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = 16 * v14;
      v19 = (*(v2 + 48) + v18);
      v20 = v19[1];
      v21 = (*(v4 + 48) + v18);
      *v21 = *v19;
      v21[1] = v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF713DBC(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1AF718468(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1AFDFE188();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    for (i = (v13 + 63) >> 6; v15; v23 = v22)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_16:
      v22 = *(*(v6 + 48) + 8 * v18);
      *(*(v8 + 48) + 8 * v18) = v22;
    }

    v19 = v12 << 6;
    while (1)
    {
      v20 = v12 + 1;
      if (v12 + 1 >= i)
      {
        break;
      }

      v21 = *(v6 + 64 + 8 * v12);
      v19 += 64;
      ++v12;
      if (v21)
      {
        v15 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v12 = v20;
        goto LABEL_16;
      }
    }
  }

  *v5 = v8;
  return result;
}

uint64_t sub_1AF713F14()
{
  v1 = v0;
  sub_1AF719AD0(0, &qword_1EB632938, sub_1AF43B694, &type metadata for Entity, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      ;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF714080()
{
  v1 = v0;
  sub_1AF71935C();
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v19 = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = v18;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF7141C8()
{
  v1 = v0;
  sub_1AF719AD0(0, &unk_1ED72E040, sub_1AF719B38, &type metadata for CommandBufferTracker.UnscheduledCommandBuffer, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      swift_unknownObjectRetain();
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF714348()
{
  v1 = v0;
  sub_1AF719AD0(0, &unk_1EB632928, sub_1AF7199BC, &type metadata for EffectID, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      ;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF7144B4()
{
  v1 = v0;
  sub_1AF719AD0(0, &qword_1EB63DC28, sub_1AF719968, &type metadata for EntityInstance, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v22[1] = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v19 = 16 * v14;
      v20 = (*(v2 + 48) + v19);
      v21 = v20[1];
      v22 = (*(v4 + 48) + v19);
      *v22 = *v20;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF714634()
{
  v1 = v0;
  sub_1AF719AD0(0, &qword_1EB630C78, sub_1AF719A10, &type metadata for EmitterReference, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      ;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF7147A0()
{
  v1 = v0;
  sub_1AF719AD0(0, &qword_1EB63DC40, sub_1AF444A40, &type metadata for Target, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      ;
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= i)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v18 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        v14 = v18 + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF71490C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AF71985C(0, a1, a2, a3, MEMORY[0x1E69E6A10]);
  v5 = *v3;
  v6 = sub_1AFDFE188();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 56 + 8 * v9)
    {
      memmove(v8, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + 8 * v17) = *(*(v5 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_16:
      ;
    }

    v18 = v11 << 6;
    while (1)
    {
      v19 = v11 + 1;
      if (v11 + 1 >= i)
      {
        break;
      }

      v20 = *(v5 + 64 + 8 * v11);
      v18 += 64;
      ++v11;
      if (v20)
      {
        v21 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        v17 = v21 + v18;
        v11 = v19;
        goto LABEL_16;
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1AF714A60()
{
  v1 = v0;
  sub_1AF719AD0(0, &unk_1EB63DB40, sub_1AF444B6C, &type metadata for ScriptLocation, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1AFDFE188();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_16:
      v18 = *(*(v2 + 48) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = v18;
      sub_1AF443EE0(v18);
    }

    v15 = v8 << 6;
    while (1)
    {
      v16 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v17 = *(v2 + 64 + 8 * v8);
      v15 += 64;
      ++v8;
      if (v17)
      {
        v11 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v8 = v16;
        goto LABEL_16;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF714BE0()
{
  v1 = v0;
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF719BCC();
  v7 = *v0;
  v8 = sub_1AFDFE188();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26[0] = v1;
    v10 = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 56 + 8 * v11)
    {
      memmove(v10, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    v26[1] = v3 + 16;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v20 = v19 | (v13 << 6);
LABEL_16:
        v24 = *(v3 + 72) * v20;
        (*(v3 + 16))(v6, *(v7 + 48) + v24, v2);
        (*(v3 + 32))(*(v9 + 48) + v24, v6, v2);
      }

      while (v17);
    }

    v21 = v13 << 6;
    while (1)
    {
      v22 = v13 + 1;
      if (v13 + 1 >= v18)
      {
        break;
      }

      v23 = *(v7 + 8 * v13 + 64);
      v21 += 64;
      ++v13;
      if (v23)
      {
        v17 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v13 = v22;
        goto LABEL_16;
      }
    }

    v1 = v26[0];
  }

  else
  {
  }

  *v1 = v9;
  return result;
}

uint64_t sub_1AF714E08()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71985C(0, &unk_1ED7230D0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      v17 = *(*(v2 + 48) + 8 * v13);
      v18 = sub_1AFDFF278();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v22)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v23 = *(v10 + 8 * v21);
        }

        while (v23 == -1);
        v11 = __clz(__rbit64(~v23)) + (v21 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v17;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v2 + 8 * v5 + 64);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF714FF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1ED7230E0, sub_1AF6781F0, &type metadata for CommandQueue.DirtyPropagation, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 12);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v22 = sub_1AFDFF2F8();
      v23 = -1 << *(v4 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v10 + 8 * v25);
        }

        while (v27 == -1);
        v11 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v19;
      *(v12 + 8) = v20;
      *(v12 + 12) = v21;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 8 * v5 + 64);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF715244()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71985C(0, &qword_1ED726B68, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = (*(v2 + 48) + 16 * v14);
      v19 = *v18;
      v20 = v18[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v21 = sub_1AFDFF2F8();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v22) >> 6;
        do
        {
          if (v24 + 1 == v25)
          {
            v24 = 0;
          }

          else
          {
            ++v24;
          }

          v26 = *(v10 + 8 * v24);
        }

        while (v26 == -1);
        v11 = __clz(__rbit64(~v26)) + (v24 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v19;
      v12[1] = v20;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 8 * v5 + 64);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF715478()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB63DB50, sub_1AF719808, &type metadata for ShaderArchive.Library, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v30 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = (*(v2 + 48) + 32 * v14);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_1AFDFF288();

      sub_1AFDFD038();
      sub_1AFDFD038();
      v23 = sub_1AFDFF2F8();
      v24 = -1 << *(v4 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v10 + 8 * v26);
        }

        while (v28 == -1);
        v11 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 32 * v11);
      *v12 = v19;
      v12[1] = v20;
      v12[2] = v21;
      v12[3] = v22;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 8 * v5 + 64);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v1 = v30;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF7156FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_1AF715710()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &unk_1EB63DA90, sub_1AF43CFC0, &type metadata for VertexLayout, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = (*(v2 + 48) + 16 * v14);
      v20 = *v18;
      v19 = v18[1];
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v20);
      v21 = sub_1AFDFF2F8();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v22) >> 6;
        do
        {
          if (v24 + 1 == v25)
          {
            v24 = 0;
          }

          else
          {
            ++v24;
          }

          v26 = *(v10 + 8 * v24);
        }

        while (v26 == -1);
        v11 = __clz(__rbit64(~v26)) + (v24 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v20;
      v12[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 8 * v5 + 64);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF71594C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1AF718468(0, a2, a3, a4, a5);
  v8 = sub_1AFDFE198();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v8 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v10 << 6);
LABEL_14:
      v22 = *(*(v7 + 48) + 8 * v18);
      v23 = sub_1AFDFDC38();
      v24 = -1 << *(v9 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = (63 - v24) >> 6;
        do
        {
          if (v26 + 1 == v27)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          v28 = *(v15 + 8 * v26);
        }

        while (v28 == -1);
        v16 = __clz(__rbit64(~v28)) + (v26 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v22;
      ++*(v9 + 16);
    }

    v19 = v10 << 6;
    while (1)
    {
      v20 = v10 + 1;
      if (v10 + 1 >= v14)
      {
        break;
      }

      v21 = *(v7 + 8 * v10 + 64);
      v19 += 64;
      ++v10;
      if (v21)
      {
        v13 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) + v19;
        v10 = v20;
        goto LABEL_14;
      }
    }
  }

  *v6 = v9;
  return result;
}

uint64_t sub_1AF715B18()
{
  v1 = *v0;
  sub_1AF719AD0(0, &qword_1EB632938, sub_1AF43B694, &type metadata for Entity, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v4 = v2;
  if (*(v1 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v2 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      *&v3 = *(*(v1 + 48) + 8 * v13);
      v24 = v3;
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v10 + 8 * v20);
        }

        while (v22 == -1);
        v11 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(&v3 + 1) = *(&v24 + 1);
      *(*(v4 + 48) + 8 * v11) = v24;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v1 + 8 * v5 + 64);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1AF715D48()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71935C();
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      v17 = *(*(v2 + 48) + 8 * v13);
      sub_1AFDFCEF8();
      sub_1AFDFF288();
      v18 = v17;
      sub_1AFDFD038();
      v19 = sub_1AFDFF2F8();

      v20 = -1 << *(v4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = (63 - v20) >> 6;
        do
        {
          if (v22 + 1 == v23)
          {
            v22 = 0;
          }

          else
          {
            ++v22;
          }

          v24 = *(v10 + 8 * v22);
        }

        while (v24 == -1);
        v11 = __clz(__rbit64(~v24)) + (v22 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v18;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v2 + 8 * v5 + 64);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }

    v1 = v26;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF715F6C()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1ED72E040, sub_1AF719B38, &type metadata for CommandBufferTracker.UnscheduledCommandBuffer, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v4 << 6);
LABEL_14:
      v16 = *(*(v1 + 48) + 8 * v12);
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v16);
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v9 + 8 * v20);
        }

        while (v22 == -1);
        v10 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 8 * v10) = v16;
      ++*(v3 + 16);
      swift_unknownObjectRetain();
    }

    v13 = v4 << 6;
    while (1)
    {
      v14 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v15 = *(v1 + 8 * v4 + 64);
      v13 += 64;
      ++v4;
      if (v15)
      {
        v7 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) + v13;
        v4 = v14;
        goto LABEL_14;
      }
    }
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF71618C()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1EB632928, sub_1AF7199BC, &type metadata for EffectID, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v4 << 6);
LABEL_14:
      v16 = *(*(v1 + 48) + 4 * v12);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v9 + 8 * v20);
        }

        while (v22 == -1);
        v10 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 4 * v10) = v16;
      ++*(v3 + 16);
    }

    v13 = v4 << 6;
    while (1)
    {
      v14 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v15 = *(v1 + 8 * v4 + 64);
      v13 += 64;
      ++v4;
      if (v15)
      {
        v7 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) + v13;
        v4 = v14;
        goto LABEL_14;
      }
    }
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF7163A4()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB63DC28, sub_1AF719968, &type metadata for EntityInstance, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v5 << 6);
LABEL_14:
      v18 = *(v2 + 48) + 16 * v14;
      v19 = *v18;
      v20 = *(v18 + 4);
      v21 = *(v18 + 8);
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      MEMORY[0x1B271ACB0](v21);
      v22 = sub_1AFDFF2F8();
      v23 = -1 << *(v4 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v10 + 8 * v25);
        }

        while (v27 == -1);
        v11 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v19;
      *(v12 + 4) = v20;
      *(v12 + 8) = v21;
      ++*(v4 + 16);
    }

    v15 = v5 << 6;
    while (1)
    {
      v16 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v17 = *(v2 + 8 * v5 + 64);
      v15 += 64;
      ++v5;
      if (v17)
      {
        v8 = (v17 - 1) & v17;
        v14 = __clz(__rbit64(v17)) + v15;
        v5 = v16;
        goto LABEL_14;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF7165FC()
{
  v1 = *v0;
  sub_1AF719AD0(0, &qword_1EB630C78, sub_1AF719A10, &type metadata for EmitterReference, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v4 = v2;
  if (*(v1 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v2 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      *&v3 = *(*(v1 + 48) + 8 * v13);
      v24 = v3;
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v10 + 8 * v20);
        }

        while (v22 == -1);
        v11 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(&v3 + 1) = *(&v24 + 1);
      *(*(v4 + 48) + 8 * v11) = v24;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v1 + 8 * v5 + 64);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1AF71682C()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF719AD0(0, &qword_1EB63DC40, sub_1AF444A40, &type metadata for Target, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    v6 = *(v2 + 56);
    v7 = -1;
    if (v5 < 64)
    {
      v7 = ~(-1 << v5);
    }

    v8 = v7 & v6;
    v9 = (v5 + 63) >> 6;
    if ((v7 & v6) != 0)
    {
      do
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v11 = v10 | (v4 << 6);
LABEL_10:
        sub_1AF71137C(*(*(v2 + 48) + 2 * v11), v3);
      }

      while (v8);
    }

    v12 = v4 << 6;
    while (1)
    {
      v13 = v4 + 1;
      if (v4 + 1 >= v9)
      {
        break;
      }

      v14 = *(v2 + 64 + 8 * v4);
      v12 += 64;
      ++v4;
      if (v14)
      {
        v8 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) + v12;
        v4 = v13;
        goto LABEL_10;
      }
    }
  }

  *v1 = v3;
  return result;
}

uint64_t sub_1AF716984()
{
  v1 = v0;
  v2 = *v0;
  sub_1AF71985C(0, &qword_1EB63DB38, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v5 << 6);
LABEL_14:
      v17 = *(*(v2 + 48) + 8 * v13);
      v18 = sub_1AFDFF278();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) != 0)
      {
        v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = (63 - v19) >> 6;
        do
        {
          if (v21 + 1 == v22)
          {
            v21 = 0;
          }

          else
          {
            ++v21;
          }

          v23 = *(v10 + 8 * v21);
        }

        while (v23 == -1);
        v11 = __clz(__rbit64(~v23)) + (v21 << 6);
      }

      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v17;
      ++*(v4 + 16);
    }

    v14 = v5 << 6;
    while (1)
    {
      v15 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v16 = *(v2 + 8 * v5 + 64);
      v14 += 64;
      ++v5;
      if (v16)
      {
        v8 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) + v14;
        v5 = v15;
        goto LABEL_14;
      }
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF716B70()
{
  v1 = *v0;
  sub_1AF719AD0(0, &unk_1EB63DB40, sub_1AF444B6C, &type metadata for ScriptLocation, MEMORY[0x1E69E6A10]);
  v2 = sub_1AFDFE198();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    while (v7)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v4 << 6);
LABEL_14:
      v16 = *(*(v1 + 48) + 8 * v12);
      sub_1AFDFF288();
      sub_1AF443EE0(v16);
      sub_1AFAA0C08(v24, v16);
      v17 = sub_1AFDFF2F8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = (63 - v18) >> 6;
        do
        {
          if (v20 + 1 == v21)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          v22 = *(v9 + 8 * v20);
        }

        while (v22 == -1);
        v10 = __clz(__rbit64(~v22)) + (v20 << 6);
      }

      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v3 + 48) + 8 * v10) = v16;
      ++*(v3 + 16);
    }

    v13 = v4 << 6;
    while (1)
    {
      v14 = v4 + 1;
      if (v4 + 1 >= v8)
      {
        break;
      }

      v15 = *(v1 + 8 * v4 + 64);
      v13 += 64;
      ++v4;
      if (v15)
      {
        v7 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) + v13;
        v4 = v14;
        goto LABEL_14;
      }
    }
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AF716D90()
{
  v1 = v0;
  v34 = sub_1AFDFC318();
  v2 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1AF719BCC();
  v6 = sub_1AFDFE198();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    v30 = (v2 + 32);
    v31 = v2 + 16;
    v14 = v2;
    v32 = v2;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(v14 + 72);
      (*(v14 + 16))(v33, *(v5 + 48) + v21 * v17, v34);
      sub_1AF7193F0(&qword_1EB633A20, MEMORY[0x1E69695A8]);
      v22 = sub_1AFDFCCF8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v15 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v30)(*(v7 + 48) + v15 * v21, v33, v34);
      ++*(v7 + 16);
      v14 = v32;
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 64);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    v1 = v29;
  }

  else
  {
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1AF717084(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1AFDFCB28();
  v42 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(a6 + 128))(a5, a6, v13);
  if (!v15 || (v16 = v15, swift_unknownObjectRelease(), v16 != a3) || (*(a4 + 393) & 1) == 0 && *(a4 + 395) != 1 && (*(a4 + 396) & 1) == 0)
  {
    if (qword_1ED72E180 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED73B850;
    os_unfair_lock_lock(*(qword_1ED73B850 + 40));
    if (sub_1AF702754(a3, *(v17 + 48)))
    {
      os_unfair_lock_unlock(*(v17 + 40));
    }

    else
    {
      swift_unknownObjectRetain();
      v40 = v11;
      sub_1AF70DCE8(&v52, a3);
      swift_unknownObjectRelease();
      os_unfair_lock_unlock(*(v17 + 40));
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a3;
      *&v54 = sub_1AF719CCC;
      *(&v54 + 1) = v18;
      *&v52 = MEMORY[0x1E69E9820];
      *(&v52 + 1) = 1107296256;
      *&v53 = sub_1AF719CC4;
      *(&v53 + 1) = &unk_1F2537D28;
      v19 = _Block_copy(&v52);
      swift_unknownObjectRetain();

      v11 = v40;

      [a3 addScheduledHandler_];
      _Block_release(v19);
    }
  }

  v20 = *(a4 + 280);
  v21 = *(v20 + 16);
  if (v21)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF6F37F0();
    [v21 commit];
    swift_unknownObjectRelease();
    *(v20 + 16) = a3;
    swift_unknownObjectRelease();
    if (*(a4 + 393))
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(v20 + 16) = a3;
    v22 = *(a4 + 393);
    swift_unknownObjectRetain();
    if (v22)
    {
      goto LABEL_18;
    }
  }

  if (*(a4 + 395) != 1 && (*(a4 + 396) & 1) == 0)
  {
    v23 = v41;
    sub_1AFDFCB08();
    sub_1AFDFDBA8();
    (*(v42 + 8))(v23, v11);
  }

LABEL_18:
  *(a4 + 288) = (*(a6 + 96))(a5, a6);
  *(a4 + 352) = *(a4 + 448);
  *(a4 + 240) = 1;

  v25 = sub_1AFB2EB3C(v24, a4);
  v27 = v26;
  v28 = CACurrentMediaTime();
  if (v27)
  {
    v29 = 0xFFFFFFFFLL;
  }

  else
  {
    v29 = v25;
  }

  sub_1AFB2F7B0(v29, v61);
  *&v43 = a2;
  *(&v43 + 1) = a6;
  *&v44 = v28;
  *(&v44 + 1) = a3;
  LOBYTE(v45) = 0;
  v46 = v61[0];
  v47 = v61[1];
  v48 = v61[2];
  v49 = v61[3];
  v50 = v61[4];
  v51[0] = v61[5];
  *&v51[1] = 0;
  BYTE8(v51[1]) = 0;
  nullsub_106();
  v30 = *(a4 + 656);
  v58 = *(a4 + 640);
  v59 = v30;
  v60[0] = *(a4 + 672);
  *(v60 + 9) = *(a4 + 681);
  v31 = *(a4 + 592);
  v54 = *(a4 + 576);
  v55 = v31;
  v32 = *(a4 + 624);
  v56 = *(a4 + 608);
  v57 = v32;
  v33 = *(a4 + 560);
  v52 = *(a4 + 544);
  v53 = v33;
  v34 = v50;
  *(a4 + 640) = v49;
  *(a4 + 656) = v34;
  *(a4 + 672) = v51[0];
  *(a4 + 681) = *(v51 + 9);
  v35 = v46;
  *(a4 + 576) = v45;
  *(a4 + 592) = v35;
  v36 = v48;
  *(a4 + 608) = v47;
  *(a4 + 624) = v36;
  v37 = v44;
  *(a4 + 544) = v43;
  *(a4 + 560) = v37;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1AF70D3FC(&v52, &unk_1ED730830, &type metadata for Renderer.CurrentRenderContext, MEMORY[0x1E69E6720], sub_1AF0D96E0);
}

void sub_1AF717520(void *a1)
{
  [a1 presentedTime];

  prof_commit();
}

uint64_t sub_1AF717554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v54 = a3;
  sub_1AF718404(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v49 - v8;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4478(0, &qword_1ED7307E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v55 = a1;
  v56 = a2;
  v17 = sub_1AFDFCEC8();
  v18 = sub_1AFDFCEC8();
  v19 = [v16 pathForResource:v17 ofType:v18];

  if (!v19)
  {

    return 0;
  }

  v51 = v16;
  sub_1AFDFCEF8();
  v21 = v20;

  CFXTextureDescriptorMakeDefault(&v66);
  *(v63 + 7) = v66;
  *(&v63[1] + 7) = v67;
  *v65 = 0;
  v64 = 0uLL;
  v65[8] = 0;
  *&v65[9] = v63[0];
  *&v65[24] = *(v63 + 15);
  *&v65[40] = MEMORY[0x1E69E7CC0];
  v50 = v21;
  sub_1AFDFC018();
  v52 = v3;
  v22 = *(v3 + 16);
  v23 = sub_1AFDFC148();
  v25 = v24;
  (*(v11 + 16))(v9, v14, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_1AF465864(v23, v25, v9, v54, v22);
  sub_1AF439ED8(v23, v25);
  sub_1AF70D3FC(v9, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF718404);
  (*(v11 + 8))(v14, v10);
  v26 = v64;
  if (v64)
  {
    v57 = *&v65[16];
    v27 = *(&v64 + 1);
    *&v58 = *&v65[32];
    swift_unknownObjectRetain();
    v28 = CFXGPUDeviceCreateTexture(v22, &v57);
    if (v28)
    {
      v29 = v28;

      v30 = sub_1AFDFCEC8();
      [v29 setLabel_];

      type metadata accessor for CommandBufferHelper();
      swift_initStackObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v31 = swift_unknownObjectRetain();
      v32 = sub_1AF0D82B4(v31, 0xD000000000000014, 0x80000001AFF31850);
      swift_unknownObjectRelease();
      swift_retain_n();
      v52 = v32;
      v33 = sub_1AF6F3F0C();
      v34 = sub_1AFDFCEC8();
      [v33 pushDebugGroup_];

      v35 = sub_1AF6F3BD8();
      v36 = *&v65[40];
      v37 = *(*&v65[40] + 16);
      if (v37)
      {
        v50 = v35;

        v49[1] = v36;
        v38 = (v36 + 48);
        v53 = v29;
        do
        {
          v40 = *(v38 - 2);
          v39 = *(v38 - 1);
          v55 = *v38;
          v56 = v39;
          v54 = *(v38 + 1);
          v41 = v26;
          v43 = v38[3];
          v42 = v38[4];
          v44 = v38[5];
          sub_1AF477C5C(&v57);
          v45 = v58;
          v46 = v57;
          v57 = v54;
          *&v58 = v43;
          v26 = v41;
          v61 = v46;
          v62 = v45;
          v47 = v41;
          v29 = v53;
          [v33 copyFromBuffer:v47 sourceOffset:v40 + v27 sourceBytesPerRow:v56 sourceBytesPerImage:v55 sourceSize:&v57 toTexture:v53 destinationSlice:v42 destinationLevel:v44 destinationOrigin:&v61];
          v38 += 8;
          --v37;
        }

        while (v37);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      [v33 popDebugGroup];

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v57 = v64;
      v58 = *v65;
      v59 = *&v65[16];
      v60 = *&v65[32];
      sub_1AF478A6C(&v57);
      return v29;
    }
  }

  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF717C84()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 48);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  if (*(v3 + 16))
  {
    v4 = sub_1AF419914(0xD000000000000012, 0x80000001AFF31870);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v7 = *(v1 + 48);
      swift_unknownObjectRetain();
      v8 = v7;
LABEL_8:
      os_unfair_lock_unlock(v8);

      return v6;
    }
  }

  if (qword_1EB6371B0 != -1)
  {
    swift_once();
  }

  v14[0] = xmmword_1EB6C3278;
  v14[1] = unk_1EB6C3288;
  v15[0] = xmmword_1EB6C3298;
  *(v15 + 10) = *(&xmmword_1EB6C3298 + 10);
  v9 = sub_1AF717554(0xD000000000000012, 0x80000001AFF31870, v14);
  if (v9)
  {
    v6 = v9;
    v10 = sub_1AFDFCEC8();
    [v6 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 80);
    *(v1 + 80) = 0x8000000000000000;
    sub_1AF851F78(v6, 0xD000000000000012, 0x80000001AFF31870, isUniquelyReferenced_nonNull_native);
    *(v1 + 80) = v13;
    v8 = *(v1 + 48);
    goto LABEL_8;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF31870);
  MEMORY[0x1B2718AE0](0x646E7542206E6920, 0xEA0000000000656CLL);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF717EC0()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 48);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  if (*(v3 + 16))
  {
    v4 = sub_1AF419914(0xD000000000000014, 0x80000001AFF31790);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v7 = *(v1 + 48);
      swift_unknownObjectRetain();
      v8 = v7;
LABEL_8:
      os_unfair_lock_unlock(v8);

      return v6;
    }
  }

  if (qword_1EB6371B0 != -1)
  {
    swift_once();
  }

  v14[0] = xmmword_1EB6C3278;
  v14[1] = unk_1EB6C3288;
  v15[0] = xmmword_1EB6C3298;
  *(v15 + 10) = *(&xmmword_1EB6C3298 + 10);
  v9 = sub_1AF717554(0xD000000000000014, 0x80000001AFF31790, v14);
  if (v9)
  {
    v6 = v9;
    v10 = sub_1AFDFCEC8();
    [v6 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 80);
    *(v1 + 80) = 0x8000000000000000;
    sub_1AF851F78(v6, 0xD000000000000014, 0x80000001AFF31790, isUniquelyReferenced_nonNull_native);
    *(v1 + 80) = v13;
    v8 = *(v1 + 48);
    goto LABEL_8;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF31790);
  MEMORY[0x1B2718AE0](0x646E7542206E6920, 0xEA0000000000656CLL);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF7180FC()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    sub_1AFDFE218();

    v2 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v2);

    sub_1AF6F3AA8(0xD00000000000001BLL, 0x80000001AFF31770);

    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_1AF7181C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = result;
  a4[4] = a2;
  a4[5] = a3;
  return result;
}

uint64_t sub_1AF7181D8()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 48);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  if (*(v3 + 16))
  {
    v4 = sub_1AF419914(0x46445242584656, 0xE700000000000000);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      v7 = *(v1 + 48);
      swift_unknownObjectRetain();
      v8 = v7;
LABEL_8:
      os_unfair_lock_unlock(v8);

      return v6;
    }
  }

  if (qword_1ED7255E8 != -1)
  {
    swift_once();
  }

  v14[0] = xmmword_1ED73B4D8;
  v14[1] = unk_1ED73B4E8;
  v15[0] = xmmword_1ED73B4F8;
  *(v15 + 10) = *(&xmmword_1ED73B4F8 + 10);
  v9 = sub_1AF717554(0x46445242584656, 0xE700000000000000, v14);
  if (v9)
  {
    v6 = v9;
    v10 = sub_1AFDFCEC8();
    [v6 setLabel_];

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 80);
    *(v1 + 80) = 0x8000000000000000;
    sub_1AF851F78(v6, 0x46445242584656, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    *(v1 + 80) = v13;
    v8 = *(v1 + 48);
    goto LABEL_8;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x46445242584656, 0xE700000000000000);
  MEMORY[0x1B2718AE0](0x646E7542206E6920, 0xEA0000000000656CLL);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF718404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF718468(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3);
    sub_1AF43BD80(a5, a3);
    v8 = sub_1AFDFE1C8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 sub_1AF7184F4@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1[OBJC_IVAR___VFXSceneLoadOptions_isVFX2];
  v19 = a1[OBJC_IVAR___VFXSceneLoadOptions_isRenderingInRE];
  if (v19 == 1)
  {
    v4 = qword_1EB63E310;
    sub_1AF0D96E0(0, &unk_1ED730B60, &type metadata for RenderVariantDescriptor, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    v6 = v5;
    *(v5 + 16) = xmmword_1AFE4C5F0;
    *(v5 + 32) = 1025;
    *(v5 + 40) = 115;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0;
    *(v5 + 104) = xmmword_1AFE72A70;
    *(v5 + 120) = 4;
    *(v5 + 128) = 3073;
    *(v5 + 136) = 115;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0;
    *(v5 + 200) = xmmword_1AFE72A70;
    *(v5 + 216) = 4;
    if (v4 >= 0x2540BE40ALL)
    {
      v7 = 5121;
    }

    else
    {
      v7 = 1029;
    }

    *(v5 + 224) = v7;
    *(v5 + 232) = 115;
    *(v5 + 256) = 0uLL;
    *(v5 + 272) = 0uLL;
    *(v5 + 240) = 0uLL;
    *(v5 + 288) = 0;
    *(v5 + 296) = 252;
    *(v5 + 304) = 253;
    *(v5 + 312) = 4;
    *(v5 + 320) = 1089;
    *(v5 + 328) = 81;
    *(v5 + 336) = 0uLL;
    *(v5 + 352) = 0uLL;
    *(v5 + 368) = 0uLL;
    *(v5 + 384) = 0;
    *(v5 + 392) = 252;
    *(v5 + 400) = 253;
    v8 = 1;
    *(v5 + 408) = 1;
    *(v5 + 416) = 3137;
    *(v5 + 424) = 81;
    *(v5 + 448) = 0uLL;
    *(v5 + 464) = 0uLL;
    *(v5 + 432) = 0uLL;
    *(v5 + 480) = 0;
    *(v5 + 488) = 252;
    *(v5 + 496) = 253;
    *(v5 + 504) = 1;
    *(v5 + 512) = v7 | 0x40;
    *(v5 + 520) = 81;
    *(v5 + 528) = 0uLL;
    *(v5 + 544) = 0uLL;
    *(v5 + 560) = 0uLL;
    *(v5 + 576) = 0;
    *(v5 + 584) = 252;
    *(v5 + 592) = 253;
    *(v5 + 600) = 1;
    *(v5 + 608) = 1025;
    *(v5 + 616) = 81;
    *(v5 + 672) = 0;
    *(v5 + 640) = 0uLL;
    *(v5 + 656) = 0uLL;
    *(v5 + 624) = 0uLL;
    *(v5 + 680) = 252;
    *(v5 + 688) = 253;
    *(v5 + 696) = 4;
    *(v5 + 704) = 3073;
    *(v5 + 712) = 81;
    *(v5 + 768) = 0;
    *(v5 + 736) = 0uLL;
    *(v5 + 752) = 0uLL;
    *(v5 + 720) = 0uLL;
    *(v5 + 776) = 252;
    *(v5 + 784) = 253;
    *(v5 + 792) = 4;
  }

  else if (a1[OBJC_IVAR___VFXSceneLoadOptions_isVFX2])
  {
    v6 = &unk_1F25006B8;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = (a1[OBJC_IVAR___VFXSceneLoadOptions_enableDeferredRendering] != 2) & (a1[OBJC_IVAR___VFXSceneLoadOptions_enableDeferredRendering] ^ 1);
  }

  v9 = *&a1[OBJC_IVAR___VFXSceneLoadOptions_colorPixelFormat];
  v52 = v9 == 0;
  v10 = *&a1[OBJC_IVAR___VFXSceneLoadOptions_depthPixelFormat];
  v50 = v10 == 0;
  v11 = a1[OBJC_IVAR___VFXSceneLoadOptions_internalPixelFormatDepth];
  v12 = a1[OBJC_IVAR___VFXSceneLoadOptions_useGammaBlending];
  if (v11 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 == 1;
  }

  v14 = a1[OBJC_IVAR___VFXSceneLoadOptions_doNotClearRenderOutput];

  v48 = 0;
  v15 = 1;
  if (!v14)
  {
    v15 = 2;
  }

  LOBYTE(v21) = v8;
  BYTE1(v21) = v19;
  WORD1(v21) = 0;
  BYTE4(v21) = v18;
  *(&v21 + 1) = v9;
  v22.n128_u8[0] = v52;
  v22.n128_u64[1] = v10;
  LOBYTE(v23) = v50;
  *(&v23 + 1) = v15;
  LOBYTE(v24) = 0;
  BYTE1(v24) = v13;
  *(&v24 + 1) = 260;
  LOBYTE(v25) = v12;
  *(&v25 + 1) = v6;
  v26[0] = v8;
  v26[1] = v19;
  v27 = 0;
  v28 = v18;
  v29 = v53;
  v30 = v54;
  v31 = v9;
  v32 = v52;
  *v33 = *v51;
  *&v33[3] = *&v51[3];
  v34 = v10;
  v35 = v50;
  *&v36[3] = *&v49[3];
  *v36 = *v49;
  v37 = v15;
  v38 = 0;
  v39 = v13;
  v41 = v47;
  v40 = *&v46[7];
  v42 = 260;
  v43 = v12;
  *&v44[3] = *&v46[3];
  *v44 = *v46;
  v45 = v6;
  sub_1AF70D104(&v21, v20);
  sub_1AF70D13C(v26);
  v16 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v16;
  *(a2 + 64) = v25;
  result = v22;
  *a2 = v21;
  *(a2 + 16) = result;
  return result;
}

void sub_1AF7188C4(void *a1, uint64_t a2)
{
  v12 = j__prof_commit;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AF719CC4;
  v11 = &unk_1F2537C10;
  v4 = _Block_copy(&v8);

  [a1 addScheduledHandler_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v12 = sub_1AF7197DC;
  v13 = v6;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AF719CC4;
  v11 = &unk_1F2537C88;
  v7 = _Block_copy(&v8);

  [a1 addCompletedHandler_];
  _Block_release(v7);
}

id sub_1AF718A48(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && ([*(v3 + 16) isDrawableAvailable] & 1) == 0)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v13 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v17 = v13;
      swift_once();
      v13 = v17;
    }

    v18[0] = 0;
    v15 = 0xD00000000000003ELL;
    v14 = 0x80000001AFF31960;
    goto LABEL_18;
  }

  v6 = [*(v3 + 16) nextDrawable];
  if (!v6)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v13 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v16 = v13;
      swift_once();
      v13 = v16;
    }

    v18[0] = 0;
    v14 = 0x80000001AFF31940;
    v15 = 0xD000000000000019;
LABEL_18:
    sub_1AF0D4F18(v13, v18, v15, v14);
    return 0;
  }

  v7 = v6;
  if (*(v3 + 96))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 88);
  }

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = v8;
  v18[4] = sub_1AF718CE0;
  v18[5] = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1AF719CC4;
  v18[3] = &unk_1F2537B70;
  v10 = _Block_copy(v18);
  swift_unknownObjectRetain();

  [a1 addScheduledHandler_];
  _Block_release(v10);
  v11 = [v7 texture];
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1AF718CEC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    v3 = *(v2 + 16);

    if (v3)
    {
      swift_unknownObjectRetain();
      sub_1AF6F37F0();
      [v3 commit];
      swift_unknownObjectRelease();
      *(v2 + 16) = 0;
      swift_unknownObjectRelease();
    }

    v4 = *(v1 + 528);
    v5 = *(v4 + 16);
    if (v5)
    {
      swift_unknownObjectRetain();
      sub_1AF6F37F0();
      [v5 commit];
      swift_unknownObjectRelease();
      *(v4 + 16) = 0;

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF718DE4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    v3 = *(v2 + 16);
    swift_retain_n();
    if (v3)
    {
      swift_unknownObjectRetain();
      sub_1AF6F37F0();
      [v3 commit];
      swift_unknownObjectRelease();
      *(v2 + 16) = 0;
      swift_unknownObjectRelease();
    }

    v4 = *(v1 + 528);
    v5 = *(v4 + 16);
    if (v5)
    {
      swift_unknownObjectRetain();
      sub_1AF6F37F0();
      [v5 commit];
      swift_unknownObjectRelease();
      *(v4 + 16) = 0;

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (*(*(v1 + 280) + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1AF473E3C();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_1AF718FD4()
{
  type metadata accessor for MockRenderOutput();
  v0 = swift_allocObject();
  *&v1 = 0xFFFFFFFFLL;
  *(&v1 + 1) = 0xFFFFFFFFLL;
  __asm { FMOV            V1.2D, #16.0 }

  *(v0 + 16) = v1;
  *(v0 + 32) = _Q1;
  *(v0 + 64) = 0x3FF0000000000000;
  *(v0 + 72) = 0;
  *(v0 + 76) = 2;
  *(v0 + 130) = 0;
  *(v0 + 80) = xmmword_1AFE72A80;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *&result = 71;
  *(v0 + 48) = xmmword_1AFE72A90;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t sub_1AF719044(unint64_t a1)
{
  v2 = 4 * a1;
  if (v1[90])
  {
    if (v1[92] >= v2)
    {
      return v1[90];
    }
  }

  else if (v2 < 1)
  {
    return v1[90];
  }

  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v1[2], v2, 0);
  if (BufferWithLength)
  {
    v5 = BufferWithLength;
    v6 = sub_1AFDFCEC8();
    [v5 setLabel_];

    if ([swift_unknownObjectRetain() storageMode] == 2)
    {
      swift_unknownObjectRelease_n();
      return v1[90];
    }

    v10 = [v5 contents];
    v11 = v5;
    if (a1)
    {
      if (a1 > 7)
      {
        v12 = a1 & 0xFFFFFFFFFFFFFFF8;
        v13 = xmmword_1AFE202E0;
        v14 = v10 + 1;
        v15.i64[0] = 0x400000004;
        v15.i64[1] = 0x400000004;
        v16.i64[0] = 0x800000008;
        v16.i64[1] = 0x800000008;
        v17 = a1 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v14[-1] = v13;
          *v14 = vaddq_s32(v13, v15);
          v13 = vaddq_s32(v13, v16);
          v14 += 2;
          v17 -= 8;
        }

        while (v17);
        if (v12 == a1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v10->i32[v12] = v12;
        ++v12;
      }

      while (a1 != v12);
    }

LABEL_20:
    v1[90] = v5;
    v1[91] = 0;
    v1[92] = v2;
    swift_unknownObjectRelease();
    return v1[90];
  }

  v7 = v1;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v20[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF31AC0);
  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v8 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v9 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v19 = v9;
    swift_once();
    v9 = v19;
  }

  v20[0] = 0;
  sub_1AF0D4F18(v9, v20, 0, 0xE000000000000000);

  v1 = v7;
  return v1[90];
}

void sub_1AF71935C()
{
  if (!qword_1EB630C68)
  {
    type metadata accessor for VFXTriggerType(255);
    sub_1AF7193F0(&qword_1EB630D10, type metadata accessor for VFXTriggerType);
    v0 = sub_1AFDFE1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630C68);
    }
  }
}

uint64_t sub_1AF7193F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF719438()
{
  if (!qword_1ED72C1E8)
  {
    v0 = MEMORY[0x1E69E74A8];
    sub_1AF719AD0(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF719508(&unk_1ED72F720, &qword_1ED72F6E0, v0);
    v1 = type metadata accessor for BasicAnimation();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72C1E8);
    }
  }
}

uint64_t sub_1AF719508(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF719AD0(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF71956C()
{
  if (!qword_1ED72C1F8)
  {
    v0 = MEMORY[0x1E69E7450];
    sub_1AF719AD0(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF719508(&qword_1ED72F760, &qword_1ED72F740, v0);
    v1 = type metadata accessor for BasicAnimation();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72C1F8);
    }
  }
}

void sub_1AF71963C()
{
  if (!qword_1ED72C200)
  {
    v0 = MEMORY[0x1E69E7428];
    sub_1AF719AD0(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF719508(&qword_1ED72F7A0, &unk_1ED72F770, v0);
    v1 = type metadata accessor for BasicAnimation();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72C200);
    }
  }
}

void sub_1AF71970C()
{
  if (!qword_1ED72FDC0)
  {
    v0 = MEMORY[0x1E69E7428];
    sub_1AF719AD0(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF719508(&qword_1ED72F7A0, &unk_1ED72F770, v0);
    v1 = type metadata accessor for KeyframeAnimation();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72FDC0);
    }
  }
}

unint64_t sub_1AF719808()
{
  result = qword_1EB63DB58;
  if (!qword_1EB63DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DB58);
  }

  return result;
}

void sub_1AF71985C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AF7198B0()
{
  result = qword_1ED726BD0;
  if (!qword_1ED726BD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED726BD0);
  }

  return result;
}

unint64_t sub_1AF719914()
{
  result = qword_1EB63DC20;
  if (!qword_1EB63DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DC20);
  }

  return result;
}

unint64_t sub_1AF719968()
{
  result = qword_1EB63DC30;
  if (!qword_1EB63DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DC30);
  }

  return result;
}

unint64_t sub_1AF7199BC()
{
  result = qword_1EB632B90;
  if (!qword_1EB632B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632B90);
  }

  return result;
}

unint64_t sub_1AF719A10()
{
  result = qword_1EB631E30;
  if (!qword_1EB631E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631E30);
  }

  return result;
}

void sub_1AF719A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF719AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF719B38()
{
  result = qword_1ED72E198;
  if (!qword_1ED72E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72E198);
  }

  return result;
}

uint64_t sub_1AF719B8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1AF719BCC()
{
  if (!qword_1EB63DC48)
  {
    sub_1AFDFC318();
    sub_1AF7193F0(&qword_1EB633A20, MEMORY[0x1E69695A8]);
    v0 = sub_1AFDFE1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63DC48);
    }
  }
}

void sub_1AF719D88()
{
  v1 = CFRunLoopGetCurrent();
  v2 = OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_currentRunloop;
  v3 = *&v0[OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_currentRunloop];
  *&v0[OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_currentRunloop] = v1;
  v4 = v1;

  v5 = *&v0[OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_runloopSource];
  v6 = *MEMORY[0x1E695E8D0];
  CFRunLoopAddSource(v4, v5, *MEMORY[0x1E695E8D0]);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = v4;
  v13[4] = sub_1AF71A468;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AF719F98;
  v13[3] = &unk_1F24E5F88;
  v8 = _Block_copy(v13);
  v9 = v4;
  v10 = v0;

  v11 = CFRunLoopObserverCreateWithHandler(0, 1uLL, 0, 0, v8);
  _Block_release(v8);
  CFRunLoopAddObserver(v9, v11, v6);
  CFRunLoopRun();
  CFRunLoopRemoveObserver(v9, v11, v6);
  CFRunLoopRemoveSource(v9, v5, v6);

  v12 = *&v0[v2];
  *&v0[v2] = 0;
}

void sub_1AF719F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_startedCallback);
  if (v4)
  {

    v4(a4);

    sub_1AF0FB8EC(v4);
  }
}

void sub_1AF719F98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

id sub_1AF71A058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunloopThread.Thread();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AF71A0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  v6 = [objc_allocWithZone(type metadata accessor for RunloopThread.Thread()) init];
  *(v4 + 16) = v6;
  v7 = v6;
  v8 = sub_1AFDFCEC8();

  [v7 setName_];

  [*(v4 + 16) setQualityOfService_];
  v9 = dispatch_semaphore_create(0);
  v10 = *(v4 + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v13 = &v10[OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_startedCallback];
  v14 = *&v10[OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_startedCallback];
  *v13 = sub_1AF71A488;
  v13[1] = v12;
  v15 = v9;

  sub_1AF0FB8EC(v14);
  [v10 start];

  sub_1AFDFDBB8();

  return v4;
}

uint64_t sub_1AF71A26C()
{
  CFRunLoopStop(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF71A2D8(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);
    *(Strong + 24) = a1;
    v4 = a1;
  }

  return sub_1AFDFDBC8();
}

void sub_1AF71A330(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *MEMORY[0x1E695E8E0];
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1AFCDA044;
  v10[3] = &unk_1F2537DC8;
  v5 = _Block_copy(v10);
  v6 = v3;

  CFRunLoopPerformBlock(v6, v4, v5);
  _Block_release(v5);

  v7 = *(v2 + 16);
  v8 = *(v7 + OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_currentRunloop);
  if (v8)
  {
    v9 = v8;
    if (CFRunLoopIsWaiting(v9))
    {
      CFRunLoopSourceSignal(*(v7 + OBJC_IVAR____TtCC3VFX13RunloopThreadP33_C5453D25073BE51EF98804DB40F9E2866Thread_runloopSource));
      CFRunLoopWakeUp(v9);
    }
  }
}

uint64_t sub_1AF71A470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF71A498(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1AFC07484(0, v2, 0);
  v5 = 0;
  v3 = v42;
  v6 = 1 << *(v4 + 32);
  v7 = (v6 + 63) >> 6;
  v36 = v4 + 64;
  v8 = (v4 + 64);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (v10)
    {
      break;
    }

    v5 -= 64;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  v6 = __clz(__rbit64(v9)) - v5;
LABEL_7:
  v11 = 0;
  v35 = v4 + 72;
  v37 = v2;
  while (1)
  {
    v38 = *(v4 + 36);
    v14 = v4;
    v15 = (*(v4 + 48) + 40 * v6);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    v39[0] = *v15;
    v39[1] = v16;
    v39[2] = v17;
    v39[3] = v18;
    v39[4] = v19;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1AF71D444(v39, v40);
    if (v1)
    {
      break;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v20 = v40[0];
    v21 = v40[1];
    v22 = v40[2];
    v23 = v41;
    v42 = v3;
    v25 = *(v3 + 16);
    v24 = *(v3 + 24);
    if (v25 >= v24 >> 1)
    {
      v34 = v41;
      sub_1AFC07484(v24 > 1, v25 + 1, 1);
      v23 = v34;
      v3 = v42;
    }

    *(v3 + 16) = v25 + 1;
    v26 = v3 + 40 * v25;
    *(v26 + 32) = v20;
    *(v26 + 40) = v21;
    *(v26 + 48) = v22;
    *(v26 + 56) = v23;
    v27 = v6 >> 6;
    if ((*(v36 + 8 * (v6 >> 6)) & (-2 << v6)) != 0)
    {
      v12 = __clz(__rbit64(*(v36 + 8 * (v6 >> 6)) & (-2 << v6))) | v6 & 0xFFFFFFFFFFFFFFC0;
      v4 = v14;
      v13 = v37;
    }

    else
    {
      v4 = v14;
      v12 = 1 << *(v14 + 32);
      v28 = v27 << 6;
      v29 = v27 + 1;
      v30 = (v35 + 8 * v27);
      v13 = v37;
      while (v29 < (v12 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_1AF0FBAE8(v6, v38, 0);
          v12 = __clz(__rbit64(v31)) + v28;
          goto LABEL_9;
        }
      }

      sub_1AF0FBAE8(v6, v38, 0);
    }

LABEL_9:
    ++v11;
    v6 = v12;
    v1 = 0;
    if (v11 == v13)
    {
      return v3;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __break(1u);
  return result;
}

uint64_t sub_1AF71A73C()
{
  v1 = 1010;
  if (([v0 supportsFamily_] & 1) == 0)
  {
    v1 = 1009;
    if (([v0 supportsFamily_] & 1) == 0)
    {
      v1 = 1008;
      if (([v0 supportsFamily_] & 1) == 0)
      {
        v1 = 1007;
        if (([v0 supportsFamily_] & 1) == 0)
        {
          v1 = 1006;
          if (([v0 supportsFamily_] & 1) == 0)
          {
            v1 = 1005;
            if (([v0 supportsFamily_] & 1) == 0)
            {
              v1 = 1004;
              if (([v0 supportsFamily_] & 1) == 0)
              {
                v1 = 1003;
                if (([v0 supportsFamily_] & 1) == 0)
                {
                  v1 = 1002;
                  if (([v0 supportsFamily_] & 1) == 0)
                  {
                    v1 = 1001;
                    if (![v0 supportsFamily_])
                    {
                      return 3001;
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

  return v1;
}

id sub_1AF71A860(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC3VFX13ShaderArchive_lock];
  v4 = swift_slowAlloc();
  *v4 = 0;
  *v3 = "lock ShaderCache";
  *(v3 + 1) = 16;
  v3[16] = 2;
  *(v3 + 3) = v4;
  v5 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC3VFX13ShaderArchive_libraries] = MEMORY[0x1E69E7CD0];
  v6 = OBJC_IVAR____TtC3VFX13ShaderArchive_specializedFunctions;
  v7 = MEMORY[0x1E69E7CC0];
  *&v1[v6] = sub_1AF43AFA0(MEMORY[0x1E69E7CC0]);
  v8 = OBJC_IVAR____TtC3VFX13ShaderArchive_functions;
  *&v1[v8] = sub_1AF43B0A0(v7);
  v9 = OBJC_IVAR____TtC3VFX13ShaderArchive_renderPipelines;
  if (v7 >> 62)
  {
    if (sub_1AFDFE108())
    {
      v11 = sub_1AFAE6934(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    *&v1[v9] = v11;
    if (sub_1AFDFE108())
    {
      v12 = sub_1AFAE6958(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CD0];
    }

    *&v1[OBJC_IVAR____TtC3VFX13ShaderArchive_meshRenderPipelines] = v12;
    if (sub_1AFDFE108())
    {
      v5 = sub_1AFAE6C38(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    *&v1[OBJC_IVAR____TtC3VFX13ShaderArchive_renderPipelines] = v5;
    *&v1[OBJC_IVAR____TtC3VFX13ShaderArchive_meshRenderPipelines] = v5;
  }

  *&v1[OBJC_IVAR____TtC3VFX13ShaderArchive_computePipelines] = v5;
  *&v1[OBJC_IVAR____TtC3VFX13ShaderArchive_family] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ShaderArchive();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1AF71A9E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1AF7277CC(0, &qword_1EB63DD20, sub_1AF721C2C, &type metadata for ShaderArchive.Library.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF721C2C();
  sub_1AFDFF3F8();
  v16 = 0;
  v12 = v14[3];
  sub_1AFDFE8B8();
  if (!v12)
  {
    v15 = 1;
    sub_1AFDFE8B8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF71AB84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1752457584;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1752457584;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF71AC20()
{
  if (*v0)
  {
    return 1752457584;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1AF71AC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF71AD28(uint64_t a1)
{
  v2 = sub_1AF721C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71AD64(uint64_t a1)
{
  v2 = sub_1AF721C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71ADA0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71AE08()
{
  sub_1AFDFD038();

  return sub_1AFDFD038();
}

uint64_t sub_1AF71AE58()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71AEDC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AFDFEE28(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1AFDFEE28();
    }
  }

  return result;
}

uint64_t sub_1AF71AF80()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13ShaderArchive_functions);
  v9 = MEMORY[0x1E69E7CC0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6++ + 72);
    if (v4)
    {
      while (1)
      {
        v4 &= v4 - 1;
        if ([swift_unknownObjectRetain() functionType] == 5)
        {
          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v6 = v7;
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v6 = v7;
          if (!v4)
          {
            goto LABEL_6;
          }
        }

LABEL_9:
        v7 = v6;
      }
    }
  }

  return v9;
}

uint64_t sub_1AF71B0D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13ShaderArchive_functions);
  v9 = MEMORY[0x1E69E7CC0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6++ + 72);
    if (v4)
    {
      while (1)
      {
        v4 &= v4 - 1;
        if ([swift_unknownObjectRetain() functionType] == 6)
        {
          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v6 = v7;
          if (!v4)
          {
            goto LABEL_6;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v6 = v7;
          if (!v4)
          {
            goto LABEL_6;
          }
        }

LABEL_9:
        v7 = v6;
      }
    }
  }

  return v9;
}

uint64_t sub_1AF71B2EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX13ShaderArchive_functions);
  if (*(v4 + 16))
  {

    v5 = sub_1AF419E2C(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      swift_unknownObjectRetain();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v3);
  return v7;
}

void sub_1AF71B388(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC3VFX13ShaderArchive_lock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24));
  v6 = OBJC_IVAR____TtC3VFX13ShaderArchive_functions;
  if (!*(*(v2 + OBJC_IVAR____TtC3VFX13ShaderArchive_functions) + 16) || (, sub_1AF419E2C(a2), v8 = v7, , (v8 & 1) == 0) || !*(*(v2 + OBJC_IVAR____TtC3VFX13ShaderArchive_specializedFunctions) + 16) || (sub_1AF0D3F10(a1), (v9 & 1) == 0))
  {
    v22 = a1;
    v11 = 0x746C7561666564;
    v12 = *(a2 + 24);
    v27 = v12;
    if (v12 && (v13 = [v12 label]) != 0)
    {
      v14 = v13;
      v11 = sub_1AFDFCEF8();
      v16 = v15;

      if (v11 == 0x616665642D786676 && v16 == 0xEB00000000746C75)
      {
LABEL_19:

        v24 = *a2;
        v18 = *(a2 + 16);
        v25 = *(a2 + 32);
        v26 = v18;
        sub_1AF450FE0(&v24, v23);
        sub_1AF7237BC(&v26, v23, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
        sub_1AF7237BC(&v27, v23, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);
        sub_1AF7238A8(&v25, v23);
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23[0] = *(v2 + v6);
        *(v2 + v6) = 0x8000000000000000;
        sub_1AF8535C4(v22, a2, isUniquelyReferenced_nonNull_native);
        sub_1AF585778(&v24);
        sub_1AF72391C(&v26, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
        sub_1AF72391C(&v27, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);
        sub_1AF72398C(&v25);
        *(v2 + v6) = v23[0];
        v20 = OBJC_IVAR____TtC3VFX13ShaderArchive_specializedFunctions;
        sub_1AF450FE0(&v24, v23);
        sub_1AF7237BC(&v26, v23, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
        sub_1AF7237BC(&v27, v23, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);
        sub_1AF7238A8(&v25, v23);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v23[0] = *(v2 + v20);
        *(v2 + v20) = 0x8000000000000000;
        sub_1AF85344C(a2, v22, v21);
        *(v2 + v20) = v23[0];
        os_unfair_lock_unlock(*(v5 + 24));
        return;
      }
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    if ((sub_1AFDFEE28() & 1) == 0)
    {
      sub_1AF70D45C(&v24, v11, v16, 0xD000000000000010, 0x80000001AFF31CF0);
    }

    goto LABEL_19;
  }

  v10 = *(v5 + 24);

  os_unfair_lock_unlock(v10);
}

void sub_1AF71B74C(char *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id *, id))
{
  v7 = &a1[OBJC_IVAR____TtC3VFX13ShaderArchive_lock];
  v8 = *&a1[OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24];
  v9 = a3;
  v11 = a1;
  os_unfair_lock_lock(v8);
  v10 = v9;
  a5(&v12, v10);

  os_unfair_lock_unlock(v7[3]);
}

uint64_t sub_1AF71B800(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13ShaderArchive_specializedFunctions);
  if (*(v3 + 16) && (v4 = sub_1AF0D3F10(a1), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 40 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1AF87E644(v9);
    sub_1AF723768();
    v10 = sub_1AFDFD1B8();
    v12 = v11;
    v22 = v7;

    MEMORY[0x1B2718AE0](v10, v12);

    if (v8 == 0x616665642D786676 && v22 == 0xEB00000000746C75 || (sub_1AFDFEE28() & 1) != 0)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      MEMORY[0x1B2718AE0](v8, v7);
      MEMORY[0x1B2718AE0](35, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v8, v7);
      swift_unknownObjectRelease();

      v8 = 0x3A7361696C61;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [a1 name];
    v14 = sub_1AFDFCEF8();
    v16 = v15;

    strcpy(v21, "commonprofile_");
    HIBYTE(v21[1]) = -18;
    sub_1AF4486E4();
    LOBYTE(v13) = sub_1AFDFDF18();

    v17 = [a1 name];
    v8 = sub_1AFDFCEF8();
    v19 = v18;

    if ((v13 & 1) != 0 && (sub_1AFDFEE28() & 1) == 0)
    {
      MEMORY[0x1B2718AE0](0x746C7561666564, 0xE700000000000000);
      MEMORY[0x1B2718AE0](35, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v8, v19);

      return 0x3A7361696C61;
    }
  }

  return v8;
}

uint64_t sub_1AF71BB20()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71BBE4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71BC94()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71BD54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723C74();
  *a1 = result;
  return result;
}

void sub_1AF71BD84(unint64_t *a1@<X8>)
{
  v2 = 0x656972617262696CLL;
  v3 = 0x6E6F6974636E7566;
  v4 = 0x80000001AFF22E70;
  if (*v1 == 2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (*v1)
  {
    v2 = 0x656E696C65706970;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = v4;
  }

  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_1AF71BE04()
{
  v1 = 0x656972617262696CLL;
  v2 = 0x6E6F6974636E7566;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656E696C65706970;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF71BE80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723C74();
  *a1 = result;
  return result;
}

uint64_t sub_1AF71BEA8(uint64_t a1)
{
  v2 = sub_1AF725AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71BEE4(uint64_t a1)
{
  v2 = sub_1AF725AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71BF20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x7368746170;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001AFF22F10;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7368746170;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF22F10;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF71BFC8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71C04C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71C0BC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF71C148(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AFF22F10;
  v3 = 0x7368746170;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AF71C188()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7368746170;
  }
}

uint64_t sub_1AF71C1D0(uint64_t a1)
{
  v2 = sub_1AF725A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71C20C(uint64_t a1)
{
  v2 = sub_1AF725A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71C248(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "render_pipelines";
  }

  else
  {
    v4 = "visible_functions";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = "visible_functions";
  }

  else
  {
    v7 = "render_pipelines";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF71C2F4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71C374()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71C3E0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF71C468(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "visible_functions";
  }

  else
  {
    v3 = "render_pipelines";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1AF71C4A8()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1AF71C4F0(uint64_t a1)
{
  v2 = sub_1AF725A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71C52C(uint64_t a1)
{
  v2 = sub_1AF725A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71C568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "named_predicates";
  }

  else
  {
    v4 = "compute_pipelines";
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = "compute_pipelines";
  }

  else
  {
    v6 = "named_predicates";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF71C610()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71C68C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71C6F4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF71C778(unint64_t *a1@<X8>)
{
  v2 = "compute_pipelines";
  v3 = 0xD000000000000010;
  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = "named_predicates";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_1AF71C7B4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1AF71C7F8(uint64_t a1)
{
  v2 = sub_1AF7259E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71C834(uint64_t a1)
{
  v2 = sub_1AF7259E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71C870(void *a1, char *a2)
{
  v91 = a2;
  v3 = MEMORY[0x1E69E6F58];
  sub_1AF7277CC(0, &qword_1EB63DDC0, sub_1AF7259E4, &type metadata for ShaderArchive.ShaderArchiveCoder.PipelineCodingKeys, MEMORY[0x1E69E6F58]);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v83 = v76 - v6;
  sub_1AF7277CC(0, &qword_1EB63DDD0, sub_1AF725A38, &type metadata for ShaderArchive.ShaderArchiveCoder.FunctionsCodingKeys, v3);
  v86 = v7;
  v89 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v87 = v76 - v9;
  sub_1AF7277CC(0, &qword_1EB63DDE0, sub_1AF725A8C, &type metadata for ShaderArchive.ShaderArchiveCoder.LibrariesCodingKeys, v3);
  v11 = v10;
  v90 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v76 - v13;
  sub_1AF7277CC(0, &qword_1EB63DDF0, sub_1AF725AE0, &type metadata for ShaderArchive.ShaderArchiveCoder.CodingKeys, v3);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v76 - v19;
  sub_1AF441150(a1, a1[3]);
  sub_1AF725AE0();
  v21 = v14;
  v22 = v91;
  sub_1AFDFF3F8();
  LOBYTE(v93) = 0;
  sub_1AF725A8C();
  sub_1AFDFE848();
  v93 = *&v22[OBJC_IVAR____TtC3VFX13ShaderArchive_libraries];
  v92 = 0;
  sub_1AF7277CC(0, &unk_1EB63DE00, sub_1AF719808, &type metadata for ShaderArchive.Library, MEMORY[0x1E69E64E8]);
  sub_1AF725B34();
  v23 = v88;
  sub_1AFDFE918();
  if (v23)
  {
    (*(v90 + 8))(v21, v11);
    return (*(v17 + 8))(v20, v16);
  }

  v78 = v17;
  v79 = v20;
  v81 = v16;

  v26 = sub_1AF71A498(v25);

  v93 = v26;
  v92 = 1;
  sub_1AF45BD00(0, &qword_1EB63DE20);
  v82 = v21;
  sub_1AF725C38(&qword_1EB63DE28, &qword_1EB63DE20, &type metadata for ShaderArchive.SpecializedFunctionCoder, sub_1AF725CB0);
  sub_1AFDFE918();
  v80 = 0;
  v77 = v11;

  v27 = v81;
  v28 = v79;
  if ((*&v22[OBJC_IVAR____TtC3VFX13ShaderArchive_family] - 2000) < 0xFFFFFFFFFFFFFC1ELL)
  {
    goto LABEL_4;
  }

  LOBYTE(v93) = 2;
  sub_1AF725A38();
  sub_1AFDFE848();
  v36 = sub_1AF71AF80();
  v37 = v90;
  if (v36 >> 62)
  {
    v53 = v36;
    v38 = sub_1AFDFE108();
    v36 = v53;
    v39 = v89;
    if (v38)
    {
LABEL_9:
      v93 = MEMORY[0x1E69E7CC0];
      v40 = v36;
      sub_1AFC07464(0, v38 & ~(v38 >> 63), 0);
      v41 = v40;
      v42 = 0;
      v43 = v93;
      v88 = v40 & 0xC000000000000001;
      v44 = v38;
      do
      {
        if (v88)
        {
          v45 = MEMORY[0x1B2719C70](v42, v41);
        }

        else
        {
          v45 = *(v41 + 8 * v42 + 32);
          swift_unknownObjectRetain();
        }

        v93 = v43;
        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        v48 = v91;
        if (v47 >= v46 >> 1)
        {
          sub_1AFC07464(v46 > 1, v47 + 1, 1);
          v43 = v93;
        }

        ++v42;
        *(v43 + 16) = v47 + 1;
        v49 = v43 + 16 * v47;
        *(v49 + 32) = v48;
        *(v49 + 40) = v45;
        v39 = v89;
        v41 = v40;
      }

      while (v44 != v42);

      v37 = v90;
      v22 = v91;
      goto LABEL_20;
    }
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v89;
    if (v38)
    {
      goto LABEL_9;
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v93 = v43;
  v92 = 0;
  sub_1AF45BD00(0, &qword_1EB63DE68);
  v55 = v54;
  v56 = sub_1AF725C38(&qword_1EB63DE70, &qword_1EB63DE68, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder, sub_1AF725DAC);
  v57 = v86;
  v58 = v87;
  v59 = v80;
  sub_1AFDFE918();
  if (v59)
  {
    (*(v39 + 8))(v58, v57);
    (*(v37 + 8))(v82, v77);
    (*(v78 + 8))(v79, v81);
  }

  v91 = v56;
  v76[1] = v55;
  v80 = 0;

  v60 = sub_1AF71B0D0();
  v61 = v78;
  v88 = v60;
  if (v60 >> 62)
  {
    v62 = sub_1AFDFE108();
  }

  else
  {
    v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v81;
  if (v62)
  {
    v93 = MEMORY[0x1E69E7CC0];
    sub_1AFC07464(0, v62 & ~(v62 >> 63), 0);
    v63 = v88;
    v64 = 0;
    v65 = v93;
    v66 = v88 & 0xC000000000000001;
    do
    {
      if (v66)
      {
        v67 = MEMORY[0x1B2719C70](v64, v63);
      }

      else
      {
        v67 = *(v63 + 8 * v64 + 32);
        swift_unknownObjectRetain();
      }

      v93 = v65;
      v69 = *(v65 + 16);
      v68 = *(v65 + 24);
      v70 = v22;
      if (v69 >= v68 >> 1)
      {
        v72 = v70;
        sub_1AFC07464(v68 > 1, v69 + 1, 1);
        v70 = v72;
        v65 = v93;
      }

      ++v64;
      *(v65 + 16) = v69 + 1;
      v71 = v65 + 16 * v69;
      *(v71 + 32) = v70;
      *(v71 + 40) = v67;
      v37 = v90;
      v63 = v88;
    }

    while (v62 != v64);

    v27 = v81;
    v61 = v78;
    v39 = v89;
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v93 = v65;
  v92 = 1;
  v73 = v86;
  v74 = v87;
  v75 = v80;
  sub_1AFDFE918();
  v80 = v75;
  if (v75)
  {
    (*(v39 + 8))(v74, v73);
    (*(v37 + 8))(v82, v77);
    (*(v61 + 8))(v79, v27);
  }

  (*(v39 + 8))(v74, v73);

  v28 = v79;
LABEL_4:
  LOBYTE(v93) = 1;
  sub_1AF7259E4();
  v29 = v22;
  v30 = v83;
  sub_1AFDFE848();
  v31 = v29;

  v33 = v80;
  v34 = sub_1AF723FF8(v32, v31);

  v93 = v34;
  v92 = 0;
  sub_1AF45BD00(0, &qword_1EB63DE38);
  sub_1AF725C38(&qword_1EB63DE40, &qword_1EB63DE38, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder, sub_1AF725D04);
  v35 = v85;
  sub_1AFDFE918();
  if (v33)
  {
    (*(v84 + 8))(v30, v35);
    (*(v90 + 8))(v82, v77);
    (*(v78 + 8))(v28, v27);
  }

  else
  {

    v50 = v31;

    v52 = sub_1AF72432C(v51, v50);

    v93 = v52;
    v92 = 1;
    sub_1AF45BD00(0, &qword_1EB63DE50);
    sub_1AF725C38(&qword_1EB63DE58, &qword_1EB63DE50, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder, sub_1AF725D58);
    sub_1AFDFE918();
    (*(v84 + 8))(v30, v35);
    (*(v90 + 8))(v82, v77);
    (*(v78 + 8))(v79, v81);
  }
}