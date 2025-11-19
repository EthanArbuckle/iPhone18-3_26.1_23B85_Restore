uint64_t sub_1AFAB10D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 32))(a1 + v11, a2 + v11, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy((a1 + v11), (a2 + v11), v19);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 32))(a1 + v11, a2 + v11, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_1AFAB140C()
{
  sub_1AFAAEB58(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *sub_1AFAB14C0(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = a3[6];
    v9 = type metadata accessor for ScriptIndex();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      sub_1AFAAEB58(0);
      memcpy(&v4[v8], a2 + v8, *(*(v12 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = sub_1AFDFC318();
        (*(*(v14 - 8) + 16))(&v4[v8], a2 + v8, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v8], a2 + v8, *(v10 + 64));
      }

      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v15 = a3[7];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    if (*v17)
    {
      v18 = v17[1];
      *v16 = *v17;
      *(v16 + 1) = v18;
    }

    else
    {
      *v16 = *v17;
    }

    *&v4[a3[8]] = *(a2 + a3[8]);
  }

  return v4;
}

uint64_t sub_1AFAB16C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_1AFDFC318();
      (*(*(v12 - 8) + 16))(a1 + v7, a2 + v7, v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
    }

    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = a3[7];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  if (*v15)
  {
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
  }

  else
  {
    *v14 = *v15;
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1AFAB1884(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1AFDFC318();
        (*(*(v15 - 8) + 16))(a1 + v6, a2 + v6, v15);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v14 = *(v8 + 64);
LABEL_8:
      memcpy((a1 + v6), (a2 + v6), v14);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0);
    v14 = *(*(v13 - 8) + 64);
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1AFDFC318();
    (*(*(v12 - 8) + 16))(a1 + v6, a2 + v6, v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
  }

  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_14:
  v16 = a3[7];
  v17 = (a1 + v16);
  v18 = a2 + v16;
  v19 = *(a1 + v16);
  v20 = *(a2 + v16);
  if (!v19)
  {
    if (v20)
    {
      v22 = *(v18 + 8);
      *v17 = v20;
      v17[1] = v22;

      goto LABEL_21;
    }

LABEL_20:
    *v17 = *v18;
    goto LABEL_21;
  }

  if (!v20)
  {

    goto LABEL_20;
  }

  v21 = *(v18 + 8);
  *v17 = v20;
  v17[1] = v21;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1AFAB1B5C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v6, a2 + v6, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v11) = *(a2 + v11);
  return a1;
}

uint64_t sub_1AFAB1CD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 32))(a1 + v7, a2 + v7, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v9 + 64);
LABEL_8:
      memcpy((a1 + v7), (a2 + v7), v15);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0);
    v15 = *(*(v14 - 8) + 64);
    goto LABEL_8;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AFDFC318();
    (*(*(v13 - 8) + 32))(a1 + v7, a2 + v7, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_14:
  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = *(a1 + v17);
  v21 = *(a2 + v17);
  if (!v20)
  {
    if (v21)
    {
      v23 = *(v19 + 8);
      *v18 = v21;
      v18[1] = v23;
      goto LABEL_21;
    }

LABEL_20:
    *v18 = *v19;
    goto LABEL_21;
  }

  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 8);
  *v18 = v21;
  v18[1] = v22;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

void sub_1AFAB1FD4()
{
  sub_1AFAAEB58(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AFAB208C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v9 = a2 + 5;
    v8 = a2[5];
    v10 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v10;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);

    if (v8)
    {
      v11 = a2[6];
      *(a1 + 40) = v8;
      *(a1 + 48) = v11;
    }

    else
    {
      *(a1 + 40) = *v9;
    }

    *(a1 + 56) = *(a2 + 56);
    v12 = *(a3 + 40);
    v13 = type metadata accessor for ScriptIndex();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AFAAEB58(0);
      memcpy((a1 + v12), a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 16))(a1 + v12, a2 + v12, v16);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((a1 + v12), a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  return a1;
}

uint64_t sub_1AFAB2290(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 40))
  {
  }

  v4 = *(a2 + 40);
  v5 = type metadata accessor for ScriptIndex();
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(a1 + v4, v7);
    }
  }

  return result;
}

uint64_t sub_1AFAB2394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v9 = (a2 + 40);
  v8 = *(a2 + 40);

  if (v8)
  {
    v10 = *(a2 + 48);
    *(a1 + 40) = v8;
    *(a1 + 48) = v10;
  }

  else
  {
    *(a1 + 40) = *v9;
  }

  *(a1 + 56) = *(a2 + 56);
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a2 + v11, 1, v12))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v11), (a2 + v11), *(*(v14 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_1AFDFC318();
      (*(*(v15 - 8) + 16))(a1 + v11, a2 + v11, v15);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
    }

    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  return a1;
}

uint64_t sub_1AFAB254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (v7)
    {
      v8 = *(a2 + 48);
      *(a1 + 40) = v7;
      *(a1 + 48) = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v9;

    goto LABEL_8;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a3 + 40);
  v11 = type metadata accessor for ScriptIndex();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = sub_1AFDFC318();
        (*(*(v19 - 8) + 16))(a1 + v10, a2 + v10, v19);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v18 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0);
    v18 = *(*(v17 - 8) + 64);
LABEL_15:
    memcpy((a1 + v10), (a2 + v10), v18);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1AFDFC318();
    (*(*(v16 - 8) + 16))(a1 + v10, a2 + v10, v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t sub_1AFAB2834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a3 + 40);
  v6 = type metadata accessor for ScriptIndex();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1AFDFC318();
      (*(*(v9 - 8) + 32))(a1 + v5, a2 + v5, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1AFAB29B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);

  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a2 + 48);
      *(a1 + 40) = v7;
      *(a1 + 48) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v10;
    goto LABEL_8;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a3 + 40);
  v12 = type metadata accessor for ScriptIndex();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 32))(a1 + v11, a2 + v11, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy((a1 + v11), (a2 + v11), v19);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 32))(a1 + v11, a2 + v11, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_1AFAB2CBC()
{
  sub_1AFAAEB58(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *sub_1AFAB2D80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    v8 = *(a3 + 32);
    v9 = type metadata accessor for ScriptIndex();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      sub_1AFAAEB58(0);
      memcpy(&v4[v8], a2 + v8, *(*(v12 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = sub_1AFDFC318();
        (*(*(v14 - 8) + 16))(&v4[v8], a2 + v8, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v8], a2 + v8, *(v10 + 64));
      }

      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v15 = *(a3 + 36);
    v16 = &v4[v15];
    v17 = (a2 + v15);
    if (*v17)
    {
      v18 = v17[1];
      *v16 = *v17;
      *(v16 + 1) = v18;
    }

    else
    {
      *v16 = *v17;
    }
  }

  return v4;
}

uint64_t sub_1AFAB2F90(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 32);
  v5 = type metadata accessor for ScriptIndex();
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      result = (*(*(v7 - 8) + 8))(a1 + v4, v7);
    }
  }

  if (*(a1 + *(a2 + 36)))
  {
  }

  return result;
}

uint64_t sub_1AFAB3094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for ScriptIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_1AFDFC318();
      (*(*(v12 - 8) + 16))(a1 + v7, a2 + v7, v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
    }

    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = *(a3 + 36);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  if (*v15)
  {
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
  }

  else
  {
    *v14 = *v15;
  }

  return a1;
}

uint64_t sub_1AFAB3258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 32);
  v7 = type metadata accessor for ScriptIndex();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1AFDFC318();
        (*(*(v15 - 8) + 16))(a1 + v6, a2 + v6, v15);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v14 = *(v8 + 64);
LABEL_8:
      memcpy((a1 + v6), (a2 + v6), v14);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0);
    v14 = *(*(v13 - 8) + 64);
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1AFDFC318();
    (*(*(v12 - 8) + 16))(a1 + v6, a2 + v6, v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
  }

  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_14:
  v16 = *(a3 + 36);
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v19 = *(a1 + v16);
  v20 = *v18;
  if (!v19)
  {
    if (v20)
    {
      v22 = v18[1];
      *v17 = v20;
      v17[1] = v22;

      return a1;
    }

LABEL_20:
    *v17 = *v18;
    return a1;
  }

  if (!v20)
  {

    goto LABEL_20;
  }

  v21 = v18[1];
  *v17 = v20;
  v17[1] = v21;

  return a1;
}

uint64_t sub_1AFAB3534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 32);
  v7 = type metadata accessor for ScriptIndex();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v6, a2 + v6, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  *(a1 + *(a3 + 36)) = *(a2 + *(a3 + 36));
  return a1;
}

uint64_t sub_1AFAB36B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for ScriptIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 32))(a1 + v7, a2 + v7, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v9 + 64);
LABEL_8:
      memcpy((a1 + v7), (a2 + v7), v15);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0);
    v15 = *(*(v14 - 8) + 64);
    goto LABEL_8;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AFDFC318();
    (*(*(v13 - 8) + 32))(a1 + v7, a2 + v7, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_14:
  v17 = *(a3 + 36);
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = *(a1 + v17);
  v21 = *v19;
  if (!v20)
  {
    if (v21)
    {
      v23 = v19[1];
      *v18 = v21;
      v18[1] = v23;
      return a1;
    }

LABEL_20:
    *v18 = *v19;
    return a1;
  }

  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = v19[1];
  *v18 = v21;
  v18[1] = v22;

  return a1;
}

void sub_1AFAB39B8()
{
  sub_1AFAAEB58(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t *assignWithCopy for ScriptLocation(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF443EE0(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_1AF443F24(v4);
  return a1;
}

unint64_t *assignWithTake for ScriptLocation(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1AF443F24(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 8))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AFAB3BBC(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 16;
  }
}

unint64_t *sub_1AFAB3BF4(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x10)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 16)) | 0x8000000000000000;
  }

  return result;
}

char *sub_1AFAB3C40(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = a3[6];
    v9 = type metadata accessor for ScriptIndex();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      sub_1AFAAEB58(0);
      memcpy(&v4[v8], a2 + v8, *(*(v12 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = sub_1AFDFC318();
        (*(*(v14 - 8) + 16))(&v4[v8], a2 + v8, v14);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v4[v8], a2 + v8, *(v10 + 64));
      }

      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v15 = a3[7];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    if (*v17)
    {
      v18 = v17[1];
      *v16 = *v17;
      *(v16 + 1) = v18;
    }

    else
    {
      *v16 = *v17;
    }

    v19 = a3[9];
    *&v4[a3[8]] = *(a2 + a3[8]);
    v4[v19] = *(a2 + v19);
  }

  return v4;
}

uint64_t sub_1AFAB3E50(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for ScriptIndex();
  if (!(*(*(v5 - 8) + 48))(a1 + v4, 1, v5) && swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  if (*(a1 + *(a2 + 28)))
  {
  }
}

uint64_t sub_1AFAB3F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(a2 + v7, 1, v8))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_1AFDFC318();
      (*(*(v12 - 8) + 16))(a1 + v7, a2 + v7, v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
    }

    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = a3[7];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  if (*v15)
  {
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
  }

  else
  {
    *v14 = *v15;
  }

  v17 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v17) = *(a2 + v17);

  return a1;
}

uint64_t sub_1AFAB410C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1AFDFC318();
        (*(*(v15 - 8) + 16))(a1 + v6, a2 + v6, v15);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v14 = *(v8 + 64);
LABEL_8:
      memcpy((a1 + v6), (a2 + v6), v14);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v6, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0);
    v14 = *(*(v13 - 8) + 64);
    goto LABEL_8;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1AFDFC318();
    (*(*(v12 - 8) + 16))(a1 + v6, a2 + v6, v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
  }

  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_14:
  v16 = a3[7];
  v17 = (a1 + v16);
  v18 = a2 + v16;
  v19 = *(a1 + v16);
  v20 = *(a2 + v16);
  if (!v19)
  {
    if (v20)
    {
      v22 = *(v18 + 8);
      *v17 = v20;
      v17[1] = v22;

      goto LABEL_21;
    }

LABEL_20:
    *v17 = *v18;
    goto LABEL_21;
  }

  if (!v20)
  {

    goto LABEL_20;
  }

  v21 = *(v18 + 8);
  *v17 = v20;
  v17[1] = v21;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_1AFAB43F0(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for ScriptIndex();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1AFDFC318();
      (*(*(v10 - 8) + 32))(a1 + v6, a2 + v6, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v6), (a2 + v6), *(v8 + 64));
    }

    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v11) = *(a2 + v11);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_1AFAB4578(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = a3[6];
  v8 = type metadata accessor for ScriptIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 32))(a1 + v7, a2 + v7, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v9 + 64);
LABEL_8:
      memcpy((a1 + v7), (a2 + v7), v15);
      goto LABEL_14;
    }

    sub_1AFAB7208(a1 + v7, type metadata accessor for ScriptIndex);
LABEL_7:
    sub_1AFAAEB58(0);
    v15 = *(*(v14 - 8) + 64);
    goto LABEL_8;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AFDFC318();
    (*(*(v13 - 8) + 32))(a1 + v7, a2 + v7, v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v7), (a2 + v7), *(v9 + 64));
  }

  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_14:
  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = *(a1 + v17);
  v21 = *(a2 + v17);
  if (!v20)
  {
    if (v21)
    {
      v23 = *(v19 + 8);
      *v18 = v21;
      v18[1] = v23;
      goto LABEL_21;
    }

LABEL_20:
    *v18 = *v19;
    goto LABEL_21;
  }

  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 8);
  *v18 = v21;
  v18[1] = v22;

LABEL_21:
  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_1AFAB484C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AFAB490C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1AFAB49D0()
{
  sub_1AFAAEB58(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AFAB4A90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v9 = a2 + 6;
    v8 = a2[6];
    v10 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v10;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = a2[4];
    *(a1 + 40) = *(a2 + 20);

    if (v8)
    {
      v11 = a2[7];
      *(a1 + 48) = v8;
      *(a1 + 56) = v11;
    }

    else
    {
      *(a1 + 48) = *v9;
    }

    v12 = *(a3 + 44);
    v13 = type metadata accessor for ScriptIndex();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      sub_1AFAAEB58(0);
      memcpy((a1 + v12), a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = sub_1AFDFC318();
        (*(*(v16 - 8) + 16))(a1 + v12, a2 + v12, v16);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((a1 + v12), a2 + v12, *(v14 + 64));
      }

      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  return a1;
}

uint64_t sub_1AFAB4CAC(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 48))
  {
  }

  v4 = *(a2 + 44);
  v5 = type metadata accessor for ScriptIndex();
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v7 = sub_1AFDFC318();
      v8 = *(*(v7 - 8) + 8);

      return v8(a1 + v4, v7);
    }
  }

  return result;
}

uint64_t sub_1AFAB4DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = (a2 + 48);
  v7 = *(a2 + 48);

  if (v7)
  {
    v9 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;
  }

  else
  {
    *(a1 + 48) = *v8;
  }

  v10 = *(a3 + 44);
  v11 = type metadata accessor for ScriptIndex();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1AFDFC318();
      (*(*(v14 - 8) + 16))(a1 + v10, a2 + v10, v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
    }

    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t sub_1AFAB4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (v7)
    {
      v8 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;

    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v10 = *(a3 + 44);
  v11 = type metadata accessor for ScriptIndex();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = sub_1AFDFC318();
        (*(*(v19 - 8) + 16))(a1 + v10, a2 + v10, v19);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v18 = *(v12 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v10, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0);
    v18 = *(*(v17 - 8) + 64);
LABEL_15:
    memcpy((a1 + v10), (a2 + v10), v18);
    return a1;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1AFDFC318();
    (*(*(v16 - 8) + 16))(a1 + v10, a2 + v10, v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v10), (a2 + v10), *(v12 + 64));
  }

  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t sub_1AFAB5290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a3 + 44);
  v6 = type metadata accessor for ScriptIndex();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    sub_1AFAAEB58(0);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1AFDFC318();
      (*(*(v9 - 8) + 32))(a1 + v5, a2 + v5, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v5), (a2 + v5), *(v7 + 64));
    }

    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1AFAB5414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
    goto LABEL_8;
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v11 = *(a3 + 44);
  v12 = type metadata accessor for ScriptIndex();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = sub_1AFDFC318();
        (*(*(v20 - 8) + 32))(a1 + v11, a2 + v11, v20);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = *(v13 + 64);
      goto LABEL_15;
    }

    sub_1AFAB7208(a1 + v11, type metadata accessor for ScriptIndex);
LABEL_14:
    sub_1AFAAEB58(0);
    v19 = *(*(v18 - 8) + 64);
LABEL_15:
    memcpy((a1 + v11), (a2 + v11), v19);
    return a1;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1AFDFC318();
    (*(*(v17 - 8) + 32))(a1 + v11, a2 + v11, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v11), (a2 + v11), *(v13 + 64));
  }

  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

uint64_t sub_1AFAB5704(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_1AFAB57C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AFAAEB58(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1AFAB5888()
{
  sub_1AFAAEB58(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_1AFAB595C()
{
  result = qword_1EB6337A0;
  if (!qword_1EB6337A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6337A0);
  }

  return result;
}

unint64_t sub_1AFAB59B0()
{
  result = qword_1EB642598;
  if (!qword_1EB642598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642598);
  }

  return result;
}

unint64_t sub_1AFAB5A08()
{
  result = qword_1EB6425A0;
  if (!qword_1EB6425A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425A0);
  }

  return result;
}

unint64_t sub_1AFAB5A60()
{
  result = qword_1EB633858;
  if (!qword_1EB633858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633858);
  }

  return result;
}

unint64_t sub_1AFAB5AB8()
{
  result = qword_1EB6425A8;
  if (!qword_1EB6425A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425A8);
  }

  return result;
}

unint64_t sub_1AFAB5B10()
{
  result = qword_1EB6425B0;
  if (!qword_1EB6425B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425B0);
  }

  return result;
}

unint64_t sub_1AFAB5B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  *a2 = v2;
  *(a2 + 8) = v3;
  v6 = *(a1 + 32);
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  sub_1AF443EE0(v2);

  return sub_1AF444224(v6);
}

BOOL sub_1AFAB5BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 5u:
      if (a2 != 5)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 6u:
      if (a2 != 6)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 7u:
      if (a2 != 7)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 8u:
      if (a2 != 8)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 9u:
      if (a2 != 9)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xAu:
      if (a2 != 10)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xBu:
      if (a2 != 11)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xCu:
      if (a2 != 12)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xDu:
      if (a2 != 13)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xEu:
      if (a2 != 14)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0xFu:
      if (a2 != 15)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x10u:
      if (a2 != 16)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x11u:
      if (a2 != 17)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x12u:
      if (a2 != 18)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x13u:
      if (a2 != 19)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x14u:
      if (a2 != 20)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x15u:
      if (a2 != 21)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x16u:
      if (a2 != 22)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    default:
      if (a2 - 5 < 0x12)
      {
LABEL_40:
        result = 0;
      }

      else
      {
        result = a1 == a2;
      }

      break;
  }

  return result;
}

