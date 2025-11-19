uint64_t *sub_1D8C6E644(uint64_t *result, uint64_t a2)
{
  v3 = result[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1 || (v4 = *result, __PAIR128__((*result >= 0xD) + v3 + 0x7FFFFFFFFFFFFFFFLL, *result - 13) < 2))
    {
LABEL_21:
      sub_1D8C36A64();
      swift_allocError();
      *v16 = xmmword_1D8C86190;
      *(v16 + 16) = 2;
      return swift_willThrow();
    }

    if (((1 << v4) & 0x10E7) == 0)
    {
      if (((1 << v4) & 0x700) != 0)
      {
        if ((a2 - 0x1000000000000000) >> 61 != 7)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v2[3];
        v18 = __OFADD__(v17, 8 * a2);
        v19 = v17 + 8 * a2;
        if (v18)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v20 = *v2;
        if (*v2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((a2 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v21 = v2[3];
        v18 = __OFADD__(v21, 4 * a2);
        v19 = v21 + 4 * a2;
        if (v18)
        {
LABEL_38:
          __break(1u);
          return result;
        }

        v20 = *v2;
        if (*v2)
        {
LABEL_27:
          if (v19 >= v2[1] - v20)
          {
            return result;
          }

          goto LABEL_33;
        }
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
        return result;
      }

LABEL_33:
      v2[3] = v19;
      return result;
    }
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a2)
  {
    v5 = 0;
    v6 = *v2;
    v7 = v2[1] - *v2;
    v8 = v2[3];
    v9 = *v2 + 1;
    do
    {
      if (v6)
      {
        v10 = v7;
        if (v8 >= v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v10 = 0;
      }

      v11 = v8 + 1;
      if (*(v6 + v8) < 0)
      {
        if (v11 >= v10)
        {
          goto LABEL_21;
        }

        v12 = (v9 + v8);
        v11 = v8 + 2;
        v13 = 7;
        while (1)
        {
          v14 = *v12++;
          if ((v14 & 0x80000000) == 0)
          {
            break;
          }

          if (v11 < v10)
          {
            ++v11;
            v15 = v13 > 0x38;
            v13 += 7;
            if (!v15)
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      ++v5;
      v2[3] = v11;
      v8 = v11;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_1D8C6E80C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5 >> 12 <= 0xE)
  {
    v7 = a1[1];
    v12 = *a1;
    v13 = v7;
    v14 = v5;
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1D8C7590C(&v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v12);

    return sub_1D8C31D74(v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (!a2)
  {
    sub_1D8C75164(a3, a4, &v33);

    return sub_1D8C31D74(v33, v34, v35, v36, v37);
  }

  v8 = *v4;
  v9 = *v5;
  v26 = v5[1];
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v26, &v31);
  v11 = v32;
  v12 = swift_getObjectType();
  v13 = *(v11 + 56);

  v29 = a4;
  v13(a3, a4, v12, v11);
  v15 = v14;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v15, &v33);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = v34;
  v17 = swift_getObjectType();
  (*(v16 + 56))(&v31, v17, v16);
  v19 = v31;
  v18 = v32;
  if (v32 >> 62)
  {
    if (v32 >> 62 != 2 || v31 != 13 || v32 != 0x8000000000000000)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1D8C85124();

      v33 = 0x73696D2065707954;
      v34 = 0xEF203A686374616DLL;
      v25 = (*(*(v26 + 8) + 8))(ObjectType);
      MEMORY[0x1DA7255C0](v25);

      MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
      MEMORY[0x1DA7255C0](a3, v29);
      result = sub_1D8C851F4();
      __break(1u);
      return result;
    }

    v33 = a1;
    v34 = a2;
    v35 = 0;
    v36 = 0;
    v37 = 2048;
    v23 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v5[2];
    sub_1D8C7590C(&v33, a3, v29, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
  }

  else
  {

    v33 = v19;
    v34 = v18;
    v35 = a1;
    v36 = a2;
    v37 = 1792;
    swift_unknownObjectRetain();
    v20 = v5[2];
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v5[2];
    sub_1D8C7590C(&v33, a3, v29, v21);
    swift_unknownObjectRelease();

    result = sub_1D8C2BBF0(v19, v18);
  }

  v5[2] = v30;
  return result;
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    sub_1D8C75164(a3, a4, &v11);

    return sub_1D8C31D74(v11, v12, v13, v14, v15);
  }

  else
  {
    v11 = a1;
    v12 = a2;
    v13 = 0;
    v14 = 0;
    v15 = 2304;
    v8 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    sub_1D8C7590C(&v11, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v10;
  }

  return result;
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1D8C75164(a3, a4, &v35);

    return sub_1D8C31D74(v35, *(&v35 + 1), v36, v37, v38);
  }

  v9 = *v4;
  v10 = v4[1];
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v10, &v34);
  v11 = *(&v34 + 1);
  v12 = swift_getObjectType();
  (*(v11 + 56))(a3, a4, v12, v11);
  v14 = v13;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v14, &v35);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v35;
  v16 = swift_getObjectType();
  (*(*(&v15 + 1) + 56))(&v34, v16, *(&v15 + 1));
  v17 = v34;
  if (*(&v34 + 1) >> 62)
  {
    if (*(&v34 + 1) >> 62 != 2)
    {
LABEL_40:
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_1D8C85124();

      *&v35 = 0x73696D2065707954;
      *(&v35 + 1) = 0xEF203A686374616DLL;
      v31 = (*(*(v10 + 8) + 8))(ObjectType);
      MEMORY[0x1DA7255C0](v31);

      MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
      MEMORY[0x1DA7255C0](a3, a4);
      result = sub_1D8C851F4();
      __break(1u);
      return result;
    }

    if (__PAIR128__(0x8000000000000000, 2) >= v34)
    {
      if (!(v34 | *(&v34 + 1) ^ 0x8000000000000000))
      {
        goto LABEL_21;
      }

      if (*(&v34 + 1) != 0x8000000000000000 || v34 != 1)
      {
        if (*(&v34 + 1) != 0x8000000000000000 || v34 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v21 = v34 - 5;
      if ((v34 - 5) <= 7)
      {
        if (((1 << v21) & 0x15) != 0)
        {
          v35 = a1;
          v36 = 0;
          v37 = 0;
          v22 = 512;
LABEL_32:
          v38 = v22;
          goto LABEL_33;
        }

        if (((1 << v21) & 0xA) != 0)
        {
          v35 = a1;
          v36 = 0;
          v37 = 0;
          v22 = 768;
          goto LABEL_32;
        }

        if (v34 == 12)
        {
          v35 = a1 != 0;
          v36 = 0;
          v37 = 0;
          v38 = 1536;
          v25 = v4[2];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v4[2];
          sub_1D8C7590C(&v35, a3, a4, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();

          goto LABEL_5;
        }
      }

      if (*(&v34 + 1) != 0x8000000000000000 || v34 != 3)
      {
        if (*(&v34 + 1) != 0x8000000000000000 || v34 != 4)
        {
          goto LABEL_40;
        }

LABEL_21:
        v35 = a1;
        v36 = 0;
        v37 = 0;
        v38 = 0;
LABEL_33:
        v28 = v4[2];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = v4[2];
        sub_1D8C7590C(&v35, a3, a4, v29);
        swift_unknownObjectRelease();

        v20 = v34;
        goto LABEL_34;
      }
    }

    v35 = a1;
    v36 = 0;
    v37 = 0;
    v22 = 256;
    goto LABEL_32;
  }

  v35 = v34;
  v36 = a1;
  v37 = 0;
  v38 = 1793;
  swift_unknownObjectRetain();
  v18 = v4[2];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v4[2];
  sub_1D8C7590C(&v35, a3, a4, v19);
  swift_unknownObjectRelease();

  result = sub_1D8C2BBF0(v17, *(&v17 + 1));
LABEL_5:
  v20 = v33;
LABEL_34:
  v4[2] = v20;
  return result;
}

{
  return sub_1D8C71D18(a1, a2, a3, a4, 512);
}

{
  return sub_1D8C71D18(a1, a2, a3, a4, 768);
}

{
  return sub_1D8C71D18(a1, a2, a3, a4, 1280);
}

uint64_t SchematizedDataComposer.subscript.getter(unint64_t a1, uint64_t a2)
{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    result = v9;
    if ((v13 & 0xFF00) == 0xA00)
    {
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v24 = *v2;
  v18 = *(v2 + 1);
  v25 = v18;
  SchematizedDataComposer.subscript.getter(a1, a2, &v19);
  v5 = 0;
  v6 = v23;
  v7 = HIBYTE(v23);
  if (v7 > 0xFE)
  {
    return v5;
  }

  v8 = v19;
  v9 = v20;
  if (v7 == 8)
  {
    return v19;
  }

  if (v7 == 7)
  {
    v5 = v21;
    v10 = v22;
    if (v23)
    {
      ObjectType = swift_getObjectType();
      v16 = *(v9 + 48);
      v17 = ObjectType;
      sub_1D8C5C2AC(v8, v9, v5, v10, v6, 7u);
      v12 = v16(v5, v17, v9);
      sub_1D8C60430(v8, v9, v5, v10, v6);
      sub_1D8C60430(v8, v9, v5, v10, v6);
      return v12;
    }

    else
    {
      sub_1D8C3510C(v21, v22, 0);
      sub_1D8C60430(v8, v9, v5, v10, v6);
    }

    return v5;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D8C85124();

  v19 = 0x73696D2065707954;
  v20 = 0xEF203A686374616DLL;
  v14 = swift_getObjectType();
  v15 = (*(*(v18 + 8) + 8))(v14);
  MEMORY[0x1DA7255C0](v15);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    result = v9;
    if ((v13 & 0xFF00) == 0x900)
    {
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v31 = *v2;
  v25 = *(v2 + 1);
  v32 = v25;
  SchematizedDataComposer.subscript.getter(a1, a2, &v26);
  v6 = 0;
  v7 = HIBYTE(v30);
  if (v7 <= 0xFE)
  {
    v6 = v26;
    if (HIBYTE(v30) <= 2u)
    {
      if (!v7)
      {
        sub_1D8C60430(v26, v27, v28, v29, v30);
        return v6;
      }

      if (v7 == 1)
      {
        sub_1D8C60430(v26, v27, v28, v29, v30);
        return v6;
      }

LABEL_11:
      sub_1D8C60430(v26, v27, v28, v29, v30);
      return v6;
    }

    switch(v7)
    {
      case 3u:
        goto LABEL_11;
      case 7u:
        if (v30)
        {
          v6 = v28;
          sub_1D8C60430(v26, v27, v28, v29, v30);
        }

        else
        {
          v8 = v30;
          v9 = v29;
          v10 = v28;
          v11 = v27;
          ObjectType = swift_getObjectType();
          v19 = *(v11 + 40);
          v20 = ObjectType;
          sub_1D8C5C2AC(v6, v11, v10, v9, v8, 7u);
          v23 = v9;
          v13 = v19(v10, v9, v20, v11);
          sub_1D8C60430(v6, v11, v10, v23, v8);
          sub_1D8C60430(v6, v11, v10, v23, v8);
          return v13;
        }

        break;
      case 6u:
        sub_1D8C60430(v26, v27, v28, v29, v30);
        return v6 & 1;
      default:
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_1D8C85124();

        v26 = 0x73696D2065707954;
        v27 = 0xEF203A686374616DLL;
        v15 = swift_getObjectType();
        v16 = (*(*(v25 + 8) + 8))(v15);
        MEMORY[0x1DA7255C0](v16);

        MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
        MEMORY[0x1DA7255C0](a1, a2);
        while (1)
        {
          sub_1D8C851F4();
          __break(1u);
          sub_1D8C60430(&v26, v3, v21, v22, v24);
          v26 = 0;
          v27 = 0xE000000000000000;
          sub_1D8C85124();
          MEMORY[0x1DA7255C0](0x20726F727245, 0xE600000000000000);
          swift_getErrorValue();
          sub_1D8C85284();
          MEMORY[0x1DA7255C0](0x7268742073616820, 0xED0000203A6E776FLL);
          v17 = swift_getObjectType();
          v18 = (*(*(v25 + 8) + 8))(v17);
          MEMORY[0x1DA7255C0](v18);

          MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
          MEMORY[0x1DA7255C0](a1, a2);
        }
    }
  }

  return v6;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    if ((v13 & 0xFF00) == 0x600)
    {
      return v9 & 1;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    LODWORD(result) = v9;
    if (v13 <= 0xFFu)
    {
      LOBYTE(v9) = 0;
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    result = v9;
    if ((v13 & 0xFF00) == 0x200)
    {
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    LODWORD(result) = v9;
    if ((v13 & 0xFF00) == 0x100)
    {
      LOBYTE(v9) = 0;
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    result = v9;
    if ((v13 & 0xFF00) == 0x300)
    {
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    LODWORD(result) = v9;
    if ((v13 & 0xFF00) == 0x400)
    {
      LOBYTE(v9) = 0;
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v14 = *v2;
  v8 = *(v2 + 1);
  v15 = v8;
  SchematizedDataComposer.subscript.getter(a1, a2, &v9);
  if (HIBYTE(v13) <= 0xFEu)
  {
    result = v9;
    if ((v13 & 0xFF00) == 0x500)
    {
      return result;
    }

    sub_1D8C60430(v9, v10, v11, v12, v13);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D8C85124();

  v9 = 0x73696D2065707954;
  v10 = 0xEF203A686374616DLL;
  ObjectType = swift_getObjectType();
  v7 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v7);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C6F4A8(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a1)
  {
    v5 = 2560;
  }

  else
  {
    v5 = -4096;
  }

  v7 = *a1;
  v8 = 0;
  v9 = 0;
  v10 = v5;

  return sub_1D8C6E80C(&v7, v3, v4);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, unint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v9 = *v3;
  v10 = *(v3 + 2);
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6F684;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v11 = *v3;
  v12 = *(v3 + 2);
  v9 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 9) = v9;
  *(v8 + 40) = BYTE4(v9) & 1;
  return sub_1D8C70D70;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v10 = *v3;
  v11 = *(v3 + 2);
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 88) = 0;
  return sub_1D8C71134;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v11 = *v3;
  v12 = *(v3 + 2);
  v9 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 9) = v9;
  *(v8 + 40) = BYTE4(v9) & 1;
  return sub_1D8C713EC;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v10 = *v3;
  v11 = *(v3 + 2);
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 88) = 0;
  return sub_1D8C71694;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v11 = *v3;
  v12 = *(v3 + 2);
  v9 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 9) = v9;
  *(v8 + 40) = BYTE4(v9) & 1;
  return sub_1D8C71A00;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v10 = *v3;
  v11 = *(v3 + 2);
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 88) = 0;
  return sub_1D8C71E7C;
}

void sub_1D8C6F684(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 80);
  v3 = *v4;
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 88);
  if (a2)
  {
    if (v3)
    {
      *v2 = v3;
      v2[1] = 0;
      v2[2] = 0;
      v2[3] = 0;
      *(v2 + 16) = 2560;

      v8 = *(v6 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v6 + 16);
      sub_1D8C7590C(v2, v7, v5, isUniquelyReferenced_nonNull_native);

      *(v6 + 16) = v15;
    }

    else
    {
      v12 = *(*a1 + 96);

      sub_1D8C75164(v7, v5, &v15);

      sub_1D8C31D74(v15, v16, v17, v18, v19);
    }

    v13 = *v4;
  }

  else if (v3)
  {
    v2[5] = v3;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    *(v2 + 36) = 2560;

    v10 = *(v6 + 16);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v6 + 16);
    sub_1D8C7590C((v2 + 5), v7, v5, v11);

    *(v6 + 16) = v15;
  }

  else
  {
    v14 = *(*a1 + 96);

    sub_1D8C75164(v7, v5, &v15);

    sub_1D8C31D74(v15, v16, v17, v18, v19);
  }

  free(v2);
}

uint64_t sub_1D8C6FB7C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  return SchematizedDataComposer.subscript.setter(v5, v6, v3, v4);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, unint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v11 = *v3;
  v12 = *(v3 + 2);
  *v7 = SchematizedDataComposer.subscript.getter(a2, a3);
  v8[1] = v9;
  return sub_1D8C6FC88;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v11 = *v3;
  v12 = *(v3 + 2);
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  v8[11] = v9;
  return sub_1D8C6FFCC;
}

void sub_1D8C6FC88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = (*a1)[1];

    SchematizedDataComposer.subscript.setter(v3, v4, v7, v6);
    v9 = v2[1];
  }

  else
  {
    v10 = (*a1)[3];

    SchematizedDataComposer.subscript.setter(v3, v4, v7, v6);
  }

  free(v2);
}

uint64_t sub_1D8C6FE8C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1[1];
  }

  if (v6 >> 60 == 15)
  {
    v9 = -4096;
  }

  else
  {
    v9 = 2304;
  }

  *&v11 = v7;
  *(&v11 + 1) = v8;
  v12 = 0;
  v13 = 0;
  v14 = v9;

  sub_1D8C2C5D0(v5, v6);
  return sub_1D8C6E80C(&v11, v3, v4);
}

void sub_1D8C6FFCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[13];
  v4 = (*a1)[14];
  v5 = (*a1)[11];
  v6 = (*a1)[12];
  if (a2)
  {
    if (v5 >> 60 == 15)
    {
      v7 = (*a1)[13];

      sub_1D8C75164(v6, v3, &v14);

      sub_1D8C31D74(v14, v15, v16, v17, v18);
    }

    else
    {
      v9 = v2[10];
      *v2 = v9;
      v2[1] = v5;
      v2[2] = 0;
      v2[3] = 0;
      *(v2 + 16) = 2304;

      sub_1D8C2C5D0(v9, v5);
      v10 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v4 + 16);
      sub_1D8C7590C(v2, v6, v3, isUniquelyReferenced_nonNull_native);

      *(v4 + 16) = v14;
    }

    sub_1D8C2C670(v2[10], v2[11]);
  }

  else if (v5 >> 60 == 15)
  {
    v8 = (*a1)[13];

    sub_1D8C75164(v6, v3, &v14);

    sub_1D8C31D74(v14, v15, v16, v17, v18);
  }

  else
  {
    v2[5] = v2[10];
    v2[6] = v5;
    v2[7] = 0;
    v2[8] = 0;
    *(v2 + 36) = 2304;

    v12 = *(v4 + 16);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 16);
    sub_1D8C7590C((v2 + 5), v6, v3, v13);

    *(v4 + 16) = v14;
  }

  free(v2);
}

