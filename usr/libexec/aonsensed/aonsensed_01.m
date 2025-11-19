uint64_t sub_10001A970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001AA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001AB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_10001AC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 60));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10001AD5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 60)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001AEC0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10001AFF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10001B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 8;
  if (v14 >= 8)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 8;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001B364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001B428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

uint64_t sub_10001B538(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_10041CB08, &qword_100374538);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 2)
  {
    v17 = ((v16 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v17 = -2;
  }

  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10001B6C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100024A2C(&qword_10041CB08, &qword_100374538);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001B828(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_10041CB10, &qword_100374540);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 253)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 2)
    {
      v17 = ((v16 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v17 = -2;
    }

    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = sub_100024A2C(&qword_10041CB18, &qword_100374548);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_10001BA20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_100024A2C(&qword_10041CB10, &qword_100374540);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 253)
  {
    *(a1 + a4[7]) = a2 + 2;
  }

  else
  {
    v17 = sub_100024A2C(&qword_10041CB18, &qword_100374548);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[10];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_10001BBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 48);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001BCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 48);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10001BE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 4;
  if (v14 >= 4)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001BF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10041CA30, &qword_100374460);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001C064(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100024A2C(&qword_10041CB40, &qword_100374570);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_10001C1E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100024A2C(&qword_10041CB40, &qword_100374570);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10001C36C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_100024A2C(&qword_10041CB48, &qword_100374578);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100024A2C(&qword_10041CB50, &qword_100374580);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_10001C4F0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100024A2C(&qword_10041CB48, &qword_100374578);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100024A2C(&qword_10041CB50, &qword_100374580);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10001C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001C738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_10001C7F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_10041CB58, &qword_100374588);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = sub_100024A2C(&qword_10041CB60, &qword_100374590);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_10001C9A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100024A2C(&qword_10041CB58, &qword_100374588);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = sub_100024A2C(&qword_10041CB60, &qword_100374590);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10001CB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10001CC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

unint64_t sub_10001D030(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t sub_10001D040(uint64_t result)
{
  if (result > 15)
  {
    if (result <= 63)
    {
      if (result == 16)
      {
        return 5;
      }

      if (result == 32)
      {
        return 6;
      }
    }

    else
    {
      switch(result)
      {
        case 64:
          return 7;
        case 128:
          return 8;
        case 256:
          return 9;
      }
    }

    return 10;
  }

  if (result <= 1)
  {
    if (result > 1)
    {
      return 10;
    }
  }

  else if (result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    if (result == 8)
    {
      return 4;
    }

    return 10;
  }

  return result;
}

uint64_t sub_10001D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10001D1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_10001D278(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10001D324(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001D3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 4;
  if (v14 >= 4)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001D4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10001D744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001D878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 36));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001D998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10001DAF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_10001DCA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10001DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100423F58, &qword_100383428);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 40);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001DFB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 32)) = a2 + 4;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100423F58, &qword_100383428);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100024A2C(&qword_100423F68, &qword_100383438);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001E22C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100024A2C(&qword_100423F68, &qword_100383438);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10001E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100024A2C(&qword_100423F60, &qword_100383430);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001E430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100024A2C(&qword_100423F60, &qword_100383430);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10001E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001E624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 4;
  }

  return result;
}

uint64_t sub_10001E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 9;
    if (v10 >= 9)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001E838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001E964(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_10001EB64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_10001EDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001EE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 6;
  }

  return result;
}

uint64_t sub_10001EF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 248)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 7;
    if (v10 >= 7)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001F058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 248)
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001F184(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 249)
  {
    v12 = *(a1 + a3[5]);
    if (v12 <= 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = *(a1 + a3[5]);
    }

    v14 = v13 - 6;
    if (v12 >= 6)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v17 = sub_100024A2C(&qword_100424030, &qword_100383500);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10001F314(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 249)
  {
    *(a1 + a4[5]) = a2 + 6;
    return result;
  }

  v13 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = sub_100024A2C(&qword_100424030, &qword_100383500);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10001F49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 44));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001F560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 6;
  }

  return result;
}

uint64_t sub_10001F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 64));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001F784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64)) = a2 + 6;
  }

  return result;
}

uint64_t sub_10001F884(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10001FA20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10001FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 <= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = *(a1 + *(a3 + 68));
    }

    v12 = v11 - 7;
    if (v10 >= 7)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001FC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68)) = a2 + 7;
  }

  return result;
}

uint64_t sub_10001FD2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10001FE5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10001FF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 249)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100024A2C(&qword_100424090, &qword_100383560);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000200C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  else
  {
    v11 = sub_100024A2C(&qword_100424090, &qword_100383560);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000201F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 253)
  {
    v11 = *(a1 + a3[11]);
    if (v11 >= 2)
    {
      v12 = ((v11 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v12 = -2;
    }

    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v13 = sub_100024A2C(&qword_1004240B8, &qword_100383588);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_14:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_15;
  }

  v17 = sub_100024A2C(&qword_1004240C0, &qword_100383590);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[14];
    goto LABEL_14;
  }

  v18 = sub_100024A2C(&qword_1004240C8, &qword_100383598);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[16];

  return v19(v20, a2, v18);
}

uint64_t sub_1000203EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 253)
  {
    *(a1 + a4[11]) = a2 + 2;
    return result;
  }

  v13 = sub_100024A2C(&qword_1004240B8, &qword_100383588);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100024A2C(&qword_1004240C0, &qword_100383590);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[14];
    goto LABEL_9;
  }

  v17 = sub_100024A2C(&qword_1004240C8, &qword_100383598);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100020780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 56));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100020844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 56)) = a2 + 6;
  }

  return result;
}

uint64_t sub_100020904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000209DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100020A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100020BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = sub_100024A2C(&qword_10042AAE0, &qword_100390F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100020D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100020DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100020F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_100021000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_10002130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000213E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000214A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100021568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t sub_100021630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100021764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100024A2C(&qword_10042AAE8, &qword_100390F28);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100021880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100021958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100021A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100021AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 5;
  }

  return result;
}

uint64_t sub_100021B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100021C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

uint64_t sub_100021D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 8;
    if (v10 >= 8)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100021DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 8;
  }

  return result;
}