uint64_t sub_1AFAB5D38(uint64_t a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  if (v7 > 2)
  {
    if (*(a1 + 32) <= 4u)
    {
      if (v7 == 3)
      {
        if (a2[2].i8[0] == 3)
        {
          v8 = a2->i64[0];

          return sub_1AF647714(v4, v8);
        }

        return 0;
      }

      if (a2[2].i8[0] != 4)
      {
        return 0;
      }

      if (v4 != a2->i64[0] || v5 != a2->i64[1])
      {

        return sub_1AFDFEE28();
      }

      return 1;
    }

    if (v7 != 5)
    {
      if (v6 | v5 | v4 | *(a1 + 24))
      {
        if (a2[2].i8[0] != 6 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
        {
          return 0;
        }
      }

      else
      {
        if (a2[2].i8[0] != 6)
        {
          return 0;
        }

        v13 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    if (a2[2].i8[0] != 5)
    {
      return 0;
    }

    v12 = a2->i8[0];

    return sub_1AFAB5BC4(v4, v12);
  }

  if (!*(a1 + 32))
  {
    if (a2[2].i8[0])
    {
      return 0;
    }

    return a2->u8[0] == v4;
  }

  if (v7 != 1)
  {
    if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    return a2->u8[0] == v4;
  }

  if (a2[2].i8[0] != 1)
  {
    return 0;
  }

  v10 = a2->u64[1];
  v11 = a2[1].u64[0];
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v10 != 2)
        {
          return 0;
        }
      }

      else if (v10 != 3)
      {
        return 0;
      }

      return 1;
    }

    if (!v5)
    {
      return !v10;
    }

    if (v5 == 1)
    {
      return v10 == 1;
    }
  }

  else
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        if (v10 != 4)
        {
          return 0;
        }
      }

      else if (v10 != 5)
      {
        return 0;
      }

      return 1;
    }

    switch(v5)
    {
      case 6:
        return v10 == 6;
      case 7:
        return v10 == 7;
      case 8:
        return v10 == 8;
    }
  }

  if (v10 <= 8)
  {
    return 0;
  }

  if (v4 == a2->i64[0] && v5 == v10 || (v14 = sub_1AFDFEE28(), result = 0, (v14 & 1) != 0))
  {

    return sub_1AF90F890(v6, v11);
  }

  return result;
}

uint64_t sub_1AFAB5FF0(unint64_t a1, unint64_t a2)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 1)
      {
        goto LABEL_134;
      }

      v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      v29 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v73);
      sub_1AF44596C(v29 + 16, &v70);
      if (v74 == v71 || (v2 = 0, (sub_1AFDFEE28() & 1) != 0))
      {

        v32 = sub_1AFDFDFD8();
        if (v32 == sub_1AFDFDFD8())
        {
          if (v27 == v31 && v28 == v30)
          {
            v2 = 1;
          }

          else
          {
            v2 = sub_1AFDFEE28();
          }
        }

        else
        {
          v2 = 0;
        }
      }

      goto LABEL_142;
    case 2uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 2)
      {
        goto LABEL_134;
      }

      v21 = a2 & 0xFFFFFFFFFFFFFFBLL;
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v73);
      sub_1AF44596C(v21 + 16, &v70);
      if (v74 == v71)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_1AFDFEE28();
      }

LABEL_142:
      sub_1AF4459C8(&v70);
      sub_1AF4459C8(&v73);
      return v2 & 1;
    case 3uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 3)
      {
        goto LABEL_134;
      }

      goto LABEL_73;
    case 4uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 4)
      {
        goto LABEL_134;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
      {
        goto LABEL_134;
      }

      v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v14 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v15 = sub_1AFDFDFD8();
      if (v15 != sub_1AFDFDFD8())
      {
        goto LABEL_134;
      }

      if (v11 != v13 || v12 != v14)
      {
        goto LABEL_53;
      }

      goto LABEL_106;
    case 5uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 5)
      {
        goto LABEL_134;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x14))
      {
        goto LABEL_134;
      }

      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
      v37 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v38 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v39 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x44);
      v40 = sub_1AFDFDFD8();
      if (v40 != sub_1AFDFDFD8())
      {
        goto LABEL_134;
      }

      if ((v34 != v37 || v35 != v38) && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_134;
      }

      v2 = v36 == v39;
      return v2 & 1;
    case 6uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 6 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_134;
      }

      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      return v2 & 1;
    case 7uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 7 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_134;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18) || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
      {
        goto LABEL_53;
      }

      goto LABEL_106;
    case 8uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 8)
      {
        goto LABEL_134;
      }

      v51 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v52 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v53 = *(v51 + 33);
      v54 = *(v51 + 34);
      v55 = *(v51 + 35);
      v56 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v57 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v58 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
      v59 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x22);
      v60 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x23);
      if (*(v51 + 32))
      {
        v61 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (*(v51 + 32) == 1)
        {
          if (v57 != 1)
          {
            goto LABEL_134;
          }

          if (v52 == v56 && *(v51 + 24) == v61)
          {
            v2 = 0;
          }

          else
          {
            v2 = 0;
            if ((sub_1AFDFEE28() & 1) == 0)
            {
              return v2 & 1;
            }
          }

          if (v53 == v58 && v54 == v59)
          {
            goto LABEL_146;
          }

          return v2 & 1;
        }

        if (v57 != 2)
        {
          goto LABEL_134;
        }

        v65 = (v61 | v56) == 0;
      }

      else
      {
        if (*((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
        {
          goto LABEL_134;
        }

        v65 = v52 == v56;
      }

      if (v65 && v53 == v58 && v54 == v59)
      {
LABEL_146:
        v2 = v55 ^ v60 ^ 1;
        return v2 & 1;
      }

      goto LABEL_134;
    case 9uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 9)
      {
        goto LABEL_134;
      }

      v16 = a1 & 0xFFFFFFFFFFFFFFBLL;
      v17 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v19 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if (!*(v16 + 32))
      {
        if (*((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20))
        {
          v63 = 0;
        }

        else
        {
          v63 = v17 == v18;
        }

        v2 = v63;
        return v2 & 1;
      }

      v20 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v16 + 32) != 1)
      {
        v2 = v19 == 2 && (v20 | v18) == 0;
        return v2 & 1;
      }

      if (v19 != 1)
      {
        goto LABEL_134;
      }

      if (v17 == v18 && *(v16 + 24) == v20)
      {
        goto LABEL_106;
      }

LABEL_53:

      return sub_1AFDFEE28();
    case 0xAuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xA)
      {
        goto LABEL_134;
      }

      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v43 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v46 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
      v47 = sub_1AFDFDFD8();
      if (v47 != sub_1AFDFDFD8())
      {
        goto LABEL_134;
      }

      v48 = v41 == v44 && v42 == v45;
      if (!v48 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_134;
      }

      v50 = v46 != 5 && v43 == v46;
      if (v43 == 5)
      {
        v2 = v46 == 5;
      }

      else
      {
        v2 = v50;
      }

      return v2 & 1;
    case 0xBuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xB)
      {
        goto LABEL_134;
      }

      v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v8 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      v9 = sub_1AFDFDFD8();
      if (v9 != sub_1AFDFDFD8())
      {

        goto LABEL_134;
      }

      if (v5 == v8 && v6 == v7)
      {

        v2 = 1;
        return v2 & 1;
      }

      v68 = sub_1AFDFEE28();

      return v68 & 1;
    case 0xCuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xC)
      {
        goto LABEL_134;
      }

      goto LABEL_73;
    case 0xDuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xD)
      {
        goto LABEL_134;
      }

LABEL_73:
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_134;
      }

      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
      return v2 & 1;
    case 0xEuLL:
      v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v70 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v71 = v3;
      v72 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xE)
      {
        goto LABEL_134;
      }

      v4 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v73 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v74 = v4;
      v75 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      sub_1AFABCAB8(&v73, v69);
      v2 = sub_1AFAB5D38(&v70, &v73);
      sub_1AFABCB1C(&v73);
      return v2 & 1;
    case 0xFuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xF)
      {
        goto LABEL_134;
      }

      v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (!v24 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_134;
      }

      return sub_1AF90F890(v22, v23);
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0x10 || a2 != 0x8000000000000000)
        {
          goto LABEL_134;
        }

LABEL_106:
        v2 = 1;
        return v2 & 1;
      }

      if (a1 == 0x8000000000000008 && ((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x10 && a2 == 0x8000000000000008)
      {
        goto LABEL_106;
      }

LABEL_134:
      v2 = 0;
      return v2 & 1;
    default:
      if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
      {
        goto LABEL_134;
      }

      v2 = *(a1 + 16) ^ *(a2 + 16) ^ 1;
      return v2 & 1;
  }
}

BOOL sub_1AFAB69E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1AFAB5FF0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = v5 & 0xF000000000000007;
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v6 == 0xF000000000000007)
    {
      return 0;
    }

    sub_1AF443EE0(*(a2 + 16));
    v7 = sub_1AFAB5FF0(v4, v5);
    sub_1AF444AF4(v5);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6 != 0xF000000000000007)
  {
    return 0;
  }

  v8 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v8 = 1;
    }

    return (v8 & 1) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

uint64_t sub_1AFAB6AAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a5 == 2)
        {
          return 1;
        }
      }

      else if (a5 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a5;
    }

    if (a2 == 1)
    {
      return a5 == 1;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a5 == 4)
        {
          return 1;
        }
      }

      else if (a5 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        return a5 == 6;
      case 7:
        return a5 == 7;
      case 8:
        return a5 == 8;
    }
  }

  if (a5 < 9)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5 || (v8 = a3, v9 = a6, v10 = sub_1AFDFEE28(), a3 = v8, a6 = v9, v11 = v10, result = 0, (v11 & 1) != 0))
  {

    return sub_1AF90F890(a3, a6);
  }

  return result;
}

uint64_t sub_1AFAB6C14(uint64_t a1, uint64_t a2)
{
  if (a2 > 0)
  {
    sub_1AFABCD84();
    v4 = sub_1AFDFD488();
    *(v4 + 16) = a2;
    *(v4 + 32) = a1;
    v5 = v4 + 32;
    if (a2 == 1)
    {
LABEL_8:

      return v4;
    }

LABEL_6:
    v6 = a2 - 1;
    v7 = (v5 + 8);
    do
    {
      *v7++ = a1;

      --v6;
    }

    while (v6);
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    *(MEMORY[0x1E69E7CC0] + 32) = a1;
    v5 = v4 + 32;
    goto LABEL_6;
  }

  return v4;
}

void *sub_1AFAB6CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFABE5A4(0, &qword_1EB6331A0, MEMORY[0x1E69E6EC8]);
  v4 = sub_1AFDFE598();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = *(a1 + 64);
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v8;
  v11 = (v7 + 63) >> 6;
  v22 = v4 + 64;
  v23 = a1;
  v12 = a1 + 72;
  if ((v9 & v8) != 0)
  {
    do
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v6 << 6);
LABEL_9:
      v18 = *(*(v23 + 48) + 8 * v14);
      v19 = *(*(v23 + 56) + 8 * v14);
      ObjectType = swift_getObjectType();
      sub_1AF62BFF0(v19, 1, ObjectType, a3);
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v5[6] + 8 * v14) = v18;
      *(v5[7] + 8 * v14) = v19;
      ++v5[2];
    }

    while (v10);
  }

  v15 = v6 << 6;
  while (1)
  {
    v16 = v6 + 1;
    if (v6 + 1 >= v11)
    {
      return v5;
    }

    v17 = *(v12 + 8 * v6);
    v15 += 64;
    ++v6;
    if (v17)
    {
      v10 = (v17 - 1) & v17;
      v14 = __clz(__rbit64(v17)) + v15;
      v6 = v16;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1AFAB6E40()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB6E8C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB6ED8()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB6F24()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB6F70()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB6FBC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB7008()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFAB7054()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

double sub_1AFAB70A0@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 216))
  {
    v7 = *(a3 + 216);
  }

  else
  {
    v7 = a3;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  v11 = *(v7 + 48);
  v12 = *(v7 + 56);
  v13 = *(v7 + 58);

  v15 = *(v7 + 32);

  *(v8 + 24) = v10;
  *(v8 + 32) = v9;
  *(v8 + 40) = v15;
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 66) = v13;
  *(v8 + 68) = a1;
  *a4 = v8 | 0x2000000000000004;
  *(a4 + 8) = 1;
  result = -3.10503618e231;
  *(a4 + 16) = xmmword_1AFE4C460;
  *(a4 + 32) = 1;
  return result;
}

void sub_1AFAB71A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFAB7208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFAB7268(void *a1)
{
  v3 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);
  v4 = a1[3];
  v5 = a1[4];
  sub_1AF441150(a1, v4);
  if (!sub_1AF69504C(3015, v4, v5))
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    if (sub_1AF69504C(3017, v12, v13))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (v1)
      {
        goto LABEL_29;
      }

      sub_1AF441150(v32, v33);
      sub_1AFABE5A4(0, &qword_1EB632AF0, MEMORY[0x1E69E5E28]);
      sub_1AFABE60C();
      sub_1AFDFEE88();

      v3 = v31;
    }

    else
    {
      v14 = a1[3];
      v15 = a1[4];
      sub_1AF441150(a1, v14);
      if (!sub_1AF69504C(3021, v14, v15))
      {
        sub_1AF441150(a1, a1[3]);
        sub_1AFDFF388();
        if (v1)
        {
          goto LABEL_29;
        }

        sub_1AF448018(v32, v33);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        sub_1AF448018(v32, v33);
        sub_1AFDFEAD8();
        sub_1AFABE4B8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        sub_1AF448018(v32, v33);
        sub_1AFABE7E0(&qword_1ED726C40);
        sub_1AFDFEAD8();
        sub_1AFABE4B8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
        sub_1AF448018(v32, v33);
        sub_1AFABE508();
        sub_1AFDFEAD8();
        v3 = sub_1AF69F000(v31, v31);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
LABEL_32:
        v28 = a1[3];
        v29 = a1[4];
        sub_1AF441150(a1, v28);
        if (sub_1AF69504C(3021, v28, v29) && *(v3 + 16))
        {
          sub_1AF449CB8(16);
          sub_1AF449CB8(17);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
        return v3;
      }

      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF388();
      if (v1)
      {
        goto LABEL_29;
      }

      sub_1AFABE4B8(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      sub_1AF448018(v32, v33);
      sub_1AFABE7E0(&qword_1ED726C40);
      sub_1AFDFEAD8();
      sub_1AFABE4B8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
      sub_1AF448018(v32, v33);
      sub_1AFABE508();
      sub_1AFDFEAD8();
      v3 = sub_1AF69F000(v31, v31);
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
    goto LABEL_32;
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v32, v33);
    sub_1AFABE6A8();
    sub_1AFABE760();
    sub_1AFDFEE88();
    v6 = 0;
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    while (1)
    {
      v16 = v6 + 1;
      if (v6 + 1 >= v11)
      {
        break;
      }

      v10 = *(v31 + 8 * v6++ + 72);
      if (v10)
      {
        while (1)
        {
          v17 = __clz(__rbit64(v10)) | (v16 << 6);
          v18 = *(*(v31 + 56) + 8 * v17);
          v19 = qword_1AFE99228[*(*(v31 + 48) + v17)];
          v20 = v3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = sub_1AF449CB8(v19);
          v24 = v23;
          v25 = v20[2] + ((v23 & 1) == 0);
          if (v20[3] >= v25)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v27 = v22;
              sub_1AF846E40();
              v22 = v27;
            }
          }

          else
          {
            sub_1AF830A44(v25, isUniquelyReferenced_nonNull_native);
            v22 = sub_1AF449CB8(v19);
            if ((v24 & 1) != (v26 & 1))
            {
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }
          }

          v10 &= v10 - 1;
          v3 = v20;
          if (v24)
          {
            *(v20[7] + 8 * v22) = v18;
            v6 = v16;
            if (!v10)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v20[(v22 >> 6) + 8] |= 1 << v22;
            *(v20[6] + 8 * v22) = v19;
            *(v20[7] + 8 * v22) = v18;
            ++v20[2];
            v6 = v16;
            if (!v10)
            {
              goto LABEL_15;
            }
          }

LABEL_18:
          v16 = v6;
        }
      }
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v32);
    goto LABEL_32;
  }

LABEL_29:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  return v3;
}

void *sub_1AFAB7A80(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    v3 = sub_1AF441150(a1, a1[3]);
    sub_1AF974940();
    if (v7 == 2)
    {
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      v3 = 0;
    }

    else if (v7 == 1)
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF974940();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      v3 = v5;
    }

    else if (v7)
    {
      sub_1AFDFE2C8();
      swift_allocError();
      sub_1AFDFE288();
      swift_willThrow();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    }

    else
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF47FEB4();
      sub_1AF974940();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      v3 = v5;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

