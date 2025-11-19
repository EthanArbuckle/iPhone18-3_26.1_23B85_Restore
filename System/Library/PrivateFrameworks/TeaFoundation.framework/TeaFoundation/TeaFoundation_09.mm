void (*sub_1BF0A368C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    *(v9 + 32) = v8;
    v10 = qword_1ED8F0210;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF0A910C;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v12 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, (v12 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v13 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, v13))
        {
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = sub_1BF0A910C;
          v14[4] = v9;
          v15 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v11;
  }

  return result;
}

void (*sub_1BF0A386C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF0A3A58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a2;
  sub_1BF0A82D4(0, &qword_1ED8E9E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AuthToken();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  sub_1BF0A89BC();
  sub_1BF0A8950(0, qword_1ED8E9E18);
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    result = sub_1BF0A8A10(v8, &qword_1ED8E9E10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1BF0A8A64(v8, v15);
      sub_1BF0A8AC8(v15, v13);
      v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v21;
      *(v18 + 24) = a4;
      sub_1BF0A8A64(v13, v18 + v17);

      v19 = sub_1BF006210(v22, sub_1BF0A9100, v18);

      sub_1BF0A8B2C(v15);
      return v19;
    }

    result = sub_1BF0A8340(v8, qword_1ED8E9E18);
  }

  __break(1u);
  return result;
}

void (*sub_1BF0A3CEC(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A3ED8(void (*result)(), uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6))()
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = v10;
    v11[5] = a2;
    v12 = qword_1ED8F0210;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1BF0A9114;
    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || (v14 = [objc_opt_self() isMainThread], v13 = sub_1BF0A9114, (v14 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || (v15 = [objc_opt_self() isMainThread], v13 = sub_1BF0A9114, v15))
        {
          v16 = swift_allocObject();
          v16[2] = a4;
          v16[3] = sub_1BF0A9114;
          v16[4] = v11;
          v17 = a4;
          return sub_1BF097A1C;
        }
      }
    }

    return v13;
  }

  return result;
}

void (*sub_1BF0A40CC(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF0A42B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a2;
  sub_1BF0A82D4(0, &qword_1EBDCAA50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BF178C6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    result = sub_1BF0A8A10(v8, &qword_1EBDCAA50);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v10 + 32);
      v17(v15, v8, v9);
      (*(v10 + 16))(v13, v15, v9);
      v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v22;
      *(v19 + 24) = a4;
      v17((v19 + v18), v13, v9);

      v20 = sub_1BF006210(v23, sub_1BF0A90F4, v19);

      (*(v10 + 8))(v15, v9);
      return v20;
    }

    result = sub_1BF0A8340(v8, &qword_1EBDCAA58);
  }

  __break(1u);
  return result;
}

void (*sub_1BF0A4598(void (*result)(), void *a2, char a3, void *a4, uint64_t a5, uint64_t a6))()
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = v10;
    v11[5] = a2;

    sub_1BF0A8414(v10, a2, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF0A9114;
    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || (v13 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, (v13 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || (v14 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, v14))
        {
          v15 = swift_allocObject();
          v15[2] = a4;
          v15[3] = sub_1BF0A9114;
          v15[4] = v11;
          v16 = a4;
          return sub_1BF097A1C;
        }
      }
    }

    return v12;
  }

  return result;
}

void (*sub_1BF0A478C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF0A4978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a2;
  sub_1BF0A82D4(0, &qword_1EBDCB710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCC220);
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    result = sub_1BF0A8A10(v8, &qword_1EBDCB710);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v10 + 32);
      v17(v15, v8, v9);
      (*(v10 + 16))(v13, v15, v9);
      v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v22;
      *(v19 + 24) = a4;
      v17((v19 + v18), v13, v9);

      v20 = sub_1BF006210(v23, sub_1BF0A90F8, v19);

      (*(v10 + 8))(v15, v9);
      return v20;
    }

    result = sub_1BF0A8340(v8, &qword_1EBDCC220);
  }

  __break(1u);
  return result;
}

void (*sub_1BF0A4C58(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A4E44(void (*result)(), unint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6))()
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = v10;
    v11[5] = a2;

    sub_1BF0A856C(v10, a2, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF0A9114;
    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || (v13 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, (v13 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || (v14 = [objc_opt_self() isMainThread], v12 = sub_1BF0A9114, v14))
        {
          v15 = swift_allocObject();
          v15[2] = a4;
          v15[3] = sub_1BF0A9114;
          v15[4] = v11;
          v16 = a4;
          return sub_1BF097A1C;
        }
      }
    }

    return v12;
  }

  return result;
}

void (*sub_1BF0A5038(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    *(v9 + 32) = v8 & 1;
    v10 = qword_1ED8F0210;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF0A9110;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v12 = [objc_opt_self() isMainThread], v11 = sub_1BF0A9110, (v12 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v13 = [objc_opt_self() isMainThread], v11 = sub_1BF0A9110, v13))
        {
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = sub_1BF0A9110;
          v14[4] = v9;
          v15 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v11;
  }

  return result;
}

void (*sub_1BF0A521C(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

void (*sub_1BF0A5408(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0A80C8(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF0077B8;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF0A55F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1BF0A82D4(0, &qword_1ED8E9E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v19 - v9);
  sub_1BF0A89BC();
  sub_1BF0A8950(0, qword_1ED8E9E18);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1BF0A8A10(v10, &qword_1ED8E9E10);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_1BF0A8340(v10, qword_1ED8E9E18);
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;

  v14 = v12;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v17 = sub_1BF02E21C;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1BF02E21C;
    v15[4] = v13;
    v16 = a2;
    v17 = sub_1BF097A1C;
  }

  return v17;
}

uint64_t sub_1BF0A5914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1BF0A82D4(0, &qword_1EBDCAA50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v19 - v9);
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1BF0A8A10(v10, &qword_1EBDCAA50);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_1BF0A8340(v10, &qword_1EBDCAA58);
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;

  v14 = v12;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v17 = sub_1BF02E21C;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1BF02E21C;
    v15[4] = v13;
    v16 = a2;
    v17 = sub_1BF097A1C;
  }

  return v17;
}

uint64_t sub_1BF0A5C34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1BF0A82D4(0, &qword_1EBDCB710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v19 - v9);
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCC220);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1BF0A8A10(v10, &qword_1EBDCB710);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_1BF0A8340(v10, &qword_1EBDCC220);
    goto LABEL_19;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;

  v14 = v12;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v17 = sub_1BF02E21C;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = sub_1BF02E21C;
    v15[4] = v13;
    v16 = a2;
    v17 = sub_1BF097A1C;
  }

  return v17;
}

uint64_t sub_1BF0A6038(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    v9 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    sub_1BF082B24();
    *a2 = v11;
    swift_endAccess();
    v10 = *(v11 + 16);
    result = sub_1BEFE90AC(a5);
    if (v10 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF0998D8(0, v10, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

uint64_t sub_1BF0A6158(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    v9 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    sub_1BF082E54();
    *a2 = v11;
    swift_endAccess();
    v10 = *(v11 + 16);
    result = sub_1BEFE90AC(a5);
    if (v10 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF099A54(0, v10, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

uint64_t sub_1BF0A6270()
{
  OUTLINED_FUNCTION_101();
  v2 = OUTLINED_FUNCTION_87();
  UnfairLock.init(options:)(v6);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BEFEEEE0(0, &unk_1ED8E9CE8);
  OUTLINED_FUNCTION_27();
  v3 = swift_allocObject();
  swift_unownedRetain();
  sub_1BF08B814(v2, v3, v0);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125();
  v4 = *v1;
  *v1 = v2;

  return v0;
}

void sub_1BF0A6484()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_33_2(v12);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v13 / 24);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v15[24 * v2] <= v14)
    {
      memmove(v14, v15, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A658C()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  v9 = MEMORY[0x1E69E7CA0];
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v10, v9 + 8, v11);
    v12 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_33_2(v12);
    OUTLINED_FUNCTION_24_6(v13);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v15[32 * v2] <= v14)
    {
      memmove(v14, v15, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A6688()
{
  OUTLINED_FUNCTION_140();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1BF0A8428(0, &unk_1EBDCB980);
    v11 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_15_4();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v11 != v0 || v3 + 16 * v9 <= v2)
    {
      v14 = OUTLINED_FUNCTION_60_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_1();
    sub_1BEFEC638(0, v17, v18, v19);
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A6798()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_98_0(v6);
  if (v2)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB988);
    v9 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_15_4();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1BF0A68B0()
{
  OUTLINED_FUNCTION_18_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v3;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v4(0);
    v11 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_15_4();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v11 != v0 || &v0[2 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_110_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BEFF3A00(0, v1);
    OUTLINED_FUNCTION_110_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A69AC()
{
  OUTLINED_FUNCTION_41_2();
  if (v7)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_8_0();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_16_4(v8);
  if (v3)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB9F0);
    v11 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_22_3();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v11 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_60_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BF096DCC(0);
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

char *sub_1BF0A6B98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BEFEC638(0, &qword_1ED8EAD68, &type metadata for BackgroundFetchResult, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1BF0A6CE4()
{
  OUTLINED_FUNCTION_41_2();
  if (v7)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_8_0();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_16_4(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_8_5(v11, &unk_1EBDCA890);
    v12 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_22_3();
    v12[2] = v2;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v12 != v0 || v5 + 8 * v2 <= v4)
    {
      v16 = OUTLINED_FUNCTION_60_0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_126_0(v14, &qword_1ED8EFD30);
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF0A6DDC()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_33_2(v12);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v13 / 40);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v15[40 * v2] <= v14)
    {
      memmove(v14, v15, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1BF0A6F2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

char *sub_1BF0A6F50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartupTaskManager.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF0A7080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0A70C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BF0A7114()
{
  result = qword_1EBDCB978;
  if (!qword_1EBDCB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB978);
  }

  return result;
}

void sub_1BF0A7168()
{
  if (!qword_1EBDCA8A0)
  {
    sub_1BEFF3A00(255, &qword_1EBDCAB80);
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8A0);
    }
  }
}

void sub_1BF0A71D4()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v44[2] = *MEMORY[0x1E69E9840];
  if (*(v1 + 16))
  {
    v44[0] = v0;
    v3 = *(v0 + 16);
    v42 = v0 + 32;
    v4 = v1 + 56;
    v5 = 0;
    v43 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v41 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v42 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      sub_1BF17BB6C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF179F3C();
      v10 = sub_1BF17BB9C();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v41;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (sub_1BF17B86C() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v44[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v36 = swift_slowAlloc();
          sub_1BF0A7A54(v36, v20, (v2 + 56), v20, v2, v12, v44);
          OUTLINED_FUNCTION_66();

          MEMORY[0x1BFB547B0](v36, -1, -1);

          goto LABEL_35;
        }
      }

      v37[0] = v20;
      v37[1] = v37;
      MEMORY[0x1EEE9AC00](v18);
      v22 = v37 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v39 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v43;
      v41 = *(v43 + 16);
      v20 = v17;
      while (1)
      {
        v38 = v24;
        v40 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v41)
          {
            sub_1BF004110(v39, v37[0], v38, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v42 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          sub_1BF17BB6C();
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF179F3C();
          v27 = sub_1BF17BB9C();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v43;
              v17 = v40;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = sub_1BF17B86C();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v39[v29];
          v39[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v43;
          v17 = v40;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v38 - 1;
        if (__OFSUB__(v38, 1))
        {
          break;
        }

        v17 = v20;
        if (v38 == 1)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {
  }

LABEL_35:
  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0A75EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v14 = *v13;
    v15 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    v17 = sub_1BF17BB9C();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v14 && v22[1] == v15)
      {
        break;
      }

      v24 = sub_1BF17B86C();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1BF004110(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BF0A77FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1BF004110(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    v15 = sub_1BF17BB9C();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v12 && v20[1] == v13)
      {
        break;
      }

      v22 = sub_1BF17B86C();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BF0A79CC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BF0A75EC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1BF0A7A54(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1BF0A77FC(a1, a2, a5, a6, a7);

  return v12;
}

void sub_1BF0A7C1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a6;
  v7 = *a1;
  sub_1BF0A5F54();
}

void sub_1BF0A801C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a1;
  v7 = *a6;
  sub_1BF0A5FC4();
}

uint64_t sub_1BF0A8058(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A8050(a1, *(v1 + 16));
}

id sub_1BF0A80C8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1BF0512E4(result, a2);
  }

  return result;
}

uint64_t sub_1BF0A80DC(char *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A803C(a1, *(v1 + 16));
}

uint64_t sub_1BF0A8164(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7FC8(a1, *(v1 + 16));
}

unint64_t sub_1BF0A8200()
{
  result = qword_1ED8ED690;
  if (!qword_1ED8ED690)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED690);
  }

  return result;
}

uint64_t sub_1BF0A82B0(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7D80(a1, *(v1 + 16));
}

void sub_1BF0A82D4(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_136();
    sub_1BF0A8950(v3, v4);
    v5 = sub_1BF17AE6C();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1BF0A8340(uint64_t a1, void *a2)
{
  sub_1BF0A8950(0, a2);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0A8394()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF0A8950(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  return v0;
}

id sub_1BF0A8414(id result, id a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF096B3C(result, a2, a3);
  }

  return result;
}

void sub_1BF0A8428(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v3;
    v5 = v2;
    OUTLINED_FUNCTION_50_1();
    sub_1BEFEC638(255, v6, v7, v8);
    v9 = OUTLINED_FUNCTION_75();
    v10 = v4(v9);
    if (!v11)
    {
      atomic_store(v10, v5);
    }
  }
}

uint64_t objectdestroy_154Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

unint64_t sub_1BF0A84D8()
{
  result = qword_1ED8EF3D8[0];
  if (!qword_1ED8EF3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EF3D8);
  }

  return result;
}

uint64_t sub_1BF0A8548(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7F18(a1, *(v1 + 16));
}

uint64_t sub_1BF0A856C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF097124(a1, a2, a3);
  }

  return a1;
}

uint64_t objectdestroy_210Tm()
{
  v1 = v0[3];

  sub_1BF014E18(v0[4], v0[5]);
  v2 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF0A85EC()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF0A8950(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  return v0;
}

uint64_t objectdestroy_129Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 24);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_1BF0A8788(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7EC4(a1, *(v1 + 16));
}

uint64_t sub_1BF0A8834(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7E6C(a1, *(v1 + 16));
}

uint64_t sub_1BF0A8840(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF061928(a1, *(v1 + 16));
}

id sub_1BF0A8880(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF096E40(result, a2, a3);
  }

  return result;
}

uint64_t objectdestroy_343Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF0A892C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7D78(a1, *(v1 + 16));
}

void sub_1BF0A8950(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_136();
    v4(v3);
    v5 = type metadata accessor for Seal.Resolution();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1BF0A89BC()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF0A82D4(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  return v0;
}

uint64_t sub_1BF0A8A10(uint64_t a1, void *a2)
{
  sub_1BF0A82D4(0, a2);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0A8A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0A8AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0A8B2C(uint64_t a1)
{
  v2 = type metadata accessor for AuthToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_398Tm()
{
  v1 = (type metadata accessor for AuthToken() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1BF1794AC();
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = v1[7];
  v9 = sub_1BF17923C();
  OUTLINED_FUNCTION_12(v9);
  (*(v10 + 8))(v0 + v3 + v8);
  v11 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF0A8CC8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_68(v2);
  v4 = *(v1 + 24);
  return (*(v1 + 16))(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

void sub_1BF0A8D34()
{
  if (!qword_1EBDCB9E0)
  {
    sub_1BEFF3A00(255, &qword_1EBDCB9E8);
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB9E0);
    }
  }
}

void sub_1BF0A8DA0()
{
  if (!qword_1EBDCB9F8)
  {
    sub_1BEFF3A00(255, &qword_1EBDCBA00);
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB9F8);
    }
  }
}

uint64_t sub_1BF0A8E64(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7BC8(a1, *(v1 + 16));
}

uint64_t sub_1BF0A8F0C(char *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0A7ADC(a1, *(v1 + 16));
}

void sub_1BF0A9028(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v2;
    v3();
    OUTLINED_FUNCTION_32_2();
    v5 = sub_1BF17B19C();
    if (!v6)
    {
      atomic_store(v5, v4);
    }
  }
}

unint64_t sub_1BF0A9098()
{
  result = qword_1EBDCBA50;
  if (!qword_1EBDCBA50)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EBDCBA50);
  }

  return result;
}