void (*SchematizedDataComposer.subscript.modify(void *a1, unint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v11 = *v3;
  v12 = *(v3 + 2);
  *v7 = SchematizedDataComposer.subscript.getter(a2, a3);
  *(v8 + 8) = v9 & 1;
  return sub_1D8C705DC;
}

void sub_1D8C705DC(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);

  SchematizedDataComposer.subscript.setter(v5, v6, v4, v3);

  free(v1);
}

uint64_t sub_1D8C707B8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = v5 & 1;
  if (v5 == 2)
  {
    v7 = -4096;
  }

  else
  {
    v7 = 1536;
  }

  v9 = v6;
  v10 = 0;
  v11 = 0;
  v12 = v7;

  return sub_1D8C6E80C(&v9, v3, v4);
}

uint64_t SchematizedDataComposer.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    sub_1D8C75164(a2, a3, &v10);

    return sub_1D8C31D74(v10, v11, v12, v13, v14);
  }

  else
  {
    v10 = a1 & 1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1536;
    v6 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 16);
    sub_1D8C7590C(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v9;
  }

  return result;
}

void (*SchematizedDataComposer.subscript.modify(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  *(v7 + 88) = a3;
  *(v7 + 96) = v3;
  *(v7 + 80) = a2;
  v9 = *v3;
  v10 = *(v3 + 2);
  *(v7 + 34) = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C7099C;
}

void sub_1D8C7099C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 34);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 80);
  if ((a2 & 1) == 0)
  {
    if (v3 != 2)
    {
      v2[5] = v3 & 1;
      v2[6] = 0;
      v2[7] = 0;
      v2[8] = 0;
      *(v2 + 36) = 1536;

      v11 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12[0] = *(v5 + 16);
      v9 = (v2 + 5);
      goto LABEL_7;
    }

LABEL_6:
    v10 = *(*a1 + 88);

    sub_1D8C75164(v6, v4, v12);

    sub_1D8C31D74(v12[0], v12[1], v12[2], v12[3], v13);
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    goto LABEL_6;
  }

  *v2 = v3 & 1;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 16) = 1536;

  v7 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v5 + 16);
  v9 = v2;
LABEL_7:
  sub_1D8C7590C(v9, v6, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v12[0];
LABEL_8:

  free(v2);
}

uint64_t sub_1D8C70C44(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 4))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 0;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

void sub_1D8C70D70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 88);
  if ((a2 & 1) == 0)
  {
    if ((*(*a1 + 40) & 1) == 0)
    {
      v2[6] = *(v2 + 9);
      v2[7] = 0;
      v2[8] = 0;
      v2[9] = 0;
      *(v2 + 40) = 0;

      v11 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12[0] = *(v5 + 16);
      v9 = (v2 + 6);
      goto LABEL_7;
    }

LABEL_5:
    v10 = *(*a1 + 96);

    sub_1D8C75164(v6, v4, v12);

    sub_1D8C31D74(v12[0], v12[1], v12[2], v12[3], v13);
    goto LABEL_8;
  }

  if (*(*a1 + 40))
  {
    goto LABEL_5;
  }

  *v2 = *(v2 + 9);
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 16) = 0;

  v7 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(v5 + 16);
  v9 = v2;
LABEL_7:
  sub_1D8C7590C(v9, v6, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v12[0];
LABEL_8:

  free(v2);
}

uint64_t sub_1D8C71000(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 512;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C712B4(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 4))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 256;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71560(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 768;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71814(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 4))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 1024;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71894(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a1 & 0x100000000) != 0)
  {
    sub_1D8C75164(a2, a3, &v11);

    return sub_1D8C31D74(v11, v12, v13, v14, v15);
  }

  else
  {
    v11 = a1;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a4;
    v6 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    sub_1D8C7590C(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v10;
  }

  return result;
}

void sub_1D8C71A08(uint64_t a1, char a2, __int16 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 88);
  if ((a2 & 1) == 0)
  {
    if ((*(*a1 + 40) & 1) == 0)
    {
      v3[6] = *(v3 + 9);
      v3[7] = 0;
      v3[8] = 0;
      v3[9] = 0;
      *(v3 + 40) = a3;

      v12 = *(v6 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13[0] = *(v6 + 16);
      v10 = (v3 + 6);
      goto LABEL_7;
    }

LABEL_5:
    v11 = *(*a1 + 96);

    sub_1D8C75164(v7, v5, v13);

    sub_1D8C31D74(v13[0], v13[1], v13[2], v13[3], v14);
    goto LABEL_8;
  }

  if (*(*a1 + 40))
  {
    goto LABEL_5;
  }

  *v3 = *(v3 + 9);
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  *(v3 + 16) = a3;

  v8 = *(v6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(v6 + 16);
  v10 = v3;
LABEL_7:
  sub_1D8C7590C(v10, v7, v5, isUniquelyReferenced_nonNull_native);

  *(v6 + 16) = v13[0];
LABEL_8:

  free(v3);
}

uint64_t sub_1D8C71C98(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = -4096;
  }

  else
  {
    v6 = 1280;
  }

  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v6;

  return sub_1D8C6E80C(&v8, v3, v4);
}