uint64_t sub_100021E8C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10042C008, &qword_1003940D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100021FBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100024A2C(&qword_10042C008, &qword_1003940D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000220EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000221B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_100022268(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100022314(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000223B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100022490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100022548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100022614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000226D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[7];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[8];
    goto LABEL_13;
  }

  v18 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1000228C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100022B54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022B94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100022BC4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022C3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100022C78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100022CB0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022CF0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022D28()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022D68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022DA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022DD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022E2C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022E64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022EB0()
{
  v1 = (type metadata accessor for DataClient() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  swift_unknownObjectWeakDestroy();
  v6 = v1[7];
  v7 = type metadata accessor for ALResultOptions();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100022FE0()
{
  v1 = (type metadata accessor for DataClient() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  swift_unknownObjectWeakDestroy();
  v6 = v1[7];
  v7 = type metadata accessor for ALResultOptions();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_100023128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000231AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100023234()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002326C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000232A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000232DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023320(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1000233E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000234A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000234E4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

BOOL sub_1000234F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = atomic_load(*a1);
  v3 = v2 % v1;
  v4 = atomic_load((*a1 + 64));
  return v3 == v4;
}

uint64_t sub_10002351C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100023544(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unownedRetain();

  return v4;
}

uint64_t sub_100023598(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unownedRetain();

  return v2;
}

uint64_t sub_1000235D0@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v5 = *(v2 + 24);
  swift_unownedRetainStrong();
  sub_1000246D4(a1, a2);
}

uint64_t sub_100023628()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unownedRelease();
  return v0;
}

uint64_t sub_100023650()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unownedRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100023690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024A2C(&qword_1004180E0, &qword_10036C740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v14 - v7);
  v9 = *(v2 + 24);
  swift_unownedRetainStrong();
  sub_1000246D4(a1, v8);

  v10 = type metadata accessor for ALIPCProtocol.Reply();
  Description = v10[-1].Description;
  if (Description[6](v8, 1, v10) == 1)
  {
    result = sub_100024A74(v8);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v10;
    *(a2 + 32) = sub_1000250AC(&qword_1004180E8, 255, type metadata accessor for ALIPCProtocol.Reply);
    v13 = sub_10000DA60(a2);
    return Description[4](v13, v8, v10);
  }

  return result;
}

uint64_t sub_100023800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024A2C(&qword_1004180E0, &qword_10036C740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v14 - v7);
  v9 = *(*v2 + 24);
  swift_unownedRetainStrong();
  sub_1000246D4(a1, v8);

  v10 = type metadata accessor for ALIPCProtocol.Reply();
  Description = v10[-1].Description;
  if (Description[6](v8, 1, v10) == 1)
  {
    result = sub_100024A74(v8);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v10;
    *(a2 + 32) = sub_1000250AC(&qword_1004180E8, 255, type metadata accessor for ALIPCProtocol.Reply);
    v13 = sub_10000DA60(a2);
    return Description[4](v13, v8, v10);
  }

  return result;
}

uint64_t sub_1000239CC(uint64_t a1)
{
  swift_beginAccess();
  qword_1004328E0 = a1;
}

uint64_t sub_100023A74()
{
  swift_beginAccess();
  if (qword_1004328E0)
  {
  }

  type metadata accessor for Daemon();
  v0 = swift_allocObject();
  v1 = sub_100023F08();
  (*(*v0 + 168))(v1);
  qword_1004328E0 = v0;

  result = qword_1004328E0;
  if (qword_1004328E0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_100023B20()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_100023B58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_100023BF4()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100024B00();
  static DispatchQoS.background.getter();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v10[1] = &_swiftEmptyArrayStorage;
  sub_1000250AC(&qword_1004180F8, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100024A2C(&qword_100418100, &qword_10039A500);
  sub_100024B4C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100023E28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_100023EC0()
{
  type metadata accessor for IPCIfc();

  return swift_allocObject();
}

void *sub_100023F08()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v0[2] = 0;
  sub_100024B00();
  static DispatchQoS.background.getter();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  v24 = &_swiftEmptyArrayStorage;
  sub_1000250AC(&qword_1004180F8, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100024A2C(&qword_100418100, &qword_10039A500);
  sub_100024B4C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[4] = 0;
  type metadata accessor for IPCIfc();
  v0[5] = swift_allocObject();
  type metadata accessor for PersistentConfig();
  static PersistentConfig.instance.getter();
  dispatch thunk of PersistentConfig.subscript.getter();

  if (v24 == 2 || (v24 & 1) != 0)
  {
    v14 = v21;
    corelog.getter(v21);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Enable DataVendorManager on AP", v17, 2u);
    }

    (*(v22 + 8))(v14, v23);
    type metadata accessor for DataVendorService();
    v18 = DataVendorService.__allocating_init(queue:)(v1[3]);
    swift_beginAccess();
    v19 = v1[2];
    v1[2] = v18;
  }

  return v1;
}

uint64_t sub_100024304()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = v0[3];
  static XPCListener.InitializationOptions.none.getter();
  v6 = type metadata accessor for XPCListener();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  return (*(*v0 + 18))(v9);
}

uint64_t sub_1000244DC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  xpclog.getter(v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "IPC connection request", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for IPCHandler();
  sub_1000250AC(&qword_100418358, v8, type metadata accessor for IPCHandler);
  sub_1000250AC(&qword_100418360, 255, type metadata accessor for ALIPCProtocol.Request);
  return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
}

uint64_t sub_1000246D4@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ALIPCProtocol.Request();
  Description = v10[-1].Description;
  v12 = Description[8];
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (Description[2])(v14, a1, v10);
  if ((Description[11])(v14, v10))
  {
    xpclog.getter(v9);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "ERROR: Unknown request", v18, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v19 = type metadata accessor for ALIPCProtocol.Reply();
    (*(v19[-1].Description + 7))(a2, 1, 1, v19);
    return (Description[1])(v14, v10);
  }

  else
  {
    if ((*(*v2 + 112))())
    {
      v15 = dispatch thunk of DataVendorService.pollKappa()();
    }

    else
    {
      v15 = 85;
    }

    *a2 = v15;
    v21 = type metadata accessor for ALIPCProtocol.Reply();
    v22 = v21[-1].Description;
    v22[13](a2, 0, v21);
    return (v22[7])(a2, 0, 1, v21);
  }
}

uint64_t sub_100024A2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100024A74(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_1004180E0, &qword_10036C740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100024B00()
{
  result = qword_1004180F0;
  if (!qword_1004180F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004180F0);
  }

  return result;
}

unint64_t sub_100024B4C()
{
  result = qword_100418108;
  if (!qword_100418108)
  {
    sub_100024BB0(&qword_100418100, &qword_10039A500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100418108);
  }

  return result;
}

uint64_t sub_100024BB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100024C1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_100024C54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100024CDC()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(33);
  v2._object = 0x800000010039BA40;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100024DBC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersistentConfig();
  static PersistentConfig.instance.getter();
  dispatch thunk of PersistentConfig.subscript.getter();

  if (v14 == 2)
  {
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v5 = dispatch thunk of PlatformInfo.isAvailable.getter();

    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = objc_autoreleasePoolPush();
    swift_beginAccess();
    if (!qword_1004328E0)
    {
      type metadata accessor for Daemon();
      v11 = swift_allocObject();
      v12 = sub_100023F08();
      (*(*v11 + 168))(v12);
      qword_1004328E0 = v11;

      if (!qword_1004328E0)
      {
        __break(1u);
      }
    }

    objc_autoreleasePoolPop(v10);
    dispatch_main();
  }

  if (v14)
  {
    goto LABEL_7;
  }

LABEL_3:
  corelog.getter(v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Exiting", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10002504C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for IPCHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  *a2 = v5;

  return swift_unownedRetain();
}

uint64_t sub_1000250AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002510C()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100025160(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100025198(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100025230()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100025260()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100025294(int a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000252CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100025364()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100025394()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1000253C8(int a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100025400(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100025498()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000254C8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 32));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000254F4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_100025524(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_1000255C4()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  *(v0 + *(result + 32)) = 6;
  return result;
}

uint64_t sub_1000255EC@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418368, &qword_10036C840);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  sub_10000A0A4(v1 + *(v7 + 36), v6, &qword_100418368, &qword_10036C840);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  a1[2] = &_swiftEmptyArrayStorage;
  v10 = a1 + v8[7];
  UnknownStorage.init()();
  *(a1 + v8[8]) = 2;
  v11 = a1 + v8[9];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[10];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[11];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v8[12];
  *v14 = 0;
  v14[4] = 1;
  v15 = a1 + v8[13];
  *v15 = 0;
  v15[8] = 1;
  v16 = a1 + v8[14];
  *v16 = 0;
  v16[8] = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418368, &qword_10036C840);
  }

  return result;
}

uint64_t sub_1000257C4@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  a1[2] = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = a1 + v2[7];
  result = UnknownStorage.init()();
  *(a1 + v2[8]) = 2;
  v5 = a1 + v2[9];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[10];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[11];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1 + v2[12];
  *v8 = 0;
  v8[4] = 1;
  v9 = a1 + v2[13];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1 + v2[14];
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t sub_10002589C(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100418368, &qword_10036C840);
  sub_10000D84C(a1, v1 + v3, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100025954(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100418368, &qword_10036C840) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418368, &qword_10036C840);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    v13[2] = &_swiftEmptyArrayStorage;
    v16 = v13 + v8[7];
    UnknownStorage.init()();
    *(v13 + v8[8]) = 2;
    v17 = v13 + v8[9];
    *v17 = 0;
    v17[4] = 1;
    v18 = v13 + v8[10];
    *v18 = 0;
    v18[4] = 1;
    v19 = v13 + v8[11];
    *v19 = 0;
    v19[4] = 1;
    v20 = v13 + v8[12];
    *v20 = 0;
    v20[4] = 1;
    v21 = v13 + v8[13];
    *v21 = 0;
    v21[8] = 1;
    v22 = v13 + v8[14];
    *v22 = 0;
    v22[8] = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418368, &qword_10036C840);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  }

  return sub_100025BE4;
}