void OUTLINED_FUNCTION_67_1()
{
  v2 = *(v0 + 16);

  UnfairLock.lock()();
}

void OUTLINED_FUNCTION_74_1()
{
  v2 = *(v0 + 16);

  UnfairLock.lock()();
}

void (*OUTLINED_FUNCTION_93_0())()
{

  return sub_1BF006210(v0, v2, v1);
}

void (*OUTLINED_FUNCTION_116_0())()
{

  return sub_1BF006210(v2, v0, v1);
}

void OUTLINED_FUNCTION_120_0(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  sub_1BEFFF9F8(a5, v20, v21, v19, a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void OUTLINED_FUNCTION_121_0()
{

  sub_1BF0A8950(0, v0);
}

uint64_t OUTLINED_FUNCTION_122_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a1[2] = a11;
  a1[3] = v12;
  a1[4] = v11;
}

uint64_t OUTLINED_FUNCTION_126_0(uint64_t a1, unint64_t *a2)
{

  return sub_1BEFF3A00(0, a2);
}

id _s13TeaFoundation19AsyncBlockOperationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for XPCArgumentBuilder(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void static Ternary.|| infix(_:_:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_1BF0A95E4();
  v6 = 0;
  if (v4 && v5)
  {
    if (v4 == 2 || v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      if (v4 != 1 && v5 != 1)
      {
        sub_1BF17B85C();
        __break(1u);
        return;
      }

      v6 = 1;
    }
  }

  *a3 = v6;
}

void sub_1BF0A95E4()
{
  if (!qword_1ED8EB070)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EB070);
    }
  }
}

void static Ternary.&& infix(_:_:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_1BF0A95E4();
  if (v4 == 1 || v5 == 1)
  {
    v7 = 1;
LABEL_15:
    *a3 = v7;
    return;
  }

  if (v4 == 2 || v5 == 2)
  {
    v7 = 2;
    goto LABEL_15;
  }

  v7 = 0;
  if (!v4 || !v5)
  {
    goto LABEL_15;
  }

  sub_1BF17B85C();
  __break(1u);
}

uint64_t Ternary.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0A976C()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t Ternary.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_11();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_2_11();
    v6 = sub_1BF17B89C();
    v8 = v6;
    v9 = v7;
    v10 = v6 == 1702195828 && v7 == 0xE400000000000000;
    if (v10 || (OUTLINED_FUNCTION_0_16() & 1) != 0)
    {

      v11 = 0;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v15);
      *a2 = v11;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = v8 == 0x65736C6166 && v9 == 0xE500000000000000;
    if (v13 || (OUTLINED_FUNCTION_0_16() & 1) != 0)
    {

      v11 = 1;
      goto LABEL_10;
    }

    v14 = v8 == OUTLINED_FUNCTION_1_13() && v9 == 0xE700000000000000;
    if (v14 || (OUTLINED_FUNCTION_0_16() & 1) != 0)
    {

      v11 = 2;
      goto LABEL_10;
    }

    sub_1BF17B1EC();

    MEMORY[0x1BFB52000](v8, v9);

    MEMORY[0x1BFB52000](39, 0xE100000000000000);
    sub_1BF17B29C();
    swift_allocError();
    sub_1BF17B26C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Ternary.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  if (v2 > 1)
  {
    OUTLINED_FUNCTION_1_13();
  }

  sub_1BF17B91C();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_1BF0A9AB8()
{
  result = qword_1EBDCBAE0;
  if (!qword_1EBDCBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBAE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Ternary(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *Gate.__allocating_init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  result[5] = 0;
  result[6] = v7;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *Gate.init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v3[5] = 0;
  v3[6] = v4;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

Swift::Void __swiftcall Gate.enter()()
{
  v1 = sub_1BF179C5C();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = v0[4];
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, *MEMORY[0x1E69E8020], v1);
  v11 = v10;
  LOBYTE(v10) = sub_1BF179C8C();
  (*(v4 + 8))(v9, v1);
  if (v10)
  {
    v12 = v0[5];
    v13 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      v0[5] = v13;
      sub_1BF071C70();
      v14 = OUTLINED_FUNCTION_3_9();
      *(v14 + 16) = xmmword_1BF17E820;
      v16 = v0[2];
      v15 = v0[3];
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v17 = sub_1BF071CD8();
      *(v14 + 32) = v16;
      *(v14 + 40) = v15;
      v18 = MEMORY[0x1E69E65A8];
      *(v14 + 96) = MEMORY[0x1E69E6530];
      *(v14 + 104) = v18;
      *(v14 + 64) = v17;
      *(v14 + 72) = v13;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v19 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      OUTLINED_FUNCTION_2_12();
      sub_1BF1797CC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall Gate.exit()()
{
  v1 = v0;
  v2 = sub_1BF179C5C();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = v1[4];
  *(v9 - v8) = v11;
  (*(v5 + 104))(v9 - v8, *MEMORY[0x1E69E8020], v2);
  v12 = v11;
  LOBYTE(v11) = sub_1BF179C8C();
  (*(v5 + 8))(v10, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v1[5];
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v16 = v15 & ~(v15 >> 63);
  v1[5] = v16;
  sub_1BF071C70();
  v17 = OUTLINED_FUNCTION_3_9();
  *(v17 + 16) = xmmword_1BF17E820;
  v19 = v1[2];
  v18 = v1[3];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1BF071CD8();
  *(v17 + 32) = v19;
  *(v17 + 40) = v18;
  v21 = MEMORY[0x1E69E6530];
  v22 = MEMORY[0x1E69E65A8];
  *(v17 + 96) = MEMORY[0x1E69E6530];
  *(v17 + 104) = v22;
  *(v17 + 64) = v20;
  *(v17 + 72) = v16;
  sub_1BF071C2C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v23 = sub_1BF17AE3C();
  sub_1BF17ACDC();
  sub_1BF1797CC();

  if (!v1[5])
  {
    swift_beginAccess();
    v24 = v1[6];
    v1[6] = MEMORY[0x1E69E7CC0];
    v25 = OUTLINED_FUNCTION_3_9();
    *(v25 + 16) = xmmword_1BF17E820;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v20;
    *(v25 + 32) = v19;
    *(v25 + 40) = v18;
    v26 = *(v24 + 16);
    *(v25 + 96) = v21;
    *(v25 + 104) = v22;
    *(v25 + 72) = v26;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v27 = sub_1BF17AE3C();
    sub_1BF17ACDC();
    OUTLINED_FUNCTION_2_12();
    sub_1BF1797CC();

    v28 = *(v24 + 16);
    if (v28)
    {
      v29 = (v24 + 40);
      do
      {
        v31 = *(v29 - 1);
        v30 = *v29;

        v31(v32);

        v29 += 2;
        --v28;
      }

      while (v28);
    }
  }
}

uint64_t sub_1BF0AA0E4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_1BF179C5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = a1[4];
  *v10 = v12;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);

  v13 = v12;
  LOBYTE(v12) = sub_1BF179C8C();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    v15 = a1[5];
    sub_1BF071C70();
    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BF17E820;
      v18 = a1[2];
      v17 = a1[3];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v19 = sub_1BF071CD8();
      *(v16 + 32) = v18;
      *(v16 + 40) = v17;
      v20 = MEMORY[0x1E69E65A8];
      *(v16 + 96) = MEMORY[0x1E69E6530];
      *(v16 + 104) = v20;
      *(v16 + 64) = v19;
      *(v16 + 72) = v15;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v21 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      sub_1BF1797CC();

      v22 = swift_allocObject();
      *(v22 + 16) = sub_1BF006170;
      *(v22 + 24) = v11;
      swift_beginAccess();

      sub_1BF071BB4();
      v23 = *(a1[6] + 16);
      sub_1BF071DF0(v23);
      v24 = a1[6];
      *(v24 + 16) = v23 + 1;
      v25 = v24 + 16 * v23;
      *(v25 + 32) = sub_1BF0AAA74;
      *(v25 + 40) = v22;
      a1[6] = v24;
      swift_endAccess();
    }

    else
    {
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BF17DEF0;
      v28 = a1[2];
      v27 = a1[3];
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1BF071CD8();
      *(v26 + 32) = v28;
      *(v26 + 40) = v27;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v29 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      sub_1BF1797CC();

      a2();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Gate.wait(closure:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BF179C5C();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = v3[4];
  *(v13 - v12) = v15;
  (*(v9 + 104))(v13 - v12, *MEMORY[0x1E69E8020], v6);
  v16 = v15;
  LOBYTE(v15) = sub_1BF179C8C();
  result = (*(v9 + 8))(v14, v6);
  if (v15)
  {
    v18 = v3[5];
    sub_1BF071C70();
    if (v18)
    {
      v19 = OUTLINED_FUNCTION_3_9();
      *(v19 + 16) = xmmword_1BF17E820;
      v21 = v3[2];
      v20 = v3[3];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v22 = sub_1BF071CD8();
      *(v19 + 32) = v21;
      *(v19 + 40) = v20;
      v23 = MEMORY[0x1E69E65A8];
      *(v19 + 96) = MEMORY[0x1E69E6530];
      *(v19 + 104) = v23;
      *(v19 + 64) = v22;
      *(v19 + 72) = v18;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v24 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      OUTLINED_FUNCTION_2_12();
      sub_1BF1797CC();

      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      *(v25 + 24) = a2;
      swift_beginAccess();

      sub_1BF071BB4();
      v26 = *(v3[6] + 16);
      sub_1BF071DF0(v26);
      v27 = v3[6];
      *(v27 + 16) = v26 + 1;
      v28 = v27 + 16 * v26;
      *(v28 + 32) = sub_1BF006170;
      *(v28 + 40) = v25;
      v3[6] = v27;
      return swift_endAccess();
    }

    else
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1BF17DEF0;
      v31 = v3[2];
      v30 = v3[3];
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1BF071CD8();
      *(v29 + 32) = v31;
      *(v29 + 40) = v30;
      sub_1BF071C2C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v32 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      OUTLINED_FUNCTION_2_12();
      sub_1BF1797CC();

      return a1();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Gate.wait()()
{
  v1 = v0;
  sub_1BF00361C(0, &qword_1ED8ED8C0, type metadata accessor for Promise);
  v2 = swift_allocObject();
  v6 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();

  v3 = UnfairLock.init(options:)(&v6);
  sub_1BF00361C(0, &qword_1ED8ED8D0, type metadata accessor for Seal);
  swift_allocObject();
  *(v2 + 16) = sub_1BF034CD4(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BF0357A4;
  *(v4 + 24) = v2;
  swift_retain_n();

  sub_1BF0AA0E4(v1, sub_1BF0004B0, v4);

  return v2;
}

uint64_t Gate.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t Gate.__deallocating_deinit()
{
  Gate.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t Gate.description.getter()
{
  sub_1BF17B1EC();

  MEMORY[0x1BFB52000](v0[2], v0[3]);
  MEMORY[0x1BFB52000](0x3D6574617473202CLL, 0xE800000000000000);
  v5 = v0[5];
  v1 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v1);

  MEMORY[0x1BFB52000](0x7275736F6C63202CLL, 0xEB000000003D7365);
  swift_beginAccess();
  v4 = *(v0[6] + 16);
  v2 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v2);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1BF0AAA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BEFF9A40(a1, v19);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1BF050248();

    *v3 = v18;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BF0ABB8C);
    sub_1BF082568(a2, a3, v10, v11, v12, v13, v14, v15, v16, v17);

    return sub_1BF0ABBDC(v19, &qword_1ED8EFBA0, v8 + 8, v9, sub_1BF0ABB8C);
  }

  return result;
}

uint64_t sub_1BF0AAB8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BEFF9A40(a1, v29);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_13();
    sub_1BF082AB0(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v29[0], v29[1]);
    *v2 = v28;
    v13 = sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0(v13);
    return (*(v14 + 8))(a2);
  }

  else
  {
    v16 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &unk_1EBDCA880, sub_1BF083CF8, MEMORY[0x1E69E6720], sub_1BF0ABA08);
    sub_1BF0827B4(a2, v17, v18, v19, v20, v21, v22, v23, v26, v27);
    v24 = sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0(v24);
    (*(v25 + 8))(a2);
    return sub_1BF0ABBDC(v29, &unk_1EBDCA880, sub_1BF083CF8, v16, sub_1BF0ABA08);
  }
}

uint64_t sub_1BF0AACD4()
{
  OUTLINED_FUNCTION_7_7();
  v2 = type metadata accessor for AuthToken();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87();
  UnfairLock.init(options:)(&v13);
  sub_1BF0A8AC8(v1, v5);
  sub_1BF0ABA08(0, &qword_1ED8E9DD0, type metadata accessor for AuthToken, type metadata accessor for Seal);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_6_10();
  v10 = sub_1BF0AB2BC(v9, v5);
  sub_1BF0A8B2C(v1);
  *(v0 + 16) = v10;
  return v0;
}

uint64_t sub_1BF0AADDC()
{
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_110();
  v1 = OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_120(v1);
  sub_1BF0ABA08(0, &qword_1ED8E9DC8, sub_1BF027B68, type metadata accessor for Seal);
  OUTLINED_FUNCTION_10_11();
  v2 = OUTLINED_FUNCTION_6_10();
  v3 = sub_1BF0AB4CC(v2, v0);
  return OUTLINED_FUNCTION_8_6(v3);
}

uint64_t sub_1BF0AAE6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = OUTLINED_FUNCTION_87();
  v5 = OUTLINED_FUNCTION_120(v4);
  sub_1BF0ABA08(0, &qword_1EBDCAA08, sub_1BF096F0C, type metadata accessor for Seal);
  swift_allocObject();
  v6 = sub_1BF0AB448(v5, a1, a2);
  return OUTLINED_FUNCTION_8_6(v6);
}