unint64_t sub_1AFAB7CA0(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
LABEL_3:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF448018(v66, v67);
    v3 = 0x8000000000000000;
    switch(sub_1AFDFEAB8())
    {
      case 0:
        break;
      case 1:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v5 = v60;
        v6 = *&v61[16];
        v7 = v62;
        v8 = v63;
        v9 = v64;
        v54 = *v61;
        v10 = swift_allocObject();
        *(v10 + 16) = v60;
        *(v10 + 24) = v5;
        *(v10 + 32) = v54;
        *(v10 + 48) = v6;
        *(v10 + 56) = v7;
        *(v10 + 64) = v8;
        v3 = v10 | 0x2000000000000000;
        *(v10 + 66) = v9;
        break;
      case 2:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v17 = v60;
        v16 = *v61;
        v55 = *&v61[8];
        v18 = v62;
        v19 = v63;
        v53 = v64;
        sub_1AF448018(v66, v67);
        sub_1AF51DCC0();
        sub_1AFDFEAD8();
        v20 = v60;
        v21 = swift_allocObject();
        *(v21 + 16) = v60;
        *(v21 + 24) = v17;
        *(v21 + 32) = v16;
        *(v21 + 40) = v55;
        *(v21 + 56) = v18;
        *(v21 + 64) = v19;
        *(v21 + 66) = v53;
        v3 = v21 | 0x2000000000000004;
        *(v21 + 68) = v20;
        break;
      case 3:
        sub_1AF448018(v66, v67);
        sub_1AFAB8728();
        sub_1AFDFEAD8();
        v23 = *v61;
        v24 = v61[8];
        sub_1AF448018(v66, v67);
        sub_1AF992798();
        sub_1AFDFEAD8();
        v25 = v60;
        sub_1AF448018(v66, v67);
        sub_1AF51DBEC();
        sub_1AFDFEAD8();
        v56 = v60;
        sub_1AF448018(v66, v67);
        sub_1AF51DB18();
        sub_1AFDFEAD8();
        v51 = v60;
        v52 = swift_allocObject();
        *(v52 + 16) = v60;
        *(v52 + 24) = v23;
        *(v52 + 32) = v24;
        *(v52 + 33) = v25;
        *(v52 + 34) = v56;
        v3 = v52 | 0x4000000000000000;
        *(v52 + 35) = v51;
        break;
      case 4:
        sub_1AF448018(v66, v67);
        sub_1AFAB8728();
        sub_1AFDFEAD8();
        v11 = *v61;
        v12 = v61[8];
        v13 = swift_allocObject();
        *(v13 + 16) = v60;
        *(v13 + 24) = v11;
        *(v13 + 32) = v12;
        v3 = v13 | 0x4000000000000004;
        break;
      case 5:
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v27 = *v61;
        v57 = *&v61[8];
        v28 = v62;
        v29 = v63;
        v30 = v64;
        v31 = a1[3];
        v32 = a1[4];
        sub_1AF441150(a1, v31);
        if (sub_1AF69504C(2023, v31, v32))
        {
          v33 = 5;
        }

        else
        {
          sub_1AF448018(v66, v67);
          sub_1AF51DCC0();
          sub_1AFDFEA58();
          v33 = v60;
        }

        v50 = swift_allocObject();
        *(v50 + 16) = v60;
        *(v50 + 24) = v27;
        *(v50 + 32) = v57;
        *(v50 + 48) = v28;
        *(v50 + 56) = v29;
        *(v50 + 58) = v30;
        v3 = v50 | 0x5000000000000000;
        *(v50 + 60) = v33;
        break;
      case 6:
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v35 = *&v61[16];
        v36 = v62;
        v37 = v63;
        v38 = v64;
        v58 = *v61;
        v39 = swift_allocObject();
        *(v39 + 16) = v60;
        *(v39 + 24) = v58;
        *(v39 + 40) = v35;
        *(v39 + 48) = v36;
        *(v39 + 56) = v37;
        v3 = v39 | 0x5000000000000004;
        *(v39 + 58) = v38;
        break;
      case 7:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        v26 = swift_allocObject();
        *(v26 + 16) = v60;
        v3 = v26 | 0x6000000000000000;
        break;
      case 8:
        v3 = 0x8000000000000010;
        break;
      case 9:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        v15 = swift_allocObject();
        *(v15 + 16) = v60;
        v3 = v15 | 0x6000000000000004;
        break;
      case 10:
        sub_1AF448018(v66, v67);
        v40 = sub_1AFDFEA78();
        v42 = v41;
        sub_1AF448018(v66, v67);
        sub_1AF974884();
        sub_1AFDFEAD8();
        v43 = v60;
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        *(v44 + 24) = v42;
        *(v44 + 32) = v43;
        v3 = v44 | 0x7000000000000004;
        break;
      case 11:
        sub_1AF448018(v66, v67);
        sub_1AF9B3A20();
        sub_1AFDFEAD8();
        sub_1AF448018(v66, v67);
        sub_1AF64896C();
        sub_1AFDFEAD8();
        v45 = *&v61[16];
        v46 = v62;
        v47 = v63;
        v48 = v64;
        v59 = *v61;
        v49 = swift_allocObject();
        sub_1AF640200(v65, v49 + 16);
        *(v49 + 48) = v60;
        *(v49 + 56) = v59;
        *(v49 + 72) = v45;
        *(v49 + 80) = v46;
        *(v49 + 88) = v47;
        v3 = v49 | 4;
        *(v49 + 90) = v48;
        break;
      case 12:
        sub_1AF448018(v66, v67);
        sub_1AF9B3A20();
        sub_1AFDFEAD8();
        v14 = swift_allocObject();
        sub_1AF640200(&v60, v14 + 16);
        v3 = v14 | 0x1000000000000000;
        break;
      case 13:
        sub_1AF448018(v66, v67);
        sub_1AF47FEB4();
        sub_1AFDFEAD8();
        v34 = swift_allocObject();
        *(v34 + 16) = v60;
        v3 = v34 | 0x1000000000000004;
        break;
      case 14:
        v3 = 0x8000000000000008;
        break;
      default:
        v3 = 0x80000001AFF45900;
        sub_1AF4567E0();
        swift_allocError();
        *v22 = 0xD000000000000024;
        *(v22 + 8) = 0x80000001AFF45900;
        *(v22 + 16) = 96;
        swift_willThrow();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
        goto LABEL_3;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

unint64_t sub_1AFAB8728()
{
  result = qword_1EB6337B0;
  if (!qword_1EB6337B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6337B0);
  }

  return result;
}

uint64_t sub_1AFAB877C(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1AFAB87C8()
{
  result = qword_1EB6425C0;
  if (!qword_1EB6425C0)
  {
    sub_1AFABE4B8(255, &qword_1EB6425B8, &type metadata for EntitySpace, MEMORY[0x1E69E6720]);
    sub_1AF51DD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425C0);
  }

  return result;
}

uint64_t sub_1AFAB8864(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_1AFAB887C()
{
  result = qword_1EB6425C8;
  if (!qword_1EB6425C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425C8);
  }

  return result;
}

unint64_t sub_1AFAB88D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v11, v12);
  sub_1AFAB8AA4();
  sub_1AFDFEAD8();
  v5 = v10;
  sub_1AF448018(v11, v12);
  sub_1AFAB8AF8();
  sub_1AFDFEAD8();
  sub_1AF448018(v11, v12);
  v6 = sub_1AFDFEA88();
  if (v6)
  {
    sub_1AF443EE0(v10);
    v8 = sub_1AFAA129C(v10);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v9 = v8;
      sub_1AF443F24(v10);
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v9 = v10;
    v5 = 0xF000000000000007;
  }

  sub_1AF443EE0(v9);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  sub_1AF444224(v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  sub_1AF443F24(v9);
  result = sub_1AF444AF4(v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

unint64_t sub_1AFAB8AA4()
{
  result = qword_1EB633798;
  if (!qword_1EB633798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633798);
  }

  return result;
}

unint64_t sub_1AFAB8AF8()
{
  result = qword_1EB633850;
  if (!qword_1EB633850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633850);
  }

  return result;
}

unint64_t sub_1AFAB8B4C()
{
  result = qword_1EB6425D0;
  if (!qword_1EB6425D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425D0);
  }

  return result;
}

unint64_t sub_1AFAB8BA0()
{
  result = qword_1EB6425D8;
  if (!qword_1EB6425D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425D8);
  }

  return result;
}

uint64_t sub_1AFAB8BF4(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AFAB8C08(uint64_t a1, uint64_t a2)
{
  if (a2 > 0)
  {
    sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
    v4 = sub_1AFDFD488();
    *(v4 + 16) = a2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 16);
    *(v4 + 32) = *a1;
    *(v4 + 48) = v6;
    *(v4 + 64) = v5;
    if (a2 == 1)
    {
LABEL_8:
      sub_1AFABB62C(a1, v13);
      return v4;
    }

LABEL_6:
    v8 = a2 - 1;
    v9 = v4 + 72;
    do
    {
      sub_1AFABB62C(a1, v13);
      v10 = *a1;
      v11 = *(a1 + 16);
      *(v9 + 32) = *(a1 + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
      v9 += 40;
      --v8;
    }

    while (v8);
    goto LABEL_8;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v7 = *(a1 + 16);
    *(MEMORY[0x1E69E7CC0] + 32) = *a1;
    *(v4 + 48) = v7;
    *(v4 + 64) = *(a1 + 32);
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1AFAB8D00(char **a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF440564(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF440638(v2);
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v53 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AFC0D9F4(v5);
    }

    v7 = MEMORY[0x1E69E7CC0];
    v52 = v5;
    v8 = v5 + 64;
    while (2)
    {
      v9 = *(v8 - 4);
      switch((v9 >> 59) & 0x1E | (v9 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
          goto LABEL_10;
        case 9uLL:
          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20) < 2u)
          {
            goto LABEL_10;
          }

          goto LABEL_8;
        case 0xEuLL:
          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30) - 1 < 5)
          {
            goto LABEL_8;
          }

          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30))
          {
            if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20) | *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28) | *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) | *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
            {
              goto LABEL_8;
            }

LABEL_10:
          }

          else
          {
            v33 = swift_allocObject();
            *(v33 + 16) = 0u;
            *(v33 + 32) = 0u;
            *(v33 + 48) = 6;
            v9 = v33 | 0x7000000000000000;
          }

LABEL_11:
          if (v4[2])
          {
            v10 = sub_1AF41AF3C(v9);
            if (v11)
            {
              v12 = *(v4[7] + 8 * v10);
              if ((*(v8 - 24) & 2) == 0)
              {
                goto LABEL_6;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = v3;
              v14 = sub_1AF41AF3C(v9);
              v16 = v15;
              if (v3[3] >= (v3[2] + ((v15 & 1) == 0)))
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_32;
                }

                v37 = v14;
                sub_1AF84F538();
                v14 = v37;
                v3 = v56;
                if (v16)
                {
                  goto LABEL_5;
                }

LABEL_33:
                v3[(v14 >> 6) + 8] |= 1 << v14;
                *(v3[6] + 8 * v14) = v9;
                *(v3[7] + v14) = 1;
                ++v3[2];
              }

              else
              {
                sub_1AF840A58(v3[2] + ((v15 & 1) == 0), isUniquelyReferenced_nonNull_native);
                v14 = sub_1AF41AF3C(v9);
                if ((v16 & 1) != (v17 & 1))
                {
                  goto LABEL_69;
                }

LABEL_32:
                if ((v16 & 1) == 0)
                {
                  goto LABEL_33;
                }

LABEL_5:
                *(v3[7] + v14) = 1;
LABEL_6:
                sub_1AF443F24(v9);
              }

              *(v8 - 1) = v12;
              *v8 = 0;
              goto LABEL_8;
            }
          }

          v54 = *(v7 + 2);
          v55 = v7;
          *(v8 - 1) = v54;
          *v8 = 0;
          v18 = *(v8 - 24);
          sub_1AF443EE0(v9);
          v19 = swift_isUniquelyReferenced_nonNull_native();
          v20 = sub_1AF41AF3C(v9);
          v22 = v21;
          v23 = v3[2] + ((v21 & 1) == 0);
          if (v3[3] >= v23)
          {
            if ((v19 & 1) == 0)
            {
              sub_1AF84F538();
            }
          }

          else
          {
            sub_1AF840A58(v23, v19);
            v24 = sub_1AF41AF3C(v9);
            if ((v22 & 1) != (v25 & 1))
            {
              goto LABEL_69;
            }

            v20 = v24;
          }

          v26 = (v18 & 2) >> 1;
          if (v22)
          {
            *(v3[7] + v20) = v26;
            sub_1AF443F24(v9);
          }

          else
          {
            v3[(v20 >> 6) + 8] |= 1 << v20;
            *(v3[6] + 8 * v20) = v9;
            *(v3[7] + v20) = v26;
            ++v3[2];
          }

          sub_1AF443EE0(v9);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v4;
          v28 = sub_1AF41AF3C(v9);
          v30 = v29;
          v7 = v55;
          if (v4[3] < (v4[2] + ((v29 & 1) == 0)))
          {
            sub_1AF8407F4(v4[2] + ((v29 & 1) == 0), v27);
            v28 = sub_1AF41AF3C(v9);
            if ((v30 & 1) != (v31 & 1))
            {
LABEL_69:
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }

LABEL_29:
            if (v30)
            {
              goto LABEL_30;
            }

            goto LABEL_45;
          }

          if (v27)
          {
            goto LABEL_29;
          }

          v34 = v28;
          sub_1AF84F3E4();
          v28 = v34;
          v4 = v57;
          if (v30)
          {
LABEL_30:
            *(v4[7] + 8 * v28) = v54;
            sub_1AF443F24(v9);
            goto LABEL_46;
          }

LABEL_45:
          v4[(v28 >> 6) + 8] |= 1 << v28;
          *(v4[6] + 8 * v28) = v9;
          *(v4[7] + 8 * v28) = v54;
          ++v4[2];
LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1AF42744C(0, *(v55 + 2) + 1, 1, v55);
          }

          v36 = *(v7 + 2);
          v35 = *(v7 + 3);
          if (v36 >= v35 >> 1)
          {
            v7 = sub_1AF42744C(v35 > 1, v36 + 1, 1, v7);
          }

          *(v7 + 2) = v36 + 1;
          *&v7[8 * v36 + 32] = v9;
LABEL_8:
          v8 += 40;
          if (--v6)
          {
            continue;
          }

          *v53 = v52;
          v2 = MEMORY[0x1E69E7CC0];
          v38 = *(v7 + 2);
          if (v38)
          {
            goto LABEL_54;
          }

          goto LABEL_67;
        case 0x10uLL:
          v32 = v9 == 0x8000000000000000;
          v9 = 0x8000000000000000;
          if (!v32)
          {
            goto LABEL_8;
          }

          goto LABEL_11;
        default:
          goto LABEL_8;
      }
    }
  }

  v7 = v2;
  v38 = *(v2 + 16);
  if (v38)
  {
LABEL_54:
    sub_1AFC07A4C(0, v38, 0);
    v39 = 32;
    v40 = v2;
    v41 = v7;
    while (1)
    {
      v42 = *&v7[v39];
      v43 = v3[2];
      sub_1AF443EE0(v42);
      if (!v43)
      {
        goto LABEL_61;
      }

      sub_1AF443EE0(v42);
      v44 = sub_1AF41AF3C(v42);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v46 = *(v3[7] + v44);
      sub_1AF443F24(v42);
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 1;
      }

LABEL_62:
      v49 = *(v40 + 16);
      v48 = *(v40 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1AFC07A4C(v48 > 1, v49 + 1, 1);
      }

      *(v40 + 16) = v49 + 1;
      v50 = v40 + 40 * v49;
      *(v50 + 32) = v42;
      *(v50 + 40) = v47;
      *(v50 + 48) = xmmword_1AFE4C460;
      *(v50 + 64) = 1;
      v39 += 8;
      --v38;
      v7 = v41;
      if (!v38)
      {

        return v40;
      }
    }

    sub_1AF443F24(v42);
LABEL_61:
    v47 = 1;
    goto LABEL_62;
  }

LABEL_67:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AFAB9354(uint64_t a1)
{
  v2 = sub_1AF441B18(MEMORY[0x1E69E7CC0]);
  v39 = v3;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_31:

    v36 = sub_1AF42A964(v2, v39, sub_1AFAB5B64);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v36;
  }

  v5 = (a1 + 64);
  while (1)
  {
    v9 = *(v5 - 4);
    if (((v9 >> 59) & 0x1E | (v9 >> 2) & 1) != 0xE)
    {
      goto LABEL_4;
    }

    v10 = *(v5 - 2);
    v11 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (v12 == 4)
    {
      v40 = *(v5 - 24);
      v41 = *(v5 - 1);
      v42 = *v5;
      v13 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_4;
      }

      v40 = *(v5 - 24);
      v41 = *(v5 - 1);
      v42 = *v5;
      v14 = v11 + 16;
      v11 = *(v11 + 16);
      v13 = *(v14 + 8);
    }

    swift_bridgeObjectRetain_n();
    v15 = v2[2];
    sub_1AF443EE0(v9);
    sub_1AF444224(v10);
    v44 = v10;
    if (v15)
    {
      break;
    }