BOOL sub_100025C20()
{
  v1 = sub_100024A2C(&qword_100418368, &qword_10036C840);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  sub_10000A0A4(v0 + *(v5 + 36), v4, &qword_100418368, &qword_10036C840);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_100418368, &qword_10036C840);
  return v7;
}

uint64_t sub_100025D14()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 36);
  sub_1000059A8(v0 + v1, &qword_100418368, &qword_10036C840);
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_100025DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  sub_10000A0A4(v1 + *(v7 + 40), v6, &qword_100418370, &qword_10036C848);
  v8 = type metadata accessor for Proto_Gpsd_Request(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for Proto_Gpsd_Request);
  }

  sub_1002A51B8(a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418370, &qword_10036C848);
  }

  return result;
}

uint64_t sub_100025EF4(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 40);
  sub_1000059A8(v1 + v3, &qword_100418370, &qword_10036C848);
  sub_10000D84C(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Request);
  v4 = type metadata accessor for Proto_Gpsd_Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100025FAC(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100418370, &qword_10036C848) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gpsd_Request(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 40);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418370, &qword_10036C848);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1002A51B8(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418370, &qword_10036C848);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for Proto_Gpsd_Request);
  }

  return sub_1000261B8;
}

BOOL sub_1000261F4()
{
  v1 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  sub_10000A0A4(v0 + *(v5 + 40), v4, &qword_100418370, &qword_10036C848);
  v6 = type metadata accessor for Proto_Gpsd_Request(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_100418370, &qword_10036C848);
  return v7;
}

uint64_t sub_1000262E8()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 40);
  sub_1000059A8(v0 + v1, &qword_100418370, &qword_10036C848);
  v2 = type metadata accessor for Proto_Gpsd_Request(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000263E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000360B4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_100026438@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003326C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100026484@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003326C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000264F0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_100026520(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_100025584;
}

uint64_t sub_1000265A8()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

uint64_t sub_1000265D0()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_100026604(int a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_10002663C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000266D4()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100026704()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 40);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10002673C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100026774(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100026810()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100026840()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 44);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100026878(float a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000268B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_10002694C()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_10002697C()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 48));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1000269B0(int a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000269E8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_100026A50;
}

uint64_t sub_100026A50(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

uint64_t sub_100026A9C()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100026AE0(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_100026B14(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_100026B68(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

double sub_100026BB4()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100026BEC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100026C24(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100026CC0()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_100026CF0()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 56);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100026D28(double a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100026D60(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100026DCC;
}

uint64_t sub_100026DCC(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_100026E14()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100026E44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100026EC0(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100026F98@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + v2[8]) = 6;
  v6 = v2[9];
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[10];
  v9 = type metadata accessor for Proto_Gpsd_Request(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t sub_1000270F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10002716C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100027198(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000271C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100027254()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_100027294(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000272CC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100027364()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100027394()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 28));
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000273C0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000273F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_10002747C()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(v0 + *(result + 28)) = 10;
  return result;
}

int *sub_1000274A4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(a1 + result[5]) = 6;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[7]) = 10;
  return result;
}

uint64_t sub_10002751C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_100027558(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100027590(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_100027628()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_100027670(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0) + 28);
  v4 = *(v1 + v3);
  *(a1 + 8) = v3;
  *(a1 + 12) = (v4 == 2) | v4 & 1;
  return sub_1000362EC;
}

uint64_t sub_100027704()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000277BC(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000277F4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_10002788C()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_100027910(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0) + 28);
  v4 = *(v1 + v3);
  *(a1 + 8) = v3;
  *(a1 + 12) = (v4 == 2) | v4 & 1;
  return sub_1000362EC;
}

uint64_t sub_1000279A4()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000279E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100027A80(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100027B48()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_100027BA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1000095F8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*sub_100027C3C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_100027CE8;
}

void sub_100027CE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1000095F8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL sub_100027DB4()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

uint64_t sub_100027E08()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_1000095F8(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  return result;
}

uint64_t sub_100027E9C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t sub_100027EF4(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = v7;
    v7 = v11;
    sub_1000095F8(v12);
    *(v2 + v4) = v11;
  }

  result = swift_beginAccess();
  *(v7 + 28) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*sub_100027F90(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10002803C;
}

void sub_10002803C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1000095F8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 28) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL sub_100028108()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

uint64_t sub_10002815C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    sub_1000095F8(v5);
    *(v1 + v2) = v9;
    v5 = v9;
  }

  result = swift_beginAccess();
  *(v5 + 28) = 0;
  *(v5 + 32) = 1;
  return result;
}

uint64_t sub_1000281F0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  if (*(v1 + 33) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 33);
  }
}

void (*sub_100028244(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 33);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000282EC;
}

void sub_1000282EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 84);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = v7;
    v7 = v13;
    sub_1000095F8(v14);
    *(v9 + v8) = v13;
  }

  swift_beginAccess();
  *(v7 + 33) = v2;

  free(v1);
}

BOOL sub_1000283B4()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  swift_beginAccess();
  return *(v1 + 33) != 7;
}

uint64_t sub_100028408()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = v5;
    v5 = v9;
    sub_1000095F8(v10);
    *(v1 + v2) = v9;
  }

  result = swift_beginAccess();
  *(v5 + 33) = 7;
  return result;
}

uint64_t sub_100028498@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418378, &qword_10036C850);
  v9 = type metadata accessor for Proto_Gpsd_Response(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for Proto_Gpsd_Response);
  }

  sub_1002A55D4(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418378, &qword_10036C850);
  }

  return result;
}

uint64_t sub_100028610(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1000095F8(v16);
    *(v2 + v8) = v15;
  }

  sub_10000D84C(a1, v7, type metadata accessor for Proto_Gpsd_Response);
  v17 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418378, &qword_10036C850);
  return swift_endAccess();
}

void (*sub_10002877C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100418378, &qword_10036C850) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418378, &qword_10036C850);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1002A55D4(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418378, &qword_10036C850);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for Proto_Gpsd_Response);
  }

  return sub_1000289C8;
}