uint64_t sub_1BF0AAF30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  v9 = OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_120(v9);
  sub_1BF0AB8A0(0, a2, a3, a4, type metadata accessor for Seal);
  OUTLINED_FUNCTION_10_11();
  v10 = OUTLINED_FUNCTION_6_10();
  *(v4 + 16) = sub_1BF0AB4CC(v10, a1);
  return v4;
}

uint64_t sub_1BF0AAFCC()
{
  OUTLINED_FUNCTION_7_7();
  v2 = sub_1BF178C6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87();
  UnfairLock.init(options:)(&v14);
  (*(v3 + 16))(v6, v1, v2);
  sub_1BF0ABA08(0, &qword_1EBDCAA18, MEMORY[0x1E6967EC8], type metadata accessor for Seal);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_6_10();
  v11 = sub_1BF0AB544(v10, v6);
  (*(v3 + 8))(v1, v2);
  *(v0 + 16) = v11;
  return v0;
}

uint64_t sub_1BF0AB134(char a1)
{
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_87();
  v3 = OUTLINED_FUNCTION_120(v2);
  OUTLINED_FUNCTION_1_14();
  sub_1BF0ABB8C(0, v4, v5, v6);
  OUTLINED_FUNCTION_10_11();
  v7 = sub_1BF0AB700(v3, a1 & 1);
  return OUTLINED_FUNCTION_8_6(v7);
}

uint64_t sub_1BF0AB1B0()
{
  OUTLINED_FUNCTION_110();
  v0 = OUTLINED_FUNCTION_87();
  v1 = OUTLINED_FUNCTION_120(v0);
  OUTLINED_FUNCTION_1_14();
  sub_1BF0ABB8C(0, v3, v2 + 8, v4);
  OUTLINED_FUNCTION_10_11();
  v5 = sub_1BF0AB784(v1);
  return OUTLINED_FUNCTION_8_6(v5);
}

uint64_t ReferenceService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceService.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ReferenceService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF0AB2BC(uint64_t a1, uint64_t a2)
{
  sub_1BF0ABA6C(0, &qword_1ED8E9E10, qword_1ED8E9E18, type metadata accessor for AuthToken);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v9 = *(*v2 + 112);
  sub_1BF0ABAC4(0, qword_1ED8E9E18, type metadata accessor for AuthToken);
  v11 = v10;
  __swift_storeEnumTagSinglePayload(v2 + v9, 1, 1, v10);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  sub_1BF0A8A64(a2, v8);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v12 = *(*v2 + 112);
  swift_beginAccess();
  sub_1BF0ABB1C(v8, v2 + v12, &qword_1ED8E9E10, qword_1ED8E9E18, type metadata accessor for AuthToken);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0AB448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = -1;
  *(v3 + 16) = a1;
  *(v3 + 24) = 1;
  swift_beginAccess();
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0;
  return v3;
}

uint64_t sub_1BF0AB4CC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 32) = v4;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  swift_beginAccess();
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t sub_1BF0AB544(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E6967EC8];
  sub_1BF0ABA6C(0, &qword_1EBDCAA50, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v10 = *(*v2 + 112);
  sub_1BF0ABAC4(0, &qword_1EBDCAA58, v5);
  v12 = v11;
  __swift_storeEnumTagSinglePayload(v2 + v10, 1, 1, v11);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  v13 = sub_1BF178C6C();
  (*(*(v13 - 8) + 32))(v9, a2, v13);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  v14 = *(*v2 + 112);
  swift_beginAccess();
  sub_1BF0ABB1C(v9, v2 + v14, &qword_1EBDCAA50, &qword_1EBDCAA58, v5);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0AB700(uint64_t a1, char a2)
{
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  v3 = a2 & 1;
  swift_beginAccess();
  v4 = *(v2 + 40);
  *(v2 + 40) = v3;
  v5 = *(v2 + 48);
  *(v2 + 48) = 0;
  sub_1BF043E18(v4, v5);
  return v2;
}

uint64_t sub_1BF0AB784(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 32) = v2;
  *(v1 + 48) = -1;
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  swift_beginAccess();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return v1;
}

unint64_t sub_1BF0AB7F0()
{
  result = qword_1ED8EACC8;
  if (!qword_1ED8EACC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EACC8);
  }

  return result;
}

unint64_t sub_1BF0AB84C()
{
  result = qword_1EBDCAB68;
  if (!qword_1EBDCAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB68);
  }

  return result;
}

void sub_1BF0AB8A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BF0ABB8C(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BF0AB93C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0AB97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1BF0ABA08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF0ABA6C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BF0ABAC4(255, a3, a4);
    v5 = sub_1BF17AE6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BF0ABAC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Seal.Resolution();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF0ABB1C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1BF0ABA6C(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_1BF0ABB8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BF0ABBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 8))(a1);
  return a1;
}

void dispatch thunk of DiagnosticAttachmentResolverType.resolveAttachment(_:)()
{
  OUTLINED_FUNCTION_13_2();
  v4 = *(OUTLINED_FUNCTION_30_3(v1, v2, v3) + 8);
  OUTLINED_FUNCTION_29_4();
  v11 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_22_4(v8);
  OUTLINED_FUNCTION_35_3();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1BF0ABD2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_5();
  v5 = OUTLINED_FUNCTION_13_0();

  return v6(v5);
}

void dispatch thunk of DiagnosticAttachmentResolverType.resolveAttachments(_:)()
{
  OUTLINED_FUNCTION_13_2();
  v4 = *(OUTLINED_FUNCTION_30_3(v1, v2, v3) + 16);
  OUTLINED_FUNCTION_29_4();
  v11 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 16) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_22_4(v8);
  OUTLINED_FUNCTION_35_3();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1BF0ABF14()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1BF0AC000()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0AC048()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0AC088(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF0AC0A0()
{
  OUTLINED_FUNCTION_13_2();
  v33 = v0;
  v1 = v0[8];
  switch(v1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_27_3();
      v10 = *(v9 + 56);
      v11 = *(v9 + 64);
      sub_1BEFE6A78(v9 + 16, (v0 + 2));
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF0AC514(v0 + 2, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      goto LABEL_14;
    case 2uLL:
      OUTLINED_FUNCTION_27_3();
      v6 = v5[3];
      v7 = v5[4];
      v32 = v5[2];
      sub_1BF0AC884(&v32, v6, v7);
      goto LABEL_14;
    case 3uLL:
      OUTLINED_FUNCTION_27_3();
      sub_1BF0ACDD8(v8[2], v8[3], v8[4], v8[5]);
      goto LABEL_14;
    case 4uLL:
      OUTLINED_FUNCTION_27_3();
      sub_1BF0AD2A4(v4[2], v4[3], v4[4], v4[5], v4[6], v4[7]);
      goto LABEL_14;
    case 5uLL:
      v12 = (v1 & 0x1FFFFFFFFFFFFFFFLL);
      v14 = v12[2];
      v13 = v12[3];
      v15 = v12[4];
      v16 = swift_task_alloc();
      v0[9] = v16;
      *v16 = v0;
      v16[1] = sub_1BF0AC334;
      v17 = v0[7];
      OUTLINED_FUNCTION_35_3();

      return sub_1BF0AD54C(v18, v19, v20);
    case 6uLL:
      v23 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = swift_task_alloc();
      v0[10] = v26;
      *v26 = v0;
      v26[1] = sub_1BF0AC424;
      v27 = v0[7];
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_35_3();

      return sub_1BF0AE5FC(v28);
    default:
      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_14:
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_35_3();

      __asm { BRAA            X3, X16 }

      return result;
  }
}

uint64_t sub_1BF0AC334()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_20_5();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_13_0();
  }

  return v7(v6);
}

uint64_t sub_1BF0AC424()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v3 = *(v2 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_20_5();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_13_0();
  }

  return v7(v6);
}

NSObject *sub_1BF0AC514(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BF17923C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1BF0B0FDC();
  if (v3)
  {
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF1797FC();
    __swift_project_value_buffer(v17, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v18 = v3;
    v26 = sub_1BF1797DC();
    v19 = sub_1BF17ACBC();

    if (os_log_type_enabled(v26, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v20 = 136446466;
      *(v20 + 4) = sub_1BF01A7AC(a2, a3, v29);
      *(v20 + 12) = 2114;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_1BEFE0000, v26, v19, "Failed to prepare JSON attachment with name %{public}s for radar. Error: %{public}@", v20, 0x16u);
      sub_1BF0B216C(v21, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB547B0](v22, -1, -1);
      MEMORY[0x1BFB547B0](v20, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v15 = v13;
    v16 = v14;
    v27[2] = OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory;
    v28 = v8;
    v27[1] = a2;
    v29[0] = a2;
    v29[1] = a3;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](0x6E6F736A2ELL, 0xE500000000000000);
    sub_1BF17919C();

    sub_1BF0B0E10();
    v26 = sub_1BF1791DC();
    sub_1BF014E18(v15, v16);
    (*(v28 + 8))(v11, v7);
  }

  return v26;
}

NSObject *sub_1BF0AC884(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_1BF17923C();
  v42 = *(v45 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17A12C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  DiagnosticText.description.getter();
  sub_1BF17A10C();
  v14 = sub_1BF17A0BC();
  v16 = v15;

  v17 = v13;
  v18 = v16;
  (*(v10 + 8))(v17, v9);
  if (v16 >> 60 == 15)
  {
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF1797FC();
    __swift_project_value_buffer(v19, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v20 = sub_1BF1797DC();
    v21 = sub_1BF17ACBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1BF01A7AC(a2, a3, &v43);
      _os_log_impl(&dword_1BEFE0000, v20, v21, "Failed to get data for text attachment with name %{public}s for radar", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFB547B0](v23, -1, -1);
      MEMORY[0x1BFB547B0](v22, -1, -1);
    }

    sub_1BF0B21F4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v43 = a2;
    v44 = a3;
    v39 = a3;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](1954051118, 0xE400000000000000);
    v20 = v44;
    sub_1BF17919C();

    v24 = v41;
    sub_1BF0B0E10();
    if (v24)
    {
      v40 = v8;
      v41 = v14;
      if (qword_1EBDCAFE0 != -1)
      {
        swift_once();
      }

      v25 = sub_1BF1797FC();
      __swift_project_value_buffer(v25, qword_1EBDCCE48);
      v26 = v39;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v27 = v24;
      v28 = sub_1BF1797DC();
      v29 = sub_1BF17ACBC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v18;
        v32 = v31;
        v20 = swift_slowAlloc();
        v43 = v20;
        *v30 = 136446466;
        *(v30 + 4) = sub_1BF01A7AC(a2, v26, &v43);
        *(v30 + 12) = 2114;
        v33 = v24;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v34;
        *v32 = v34;
        _os_log_impl(&dword_1BEFE0000, v28, v29, "Failed to write data for text attachment with name %{public}s for radar with error %{public}@", v30, 0x16u);
        sub_1BF0B216C(v32, sub_1BF082F84);
        v35 = v32;
        v18 = v38;
        MEMORY[0x1BFB547B0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1BFB547B0](v20, -1, -1);
        MEMORY[0x1BFB547B0](v30, -1, -1);
      }

      swift_willThrow();
      sub_1BF00F5F4(v41, v18);
      (*(v42 + 8))(v40, v45);
    }

    else
    {
      v20 = sub_1BF1791DC();
      sub_1BF00F5F4(v14, v18);
      (*(v42 + 8))(v8, v45);
    }
  }

  return v20;
}

uint64_t sub_1BF0ACDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1BF17923C();
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17A12C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A10C();
  v14 = sub_1BF17A0BC();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    v17 = a4;
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF1797FC();
    __swift_project_value_buffer(v18, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v19 = sub_1BF1797DC();
    v20 = sub_1BF17ACBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1BF01A7AC(a3, v17, v35);
      _os_log_impl(&dword_1BEFE0000, v19, v20, "Failed to get data for raw attachment with name %{public}s for radar", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB547B0](v22, -1, -1);
      MEMORY[0x1BFB547B0](v21, -1, -1);
    }

    sub_1BF0B21F4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v35[0] = a3;
    v35[1] = a4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](1954051118, 0xE400000000000000);
    sub_1BF17919C();

    v23 = v33;
    sub_1BF0B0E10();
    v24 = v8;
    if (v23)
    {
      v33 = v16;
      if (qword_1EBDCAFE0 != -1)
      {
        swift_once();
      }

      v25 = sub_1BF1797FC();
      __swift_project_value_buffer(v25, qword_1EBDCCE48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v26 = sub_1BF1797DC();
      v27 = sub_1BF17ACBC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = v24;
        v30 = swift_slowAlloc();
        v35[0] = v30;
        *v28 = 136446210;
        *(v28 + 4) = sub_1BF01A7AC(a3, a4, v35);
        _os_log_impl(&dword_1BEFE0000, v26, v27, "Failed to write data for raw attachment with name %{public}s for radar", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        v31 = v30;
        v24 = v29;
        MEMORY[0x1BFB547B0](v31, -1, -1);
        MEMORY[0x1BFB547B0](v28, -1, -1);
      }

      swift_willThrow();
      sub_1BF00F5F4(v14, v33);
      (*(v34 + 8))(v24, v36);
    }

    else
    {
      a3 = sub_1BF1791DC();
      sub_1BF00F5F4(v14, v16);
      (*(v34 + 8))(v8, v36);
    }
  }

  return a3;
}

NSObject *sub_1BF0AD2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v25 = a2;
  v10 = sub_1BF17923C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3;
  v26[0] = a3;
  v26[1] = a4;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](46, 0xE100000000000000);
  MEMORY[0x1BFB52000](a5, a6);
  sub_1BF17919C();

  v15 = v26[3];
  sub_1BF0B0E10();
  if (v15)
  {
    if (qword_1EBDCAFE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1BF1797FC();
    __swift_project_value_buffer(v16, qword_1EBDCCE48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v17 = sub_1BF1797DC();
    v18 = sub_1BF17ACBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1BF01A7AC(v23, a4, v26);
      _os_log_impl(&dword_1BEFE0000, v17, v18, "Failed to write data for raw attachment with name %{public}s for radar", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB547B0](v20, -1, -1);
      MEMORY[0x1BFB547B0](v19, -1, -1);
    }

    swift_willThrow();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v17 = sub_1BF1791DC();
    (*(v11 + 8))(v14, v10);
  }

  return v17;
}

uint64_t sub_1BF0AD54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4[23] = a3;
  v4[24] = v3;
  v4[22] = a2;
  v6 = sub_1BF17912C();
  v4[25] = v6;
  v7 = *(v6 - 8);
  v4[26] = v7;
  v8 = *(v7 + 64) + 15;
  v4[27] = swift_task_alloc();
  v9 = sub_1BF17923C();
  v4[28] = v9;
  v10 = *(v9 - 8);
  v4[29] = v10;
  v4[30] = *(v10 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[36] = v11;
  *v11 = v4;
  v11[1] = sub_1BF0AD70C;
  v12 = *MEMORY[0x1E69E9840];

  return sub_1BF0AEA50(a1);
}