LABEL_16:
    sub_1AF443EE0(v9);
    sub_1AF444224(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v2;
    v25 = sub_1AF419914(v11, v13);
    v27 = v26;
    if (v2[3] >= (v2[2] + ((v26 & 1) == 0)))
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v25;
        sub_1AF84F68C();
        v25 = v35;
        v2 = v43;
        if ((v27 & 1) == 0)
        {
LABEL_21:
          v2[(v25 >> 6) + 8] |= 1 << v25;
          v29 = (v2[6] + 16 * v25);
          *v29 = v11;
          v29[1] = v13;
          v30 = v2[7] + 40 * v25;
          *v30 = v9;
          *(v30 + 8) = v40;
          *(v30 + 16) = v44;
          *(v30 + 24) = v41;
          *(v30 + 32) = v42;
          ++v2[2];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1AF420554(0, *(v39 + 2) + 1, 1, v39);
          }

          v32 = *(v39 + 2);
          v31 = *(v39 + 3);
          if (v32 >= v31 >> 1)
          {
            v39 = sub_1AF420554(v31 > 1, v32 + 1, 1, v39);
          }

          sub_1AF443F24(v9);
          sub_1AF444AF4(v44);
          *(v39 + 2) = v32 + 1;
          v33 = &v39[16 * v32];
          *(v33 + 4) = v11;
          *(v33 + 5) = v13;
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1AF840CBC(v2[2] + ((v26 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v25 = sub_1AF419914(v11, v13);
      if ((v27 & 1) != (v28 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_3:
    v6 = v2[7] + 40 * v25;
    v7 = *v6;
    v8 = *(v6 + 16);
    *v6 = v9;
    *(v6 + 8) = v40;
    *(v6 + 16) = v44;
    *(v6 + 24) = v41;
    *(v6 + 32) = v42;

    sub_1AF443F24(v9);
    sub_1AF444AF4(v44);
    sub_1AF443F24(v7);
    sub_1AF444AF4(v8);
LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      goto LABEL_31;
    }
  }

  sub_1AF419914(v11, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v2[2] && (v18 = sub_1AF419914(v11, v13), (v19 & 1) != 0))
  {
    v20 = (v2[7] + 40 * v18);
    v21 = *v20;
    v22 = v20[2];
    sub_1AF443EE0(*v20);
    sub_1AF444224(v22);
    v23 = v22;
  }

  else
  {
    v23 = 0;
    v21 = 0xF000000000000007;
  }

  sub_1AF444AF4(v23);
  v34 = sub_1AFAB5FF0(v21, v9);
  sub_1AF443F24(v21);
  if (v34)
  {

    sub_1AF443F24(v9);
    sub_1AF444AF4(v44);
    goto LABEL_4;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v11, v13);

  MEMORY[0x1B2718AE0](0x74616D73696D2027, 0xEA00000000006863);
  sub_1AF81F330();
  swift_allocError();
  *v37 = 0xD000000000000013;
  v37[1] = 0x80000001AFF45B40;
  swift_willThrow();
  sub_1AF443F24(v9);
  sub_1AF444AF4(v44);
}

uint64_t sub_1AFAB984C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v58 = sub_1AF44070C(MEMORY[0x1E69E7CC0]);
  v68 = MEMORY[0x1E69E7CD0];
  v60 = *(a1 + 16);
  if (v60)
  {
    v3 = 0;
    v59 = a1 + 32;
    while (1)
    {
      v4 = v59 + 40 * v3;
      v6 = *(v4 + 8);
      v7 = *(v4 + 32);
      *&v65 = *v4;
      v5 = v65;
      BYTE8(v65) = v6;
      v62 = *(v4 + 16);
      v66 = v62;
      v67 = v7;
      v61 = v2;
      if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 0xE)
      {
        break;
      }

      v8 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x30) != 1 || v8 < 9)
      {
        break;
      }

      v22 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v24 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v23 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      sub_1AF443EE0(v65);
      sub_1AF444224(v62);
      sub_1AFABCE58(v22, v8, v24, v23, 1);
      sub_1AF445BE4(v24);
      v25 = v58;
      if (!v58[2] || (sub_1AF419914(v22, v8), v25 = v58, (v26 & 1) == 0))
      {
        sub_1AF443EE0(v5);
        sub_1AF444224(v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v25;
        v35 = sub_1AF419914(v22, v8);
        v36 = v34;
        v37 = v25[2] + ((v34 & 1) == 0);
        if (v25[3] >= v37)
        {
          v41 = isUniquelyReferenced_nonNull_native;
          v38 = v22;
          if (v41)
          {
            if ((v34 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_1AF84F68C();
            if ((v36 & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          sub_1AF840CBC(v37, isUniquelyReferenced_nonNull_native);
          v38 = v22;
          v39 = sub_1AF419914(v22, v8);
          if ((v36 & 1) != (v40 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v35 = v39;
          if ((v36 & 1) == 0)
          {
LABEL_38:
            v58 = v63;
            sub_1AF843D60(v35, v38, v8, &v65, v63);
LABEL_39:
            v47 = v68;
            if (!*(v68 + 16))
            {

              goto LABEL_17;
            }

            sub_1AFDFF288();

            sub_1AFAA0C08(&v63, v5);
            v48 = sub_1AFDFF2F8();
            v49 = -1 << *(v47 + 32);
            v50 = v48 & ~v49;
            if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_17;
            }

            v51 = ~v49;
            while (1)
            {
              v52 = *(*(v47 + 48) + 8 * v50);
              sub_1AF443EE0(v52);
              v53 = sub_1AFAB5FF0(v52, v5);
              sub_1AF443F24(v52);
              if (v53)
              {
                break;
              }

              v50 = (v50 + 1) & v51;
              if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

LABEL_3:
            sub_1AF443F24(v5);
            sub_1AF443F24(v5);
            sub_1AF444AF4(v62);
            v2 = v61;
            goto LABEL_4;
          }
        }

        v58 = v63;
        v42 = v63[7] + 40 * v35;
        v43 = *v42;
        v44 = *(v42 + 16);
        *(v42 + 32) = v67;
        v45 = v66;
        *v42 = v65;
        *(v42 + 16) = v45;
        sub_1AF443F24(v43);
        sub_1AF444AF4(v44);
        goto LABEL_39;
      }

      if (v58[2] && (v27 = sub_1AF419914(v22, v8), (v28 & 1) != 0))
      {
        v29 = (v58[7] + 40 * v27);
        v30 = *v29;
        v31 = v29[2];
        sub_1AF443EE0(*v29);
        sub_1AF444224(v31);
        v32 = v31;
      }

      else
      {
        v32 = 0;
        v30 = 0xF000000000000007;
      }

      sub_1AF444AF4(v32);
      v46 = sub_1AFAB5FF0(v30, v5);
      sub_1AF443F24(v30);
      if ((v46 & 1) == 0)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1AFDFE218();

        v63 = 0xD000000000000015;
        v64 = 0x80000001AFF45B20;
        MEMORY[0x1B2718AE0](v22, v8);

        MEMORY[0x1B2718AE0](0x74616D73696D2027, 0xEA00000000006863);
        v55 = v63;
        v56 = v64;
        sub_1AF81F330();
        swift_allocError();
        *v57 = v55;
        v57[1] = v56;
        swift_willThrow();
        sub_1AF443F24(v5);
        sub_1AF444AF4(v62);

        return v2;
      }

      sub_1AF443F24(v5);
      sub_1AF444AF4(v62);
LABEL_4:
      if (++v3 == v60)
      {
        goto LABEL_47;
      }
    }

    v10 = v68;
    if (!*(v68 + 16))
    {
      sub_1AF443EE0(v65);
      sub_1AF443EE0(v5);
      sub_1AF444224(v62);
LABEL_17:
      sub_1AF70E690(&v63, v5);
      sub_1AF443F24(v63);
      v2 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF420C34(0, *(v61 + 2) + 1, 1, v61);
      }

      v18 = *(v2 + 2);
      v17 = *(v2 + 3);
      if (v18 >= v17 >> 1)
      {
        v2 = sub_1AF420C34(v17 > 1, v18 + 1, 1, v2);
      }

      *(v2 + 2) = v18 + 1;
      v19 = &v2[40 * v18];
      v20 = v65;
      v21 = v66;
      v19[64] = v67;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      goto LABEL_4;
    }

    sub_1AFDFF288();
    sub_1AF443EE0(v5);
    sub_1AF443EE0(v5);
    sub_1AF444224(v62);
    sub_1AFAA0C08(&v63, v5);
    v11 = sub_1AFDFF2F8();
    v12 = -1 << *(v10 + 32);
    v13 = v11 & ~v12;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_17;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v10 + 48) + 8 * v13);
      sub_1AF443EE0(v15);
      v16 = sub_1AFAB5FF0(v15, v5);
      sub_1AF443F24(v15);
      if (v16)
      {
        goto LABEL_3;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_47:

  return v2;
}

unint64_t sub_1AFAB9EAC(uint64_t a1)
{

  v2 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v4 = v3;

  if ((v4 & 1) == 0)
  {

    v5 = sub_1AF3C9078(v2);
    v7 = v6;

    if (v7)
    {
      MEMORY[0x1B2718AE0](v5, v7);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000016;
}

unint64_t sub_1AFAB9FCC(uint64_t a1)
{

  v2 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v4 = v3;

  if ((v4 & 1) == 0)
  {

    v5 = sub_1AF3C9078(v2);
    v7 = v6;

    if (v7)
    {
      MEMORY[0x1B2718AE0](v5, v7);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000015;
}

unint64_t sub_1AFABA0DC(uint64_t a1)
{

  v2 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v4 = v3;

  if ((v4 & 1) == 0)
  {

    v5 = sub_1AF3C9078(v2);
    v7 = v6;

    if (v7)
    {
      MEMORY[0x1B2718AE0](v5, v7);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000018;
}

unint64_t sub_1AFABA1FC(uint64_t a1)
{

  v2 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v4 = v3;

  if ((v4 & 1) == 0)
  {

    v5 = sub_1AF3C9078(v2);
    v7 = v6;

    if (v7)
    {
      MEMORY[0x1B2718AE0](v5, v7);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD00000000000001ELL;
}

unint64_t sub_1AFABA30C(uint64_t a1)
{

  v2 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v4 = v3;

  if ((v4 & 1) == 0)
  {

    v5 = sub_1AF3C9078(v2);
    v7 = v6;

    if (v7)
    {
      MEMORY[0x1B2718AE0](v5, v7);

      MEMORY[0x1B2718AE0](34, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x2220726F6620, 0xE600000000000000);
    }
  }

  return 0xD000000000000016;
}

char *sub_1AFABA41C()
{
  v1 = *(v0 + *(type metadata accessor for ShaderScript(0) + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF4486E4();
  v3 = v1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
  while ((sub_1AFDFDF18() & 1) == 0)
  {
    v3 += 16;
    if (!--v2)
    {
      v5 = *(v1 + 16);
      if (!v5)
      {
        return v4;
      }

      goto LABEL_11;
    }
  }

  v6 = sub_1AFB12464(0, 0, 2u);
  v8 = v7;
  v4 = sub_1AF4246B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  if (v10 >= v9 >> 1)
  {
    v4 = sub_1AF4246B0(v9 > 1, v10 + 1, 1, v4);
  }

  *(v4 + 2) = v10 + 1;
  v11 = &v4[24 * v10];
  *(v11 + 4) = v6;
  *(v11 + 5) = v8;
  v11[48] = 2;
  v5 = *(v1 + 16);
  if (!v5)
  {
    return v4;
  }

LABEL_11:
  v12 = v1 + 40;
  while ((sub_1AFDFDF18() & 1) == 0)
  {
    v12 += 16;
    if (!--v5)
    {
      return v4;
    }
  }

  v13 = sub_1AFB12464(0, 0, 1u);
  v15 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AF4246B0(0, *(v4 + 2) + 1, 1, v4);
  }

  v17 = *(v4 + 2);
  v16 = *(v4 + 3);
  if (v17 >= v16 >> 1)
  {
    v4 = sub_1AF4246B0(v16 > 1, v17 + 1, 1, v4);
  }

  *(v4 + 2) = v17 + 1;
  v18 = &v4[24 * v17];
  *(v18 + 4) = v13;
  *(v18 + 5) = v15;
  v18[48] = 1;
  return v4;
}

uint64_t sub_1AFABA664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = -v1;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = (v3 + 40 * v2++);
    while (1)
    {
      v8 = *v6;
      v6 += 5;
      v7 = v8;
      if (((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0xA)
      {

        v9 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;
        sub_1AF443F24(v7);
        if (v9)
        {
          break;
        }
      }

      ++v2;
      if (v4 + v2 == 1)
      {
        return v5;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF422C28(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_1AF422C28(v12 > 1, v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  while (v4 + v2);
  return v5;
}

uint64_t sub_1AFABA7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v118 = a2;
  v173 = *MEMORY[0x1E69E9840];
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited - 8, v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v104 - v10;
  sub_1AFABB6B4(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v104 - v23;
  v25 = *a1;
  v26 = *(a1 + 8);
  v113 = *(a1 + 12);
  v114 = v26;
  v27 = v26 | (v113 << 32);

  v28 = sub_1AF6824B0(v13, &off_1F2558F90, v27);
  if (!v28)
  {
  }

  v117 = a1;
  v112 = v16;
  v119 = v13;
  v29 = v28;
  sub_1AFABC9C4(v28, v24, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  sub_1AFABBD7C(v24, v11, type metadata accessor for ParticleInitScript);
  sub_1AFABCA48(v24, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v30 = *v11;
  sub_1AFAB7208(v11, type metadata accessor for ParticleInitScript);
  if (v30 == 2)
  {
  }

  v116 = v29;
  sub_1AFABC9C4(v29, v20, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  sub_1AFABBD7C(v20, v7, type metadata accessor for ParticleInitScript);
  sub_1AFABCA48(v20, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  if (v7[40])
  {
    sub_1AFAB7208(v7, type metadata accessor for ParticleInitScript);
    v32 = v119;
    v33 = v117;
  }

  else
  {
    v34 = *(*(v7 + 4) + 16);
    sub_1AFAB7208(v7, type metadata accessor for ParticleInitScript);
    v32 = v119;
    v33 = v117;
    if (!v34)
    {
      goto LABEL_12;
    }
  }

  sub_1AFABC9C4(v116, v24, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  sub_1AFABBD7C(v24, v11, type metadata accessor for ParticleInitScript);
  sub_1AFABCA48(v24, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v35 = v11[40];
  sub_1AFAB7208(v11, type metadata accessor for ParticleInitScript);
  if ((v35 & 1) == 0 && !sub_1AFABF13C(v33[4]))
  {
  }

LABEL_12:
  v104 = (v116 + *(v32 + 60));
  v105 = v25;
  v36 = *v104;
  v37 = *(*v104 + 16);

  v38 = 0;
  v120 = 0;
  v39 = v37 + 1;
  v40 = MEMORY[0x1E69E7CC0];
  v41 = 32;
LABEL_13:
  v42 = v41 + 40 * v38;
  while (v39 != ++v38)
  {
    v43 = *(v36 + v42);
    v42 += 40;
    if (((v43 >> 59) & 0x1E | (v43 >> 2) & 1) == 0xA)
    {

      v44 = sub_1AFDFDFD8();
      v45 = swift_conformsToProtocol2();
      if (!v45)
      {
        __break(1u);
        goto LABEL_64;
      }

      v46 = v45;
      sub_1AF443F24(v43);
      v47 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AF420E4C(0, *(v40 + 2) + 1, 1, v40);
      }

      v49 = *(v40 + 2);
      v48 = *(v40 + 3);
      if (v49 >= v48 >> 1)
      {
        v40 = sub_1AF420E4C(v48 > 1, v49 + 1, 1, v40);
      }

      v50 = *(v46 + 8);
      *(v40 + 2) = v49 + 1;
      v51 = &v40[16 * v49];
      *(v51 + 4) = v44;
      *(v51 + 5) = v50;
      v41 = v47;
      v33 = v117;
      goto LABEL_13;
    }
  }

  v52 = *(v33 + 13);
  v128 = *(v33 + 11);
  v129 = v52;
  v130 = v33[15];
  sub_1AF5B4630(v40, v127);

  v53 = v116;
  v54 = v112;
  sub_1AFABC9C4(v116, v112, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v55 = v119;
  v56 = *(v54 + *(v119 + 40));
  if (!v56)
  {
LABEL_64:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v107 = *(v56 + 32);
  sub_1AFABCA48(v54, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368);
  v57 = v104;
  v58 = v105;
  v59 = v104[1];
  v60 = v53 + *(v55 + 56);
  v61 = *v60;
  v106 = v60;
  v62 = v33[4];
  v122 = *(v60 + 8);
  v121 = 0;
  if (v59)
  {
    v63 = v59;
  }

  else
  {
    v64 = *(v36 + 16);
    if (v64)
    {
      sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
      v63 = sub_1AFDFD488();
      *(v63 + 16) = v64;
      v65 = 32;
      do
      {
        v66 = v63 + v65;
        *v66 = 0;
        *(v66 + 8) = 0;
        *(v66 + 16) = 0;
        *(v66 + 24) = xmmword_1AFE4C450;
        v65 += 40;
        --v64;
      }

      while (v64);
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v148 + 9) = v125;
  BYTE11(v148[0]) = v126;
  *(&v148[1] + 5) = v123;
  BYTE7(v148[1]) = v124;
  *&v147 = 0;
  *(&v147 + 1) = v36;
  *&v148[0] = v61;
  BYTE8(v148[0]) = v122;
  *(v148 + 12) = v62;
  BYTE4(v148[1]) = v121;
  *(&v148[1] + 1) = v63;
  *&v149 = MEMORY[0x1E69E7CC0];
  *(&v149 + 1) = MEMORY[0x1E69E7CC0];
  v150 = 0uLL;
  *v151 = 0;
  *&v151[8] = xmmword_1AFE22A20;
  v67 = thread_worker_index(xmmword_1AFE22A20);
  v68 = *(v58 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v67 != -1)
  {
    v68 += *v67 + 1;
  }

  v69 = *v68;

  if (sub_1AFAE1FA0(v69, v115))
  {
    sub_1AF6B06C0(v58, v127, 0x200000000, &v152);
    if (v152)
    {
      v112 = v160;
      if (v160 > 0 && (v111 = v157) != 0)
      {
        v110 = v156;
        v70 = v158;
        v71 = v159;
        v72 = *(v159 + 32);
        LODWORD(v119) = *(v158 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v131 = v152;
        v132 = DWORD2(v152);
        v133 = BYTE12(v152);
        v134 = v153;
        v135 = v154;
        v136 = v155;

        v109 = v70;

        v73 = 0;
        v108 = v72;
        do
        {
          v74 = (v110 + 48 * v73);
          v75 = *v74;
          v76 = v74[1];
          v77 = v74[2];
          v78 = *(v74 + 2);
          v116 = *(v74 + 3);
          v117 = v78;
          v79 = *(v74 + 4);
          v80 = *(v74 + 5);
          if (v119)
          {
            v81 = *(v80 + 376);

            os_unfair_lock_lock(v81);
            os_unfair_lock_lock(*(v80 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v72);
          v82 = *(v71 + 64);
          v161[0] = *(v71 + 48);
          v161[1] = v82;
          v162 = *(v71 + 80);
          v83 = *(*(*(*(v80 + 40) + 16) + 32) + 16) + 1;
          *(v71 + 48) = ecs_stack_allocator_allocate(*(v71 + 32), 48 * v83, 8);
          *(v71 + 56) = v83;
          *(v71 + 72) = 0;
          *(v71 + 80) = 0;
          *(v71 + 64) = 0;
          LOBYTE(v145[0]) = 1;
          *&v165 = v109;
          *(&v165 + 1) = v80;
          *&v166 = v71;
          *(&v166 + 1) = v77;
          *&v167 = (v76 - v75 + v77);
          *(&v167 + 1) = v112;
          *&v168 = v75;
          *(&v168 + 1) = v76;
          v169 = 0uLL;
          LOBYTE(v170) = 1;
          *(&v170 + 1) = v117;
          v171 = v116;
          v172 = v79;
          if (sub_1AFADB930(v127, &v165))
          {
            v84 = *v106;
            v85 = *(v106 + 8);
            v117 = v166;
            v86 = *(v166 + 32);
            v116 = v147;
            v87 = v168;
            v88 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
            swift_unknownObjectUnownedInit();
            if (v85)
            {
              v89 = 3031;
            }

            else
            {
              v89 = v84;
            }

            v137[0] = v89;
            v137[1] = v118;
            v138 = v114;
            v139 = v113;
            v140 = v86;
            v141 = v87;
            v142 = 0;
            v143 = v116;
            v144 = v88;
            if (v115)
            {
              Strong = swift_unknownObjectUnownedLoadStrong();
            }

            else
            {
              Strong = 0;
            }

            v91 = v120;
            swift_unknownObjectUnownedAssign();

            sub_1AFABB57C(v137, v145);
            v107(v145);
            sub_1AFABB5D8(v145);
            v92 = *(&v149 + 1);
            v163[0] = v150;
            v163[1] = *v151;
            v164 = *&v151[16];
            sub_1AF630994(v117, v127, v163);
            v93 = *(v92 + 16);
            if (v93)
            {
              v94 = v92 + 40;
              do
              {
                v95 = *(v94 - 8);

                v95(v96);

                v94 += 16;
                --v93;
              }

              while (v93);
            }
          }

          else
          {
            v91 = v120;
          }

          sub_1AF630994(v71, &v131, v161);
          v120 = v91;
          sub_1AF62D29C(v80);
          v72 = v108;
          ecs_stack_allocator_pop_snapshot(v108);
          if (v119)
          {
            os_unfair_lock_unlock(*(v80 + 344));
            os_unfair_lock_unlock(*(v80 + 376));
          }

          ++v73;
        }

        while (v73 != v111);
        v98 = MEMORY[0x1E69E6720];
        sub_1AFABB520(&v152, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
        sub_1AFABB520(&v152, &qword_1ED725EA0, &type metadata for QueryResult, v98);
        v57 = v104;
      }

      else
      {
        sub_1AFABB520(&v152, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      sub_1AFABF248(v62, v127);
    }

    v99 = *(&v148[1] + 1);

    v57[1] = v99;
    v100 = *(v149 + 16);
    if (v100)
    {
      v101 = v149 + 40;
      do
      {
        v102 = *(v101 - 8);

        v102(v103);

        v101 += 16;
        --v100;
      }

      while (v100);
    }

    sub_1AF692DB0(v127);

    v145[3] = v149;
    v145[4] = v150;
    v145[5] = *v151;
    v146 = *&v151[16];
    v145[0] = v147;
    v145[1] = v148[0];
    v145[2] = v148[1];
    v97 = v145;
  }

  else
  {

    sub_1AF692DB0(v127);
    v169 = v150;
    v170 = *v151;
    v171 = *&v151[16];
    v165 = v147;
    v166 = v148[0];
    v167 = v148[1];
    v168 = v149;
    v97 = &v165;
  }

  return sub_1AFABB4CC(v97);
}

uint64_t sub_1AFABB520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AFABE4B8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFABB62C(uint64_t a1, uint64_t a2)
{
  sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AFABB6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFABB720()
{
  result = qword_1ED7225D8;
  if (!qword_1ED7225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7225D8);
  }

  return result;
}

unint64_t sub_1AFABB774()
{
  result = qword_1ED722008;
  if (!qword_1ED722008)
  {
    sub_1AFABE4B8(255, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    sub_1AFABB810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722008);
  }

  return result;
}

unint64_t sub_1AFABB810()
{
  result = qword_1ED7229C0;
  if (!qword_1ED7229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229C0);
  }

  return result;
}

uint64_t sub_1AFABB864(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFABE4B8(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFABB8E8()
{
  result = qword_1EB6425E8;
  if (!qword_1EB6425E8)
  {
    sub_1AFABE4B8(255, &unk_1ED722010, &type metadata for ScriptParameter, MEMORY[0x1E69E62F8]);
    sub_1AFABB984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425E8);
  }

  return result;
}

unint64_t sub_1AFABB984()
{
  result = qword_1EB6425F0;
  if (!qword_1EB6425F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6425F0);
  }

  return result;
}

unint64_t sub_1AFABB9D8()
{
  result = qword_1EB6335E8;
  if (!qword_1EB6335E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335E8);
  }

  return result;
}

unint64_t sub_1AFABBA2C()
{
  result = qword_1EB6339A0;
  if (!qword_1EB6339A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339A0);
  }

  return result;
}

unint64_t sub_1AFABBA80()
{
  result = qword_1EB633728;
  if (!qword_1EB633728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633728);
  }

  return result;
}

unint64_t sub_1AFABBAD4()
{
  result = qword_1EB642608;
  if (!qword_1EB642608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642608);
  }

  return result;
}

unint64_t sub_1AFABBB28()
{
  result = qword_1EB642618;
  if (!qword_1EB642618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642618);
  }

  return result;
}

unint64_t sub_1AFABBB7C()
{
  result = qword_1EB642630;
  if (!qword_1EB642630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642630);
  }

  return result;
}

unint64_t sub_1AFABBBD0()
{
  result = qword_1EB631910;
  if (!qword_1EB631910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631910);
  }

  return result;
}

unint64_t sub_1AFABBC24()
{
  result = qword_1ED722B38;
  if (!qword_1ED722B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722B38);
  }

  return result;
}

unint64_t sub_1AFABBC78()
{
  result = qword_1EB642658;
  if (!qword_1EB642658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642658);
  }

  return result;
}

unint64_t sub_1AFABBCCC()
{
  result = qword_1EB642660;
  if (!qword_1EB642660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642660);
  }

  return result;
}

uint64_t sub_1AFABBD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AFABBDE4()
{
  result = qword_1EB642670;
  if (!qword_1EB642670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642670);
  }

  return result;
}

uint64_t sub_1AFABBE38(unsigned __int16 **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v84 = a6;
  v85 = a1;
  v89 = a4;
  v77 = a3;
  v128 = *MEMORY[0x1E69E9840];
  sub_1AFABB6B4(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70[-v13];
  sub_1AFABC9C4(a5, &v70[-v13], &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
  v15 = *&v14[v11[10]];
  if (v15)
  {
    v76 = *(v15 + 32);
    sub_1AFABCA48(v14, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
    v16 = v11[14];
    v17 = (a5 + v11[15]);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(a5 + v16);
    v21 = *(a5 + v16 + 8);
    v91 = *(a5 + v16 + 8);
    v90 = 0;
    v72 = v17;
    v88 = v20;
    if (v18)
    {
      v22 = a2;

      v23 = v18;
    }

    else
    {
      v24 = *(v19 + 16);
      if (v24)
      {
        sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);

        v23 = sub_1AFDFD488();
        *(v23 + 16) = v24;
        v25 = 32;
        do
        {
          v26 = v23 + v25;
          *v26 = 0;
          *(v26 + 8) = 0;
          *(v26 + 16) = 0;
          *(v26 + 24) = xmmword_1AFE4C450;
          v25 += 40;
          --v24;
        }

        while (v24);
        v22 = a2;
        v20 = v88;
      }

      else
      {
        v22 = a2;

        v23 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v106 = 0;
    *(&v106 + 1) = v19;
    *&v107[0] = v20;
    BYTE8(v107[0]) = v91;
    *(v107 + 12) = v89;
    BYTE4(v107[1]) = v90;
    *(&v107[1] + 1) = v23;
    *&v108 = MEMORY[0x1E69E7CC0];
    *(&v108 + 1) = MEMORY[0x1E69E7CC0];
    v109 = 0uLL;
    *v110 = 0;
    *&v110[8] = xmmword_1AFE22A20;
    v27 = thread_worker_index(xmmword_1AFE22A20);
    v28 = *(v84 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v27 != -1)
    {
      v28 += *v27 + 1;
    }

    v29 = *v28;

    v30 = sub_1AFAE1FA0(v29, a7);
    v31 = v30;
    if (v30)
    {
      v71 = v30;
      v75 = a7;
      v32 = *v22;
      if (*v22)
      {
        v33 = v22;
        v83 = *(v22 + 80);
        if (v83 >= 1)
        {
          v82 = *(v22 + 56);
          if (v82)
          {
            v34 = 0;
            v35 = 0;
            v74 = HIDWORD(v77);
            v81 = *(v22 + 40);
            v36 = *(v22 + 64);
            v37 = *(v22 + 72);
            v38 = *(v37 + 32);
            v79 = v38;
            v80 = v36;
            v39 = *(v36 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v92 = v32;
            v40 = *(v33 + 24);
            v93 = *(v33 + 8);
            v94 = v40;
            v41 = 3031;
            if (!v21)
            {
              v41 = v88;
            }

            v73 = v41;
            v78 = v39;
            do
            {
              v42 = (v81 + 48 * v34);
              v44 = *v42;
              v43 = v42[1];
              v45 = v42[2];
              v46 = *(v42 + 2);
              v87 = *(v42 + 3);
              v88 = v46;
              v47 = *(v42 + 5);
              v86 = *(v42 + 4);
              v89 = v35;
              if (v39)
              {
                v48 = *(v47 + 376);

                os_unfair_lock_lock(v48);
                os_unfair_lock_lock(*(v47 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v38);
              v49 = *(v37 + 64);
              v111[0] = *(v37 + 48);
              v111[1] = v49;
              v112 = *(v37 + 80);
              v50 = *(*(*(*(v47 + 40) + 16) + 32) + 16) + 1;
              *(v37 + 48) = ecs_stack_allocator_allocate(*(v37 + 32), 48 * v50, 8);
              *(v37 + 56) = v50;
              *(v37 + 72) = 0;
              *(v37 + 80) = 0;
              *(v37 + 64) = 0;
              LOBYTE(v104[0]) = 1;
              v115[0] = v80;
              v115[1] = v47;
              v116 = v37;
              v117 = v45;
              v118 = (v43 - v44 + v45);
              v119 = v83;
              v120 = v44;
              v121 = v43;
              v122 = 0;
              v123 = 0;
              v124 = 1;
              v125 = v88;
              v126 = v87;
              v127 = v86;
              if (sub_1AFADB930(v85, v115))
              {
                v51 = v116;
                v52 = v116[4];
                v53 = v106;
                v54 = v120;
                v55 = v121;
                v56 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
                swift_unknownObjectUnownedInit();
                v95[0] = v73;
                v95[1] = v84;
                v96 = v77;
                v97 = v74;
                v98 = v52;
                v99 = v54;
                v100 = v55;
                v101 = 0;
                v102 = v53;
                v103 = v56;
                if (v75)
                {
                  Strong = swift_unknownObjectUnownedLoadStrong();
                }

                else
                {
                  Strong = 0;
                }

                swift_unknownObjectUnownedAssign();

                sub_1AFABB57C(v95, v104);
                v76(v104);
                sub_1AFABB5D8(v104);
                v58 = *(&v108 + 1);
                v113[0] = v109;
                v113[1] = *v110;
                v114 = *&v110[16];
                v35 = v89;
                sub_1AF630994(v51, v85, v113);
                v59 = *(v58 + 16);
                if (v59)
                {
                  v60 = v58 + 40;
                  do
                  {
                    v61 = *(v60 - 8);

                    v61(v62);

                    v60 += 16;
                    --v59;
                  }

                  while (v59);
                }
              }

              else
              {
                v35 = v89;
              }

              sub_1AF630994(v37, &v92, v111);
              sub_1AF62D29C(v47);
              v38 = v79;
              ecs_stack_allocator_pop_snapshot(v79);
              v39 = v78;
              if (v78)
              {
                os_unfair_lock_unlock(*(v47 + 344));
                os_unfair_lock_unlock(*(v47 + 376));
              }

              ++v34;
            }

            while (v34 != v82);
          }
        }
      }

      v63 = *(&v107[1] + 1);
      v64 = v72;

      v64[1] = v63;
      v65 = *(v108 + 16);
      v31 = v71;
      if (v65)
      {
        v66 = v108 + 40;
        do
        {
          v67 = *(v66 - 8);

          v67(v68);

          v66 += 16;
          --v65;
        }

        while (v65);
      }
    }

    v104[4] = v109;
    v104[5] = *v110;
    v105 = *&v110[16];
    v104[0] = v106;
    v104[1] = v107[0];
    v104[2] = v107[1];
    v104[3] = v108;
    sub_1AFABB4CC(v104);
    return v31 & 1;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFABC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a3;
  v64 = *MEMORY[0x1E69E9840];
  sub_1AFABB6B4(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v45[-v12];
  sub_1AFABC9C4(a1, &v45[-v12], &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10);
  v14 = *&v13[v10[10]];
  if (v14)
  {
    v48 = *(v14 + 32);
    sub_1AFABCA48(v13, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10);
    v15 = v10[14];
    v16 = (a1 + v10[15]);
    v18 = *v16;
    v17 = v16[1];
    v47 = v16;
    v19 = *(a1 + v15);
    v46 = *(a1 + v15 + 8);
    v52 = v46;
    v51 = 0;
    v49 = v19;
    if (v17)
    {
      v20 = a2;
      v21 = a4;

      v22 = v17;
    }

    else
    {
      v23 = *(v18 + 16);
      if (v23)
      {
        v20 = a2;
        sub_1AFABE4B8(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping, MEMORY[0x1E69E6720]);

        v22 = sub_1AFDFD488();
        *(v22 + 16) = v23;
        v24 = 32;
        do
        {
          v25 = v22 + v24;
          *v25 = 0;
          *(v25 + 8) = 0;
          *(v25 + 16) = 0;
          *(v25 + 24) = xmmword_1AFE4C450;
          v24 += 40;
          --v23;
        }

        while (v23);
        v21 = a4;
        v19 = v49;
      }

      else
      {
        v20 = a2;
        v21 = a4;

        v22 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v59 = 0;
    *(&v59 + 1) = v18;
    *v60 = v19;
    v60[8] = v52;
    *&v60[12] = a5;
    v60[20] = v51;
    *&v60[24] = v22;
    *&v61 = MEMORY[0x1E69E7CC0];
    *(&v61 + 1) = MEMORY[0x1E69E7CC0];
    v62 = 0uLL;
    *v63 = 0;
    *&v63[8] = xmmword_1AFE22A20;
    v26 = thread_worker_index;
    v27 = thread_worker_index(xmmword_1AFE22A20);
    v28 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v27 == -1)
    {
      v29 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v29 = (v28 + 8 * *v27 + 8);
    }

    v30 = *v29;

    if (sub_1AFAE1FA0(v30, v50))
    {
      v31 = (v26)(&thread_worker_index);
      if (*v31 == -1)
      {
        v32 = v28;
      }

      else
      {
        v32 = v28 + 8 * *v31 + 8;
      }

      v33 = *(*v32 + 32);
      v34 = v59;
      v35 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
      swift_unknownObjectUnownedInit();
      v36 = 3031;
      if (!v46)
      {
        v36 = v49;
      }

      v53[0] = v36;
      v53[1] = v20;
      v53[3] = v21;
      v53[5] = 0;
      v53[6] = 0;
      v53[4] = v33;
      v54 = 1;
      v55 = v34;
      v56 = v35;
      if (v50)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
      }

      else
      {
        Strong = 0;
      }

      swift_unknownObjectUnownedAssign();

      sub_1AFABB57C(v53, v57);
      v48(v57);
      sub_1AFABB5D8(v57);
      v38 = *&v60[24];
      v39 = v47;

      v39[1] = v38;
      v40 = *(v61 + 16);
      if (v40)
      {
        v41 = v61 + 40;
        do
        {
          v42 = *(v41 - 8);

          v42(v43);

          v41 += 16;
          --v40;
        }

        while (v40);
      }
    }

    else
    {
    }

    v57[3] = v61;
    v57[4] = v62;
    v57[5] = *v63;
    v58 = *&v63[16];
    v57[0] = v59;
    v57[1] = *v60;
    v57[2] = *&v60[16];
    return sub_1AFABB4CC(v57);
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFABC9C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFABB6B4(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AFABCA48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1AFABB6B4(0, a2, a3, a4, type metadata accessor for ScriptRuntime);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFABCAB8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1AFABCE58(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return a2;
}

void sub_1AFABCB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFABCBBC(uint64_t a1, uint64_t a2)
{
  sub_1AFAAEB58(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFABCC20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFABCCC0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFABCC7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1AFABCCC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1AFABB6B4(255, a3, a4, a5, type metadata accessor for ScriptRuntime);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AFABCD30()
{
  result = qword_1EB6337C0;
  if (!qword_1EB6337C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6337C0);
  }

  return result;
}

void sub_1AFABCD84()
{
  if (!qword_1ED7232A8)
  {
    sub_1AFABCDF0();
    sub_1AF443AFC();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7232A8);
    }
  }
}

void sub_1AFABCDF0()
{
  if (!qword_1ED723150)
  {
    type metadata accessor for simd_float4x4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED723150);
    }
  }
}

void sub_1AFABCE58(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 4:

      break;
    case 3:

      break;
    case 1:

      sub_1AFABCED4(a1, a2, a3);
      break;
  }
}

void sub_1AFABCED4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 9)
  {

    sub_1AF442064(a3);
  }
}

void sub_1AFABCF1C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 4:

      break;
    case 3:

      break;
    case 1:

      sub_1AFABCF98(a1, a2, a3);
      break;
  }
}

void sub_1AFABCF98(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 9)
  {

    sub_1AF445BE4(a3);
  }
}

unint64_t sub_1AFABCFE0()
{
  result = qword_1EB637958;
  if (!qword_1EB637958)
  {
    type metadata accessor for VFXTriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB637958);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderScriptParameter.BuiltinProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 22;
  if (a2 + 22 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 22;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 22;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x13)
  {
    return v8 - 18;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderScriptParameter.BuiltinProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 22;
  if (a3 + 22 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xEA)
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1AFABD190(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1AFABD1A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t assignWithCopy for ScriptsHolder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithTake for ScriptsHolder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t destroy for MetalFunctionScript.Info()
{
}

void *initializeWithCopy for MetalFunctionScript.Info(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for MetalFunctionScript.Info(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for MetalFunctionScript.Info(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

uint64_t initializeWithCopy for ShaderScriptParameter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AFABCE58(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for ShaderScriptParameter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1AFABCE58(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1AFABCF1C(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for ShaderScriptParameter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_1AFABCF1C(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t sub_1AFABD658(uint64_t a1)
{
  if (*(a1 + 32) <= 5u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1AFABD670(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1AFABD6AC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AFAB8864(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ScriptLocation.EntityLocator(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AFAB8864(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1AF7D4C4C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ScriptLocation.EntityLocator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1AF7D4C4C(v4, v5, v6);
  return a1;
}

unint64_t destroy for ScriptParameter(unint64_t *a1)
{
  sub_1AF443F24(*a1);
  result = a1[2];
  if ((~result & 0xF000000000000007) != 0)
  {

    return sub_1AF443F24(result);
  }

  return result;
}

uint64_t initializeWithCopy for ScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1AF443EE0(*(a2 + 16));
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for ScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF443F24(v5);
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = v8 & 0xF000000000000007;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    if (v9 == 0xF000000000000007)
    {
      sub_1AFABD940((a1 + 16));
      *v7 = *(a2 + 16);
    }

    else
    {
      sub_1AF443EE0(*(a2 + 16));
      v10 = *v7;
      *v7 = v8;
      sub_1AF443F24(v10);
    }
  }

  else
  {
    if (v9 != 0xF000000000000007)
    {
      sub_1AF443EE0(*(a2 + 16));
    }

    *v7 = v8;
  }

  v11 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v11;
  return a1;
}

uint64_t assignWithTake for ScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1AF443F24(v4);
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((~v7 & 0xF000000000000007) != 0)
    {
      *v6 = v7;
      sub_1AF443F24(v5);
      goto LABEL_6;
    }

    sub_1AFABD940((a1 + 16));
  }

  *v6 = v7;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 33))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 112;
    *(result + 8) = 0;
    if (a3 >= 0x70)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AFABDAC4()
{
  result = qword_1EB642690;
  if (!qword_1EB642690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642690);
  }

  return result;
}

unint64_t sub_1AFABDB1C()
{
  result = qword_1EB642698;
  if (!qword_1EB642698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642698);
  }

  return result;
}

unint64_t sub_1AFABDB74()
{
  result = qword_1EB6426A0;
  if (!qword_1EB6426A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426A0);
  }

  return result;
}

unint64_t sub_1AFABDBCC()
{
  result = qword_1EB6426A8;
  if (!qword_1EB6426A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426A8);
  }

  return result;
}

unint64_t sub_1AFABDC24()
{
  result = qword_1EB6426B0;
  if (!qword_1EB6426B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426B0);
  }

  return result;
}

unint64_t sub_1AFABDC7C()
{
  result = qword_1EB6426B8;
  if (!qword_1EB6426B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426B8);
  }

  return result;
}

unint64_t sub_1AFABDCD4()
{
  result = qword_1EB6426C0;
  if (!qword_1EB6426C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426C0);
  }

  return result;
}

unint64_t sub_1AFABDD2C()
{
  result = qword_1EB6426C8;
  if (!qword_1EB6426C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426C8);
  }

  return result;
}

unint64_t sub_1AFABDD84()
{
  result = qword_1EB6426D0;
  if (!qword_1EB6426D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426D0);
  }

  return result;
}

unint64_t sub_1AFABDDDC()
{
  result = qword_1EB6426D8;
  if (!qword_1EB6426D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426D8);
  }

  return result;
}

unint64_t sub_1AFABDE34()
{
  result = qword_1EB6426E0;
  if (!qword_1EB6426E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426E0);
  }

  return result;
}

unint64_t sub_1AFABDE8C()
{
  result = qword_1EB6426E8;
  if (!qword_1EB6426E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426E8);
  }

  return result;
}

unint64_t sub_1AFABDEE4()
{
  result = qword_1EB6426F0;
  if (!qword_1EB6426F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426F0);
  }

  return result;
}

unint64_t sub_1AFABDF3C()
{
  result = qword_1EB6426F8;
  if (!qword_1EB6426F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6426F8);
  }

  return result;
}

unint64_t sub_1AFABDF94()
{
  result = qword_1EB642700;
  if (!qword_1EB642700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642700);
  }

  return result;
}

unint64_t sub_1AFABDFEC()
{
  result = qword_1ED722B28;
  if (!qword_1ED722B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722B28);
  }

  return result;
}

unint64_t sub_1AFABE044()
{
  result = qword_1ED722B30;
  if (!qword_1ED722B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722B30);
  }

  return result;
}

unint64_t sub_1AFABE09C()
{
  result = qword_1EB631900;
  if (!qword_1EB631900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631900);
  }

  return result;
}

unint64_t sub_1AFABE0F4()
{
  result = qword_1EB631908;
  if (!qword_1EB631908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631908);
  }

  return result;
}

unint64_t sub_1AFABE14C()
{
  result = qword_1EB642708;
  if (!qword_1EB642708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642708);
  }

  return result;
}

unint64_t sub_1AFABE1A4()
{
  result = qword_1EB642710;
  if (!qword_1EB642710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642710);
  }

  return result;
}

unint64_t sub_1AFABE1FC()
{
  result = qword_1EB642718;
  if (!qword_1EB642718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642718);
  }

  return result;
}

unint64_t sub_1AFABE254()
{
  result = qword_1EB642720;
  if (!qword_1EB642720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642720);
  }

  return result;
}

unint64_t sub_1AFABE2AC()
{
  result = qword_1EB633990;
  if (!qword_1EB633990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633990);
  }

  return result;
}

unint64_t sub_1AFABE304()
{
  result = qword_1EB633998;
  if (!qword_1EB633998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633998);
  }

  return result;
}

unint64_t sub_1AFABE35C()
{
  result = qword_1EB6335D8;
  if (!qword_1EB6335D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335D8);
  }

  return result;
}

unint64_t sub_1AFABE3B4()
{
  result = qword_1EB6335E0;
  if (!qword_1EB6335E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335E0);
  }

  return result;
}

unint64_t sub_1AFABE40C()
{
  result = qword_1ED7225C8;
  if (!qword_1ED7225C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7225C8);
  }

  return result;
}

unint64_t sub_1AFABE464()
{
  result = qword_1ED7225D0;
  if (!qword_1ED7225D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7225D0);
  }

  return result;
}

void sub_1AFABE4B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AFABE508()
{
  result = qword_1ED723220;
  if (!qword_1ED723220)
  {
    sub_1AFABE4B8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AF47FEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723220);
  }

  return result;
}

void sub_1AFABE5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], &type metadata for Entity, MEMORY[0x1E69E6540]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AFABE60C()
{
  result = qword_1EB632AE8;
  if (!qword_1EB632AE8)
  {
    sub_1AFABE5A4(255, &qword_1EB632AF0, MEMORY[0x1E69E5E28]);
    sub_1AF47FEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632AE8);
  }

  return result;
}

void sub_1AFABE6A8()
{
  if (!qword_1EB630E08)
  {
    sub_1AFABE70C();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630E08);
    }
  }
}