void sub_1000289C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000149E4(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_Response);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1000095F8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v15, v19, type metadata accessor for Proto_Gpsd_Response);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418378, &qword_10036C850);
    swift_endAccess();
    sub_100014D78(v14, type metadata accessor for Proto_Gpsd_Response);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1000095F8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v14, v19, type metadata accessor for Proto_Gpsd_Response);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418378, &qword_10036C850);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_100028C78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418380, &qword_10036C858);
  v9 = type metadata accessor for Proto_Gpsd_Indication(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for Proto_Gpsd_Indication);
  }

  sub_1002B3A44(a1);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418380, &qword_10036C858);
  }

  return result;
}

uint64_t sub_100028DF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1000095F8(v16);
    *(v2 + v8) = v15;
  }

  sub_10000D84C(a1, v7, type metadata accessor for Proto_Gpsd_Indication);
  v17 = type metadata accessor for Proto_Gpsd_Indication(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418380, &qword_10036C858);
  return swift_endAccess();
}

void (*sub_100028F5C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100418380, &qword_10036C858) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gpsd_Indication(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418380, &qword_10036C858);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1002B3A44(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418380, &qword_10036C858);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for Proto_Gpsd_Indication);
  }

  return sub_1000291A8;
}

void sub_1000291A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000149E4(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_Indication);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1000095F8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v15, v19, type metadata accessor for Proto_Gpsd_Indication);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418380, &qword_10036C858);
    swift_endAccess();
    sub_100014D78(v14, type metadata accessor for Proto_Gpsd_Indication);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1000095F8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v14, v19, type metadata accessor for Proto_Gpsd_Indication);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418380, &qword_10036C858);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_100029428(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_10000A0A4(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1000059A8(v12, a1, a2);
  return v16;
}

uint64_t sub_100029570(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_100024A2C(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    v22 = v17;
    v17 = v21;
    sub_1000095F8(v22);
    *(v9 + v14) = v21;
  }

  v23 = a3(0);
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v24 = *a4;
  swift_beginAccess();
  sub_10000AD64(v13, v17 + v24, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1000296CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1000095F8(v16);
    *(v2 + v8) = v15;
  }

  sub_10000D84C(a1, v7, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v17 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418388, &qword_10036C860);
  return swift_endAccess();
}

void (*sub_100029838(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100418388, &qword_10036C860) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418388, &qword_10036C860);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + v8[7]) = 10;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418388, &qword_10036C860);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  }

  return sub_100029AB0;
}

void sub_100029AB0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000149E4(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_Response);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1000095F8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v15, v19, type metadata accessor for CLP_LogEntry_AONLoc_Response);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418388, &qword_10036C860);
    swift_endAccess();
    sub_100014D78(v14, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1000095F8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v14, v19, type metadata accessor for CLP_LogEntry_AONLoc_Response);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418388, &qword_10036C860);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_100029D60@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418390, &qword_10036C868);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[8] = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418390, &qword_10036C868);
  }

  return result;
}

void (*sub_100029F08(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100418390, &qword_10036C868) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418390, &qword_10036C868);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v18 = v13 + v8[5];
    UnknownStorage.init()();
    v19 = v13 + v8[6];
    *v19 = 0;
    v19[8] = 1;
    *(v13 + v8[7]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418390, &qword_10036C868);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  }

  return sub_10002A184;
}

void sub_10002A184(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000149E4(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1000095F8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v15, v19, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418390, &qword_10036C868);
    swift_endAccess();
    sub_100014D78(v14, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1000095F8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v14, v19, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418390, &qword_10036C868);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_10002A440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_10000A0A4(v9 + v10, v8, &qword_100418388, &qword_10036C860);
  v11 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_10000D84C(v8, a2, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  }

  UnknownStorage.init()();
  *(a2 + v11[5]) = 6;
  v13 = a2 + v11[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a2 + v11[7]) = 10;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1000059A8(v8, &qword_100418388, &qword_10036C860);
  }

  return result;
}

uint64_t sub_10002A5E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v11;
    v11 = v15;
    sub_1000095F8(v16);
    *(v2 + v8) = v15;
  }

  sub_10000D84C(a1, v7, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v17 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  sub_10000AD64(v7, v11 + v18, &qword_100418388, &qword_10036C860);
  return swift_endAccess();
}

void (*sub_10002A750(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100418388, &qword_10036C860) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418388, &qword_10036C860);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + v8[7]) = 10;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418388, &qword_10036C860);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  }

  return sub_10002A9C8;
}

void sub_10002A9C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000149E4(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_Response);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1000095F8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v15, v19, type metadata accessor for CLP_LogEntry_AONLoc_Response);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418388, &qword_10036C860);
    swift_endAccess();
    sub_100014D78(v14, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1000095F8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v14, v19, type metadata accessor for CLP_LogEntry_AONLoc_Response);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418388, &qword_10036C860);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_10002AC78@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20));
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  sub_10000A0A4(v7 + v8, v6, &qword_100418398, &qword_10036C870);
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v11 = a1 + v9[5];
  UnknownStorage.init()();
  v12 = a1 + v9[6];
  *v12 = 0;
  v12[8] = 1;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_100418398, &qword_10036C870);
  }

  return result;
}

void (*sub_10002AE20(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100418398, &qword_10036C870) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418398, &qword_10036C870);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v18 = v13 + v8[5];
    UnknownStorage.init()();
    v19 = v13 + v8[6];
    *v19 = 0;
    v19[8] = 1;
    *(v13 + v8[7]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418398, &qword_10036C870);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  }

  return sub_10002B09C;
}

void sub_10002B09C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000149E4(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      sub_1000095F8(v7);
      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v15, v19, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
    swift_beginAccess();
    sub_10000AD64(v19, v7 + v20, &qword_100418398, &qword_10036C870);
    swift_endAccess();
    sub_100014D78(v14, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      sub_1000095F8(v24);
      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_10000D84C(v14, v19, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
    swift_beginAccess();
    sub_10000AD64(v19, v24 + v33, &qword_100418398, &qword_10036C870);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

Swift::Int sub_10002B394()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002B3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010EA8();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10002B444()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002B4A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000332C8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10002B4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000332C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10002B520()
{
  if (qword_100435370 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002B57C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 20), v6, &qword_1004183A0, &qword_10036C878);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v8[8]) = 6;
  v13 = v8[9];
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v8[10];
  v16 = type metadata accessor for Proto_Gpsd_Request(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v6, &qword_1004183A0, &qword_10036C878);
  }

  return result;
}

uint64_t sub_10002B798(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 20);
  sub_1000059A8(v1 + v3, &qword_1004183A0, &qword_10036C878);
  sub_10000D84C(a1, v1 + v3, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10002B850(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_1004183A0, &qword_10036C878) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_1004183A0, &qword_10036C878);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    *(v13 + v8[8]) = 6;
    v19 = v8[9];
    v20 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v8[10];
    v22 = type metadata accessor for Proto_Gpsd_Request(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_1004183A0, &qword_10036C878);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  }

  return sub_10002BB24;
}

BOOL sub_10002BB60()
{
  v1 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 20), v4, &qword_1004183A0, &qword_10036C878);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_1004183A0, &qword_10036C878);
  return v7;
}