uint64_t sub_1BF0AD70C()
{
  OUTLINED_FUNCTION_5();
  v12 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 288);
  *v3 = *v0;
  *(v2 + 296) = v6;

  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF0AD82C()
{
  v157 = v0;
  v3 = v0;
  v156[2] = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 192);
  sub_1BF0AFEFC(*(v0 + 176), *(v0 + 184), *(v0 + 280));
  v5 = *(v0 + 296);
  v155 = v0;
  v6 = 0;
  aBlock = (v0 + 16);
  v139 = (v0 + 160);
  v141 = *(v0 + 192);
  v142 = *(v5 + 16);
  v7 = *(v0 + 232) + 8;
  v8 = (v5 + 40);
  v140 = v5;
  while (v142 != v6)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v144 = v8;
    v147 = v6;
    v9 = v3[34];
    v10 = v3[35];
    v11 = v7;
    v12 = *(v0 + 264);
    v13 = *(v0 + 224);
    v14 = *v8;
    *(v0 + 96) = *(v8 - 1);
    *(v0 + 104) = v14;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    *(v0 + 112) = sub_1BF1791DC();
    *(v0 + 120) = v15;
    sub_1BF0B2248();
    sub_1BF17A9FC();

    MEMORY[0x1BFB51F50](*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

    sub_1BF17919C();

    v16 = objc_opt_self();
    v17 = [v16 defaultManager];
    sub_1BF1791AC();
    v18 = sub_1BF17916C();
    v19 = *v11;
    v20 = v12;
    v7 = v11;
    v3 = v0;
    v153 = v19;
    v19(v20, v13);
    *(v0 + 144) = 0;
    LODWORD(v13) = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v0 + 144];

    v21 = *(v0 + 144);
    if (!v13)
    {
      v64 = *(v0 + 296);
      v65 = *(v0 + 272);
      v150 = *(v0 + 280);
      v66 = *(v0 + 224);
      v67 = v21;

      v1 = sub_1BF17911C();

      swift_willThrow();
      v68 = v153;
      v153(v65, v66);
      v69 = v150;
      v70 = v66;
      goto LABEL_15;
    }

    v22 = *(v0 + 272);
    v23 = v21;
    v24 = [v16 defaultManager];
    v25 = sub_1BF17A07C();

    sub_1BF1791DC();
    v1 = sub_1BF17A07C();

    *(v0 + 152) = 0;
    v2 = [v24 copyItemAtPath:v25 toPath:v1 error:v0 + 152];

    v26 = *(v0 + 152);
    if (!v2)
    {
      v71 = *(v0 + 296);
      v73 = *(v0 + 272);
      v72 = *(v0 + 280);
      v74 = *(v0 + 224);
      v75 = v26;

      v1 = sub_1BF17911C();

      swift_willThrow();
      v68 = v153;
      v153(v73, v74);
      v69 = v72;
      v70 = v74;
LABEL_15:
      v68(v69, v70);
      v2 = 0;
LABEL_16:
      v44 = 0x1EBDCA000uLL;
LABEL_17:
      if (*(v44 + 4064) == -1)
      {
LABEL_18:
        v76 = v3[23];
        v77 = sub_1BF1797FC();
        __swift_project_value_buffer(v77, qword_1EBDCCE48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v78 = v1;
        v79 = sub_1BF1797DC();
        v80 = sub_1BF17ACBC();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = *(v155 + 184);
          v82 = *(v155 + 176);
          v83 = swift_slowAlloc();
          v84 = OUTLINED_FUNCTION_83();
          v85 = swift_slowAlloc();
          v156[0] = v85;
          *v83 = 136446466;
          *(v83 + 4) = sub_1BF01A7AC(v82, v81, v156);
          *(v83 + 12) = 2114;
          v86 = v1;
          v87 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 14) = v87;
          *v84 = v87;
          _os_log_impl(&dword_1BEFE0000, v79, v80, "Failed to zip %{public}s. Error %{public}@", v83, 0x16u);
          OUTLINED_FUNCTION_0_17();
          sub_1BF0B216C(v84, v88);
          v3 = v155;
          OUTLINED_FUNCTION_28();
          __swift_destroy_boxed_opaque_existential_1(v85);
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_28();
        }

        v89 = v3[34];
        v90 = v3[35];
        v92 = v3[32];
        v91 = v3[33];
        v93 = v3[31];
        v94 = *(v155 + 216);
        swift_willThrow();
        sub_1BEFE52DC(v2);

        OUTLINED_FUNCTION_9();
        v96 = *MEMORY[0x1E69E9840];

        return v95();
      }

LABEL_38:
      OUTLINED_FUNCTION_1_15();
      goto LABEL_18;
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 224);
    v29 = v26;
    v153(v27, v28);
    v8 = v144 + 2;
    v6 = v147 + 1;
    v5 = v140;
  }

  v30 = v3[37];
  v31 = v3[33];
  v145 = v3[32];
  v148 = v3[35];
  v154 = v3[30];
  v32 = v7;
  v33 = *(v0 + 232);
  v34 = *(v0 + 224);
  v35 = *(v0 + 216);
  v36 = *(v0 + 208);
  v37 = *(v155 + 200);
  v38 = *(v155 + 184);
  v39 = *(v155 + 176);

  *(v155 + 160) = 0;
  sub_1BF1791AC();
  v156[0] = v39;
  v156[1] = v38;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](1885960750, 0xE400000000000000);
  *(v155 + 128) = v39;
  *(v155 + 136) = v38;
  (*(v36 + 104))(v35, *MEMORY[0x1E6968F68], v37);
  sub_1BF013170();
  sub_1BF17922C();
  (*(v36 + 8))(v35, v37);

  v143 = *v32;
  (*v32)(v31, v34);
  v40 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v41 = sub_1BF17916C();
  v149 = *(v33 + 16);
  v149(v31, v145, v34);
  v42 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v43 = swift_allocObject();
  v45 = *(v33 + 32);
  v44 = v33 + 32;
  v45(v43 + v42, v31, v34);
  *(v43 + ((v154 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v139;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1BF0B229C;
  *(v46 + 24) = v43;
  *(v155 + 48) = sub_1BF0004B0;
  *(v155 + 56) = v46;
  *(v155 + 16) = MEMORY[0x1E69E9820];
  *(v155 + 24) = 1107296256;
  *(v155 + 32) = sub_1BF0B1904;
  *(v155 + 40) = &block_descriptor_1;
  v47 = _Block_copy(aBlock);
  v48 = *(v155 + 56);

  *(v155 + 168) = 0;
  [v40 coordinateReadingItemAtURL:v41 options:8 error:v155 + 168 byAccessor:v47];
  _Block_release(v47);

  v49 = v155;
  v50 = *(v155 + 168);
  v51 = v50;
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
    goto LABEL_40;
  }

  v44 = 0x1EBDCA000uLL;
  if (v51)
  {
    if (qword_1EBDCAFE0 == -1)
    {
LABEL_10:
      v52 = sub_1BF1797FC();
      __swift_project_value_buffer(v52, qword_1EBDCCE48);
      v1 = v51;
      v53 = sub_1BF1797DC();
      v54 = sub_1BF17ACBC();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_70();
        v56 = OUTLINED_FUNCTION_83();
        *v55 = 138543362;
        *(v55 + 4) = v1;
        *v56 = v50;
        v57 = v1;
        OUTLINED_FUNCTION_32_4(&dword_1BEFE0000, v58, v59, "Failed to coordinate file coordinator with error %{public}@");
        OUTLINED_FUNCTION_0_17();
        sub_1BF0B216C(v56, v60);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_21_6();
      }

      v2 = *(v155 + 280);
      v61 = *(v155 + 256);
      v62 = *(v155 + 224);

      swift_willThrow();
      v143(v61, v62);
      v143(v2, v62);
      v3 = v155;
      v63 = *(v155 + 160);

      OUTLINED_FUNCTION_10_12();
      goto LABEL_17;
    }

LABEL_40:
    OUTLINED_FUNCTION_1_15();
    goto LABEL_10;
  }

  v98 = *v139;
  if (*v139)
  {
    v99 = qword_1EBDCAFE0;
    v100 = v98;
    if (v99 != -1)
    {
      OUTLINED_FUNCTION_1_15();
    }

    v101 = sub_1BF1797FC();
    __swift_project_value_buffer(v101, qword_1EBDCCE48);
    v1 = v100;
    v102 = sub_1BF1797DC();
    v103 = sub_1BF17ACBC();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = OUTLINED_FUNCTION_70();
      v105 = OUTLINED_FUNCTION_83();
      *v104 = 138543362;
      *(v104 + 4) = v1;
      *v105 = v98;
      v106 = v1;
      OUTLINED_FUNCTION_32_4(&dword_1BEFE0000, v107, v108, "Failed to moved zipped file with error %{public}@");
      OUTLINED_FUNCTION_0_17();
      sub_1BF0B216C(v105, v109);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_21_6();
    }

    v2 = *(v155 + 280);
    v110 = *(v155 + 256);
    v111 = *(v155 + 224);

    swift_willThrow();
    v143(v110, v111);
    v143(v2, v111);
    v3 = v155;

    OUTLINED_FUNCTION_10_12();
    goto LABEL_16;
  }

  if (qword_1EBDCAFE0 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v113 = *(v155 + 248);
  v112 = *(v155 + 256);
  v114 = *(v155 + 224);
  v115 = sub_1BF1797FC();
  __swift_project_value_buffer(v115, qword_1EBDCCE48);
  v149(v113, v112, v114);
  v116 = sub_1BF1797DC();
  v117 = sub_1BF17AC9C();
  v118 = os_log_type_enabled(v116, v117);
  v119 = *(v155 + 248);
  v120 = *(v155 + 224);
  if (v118)
  {
    v121 = OUTLINED_FUNCTION_70();
    v151 = swift_slowAlloc();
    v156[0] = v151;
    *v121 = 136446210;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
    v122 = sub_1BF17B6FC();
    v124 = v123;
    v125 = v143;
    v143(v119, v120);
    v126 = sub_1BF01A7AC(v122, v124, v156);
    v49 = v155;

    *(v121 + 4) = v126;
    _os_log_impl(&dword_1BEFE0000, v116, v117, "Successfully zipped item to %{public}s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v151);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_21_6();
  }

  else
  {

    v125 = v143;
    v143(v119, v120);
  }

  v128 = v49[34];
  v127 = v49[35];
  v130 = v49[32];
  v129 = v49[33];
  v131 = v49[31];
  v132 = *(v155 + 224);
  v152 = *(v155 + 216);
  v133 = sub_1BF1791DC();
  v146 = v134;
  v125(v130, v132);
  v125(v127, v132);
  v135 = *(v155 + 160);

  OUTLINED_FUNCTION_20_5();
  v137 = *MEMORY[0x1E69E9840];

  return v136(v133, v146);
}

uint64_t sub_1BF0AE5FC(int *a1)
{
  v3 = sub_1BF17923C();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[4] = v6;
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v1[5] = v8;
  *v8 = v1;
  v8[1] = sub_1BF0AE758;

  return v10(v6);
}

uint64_t sub_1BF0AE758()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF0AE854()
{
  OUTLINED_FUNCTION_13_2();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1BF1791DC();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_20_5();

  return v7(v4, v6);
}

uint64_t sub_1BF0AE8F4()
{
  OUTLINED_FUNCTION_13_2();
  if (qword_1EBDCAFE0 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v1 = *(v0 + 48);
  v2 = sub_1BF1797FC();
  __swift_project_value_buffer(v2, qword_1EBDCCE48);
  v3 = v1;
  v4 = sub_1BF1797DC();
  v5 = sub_1BF17ACBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = OUTLINED_FUNCTION_70();
    v8 = OUTLINED_FUNCTION_83();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BEFE0000, v4, v5, "Custom attachment exporter failed; error=%@", v7, 0xCu);
    OUTLINED_FUNCTION_0_17();
    sub_1BF0B216C(v8, v11);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_28();
  }

  v12 = *(v0 + 48);
  v13 = *(v0 + 32);

  swift_willThrow();

  OUTLINED_FUNCTION_9();
  v15 = *(v0 + 48);

  return v14();
}

uint64_t sub_1BF0AEA50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF0AEA64()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[3];
  v1 = v0[4];
  OUTLINED_FUNCTION_15_5(v3, &qword_1ED8ECC00);
  v5 = v4;
  v6 = swift_allocObject();
  v0[5] = v6;
  swift_weakInit();
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  sub_1BF0B1D4C(0, &qword_1ED8EE9D0, MEMORY[0x1E69E62F8]);
  v9 = v8;
  v10 = *(MEMORY[0x1E69E87D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[7] = v11;
  *v11 = v12;
  v11[1] = sub_1BF0AEBA8;

  return MEMORY[0x1EEE6DBF8](v0 + 2, v5, v9, 0, 0, &unk_1BF180640, v7, v5);
}

uint64_t sub_1BF0AEBA8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF0AECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_1BF00974C();
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0AED80, 0, 0);
}

uint64_t sub_1BF0AED80()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = **(v0 + 80);
    v3 = (v1 + 32);
    v4 = sub_1BF17A77C();
    do
    {
      v6 = *(v0 + 104);
      v5 = *(v0 + 112);
      v7 = *(v0 + 96);
      v8 = *v3;
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
      v9 = swift_allocObject();
      v9[2] = 0;
      v10 = v9 + 2;
      v9[3] = 0;
      v9[4] = v7;
      v9[5] = v8;
      sub_1BF047B30(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v4);
      swift_retain_n();

      v11 = *(v0 + 104);
      if (v6 == 1)
      {
        OUTLINED_FUNCTION_13_8();
        sub_1BF0B216C(v11, v12);
      }

      else
      {
        sub_1BF17A76C();
        (*(*(v4 - 8) + 8))(v11, v4);
      }

      v13 = v4;
      if (*v10)
      {
        v14 = v9[3];
        v15 = *v10;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_1BF17A6AC();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1BF180658;
      *(v19 + 24) = v9;
      sub_1BF0B1D4C(0, &qword_1ED8ECC00, MEMORY[0x1E69E6720]);

      if (v18 | v16)
      {
        v20 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v20 = 0;
      }

      v4 = v13;
      v21 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v20;
      *(v0 + 64) = v26;
      swift_task_create();

      OUTLINED_FUNCTION_13_8();
      sub_1BF0B216C(v21, v22);
      --v2;
      ++v3;
    }

    while (v2);
  }

  v23 = **(v0 + 80);
  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_1BF0AF0A0;

  return sub_1BF0AF618(v23);
}

void sub_1BF0AF0A0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_14();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1BF0AF1B8()
{
  v1 = 0;
  v2 = v0[16];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v2 + 40 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v5 + 2;
    ++v1;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 16);
        OUTLINED_FUNCTION_24_0();
        sub_1BF0201A4();
        v4 = v12;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1BF0201A4();
        v4 = v13;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      goto LABEL_2;
    }
  }

  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[9];

  *v17 = v4;

  OUTLINED_FUNCTION_9();

  v18();
}

uint64_t sub_1BF0AF308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF0AF32C, 0, 0);
}

uint64_t sub_1BF0AF32C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[5] = v0[8];
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1BF0AF424;

    return sub_1BF0AC088(v0 + 5);
  }

  else
  {
    v5 = v0[6];
    *v5 = 0;
    v5[1] = 0;
    OUTLINED_FUNCTION_9();

    return v6();
  }
}