unint64_t sub_1AFABE70C()
{
  result = qword_1EB631D18;
  if (!qword_1EB631D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631D18);
  }

  return result;
}

unint64_t sub_1AFABE760()
{
  result = qword_1EB630E00;
  if (!qword_1EB630E00)
  {
    sub_1AFABE6A8();
    sub_1AFABBA80();
    sub_1AF47FEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630E00);
  }

  return result;
}

uint64_t sub_1AFABE7E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFABE4B8(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFABE864()
{
  result = qword_1EB642E80;
  if (!qword_1EB642E80)
  {
    sub_1AFABE4B8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AF480018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E80);
  }

  return result;
}

unint64_t destroy for ShaderScriptParameter.VertexOutProperty(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {

    v3 = *(a1 + 16);

    return sub_1AF445BE4(v3);
  }

  return result;
}

__n128 sub_1AFABE974(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    v3 = a2[1].n128_u64[0];

    sub_1AF442064(v3);
    a1[1].n128_u64[0] = v3;
  }

  return result;
}

void *assignWithCopy for ShaderScriptParameter.VertexOutProperty(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      v7 = a2[2];

      sub_1AF442064(v7);
      a1[2] = v7;
      return a1;
    }

LABEL_7:
    v8 = *a2;
    a1[2] = a2[2];
    *a1 = v8;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    sub_1AF445BE4(a1[2]);
    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  v5 = a2[2];
  sub_1AF442064(v5);
  v6 = a1[2];
  a1[2] = v5;
  sub_1AF445BE4(v6);
  return a1;
}