uint64_t sub_10002BC54()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 20);
  sub_1000059A8(v0 + v1, &qword_1004183A0, &qword_10036C878);
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10002BCE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  sub_10000A0A4(v1 + *(v7 + 24), v6, &qword_1004183A8, &qword_10036C880);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_10000D84C(v6, a1, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100435370 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100435378;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v6, &qword_1004183A8, &qword_10036C880);
  }

  return result;
}

uint64_t sub_10002BE88(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 24);
  sub_1000059A8(v1 + v3, &qword_1004183A8, &qword_10036C880);
  sub_10000D84C(a1, v1 + v3, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_10002BF40(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_1004183A8, &qword_10036C880) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_1004183A8, &qword_10036C880);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100435370 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100435378;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_1004183A8, &qword_10036C880);
    }
  }

  else
  {
    sub_10000D84C(v7, v13, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
  }

  return sub_10002C198;
}

void sub_10002C1D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_1000149E4(v12, v11, a6);
    sub_1000059A8(v15 + v10, a3, a4);
    sub_10000D84C(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_100014D78(v12, a6);
  }

  else
  {
    sub_1000059A8(v15 + v10, a3, a4);
    sub_10000D84C(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_10002C310()
{
  v1 = sub_100024A2C(&qword_1004183A8, &qword_10036C880);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  sub_10000A0A4(v0 + *(v5 + 24), v4, &qword_1004183A8, &qword_10036C880);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000059A8(v4, &qword_1004183A8, &qword_10036C880);
  return v7;
}

uint64_t sub_10002C404()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 24);
  sub_1000059A8(v0 + v1, &qword_1004183A8, &qword_10036C880);
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_10002C498@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10002C504(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_10002C56C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_10002C690()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004328E8);
  sub_100005DF0(v0, qword_1004328E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mach_continuous_time_ns";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "process_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "transaction_id";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "result_options";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "gpsd_request";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10002C9A8()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v10 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 32);
          sub_1000360B4();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          if (result == 6)
          {
            v6 = v0;
            v12 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 36);
            type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
            v8 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions;
            v9 = &unk_100418478;
          }

          else
          {
            if (result != 11)
            {
              goto LABEL_5;
            }

            v6 = v0;
            v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 40);
            type metadata accessor for Proto_Gpsd_Request(0);
            v8 = type metadata accessor for Proto_Gpsd_Request;
            v9 = &unk_100418C50;
          }

          sub_100012428(v9, v8);
          v0 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 20);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_5;
          case 2:
            v4 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 24);
            break;
          case 3:
            v4 = v0;
            v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request(0) + 28);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v4;
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10002CBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v10 = result;
  v11 = v5 + *(result + 20);
  if (*(v11 + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v15 = (v5 + v10[7]);
  if ((v15[1] & 1) == 0)
  {
    v16 = *v15;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 6)
  {
    v17 = *(v5 + v10[8]);
    sub_1000360B4();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10002CD28(v5, a1, a2, a3);
  sub_10002CF44(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10002CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418368, &qword_10036C840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  sub_10000A0A4(a1 + *(v14 + 36), v8, &qword_100418368, &qword_10036C840);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418368, &qword_10036C840);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  sub_100012428(&qword_100418478, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

uint64_t sub_10002CF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Gpsd_Request(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  sub_10000A0A4(a1 + *(v14 + 40), v8, &qword_100418370, &qword_10036C848);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_100418370, &qword_10036C848);
  }

  sub_10000D84C(v8, v13, type metadata accessor for Proto_Gpsd_Request);
  sub_100012428(&qword_100418C50, type metadata accessor for Proto_Gpsd_Request);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for Proto_Gpsd_Request);
}

uint64_t sub_10002D1AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 4) = 1;
  *v8 = 0;
  *(a2 + v7) = 6;
  v9 = a1[9];
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[10];
  v12 = type metadata accessor for Proto_Gpsd_Request(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v11, 1, 1, v12);
}

uint64_t sub_10002D2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B80, type metadata accessor for CLP_LogEntry_AONLoc_Request);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10002D378(uint64_t a1)
{
  v2 = sub_100012428(&qword_100418460, type metadata accessor for CLP_LogEntry_AONLoc_Request);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10002D3E4()
{
  sub_100012428(&qword_100418460, type metadata accessor for CLP_LogEntry_AONLoc_Request);

  return Message.hash(into:)();
}

uint64_t sub_10002D464()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432900);
  sub_100005DF0(v0, qword_100432900);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "PROTOBUF_DEFAULT";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "UPDATE_RESULT_OPTIONS";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 11;
  *v10 = "GNSS_REQUEST";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "WIFI_RESULT";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "BT_RESULT";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 41;
  *v16 = "KAPPA_CONFIG_RESULT";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_10002D794()
{
  v0._countAndFlagsBits = 0x4F746C757365522ELL;
  v0._object = 0xEE00736E6F697470;
  String.append(_:)(v0);
  qword_100432918 = 0xD00000000000001BLL;
  unk_100432920 = 0x800000010039BA80;
}

uint64_t *sub_10002D80C()
{
  if (qword_100435340 != -1)
  {
    swift_once();
  }

  return &qword_100432918;
}

uint64_t sub_10002D85C()
{
  if (qword_100435340 != -1)
  {
    swift_once();
  }

  v0 = qword_100432918;

  return v0;
}