uint64_t sub_1D8C71D18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a2)
  {
    sub_1D8C75164(a3, a4, &v12);

    return sub_1D8C31D74(v12, v13, v14, v15, v16);
  }

  else
  {
    v12 = a1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a5;
    v9 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v5 + 16);
    sub_1D8C7590C(&v12, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v11;
  }

  return result;
}

void sub_1D8C71E84(uint64_t a1, char a2, __int16 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 112);
  v7 = *(*a1 + 96);
  if ((a2 & 1) == 0)
  {
    if ((*(*a1 + 88) & 1) == 0)
    {
      v3[5] = v3[10];
      v3[6] = 0;
      v3[7] = 0;
      v3[8] = 0;
      *(v3 + 36) = a3;

      v12 = *(v6 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13[0] = *(v6 + 16);
      v10 = (v3 + 5);
      goto LABEL_7;
    }

LABEL_5:
    v11 = *(*a1 + 104);

    sub_1D8C75164(v7, v5, v13);

    sub_1D8C31D74(v13[0], v13[1], v13[2], v13[3], v14);
    goto LABEL_8;
  }

  if (*(*a1 + 88))
  {
    goto LABEL_5;
  }

  *v3 = v3[10];
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  *(v3 + 16) = a3;

  v8 = *(v6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(v6 + 16);
  v10 = v3;
LABEL_7:
  sub_1D8C7590C(v10, v7, v5, isUniquelyReferenced_nonNull_native);

  *(v6 + 16) = v13[0];
LABEL_8:

  free(v3);
}

uint64_t sub_1D8C71FA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
  v48 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v47 = result;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v51 = *v26;
      v28 = (*(v5 + 56) + 40 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      if ((v48 & 1) == 0)
      {

        sub_1D8C2F16C(v29, v30, v31, v32, v33);
      }

      v50 = v31;
      v34 = v30;
      v35 = v29;
      v36 = *(v47 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v8 = v47;
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v50;
        v18 = v33;
        v19 = v32;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v18 = v33;
      v19 = v32;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (*(v47 + 48) + 16 * v16);
      *v20 = v51;
      v20[1] = v27;
      v21 = (*(v47 + 56) + 40 * v16);
      *v21 = v35;
      v21[1] = v34;
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v18;
      ++*(v47 + 16);
      v5 = v46;
      v13 = v49;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v44 = 1 << *(v5 + 32);
      if (v44 >= 64)
      {
        bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v44;
      }

      *(v5 + 16) = 0;
    }

    v3 = v45;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D8C722BC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v52 = a2;
  result = sub_1D8C85224();
  v11 = result;
  if (*(v8 + 16))
  {
    v48 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v50 = v8;
    v51 = result;
    while (v16)
    {
      v25 = __clz(__rbit64(v16));
      v53 = (v16 - 1) & v16;
LABEL_17:
      v28 = v25 | (v12 << 6);
      v29 = (*(v8 + 48) + 16 * v28);
      v30 = v29[1];
      v55 = *v29;
      v31 = *(v8 + 56) + 40 * v28;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = *(v31 + 24);
      v36 = *(v31 + 32);
      if ((v52 & 1) == 0)
      {

        a5(v32, v33, v34, v35, v36);
      }

      v54 = v34;
      v37 = v33;
      v38 = v32;
      v39 = *(v51 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v11 = v51;
      v40 = -1 << *(v51 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v18 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v20 = v54;
        v21 = v35;
        v22 = v36;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v18 + 8 * v42);
          if (v46 != -1)
          {
            v19 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v41) & ~*(v18 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v20 = v54;
      v21 = v35;
      v22 = v36;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v23 = (*(v51 + 48) + 16 * v19);
      *v23 = v55;
      v23[1] = v30;
      v24 = *(v51 + 56) + 40 * v19;
      *v24 = v38;
      *(v24 + 8) = v37;
      *(v24 + 16) = v20;
      *(v24 + 24) = v21;
      *(v24 + 32) = v22;
      ++*(v51 + 16);
      v8 = v50;
      v16 = v53;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v27 = v13[v12];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v53 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v6 = v48;
      goto LABEL_35;
    }

    v47 = 1 << *(v8 + 32);
    v6 = v48;
    if (v47 >= 64)
    {
      bzero(v13, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v47;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_1D8C725E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB060, &qword_1D8C85C60);
  v42 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v42)
      {
        v44 = *v26;
        v43 = *(v26 + 16);
        v45 = *(v26 + 24);
        v46 = *(v26 + 8);
        v47 = *(v26 + 32);
        v49 = *(v26 + 36);
        v27 = *(v26 + 40);
        v50 = *(v26 + 48);
        v48 = *(v26 + 56);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 48);
        v52 = *(v26 + 32);
        v53 = v30;
        v51[0] = v28;
        v51[1] = v29;
        v48 = *(&v30 + 1);
        v50 = v30;
        v49 = DWORD1(v52);
        v27 = BYTE8(v52);
        v47 = v52;
        v45 = *(&v29 + 1);
        v46 = *(&v28 + 1);
        v43 = v29;
        v44 = v28;

        sub_1D8C2EE54(v51, v54);
      }

      v31 = *(v8 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v51[0]) = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v44;
      *(v18 + 8) = v46;
      *(v18 + 16) = v43;
      *(v18 + 24) = v45;
      *(v18 + 32) = v47;
      *(v18 + 36) = v49;
      *(v18 + 40) = v27;
      *(v18 + 48) = v50;
      *(v18 + 56) = v48;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D8C72964(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB010, &qword_1D8C85C10);
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v22 = *(v8 + 40);
      result = sub_1D8C853A4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D8C72BD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
  v40 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + (v22 << 6));
      if (v40)
      {
        v45 = *v26;
        v46 = v26[1];
        v47 = v26[2];
        v48 = v26[3];
      }

      else
      {
        v28 = v26[2];
        v27 = v26[3];
        v29 = v26[1];
        v41 = *v26;
        v42 = v29;
        v43 = v28;
        v44 = v27;

        sub_1D8C7629C(&v41, &v45);
        v45 = v41;
        v46 = v42;
        v47 = v43;
        v48 = v44;
      }

      v30 = *(v8 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + (v16 << 6));
      *v18 = v45;
      v18[1] = v46;
      v18[2] = v47;
      v18[3] = v48;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D8C72EF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
  v38 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D8C73194(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B8, &qword_1D8C88528);
  v48 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v47 = result;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v51 = *v26;
      v28 = *(v5 + 56) + 40 * v25;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v32 = *(v28 + 24);
      v33 = *(v28 + 32);
      if ((v48 & 1) == 0)
      {

        sub_1D8C60608(v29, v30, v31, v32, v33);
      }

      v50 = v31;
      v34 = v30;
      v35 = v29;
      v36 = *(v47 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v8 = v47;
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v50;
        v18 = v32;
        v19 = v33;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v18 = v32;
      v19 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (*(v47 + 48) + 16 * v16);
      *v20 = v51;
      v20[1] = v27;
      v21 = *(v47 + 56) + 40 * v16;
      *v21 = v35;
      *(v21 + 8) = v34;
      *(v21 + 16) = v17;
      *(v21 + 24) = v18;
      *(v21 + 32) = v19;
      ++*(v47 + 16);
      v5 = v46;
      v13 = v49;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v44 = 1 << *(v5 + 32);
      if (v44 >= 64)
      {
        bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v44;
      }

      *(v5 + 16) = 0;
    }

    v3 = v45;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D8C734B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB050, &qword_1D8C85C50);
  v46 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 32 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      if ((v46 & 1) == 0)
      {

        sub_1D8C2C5D0(v30, v31);
      }

      v48 = v30;
      v32 = v29;
      v33 = v28;
      v34 = *(v45 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v48;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v48;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v49;
      v19[1] = v26;
      v20 = (*(v45 + 56) + 32 * v16);
      *v20 = v33;
      v20[1] = v32;
      v20[2] = v17;
      v20[3] = v18;
      ++*(v45 + 16);
      v5 = v44;
      v13 = v47;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D8C737B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB058, &qword_1D8C85C58);
  v46 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 32 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      if ((v46 & 1) == 0)
      {

        sub_1D8C2C5D0(v29, v30);
      }

      v48 = v30;
      v32 = v29;
      v33 = v28;
      v34 = *(v45 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v48;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v48;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v49;
      v19[1] = v26;
      v20 = (*(v45 + 56) + 32 * v16);
      *v20 = v33;
      v20[1] = v32;
      v20[2] = v17;
      v20[3] = v18;
      ++*(v45 + 16);
      v5 = v44;
      v13 = v47;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D8C73AB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_1D8C2C5E4(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      result = sub_1D8C853A4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D8C73D2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB038, &qword_1D8C85C38);
  v38 = a2;
  result = sub_1D8C85224();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1D8C73FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1D8C85214();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = (*(v28 + 48) + v15);
        *v25 = v18;
        v25[1] = v17;
        v26 = (*(v28 + 56) + v14);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;

        result = sub_1D8C2F16C(v20, v21, v22, v23, v24);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void *sub_1D8C74198(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v30 = v3;
  v4 = *v3;
  v32 = sub_1D8C85214();
  if (*(v4 + 16))
  {
    result = (v32 + 64);
    v6 = ((1 << *(v32 + 32)) + 63) >> 6;
    if (v32 != v4 || result >= v4 + 64 + 8 * v6)
    {
      result = memmove(result, (v4 + 64), 8 * v6);
    }

    v8 = 0;
    *(v32 + 16) = *(v4 + 16);
    v9 = 1 << *(v4 + 32);
    v10 = *(v4 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v4 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v4 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = (*(v32 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v32 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;

        result = a3(v23, v24, v25, v26, v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v4 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v32;
  }

  return result;
}

void *sub_1D8C7435C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB060, &qword_1D8C85C60);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1D8C2EE54(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8C744FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB010, &qword_1D8C85C10);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8C74660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1D8C7629C(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8C74800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8C74968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B8, &qword_1D8C88528);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1D8C85214();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = *(v1 + 56) + v14;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = (*(v28 + 48) + v15);
        v25 = *(v19 + 32);
        *v24 = v18;
        v24[1] = v17;
        v26 = *(v28 + 56) + v14;
        *v26 = v20;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v25;

        result = sub_1D8C60608(v20, v21, v22, v23, v25);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void *sub_1D8C74B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB050, &qword_1D8C85C50);
  v27 = v0;
  v1 = *v0;
  v2 = sub_1D8C85214();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 56);
        v19 = (*(v1 + 48) + 16 * v16);
        v20 = v19[1];
        v16 *= 32;
        v21 = *(v18 + v16);
        v22 = *(v18 + v16 + 8);
        v23 = *(v18 + v16 + 16);
        v24 = *(v18 + v16 + 24);
        v25 = (*(v3 + 48) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v26 = (*(v3 + 56) + v16);
        *v26 = v21;
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;

        result = sub_1D8C2C5D0(v23, v24);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v3;
  }

  return result;
}

void *sub_1D8C74CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB058, &qword_1D8C85C58);
  v27 = v0;
  v1 = *v0;
  v2 = sub_1D8C85214();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v1 + 56);
        v19 = (*(v1 + 48) + 16 * v16);
        v20 = v19[1];
        v16 *= 32;
        v21 = *(v18 + v16);
        v22 = *(v18 + v16 + 8);
        v23 = *(v18 + v16 + 16);
        v24 = *(v18 + v16 + 24);
        v25 = (*(v3 + 48) + v17);
        *v25 = *v19;
        v25[1] = v20;
        v26 = (*(v3 + 56) + v16);
        *v26 = v21;
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;

        sub_1D8C2C5D0(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v3;
  }

  return result;
}