uint64_t assignWithTake for ShaderScriptParameter.VertexOutProperty(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      sub_1AF445BE4(*(v4 + 16));
      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(v4 + 16);
      *(v4 + 16) = *(a2 + 16);
      sub_1AF445BE4(v5);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderScriptParameter.VertexOutProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 24))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShaderScriptParameter.VertexOutProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

void *sub_1AFABEC08(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AFABEC50()
{
  result = qword_1EB642728;
  if (!qword_1EB642728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642728);
  }

  return result;
}

unint64_t sub_1AFABECA8()
{
  result = qword_1EB642730;
  if (!qword_1EB642730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642730);
  }

  return result;
}

unint64_t sub_1AFABED00()
{
  result = qword_1EB642738;
  if (!qword_1EB642738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642738);
  }

  return result;
}

unint64_t sub_1AFABED58()
{
  result = qword_1EB642740;
  if (!qword_1EB642740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642740);
  }

  return result;
}

uint64_t destroy for ScriptContext()
{

  swift_unknownObjectUnownedDestroy();
}

uint64_t initializeWithCopy for ScriptContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  swift_unknownObjectUnownedCopyInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t assignWithCopy for ScriptContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  swift_unknownObjectUnownedCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t initializeWithTake for ScriptContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  swift_unknownObjectUnownedTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ScriptContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  swift_unknownObjectUnownedTakeAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t sub_1AFABF06C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1AFDFE108();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1AFC892CC(v3, 0);
    sub_1AF56E46C(v5 + 32, v4, a1);

    return v5;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

BOOL sub_1AFABF13C(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) != 1 || sub_1AF67CACC(&type metadata for GraphV1ExecutionOverride, &off_1F255DD30, a1))
  {
    return 1;
  }

  if (!sub_1AF67CACC(&type metadata for CodeGenerationInitialized, &off_1F253BFF0, a1) && !sub_1AF67CACC(&type metadata for CodeGenerationComponent, &off_1F253BF70, a1) && !sub_1AF67CACC(&type metadata for GraphScriptingConfig, &off_1F253C090, a1) && !sub_1AF67CACC(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B538, a1) || sub_1AF67CACC(&type metadata for GraphComponent, &off_1F2547F28, a1))
  {
    return 0;
  }

  v4 = sub_1AF3CAA18(a1);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + 16);

  return v5 == 0;
}