uint64_t sub_10002D8C4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432928);
  sub_100005DF0(v0, qword_100432928);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "repeat";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "batch_size";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "repeat_interval_sec";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "max_age_sec";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "minimal_rssi_db";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bt_types";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "wifi_bands";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "channels";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "start_cfa_time_sec";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "end_cfa_time_sec";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10002DCD8()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_100014194();
          }

          else
          {
            sub_100016F4C();
          }

          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }

        else if (result == 8)
        {
          dispatch thunk of Decoder.decodeRepeatedInt32Field(value:)();
        }

        else
        {
          if (result == 11)
          {
            v5 = v0;
            v11 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 52);
          }

          else
          {
            if (result != 12)
            {
              goto LABEL_5;
            }

            v5 = v0;
            v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 56);
          }

          v0 = v5;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 32);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2)
        {
          v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 36);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result == 3)
        {
          v8 = v0;
          v9 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 40);
        }

        else
        {
          if (result != 4)
          {
            v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 48);
            dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
            goto LABEL_5;
          }

          v8 = v0;
          v10 = *(type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0) + 44);
        }

        v0 = v8;
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10002DF18()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = result;
  if (*(v0 + *(result + 32)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + v3[9]);
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  v6 = v0 + v3[10];
  if ((v6[4] & 1) == 0)
  {
    v7 = *v6;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  v8 = v0 + v3[11];
  if ((v8[4] & 1) == 0)
  {
    v9 = *v8;
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10002E13C(v0);
  if (*(*v0 + 16))
  {
    sub_100014194();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0[1] + 16))
  {
    sub_100016F4C();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  if (*(v0[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedInt32Field(value:fieldNumber:)();
  }

  sub_10002E1B4(v0);
  sub_10002E22C(v0);
  v10 = v0 + v3[7];
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10002E13C(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10002E1B4(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10002E22C(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10002E2F0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  a2[2] = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[7];
  result = UnknownStorage.init()();
  v6 = a1[9];
  *(a2 + a1[8]) = 2;
  v7 = a2 + v6;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[11];
  v9 = a2 + a1[10];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  v11 = a1[13];
  v12 = a2 + a1[12];
  *v12 = 0;
  v12[4] = 1;
  v13 = a2 + v11;
  *v13 = 0;
  v13[8] = 1;
  v14 = a2 + a1[14];
  *v14 = 0;
  v14[8] = 1;
  return result;
}

uint64_t sub_10002E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10002E408(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10002E47C(uint64_t a1, uint64_t a2))()
{
  result = static ALProtobufUtil.debug<A>(_:);
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_10002E4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B78, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10002E570(uint64_t a1)
{
  v2 = sub_100012428(&qword_100418478, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10002E5DC()
{
  sub_100012428(&qword_100418478, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);

  return Message.hash(into:)();
}

uint64_t sub_10002E684()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432940);
  sub_100005DF0(v0, qword_100432940);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_continuous_time_ns";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "result_code";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10002E8E0()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 24);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v4 = v0;
        v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 20);
        sub_1000360B4();
LABEL_12:
        v0 = v4;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v4 = v0;
    v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_Response(0) + 28);
    sub_1000361C0();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10002E9F8()
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 6)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v6 = *(v0 + *(result + 20));
    sub_1000360B4();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + *(v3 + 24));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (*(v0 + *(v3 + 28)) != 10)
  {
    v7 = *(v0 + *(v3 + 28));
    sub_1000361C0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10002EB64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + a1[7]) = 10;
  return result;
}

uint64_t sub_10002EBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B70, type metadata accessor for CLP_LogEntry_AONLoc_Response);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10002EC84(uint64_t a1)
{
  v2 = sub_100012428(&qword_100418490, type metadata accessor for CLP_LogEntry_AONLoc_Response);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10002ECF0()
{
  sub_100012428(&qword_100418490, type metadata accessor for CLP_LogEntry_AONLoc_Response);

  return Message.hash(into:)();
}

uint64_t sub_10002EDAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  sub_100036108(v5, a2);
  sub_100005DF0(v5, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v6 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10036C800;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "mach_continuous_time_ns";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "is_last_batch";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 11;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10002F000()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 11:
          type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
          sub_100012428(&qword_1004183D8, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0) + 24);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t (*sub_10002F1D0(uint64_t a1, uint64_t a2))()
{
  result = static ALProtobufUtil.debug<A>(_:);
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_10002F20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B68, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10002F2AC(uint64_t a1)
{
  v2 = sub_100012428(&qword_1004184A8, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10002F318()
{
  sub_100012428(&qword_1004184A8, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);

  return Message.hash(into:)();
}

uint64_t sub_10002F41C()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 11:
          type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
          sub_100012428(&qword_1004183E8, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0) + 28);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0) + 24);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10002F5F0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[8] = 1;
  *(a2 + v6) = 2;
  return result;
}

uint64_t sub_10002F64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10002F6C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10002F750(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B60, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10002F7F0(uint64_t a1)
{
  v2 = sub_100012428(&qword_1004184C0, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10002F85C()
{
  sub_100012428(&qword_1004184C0, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);

  return Message.hash(into:)();
}

uint64_t sub_10002F900()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432988);
  sub_100005DF0(v0, qword_100432988);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "mach_continuous_time_ns";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "transaction_id";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 11;
  *v13 = "gpsd_response";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 12;
  *v15 = "gpsd_indication";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 21;
  *v17 = "wifi_response";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 22;
  *v19 = "wifi_indication";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 31;
  *v21 = "bt_response";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 32;
  *v22 = "bt_indication";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10002FCDC()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 28) = 0;
  *(v3 + 32) = 1793;
  v4 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  v5 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  v7 = type metadata accessor for Proto_Gpsd_Indication(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v3 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v10(v3 + OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse, 1, 1, v9);
  v13 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  result = (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  qword_100435378 = v3;
  return result;
}

uint64_t sub_10002FED0()
{
  v2 = v0;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Indication(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for CLP_LogEntry_AONLoc_Indication._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    sub_1000095F8(v6);
    *(v2 + v3) = v10;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v1)
  {
    while (1)
    {
      if (v12)
      {
        return result;
      }

      if (result > 11)
      {
        break;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_29;
          }

          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }

        goto LABEL_28;
      }

      if (result != 3)
      {
        if (result != 11)
        {
          goto LABEL_29;
        }

        v13 = v1;
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_Response(0);
        v14 = type metadata accessor for Proto_Gpsd_Response;
        v15 = &qword_100418C00;
        goto LABEL_27;
      }

      swift_beginAccess();
      sub_100010EA8();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_28:
      swift_endAccess();
LABEL_29:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 21)
    {
      if (result != 12)
      {
        if (result != 21)
        {
          goto LABEL_29;
        }

LABEL_26:
        v13 = v1;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
        v14 = type metadata accessor for CLP_LogEntry_AONLoc_Response;
        v15 = &qword_100418490;
        goto LABEL_27;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for Proto_Gpsd_Indication(0);
      v14 = type metadata accessor for Proto_Gpsd_Indication;
      v15 = &qword_100418BF8;
    }

    else
    {
      if (result != 22)
      {
        if (result != 31)
        {
          if (result != 32)
          {
            goto LABEL_29;
          }

          v13 = v1;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
          v14 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication;
          v15 = &qword_1004184C0;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v13 = v1;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
      v14 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication;
      v15 = &qword_1004184A8;
    }

LABEL_27:
    sub_100012428(v15, v14);
    v1 = v13;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_28;
  }

  return result;
}

BOOL sub_1000302D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtIndication(0);
  v157 = *(v4 - 8);
  v158 = v4;
  v5 = *(v157 + 64);
  __chkstk_darwin(v4);
  v154 = (&v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = sub_100024A2C(&qword_100418BB0, &qword_10036D690);
  v7 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v159 = &v151 - v8;
  v9 = sub_100024A2C(&qword_100418398, &qword_10036C870);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v155 = (&v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v163 = &v151 - v13;
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v168 = *(v14 - 8);
  v169 = v14;
  v15 = *(v168 + 64);
  __chkstk_darwin(v14);
  v161 = (&v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = sub_100024A2C(&qword_100418BB8, &qword_10036D698);
  v17 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v170 = &v151 - v18;
  v19 = sub_100024A2C(&qword_100418390, &qword_10036C868);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v164 = (&v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v183 = &v151 - v23;
  v175 = type metadata accessor for CLP_LogEntry_AONLoc_Response(0);
  v177 = *(v175 - 8);
  v24 = *(v177 + 64);
  __chkstk_darwin(v175);
  v166 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_100024A2C(&qword_100418BC0, &qword_10036D6A0);
  v26 = *(*(v174 - 8) + 64);
  v27 = __chkstk_darwin(v174);
  v162 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v173 = &v151 - v29;
  v30 = sub_100024A2C(&qword_100418388, &qword_10036C860);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v160 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v165 = &v151 - v35;
  v36 = __chkstk_darwin(v34);
  v171 = &v151 - v37;
  __chkstk_darwin(v36);
  v182 = &v151 - v38;
  v39 = type metadata accessor for Proto_Gpsd_Indication(0);
  v179 = *(v39 - 8);
  v180 = v39;
  v40 = *(v179 + 64);
  __chkstk_darwin(v39);
  v172 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_100024A2C(&qword_100418BC8, &qword_10036D6A8);
  v42 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v181 = &v151 - v43;
  v44 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v176 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v184 = &v151 - v48;
  v49 = type metadata accessor for Proto_Gpsd_Response(0);
  v185 = *(v49 - 8);
  v186 = v49;
  v50 = *(v185 + 64);
  __chkstk_darwin(v49);
  v52 = &v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100024A2C(&qword_100418BD0, &unk_10036D6B0);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v56 = &v151 - v55;
  v57 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  v58 = *(*(v57 - 8) + 64);
  v59 = __chkstk_darwin(v57 - 8);
  v61 = &v151 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v63 = &v151 - v62;
  swift_beginAccess();
  v64 = *(a1 + 16);
  v187 = a1;
  v65 = *(a1 + 24);
  swift_beginAccess();
  v66 = *(a2 + 24);
  if (v65)
  {
    v67 = a2;
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v67 = a2;
    if (v64 != *(a2 + 16))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  v68 = v187;
  swift_beginAccess();
  v69 = *(v68 + 28);
  v70 = *(v68 + 32);
  swift_beginAccess();
  v71 = *(v67 + 32);
  if (v70)
  {
    if (!*(v67 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *(v67 + 28))
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(v68 + 33);
  swift_beginAccess();
  v73 = *(v67 + 33);
  if (v72 == 7)
  {
    if (v73 != 7)
    {
      return 0;
    }
  }

  else if (v73 == 7 || qword_10036D6E0[v72] != qword_10036D6E0[v73])
  {
    return 0;
  }

  v152 = v67;
  v74 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v75 = v68 + v74;
  v76 = v152;
  sub_10000A0A4(v75, v63, &qword_100418378, &qword_10036C850);
  v77 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdResponse;
  swift_beginAccess();
  v78 = *(v53 + 48);
  sub_10000A0A4(v63, v56, &qword_100418378, &qword_10036C850);
  v153 = v78;
  sub_10000A0A4(v76 + v77, &v56[v78], &qword_100418378, &qword_10036C850);
  v79 = v186;
  v80 = *(v185 + 48);
  if (v80(v56, 1, v186) == 1)
  {

    sub_1000059A8(v63, &qword_100418378, &qword_10036C850);
    if (v80(&v56[v153], 1, v79) == 1)
    {
      sub_1000059A8(v56, &qword_100418378, &qword_10036C850);
      goto LABEL_26;
    }

LABEL_23:
    sub_1000059A8(v56, &qword_100418BD0, &unk_10036D6B0);
    goto LABEL_54;
  }

  sub_10000A0A4(v56, v61, &qword_100418378, &qword_10036C850);
  if (v80(&v56[v153], 1, v79) == 1)
  {

    sub_1000059A8(v63, &qword_100418378, &qword_10036C850);
    sub_100014D78(v61, type metadata accessor for Proto_Gpsd_Response);
    goto LABEL_23;
  }

  sub_10000D84C(&v56[v153], v52, type metadata accessor for Proto_Gpsd_Response);
  sub_100012428(&qword_100418BE0, type metadata accessor for Proto_Gpsd_Response);

  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100014D78(v52, type metadata accessor for Proto_Gpsd_Response);
  sub_1000059A8(v63, &qword_100418378, &qword_10036C850);
  sub_100014D78(v61, type metadata accessor for Proto_Gpsd_Response);
  v68 = v187;
  sub_1000059A8(v56, &qword_100418378, &qword_10036C850);
  if ((v81 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  v82 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v83 = v184;
  sub_10000A0A4(v68 + v82, v184, &qword_100418380, &qword_10036C858);
  v84 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__gpsdIndication;
  swift_beginAccess();
  v85 = *(v178 + 48);
  v86 = v181;
  sub_10000A0A4(v83, v181, &qword_100418380, &qword_10036C858);
  sub_10000A0A4(v76 + v84, v86 + v85, &qword_100418380, &qword_10036C858);
  v87 = v180;
  v88 = *(v179 + 48);
  if (v88(v86, 1, v180) == 1)
  {
    sub_1000059A8(v83, &qword_100418380, &qword_10036C858);
    v89 = v88(v86 + v85, 1, v87);
    v90 = v182;
    v91 = v183;
    if (v89 == 1)
    {
      sub_1000059A8(v86, &qword_100418380, &qword_10036C858);
      goto LABEL_33;
    }

LABEL_31:
    v94 = &qword_100418BC8;
    v95 = &qword_10036D6A8;
    v96 = v86;
LABEL_53:
    sub_1000059A8(v96, v94, v95);
    goto LABEL_54;
  }

  v92 = v176;
  sub_10000A0A4(v86, v176, &qword_100418380, &qword_10036C858);
  v93 = v88(v86 + v85, 1, v87);
  v90 = v182;
  v91 = v183;
  if (v93 == 1)
  {
    sub_1000059A8(v184, &qword_100418380, &qword_10036C858);
    sub_100014D78(v92, type metadata accessor for Proto_Gpsd_Indication);
    goto LABEL_31;
  }

  v97 = v172;
  sub_10000D84C(v86 + v85, v172, type metadata accessor for Proto_Gpsd_Indication);
  sub_100012428(&qword_100418BD8, type metadata accessor for Proto_Gpsd_Indication);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100014D78(v97, type metadata accessor for Proto_Gpsd_Indication);
  sub_1000059A8(v184, &qword_100418380, &qword_10036C858);
  sub_100014D78(v92, type metadata accessor for Proto_Gpsd_Indication);
  v76 = v152;
  sub_1000059A8(v86, &qword_100418380, &qword_10036C858);
  if ((v98 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_33:
  v99 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  v100 = v187;
  swift_beginAccess();
  sub_10000A0A4(v100 + v99, v90, &qword_100418388, &qword_10036C860);
  v101 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiResponse;
  swift_beginAccess();
  v102 = v173;
  v103 = *(v174 + 48);
  sub_10000A0A4(v90, v173, &qword_100418388, &qword_10036C860);
  v104 = v102;
  sub_10000A0A4(v76 + v101, v102 + v103, &qword_100418388, &qword_10036C860);
  v106 = v177 + 48;
  v105 = *(v177 + 48);
  v107 = v175;
  if (v105(v104, 1, v175) == 1)
  {
    sub_1000059A8(v90, &qword_100418388, &qword_10036C860);
    if (v105(v104 + v103, 1, v107) == 1)
    {
      v186 = v105;
      v177 = v106;
      sub_1000059A8(v104, &qword_100418388, &qword_10036C860);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v108 = v171;
  sub_10000A0A4(v104, v171, &qword_100418388, &qword_10036C860);
  if (v105(v104 + v103, 1, v107) == 1)
  {
    sub_1000059A8(v90, &qword_100418388, &qword_10036C860);
    sub_100014D78(v108, type metadata accessor for CLP_LogEntry_AONLoc_Response);
LABEL_38:
    v94 = &qword_100418BC0;
    v95 = &qword_10036D6A0;
    v96 = v104;
    goto LABEL_53;
  }

  v186 = v105;
  v177 = v106;
  v109 = v108;
  v110 = v166;
  sub_10000D84C(v104 + v103, v166, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v111 = sub_10003357C(v109, v110);
  sub_100014D78(v110, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  sub_1000059A8(v90, &qword_100418388, &qword_10036C860);
  sub_100014D78(v109, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v76 = v152;
  sub_1000059A8(v104, &qword_100418388, &qword_10036C860);
  if ((v111 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_40:
  v112 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  v113 = v187;
  swift_beginAccess();
  sub_10000A0A4(v113 + v112, v91, &qword_100418390, &qword_10036C868);
  v114 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__wifiIndication;
  swift_beginAccess();
  v115 = *(v167 + 48);
  v116 = v170;
  sub_10000A0A4(v91, v170, &qword_100418390, &qword_10036C868);
  sub_10000A0A4(v76 + v114, v116 + v115, &qword_100418390, &qword_10036C868);
  v117 = v169;
  v118 = *(v168 + 48);
  if (v118(v116, 1, v169) == 1)
  {
    sub_1000059A8(v91, &qword_100418390, &qword_10036C868);
    if (v118(v116 + v115, 1, v117) == 1)
    {
      sub_1000059A8(v116, &qword_100418390, &qword_10036C868);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v119 = v164;
  sub_10000A0A4(v116, v164, &qword_100418390, &qword_10036C868);
  if (v118(v116 + v115, 1, v117) == 1)
  {
    sub_1000059A8(v183, &qword_100418390, &qword_10036C868);
    sub_100014D78(v119, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
LABEL_45:
    v94 = &qword_100418BB8;
    v95 = &qword_10036D698;
    v96 = v116;
    goto LABEL_53;
  }

  v120 = v161;
  sub_10000D84C(v116 + v115, v161, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  v121 = sub_100033370(v119, v120, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication, sub_100032D6C);
  sub_100014D78(v120, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  sub_1000059A8(v183, &qword_100418390, &qword_10036C868);
  sub_100014D78(v119, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  v76 = v152;
  sub_1000059A8(v116, &qword_100418390, &qword_10036C868);
  if ((v121 & 1) == 0)
  {
LABEL_54:

    return 0;
  }

LABEL_47:
  v122 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  v123 = v187;
  swift_beginAccess();
  v124 = v165;
  sub_10000A0A4(v123 + v122, v165, &qword_100418388, &qword_10036C860);
  v125 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btResponse;
  swift_beginAccess();
  v126 = *(v174 + 48);
  v127 = v162;
  sub_10000A0A4(v124, v162, &qword_100418388, &qword_10036C860);
  v128 = v76 + v125;
  v129 = v127;
  sub_10000A0A4(v128, v127 + v126, &qword_100418388, &qword_10036C860);
  v130 = v127;
  v131 = v175;
  v132 = v186;
  if (v186(v130, 1, v175) == 1)
  {
    sub_1000059A8(v124, &qword_100418388, &qword_10036C860);
    v133 = v132(v129 + v126, 1, v131);
    v134 = v163;
    if (v133 == 1)
    {
      sub_1000059A8(v129, &qword_100418388, &qword_10036C860);
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v135 = v160;
  sub_10000A0A4(v129, v160, &qword_100418388, &qword_10036C860);
  v136 = v132(v129 + v126, 1, v131);
  v134 = v163;
  if (v136 == 1)
  {
    sub_1000059A8(v165, &qword_100418388, &qword_10036C860);
    sub_100014D78(v135, type metadata accessor for CLP_LogEntry_AONLoc_Response);
LABEL_52:
    v94 = &qword_100418BC0;
    v95 = &qword_10036D6A0;
    v96 = v129;
    goto LABEL_53;
  }

  v138 = v129 + v126;
  v139 = v166;
  sub_10000D84C(v138, v166, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v140 = sub_10003357C(v135, v139);
  sub_100014D78(v139, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  sub_1000059A8(v165, &qword_100418388, &qword_10036C860);
  sub_100014D78(v135, type metadata accessor for CLP_LogEntry_AONLoc_Response);
  v76 = v152;
  sub_1000059A8(v129, &qword_100418388, &qword_10036C860);
  if ((v140 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_57:
  v141 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  v142 = v187;
  swift_beginAccess();
  sub_10000A0A4(v142 + v141, v134, &qword_100418398, &qword_10036C870);
  v143 = OBJC_IVAR____TtCV10ALProtobuf30CLP_LogEntry_AONLoc_IndicationP33_D216972680E803847292720624A2662713_StorageClass__btIndication;
  swift_beginAccess();
  v144 = *(v156 + 48);
  v145 = v159;
  sub_10000A0A4(v134, v159, &qword_100418398, &qword_10036C870);
  sub_10000A0A4(v76 + v143, v145 + v144, &qword_100418398, &qword_10036C870);
  v146 = v158;
  v147 = *(v157 + 48);
  if (v147(v145, 1, v158) != 1)
  {
    v148 = v155;
    sub_10000A0A4(v145, v155, &qword_100418398, &qword_10036C870);
    if (v147(v145 + v144, 1, v146) == 1)
    {

      sub_1000059A8(v163, &qword_100418398, &qword_10036C870);
      sub_100014D78(v148, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
      goto LABEL_62;
    }

    v149 = v154;
    sub_10000D84C(v145 + v144, v154, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    v150 = sub_100033370(v148, v149, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication, sub_100032F64);

    sub_100014D78(v149, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    sub_1000059A8(v163, &qword_100418398, &qword_10036C870);
    sub_100014D78(v148, type metadata accessor for CLP_LogEntry_AONLoc_BtIndication);
    sub_1000059A8(v145, &qword_100418398, &qword_10036C870);
    return (v150 & 1) != 0;
  }

  sub_1000059A8(v134, &qword_100418398, &qword_10036C870);
  if (v147(v145 + v144, 1, v146) != 1)
  {
LABEL_62:
    sub_1000059A8(v145, &qword_100418BB0, &qword_10036D690);
    return 0;
  }

  sub_1000059A8(v145, &qword_100418398, &qword_10036C870);
  return 1;
}

uint64_t sub_100031A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (qword_100435370 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_100435378;
}

uint64_t sub_100031AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012428(&qword_100418B58, type metadata accessor for CLP_LogEntry_AONLoc_Indication);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100031B4C(uint64_t a1)
{
  v2 = sub_100012428(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100031BB8()
{
  sub_100012428(&qword_1004184D8, type metadata accessor for CLP_LogEntry_AONLoc_Indication);

  return Message.hash(into:)();
}

uint64_t sub_100031C34()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004329A0);
  sub_100005DF0(v0, qword_1004329A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10036C820;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "ERROR_MESSAGE";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 11;
  *v9 = "GNSS_RESPONSE";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "GNSS_INDICATION";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 21;
  *v13 = "WIFI_RESPONSE";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 22;
  *v15 = "WIFI_INDICATION";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 31;
  *v17 = "BT_RESPONSE";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 32;
  *v19 = "BT_INDICATION";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100031FD0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004329B8);
  sub_100005DF0(v0, qword_1004329B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "indication";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000321C0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return sub_100005DF0(v3, a2);
}

uint64_t sub_100032238@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_100005DF0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000322D0()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 3)
      {
        v3 = v0;
        v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 24);
        type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
        v5 = type metadata accessor for CLP_LogEntry_AONLoc_Indication;
        v6 = &qword_1004184D8;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0) + 20);
    type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
    v5 = type metadata accessor for CLP_LogEntry_AONLoc_Request;
    v6 = &qword_100418460;
LABEL_5:
    sub_100012428(v6, v5);
    v0 = v3;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10003241C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003248C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000326A8(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10003248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_100024A2C(&qword_1004183A0, &qword_10036C878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  sub_10000A0A4(a1 + *(v14 + 20), v8, &qword_1004183A0, &qword_10036C878);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000059A8(v8, &qword_1004183A0, &qword_10036C878);
  }

  sub_10000D84C(v8, v13, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  sub_100012428(&qword_100418460, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100014D78(v13, type metadata accessor for CLP_LogEntry_AONLoc_Request);
}