uint64_t sub_1BF0AF424()
{
  OUTLINED_FUNCTION_13_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v10 = *(v9 + 80);
  v11 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v12 = v11;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BF0AF540()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];

  *v4 = v2;
  v4[1] = v1;
  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_1BF0AF5AC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  *v3 = 0;
  v3[1] = 0;
  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t sub_1BF0AF618(uint64_t a1)
{
  v1[4] = a1;
  sub_1BF0B20F8();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0AF6D8, 0, 0);
}

uint64_t sub_1BF0AF6D8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[7];
  v2 = v0[4];
  OUTLINED_FUNCTION_15_5(v3, &qword_1ED8ECC00);
  sub_1BF17A6FC();
  v0[8] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_7();
  sub_1BF0B2368(v4, v5);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[9] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_8_7(v7);
  OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6D8C8]();
}

uint64_t sub_1BF0AF7A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[8];
    (*(v3[6] + 8))(v3[7], v3[5]);
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF0AF8C4()
{
  OUTLINED_FUNCTION_13_2();
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    v2 = *(v0 + 8);
    v3 = *(v0 + 64);

    return v2(v3);
  }

  else
  {
    v19 = *(v0 + 16);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v7 + 16);
      OUTLINED_FUNCTION_24_0();
      sub_1BF0A6688();
      v7 = v17;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    v10 = v19;
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_31_4(v8);
      sub_1BF0A6688();
      v10 = v19;
      v7 = v18;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 16 * v9 + 32) = v10;
    *(v0 + 64) = v7;
    OUTLINED_FUNCTION_12_7();
    sub_1BF0B2368(v11, v12);
    v13 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    *(v0 + 72) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_28_4();

    return MEMORY[0x1EEE6D8C8]();
  }
}

uint64_t sub_1BF0AFA40()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1BF0AFA9C()
{
  OUTLINED_FUNCTION_5();
  v0[3] = v1;
  sub_1BF0B2334(0);
  v0[4] = v2;
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_29_4();
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF0AFB50()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  v2 = v0[3];
  sub_1BF096DCC(0);
  sub_1BF17A6FC();
  v0[7] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_6();
  sub_1BF0B2368(v3, v4);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[8] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_7_8(v6);
  OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6D8C8]();
}

uint64_t sub_1BF0AFC1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[7];
    (*(v3[5] + 8))(v3[6], v3[4]);
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF0AFD38()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[7];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v4 + 16);
      OUTLINED_FUNCTION_24_0();
      sub_1BF0A69AC();
      v4 = v15;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      OUTLINED_FUNCTION_31_4(v5);
      sub_1BF0A69AC();
      v4 = v16;
    }

    *(v4 + 16) = v6 + 1;
    *(v4 + 8 * v6 + 32) = v1;
    v0[7] = v4;
    OUTLINED_FUNCTION_11_6();
    sub_1BF0B2368(v7, v8);
    v9 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v0[8] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_28_4();

    return MEMORY[0x1EEE6D8C8]();
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v12 = v0[1];
    v13 = v0[7];

    return v12(v13);
  }
}

uint64_t sub_1BF0AFEA0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 72);

  return v2();
}

void sub_1BF0AFEFC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a3;
  v144[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF1790EC();
  v136 = *(v5 - 1);
  v137 = v5;
  v6 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17912C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF17923C();
  v140 = *(v14 - 8);
  v141 = v14;
  v15 = *(v140 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v132 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v134 = &v129 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v133 = &v129 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v129 - v25;
  v144[0] = a1;
  v144[1] = a2;
  (*(v10 + 104))(v13, *MEMORY[0x1E6968F58], v9);
  sub_1BF013170();
  sub_1BF17922C();
  (*(v10 + 8))(v13, v9);
  sub_1BF049228(0, &qword_1EBDCA898, type metadata accessor for URLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  v28 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v29 = v28;
  sub_1BF0C95B4(inited);
  v139 = v26;
  v30 = v138;
  sub_1BF17914C();
  v31 = 0x1EBDCA000uLL;
  v32 = &selRef_arguments;
  v33 = &unk_1BF17E000;
  if (!v30)
  {
    v138 = 0;

    v48 = sub_1BF1790AC();
    (*(v136 + 8))(v8, v137);
    v50 = v140;
    v49 = v141;
    v36 = v139;
    if (v48 != 2)
    {
      if (qword_1EBDCAFE0 != -1)
      {
        swift_once();
      }

      v86 = sub_1BF1797FC();
      v87 = __swift_project_value_buffer(v86, qword_1EBDCCE48);
      v88 = v24;
      v136 = *(v50 + 16);
      v137 = (v50 + 16);
      (v136)(v24, v36, v49);
      v89 = sub_1BF1797DC();
      v90 = sub_1BF17AC9C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v131 = v87;
        v92 = v88;
        v93 = v91;
        v94 = swift_slowAlloc();
        v144[0] = v94;
        *v93 = 136446210;
        sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
        v95 = sub_1BF17B6FC();
        v97 = v96;
        v98 = *(v50 + 8);
        v98(v92, v49);
        v99 = sub_1BF01A7AC(v95, v97, v144);
        v31 = 0x1EBDCA000;

        *(v93 + 4) = v99;
        _os_log_impl(&dword_1BEFE0000, v89, v90, "Clearing existing radar attachment zipped directory at %{public}s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        v100 = v94;
        v32 = &selRef_arguments;
        MEMORY[0x1BFB547B0](v100, -1, -1);
        MEMORY[0x1BFB547B0](v93, -1, -1);
      }

      else
      {

        v98 = *(v50 + 8);
        v98(v88, v49);
      }

      v101 = objc_opt_self();
      v102 = [v101 v32[74]];
      v36 = v139;
      v103 = sub_1BF17916C();
      v144[0] = 0;
      v104 = [v102 removeItemAtURL:v103 error:v144];

      v105 = v144[0];
      if (!v104)
      {
        goto LABEL_46;
      }

      v130 = v101;
      v131 = v98;
      v106 = v133;
      v107 = v141;
      (v136)();
      v108 = v105;
      v109 = sub_1BF1797DC();
      v110 = sub_1BF17AC9C();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v144[0] = v137;
        *v111 = 136446210;
        sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
        v112 = sub_1BF17B6FC();
        v113 = v32;
        v115 = v114;
        v131(v106, v107);
        v116 = sub_1BF01A7AC(v112, v115, v144);
        v32 = v113;

        *(v111 + 4) = v116;
        _os_log_impl(&dword_1BEFE0000, v109, v110, "Creating directory at %{public}s", v111, 0xCu);
        v117 = v137;
        __swift_destroy_boxed_opaque_existential_1(v137);
        v36 = v139;
        MEMORY[0x1BFB547B0](v117, -1, -1);
        MEMORY[0x1BFB547B0](v111, -1, -1);
      }

      else
      {

        v131(v106, v107);
      }

      v124 = [v130 v32[74]];
      v125 = sub_1BF17916C();
      v144[0] = 0;
      v126 = [v124 createDirectoryAtURL:v125 withIntermediateDirectories:1 attributes:0 error:v144];

      v105 = v144[0];
      if (!v126)
      {
LABEL_46:
        v34 = v31;
        v128 = v105;
        v35 = sub_1BF17911C();

        swift_willThrow();
        v37 = v140;
        goto LABEL_3;
      }

      v127 = v144[0];
      v50 = v140;
      v49 = v141;
      v33 = &unk_1BF17E000;
    }

    v51 = v33;
    v52 = *(v31 + 4064);
    v53 = v134;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = sub_1BF1797FC();
    __swift_project_value_buffer(v54, qword_1EBDCCE48);
    (*(v50 + 16))(v53, v36, v49);
    v55 = sub_1BF1797DC();
    v56 = sub_1BF17AC9C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v144[0] = v58;
      *v57 = v51[383];
      sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
      v59 = sub_1BF17B6FC();
      v61 = v60;
      (*(v50 + 8))(v53, v49);
      v62 = sub_1BF01A7AC(v59, v61, v144);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1BEFE0000, v55, v56, "Prepared zipped directory at %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v63 = v58;
      v36 = v139;
      MEMORY[0x1BFB547B0](v63, -1, -1);
      MEMORY[0x1BFB547B0](v57, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v53, v49);
    }

    (*(v50 + 32))(v135, v36, v49);
    goto LABEL_41;
  }

  v34 = 0x1EBDCA000uLL;

  v35 = v30;
  v36 = v139;
  v37 = v140;
LABEL_3:
  v144[0] = v35;
  v38 = v35;
  sub_1BEFF79E8();
  sub_1BEFF9AF8(0, &qword_1EBDCBB38, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
LABEL_22:

    if (*(v34 + 4064) != -1)
    {
      swift_once();
    }

    v78 = sub_1BF1797FC();
    __swift_project_value_buffer(v78, qword_1EBDCCE48);
    v79 = v35;
    v80 = sub_1BF1797DC();
    v81 = sub_1BF17AC9C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138543362;
      v84 = v35;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 4) = v85;
      *v83 = v85;
      _os_log_impl(&dword_1BEFE0000, v80, v81, "Failed to prepare zipped directory for radar attachments with error %{public}@", v82, 0xCu);
      sub_1BF0B216C(v83, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v83, -1, -1);
      MEMORY[0x1BFB547B0](v82, -1, -1);
    }

    swift_willThrow();
    (*(v37 + 8))(v36, v141);
    goto LABEL_41;
  }

  v39 = v142;
  v40 = [v142 domain];
  v41 = sub_1BF17A0AC();
  v43 = v42;

  v44 = *MEMORY[0x1E696A250];
  if (v41 == sub_1BF17A0AC() && v43 == v45)
  {
  }

  else
  {
    v47 = sub_1BF17B86C();

    if ((v47 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([v39 code] != 260)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (*(v34 + 4064) != -1)
  {
    swift_once();
  }

  v64 = sub_1BF1797FC();
  __swift_project_value_buffer(v64, qword_1EBDCCE48);
  v65 = v132;
  v66 = v141;
  (*(v37 + 16))(v132, v36, v141);
  v67 = sub_1BF1797DC();
  v68 = sub_1BF17AC9C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = v65;
    v70 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v143 = v138;
    *v70 = 136446210;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
    v71 = sub_1BF17B6FC();
    v72 = v66;
    v74 = v73;
    v75 = *(v37 + 8);
    v75(v69, v72);
    v76 = sub_1BF01A7AC(v71, v74, &v143);

    *(v70 + 4) = v76;
    _os_log_impl(&dword_1BEFE0000, v67, v68, "See no directory, creating one at %{public}s", v70, 0xCu);
    v77 = v138;
    __swift_destroy_boxed_opaque_existential_1(v138);
    v36 = v139;
    MEMORY[0x1BFB547B0](v77, -1, -1);
    MEMORY[0x1BFB547B0](v70, -1, -1);
  }

  else
  {

    v75 = *(v37 + 8);
    v75(v65, v66);
  }

  v118 = [objc_opt_self() defaultManager];
  v119 = sub_1BF17916C();
  v143 = 0;
  v120 = [v118 createDirectoryAtURL:v119 withIntermediateDirectories:1 attributes:0 error:&v143];

  if (v120)
  {
    v121 = v143;

    (*(v140 + 32))(v135, v36, v141);
  }

  else
  {
    v123 = v143;
    sub_1BF17911C();

    swift_willThrow();
    v75(v36, v141);
  }

LABEL_41:
  v122 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BF0B0E10()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BF17923C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1791AC();
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_1BF17916C();
  v13[0] = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:v13];

  if (v7)
  {
    v8 = v13[0];
    sub_1BF17938C();
  }

  else
  {
    v9 = v13[0];
    sub_1BF17911C();

    swift_willThrow();
  }

  result = (*(v1 + 8))(v4, v0);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0B0FDC()
{
  v0 = sub_1BF178CEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = sub_1BF178D3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  sub_1BF049228(0, &qword_1EBDCBB00, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1BF1805A0;
  sub_1BF178CCC();
  sub_1BF178CBC();
  sub_1BF178CDC();
  sub_1BF0B2368(&qword_1EBDCBB08, MEMORY[0x1E6967F78]);
  sub_1BF0B21C0(0);
  sub_1BF0B2368(&qword_1EBDCBB18, sub_1BF0B21C0);
  sub_1BF17B0BC();
  sub_1BF178CFC();
  v8 = sub_1BF178D0C();

  return v8;
}

void sub_1BF0B1230(uint64_t a1, uint64_t a2, void **a3)
{
  v67 = a3;
  v74[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF17923C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - v13;
  if (qword_1EBDCAFE0 != -1)
  {
    swift_once();
  }

  v15 = sub_1BF1797FC();
  v16 = __swift_project_value_buffer(v15, qword_1EBDCCE48);
  v68 = v6[2];
  v68(v14, a2, v5);
  v69 = v16;
  v17 = sub_1BF1797DC();
  v18 = sub_1BF17AC9C();
  v19 = os_log_type_enabled(v17, v18);
  v73 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v72 = v5;
    v21 = v20;
    v65 = swift_slowAlloc();
    v66 = a1;
    v74[0] = v65;
    *v21 = 136446210;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
    v22 = sub_1BF17B6FC();
    v23 = v10;
    v24 = a2;
    v26 = v25;
    v70 = v6[1];
    v70(v14, v72);
    v27 = sub_1BF01A7AC(v22, v26, v74);
    a2 = v24;
    v10 = v23;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1BEFE0000, v17, v18, "Removing item from %{public}s", v21, 0xCu);
    v28 = v65;
    __swift_destroy_boxed_opaque_existential_1(v65);
    a1 = v66;
    MEMORY[0x1BFB547B0](v28, -1, -1);
    v29 = v21;
    v5 = v72;
    MEMORY[0x1BFB547B0](v29, -1, -1);
  }

  else
  {

    v70 = v6[1];
    v70(v14, v5);
  }

  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  v32 = sub_1BF17916C();
  v74[0] = 0;
  v33 = [v31 removeItemAtURL:v32 error:v74];

  v34 = v71;
  if (v33)
  {
    v35 = v74[0];
  }

  else
  {
    v36 = v74[0];
    v37 = sub_1BF17911C();

    swift_willThrow();
  }

  v38 = v68;
  v68(v34, a1, v5);
  v38(v10, a2, v5);
  v39 = sub_1BF1797DC();
  v40 = sub_1BF17AC9C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74[0] = v69;
    *v41 = 136446466;
    sub_1BF0B2368(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
    v72 = a2;
    LODWORD(v68) = v40;
    v42 = sub_1BF17B6FC();
    v44 = v43;
    v73 = v30;
    v45 = v70;
    v70(v34, v5);
    v46 = sub_1BF01A7AC(v42, v44, v74);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2082;
    v47 = sub_1BF17B6FC();
    v49 = v48;
    v45(v10, v5);
    v30 = v73;
    v50 = sub_1BF01A7AC(v47, v49, v74);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_1BEFE0000, v39, v68, "Moving item from %{public}s to %{public}s", v41, 0x16u);
    v51 = v69;
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v51, -1, -1);
    MEMORY[0x1BFB547B0](v41, -1, -1);
  }

  else
  {

    v52 = v70;
    v70(v10, v5);
    v52(v34, v5);
  }

  v53 = [v30 defaultManager];
  v54 = sub_1BF17916C();
  v55 = sub_1BF17916C();
  v74[0] = 0;
  v56 = [v53 moveItemAtURL:v54 toURL:v55 error:v74];

  v57 = v74[0];
  if (v56)
  {
    v58 = *MEMORY[0x1E69E9840];

    v59 = v57;
  }

  else
  {
    v73 = v74[0];
    v60 = v74[0];
    v61 = sub_1BF17911C();

    swift_willThrow();
    v62 = sub_1BF17910C();

    v63 = *v67;
    *v67 = v62;

    v64 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1BF0B1904(uint64_t a1)
{
  v2 = sub_1BF17923C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BF1791BC();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BF0B19E8()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory;
  v2 = sub_1BF17923C();
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1BF0B1A80(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF0B1B18;

  return sub_1BF0AC088(a1);
}

uint64_t sub_1BF0B1B18()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_10();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_20_5();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_13_0();
  }

  return v7(v6);
}