unint64_t sub_1AFABF248(unint64_t result, uint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    v4 = sub_1AF67EBC0(result, v2);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v6 = MEMORY[0x1B27191B0](*(v5 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
    v26 = v6;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 32;
      do
      {
        sub_1AF70D168(&v28, *(v5 + v8));
        v8 += 8;
        --v7;
      }

      while (v7);

      v9 = v26;
    }

    else
    {
      v9 = v6;
    }

    v10 = *(*a2 + 18);
    if (v10 >= 0x10)
    {
      v25 = v2;
      v11 = (*a2 + *(*a2 + 16) + 41);
      v12 = (v11 + (v10 & 0xFFF0));
      v13 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
      v14 = v9 + 56;
      do
      {
        v20 = *v11;
        if (*(v9 + 16) && (v21 = sub_1AFDFF278(), v22 = -1 << *(v9 + 32), v23 = v21 & ~v22, ((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
        {
          v24 = ~v22;
          while (*(*(v9 + 48) + 8 * v23) != v20)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          v15 = *(v25 + v13);
          v26 = 0;
          v27 = 0xE000000000000000;

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF45D50);
          v16 = sub_1AFDFF4B8();
          MEMORY[0x1B2718AE0](v16);

          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45D70);
          v17 = v26;
          v18 = v27;
          v19 = sub_1AFDFDA08();
          v26 = 0;
          (*(*v15 + 88))(v19, &v26, v17, v18);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }
  }

  return result;
}

uint64_t sub_1AFABF4EC(uint64_t a1)
{
  v2 = sub_1AFAD3998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFABF528(uint64_t a1)
{
  v2 = sub_1AFAD3998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFABF564(void *a1)
{
  sub_1AFAD393C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AFAD3998();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AFABF670@<X0>(void *a1@<X8>)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_1ED725EC0 != -1)
    {
      swift_once();
    }

    Strong = qword_1ED73B5C0;
  }

  v3 = *(*(Strong + 16) + 32);

  v4 = *(v3 + 16);
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v4, 0);
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      v9 = *(v11 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_1AFC06F08(v9 > 1, v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 16;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1AFABF7C8(unint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v142.i64[0] = 0;
    v143 = (v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v4 = result + 32;
    v146.columns[2] = xmmword_1AFE20180;
    v146.columns[1] = xmmword_1AFE20160;
    v146.columns[0] = xmmword_1AFE20150;
    v146.columns[3] = xmmword_1AFE201A0;
    do
    {
      v5 = v4 + 40 * v3;
      if ((*(v5 + 8) & 2) != 0)
      {
        v6 = *v5;
        v7 = *(v5 + 16);
        v8 = 1 << ((*v5 >> 59) & 0x1E | ((*v5 & 4) != 0));
        if ((v8 & 0x1FFCD) == 0)
        {
          if ((v8 & 0x30) != 0)
          {
            v9 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v145.i64[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x14);
            sub_1AF443EE0(v6);
            sub_1AF444224(v7);
            sub_1AFDFDFD8();
            if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
            {
              v10 = v9;
              v11 = v145.i64[0];
              v12 = v9 == -1 && v145.i32[0] == 0;
              v13 = v12;
              if (v12)
              {
                v14 = v146.columns[0];
                v15 = v146.columns[1];
                v16 = v146.columns[2];
                v17 = v146.columns[3];
              }

              else
              {
                v42 = v143;
                v43 = v144;
                v44 = v146.columns[3];
                if ((v9 & 0x80000000) == 0 && v143[1] > v9 && ((v45 = (*v143 + 12 * v9), v145.i32[0] != -1) ? (v46 = v45[2] == v145.i32[0]) : (v46 = 1), v46))
                {
                  v47 = *(*(*(v144 + 144) + 8 * *v45 + 32) + 48);
                  v48 = (v47 + 32);
                  v49 = *(v47 + 16) + 1;
                  while (--v49)
                  {
                    v50 = *v48;
                    v48 += 5;
                    if (v50 == &type metadata for NodeTransformController)
                    {
                      Strong = swift_unknownObjectWeakLoadStrong();
                      v52 = v146;
                      if (Strong)
                      {
                        v53 = Strong;
                        [Strong worldTransform];
                        v140 = v55;
                        v141 = v54;
                        v138 = v57;
                        v139 = v56;

                        v52.columns[3] = v138;
                        v52.columns[2] = v139;
                        v52.columns[1] = v140;
                        v52.columns[0] = v141;
                        v43 = v144;
                      }

                      v58 = v143;
                      v59 = v143[1];
                      if (v59 <= v9)
                      {
                        v62 = v145.i32[0];
                      }

                      else
                      {
                        v60 = (*v143 + 12 * v9);
                        v61 = *(v60 + 2);
                        v62 = v145.i32[0];
                        if (v145.i32[0] == -1 || v60[2] == v145.i32[0])
                        {
                          v63 = *(*(v43 + 144) + 8 * *v60 + 32);
                          v64 = *(v63 + 48);
                          v65 = (v64 + 32);
                          v66 = *(v64 + 16) + 1;
                          while (--v66)
                          {
                            v67 = v65 + 5;
                            v68 = *v65;
                            v65 += 5;
                            if (v68 == &type metadata for WorldTransform)
                            {
                              *(&(*(v67 - 2))[4 * v61].Kind + *(v63 + 128)) = v52;
                              v59 = v58[1];
                              break;
                            }
                          }
                        }
                      }

                      if (v59 > v9)
                      {
                        v73 = (*v58 + 12 * v9);
                        v74 = *(v73 + 2);
                        if (v62 == -1 || v73[2] == v62)
                        {
                          v75 = *(*(v43 + 144) + 8 * *v73 + 32);
                          v76 = *(v75 + 48);
                          v77 = (v76 + 32);
                          v78 = *(v76 + 16) + 1;
                          while (--v78)
                          {
                            v79 = v77 + 5;
                            v80 = *v77;
                            v77 += 5;
                            if (v80 == &type metadata for InverseWorldTransform)
                            {
                              v81 = (&(*(v79 - 2))[4 * v74] + *(v75 + 128));
                              v140 = v52.columns[1];
                              v141 = v52.columns[0];
                              v138 = v52.columns[3];
                              v139 = v52.columns[2];
                              v159 = __invert_f4(v52);
                              v58 = v143;
                              *v81 = v159.columns[0];
                              v81[1] = v159.columns[1];
                              v52.columns[1] = v140;
                              v52.columns[0] = v141;
                              v81[2] = v159.columns[2];
                              v81[3] = v159.columns[3];
                              v52.columns[3] = v138;
                              v52.columns[2] = v139;
                              v43 = v144;
                              v62 = v145.i32[0];
                              v59 = v58[1];
                              break;
                            }
                          }
                        }
                      }

                      if (v59 > v9)
                      {
                        v82 = (*v58 + 12 * v9);
                        v83 = *(v82 + 2);
                        if (v62 == -1 || v82[2] == v62)
                        {
                          v113 = *(*(v43 + 144) + 8 * *v82 + 32);
                          v114 = *(v113 + 48);
                          v115 = (v114 + 32);
                          v116 = *(v114 + 16) + 1;
                          while (--v116)
                          {
                            v117 = v115 + 5;
                            v118 = *v115;
                            v115 += 5;
                            if (v118 == &type metadata for Children)
                            {
                              v119 = v142.i64[0];
                              sub_1AF5AF588(*(v117 - 2) + 8 * v83 + *(v113 + 128), v43, v52.columns[0], v52.columns[1], v52.columns[2], v52.columns[3]);
                              v142.i64[0] = v119;
                              goto LABEL_76;
                            }
                          }
                        }
                      }

                      goto LABEL_76;
                    }
                  }

                  v69 = *(*(*(*(v144 + 88) + 8 * *(v45 + 3) + 32) + 16) + 128);
                  if (!*(v69 + 16))
                  {
                    v43 = v144;
                    goto LABEL_79;
                  }

                  v141.i64[0] = *(*(*(v144 + 88) + 8 * *(v45 + 3) + 32) + 16);
                  v70 = sub_1AF449CB8(&type metadata for NotInHierarchy);
                  if ((v71 & 1) == 0)
                  {
                    v42 = v143;
                    v43 = v144;
                    v44 = v146.columns[3];
                    v11 = v145.i64[0];
                    goto LABEL_79;
                  }

                  v14 = v146.columns[0];
                  v15 = v146.columns[1];
                  v72 = *(*(v141.i64[0] + 24) + 16 * *(*(v69 + 56) + 8 * v70) + 32);
                  v16 = v146.columns[2];
                  v44 = v146.columns[3];
                  v17 = v146.columns[3];
                  v42 = v143;
                  v43 = v144;
                  v11 = v145.i64[0];
                  if (v72 != &type metadata for NotInHierarchy)
                  {
                    goto LABEL_79;
                  }
                }

                else
                {
LABEL_79:
                  if ((v9 & 0x80000000) == 0 && v42[1] > v9)
                  {
                    v84 = (*v42 + 12 * v9);
                    v85 = *(v84 + 2);
                    if (v11 == -1 || v84[2] == v11)
                    {
                      v107 = *(*(v43 + 144) + 8 * *v84 + 32);
                      v108 = *(v107 + 48);
                      v109 = (v108 + 32);
                      v110 = *(v108 + 16) + 1;
                      while (--v110)
                      {
                        v111 = v109 + 5;
                        v112 = *v109;
                        v109 += 5;
                        if (v112 == &type metadata for Parent)
                        {
                          v141.i64[0] = *(&(*(v111 - 2))->Kind + 8 * v85 + *(v107 + 128));
                          sub_1AF3C9244(v141.u64[0], v149);
                          if (v150)
                          {
                            v14.f32[0] = sub_1AF5AF890(v141.u64[0]);
                          }

                          else
                          {
                            v14 = v149[0];
                            v15 = v149[1];
                            v16 = v149[2];
                            v17 = v149[3];
                          }

                          v11 = v145.i64[0];
                          goto LABEL_84;
                        }
                      }
                    }
                  }

                  v14 = v146.columns[0];
                  v15 = v146.columns[1];
                  v16 = v146.columns[2];
                  v17 = v44;
                }
              }

LABEL_84:
              v138 = v17;
              v139 = v16;
              v140 = v15;
              v141 = v14;
              v86 = v9 | (v11 << 32);
              v87.f32[0] = sub_1AF5AF890(v86);
              v147 = v146;
              if ((v13 & 1) == 0 && (v10 & 0x80000000) == 0 && v143[1] > v10)
              {
                v91 = *v143 + 12 * v10;
                if (v145.i32[0] == -1 || *(v91 + 8) == v145.i32[0])
                {
                  v92 = *(*(*(v144 + 88) + 8 * *(v91 + 6) + 32) + 16);
                  v93 = *(v92 + 128);
                  if (*(v93 + 16))
                  {
                    v134 = v90;
                    v135 = v89;
                    v136 = v88;
                    v137 = v87;
                    v94 = sub_1AF449CB8(&type metadata for WorldTransform);
                    if ((v95 & 1) != 0 && *(*(v92 + 24) + 16 * *(*(v93 + 56) + 8 * v94) + 32) == &type metadata for WorldTransform)
                    {
                      v96 = v144;
                      v97 = v142.i64[0];
                      sub_1AF67FFE4(v86, v144, &v147, v141, v140, v139, v138, v137, v136, v135, v134);
                      sub_1AF67F5B0(v86, v96, &v147);
                      v142.i64[0] = v97;
                      if (v143[1] > v10)
                      {
                        v98 = (*v143 + 12 * v10);
                        v99 = *(v98 + 2);
                        if (v145.i32[0] == -1 || v98[2] == v145.i32[0])
                        {
                          v100 = *(*(v96 + 144) + 8 * *v98 + 32);
                          v101 = *(v100 + 48);
                          v102 = (v101 + 32);
                          v103 = *(v101 + 16) + 1;
                          while (--v103)
                          {
                            v104 = v102 + 5;
                            v105 = *v102;
                            v102 += 5;
                            if (v105 == &type metadata for Children)
                            {
                              v106 = v142.i64[0];
                              sub_1AF5AFBA8(*(v104 - 2) + 8 * v99 + *(v100 + 128), v96, &v147);
                              v142.i64[0] = v106;
                              break;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_76:
            sub_1AF443F24(v6);
            result = sub_1AF444AF4(v7);
          }

          else
          {
            v18 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
            v141.i64[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
            v145 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
            v19 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
            v140.i32[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
            v139.i32[0] = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x5A);
            sub_1AF44596C((v6 & 0xFFFFFFFFFFFFFFBLL) + 16, v148);
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = v20;
              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              sub_1AF443EE0(v6);
              if (v22)
              {
                v136.i64[0] = v22;
                v138.i64[0] = v21;
                sub_1AF443EE0(v6);
                sub_1AF444224(v7);
                v23 = qword_1EB633230;
                v24 = v141.i64[0];

                v137.i64[0] = v145.i64[0];

                if (v23 != -1)
                {
                  v25 = swift_once();
                }

                v147.columns[0].i64[0] = v18;
                v147.columns[0].i64[1] = v24;
                v147.columns[1] = v145;
                v147.columns[2].i64[0] = v19;
                v147.columns[2].i8[8] = v140.i8[0];
                v147.columns[2].i16[5] = v139.i16[0];
                MEMORY[0x1EEE9AC00](v25, v26);
                v130[2] = &v147;
                v27 = v142.i64[0];
                if (sub_1AF7B96BC(sub_1AFACFE4C, v130, v28))
                {
                  v29 = [v136.i64[0] presentationNode];
                  v30 = [v29 coreEntity];

                  if (v30)
                  {
                    v31 = v30;
                  }

                  else
                  {
                    v31 = 0xFFFFFFFFLL;
                  }

                  v145.i64[0] = v30 & 0xFFFFFFFF00000000;
                  v32 = v144;
                  sub_1AF67E5F4(v31 | v30 & 0xFFFFFFFF00000000, v144, &v151);
                  if (v155)
                  {
                    v142.i64[0] = v27;
                    v33 = sub_1AF67CACC(&type metadata for NotInHierarchy, &off_1F252A380, v31 | v145.i64[0]);
                    v34 = v144;
                    v35 = v146.columns[0];
                    v36 = v146.columns[1];
                    v37 = v146.columns[2];
                    v38 = v146.columns[3];
                    if (!v33)
                    {
                      v39 = sub_1AF3C9170(v31 | v145.i64[0]);
                      v34 = v144;
                      v35 = v146.columns[0];
                      v36 = v146.columns[1];
                      v37 = v146.columns[2];
                      v38 = v146.columns[3];
                      if ((v40 & 1) == 0)
                      {
                        v41 = v39;
                        v140.i64[0] = v31;
                        sub_1AF3C9244(v39, v156);
                        if (v157)
                        {
                          v35.f32[0] = sub_1AF5AF890(v41);
                        }

                        else
                        {
                          v35 = v156[0];
                          v36 = v156[1];
                          v37 = v156[2];
                          v38 = v156[3];
                        }

                        v31 = v140.i64[0];
                      }
                    }

                    v135 = v38;
                    v136 = v37;
                    v139 = v36;
                    v140 = v35;
                    v120 = v145.i64[0];
                    v121.f32[0] = sub_1AF5AF890(v31 | v145.i64[0]);
                    v133 = v122;
                    v134 = v121;
                    v131 = v124;
                    v132 = v123;
                    v147 = v146;
                    if (sub_1AF67CACC(&type metadata for WorldTransform, &off_1F2529AF8, v31 | v120))
                    {
                      v125 = v31;
                      v126 = v31 | v120;
                      v127 = v140;
                      v128 = v120;
                      v140.i64[0] = v125;
                      v129 = v142.i64[0];
                      sub_1AF67FFE4(v126, v34, &v147, v127, v139, v136, v135, v134, v133, v132, v131);
                      sub_1AF67F5B0(v140.i64[0] | v128, v34, &v147);

                      sub_1AF685400(v140.i64[0] | v128, v34, v34, &v147);
                      v142.i64[0] = v129;
                    }

                    else
                    {
                    }

                    swift_unknownObjectRelease();
                    sub_1AF443F24(v6);
                    sub_1AF444AF4(v7);
                  }

                  else
                  {
                    v142 = v154;
                    v139 = v152;
                    v140 = v153;
                    v136 = v151;
                    sub_1AF67F1B8(v31 | v145.i64[0], v32, v151, v152, v153, v154);
                    v158.columns[0] = v136;
                    v158.columns[1] = v139;
                    v158.columns[2] = v140;
                    v158.columns[3] = v142;
                    sub_1AF67F6BC(v31 | v145.i64[0], v32, v158);

                    sub_1AF685318(v31 | v145.i64[0], v32, v32, v136, v139, v140, v142);
                    v142.i64[0] = v27;
                    swift_unknownObjectRelease();

                    sub_1AF443F24(v6);
                    sub_1AF444AF4(v7);
                  }
                }

                else
                {
                  v142.i64[0] = v27;
                  swift_unknownObjectRelease();

                  sub_1AF443F24(v6);
                  sub_1AF444AF4(v7);
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
            }

            sub_1AF4459C8(v148);
            result = sub_1AF443F24(v6);
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_1AFAC0434(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v16[5] = qword_1ED73B840;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  sub_1AFCC565C(1, 1, v15);
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v4 = sub_1AF6D6B58();
  v5 = v15[0];
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v4, v5);
  os_unfair_lock_unlock(*(v3 + 40));
  sub_1AFAD2E00(v15, sub_1AFAD0088);
  sub_1AFCC5420(1, 1, v16);
  swift_getObjectType();
  v6 = sub_1AF6D6B58();
  v7 = v16[0];
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v7);

  sub_1AF6B1B20(a1, v6, v7);
  os_unfair_lock_unlock(*(v3 + 40));
  sub_1AFAD2E00(v16, sub_1AFAD01C8);
  v8 = v1[3];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v3 + 40));
  v10 = v1[8];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v3 + 40));
  v12 = v1[13];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  os_unfair_lock_unlock(*(v3 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

void sub_1AFAC0774(uint64_t a1, uint64_t a2, int a3)
{
  v214 = a3;
  v213 = a2;
  sub_1AF0D4E74();
  v234 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v233 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1AFDFC298();
  v8 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232, v9);
  v231 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) != 1 || (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) != 0)
  {
    return;
  }

  v224 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v11 = *(v3 + 120);
  v275[0] = *(v3 + 104);
  v275[1] = v11;
  v276 = *(v3 + 136);
  sub_1AF6B06C0(a1, v275, 0x200000000, v264);
  v227 = a1;
  v238 = *&v264[0];
  if (*&v264[0])
  {
    v237 = *(&v264[2] + 1);
    v14 = *(&v265 + 1);
    v15 = *(&v266 + 1);
    v268 = *(v264 + 8);
    v269 = *(&v264[1] + 8);
    if (v267 > 0 && *(&v265 + 1))
    {
      v230 = v8;
      v240 = *(*(&v266 + 1) + 32);
      v16 = *(v266 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v245 = v264[2];
      v246 = v265;
      v247 = v266;
      v248 = v267;
      v243 = v264[0];
      v244 = v264[1];
      sub_1AF5DD298(&v243, v241);
      v17 = 0;
      v211 = 0;
      v216 = MEMORY[0x1E69E7CC0];
      LODWORD(v235) = v16;
      v236 = v14;
      do
      {
        v239 = v17;
        v18 = (v237 + 48 * v17);
        v19 = *v18;
        v20 = v18[1];
        v22 = *(v18 + 2);
        v21 = *(v18 + 3);
        v24 = *(v18 + 4);
        v23 = *(v18 + 5);
        if (v16)
        {
          v25 = *(v23 + 376);

          os_unfair_lock_lock(v25);
          os_unfair_lock_lock(*(v23 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v240);
        v26 = *(v15 + 64);
        v273[0] = *(v15 + 48);
        v273[1] = v26;
        v274 = *(v15 + 80);
        v27 = *(*(*(*(v23 + 40) + 16) + 32) + 16) + 1;
        *(v15 + 48) = ecs_stack_allocator_allocate(*(v15 + 32), 48 * v27, 8);
        *(v15 + 56) = v27;
        *(v15 + 72) = 0;
        *(v15 + 80) = 0;
        *(v15 + 64) = 0;
        v28 = sub_1AF64B110(&type metadata for Bindings, &off_1F25117D8, v22, v21, v24, v15);
        if (v22)
        {
          if (v24)
          {
            v29 = (v28 + 8);
            do
            {
              v33 = *v22++;
              v32 = v33;
              if (*v29 == 1)
              {
                *v29 = 0;

                if (*(v23 + 184))
                {
                  goto LABEL_252;
                }

                v35 = *(*(v23 + 168) + 4 * v32);
                v36 = *(*(v34 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v35 + 8);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v216 = sub_1AF4217DC(0, *(v216 + 2) + 1, 1, v216);
                }

                v38 = *(v216 + 2);
                v37 = *(v216 + 3);
                if (v38 >= v37 >> 1)
                {
                  v216 = sub_1AF4217DC(v37 > 1, v38 + 1, 1, v216);
                }

                v30 = v216;
                *(v216 + 2) = v38 + 1;
                v31 = &v30[8 * v38];
                *(v31 + 8) = v35;
                *(v31 + 9) = v36;
              }

              v29 += 24;
              --v24;
            }

            while (v24);
          }
        }

        else if (v19 != v20)
        {
          v40 = (v28 + 24 * v19 + 8);
          do
          {
            if (*v40 == 1)
            {
              *v40 = 0;

              if (*(v23 + 184))
              {
LABEL_252:
                sub_1AFDFE518();
                __break(1u);
                return;
              }

              v44 = *(*(v23 + 168) + 4 * v19);
              v45 = *(*(v43 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v44 + 8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v216 = sub_1AF4217DC(0, *(v216 + 2) + 1, 1, v216);
              }

              v47 = *(v216 + 2);
              v46 = *(v216 + 3);
              if (v47 >= v46 >> 1)
              {
                v216 = sub_1AF4217DC(v46 > 1, v47 + 1, 1, v216);
              }

              v41 = v216;
              *(v216 + 2) = v47 + 1;
              v42 = &v41[8 * v47];
              *(v42 + 8) = v44;
              *(v42 + 9) = v45;
            }

            ++v19;
            v40 += 24;
          }

          while (v20 != v19);
        }

        v270 = v238;
        v271 = v268;
        v272 = v269;
        v39 = v211;
        sub_1AF630994(v15, &v270, v273);
        v211 = v39;
        sub_1AF62D29C(v23);
        ecs_stack_allocator_pop_snapshot(v240);
        v16 = v235;
        if (v235)
        {
          os_unfair_lock_unlock(*(v23 + 344));
          os_unfair_lock_unlock(*(v23 + 376));
        }

        v17 = v239 + 1;
      }

      while (v239 + 1 != v236);
      sub_1AF0D9DB0(v264, &qword_1ED725EA0);
      v12 = sub_1AF0D9DB0(v264, &qword_1ED725EA0);
      a1 = v227;
      v8 = v230;
      goto LABEL_37;
    }

    v12 = sub_1AF0D9DB0(v264, &qword_1ED725EA0);
  }

  v211 = 0;
  v216 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v48 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_mainGraphScriptGroup);
  v210 = *(*(v48 + 16) + 16);
  if (v210)
  {
    v49 = 0;
    v50 = (v227 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v217 = OBJC_IVAR____TtC3VFX13EntityManager_isVFX2;
    v219 = "Source value type ";
    v220 = "tAnyValue failed for ";
    v230 = v8 + 4;
    v222 = "v16@?0@NSString8";
    v229 = xmmword_1AFE431C0;
    v223 = v48;
    v235 = (v227 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v218 = *(*(*(v48 + 16) + 32 * v49 + 32) + 16);
      if (v218)
      {
        break;
      }

LABEL_39:
      if (++v49 == v210)
      {
        goto LABEL_250;
      }
    }

    v51 = 0;
    v236 = v49;
    while (1)
    {
      v52 = *(*(v48 + 16) + 32 * v49 + 32);
      v237 = 40 * v51;
      v53 = v52 + 40 * v51;
      v56 = *(v53 + 32);
      v54 = (v53 + 32);
      v55 = v56;
      v57 = v54[1];
      if (v56 != -1 || v57 != 0)
      {
        break;
      }

      if ((*(v227 + v217) & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_43:
      if (++v51 == v218)
      {
        goto LABEL_39;
      }
    }

    if ((v55 & 0x80000000) == 0 && v50[1] > v55)
    {
      v59 = *v50 + 12 * v55;
      if (v57 == -1 || *(v59 + 8) == v57)
      {
        v61 = *(*(*(v227 + 88) + 8 * *(v59 + 6) + 32) + 16);
        v62 = *(v61 + 128);
        if (*(v62 + 16))
        {
          v63 = v51;
          v12 = sub_1AF449CB8(&type metadata for Tombstone);
          v51 = v63;
          v50 = v235;
          if ((v13 & 1) != 0 && *(*(v61 + 24) + 16 * *(*(v62 + 56) + 8 * v12) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_43;
          }
        }
      }
    }

    if ((*(v227 + v217) & 1) == 0)
    {
      goto LABEL_111;
    }

    if ((v55 & 0x80000000) == 0 && v50[1] > v55)
    {
      v64 = *v50 + 12 * v55;
      if (v57 == -1 || *(v64 + 8) == v57)
      {
        v66 = *(*(*(v227 + 88) + 8 * *(v64 + 6) + 32) + 16);
        v67 = *(v66 + 128);
        if (*(v67 + 16))
        {
          v68 = v51;
          v12 = sub_1AF449CB8(&type metadata for GraphV1ExecutionOverride);
          v51 = v68;
          v50 = v235;
          if ((v13 & 1) != 0 && *(*(v66 + 24) + 16 * *(*(v67 + 56) + 8 * v12) + 32) == &type metadata for GraphV1ExecutionOverride)
          {
            goto LABEL_111;
          }
        }
      }
    }

    if ((v55 & 0x80000000) != 0 || (v69 = v50[1], v69 <= v55) || ((v70 = *v50, v71 = *v50 + 12 * v55, v57 != -1) ? (v72 = *(v71 + 8) == v57) : (v72 = 1), !v72 || (v73 = *(v71 + 6), v240 = *(v227 + 88), v74 = *(*(v240 + 8 * v73 + 32) + 16), v75 = *(v74 + 128), !*(v75 + 16)) || (v76 = v51, v12 = sub_1AF449CB8(&type metadata for CodeGenerationInitialized), v51 = v76, v50 = v235, (v13 & 1) == 0) || *(*(v74 + 24) + 16 * *(*(v75 + 56) + 8 * v12) + 32) != &type metadata for CodeGenerationInitialized))
    {
      if ((v55 & 0x80000000) != 0 || (v69 = v50[1], v69 <= v55) || ((v70 = *v50, v77 = *v50 + 12 * v55, v57 != -1) ? (v78 = *(v77 + 8) == v57) : (v78 = 1), !v78 || (v79 = *(v77 + 6), v240 = *(v227 + 88), v80 = *(*(v240 + 8 * v79 + 32) + 16), v81 = *(v80 + 128), !*(v81 + 16)) || (v82 = v51, v12 = sub_1AF449CB8(&type metadata for CodeGenerationComponent), v51 = v82, v50 = v235, (v13 & 1) == 0) || *(*(v80 + 24) + 16 * *(*(v81 + 56) + 8 * v12) + 32) != &type metadata for CodeGenerationComponent))
      {
        if ((v55 & 0x80000000) != 0 || (v69 = v50[1], v69 <= v55) || ((v70 = *v50, v83 = *v50 + 12 * v55, v57 != -1) ? (v84 = *(v83 + 8) == v57) : (v84 = 1), !v84 || (v85 = *(v83 + 6), v240 = *(v227 + 88), v86 = *(*(v240 + 8 * v85 + 32) + 16), v87 = *(v86 + 128), !*(v87 + 16)) || (v88 = v51, v12 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), v51 = v88, v50 = v235, (v13 & 1) == 0) || *(*(v86 + 24) + 16 * *(*(v87 + 56) + 8 * v12) + 32) != &type metadata for GraphScriptingConfig))
        {
          if ((v55 & 0x80000000) != 0 || (v69 = v50[1], v69 <= v55) || ((v70 = *v50, v89 = *v50 + 12 * v55, v57 != -1) ? (v90 = *(v89 + 8) == v57) : (v90 = 1), !v90 || (v91 = *(v227 + 88), v92 = *(*(v91 + 8 * *(v89 + 6) + 32) + 16), v93 = *(v92 + 128), !*(v93 + 16))))
          {
LABEL_42:
            v49 = v236;
            goto LABEL_43;
          }

          v215 = v51;
          v12 = sub_1AF449CB8(&type metadata for GraphEntityComponentPropertyReferences);
          if ((v13 & 1) == 0)
          {
            v49 = v236;
LABEL_217:
            v50 = v235;
            v51 = v215;
            goto LABEL_43;
          }

          v51 = v215;
          if (*(*(v92 + 24) + 16 * *(*(v93 + 56) + 8 * v12) + 32) != &type metadata for GraphEntityComponentPropertyReferences)
          {
            v50 = v235;
            v49 = v236;
            goto LABEL_43;
          }

          v240 = v91;
          v50 = v235;
        }
      }
    }

    if (v69 <= v55)
    {
      v49 = v236;
      goto LABEL_111;
    }

    v195 = (v70 + 12 * v55);
    v196 = v57 == -1 || v195[2] == v57;
    if (!v196 || (v197 = *(*(v240 + 8 * *(v195 + 3) + 32) + 16), v198 = *(v197 + 128), !*(v198 + 16)) || (v199 = v51, v12 = sub_1AF449CB8(&type metadata for GraphComponent), v51 = v199, v50 = v235, (v13 & 1) == 0) || *(*(v197 + 24) + 16 * *(*(v198 + 56) + 8 * v12) + 32) != &type metadata for GraphComponent)
    {
      v200 = v57 == -1 || v195[2] == v57;
      v49 = v236;
      if (v200)
      {
        v201 = *(*(v227 + 144) + 8 * *v195 + 32);
        v202 = *(v201 + 48);
        v203 = (v202 + 32);
        v204 = *(v202 + 16) + 1;
        do
        {
          if (!--v204)
          {
            goto LABEL_111;
          }

          v205 = v203 + 5;
          v206 = *v203;
          v203 += 5;
        }

        while (v206 != &type metadata for ScriptsHolder);
        if (*(*(&(*(v205 - 2))->Kind + 24 * *(v195 + 2) + *(v201 + 128)) + 16))
        {
          goto LABEL_43;
        }
      }

LABEL_111:
      v95 = v54[2];
      v94 = v54[3];
      if (v95 == -1 && v94 == 0)
      {
        v12 = *(v54 + 2);
        if (!v12)
        {
          goto LABEL_43;
        }

        v226 = *(v12 + 16);
        if (!v226)
        {
          goto LABEL_43;
        }

        v215 = v51;
        v225 = v12 + 32;
        v212 = v12;

        v112 = 0;
        while (2)
        {
          v113 = v225 + 56 * v112;
          v115 = *(v113 + 16);
          v114 = *(v113 + 32);
          v116 = *(v113 + 48);
          v260 = *v113;
          v261 = v115;
          v263 = v116;
          v262 = v114;
          v117 = *(&v260 + 1);
          v118 = v260;
          v119 = DWORD1(v260);
          v120 = *(v224 + 8);
          v121 = *(v48 + 16);
          v238 = v112;
          if ((v120 != 1 || *(v224 + 16)) && (v122 = *&v121[32 * v49 + 32] + v237, (*(v122 + 66) & 1) == 0) && (*(v122 + 65) == 1 ? (v123 = *(&v260 + 1) == &type metadata for Bindings) : (v123 = 0), v123))
          {
            if (sub_1AF776018(v260 | (DWORD1(v260) << 32), v216))
            {
              v121 = *(v48 + 16);
              goto LABEL_145;
            }
          }

          else
          {
LABEL_145:
            sub_1AF7D4D04(&v260, &v243);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v48 + 16) = v121;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v121 = sub_1AFC0DAE4(v121);
              *(v48 + 16) = v121;
            }

            v125 = &v121[32 * v49];
            v128 = *(v125 + 4);
            v127 = (v125 + 32);
            v126 = v128;
            v129 = swift_isUniquelyReferenced_nonNull_native();
            *v127 = v128;
            if ((v129 & 1) == 0)
            {
              v126 = sub_1AFC0DAD0(v126);
              *v127 = v126;
            }

            v130 = v263;
            v126[v237 + 66] = 0;
            *v127 = v126;
            if (v118 == -1 && !v119 || v118 < 0 || v235[1] <= v118 || (v139 = (*v235 + 12 * v118), v119 != -1) && v139[2] != v119 || (v240 = *(v139 + 2), v140 = *v139, v141 = v227, v142 = *(*(v227 + 144) + 8 * v140 + 32), v143 = *(v142 + 64), v144 = *(v142 + 80), v242 = *(v142 + 112), v146 = *(v142 + 80), v145 = *(v142 + 96), v241[2] = v144, v241[3] = v145, v147 = *(v142 + 64), v241[0] = *(v142 + 48), v241[1] = v143, v148 = *(v142 + 96), v255 = v146, v256 = v148, v257 = *(v142 + 112), v253 = *(v142 + 48), v254 = v147, v149 = sub_1AF64FB24(v117), v151 = v150, v153 = v152, v245 = v255, v246 = v256, LOBYTE(v247) = v257, v243 = v253, v244 = v254, sub_1AF5DD36C(v241, &v251), sub_1AF5DD3C8(&v243), (v153 & 1) != 0))
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v243 = 0;
              *(&v243 + 1) = 0xE000000000000000;
              sub_1AFDFE218();
              v241[0] = v243;
              MEMORY[0x1B2718AE0](0xD000000000000025, v222 | 0x8000000000000000);
              v243 = v260;
              v244 = v261;
              v245 = v262;
              *&v246 = v263;
              sub_1AFDFE458();
              v131 = v241[0];
              v132 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40);
              v133 = swift_allocObject();
              *(v133 + 16) = v229;
              *(v133 + 56) = MEMORY[0x1E69E6158];
              *(v133 + 64) = sub_1AF0D544C();
              *(v133 + 32) = v131;

              sub_1AFDFC4C8();

              v134 = v231;
              sub_1AFDFC288();
              v135 = v233;
              v136 = v234[12];
              v137 = v234[16];
              v138 = &v233[v234[20]];
              (*v230)(v233, v134, v232);
              *(v135 + v136) = v132;
              *(v135 + v137) = 0;
              *v138 = v131;
              sub_1AFDFC608();

              sub_1AF7D4D3C(&v260);
              sub_1AFAD2E00(v135, sub_1AF0D4E74);
              v48 = v223;
              v49 = v236;
            }

            else
            {
              sub_1AF6794BC(*(*(*(v141 + 144) + 8 * v140 + 32) + 128) + v149 + v151 * v240, v130, v117);
              sub_1AF449D40(&v258, v259);
              sub_1AF0D5A54(v259, &v253);
              sub_1AF441150(&v253, *(&v254 + 1));
              DynamicType = swift_getDynamicType();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v253);
              v48 = v223;
              v155 = *(*(*(v223 + 16) + 32 * v49 + 32) + v237 + 56);
              v156 = *(v155 + 16);
              if (v156)
              {

                v240 = v156 - 1;
                v157 = 32;
                v158 = v227;
                v221 = v155;
                for (i = DynamicType; ; DynamicType = i)
                {
                  v239 = v157;
                  v159 = (v155 + v157);
                  v160 = *v159;
                  v161 = v159[1];
                  v162 = v159[2];
                  v163 = *(v159 + 6);
                  *&v256 = v163;
                  v254 = v161;
                  v255 = v162;
                  v253 = v160;
                  sub_1AF7D4D04(&v253, &v251);
                  sub_1AFDFDFD8();
                  if (DynamicType == v164 || (v164 == MEMORY[0x1E69E7360] ? (v165 = DynamicType == MEMORY[0x1E69E6530]) : (v165 = 0), !v165 ? (v166 = v164 == MEMORY[0x1E69E7CA0] + 8) : (v166 = 1), v166))
                  {
                    if (DynamicType == MEMORY[0x1E69E6530] && v164 == MEMORY[0x1E69E7360])
                    {
                      sub_1AF0D5A54(v259, &v250);
                      swift_dynamicCast();
                      v252 = MEMORY[0x1E69E7360];
                      *&v251 = v249;
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v259);
                      sub_1AF449D40(&v251, v259);
                    }

                    if (v168 = *(&v253 + 1), v169 = v254, v170 = v253 | (DWORD1(v253) << 32), *(&v253 + 1) == &type metadata for Scale3) && v253 != 0xFFFFFFFFLL && (v253 & 0x80000000) == 0 && v235[1] > v253 && ((v184 = *v235 + 12 * v253, DWORD1(v253) == -1) || *(v184 + 8) == DWORD1(v253)) && (v185 = *(*(*(v158 + 88) + 8 * *(v184 + 6) + 32) + 16), v186 = *(v185 + 128), *(v186 + 16)) && (v187 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch), (v188) && *(*(v185 + 24) + 16 * *(*(v186 + 56) + 8 * v187) + 32) == &type metadata for HalfSizeLegacyPatch)
                    {
                      KeyPath = swift_getKeyPath();
                      v190 = sub_1AF6824B0(&type metadata for Scale3, v169, v170);
                      if (v190 && (v191 = sub_1AF67A4CC(v259, v190, KeyPath, &type metadata for Scale3), (v191 & 1) == 0))
                      {
                        MEMORY[0x1EEE9AC00](v191, v192);
                        *(&v209 - 4) = &type metadata for Scale3;
                        *(&v209 - 3) = v169;
                        v207 = v259;
                        v208 = KeyPath;
                        sub_1AF682600(&type metadata for Scale3, v169, v170, sub_1AFAD3ABC);

                        v155 = v221;
                      }

                      else
                      {

                        v155 = v221;
                      }
                    }

                    else
                    {
                      sub_1AF0D5A54(v259, &v251);
                      v171 = sub_1AF6824B0(v168, v169, v170);
                      if (v171)
                      {
                        v172 = sub_1AF67A4CC(&v251, v171, v163, v168);
                        if ((v172 & 1) == 0)
                        {
                          MEMORY[0x1EEE9AC00](v172, v173);
                          *(&v209 - 4) = v168;
                          *(&v209 - 3) = v169;
                          v207 = &v251;
                          v208 = v163;
                          sub_1AF682600(v168, v169, v170, sub_1AF702438);
                        }
                      }

                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v251);
                    }

                    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
                    {
                      sub_1AF5AF3AC(v170);
                    }
                  }

                  else
                  {
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    *&v251 = 0;
                    *(&v251 + 1) = 0xE000000000000000;
                    sub_1AFDFE218();
                    v250 = v251;
                    MEMORY[0x1B2718AE0](0xD000000000000012, v220 | 0x8000000000000000);
                    sub_1AF0D5A54(v259, &v251);
                    sub_1AF441150(&v251, v252);
                    swift_getDynamicType();
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v251);
                    v174 = sub_1AFDFF4B8();
                    MEMORY[0x1B2718AE0](v174);

                    MEMORY[0x1B2718AE0](0xD000000000000020, v219 | 0x8000000000000000);
                    sub_1AFDFDFD8();
                    v175 = sub_1AFDFF4B8();
                    MEMORY[0x1B2718AE0](v175);

                    v176 = v250;
                    v177 = sub_1AFDFDA08();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    sub_1AFAD0308(0, &qword_1ED730B50, &qword_1ED730B40);
                    v178 = swift_allocObject();
                    *(v178 + 16) = v229;
                    *(v178 + 56) = MEMORY[0x1E69E6158];
                    *(v178 + 64) = sub_1AF0D544C();
                    *(v178 + 32) = v176;

                    sub_1AFDFC4C8();

                    v179 = v231;
                    sub_1AFDFC288();
                    v180 = v233;
                    v181 = v234[12];
                    v182 = v234[16];
                    v183 = &v233[v234[20]];
                    (*v230)(v233, v179, v232);
                    *(v180 + v181) = v177;
                    *(v180 + v182) = 0;
                    *v183 = v176;

                    sub_1AFDFC608();

                    sub_1AFAD2E00(v180, sub_1AF0D4E74);

                    v158 = v227;
                    v49 = v236;
                    v155 = v221;
                  }

                  sub_1AF7D4D3C(&v253);
                  if (!v240)
                  {
                    break;
                  }

                  --v240;
                  v157 = v239 + 56;
                }

                sub_1AF7D4D3C(&v260);

                v48 = v223;
              }

              else
              {

                sub_1AF7D4D3C(&v260);
              }

              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v259);
            }
          }

          v112 = (v238 + 1);
          if ((v238 + 1) == v226)
          {

            goto LABEL_217;
          }

          continue;
        }
      }

      v98 = *v54;
      v97 = v54[1];
      if ((v98 != -1 || v97 != 0) && (v98 & 0x80000000) == 0 && v50[1] > v98)
      {
        v100 = *v50 + 12 * v98;
        if (v97 == -1 || *(v100 + 8) == v97)
        {
          v101 = *(*(*(v227 + 88) + 8 * *(v100 + 6) + 32) + 16);
          v102 = *(v101 + 128);
          if (*(v102 + 16))
          {
            v103 = v51;
            v12 = sub_1AF449CB8(&type metadata for Tombstone);
            v51 = v103;
            v50 = v235;
            if ((v13 & 1) != 0 && *(*(v101 + 24) + 16 * *(*(v102 + 56) + 8 * v12) + 32) == &type metadata for Tombstone)
            {
              v49 = v236;
              goto LABEL_43;
            }
          }
        }
      }

      MEMORY[0x1EEE9AC00](v12, v13);
      v104 = v227;
      *(&v209 - 10) = v227;
      *(&v209 - 18) = v95;
      *(&v209 - 17) = v94;
      v105 = v213;
      *(&v209 - 8) = v104;
      *(&v209 - 7) = v105;
      *(&v209 - 48) = v214;
      *(&v209 - 11) = v98;
      *(&v209 - 10) = v97;
      v49 = v236;
      *(&v209 - 4) = v48;
      *(&v209 - 3) = v49;
      v107 = v106;
      v207 = v106;
      v108 = type metadata accessor for GraphScript(0);
      v109 = *(v108 - 8);
      v12 = v108 - 8;
      v110 = v109;
      if (*(v109 + 64))
      {
        if (v95 != -1)
        {
          v111 = *(v110 + 72);
          goto LABEL_220;
        }

LABEL_225:
        v50 = v235;
      }

      else
      {
        if (v95 == -1)
        {
          goto LABEL_225;
        }

        v111 = 0;
LABEL_220:
        v50 = v235;
        if ((v95 & 0x80000000) == 0 && v235[1] > v95)
        {
          v193 = (*v235 + 12 * v95);
          if (v94 == -1 || v193[2] == v94)
          {
            v194 = v211;
            v12 = sub_1AFA02210(*(*(v227 + 144) + 8 * *v193 + 32), *(v193 + 2), v111, sub_1AFAD0284);
            v50 = v235;
            v211 = v194;
          }
        }
      }

      v51 = v107;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_250:
}

void sub_1AFAC2170(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*(a2 + 24) != 2)
  {
    sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
    if (*(a1 + v18[10]) || *(a1 + v18[11]))
    {
      if (*(a3 + 56) == 1 && (*(a1 + v18[13]) != 1 || !*(a2 + 40)))
      {
        sub_1AF68B2A4(a4, a3);
      }

      v19 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
      sub_1AFAC6AEC(a1, a5, a6, a4, a8, v19);

      if (*(*(*(a9 + 16) + 32 * a10 + 32) + 40 * a11 + 64) == 1)
      {
        sub_1AFABF7C8(*a1);
      }
    }
  }
}

uint64_t sub_1AFAC22E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFAC234C()
{
  *(v0 + 16) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED73B840;
  v20 = 0;
  v21 = 2;
  v22 = 0;
  v23 = 2;
  v24 = 0;
  sub_1AF70335C(1, v9);
  v1 = v9[1];
  *(v0 + 24) = v9[0];
  *(v0 + 40) = v1;
  *(v0 + 56) = v10;
  sub_1AF702F78(1, v11);
  v2 = v11[1];
  *(v0 + 64) = v11[0];
  *(v0 + 80) = v2;
  *(v0 + 96) = v12;
  sub_1AF70337C(3, &v13);
  v3 = v14;
  v4 = v15;
  v5 = v17;
  v6 = v18;
  v7 = v16 | 1;
  *(v0 + 104) = v13;
  *(v0 + 112) = v3;
  *(v0 + 116) = v4;
  *(v0 + 120) = v7;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  return v0;
}

void sub_1AFAC2454(uint64_t a1, uint64_t a2, int a3)
{
  if (*(v3 + 16) == 1)
  {
    v6 = a3;
    sub_1AF7D1318(a1);
    a3 = v6;
    *(v3 + 16) = 0;
  }

  sub_1AFAC0774(a1, a2, a3);
  sub_1AFAC73C0(a1, a2);

  sub_1AFAC7C94(a1, a2);
}

uint64_t sub_1AFAC24D0()
{
  v0 = swift_allocObject();
  sub_1AFAC234C();
  return v0;
}

uint64_t sub_1AFAC252C(uint64_t a1)
{
  v3 = *v1;
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited, v4);
  v106 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v104 = &v92[-v8];
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated, v9);
  v103 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v107 = &v92[-v13];
  v14 = *(v3 + 184);
  v102 = v1;
  v15 = *(v3 + 192);
  v16 = type metadata accessor for ScriptRuntime();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v92[-v19];
  v111 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v109 = &v92[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v92[-v26];
  v28 = *(a1 + 8);
  v29 = *(a1 + 88);
  v117 = *(a1 + 72);
  v118 = v29;
  v30 = *(a1 + 120);
  v119 = *(a1 + 104);
  v120 = v30;
  v31 = *(a1 + 24);
  v113 = v28;
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  v114 = v31;
  v115 = v32;
  v116 = v33;
  v34 = v113;

  v35 = sub_1AF6824B0(v16, &off_1F2558F90, *(&v34 + 1));
  if (v35)
  {
    v36 = v35;
    v101 = a1;
    v100 = *(v34 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v37 = *(v34 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    (*(v17 + 16))(v20, v35, v16);
    sub_1AFA59C4C(v16, v27);
    v38 = *(v17 + 8);
    v99 = v37;
    v110 = v37;
    v38(v20, v16);
    if ((*(v15 + 40))(v14, v15) == 2 && sub_1AFA59C80(v16))
    {
      v97 = v36;
      v98 = v34;
      v39 = v111;
      v40 = *(v111 + 16);
      v41 = v109;
      v96 = v27;
      v40(v109, v27, v14);
      v42 = v107;
      if (swift_dynamicCast())
      {
        v43 = v103;
        sub_1AFAD06F0(v42, v103, type metadata accessor for ParticleUpdateScript);
        v44 = v43[40];
        v45 = (v44 & 1) == 0 && *(*(v43 + 4) + 16) == 0;
        v48 = type metadata accessor for ParticleUpdateScript;
        goto LABEL_19;
      }

      v47 = v104;
      if (swift_dynamicCast())
      {
        v43 = v106;
        sub_1AFAD06F0(v47, v106, type metadata accessor for ParticleInitScript);
        v44 = v43[40];
        v45 = (v44 & 1) == 0 && *(*(v43 + 4) + 16) == 0;
        v48 = type metadata accessor for ParticleInitScript;
LABEL_19:
        sub_1AFAD2E00(v43, v48);
        v51 = *(v39 + 8);
        v50 = v39 + 8;
        v49 = v51;
        v51(v41, v14);
        if ((v44 & 1) != 0 || v45 || sub_1AFABF13C(v115))
        {
          v52 = v97;
          v94 = (v97 + v16[15]);
          v53 = *v94;
          v54 = *(v97 + v16[11]);
          if (*(v54 + 16))
          {
            v55 = *(v54 + 40);
            v106 = *(v54 + 32);
            v93 = *(v54 + 48);
          }

          else
          {
            v106 = 0;
            v55 = 0;
            v93 = 0;
          }

          if (*(v52 + v16[9]))
          {
            v56 = swift_unknownObjectRetain();
          }

          else
          {
            v56 = 0;
          }

          v109 = v56;
          updated = v49;
          v57 = v16[12];
          v58 = *(v52 + v57);
          v95 = v16;
          v107 = v53;
          if (v58)
          {
            v104 = v55;

            v59 = v58;
            goto LABEL_32;
          }

          v60 = v55;
          v61 = sub_1AFB94E60();
          sub_1AFDFF308();
          v62 = v109;
          swift_unknownObjectRetain();

          v63 = v106;
          sub_1AF88352C(v112, v106, v55, v62, v61);

          v64 = sub_1AFDFF2E8();
          *&v121 = v63;
          *(&v121 + 1) = v55;
          v122 = 0;
          v123 = v62;
          v124 = v61;
          v125 = v64;
          sub_1AF73BD84(&v121, 1, v100, v99);
          v66 = v65;

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if (v66)
          {
            v104 = v60;
            v67 = *(v97 + v57);
            *(v97 + v57) = v66;
            v59 = v66;

            v58 = 0;
LABEL_32:
            v111 = v50;
            inited = v14;
            v68 = v58;
            v69 = [v59 bindings];

            sub_1AF7198B0();
            v70 = sub_1AFDFD418();

            v103 = v59;
            if (v70 >> 62)
            {
              v71 = sub_1AFDFE108();
              if (v71)
              {
LABEL_34:
                v72 = 0;
                while (1)
                {
                  if ((v70 & 0xC000000000000001) != 0)
                  {
                    v73 = MEMORY[0x1B2719C70](v72, v70);
                  }

                  else
                  {
                    v73 = *(v70 + 8 * v72 + 32);
                    swift_unknownObjectRetain();
                  }

                  v74 = [v73 name];
                  v75 = sub_1AFDFCEF8();
                  v77 = v76;

                  if (v75 == 0x61765F7475706E69 && v77 == 0xEC0000007365756CLL)
                  {
                    break;
                  }

                  v79 = sub_1AFDFEE28();

                  if (v79)
                  {
                    goto LABEL_47;
                  }

                  swift_unknownObjectRelease();
                  if (v71 == ++v72)
                  {
                    goto LABEL_51;
                  }
                }

LABEL_47:

                v81 = thread_worker_index(v80);
                MEMORY[0x1EEE9AC00](v81, v82);
                *&v92[-48] = v102;
                *&v92[-40] = v106;
                v91 = v83;
                v90 = &v92[-64];
                sub_1AFADBD8C(v107, v94 + 1, v73, v84, v85, v86, v87, v88, v89, sub_1AFAD03A4);

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return updated(v96, inited);
              }
            }

            else
            {
              v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v71)
              {
                goto LABEL_34;
              }
            }

LABEL_51:

            swift_unknownObjectRelease();
            return updated(v96, inited);
          }

          updated(v96, v14);

          swift_unknownObjectRelease();
        }

        else
        {
          v49(v96, v14);
        }
      }

      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {

      return (*(v111 + 8))(v27, v14);
    }
  }

  else
  {
  }

  return result;
}