void *sub_1D8C74E8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_1D8C2C5E4(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8C74FF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB038, &qword_1D8C85C38);
  v2 = *v0;
  v3 = sub_1D8C85214();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

double sub_1D8C75164@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D8C4668C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8C74968();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    *(a3 + 32) = v15;
    sub_1D8C69D3C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -4096;
  }

  return result;
}

uint64_t sub_1D8C75294(__int128 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(__int128 *, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_1D8C4668C(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 < v23 || (a4 & 1) != 0)
    {
      sub_1D8C722BC(v23, a4 & 1, a5, a6, a7);
      v27 = *v12;
      v18 = sub_1D8C4668C(a2, a3);
      if ((v24 & 1) != (v28 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_1D8C74198(a5, a6, a7);
      v18 = v26;
    }
  }

  v29 = *v12;
  if (v24)
  {
    v30 = v29[7] + 40 * v18;

    return a8(a1, v30);
  }

  v29[(v18 >> 6) + 8] |= 1 << v18;
  v32 = (v29[6] + 16 * v18);
  *v32 = a2;
  v32[1] = a3;
  v33 = v29[7] + 40 * v18;
  v34 = *a1;
  v35 = a1[1];
  *(v33 + 32) = *(a1 + 32);
  *v33 = v34;
  *(v33 + 16) = v35;
  v36 = v29[2];
  v22 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29[2] = v37;
}

uint64_t sub_1D8C7546C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C725E4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C7435C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_1D8C763A4(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 6));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v26[2] = a1[2];
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_1D8C755F4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C72BD8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C74660();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_1D8C76240(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 6));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v26[2] = a1[2];
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_1D8C7577C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C71FA8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C73FD4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1D8C762F8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_1D8C7590C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C73194(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C74968();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1D8C7645C(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t keypath_get_1Tm@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  result = a3(*a2, a2[1]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t keypath_get_17Tm@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  result = a3(*a2, a2[1]);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t keypath_get_21Tm@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  result = a3(*a2, a2[1]);
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_1D8C75B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1D8C4668C(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1D8C734B4(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_1D8C4668C(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1D8C74B2C();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;

    return sub_1D8C2C670(v32, v33);
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v35 = (v28[6] + 16 * v17);
  *v35 = a5;
  v35[1] = a6;
  v36 = (v28[7] + 32 * v17);
  *v36 = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v37 = v28[2];
  v21 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v38;
}

uint64_t sub_1D8C75D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1D8C4668C(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1D8C737B4(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_1D8C4668C(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1D8C74CDC();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;

    sub_1D8C2C670(v31, v32);
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v35 = (v28[6] + 16 * v17);
  *v35 = a5;
  v35[1] = a6;
  v36 = (v28[7] + 32 * v17);
  *v36 = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v37 = v28[2];
  v21 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v38;
}

unint64_t sub_1D8C75F08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D8C46878(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C73AB4(v16, a4 & 1);
      v20 = *v5;
      result = sub_1D8C46878(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D8C74E8C();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v26 = (v22[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v22[2];
    v15 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v15)
    {
      v22[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = *v23;
  v25 = v23[1];
  *v23 = a1;
  v23[1] = a2;

  return sub_1D8C2C684(v24, v25);
}

uint64_t sub_1D8C76068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C4668C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D8C73D2C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1D8C4668C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D8C74FF4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_1D8C76354(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t OneofManifest.init(name:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1D8C2C670(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OneofManifest.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OneofManifest.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OneofManifest.options.getter()
{
  v1 = *(v0 + 16);
  sub_1D8C2C5D0(v1, *(v0 + 24));
  return v1;
}

uint64_t OneofManifest.options.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C2C670(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1D8C76618@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D8C84684();
    if (v10)
    {
      v11 = sub_1D8C846A4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D8C84694();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D8C84684();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D8C846A4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D8C84694();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D8C76848(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D8C769D8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D8C2C684(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1D8C76618(v14, a3, a4, &v13);
  v10 = v4;
  sub_1D8C2C684(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1D8C769D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D8C84684();
  v11 = result;
  if (result)
  {
    result = sub_1D8C846A4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D8C84694();
  sub_1D8C76618(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D8C76A90(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D8C2C5E4(a3, a4);
          return sub_1D8C76848(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s17PoirotSchematizer13OneofManifestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D8C852A4(), result = 0, (v7 & 1) != 0))
  {
    if (v3 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_1D8C2C5D0(v2, v3);
        sub_1D8C2C5D0(v5, v4);
        sub_1D8C2C670(v2, v3);
        return 1;
      }
    }

    else if (v4 >> 60 != 15)
    {
      sub_1D8C2C5D0(v2, v3);
      sub_1D8C2C5D0(v5, v4);
      v9 = sub_1D8C76A90(v2, v3, v5, v4);
      sub_1D8C2C670(v5, v4);
      sub_1D8C2C670(v2, v3);
      return (v9 & 1) != 0;
    }

    sub_1D8C2C5D0(v2, v3);
    sub_1D8C2C5D0(v5, v4);
    sub_1D8C2C670(v2, v3);
    sub_1D8C2C670(v5, v4);
    return 0;
  }

  return result;
}

uint64_t sub_1D8C76D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C76D80(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8C76DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    sub_1D8C2C5E4(v6, v7);
  }

  else
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  sub_1D8C2C670(0, 0xF000000000000000);
  v8 = sub_1D8C78004();
  if (v2)
  {

    return sub_1D8C2C670(v6, v7);
  }

  else
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v30 = a2;
      v31 = v3;
      v32 = v7;
      v33 = v6;
      v34 = MEMORY[0x1E69E7CC0];
      v10 = v8;
      sub_1D8C5DFF4(0, v9, 0);
      v11 = v34;
      v12 = (v10 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        ObjectType = swift_getObjectType();
        v16 = *(v14 + 8);
        v17 = *(v16 + 8);
        swift_unknownObjectRetain();
        v18 = v17(ObjectType, v16);
        v35 = v19;
        v20 = (*(v14 + 16))(ObjectType, v14);
        swift_unknownObjectRelease();
        if (v20)
        {
          v21 = *(v20 + 32);
          v22 = *(v20 + 40);
          sub_1D8C2C5E4(v21, v22);
        }

        else
        {
          v21 = 0;
          v22 = 0xF000000000000000;
        }

        sub_1D8C2C670(0, 0xF000000000000000);
        v24 = *(v34 + 16);
        v23 = *(v34 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D8C5DFF4((v23 > 1), v24 + 1, 1);
        }

        *(v34 + 16) = v24 + 1;
        v25 = (v34 + 32 * v24);
        v25[4] = v18;
        v25[5] = v35;
        v25[6] = v21;
        v25[7] = v22;
        v12 += 2;
        --v9;
      }

      while (v9);

      v7 = v32;
      v6 = v33;
      a2 = v30;
      v3 = v31;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v26 = *(v3 + 72);

    v29 = sub_1D8C77048(v27);

    *a2 = v29;
    a2[1] = v11;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D8C77048(uint64_t a1)
{
  v2 = v1;
  v38 = MEMORY[0x1E69E7CC8];
  v59 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(a1 + 56) + (v12 << 6));
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[3];
    v52 = v16[2];
    v53 = v19;
    v50 = v18;
    v51 = v17;
    v54[0] = v15;
    v54[1] = v14;
    v55 = v18;
    v56 = v17;
    v57 = v52;
    v58 = v19;
    if ((*(&v52 + 1) & 0x8000000000000000) != 0)
    {
      v37 = *(&v50 + 1);
      sub_1D8C7629C(&v50, v40);
      sub_1D8C7629C(&v50, v40);

      sub_1D8C2C764(v37, v49);
      if (v2)
      {
        goto LABEL_26;
      }

      v45 = v49[0];
      v46 = v49[1];
      v47 = v49[2];
      v48 = v49[3];
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v20 = v38;
      v21 = *(v38 + 16);
      if (*(v38 + 24) <= v21)
      {
        sub_1D8C725E4(v21 + 1, 1);
        v20 = v59;
      }

      v38 = v20;
      v22 = *(v20 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v24 = v38 + 64;
      v25 = -1 << *(v38 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v38 + 64 + 8 * (v26 >> 6))) != 0)
      {
        v28 = __clz(__rbit64((-1 << v26) & ~*(v38 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
        v2 = 0;
      }

      else
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        v2 = 0;
        do
        {
          if (++v27 == v30 && (v29 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = *(v24 + 8 * v27);
        }

        while (v32 == -1);
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      }

      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (*(v38 + 48) + 16 * v28);
      *v33 = v15;
      v33[1] = v14;
      v34 = (*(v38 + 56) + (v28 << 6));
      v35 = v46;
      *v34 = v45;
      v34[1] = v35;
      v36 = v48;
      v34[2] = v47;
      v34[3] = v36;
      ++*(v38 + 16);
      v39[2] = v43;
      v39[3] = v44;
      v39[0] = v41;
      v39[1] = v42;
      sub_1D8C7C67C(v39);
    }

    else
    {
      sub_1D8C7629C(&v50, v40);

      sub_1D8C51FD4(v54, &qword_1ECAAB3C8, &qword_1D8C888E8);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_27;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  sub_1D8C51FD4(v54, &qword_1ECAAB3C8, &qword_1D8C888E8);

LABEL_27:

  return v38;
}

uint64_t sub_1D8C7737C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = *v5;
  v10 = *a3;
  v87 = a3[1];
  v11 = a3[2];
  v83 = a3[3];
  v5[8] = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x1E69E7CC0];
  v7[9] = sub_1D8C2DF64(MEMORY[0x1E69E7CC0]);
  v13 = v7 + 9;
  v7[10] = sub_1D8C2E100(v12);
  v7[11] = sub_1D8C2E218(v12);
  v88 = v10;
  *&v94 = sub_1D8C51504(v10);

  sub_1D8C34214(&v94);
  v84 = v6;
  if (!v6)
  {

    v14 = v94;
    v15 = *(v94 + 16);
    v81 = v11;
    v82 = a2;
    if (v15)
    {
      v99 = v12;
      sub_1D8C5DF74(0, v15, 0);
      v12 = v99;
      v16 = v15 - 1;
      for (i = 32; ; i += 80)
      {
        v94 = *(v14 + i);
        v18 = *(v14 + i + 16);
        v19 = *(v14 + i + 32);
        v20 = *(v14 + i + 64);
        v97 = *(v14 + i + 48);
        v98 = v20;
        v95 = v18;
        v96 = v19;
        sub_1D8C34EF8(&v94, v93);
        sub_1D8C2F118(&v95);
        v99 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D8C5DF74((v21 > 1), v22 + 1, 1);
          v12 = v99;
        }

        v23 = v94;
        *(v12 + 16) = v22 + 1;
        *(v12 + 16 * v22 + 32) = v23;
        if (!v16)
        {
          break;
        }

        --v16;
      }

      v13 = v7 + 9;
    }

    else
    {
    }

    v85 = v12;
    v7[5] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB018, &qword_1D8C85C18);
    v24 = sub_1D8C85214();
    v25 = v24;
    v26 = 0;
    v27 = *(v88 + 64);
    v28 = 1 << *(v88 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v32 = v24 + 64;
    if ((v29 & v27) != 0)
    {
      while (1)
      {
        v33 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
LABEL_19:
        v36 = v33 | (v26 << 6);
        v37 = (*(v88 + 48) + 16 * v36);
        v39 = *v37;
        v38 = v37[1];
        v40 = *(v88 + 56) + (v36 << 6);
        v41 = *v40;
        v42 = *(v40 + 16);
        v43 = *(v40 + 48);
        v96 = *(v40 + 32);
        v97 = v43;
        v94 = v41;
        v95 = v42;
        v44 = (v25[6] + 16 * v36);
        v45 = v43;
        v46 = vandq_s8(v96, xmmword_1D8C88630);
        v47 = v94;
        v48 = v95;
        *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        *v44 = v39;
        v44[1] = v38;
        v49 = (v25[7] + (v36 << 6));
        *v49 = v47;
        v49[1] = v48;
        v49[2] = v46;
        v49[3] = v45;
        v50 = v25[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          break;
        }

        v25[2] = v52;

        sub_1D8C2EE54(&v94, v93);
        if (!v30)
        {
          goto LABEL_14;
        }
      }

LABEL_48:
      __break(1u);
    }

    else
    {
LABEL_14:
      v34 = v26;
      while (1)
      {
        v26 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (v26 >= v31)
        {
          break;
        }

        v35 = *(v88 + 64 + 8 * v26);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v30 = (v35 - 1) & v35;
          goto LABEL_19;
        }
      }

      swift_beginAccess();
      v53 = *v13;
      *v13 = v25;

      v54 = *(v87 + 16);
      v55 = MEMORY[0x1E69E7CC0];
      if (v54)
      {
        v79 = v7;
        *&v94 = MEMORY[0x1E69E7CC0];

        sub_1D8C5DF54(0, v54, 0);
        v56 = v87;
        v57 = 0;
        v55 = v94;
        v89 = v54;
        v90 = *(v87 + 16);
        v58 = (v87 + 56);
        while (v90 != v57)
        {
          if (v57 >= *(v56 + 16))
          {
            goto LABEL_46;
          }

          if (v57 == 0x80000000)
          {
            goto LABEL_47;
          }

          v59 = *(v58 - 3);
          v60 = *(v58 - 2);
          v61 = *(v58 - 1);
          v62 = *v58;

          sub_1D8C2C5D0(v61, v62);
          *&v94 = v55;
          v64 = v55[2];
          v63 = v55[3];
          v91 = v64 + 1;

          if (v64 >= v63 >> 1)
          {
            sub_1D8C5DF54((v63 > 1), v91, 1);
            v56 = v87;
            v55 = v94;
          }

          v55[2] = v91;
          v65 = &v55[7 * v64];
          v65[4] = v59;
          v65[5] = v60;
          v65[6] = v57;
          v65[7] = v59;
          v65[8] = v60;
          v65[9] = v61;
          v65[10] = v62;
          v58 += 4;
          if (v89 == ++v57)
          {

            v7 = v79;
            goto LABEL_31;
          }
        }

        goto LABEL_45;
      }

LABEL_31:
      if (v55[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB008, &unk_1D8C88900);
        v66 = sub_1D8C85234();
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC8];
      }

      *&v94 = v66;
      sub_1D8C7B0E0(v55, 1, &v94);
      v67 = v94;
      v68 = *(v94 + 16);
      if (v68)
      {
        v69 = sub_1D8C5DED0(*(v94 + 16), 0);
        v92 = sub_1D8C60280(&v94, v69 + 4, v68, v67);
        swift_retain_n();
        sub_1D8C2F110();
        if (v92 != v68)
        {
          goto LABEL_50;
        }
      }

      else
      {

        v69 = MEMORY[0x1E69E7CC0];
      }

      *&v94 = v69;
      sub_1D8C5F834(&v94);

      v7[6] = v94;
      swift_beginAccess();
      v70 = v7[11];
      v7[11] = v67;

      v71 = *(v85 + 16);

      v72 = *(v67 + 16);

      if (!__OFADD__(v71, v72))
      {
        v7[12] = v71 + v72;
        ObjectType = swift_getObjectType();
        if ((sub_1D8C4EE7C(ObjectType, a5) & 1) != 0 && v83 >> 60 != 15)
        {
          sub_1D8C2C5E4(v81, v83);
          sub_1D8C4EFD8(ObjectType, a5);
          v76 = v75;
          v77 = swift_getObjectType();
          v74 = (*(v76 + 80))(v81, v83, v77, v76);

          swift_unknownObjectRelease();
          sub_1D8C2C670(v81, v83);
          sub_1D8C2C670(v81, v83);
        }

        else
        {

          sub_1D8C2C670(v81, v83);
          v74 = 0;
        }

        v7[2] = a1;
        v7[3] = v82;
        v7[4] = v74;
        v7[8] = a5;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        return v7;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
  }

  MEMORY[0x1DA725E90](v84);

  __break(1u);
  return result;
}

void sub_1D8C77B98()
{
  v2 = v1;
  v3 = v0;
  if (v0[12] && (v4 = v0[5], (v5 = *(v4 + 16)) != 0))
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      swift_beginAccess();
      v10 = v3[9];
      v11 = *(v10 + 16);

      if (!v11 || (v12 = sub_1D8C4668C(v9, v8), (v13 & 1) == 0))
      {
        swift_endAccess();
        *&v27 = 0;
        *(&v27 + 1) = 0xE000000000000000;
        sub_1D8C85124();

        *&v27 = 0x2220616D65686353;
        *(&v27 + 1) = 0xE800000000000000;
        MEMORY[0x1DA7255C0](v3[2], v3[3]);
        MEMORY[0x1DA7255C0](0xD000000000000016, 0x80000001D8C8C740);
        MEMORY[0x1DA7255C0](v9, v8);
        MEMORY[0x1DA7255C0](34, 0xE100000000000000);
        v19 = v27;
        sub_1D8C2F8AC();
        swift_allocError();
        *v20 = v19;
        *(v20 + 16) = 3;
        swift_willThrow();

        return;
      }

      v14 = (*(v10 + 56) + (v12 << 6));
      v16 = v14[2];
      v15 = v14[3];
      v17 = v14[1];
      v27 = *v14;
      v28 = v17;
      v29 = v16;
      v30 = v15;
      swift_endAccess();
      if ((*(&v29 + 1) & 0x8000000000000000) != 0)
      {
      }

      else
      {
        v22[0] = v27;
        v22[1] = v28;
        v22[3] = v30;
        v23[0] = v27;
        v22[2] = v29;
        v23[1] = v28;
        v24 = v29;
        v26 = v30;
        v25 = *(&v29 + 1) & 0x7FFFFFFFFFFFFFFFLL;
        sub_1D8C7629C(&v27, v21);
        sub_1D8C2EE54(v23, v21);
        sub_1D8C7843C(v9, v8, v22);

        if (v2)
        {
          sub_1D8C7C67C(&v27);
          sub_1D8C7C67C(&v27);
          return;
        }

        sub_1D8C7C67C(&v27);
        sub_1D8C7C67C(&v27);
        swift_unknownObjectRelease();
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    swift_beginAccess();
    v18 = v3[10];
  }
}

uint64_t sub_1D8C77E10(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = *(v2 + 72);
  if (*(v7 + 16) && (v8 = sub_1D8C4668C(a1, a2), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + (v8 << 6));
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[1];
    v24 = *v10;
    v25 = v13;
    v26 = v12;
    v27 = v11;
    swift_endAccess();
    v14 = v24;
    if ((*(&v26 + 1) & 0x8000000000000000) != 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v19[0] = v24;
      v19[1] = v25;
      v19[2] = v26;
      v19[3] = v27;
      v20[0] = v24;
      v20[1] = v25;
      v21 = v26;
      v23 = v27;
      v22 = *(&v26 + 1) & 0x7FFFFFFFFFFFFFFFLL;
      sub_1D8C2EE54(v20, &v18);
      v14 = v4;
      v15 = sub_1D8C7843C(a1, a2, v19);
      if (!v3)
      {
        v14 = v15;
      }

      sub_1D8C7C67C(&v24);
    }
  }

  else
  {
    swift_endAccess();
    sub_1D8C85124();

    *&v24 = 0x2220616D65686353;
    *(&v24 + 1) = 0xE800000000000000;
    MEMORY[0x1DA7255C0](*(v4 + 16), *(v4 + 24));
    MEMORY[0x1DA7255C0](0xD000000000000016, 0x80000001D8C8C740);
    MEMORY[0x1DA7255C0](a1, a2);
    MEMORY[0x1DA7255C0](34, 0xE100000000000000);
    v14 = 0x2220616D65686353;
    sub_1D8C2F8AC();
    swift_allocError();
    *v16 = v24;
    *(v16 + 16) = 3;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1D8C78004()
{
  swift_beginAccess();
  v2 = *(v0 + 88);

  v4 = sub_1D8C7C884(v3, sub_1D8C7C868);

  if (v1)
  {
    return v4;
  }

  v14 = v4;

  sub_1D8C7BA70(&v14);

  v5 = v14;
  v6 = v14[2];
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8C5DFB4(0, v6, 0);
  v7 = 0;
  v8 = 5;
  v4 = v14;
  while (v7 < v5[2])
  {
    v9 = *&v5[v8];
    v14 = v4;
    v11 = v4[2];
    v10 = v4[3];
    v13 = v9;
    swift_unknownObjectRetain();
    if (v11 >= v10 >> 1)
    {
      sub_1D8C5DFB4((v10 > 1), v11 + 1, 1);
      v4 = v14;
    }

    ++v7;
    v4[2] = v11 + 1;
    *&v4[2 * v11 + 4] = v13;
    v8 += 3;
    if (v6 == v7)
    {

      return v4;
    }
  }

  __break(1u);
  MEMORY[0x1DA725E90](0);

  __break(1u);
  return result;
}

uint64_t sub_1D8C781AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  if (*a3 < 0)
  {
    v6 = a3[1];
    swift_unknownObjectRetain();
  }

  else
  {
    v8[0] = a3[1];
    v8[1] = v5;
    v9 = *(a3 + 3);
    sub_1D8C78228(v3, v8);
  }

  return v3;
}

uint64_t sub_1D8C78228(unsigned int a1, uint64_t *a2)
{
  v4 = v2;
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 8;
    swift_willThrow();
    return v8;
  }

  v11 = Strong;
  v22 = v2[8];
  v23[0] = v7;
  v23[1] = v6;
  v23[2] = v9;
  v23[3] = v8;

  sub_1D8C2C5D0(v9, v8);
  v12 = sub_1D8C78688(a1);
  if (v3)
  {

    sub_1D8C2C670(v9, v8);
    swift_unknownObjectRelease();
    return v8;
  }

  v14 = v12;
  type metadata accessor for ProtoOneOfSchema();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_1D8C302CC(v23, v14, v11, v22);
  v8 = v15;
  v24[0] = a1 | 0x8000000000000000;
  v24[1] = v15;
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = &off_1F5450050;
  swift_beginAccess();

  v17 = v4[11];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v4[11];
  v4[11] = 0x8000000000000000;
  sub_1D8C7577C(v24, v7, v6, isUniquelyReferenced_nonNull_native);

  v4[11] = v25;
  swift_endAccess();
  result = swift_unknownObjectRelease();
  v19 = v4[12];
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (!v20)
  {
    v4[12] = v21;
    if (!v21)
    {
      v4[8] = 0;
      swift_unknownObjectWeakAssign();
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C7843C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = v3;
  v10 = a3[1];
  v31 = *a3;
  v32 = v10;
  v11 = a3[3];
  v33 = a3[2];
  v34 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 8;
    swift_willThrow();
    return v5;
  }

  v13 = Strong;
  v5 = v6[8];
  v14 = a3[1];
  v29[0] = *a3;
  v29[1] = v14;
  v15 = a3[3];
  v29[2] = a3[2];
  v29[3] = v15;
  type metadata accessor for ProtoFieldSchema();
  swift_allocObject();

  sub_1D8C2EE54(&v31, v28);
  swift_unknownObjectRetain();
  v16 = sub_1D8C6D2C8(a1, a2, v29, v13, v5);
  if (v4)
  {
    swift_unknownObjectRelease();
    return v5;
  }

  v5 = v16;
  *&v30[0] = v16;
  *(&v30[0] + 1) = &off_1F54516D0;
  v30[2] = xmmword_1D8C88640;
  swift_beginAccess();

  v18 = v6[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v6[9];
  v6[9] = 0x8000000000000000;
  sub_1D8C755F4(v30, a1, a2, isUniquelyReferenced_nonNull_native);

  v6[9] = v27;
  swift_endAccess();
  v20 = *(&v32 + 1);
  swift_beginAccess();

  v21 = v6[10];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v6[10];
  v6[10] = 0x8000000000000000;
  sub_1D8C7C6AC(v5, v20, v22, &v27);
  v6[10] = v27;
  swift_endAccess();
  result = swift_unknownObjectRelease();
  v24 = v6[12];
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (!v25)
  {
    v6[12] = v26;
    if (!v26)
    {
      v6[8] = 0;
      swift_unknownObjectWeakAssign();
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C78688(int a1)
{
  swift_beginAccess();
  v2 = *(v1 + 72);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + 72);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v2;
  if (v6)
  {
    while (1)
    {
LABEL_12:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      v13 = (*(v2 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(v2 + 56) + (v12 << 6));
      v18 = v16[2];
      v17 = v16[3];
      v19 = v16[1];
      v43 = *v16;
      v44 = v19;
      v45 = v18;
      v46 = v17;
      v47[0] = v15;
      v47[1] = v14;
      v48 = v43;
      v49 = v19;
      v50 = v18;
      v51 = v17;
      if ((((*(&v18 + 1) >> 8) | (((HIDWORD(v18) >> 8) | (SHIBYTE(v18) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        v40 = v15;
        v23 = *(&v43 + 1);
        v24 = v14;
        ObjectType = swift_getObjectType();
        v52 = *(v23 + 40);
        v36 = v24;

        sub_1D8C7629C(&v43, v42);
        v35 = ObjectType;
        v26 = v52(ObjectType, v23);
        v2 = v39;
        if ((v26 & 0x100000000) != 0 || v26 != a1)
        {
          goto LABEL_7;
        }

        v27 = (*(v23 + 48))(v35);
        if (v37)
        {
LABEL_32:

          sub_1D8C51FD4(v47, &qword_1ECAAB3C8, &qword_1D8C888E8);
        }

        v20 = v27;
LABEL_20:

        sub_1D8C51FD4(v47, &qword_1ECAAB3C8, &qword_1D8C888E8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1D8C4A36C(0, v38[2] + 1, 1, v38);
        }

        v29 = v38[2];
        v28 = v38[3];
        v30 = v36;
        if (v29 >= v28 >> 1)
        {
          v38 = sub_1D8C4A36C((v28 > 1), v29 + 1, 1, v38);
          v30 = v36;
        }

        v38[2] = v29 + 1;
        v31 = &v38[3 * v29];
        v31[4] = v40;
        v31[5] = v30;
        v31[6] = v20;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (BYTE8(v45))
        {
        }

        else
        {
          v40 = v15;
          v20 = *(&v44 + 1);
          v21 = DWORD1(v45);

          if (v21 == a1)
          {
            v36 = v22;
            sub_1D8C7629C(&v43, v42);
            goto LABEL_20;
          }
        }

        sub_1D8C7629C(&v43, v42);
LABEL_7:
        sub_1D8C51FD4(v47, &qword_1ECAAB3C8, &qword_1D8C888E8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
LABEL_8:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  if (v38[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
    v32 = sub_1D8C85234();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC8];
  }

  v47[0] = v32;

  sub_1D8C7B514(v33, 1, v47);
  if (v37)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    return v47[0];
  }

  return result;
}

uint64_t sub_1D8C78A6C(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = *(v1 + 80);
  if (*(v5 + 16))
  {
    v6 = sub_1D8C46878(a1);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      swift_endAccess();
      swift_unknownObjectRetain();
      return v9;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v37 = v3;
  v11 = *(v3 + 72);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  for (i = v11; v15; v18 = v19)
  {
    v19 = v18;
LABEL_11:
    v20 = __clz(__rbit64(v15)) | (v19 << 6);
    v21 = (*(v11 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = (*(v11 + 56) + (v20 << 6));
    v26 = v24[2];
    v25 = v24[3];
    v27 = v24[1];
    v49 = *v24;
    v50 = v27;
    v51 = v26;
    v52 = v25;
    v42 = v23;
    v53[0] = v23;
    v53[1] = v22;
    v54 = v49;
    v55 = v27;
    v56 = v26;
    v57 = v25;
    v58 = v22;
    if ((*(&v26 + 1) & 0x8000000000000000) != 0)
    {
      v29 = *(&v49 + 1);
      v39 = *(&v49 + 1);
      v30 = v49;
      ObjectType = swift_getObjectType();
      v40 = *(v29 + 48);
      v41 = ObjectType;

      sub_1D8C7629C(&v49, v45);
      v9 = v30;
      v32 = v40(v41, v39);
      if (v2)
      {

        sub_1D8C51FD4(v53, &qword_1ECAAB3C8, &qword_1D8C888E8);

        return v9;
      }

      v11 = i;
      if (v32 == a1)
      {
LABEL_20:

        v9 = v49;
        if ((*(&v51 + 1) & 0x8000000000000000) != 0)
        {
          swift_unknownObjectRetain();
          sub_1D8C51FD4(v53, &qword_1ECAAB3C8, &qword_1D8C888E8);
        }

        else
        {
          v44[0] = v49;
          v44[1] = v50;
          v44[2] = v51;
          v44[3] = v52;
          v45[0] = v49;
          v45[1] = v50;
          v46 = v51;
          v48 = v52;
          v47 = *(&v51 + 1) & 0x7FFFFFFFFFFFFFFFLL;
          sub_1D8C2EE54(v45, v43);
          v9 = v37;
          v36 = sub_1D8C7843C(v42, v58, v44);
          if (!v2)
          {
            v9 = v36;
          }

          sub_1D8C51FD4(v53, &qword_1ECAAB3C8, &qword_1D8C888E8);
          sub_1D8C7C67C(&v49);
        }

        return v9;
      }
    }

    else
    {
      v28 = *(&v50 + 1);

      sub_1D8C7629C(&v49, v45);
      if (v28 == a1)
      {
        goto LABEL_20;
      }
    }

    v15 &= v15 - 1;
    result = sub_1D8C51FD4(v53, &qword_1ECAAB3C8, &qword_1D8C888E8);
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      strcpy(v53, "With number ");
      BYTE5(v53[1]) = 0;
      HIWORD(v53[1]) = -5120;
      *&v49 = a1;
      v33 = sub_1D8C85274();
      MEMORY[0x1DA7255C0](v33);

      v34 = v53[0];
      v9 = v53[1];
      sub_1D8C2F8AC();
      swift_allocError();
      *v35 = v34;
      *(v35 + 8) = v9;
      *(v35 + 16) = 3;
      swift_willThrow();
      return v9;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C78E68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 88);
  if (*(v6 + 16) && (v7 = sub_1D8C4668C(a1, a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 40 * v7);
    v10 = *v9;
    a1 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    swift_endAccess();
    if (v10 < 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v18[0] = a1;
      v18[1] = v11;
      v18[2] = v12;
      v18[3] = v13;

      sub_1D8C2C5D0(v12, v13);
      v14 = sub_1D8C78228(v10, v18);
      if (v3)
      {
        sub_1D8C7C80C(v10, a1, v11, v12, v13);
      }

      else
      {
        v17 = v14;
        sub_1D8C7C80C(v10, a1, v11, v12, v13);
        return v17;
      }
    }
  }

  else
  {
    swift_endAccess();
    sub_1D8C2F8AC();
    swift_allocError();
    *v15 = xmmword_1D8C86190;
    *(v15 + 16) = 8;
    swift_willThrow();
  }

  return a1;
}

void *sub_1D8C78FE4(void *a1, uint64_t a2)
{
  v6 = sub_1D8C846C4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v18 = 0;
  v19 = sub_1D8C846B4() | 0x4000000000000000;
  v9 = *(v2 + 40);
  v14 = v2;
  v15 = &v18;
  v16 = a1;
  v17 = a2;
  sub_1D8C51838(sub_1D8C796F8, &v13, v9);
  v11 = v18;
  v10 = v19;
  if (v3)
  {
    sub_1D8C2C684(v18, v19);
  }

  else
  {
    type metadata accessor for SchematizedData();
    a1 = swift_allocObject();
    a1[2] = v2;
    a1[3] = &off_1F54519C8;
    a1[4] = v11;
    a1[5] = v10;

    sub_1D8C2C5E4(v11, v10);
    sub_1D8C2C684(v11, v10);
  }

  return a1;
}

uint64_t sub_1D8C790EC(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a5)
{
  result = sub_1D8C77E10(*a1, a1[1]);
  if (!v5)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    sub_1D8C79174(a3, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D8C79174(unint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((*(a5 + 16))(a4, a5) & 1) == 0)
  {
    return sub_1D8C79718(a1, a2, a3, a4, a5);
  }

  result = (*(a5 + 56))(&v14, a4, a5);
  if (!v5)
  {
    v12 = v14;
    v13 = v15;
    if (v15 >> 62 == 1 || v15 >> 62 == 2 && __PAIR128__(-1, -3) < __PAIR128__((v14 >= 0xF) + v15 + 0x7FFFFFFFFFFFFFFFLL, v14 - 15))
    {
      sub_1D8C79B78(a1, &v14, a2, a3, a4, a5);
    }

    else
    {
      sub_1D8C7A3F4(a1, &v14, a2, a3, a4, a5);
    }

    return sub_1D8C2BBF0(v12, v13);
  }

  return result;
}

uint64_t sub_1D8C792C0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  sub_1D8C7CBF4((v0 + 7));
  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];
}

void *sub_1D8C79318()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  sub_1D8C7CBF4((v0 + 7));
  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  return v0;
}

uint64_t sub_1D8C79370()
{
  sub_1D8C79318();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8C793E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_1D8C79438(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = (v4 >> 1) << 32;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      return result;
    }

    *(a1 + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C794CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 1) & 0x7FFFFFFF | ((*(a1 + 40) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D8C79528(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (-2 * a2);
      *(a1 + 40) = 2;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C7959C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 1 | (a2 << 63);
  *(result + 32) &= 0xFFFFFFFF00000001;
  *(result + 40) = v2;
  return result;
}

void *sub_1D8C79644(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SchematizedData();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1D8C2C5E4(a1, a2);
  return v8;
}

uint64_t sub_1D8C796BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = a2;
}

void *sub_1D8C79718(uint64_t a1, void *(*a2)(void *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a2(v40, v5, a5);
  if (v6)
  {
    return result;
  }

  v11 = v41;
  if (HIBYTE(v41) > 0xFEu)
  {
    return result;
  }

  v12 = v40[0];
  v13 = v40[1];
  v14 = v40[2];
  v15 = MEMORY[0x1EEE9AC00](result);
  if (v16 <= 4)
  {
    if (v16 <= 1)
    {
      if (!v16)
      {
        LODWORD(v34) = v12;
        v39 = 0;
LABEL_23:
        sub_1D8C79AA8(&v34, a1, v5, a4, a5);
        return sub_1D8C2AB08(&v34);
      }

      LODWORD(v34) = v12;
      LOBYTE(v16) = 1;
    }

    else
    {
      if (v16 != 2 && v16 != 3)
      {
        v42 = &v31;
        LODWORD(v34) = v12;
        LOBYTE(v16) = 4;
        goto LABEL_20;
      }

      v34 = v12;
    }

    v39 = v16;
    goto LABEL_23;
  }

  v42 = &v31;
  if (v16 <= 7)
  {
    if (v16 == 5)
    {
      v34 = v12;
      goto LABEL_20;
    }

    if (v16 == 6)
    {
      LOBYTE(v34) = v12 & 1;
      LOBYTE(v16) = 6;
LABEL_20:
      v39 = v16;
      sub_1D8C79AA8(&v34, a1, v5, a4, a5);
      return sub_1D8C2AB08(&v34);
    }

    v34 = v12;
    v35 = v13;
    v36 = v14;
    v37 = v17;
    LOBYTE(v38) = v11 & 1;
    v39 = 7;
    v32 = v17;
    sub_1D8C5C2AC(v12, v13, v14, v17, v11, 7u);
    v18 = a1;
    v19 = v5;
    v20 = a4;
    v21 = a5;
LABEL_25:
    sub_1D8C79AA8(&v34, v18, v19, v20, v21);
    sub_1D8C60430(v12, v13, v14, v32, v11);
    return sub_1D8C2AB08(&v34);
  }

  if (v16 == 8)
  {
    v22 = v17;
    sub_1D8C83A38(v12, v13, sub_1D8C7C65C);
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v26 = v22;
  }

  else
  {
    v33 = 0;
    if (v16 == 9)
    {
      v37 = MEMORY[0x1E6969080];
      v38 = &protocol witness table for Data;
      v34 = v12;
      v35 = v13;
      v39 = 9;
      v32 = v17;
      sub_1D8C5C2AC(v12, v13, v14, v17, v11, 9u);
      v18 = a1;
      v19 = v5;
      v20 = a4;
      v21 = a5;
      goto LABEL_25;
    }

    v27 = v17;
    MEMORY[0x1EEE9AC00](v15);
    v28 = *(v12 + 16);
    v29 = *(v12 + 24);
    swift_getObjectType();
    v30 = *(v12 + 40);
    MEMORY[0x1EEE9AC00](*(v12 + 32));
    MessageSchemaDescribing.schematizing<A>(data:block:)();
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v26 = v27;
  }

  return sub_1D8C60430(v23, v24, v25, v26, v11);
}

void *sub_1D8C79AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 56))(v13, a4, a5);
  if (!v5)
  {
    v11 = v13[0];
    v12 = v13[1];
    v10 = (*(a5 + 48))(a4, a5);
    sub_1D8C36388(a1, &v11, v10);
    return sub_1D8C2BBF0(v11, v12);
  }

  return result;
}

void *sub_1D8C79B78(unint64_t a1, unint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a2;
  v14 = a2[1];
  result = (a3)(&v78, v6, a6);
  if (v7)
  {
    return result;
  }

  v64 = v14;
  v16 = v82;
  if (HIBYTE(v82) < 0xFFu)
  {
    v21 = (*(a6 + 48))(a5, a6);
    v62 = a1;
    v60 = a4;
    v59 = a3;
    v61 = v13;
    if (v64 >> 62)
    {
      if (v64 >> 62 == 1)
      {
LABEL_9:
        v22 = a6;
        v23 = v6;
        v24 = 2;
LABEL_10:
        v25 = v24 | (8 * v21);
LABEL_20:
        v58 = v25;
        v26 = v64;
        v83 = v25;
        while (1)
        {
          v63 = &v56;
          v27 = v78;
          v28 = v79;
          v30 = v80;
          v29 = v81;
          v31 = MEMORY[0x1EEE9AC00](v21);
          *(&v56 - 4) = v62;
          *(&v56 - 6) = v32;
          *(&v56 - 2) = v61;
          *(&v56 - 1) = v26;
          v33 = MEMORY[0x1EEE9AC00](v31);
          *(&v56 - 2) = sub_1D8C7C52C;
          *(&v56 - 1) = v35;
          if (v34 <= 4)
          {
            break;
          }

          if (v34 > 7)
          {
            if (v34 != 8)
            {
              if (v34 == 9)
              {
                v75 = MEMORY[0x1E6969080];
                v76 = &protocol witness table for Data;
                v72 = v27;
                v73 = v28;
                v77 = 9;
                v37 = v27;
                v38 = v28;
                v39 = v30;
                v40 = v29;
                v41 = v16;
                v42 = 9;
                goto LABEL_51;
              }

              MEMORY[0x1EEE9AC00](v33);
              *(&v56 - 2) = sub_1D8C7C590;
              *(&v56 - 1) = v48;
              v50 = *(v27 + 16);
              v49 = *(v27 + 24);
              ObjectType = swift_getObjectType();
              v51 = *(v27 + 32);
              v52 = *(v27 + 40);
              v56 = v51;
              MEMORY[0x1EEE9AC00](ObjectType);
              *(&v56 - 2) = sub_1D8C7C640;
              *(&v56 - 1) = (&v56 - 4);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3C0, &qword_1D8C888E0);
              MessageSchemaDescribing.schematizing<A>(data:block:)();
              goto LABEL_57;
            }

            sub_1D8C5C2AC(v27, v28, v30, v29, v16, 8u);
            if ((v28 & 0x1000000000000000) != 0)
            {
              ObjectType = sub_1D8C7ABF8();
              v56 = v53;
              sub_1D8C60430(v27, v28, v30, v29, v16);
              v27 = ObjectType;
              v28 = v56;
              if ((v56 & 0x2000000000000000) != 0)
              {
                goto LABEL_55;
              }

LABEL_39:
              if ((v27 & 0x1000000000000000) != 0)
              {
                v43 = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v44 = v27 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v43 = sub_1D8C85144();
              }

              v45 = (v44 + v43);
              if (!v43)
              {
                v45 = 0;
              }

              v68 = MEMORY[0x1E69E6290];
              v69 = &protocol witness table for UnsafeRawBufferPointer;
              v66 = v43;
              v67 = v45;
              sub_1D8C2F900(&v66, &v72);
              v77 = 8;
              sub_1D8C2FD04(v58);
              v70 = v61;
              v71 = v26;
              v46 = &v70;
            }

            else
            {
              if ((v28 & 0x2000000000000000) == 0)
              {
                goto LABEL_39;
              }

LABEL_55:
              v70 = v27;
              v71 = v28 & 0xFFFFFFFFFFFFFFLL;
              v68 = MEMORY[0x1E69E6290];
              v69 = &protocol witness table for UnsafeRawBufferPointer;
              v66 = &v70;
              v67 = &v70 + (HIBYTE(v28) & 0xF);
              sub_1D8C2F900(&v66, &v72);
              v77 = 8;
              sub_1D8C2FD04(v58);
              v65[0] = v61;
              v65[1] = v26;
              v46 = v65;
            }

            sub_1D8C35E54(&v72, v46);
            sub_1D8C2AB08(&v72);
            __swift_destroy_boxed_opaque_existential_1(&v66);

            goto LABEL_57;
          }

          if (v34 == 5)
          {
            v72 = v27;
            v77 = 5;
            goto LABEL_52;
          }

          if (v34 != 6)
          {
            v72 = v27;
            v73 = v28;
            v74 = v30;
            v75 = v29;
            LOBYTE(v76) = v16 & 1;
            v77 = 7;
            v37 = v27;
            v38 = v28;
            v39 = v30;
            v40 = v29;
            v41 = v16;
            v42 = 7;
LABEL_51:
            sub_1D8C5C2AC(v37, v38, v39, v40, v41, v42);
LABEL_52:
            sub_1D8C2FD04(v58);
            v66 = v61;
            v67 = v26;
            sub_1D8C35E54(&v72, &v66);
            v84 = 0;
            sub_1D8C2AB08(&v72);
LABEL_57:
            v36 = v23;
            v59(&v72, v23, v22);
            goto LABEL_58;
          }

          LOBYTE(v72) = v27 & 1;
          v77 = 6;
          sub_1D8C2FD04(v58);
          v66 = v61;
          v67 = v26;
          sub_1D8C35E54(&v72, &v66);
          v36 = v23;
LABEL_49:
          v84 = 0;
          sub_1D8C2AB08(&v72);
          v59(&v72, v36, v22);
LABEL_58:
          v23 = v36;
          v17 = v72;
          v18 = v73;
          v19 = v74;
          v20 = v75;
          v16 = v76;
          v54 = v76 >> 8;
          v21 = sub_1D8C60430(v78, v79, v80, v81, v82);
          v78 = v17;
          v79 = v18;
          v80 = v19;
          v81 = v20;
          v82 = v16;
          v55 = v54 > 0xFE;
          v26 = v64;
          if (v55)
          {
            return sub_1D8C60430(v17, v18, v19, v20, v16);
          }
        }

        if (v34 <= 1)
        {
          v36 = v23;
          if (!v34)
          {
            LODWORD(v72) = v27;
            v77 = 0;
LABEL_48:
            sub_1D8C2FD04(v58);
            v66 = v61;
            v67 = v64;
            sub_1D8C35E54(&v72, &v66);
            goto LABEL_49;
          }

          LODWORD(v72) = v27;
          LOBYTE(v34) = 1;
        }

        else
        {
          v36 = v23;
          if (v34 != 2)
          {
            if (v34 == 3)
            {
              v72 = v27;
            }

            else
            {
              LODWORD(v72) = v27;
              LOBYTE(v34) = 4;
            }

            v77 = v34;
            sub_1D8C2FD04(v58);
            v66 = v61;
            v67 = v64;
            sub_1D8C35E54(&v72, &v66);
            v47 = v59;
            v84 = 0;
            sub_1D8C2AB08(&v72);
            v47(&v72, v23, v22);
            goto LABEL_58;
          }

          v72 = v27;
        }

        v77 = v34;
        goto LABEL_48;
      }

      if (__PAIR128__(0x8000000000000000, 7) < __PAIR128__(v64, v13))
      {
        if (__PAIR128__(0x8000000000000000, 11) >= __PAIR128__(v64, v13))
        {
          if (__PAIR128__((v13 >= 8) + v64 + 0x7FFFFFFFFFFFFFFFLL, v13 - 8) < 3)
          {
            v22 = a6;
            v23 = v6;
            v24 = 1;
            goto LABEL_10;
          }

LABEL_62:
          v22 = a6;
          v23 = v6;
          v24 = 5;
          goto LABEL_10;
        }

        if (__PAIR128__((v13 >= 0xD) + v64 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) < 2)
        {
          goto LABEL_9;
        }
      }

      else if (__PAIR128__(v64, v13) >= __PAIR128__(0x8000000000000000, 3) && __PAIR128__((v13 >= 5) + v64 + 0x7FFFFFFFFFFFFFFFLL, v13 - 5) >= 3)
      {
        goto LABEL_62;
      }
    }

    v22 = a6;
    v23 = v6;
    v25 = 8 * v21;
    goto LABEL_20;
  }

  v17 = v78;
  v18 = v79;
  v19 = v80;
  v20 = v81;
  return sub_1D8C60430(v17, v18, v19, v20, v16);
}

void *sub_1D8C7A3F4(uint64_t a1, uint64_t *a2, void *(*a3)(unsigned __int128 *__return_ptr, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *a2;
  v13 = a2[1];
  result = a3(&v78, v6, a6);
  v81 = v7;
  if (v7)
  {
    return result;
  }

  v63 = v13;
  v64 = v14;
  v61 = a1;
  v16 = v80;
  if (HIBYTE(v80) > 0xFEu)
  {
    return sub_1D8C60430(v78, *(&v78 + 1), v79, *(&v79 + 1), v16);
  }

  v17 = sub_1D8C846C4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1D8C846B4() | 0x4000000000000000;
  v76 = 0;
  v77 = v20;
  v21 = v6;
  v22 = v81;
  v23 = (*(a6 + 48))(a5, a6);
  if (v22)
  {
    v81 = v22;
    sub_1D8C2C684(0, v20);
    v25 = *(&v78 + 1);
    v24 = v78;
    v27 = *(&v79 + 1);
    v26 = v79;
    v28 = v16;
    return sub_1D8C60430(v24, v25, v26, v27, v28);
  }

  v60 = 8 * v23;
  v81 = a3;
  v62 = a4;
  do
  {
    v30 = *(&v78 + 1);
    v29 = v78;
    v31 = v79;
    v32 = MEMORY[0x1EEE9AC00](v23);
    v56[0] = &v76;
    v56[1] = v64;
    v57 = v63;
    if (v33 <= 4)
    {
      if (v33 <= 1)
      {
        if (!v33)
        {
          LODWORD(v72) = v29;
          v75 = 0;
LABEL_35:
          v66 = v64;
          v67 = v63;
          sub_1D8C35E54(&v72, &v66);
          sub_1D8C2AB08(&v72);
          goto LABEL_40;
        }

        LODWORD(v72) = v29;
        LOBYTE(v33) = 1;
      }

      else
      {
        if (v33 != 2)
        {
          if (v33 == 3)
          {
            *&v72 = v29;
          }

          else
          {
            LODWORD(v72) = v29;
            LOBYTE(v33) = 4;
          }

          v75 = v33;
          v66 = v64;
          v67 = v63;
          sub_1D8C35E54(&v72, &v66);
          sub_1D8C2AB08(&v72);
          goto LABEL_40;
        }

        *&v72 = v29;
      }

      v75 = v33;
      goto LABEL_35;
    }

    if (v33 <= 7)
    {
      if (v33 == 5)
      {
        *&v72 = v29;
        v75 = 5;
        v66 = v64;
        v67 = v63;
LABEL_38:
        sub_1D8C35E54(&v72, &v66);
        sub_1D8C2AB08(&v72);
        goto LABEL_40;
      }

      if (v33 == 6)
      {
        LOBYTE(v72) = v29 & 1;
        v75 = 6;
        v66 = v64;
        v67 = v63;
        sub_1D8C35E54(&v72, &v66);
        sub_1D8C2AB08(&v72);
        goto LABEL_40;
      }

      v72 = __PAIR128__(v30, v29);
      v73 = v31;
      LOBYTE(v74) = v16 & 1;
      v75 = 7;
      v66 = v64;
      v67 = v63;
      v34 = v29;
      v35 = v30;
      v37 = *(&v31 + 1);
      v36 = v31;
      v38 = v16;
      v39 = 7;
LABEL_37:
      sub_1D8C5C2AC(v34, v35, v36, v37, v38, v39);
      goto LABEL_38;
    }

    if (v33 == 8)
    {
      sub_1D8C5C2AC(v29, v30, v31, *(&v31 + 1), v16, 8u);
      if ((v30 & 0x1000000000000000) != 0)
      {
        v59 = sub_1D8C7ABF8();
        v58 = v47;
        sub_1D8C60430(v29, v30, v31, *(&v31 + 1), v16);
        v29 = v59;
        v30 = v58;
      }

      if ((v30 & 0x2000000000000000) != 0)
      {
        v70 = v29;
        v71 = v30 & 0xFFFFFFFFFFFFFFLL;
        v68 = MEMORY[0x1E69E6290];
        v69 = &protocol witness table for UnsafeRawBufferPointer;
        v66 = &v70;
        v67 = &v70 + (HIBYTE(v30) & 0xF);
        sub_1D8C2F900(&v66, &v72);
        v75 = 8;
        v65[0] = v64;
        v65[1] = v63;
        sub_1D8C35E54(&v72, v65);
      }

      else
      {
        if ((v29 & 0x1000000000000000) != 0)
        {
          v40 = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v41 = v29 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = sub_1D8C85144();
        }

        v42 = (v41 + v40);
        if (!v40)
        {
          v42 = 0;
        }

        v68 = MEMORY[0x1E69E6290];
        v69 = &protocol witness table for UnsafeRawBufferPointer;
        v66 = v40;
        v67 = v42;
        sub_1D8C2F900(&v66, &v72);
        v75 = 8;
        v70 = v64;
        v71 = v63;
        sub_1D8C35E54(&v72, &v70);
      }

      sub_1D8C2AB08(&v72);
      __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    else
    {
      if (v33 == 9)
      {
        *(&v73 + 1) = MEMORY[0x1E6969080];
        v74 = &protocol witness table for Data;
        v72 = __PAIR128__(v30, v29);
        v75 = 9;
        v66 = v64;
        v67 = v63;
        v34 = v29;
        v35 = v30;
        v37 = *(&v31 + 1);
        v36 = v31;
        v38 = v16;
        v39 = 9;
        goto LABEL_37;
      }

      MEMORY[0x1EEE9AC00](v32);
      v43 = *(v29 + 16);
      v44 = *(v29 + 24);
      swift_getObjectType();
      v45 = *(v29 + 40);
      MEMORY[0x1EEE9AC00](*(v29 + 32));
      MessageSchemaDescribing.schematizing<A>(data:block:)();
    }

LABEL_40:
    v81(&v72, v21, a6);
    v16 = v74;
    v46 = v74 >> 8;
    v23 = sub_1D8C60430(v78, *(&v78 + 1), v79, *(&v79 + 1), v80);
    v78 = v72;
    v79 = v73;
    v80 = v16;
  }

  while (v46 < 0xFF);
  v48 = v61;
  result = sub_1D8C2FD04(v60 & 0xFFFFFFF8 | 2);
  v49 = v76;
  v50 = v77;
  v51 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    if (v51 == 2)
    {
      v54 = *(v76 + 16);
      v53 = *(v76 + 24);
      v52 = v53 - v54;
      if (__OFSUB__(v53, v54))
      {
        __break(1u);
        v81 = 0;
        sub_1D8C2AB08(&v72);
        sub_1D8C2C684(v76, v77);
        v25 = *(&v78 + 1);
        v24 = v78;
        v27 = *(&v79 + 1);
        v26 = v79;
        v28 = v80;
        return sub_1D8C60430(v24, v25, v26, v27, v28);
      }
    }

    else
    {
      v52 = 0;
    }

LABEL_55:
    v55 = sub_1D8C2FD04(v52);
    MEMORY[0x1EEE9AC00](v55);
    v57 = v48;
    sub_1D8C7B890(sub_1D8C36D88, v56, v49, v50);
    sub_1D8C2C684(v76, v77);
    v16 = v80;
    return sub_1D8C60430(v78, *(&v78 + 1), v79, *(&v79 + 1), v16);
  }

  if (!v51)
  {
    v52 = BYTE6(v77);
    goto LABEL_55;
  }

  if (!__OFSUB__(HIDWORD(v76), v76))
  {
    v52 = HIDWORD(v76) - v76;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8C7ABBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1D8C35E54(a1, &v4);
}

uint64_t sub_1D8C7ABF8()
{
  v0 = sub_1D8C84F14();
  v4 = sub_1D8C7AC78(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D8C7AC78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D8C84E04();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1D8C85064();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1D8C7ADD0(v9, 0);
  v12 = sub_1D8C7AE44(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1D8C84E04();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1D8C85144();
LABEL_4:

  return sub_1D8C84E04();
}

void *sub_1D8C7ADD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B0, &qword_1D8C88358);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1D8C7AE44(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D8C7B064(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D8C84EB4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D8C85144();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D8C7B064(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D8C84E84();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D8C7B064(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D8C84ED4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA7255F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D8C7B0E0(void *a1, char a2, void *a3)
{
  v51 = a1[2];
  if (!v51)
  {
  }

  v5 = a1[9];
  v6 = a1[10];
  v8 = a1[7];
  v7 = a1[8];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[4];

  v52 = v7;
  v53 = v5;
  v54 = v6;
  sub_1D8C2F16C(v10, v8, v7, v5, v6);
  if (!v9)
  {
  }

  v12 = *a3;
  v14 = sub_1D8C4668C(v11, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a2)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D8C73FD4();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1D8C71FA8(v17, a2 & 1);
  v19 = *a3;
  v20 = sub_1D8C4668C(v11, v9);
  if ((v18 & 1) == (v21 & 1))
  {
    v14 = v20;
    if ((v18 & 1) == 0)
    {
LABEL_13:
      v24 = *a3;
      *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v25 = (v24[6] + 16 * v14);
      *v25 = v11;
      v25[1] = v9;
      v26 = (v24[7] + 40 * v14);
      *v26 = v10;
      v26[1] = v8;
      v26[2] = v52;
      v26[3] = v53;
      v26[4] = v6;
      v27 = v24[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24[2] = v29;
      if (v51 != 1)
      {
        v30 = a1 + 17;
        v31 = 1;
        while (v31 < a1[2])
        {
          v32 = *(v30 - 1);
          v33 = *v30;
          v8 = *(v30 - 3);
          v34 = *(v30 - 2);
          v35 = *(v30 - 5);
          v10 = *(v30 - 4);
          v36 = *(v30 - 6);

          v52 = v34;
          v53 = v32;
          v54 = v33;
          sub_1D8C2F16C(v10, v8, v34, v32, v33);
          if (!v35)
          {
          }

          v37 = *a3;
          v38 = sub_1D8C4668C(v36, v35);
          v40 = v37[2];
          v41 = (v39 & 1) == 0;
          v28 = __OFADD__(v40, v41);
          v42 = v40 + v41;
          if (v28)
          {
            goto LABEL_26;
          }

          v43 = v39;
          if (v37[3] < v42)
          {
            sub_1D8C71FA8(v42, 1);
            v44 = *a3;
            v38 = sub_1D8C4668C(v36, v35);
            if ((v43 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v43)
          {
            goto LABEL_10;
          }

          v46 = *a3;
          *(*a3 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v47 = (v46[6] + 16 * v38);
          *v47 = v36;
          v47[1] = v35;
          v48 = (v46[7] + 40 * v38);
          *v48 = v10;
          v48[1] = v8;
          v48[2] = v52;
          v48[3] = v53;
          v48[4] = v33;
          v49 = v46[2];
          v28 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          ++v31;
          v46[2] = v50;
          v30 += 7;
          if (v51 == v31)
          {
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_10:
    v22 = swift_allocError();
    swift_willThrow();

    MEMORY[0x1DA725EA0](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D8C7C80C(v10, v8, v52, v53, v54);

      return MEMORY[0x1DA725E90](v22);
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D8C85354();
  __break(1u);
LABEL_29:
  sub_1D8C85124();
  MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
  sub_1D8C851E4();
  MEMORY[0x1DA7255C0](39, 0xE100000000000000);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C7B514(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1D8C4668C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1D8C72EF4(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1D8C4668C(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1D8C85354();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1D8C74800();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    MEMORY[0x1DA725EA0](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB000, &unk_1D8C85C00);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x1DA725E90](v19);
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8B930);
    sub_1D8C851E4();
    MEMORY[0x1DA7255C0](39, 0xE100000000000000);
    result = sub_1D8C851F4();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_1D8C4668C(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1D8C72EF4(v32, 1);
        v33 = *a3;
        v28 = sub_1D8C4668C(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1D8C7B890(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_1D8C7B9C8(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8C7B9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1D8C84684();
  v7 = result;
  if (result)
  {
    result = sub_1D8C846A4();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1D8C84694();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1D8C7BA70(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C4A4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1D8C85264();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[3 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 3) = *v13;
          v13[5] = v13[2];
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 3;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2E8, &unk_1D8C888F0);
      v7 = sub_1D8C84F84();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D8C7BBD8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D8C7BBD8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8C7C468(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D8C7C1A0((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 2);
            v26 = *(v23 - 24);
            *(v22 + 2) = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1D8C4A268((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1D8C7C1A0((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D8C7C1A0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}