uint64_t sub_1BF0B1C08(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF0ABF14;

  return sub_1BF0AEA50(a1);
}

uint64_t sub_1BF0B1CA0()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF035DD0;

  return sub_1BF0AECE0(v5, v3, v7, v6);
}

void sub_1BF0B1D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF0B1DA0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1BF0B1E94;

  return v6(v2 + 16);
}

uint64_t sub_1BF0B1E94()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  *v6 = *(v2 + 16);
  OUTLINED_FUNCTION_9();

  return v9();
}

uint64_t sub_1BF0B1F90()
{
  OUTLINED_FUNCTION_13_2();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF035DD4;

  return sub_1BF0AF308(v3, v4, v5, v7, v6);
}

uint64_t sub_1BF0B2048()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1BF035DD4;

  return sub_1BF0B1DA0(v3, v5);
}

void sub_1BF0B20F8()
{
  if (!qword_1EBDCBAF0)
  {
    sub_1BF0B1D4C(255, &qword_1ED8ECC00, MEMORY[0x1E69E6720]);
    v0 = sub_1BF17A71C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCBAF0);
    }
  }
}

uint64_t sub_1BF0B216C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1BF0B21F4()
{
  result = qword_1EBDCBB20;
  if (!qword_1EBDCBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBB20);
  }

  return result;
}

unint64_t sub_1BF0B2248()
{
  result = qword_1EBDCBB28;
  if (!qword_1EBDCBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBB28);
  }

  return result;
}

void sub_1BF0B229C(uint64_t a1)
{
  v3 = *(sub_1BF17923C() - 8);
  OUTLINED_FUNCTION_29_4();
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BF0B1230(a1, v1 + v8, v9);
}

uint64_t sub_1BF0B2368(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DiagnosticAttachmentResolver.Errors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BF0B2460()
{
  result = qword_1EBDCBB50[0];
  if (!qword_1EBDCBB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBB50);
  }

  return result;
}

uint64_t Bidict.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BF179CEC();
  result = sub_1BF179CEC();
  a1[1] = result;
  return result;
}

uint64_t Bidict.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return OUTLINED_FUNCTION_4_11();
}

{
  v3 = *(v2 + 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[5];
  return OUTLINED_FUNCTION_4_11();
}

uint64_t sub_1BF0B2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 8);
  v20 = *(a3 + a4 - 24);
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  v14 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - v15;
  (*(v17 + 16))(&v20 - v15, a3, v6);
  (*(v9 + 16))(v13, a1, v8);
  v21 = v6;
  v22 = v20;
  v23 = v7;
  v18 = type metadata accessor for Bidict();
  return Bidict.subscript.setter(v13, v16, v18);
}

uint64_t Bidict.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = a3[2];
  OUTLINED_FUNCTION_2_3();
  v83 = v9;
  v84 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_2();
  v77 = v12;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v69 = v14;
  v70 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v68 - v17;
  v18 = a3[3];
  OUTLINED_FUNCTION_2_3();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_16();
  v79 = v24;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10_1();
  v80 = v26;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v68 - v28;
  v29 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1_16();
  v76 = v35;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10_1();
  v74 = v37;
  OUTLINED_FUNCTION_3();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v68 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v68 - v42;
  v44 = a3[4];
  v75 = v7;
  v45 = a2;
  v73 = sub_1BF179E9C();
  v86 = v4;
  sub_1BF179D7C();
  v46 = v31;
  v49 = *(v31 + 16);
  v47 = (v31 + 16);
  v48 = v49;
  v78 = v43;
  OUTLINED_FUNCTION_13_9();
  v49();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v18);
  v71 = v20;
  v72 = a3;
  v82 = v46;
  v85 = v45;
  if (EnumTagSinglePayload == 1)
  {
    (*(v46 + 8))(v41, v29);
    v51 = v75;
  }

  else
  {
    v52 = v68;
    (*(v20 + 32))(v68, v41, v18);
    v53 = a3[5];
    v54 = v75;
    sub_1BF179E9C();
    v55 = v81;
    sub_1BF179D7C();
    (*(v69 + 8))(v55, v70);
    (*(v20 + 8))(v52, v18);
    v51 = v54;
  }

  v56 = v18;
  v57 = v83;
  v75 = *(v83 + 16);
  v75(v77, v85, v51);
  (v48)(v74, v84, v29);
  sub_1BF179EBC();
  v58 = v76;
  OUTLINED_FUNCTION_13_9();
  v48();
  if (__swift_getEnumTagSinglePayload(v58, 1, v56) == 1)
  {
    (*(v57 + 8))(v85, v51);
    v59 = OUTLINED_FUNCTION_2_14();
    v47(v59);
    (v47)(v78, v29);
    v60 = v58;
  }

  else
  {
    v61 = v56;
    v62 = v71;
    v63 = v80;
    (*(v71 + 32))(v80, v58, v61);
    (*(v62 + 16))(v79, v63, v61);
    v47 = v81;
    v64 = v85;
    v75(v81, v85, v51);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v51);
    v65 = v72[5];
    OUTLINED_FUNCTION_8_8();
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v57 + 8))(v64, v51);
    v66 = OUTLINED_FUNCTION_2_14();
    v47(v66);
    (*(v62 + 8))(v80, v61);
    v60 = v78;
  }

  return (v47)(v60, v29);
}

{
  v79 = a1;
  v6 = a3[3];
  OUTLINED_FUNCTION_2_3();
  v72 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_2();
  v74 = v11;
  v68 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v65 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v64 - v16;
  v17 = a3[2];
  OUTLINED_FUNCTION_2_3();
  v78 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_16();
  v66 = v22;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_1();
  v75 = v24;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  OUTLINED_FUNCTION_8_8();
  v28 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1_16();
  v71 = v34;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_10_1();
  v70 = v36;
  OUTLINED_FUNCTION_3();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v64 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v64 - v41;
  v43 = a3[5];
  v44 = sub_1BF179E9C();
  v80 = v3;
  v81 = a2;
  v69 = v44;
  sub_1BF179D7C();
  v45 = v30;
  v46 = *(v30 + 16);
  v73 = v42;
  (v46)(v40, v42, v28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v17);
  v67 = a3;
  v77 = v45;
  if (EnumTagSinglePayload == 1)
  {
    (*(v45 + 8))(v40, v28);
  }

  else
  {
    v48 = v78;
    (*(v78 + 32))(v27, v40, v17);
    v49 = a3[4];
    OUTLINED_FUNCTION_8_8();
    sub_1BF179E9C();
    v50 = v76;
    sub_1BF179D7C();
    (*(v65 + 8))(v50, v68);
    (*(v48 + 8))(v27, v17);
  }

  v51 = v72;
  v52 = (v72 + 16);
  v65 = *(v72 + 16);
  (v65)(v74, v81, v6);
  v68 = v6;
  OUTLINED_FUNCTION_13_9();
  v46();
  sub_1BF179EBC();
  v53 = v71;
  OUTLINED_FUNCTION_13_9();
  v46();
  if (__swift_getEnumTagSinglePayload(v53, 1, v17) == 1)
  {
    (*(v51 + 8))(v81, v68);
    v54 = OUTLINED_FUNCTION_2_14();
    v52(v54);
    (v52)(v73, v28);
    v55 = v53;
  }

  else
  {
    v56 = v78;
    v57 = v75;
    (*(v78 + 32))(v75, v53, v17);
    (*(v56 + 16))(v66, v57, v17);
    v58 = v76;
    v59 = v81;
    v60 = v68;
    (v65)(v76, v81, v68);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
    v61 = v67[4];
    OUTLINED_FUNCTION_8_8();
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v51 + 8))(v59, v60);
    v62 = OUTLINED_FUNCTION_2_14();
    v52(v62);
    (*(v56 + 8))(v75, v17);
    v55 = v73;
  }

  return (v52)(v55, v28);
}

void Bidict.subscript.modify()
{
  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_12_8();
  v4 = __swift_coroFrameAllocStub(v3);
  *v0 = v4;
  *v4 = v2;
  v4[1] = v1;
  v5 = *(v2 + 24);
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_9_11(v6);
  v4[3] = v7;
  v9 = *(v8 + 64);
  v4[4] = __swift_coroFrameAllocStub(v9);
  v4[5] = __swift_coroFrameAllocStub(v9);
  v4[6] = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  v4[7] = v10;
  v12 = *(v11 + 64);
  v4[8] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_14_8(v13);
  v15(v14);
  v16 = OUTLINED_FUNCTION_6_11();
  Bidict.subscript.getter(v16, v17);
  OUTLINED_FUNCTION_33();
}

{
  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_12_8();
  v4 = __swift_coroFrameAllocStub(v3);
  *v0 = v4;
  *v4 = v2;
  v4[1] = v1;
  v5 = *(v2 + 16);
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_9_11(v6);
  v4[3] = v7;
  v9 = *(v8 + 64);
  v4[4] = __swift_coroFrameAllocStub(v9);
  v4[5] = __swift_coroFrameAllocStub(v9);
  v4[6] = *(v2 + 24);
  OUTLINED_FUNCTION_2_3();
  v4[7] = v10;
  v12 = *(v11 + 64);
  v4[8] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_14_8(v13);
  v15(v14);
  v16 = OUTLINED_FUNCTION_6_11();
  Bidict.subscript.getter(v16, v17);
  OUTLINED_FUNCTION_33();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1BF0B2DF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *(a2 + a3 - 32);
  v9 = *(a2 + a3 - 16);
  v10 = *a1;
  v6 = type metadata accessor for Bidict();
  return a4(a2, v6);
}

uint64_t sub_1BF0B2E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 32);
  v8 = *(a3 + a4 - 8);
  v9 = sub_1BF17AE6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - v13;
  v21 = *(v6 - 24);
  v15 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3);
  (*(v10 + 16))(v14, a1, v9);
  v22 = v7;
  v23 = v21;
  v24 = v8;
  v19 = type metadata accessor for Bidict();
  return Bidict.subscript.setter(v14, v17, v19);
}

void sub_1BF0B36D8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  v3 = *v2;
  v4 = (*v2)[8];
  v5 = (*v2)[9];
  if (v6)
  {
    v7 = v3[7];
    v9 = v3[4];
    v8 = v3[5];
    v10 = v3[2];
    v11 = v3[3];
    v12 = *v3;
    v16 = v3[1];
    v17 = v3[6];
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v4, v5, v17);
    v1(v9, v4, v12);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v3[4];
    v8 = v3[5];
    v13 = v3[1];
    v0(v8, v5, *v3);
  }

  free(v5);
  free(v4);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_33();

  free(v14);
}

uint64_t Bidict.keys.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return OUTLINED_FUNCTION_5_8();
}

uint64_t Bidict.values.getter(void *a1)
{
  v2 = *(v1 + 8);
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  return OUTLINED_FUNCTION_5_8();
}

void Bidict.isEmpty.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  JUMPOUT(0x1BFB51C20);
}

uint64_t Bidict.count.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_1BF179DFC();
}

Swift::Void __swiftcall Bidict.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v2 = v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1BF179E9C();
  sub_1BF179E8C();
  v6 = v2[5];
  sub_1BF179E9C();
  sub_1BF179E8C();
}

uint64_t Bidict.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *v6;
  v8 = v6[1];
  v10 = Bidict.startIndex.getter(a6);
  v12 = v11;
  v14 = v13 & 1;
  v15 = Bidict.endIndex.getter(a6);
  v17 = v16;
  v19 = v18 & 1;
  v23 = a6[3];
  v24 = a6[2];
  v22 = a6[4];
  sub_1BF179DEC();
  swift_getWitnessTable();
  result = sub_1BF179FBC();
  if (result)
  {
    sub_1BF17AC8C();
    v21 = sub_1BF17AC7C();
    sub_1BF070BD4(v10, v12, v14);
    result = sub_1BF070BD4(v15, v17, v19);
    if (v21)
    {
      return sub_1BF179ECC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Bidict.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *v4;
  v6 = a4[2];
  v7 = a4[3];
  v8 = a4[4];
  return sub_1BF179E0C();
}

uint64_t sub_1BF0B3B00@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_1BF0B3B34(uint64_t **a1, uint64_t a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v6;
  v8 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v6[5] = v10;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v6[6] = v11;
  v12 = sub_1BF0B3D24(v6, *a2, *(a2 + 8), *(a2 + 16), a3);
  v14 = v13;
  v6[7] = v12;
  (*(*(v8 - 8) + 16))(v11);
  (*(*(v7 - 8) + 16))(&v11[*(TupleTypeMetadata2 + 48)], v14, v7);
  return sub_1BF0B3CAC;
}

void sub_1BF0B3CAC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1BF0B3D24(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, void *a5))(void *a1)
{
  v10 = a5[2];
  v11 = a5[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  a1[1] = v13;
  v14 = __swift_coroFrameAllocStub(*(v13 + 64));
  a1[2] = v14;
  Bidict.subscript.getter(v14, v14 + *(TupleTypeMetadata2 + 48), a2, a3, a4 & 1, a5);
  return sub_1BF04619C;
}

uint64_t sub_1BF0B3E44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = Bidict.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_1BF0B3E84(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = Bidict.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_1BF070BD4(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_1BF0B3F00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  *a2 = *v2;
  *(a2 + 8) = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = Bidict.startIndex.getter(a1);
  v8 = v7;
  v10 = v9;

  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10 & 1;
  return result;
}

uint64_t sub_1BF0B3F7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1BF0B3FD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1BF0B40BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for ReferenceCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF0B41F0()
{
  v0 = sub_1BF17B57C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0B4268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF0B41F0();
  *a2 = result;
  return result;
}

uint64_t sub_1BF0B4298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF056410(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BF0B42C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF0B41F0();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0B42F8(uint64_t a1)
{
  v2 = sub_1BF0556D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0B4334(uint64_t a1)
{
  v2 = sub_1BF0556D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BF0B4374()
{
  result = qword_1EBDCBBD8;
  if (!qword_1EBDCBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBD8);
  }

  return result;
}

uint64_t toKey(cls:name:)()
{
  OUTLINED_FUNCTION_0_18();
  swift_getMetatypeMetadata();
  v1 = objc_allocWithZone(TFKey);
  v9 = OUTLINED_FUNCTION_1_17(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  v12 = sub_1BEFE82CC(v9, v10, v11);
  [v12 address];

  OUTLINED_FUNCTION_2_15();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t toKey(protocol:name:)()
{
  OUTLINED_FUNCTION_0_18();
  sub_1BEFE8DAC();
  v1 = objc_allocWithZone(TFKey);
  v2 = v0;
  v10 = OUTLINED_FUNCTION_1_17(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  v13 = sub_1BEFE82CC(v10, v11, v12);
  [v13 address];

  OUTLINED_FUNCTION_2_15();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t Key.namespace.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t Key.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v2);
  if (v3)
  {
    sub_1BF179F3C();
  }

  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B458C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0B45E0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t Safe.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1BF17AE6C();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t Safe.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1BF17AE6C();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 40);

  return v8(v2, a1, v6);
}

void sub_1BF0B472C(uint64_t a1, void *a2)
{
  if (qword_1ED8ED798 != -1)
  {
    swift_once();
  }

  v3 = sub_1BF1797FC();
  __swift_project_value_buffer(v3, qword_1ED8F5268);
  v4 = a2;
  oslog = sub_1BF1797DC();
  v5 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    v9 = sub_1BF17BD4C();
    v11 = sub_1BF01A7AC(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2114;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_1BEFE0000, oslog, v5, "Unable to decode object=%{public}s, error=%{public}@", v6, 0x16u);
    sub_1BF085B60(v7);
    MEMORY[0x1BFB547B0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v6, -1, -1);
  }
}

void KeyedDecodingContainer.decode<A>(_:forKey:onFailureDefaultTo:)()
{
  OUTLINED_FUNCTION_0_19();
  sub_1BF17B5FC();
  OUTLINED_FUNCTION_85_0();
}

uint64_t KeyedDecodingContainer.decodeSafeIfPresent<A>(_:forKey:orKey:)()
{
  OUTLINED_FUNCTION_0_19();
  sub_1BF17B5FC();
  OUTLINED_FUNCTION_6_12();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Safe();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_2_16();
  v8[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v6 = sub_1BF17B5FC();
  if (!v4)
  {
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_1_18(v8);
    swift_getWitnessTable();
    a4 = sub_1BF17A38C();
  }

  return a4;
}

void KeyedDecodingContainer.decode<A>(_:forKey:orKey:)()
{
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_19();
  sub_1BF17B5FC();
  if (v0)
  {
    OUTLINED_FUNCTION_8_9();
    sub_1BF17B5FC();
  }
}

uint64_t KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:orKey:)(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v28 = v5;
  v29 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v27 - v8;
  OUTLINED_FUNCTION_2_3();
  v27[1] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_13();
  sub_1BF17B5FC();
  if (a2)
  {
    OUTLINED_FUNCTION_10_13();
    sub_1BF17B5BC();

    OUTLINED_FUNCTION_6_12();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    (*(v28 + 8))(v9, v29);
    OUTLINED_FUNCTION_6_12();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_6_12();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

uint64_t KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:orKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_19();
  v13 = KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(v9, v10, v11, v12);
  if (!v5)
  {
    return v13;
  }

  v14 = KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(v13, a3, a4, a5);

  return v14;
}

void KeyedDecodingContainer.decodeSafeArrayIfPresent<A>(_:forKey:orKey:)()
{
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_19();
  KeyedDecodingContainer.decodeSafeArray<A>(_:forKey:)(v0, v1, v2, v3);
  OUTLINED_FUNCTION_85_0();
}

uint64_t SingleValueDecodingContainer.decodeSafe<A>(_:)()
{
  sub_1BF17B8DC();
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_85_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t OptionSet<>.elements()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  sub_1BF17A44C();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_1BF17BCAC();

  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1BF0B519C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  v7 = *(a4 + 8);
  v8 = *(v7[3] + 16);
  v44 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v20 = v19;
  v21 = *(v19 + 16);
  v43 = a1;
  v40 = v21;
  v41 = v19 + 16;
  v21(&v38 - v17, a1, v11);
  if (sub_1BF17AFEC())
  {
    if (sub_1BF17AFDC() < 64)
    {
      v22 = sub_1BF17AFCC();
      v23 = *(v20 + 8);
      v23(v18, v11);
      goto LABEL_12;
    }

    v47 = 0;
    sub_1BF0475B0();
    v29 = v46;
    sub_1BF17AF9C();
    v30 = *(v7[2] + 8);
    v31 = sub_1BF17A05C();
    v23 = *(v20 + 8);
    v23(v29, v11);
    v23(v18, v11);
    if ((v31 & 1) == 0)
    {
      goto LABEL_17;
    }

    return __swift_storeEnumTagSinglePayload(v45, 1, 1, a2);
  }

  v39 = a2;
  v24 = sub_1BF17AFEC();
  v25 = sub_1BF17AFDC();
  if (v24)
  {
    if (v25 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1BF17BA5C();
      v26 = v46;
      sub_1BF17B83C();
      v27 = *(v7[4] + 8);
      v28 = sub_1BF179F9C();
      v23 = *(v20 + 8);
      v23(v26, v11);
      a2 = v39;
      if ((v28 & 1) == 0)
      {
        v23(v18, v11);
        v29 = v46;
        goto LABEL_17;
      }

      v22 = sub_1BF17AFCC();
      v23(v18, v11);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v25 >= 64)
  {
LABEL_14:
    v47 = 0;
    sub_1BF0475B0();
    v29 = v46;
    sub_1BF17AF9C();
    v32 = *(v7[2] + 8);
    v33 = sub_1BF17A05C();
    v23 = *(v20 + 8);
    v23(v29, v11);
    v23(v18, v11);
    a2 = v39;
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }

    return __swift_storeEnumTagSinglePayload(v45, 1, 1, a2);
  }

  v22 = sub_1BF17AFCC();
  v23 = *(v20 + 8);
  v23(v18, v11);
  a2 = v39;
LABEL_12:
  v29 = v46;
  if (!v22)
  {
    return __swift_storeEnumTagSinglePayload(v45, 1, 1, a2);
  }

LABEL_17:
  v35 = sub_1BF17AFAC();
  v36 = 1 << v35;
  if (v35 >= 0x40)
  {
    v36 = 0;
  }

  if (v35 > 0x40)
  {
    v36 = 0;
  }

  v47 = v36;
  sub_1BF0475B0();
  v37 = v42;
  sub_1BF17B00C();
  sub_1BF17AFBC();
  v40(v29, v37, v11);
  sub_1BF17A45C();
  return (v23)(v37, v11);
}

uint64_t sub_1BF0B5704@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  v29[1] = a1;
  v2 = OUTLINED_FUNCTION_0_20();
  sub_1BF05E6C0(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_68(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = sub_1BF17B42C();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for ReferenceEncodingPool();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = MEMORY[0x1E69E7CC8];
  *(v21 + 24) = v22;
  OUTLINED_FUNCTION_1_19();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v19, v10, v11);
    v31[3] = v20;
    v31[0] = v21;

    v24 = sub_1BF178D1C();
    sub_1BF0AAB8C(v31, v19);
    v24(v30, 0);
    v25 = v31[5];
    v26 = sub_1BF178D0C();
    if (!v25)
    {
      v28 = v29[0];
      *v29[0] = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = v21;
    }

    sub_1BF0B5908();
  }

  return result;
}

uint64_t sub_1BF0B5908()
{
  sub_1BF05E6C0(0, &qword_1ED8ECBB0, MEMORY[0x1E69E6D30]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v18 - v2;
  v4 = sub_1BF17B42C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = sub_1BF178D1C();
    sub_1BF0827B4(v8, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1]);
    (*(v5 + 8))(v8, v4);
    sub_1BF0B5F54(v19);
    return v10(v18, 0);
  }

  return result;
}

uint64_t ReferenceEncoder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return _s13TeaFoundation16ReferenceEncoderCACycfc_0();
}

uint64_t ReferenceEncoder.__deallocating_deinit()
{
  v0 = _s13TeaFoundation16ReferenceEncoderCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1BF0B5B38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a1;
  sub_1BF0B5EA4();
  v5 = OUTLINED_FUNCTION_68(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_0_20();
  sub_1BF05E6C0(v11, v12, v13);
  v15 = OUTLINED_FUNCTION_68(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = sub_1BF17B42C();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v33 = a2;
  v29 = sub_1BF17BC0C();
  OUTLINED_FUNCTION_1_19();
  sub_1BF17B41C();
  result = __swift_getEnumTagSinglePayload(v19, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(v28, v19, v20);
    sub_1BF05316C(v29, &v37);

    (*(v23 + 8))(v28, v20);
    if (v38)
    {
      type metadata accessor for ReferenceEncodingPool();
      if (swift_dynamicCast())
      {
        v31 = v36;
        sub_1BF0556D0();
        sub_1BF17BC1C();
        return sub_1BF0D524C(v10, v31, v34);
      }
    }

    else
    {
      sub_1BEFFD168(&v37);
    }

    sub_1BF0B5F00();
    swift_allocError();
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for ReferenceEncoder()
{
  result = qword_1ED8EA7E8;
  if (!qword_1ED8EA7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF0B5EA4()
{
  if (!qword_1ED8E9B60)
  {
    sub_1BF0556D0();
    v0 = sub_1BF17B6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9B60);
    }
  }
}

unint64_t sub_1BF0B5F00()
{
  result = qword_1EBDCAB88;
  if (!qword_1EBDCAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB88);
  }

  return result;
}

uint64_t sub_1BF0B5F54(uint64_t a1)
{
  sub_1BF05E6C0(0, &qword_1EBDCA880, sub_1BF083CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF0B5FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1BF17B86C();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

double sub_1BF0B6010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1BEFE6A78(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF0B603C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1BF17A29C();
    OUTLINED_FUNCTION_0_21(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1BFB52040](15, a1 >> 16);
    OUTLINED_FUNCTION_0_21(v3);
    return v4 | 8;
  }
}

void *sub_1BF0B6098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF1765CC(*(a1 + 16), 0);
  v4 = sub_1BF176B80(&v6, v3 + 4, v1, a1);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF003FE8();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1BF0B6154(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1BF0B603C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF0B61C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1BF17B2FC();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1BF0B62E0()
{
  result = qword_1ED8ECA20;
  if (!qword_1ED8ECA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ECA20);
  }

  return result;
}

uint64_t sub_1BF0B6334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0B6384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BF0B63D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF0B6400(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13TeaFoundation14BridgedContext_context);
  v5 = OUTLINED_FUNCTION_0_22(a1);
  swift_getMetatypeMetadata();
  v6 = objc_allocWithZone(TFKey);
  v14 = OUTLINED_FUNCTION_1_20(v6, v7, v8, v9, v10, v11, v12, v13, a2);
  [v14 address];

  sub_1BF0B64B4(v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0B64B4(uint64_t a1)
{
  swift_beginAccess();
  sub_1BF00951C();
  swift_endAccess();

  sub_1BF0B6ACC();
  *(swift_allocObject() + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = *(v1 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 32);
  sub_1BEFF6344();
  *(v1 + 32) = v5;
  return swift_endAccess();
}

uint64_t sub_1BF0B6634(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13TeaFoundation14BridgedContext_context);
  OUTLINED_FUNCTION_0_22(a1);
  swift_getMetatypeMetadata();
  v5 = objc_allocWithZone(TFKey);
  v13 = OUTLINED_FUNCTION_1_20(v5, v6, v7, v8, v9, v10, v11, v12, a2);
  [v13 address];

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_17();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0B67A8(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13TeaFoundation14BridgedContext_context);
  v5 = OUTLINED_FUNCTION_0_22(a1);
  sub_1BEFE8DAC();
  v6 = objc_allocWithZone(TFKey);
  v7 = a2;
  v15 = OUTLINED_FUNCTION_1_20(v7, v8, v9, v10, v11, v12, v13, v14, a2);
  [v15 address];

  sub_1BF0B64B4(v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0B68E4(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13TeaFoundation14BridgedContext_context);
  OUTLINED_FUNCTION_0_22(a1);
  sub_1BEFE8DAC();
  v5 = objc_allocWithZone(TFKey);
  v6 = a2;
  v14 = OUTLINED_FUNCTION_1_20(v6, v7, v8, v9, v10, v11, v12, v13, a2);
  [v14 address];

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_17();

  return swift_unknownObjectRelease();
}

void sub_1BF0B6ACC()
{
  if (!qword_1ED8EDCF0)
  {
    v0 = type metadata accessor for PoolObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EDCF0);
    }
  }
}

uint64_t sub_1BF0B6B20(uint64_t a1, uint64_t a2)
{
  sub_1BF17BB6C();
  sub_1BF00DD94(v5, a1);
  sub_1BF01A6B4(v5, a2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6B88()
{
  v1 = v0;
  sub_1BF17BB6C();
  v2 = *v0;
  v3 = v0[1];
  sub_1BF00DD94(v7, v2);
  sub_1BF01A6B4(v7, v3);
  MEMORY[0x1BFB53950](*(v1 + 16));
  v4 = v1[3];
  v5 = v1[4];
  sub_1BF179F3C();
  sub_1BF01FC04(v7, v1[5]);
  sub_1BF01A6B4(v7, v1[6]);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1BF17B86C(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1BF17B86C();
    }
  }

  return result;
}

uint64_t sub_1BF0B6CAC()
{
  sub_1BF179F3C();

  return sub_1BF179F3C();
}

uint64_t sub_1BF0B6CFC()
{
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6D74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1BF0B6CFC();
}

uint64_t sub_1BF0B6D80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1BF0B6CAC();
}

uint64_t sub_1BF0B6D8C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1BF17BB6C();
  sub_1BF0B6CAC();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B6E04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF0B6E3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0B6E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BF0B6EF0()
{
  result = qword_1EBDCBBE8;
  if (!qword_1EBDCBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBE8);
  }

  return result;
}

uint64_t sub_1BF0B6F44()
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  do
  {
    while (1)
    {
      v0 = sub_1BF17A23C();
      if (!v1)
      {

        sub_1BF17A23C();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1BF17A23C();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1BF17B86C();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

void sub_1BF0B7088(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_119:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_121:
      v106 = (v7 + 16);
      for (i = *(v7 + 2); i >= 2; *v106 = i)
      {
        if (!*a3)
        {
          goto LABEL_157;
        }

        v108 = &v7[16 * i];
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        sub_1BF0B77B8((*a3 + 32 * *v108), (*a3 + 32 * *v110), (*a3 + 32 * v111), v4);
        if (v121)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_145;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_146;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_147;
        }

        v121 = 0;
        i = *v106 - 1;
        sub_1BF1751C0(v110 + 16, v112, v110);
      }

LABEL_129:

      return;
    }

LABEL_154:
    v7 = sub_1BF1751AC(v7);
    goto LABEL_121;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v119 = v7;
    if (v6 + 1 < v5)
    {
      v126 = v5;
      v10 = (*a3 + 32 * v9);
      v4 = v10[1];
      v11 = v10[2];
      v12 = v10[3];
      v115 = v6;
      v13 = (*a3 + 32 * v6);
      v14 = v13[2];
      v15 = v13[3];
      v16 = *v10 == *v13 && v4 == v13[1];
      if (v16 || (v17 = *v13, v18 = v13[1], v19 = v10[2], v20 = sub_1BF17B86C(), v11 = v19, (v20)) && (v11 == v14 ? (v21 = v12 == v15) : (v21 = 0), v21))
      {
        v124 = 0;
      }

      else
      {
        v124 = sub_1BF17B86C();
      }

      v22 = v126;
      v9 = v115 + 2;
      v23 = v13 + 6;
      while (v9 < v22)
      {
        v4 = v23[2];
        v24 = v23[4];
        v25 = v23[5];
        v27 = *v23;
        v26 = v23[1];
        v28 = v4 == *(v23 - 2) && v23[3] == *(v23 - 1);
        if (v28 || (v29 = v23[2], v30 = v23[3], v31 = *(v23 - 2), v32 = *(v23 - 1), (sub_1BF17B86C())) && (v24 == v27 ? (v33 = v25 == v26) : (v33 = 0), v33))
        {
          v7 = v119;
          v22 = v126;
          if (v124)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v34 = sub_1BF17B86C();
          v7 = v119;
          v22 = v126;
          if ((v124 ^ v34))
          {
            break;
          }
        }

        ++v9;
        v23 += 4;
      }

      if ((v124 & 1) == 0)
      {
        v8 = v115;
        goto LABEL_42;
      }

LABEL_33:
      v8 = v115;
      if (v9 < v115)
      {
        goto LABEL_151;
      }

      if (v115 < v9)
      {
        v35 = 32 * v9 - 16;
        v36 = 32 * v115 + 24;
        v37 = v9;
        v38 = v115;
        do
        {
          if (v38 != --v37)
          {
            v39 = *a3;
            if (!*a3)
            {
              goto LABEL_158;
            }

            v40 = (v39 + v36);
            v41 = (v39 + v35);
            v42 = *(v40 - 3);
            v43 = *(v40 - 1);
            v44 = *v40;
            v45 = *v41;
            *(v40 - 3) = *(v41 - 1);
            *(v40 - 1) = v45;
            *(v41 - 1) = v42;
            *v41 = v43;
            *(v41 + 1) = v44;
          }

          ++v38;
          v35 -= 32;
          v36 += 32;
        }

        while (v38 < v37);
      }
    }

LABEL_42:
    v46 = a3[1];
    if (v9 < v46)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_150;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_67:
    if (v9 < v8)
    {
      goto LABEL_149;
    }

    v123 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v7 + 2);
      sub_1BF0A6798();
      v7 = v104;
    }

    v62 = *(v7 + 2);
    v63 = v62 + 1;
    if (v62 >= *(v7 + 3) >> 1)
    {
      sub_1BF0A6798();
      v7 = v105;
    }

    *(v7 + 2) = v63;
    v64 = v7 + 32;
    v65 = &v7[16 * v62 + 32];
    *v65 = v8;
    *(v65 + 1) = v123;
    v128 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if (v62)
    {
      while (1)
      {
        v66 = v63 - 1;
        v67 = &v64[16 * v63 - 16];
        v68 = &v7[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v69 = *(v7 + 4);
          v70 = *(v7 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_87:
          if (v72)
          {
            goto LABEL_136;
          }

          v84 = *v68;
          v83 = *(v68 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_139;
          }

          v88 = *(v67 + 1);
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_144;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v63 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        if (v63 < 2)
        {
          goto LABEL_138;
        }

        v91 = *v68;
        v90 = *(v68 + 1);
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_102:
        if (v87)
        {
          goto LABEL_141;
        }

        v93 = *v67;
        v92 = *(v67 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_143;
        }

        if (v94 < v86)
        {
          goto LABEL_116;
        }

LABEL_109:
        if (v66 - 1 >= v63)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v98 = &v64[16 * v66 - 16];
        v4 = *v98;
        v99 = &v64[16 * v66];
        v100 = *(v99 + 1);
        sub_1BF0B77B8((*a3 + 32 * *v98), (*a3 + 32 * *v99), (*a3 + 32 * v100), v128);
        if (v121)
        {
          goto LABEL_129;
        }

        if (v100 < v4)
        {
          goto LABEL_131;
        }

        v101 = v7;
        v7 = *(v7 + 2);
        if (v66 > v7)
        {
          goto LABEL_132;
        }

        *v98 = v4;
        *(v98 + 1) = v100;
        if (v66 >= v7)
        {
          goto LABEL_133;
        }

        v121 = 0;
        v63 = (v7 - 1);
        sub_1BF1751C0(v99 + 16, &v7[-v66 - 1], &v64[16 * v66]);
        *(v101 + 2) = v7 - 1;
        v102 = v7 > 2;
        v7 = v101;
        if (!v102)
        {
          goto LABEL_116;
        }
      }

      v73 = &v64[16 * v63];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_134;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_135;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_137;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_140;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_148;
        }

        if (v71 < v97)
        {
          v66 = v63 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_87;
    }

LABEL_116:
    v5 = a3[1];
    v6 = v123;
    if (v123 >= v5)
    {
      goto LABEL_119;
    }
  }

  v47 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_152;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v8)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v9 == v47)
  {
    goto LABEL_67;
  }

  v127 = *a3;
  v48 = *a3 + 32 * v9 - 32;
  v116 = v47;
  v49 = v8 - v9;
LABEL_51:
  v122 = v9;
  v50 = (v127 + 32 * v9);
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v54 = v50[3];
  v117 = v49;
  v118 = v48;
  v55 = v48;
  while (1)
  {
    v56 = v55[2];
    v4 = v55[3];
    v57 = v51 == *v55 && v52 == v55[1];
    if (v57 || (v125 = v55[2], v58 = sub_1BF17B86C(), v56 = v125, (v58)) && (v53 == v56 ? (v59 = v54 == v4) : (v59 = 0), v59) || (sub_1BF17B86C() & 1) == 0)
    {
LABEL_65:
      v9 = v122 + 1;
      v48 = v118 + 32;
      v49 = v117 - 1;
      if (v122 + 1 == v116)
      {
        v9 = v116;
        v7 = v119;
        goto LABEL_67;
      }

      goto LABEL_51;
    }

    if (!v127)
    {
      break;
    }

    v51 = v55[4];
    v52 = v55[5];
    v53 = v55[6];
    v54 = v55[7];
    v60 = *(v55 + 1);
    *(v55 + 2) = *v55;
    *(v55 + 3) = v60;
    *v55 = v51;
    v55[1] = v52;
    v55[2] = v53;
    v55[3] = v54;
    v55 -= 4;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_1BF0B77B8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = (a2 - a1) / 32;
  v46 = a3;
  v8 = (a3 - a2) / 32;
  if (v7 < v8)
  {
    sub_1BF0A90EC(a1, (a2 - a1) / 32, a4);
    v9 = &v4[32 * v7];
    for (i = v9; ; v9 = i)
    {
      if (v4 >= v9 || v5 >= v46)
      {
        v22 = v6;
        goto LABEL_45;
      }

      v11 = *(v5 + 2);
      v12 = *(v5 + 3);
      v44 = v5;
      v13 = *(v4 + 2);
      v14 = *(v4 + 3);
      v15 = *v5 == *v4 && *(v5 + 1) == *(v4 + 1);
      if (v15 || (v16 = *v4, v17 = *(v4 + 1), (sub_1BF17B86C() & 1) != 0))
      {
        if (v11 == v13 && v12 == v14)
        {
          break;
        }
      }

      if ((sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v19 = v5;
      v5 += 32;
      if (v6 != v44)
      {
        goto LABEL_20;
      }

LABEL_21:
      v6 += 32;
    }

    v19 = v4;
    v15 = v6 == v4;
    v4 += 32;
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    v20 = *(v19 + 1);
    *v6 = *v19;
    *(v6 + 1) = v20;
    goto LABEL_21;
  }

  sub_1BF0A90EC(a2, (a3 - a2) / 32, a4);
  v42 = &v4[32 * v8];
  v40 = v4;
  v49 = v6;
LABEL_23:
  v21 = 0;
  v22 = v5;
  v45 = v5 - 32;
  v41 = v5;
  while (1)
  {
    v9 = &v42[v21];
    if (&v42[v21] <= v4 || v22 <= v6)
    {
      break;
    }

    v43 = v21;
    v48 = &v42[v21];
    v25 = *(v9 - 4);
    v24 = *(v9 - 3);
    v26 = v9 - 32;
    v27 = *(v26 + 2);
    v28 = *(v26 + 3);
    v30 = *(v22 - 2);
    v29 = *(v22 - 1);
    v31 = v25 == *(v22 - 4) && v24 == *(v22 - 3);
    if (!v31 && (sub_1BF17B86C() & 1) == 0 || (v27 == v30 ? (v32 = v28 == v29) : (v32 = 0), !v32))
    {
      if (sub_1BF17B86C())
      {
        v5 -= 32;
        v35 = &v46[v43];
        v46 = &v46[v43 - 32];
        v42 += v43;
        v4 = v40;
        v6 = v49;
        if (v35 != v41)
        {
          v36 = *(v45 + 1);
          *v46 = *v45;
          *(v46 + 1) = v36;
        }

        goto LABEL_23;
      }
    }

    v33 = &v46[v43];
    v6 = v49;
    if (v48 != &v46[v43])
    {
      v34 = *(v26 + 1);
      *(v33 - 2) = *v26;
      *(v33 - 1) = v34;
    }

    v21 = v43 - 32;
    v4 = v40;
    v22 = v5;
  }

LABEL_45:
  v37 = (v9 - v4) / 32;
  if (v22 != v4 || v22 >= &v4[32 * v37])
  {
    memmove(v22, v4, 32 * v37);
  }

  return 1;
}

_BYTE *storeEnumTagSinglePayload for RouteMatchResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0B7B60()
{
  result = qword_1EBDCBBF0;
  if (!qword_1EBDCBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBF0);
  }

  return result;
}

void sub_1BF0B7BB4(uint64_t a1)
{
  v3 = sub_1BF179CDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF0B860C(&qword_1ED8E9CA0, MEMORY[0x1E69666B0]);
  v8 = sub_1BF17A33C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1BF00DD60();
  v9 = v36;
  (*(v4 + 16))(v7, a1, v3);
  sub_1BF17A32C();
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v29[1] = v1;
      v10 = v35;
      v11 = *(v34 + 16);
      v32 = v34;
      *&v33 = v11;
      v31 = v34 + 32;
      v30 = xmmword_1BF17DEF0;
      v12 = v35;
      while (v33 != v10)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *(v32 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v31 + v10);
        sub_1BF071C70();
        v14 = swift_allocObject();
        *(v14 + 16) = v30;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        v15 = sub_1BF17A0FC();
        v17 = v16;
        v36 = v9;
        v18 = *(v9 + 16);
        if (v18 >= *(v9 + 24) >> 1)
        {
          sub_1BF00DD60();
          v9 = v36;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v17;
        ++v10;
        if (!--v8)
        {
          v35 = v10;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v20 = v34;
      v33 = xmmword_1BF17DEF0;
      while (1)
      {
        v21 = *(v20 + 16);
        if (v35 == v21)
        {

          return;
        }

        if (v35 >= v21)
        {
          break;
        }

        v22 = *(v20 + 32 + v35++);
        sub_1BF071C70();
        v23 = swift_allocObject();
        *(v23 + 16) = v33;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        v24 = sub_1BF17A0FC();
        v26 = v25;
        v36 = v9;
        v27 = *(v9 + 16);
        if (v27 >= *(v9 + 24) >> 1)
        {
          sub_1BF00DD60();
          v9 = v36;
        }

        *(v9 + 16) = v27 + 1;
        v28 = v9 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v26;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t DigestAlgo.hashValue.getter()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0B7FD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF179CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF179CDC();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF0B860C(&qword_1ED8E9CA8, MEMORY[0x1E6966688]);
  sub_1BF179CBC();
  sub_1BF014DC0(a1, a2);
  sub_1BF0B8570(a1, a2);
  sub_1BF014E18(a1, a2);
  sub_1BF179CAC();
  (*(v5 + 8))(v8, v4);
  sub_1BF0B7BB4(v12);
  v18 = v13;
  sub_1BF02027C();
  sub_1BF0B860C(&qword_1ED8EE9C0, sub_1BF02027C);
  v14 = sub_1BF179F7C();

  (*(v9 + 8))(v12, v17);
  return v14;
}

unint64_t sub_1BF0B826C()
{
  result = qword_1EBDCBBF8;
  if (!qword_1EBDCBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBBF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DigestAlgo(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF0B83BC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1BF179CCC();
  sub_1BF0B860C(&qword_1ED8E9CA8, MEMORY[0x1E6966688]);
  result = sub_1BF179C9C();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0B8490(uint64_t a1, uint64_t a2)
{
  result = sub_1BF178F3C();
  if (!result || (result = sub_1BF178F5C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BF178F4C();
      sub_1BF179CCC();
      sub_1BF0B860C(&qword_1ED8E9CA8, MEMORY[0x1E6966688]);
      return sub_1BF179C9C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF0B8570(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1BF0B8490(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1BF0B83BC();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1BF0B860C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CodingSafeDictionary.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CodingSafeDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    type metadata accessor for SafeishDictionary();
    swift_getWitnessTable();
    sub_1BF17B8DC();
    v6 = v8[6];
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodingSafeDictionary.encode(to:)(void *a1, void *a2)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17BBFC();
  v12[6] = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  sub_1BF179E9C();
  v10 = a2[5];
  v11 = a2[9];
  swift_getWitnessTable();
  sub_1BF17B95C();

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1BF0B88EC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v11 = a2[9];
  return CodingSafeDictionary.init(from:)(a1, a3);
}

uint64_t SingleValueStore.__allocating_init(directoryURL:filename:log:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SingleValueStore.init(directoryURL:filename:log:)();
  return v3;
}

uint64_t SingleValueStore.__allocating_init(directory:subdirectoryPath:filename:log:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SingleValueStore.init(directory:subdirectoryPath:filename:log:)();
  return v3;
}

Swift::Void __swiftcall SingleValueStore.reset()()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BF179B5C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v42 = sub_1BF179BBC();
  v11 = OUTLINED_FUNCTION_1(v42);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = *(v2 + 80);
  v20 = sub_1BF17AE6C();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v41 - v26;
  v28 = *(v1 + qword_1ED8EE200);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  *(v1 + *(v29 + 160)) = 1;
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  OUTLINED_FUNCTION_4_0();
  v34 = *(v33 + 152);
  swift_beginAccess();
  (*(v23 + 40))(v1 + v34, v27, v20);
  swift_endAccess();
  v35 = *(v1 + qword_1ED8EE1E8);
  v45[4] = sub_1BF0B9360;
  v45[5] = v1;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 1107296256;
  v45[2] = sub_1BF0058CC;
  v45[3] = &block_descriptor_3;
  v36 = _Block_copy(v45);

  sub_1BF179B8C();
  v44 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_10();
  sub_1BF00AEAC(v37, v38);
  sub_1BF027D54(0);
  OUTLINED_FUNCTION_6_13();
  sub_1BF00AEAC(v39, v40);
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v18, v10, v36);
  _Block_release(v36);
  (*(v43 + 8))(v10, v3);
  (*(v13 + 8))(v18, v42);

  sub_1BF05D9F8(v1);
  OUTLINED_FUNCTION_26_2();
}