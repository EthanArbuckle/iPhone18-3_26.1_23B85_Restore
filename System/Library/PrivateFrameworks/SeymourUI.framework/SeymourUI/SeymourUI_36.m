id sub_20B91D110(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_20B65AD10(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_20BA0F25C();
      v10 = v18;
      goto LABEL_8;
    }

    sub_20BA07CA4(v15, a4 & 1);
    v10 = sub_20B65AD10(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_20B51C88C(0, &qword_27C762910);
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_20BE3A220(v10, a3, a1, a2, v20);

    return a3;
  }
}

uint64_t sub_20B91D260(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65AAD8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20BA0F3CC();
      goto LABEL_7;
    }

    sub_20BA07F28(v17, a3 & 1);
    v28 = sub_20B65AAD8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20BE3A268(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_20C132E94();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_20B91D464(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20B65AA60(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20BA0F9F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20BA0892C(v16, a4 & 1);
    v11 = sub_20B65AA60(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_20B91F59C(a1, v22);
  }

  else
  {
    sub_20BE3A35C(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_20B91D5AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20B65CEBC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_20BA0FBD4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_20BA08C24(v14, a3 & 1);
    v9 = sub_20B65CEBC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_20BE3A3B8(v9, a2, a1, v19);
  }
}

uint64_t sub_20B91D6D0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C1365F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65B1D4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_20BA0FD30();
    goto LABEL_7;
  }

  sub_20BA08EB4(result, a3 & 1);
  result = sub_20B65B1D4(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_20BE3A3FC(v14, v11, a1, v20);
}

uint64_t sub_20B91D86C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C135214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65B35C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20BA0FD58();
      goto LABEL_7;
    }

    sub_20BA09274(v17, a3 & 1);
    v22 = sub_20B65B35C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20BE3A4B4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_20B91DA38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20B65CEBC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_20BA10044();
      v9 = v17;
      goto LABEL_8;
    }

    sub_20BA09B80(v14, a3 & 1);
    v9 = sub_20B65CEBC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_20C13E054();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    sub_20BE3A3B8(v9, a2, a1, v19);
  }
}

uint64_t sub_20B91DB58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20B65AA60(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20BA10304();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20BA0A0DC(v16, a4 & 1);
    v11 = sub_20B65AA60(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_20BE3A514(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_20B91DCA0(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_20B65AFAC(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_20BA10474();
      result = v17;
      goto LABEL_8;
    }

    sub_20BA0A384(v14, a2 & 1);
    result = sub_20B65AFAC(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a3;
  }

  else
  {

    return sub_20BE3A55C(result, a1, v19, a3);
  }

  return result;
}

id sub_20B91DDB4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_20B65B514(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_20BA10774();
      v10 = v18;
      goto LABEL_8;
    }

    sub_20BA0A918(v15, a4 & 1);
    v10 = sub_20B65B514(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_20B51C88C(0, &qword_281100550);
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_20BE3A220(v10, a3, a1, a2, v20);

    return a3;
  }
}

uint64_t sub_20B91DF04(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20B65B49C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_20BA10914();
      v9 = v17;
      goto LABEL_8;
    }

    sub_20BA0ABC8(v14, a3 & 1);
    v9 = sub_20B65B49C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767BD0);
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_20BE3A5A0(v9, a2, a1, v19);

    return swift_unknownObjectRetain();
  }
}

void sub_20B91E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20B65AA60(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_20BA10D14();
      v13 = v21;
      goto LABEL_8;
    }

    sub_20BA0B22C(v18, a5 & 1);
    v13 = sub_20B65AA60(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_20C13E054();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56) + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = a2;

    sub_20B8E0828(v25, v26);
  }

  else
  {
    sub_20BE44914(v13, a3, a4, a1, a2, v23);
  }
}

void sub_20B91E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();

  sub_20B91F414(a1, a3, a4, a5, v5, ObjectType, a2);
}

uint64_t sub_20B91E204(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20B65AA60(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20BA11020();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20BA0B7B4(v16, a4 & 1);
    v11 = sub_20B65AA60(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_20BE3A514(v11, a2, a3, a1, v21);
  }
}

void sub_20B91E38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20B65AA60(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_20BA114E0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_20BA0C414(v18, a5 & 1);
    v13 = sub_20B65AA60(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_20C13E054();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56) + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  else
  {
    sub_20BE44914(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_20B91E520(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_20B65AFAC(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_20B65AFAC(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

uint64_t sub_20B91E678(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_20B65AA60(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_20BA117C0();
      result = v19;
      goto LABEL_8;
    }

    sub_20BA0C954(v16, a3 & 1);
    result = sub_20B65AA60(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_20BE3A638(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_20B91E848(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20B65B078(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_20BA11978();
      goto LABEL_7;
    }

    sub_20BA0CC48(v13, a3 & 1);
    v20 = sub_20B65B078(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for SessionEventPresentationCoordinator.QueueItem() - 8) + 72) * v10;

    return sub_20B91F3B0(a1, v18);
  }

LABEL_13:

  return sub_20BE3A6B0(v10, a2, a1, v16);
}

uint64_t sub_20B91E994(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65AD60(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20BA11D00();
      goto LABEL_7;
    }

    sub_20BA0D340(v17, a3 & 1);
    v22 = sub_20B65AD60(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20BE3A758(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_20B91EBB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65AAD8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20BA11D50();
      goto LABEL_7;
    }

    sub_20BA0D744(v17, a3 & 1);
    v22 = sub_20B65AAD8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20BE3A788(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

id sub_20B91ED80(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20B65B720(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20BA11FF4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20BA0DB20(v13, a3 & 1);
    v8 = sub_20B65B720(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_20B51C88C(0, &qword_27C762F78);
      result = sub_20C13E054();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 56 * v8;

    return sub_20B91F354(a1, v19);
  }

  else
  {
    sub_20BE3A85C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_20B91EF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_20B65AA60(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_20B65AA60(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

uint64_t sub_20B91F12C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20B65AAD8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_20BA12478();
      goto LABEL_7;
    }

    sub_20BA0E4A0(v17, a3 & 1);
    v22 = sub_20B65AAD8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20BE3A9A0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_20B91F3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20B91F414(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = sub_20B65AA60(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      sub_20BA0B4FC(v19, a4 & 1);
      v14 = sub_20B65AA60(a2, a3);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_20C13E054();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      sub_20BA10EA0();
      v14 = v22;
    }
  }

  v24 = *a5;
  if (v20)
  {
    v25 = v24[7] + 16 * v14;
    v26 = *v25;
    *v25 = a1;
    *(v25 + 8) = a7;

    return;
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  v27 = (v24[6] + 16 * v14);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v24[7] + 16 * v14);
  *v28 = a1;
  v28[1] = a7;
  v29 = v24[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

uint64_t sub_20B91F5F8()
{
  v1 = [v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20C13C954();

  return v3;
}

uint64_t sub_20B91F6F0@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_20B91F838(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20BF90968(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_20B91F8C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20BF909A4(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20B91F980@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(a3(0) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_20B928070(v17, a5, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_20B91FAC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C134B14();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C136594();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_20C13CDA4();
  v2[13] = sub_20C13CD94();
  v7 = sub_20C13CD24();
  v2[14] = v7;
  v2[15] = v6;

  return MEMORY[0x2822009F8](sub_20B91FC78, v7, v6);
}

uint64_t sub_20B91FC78()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[8];
    v5 = v0[5];
    v18 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v2, 0);
    v3 = v18;
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v16 = *(v6 + 56);
    v17 = v7;
    do
    {
      v9 = v0[6];
      v10 = v0[4];
      v17(v9, v8, v10);
      sub_20C134AB4();
      sub_20C136554();
      (*(v6 - 8))(v9, v10);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_20BB5D604(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[9];
      v14 = v0[7];
      *(v18 + 16) = v12 + 1;
      (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v13, v14);
      v8 += v16;
      --v2;
    }

    while (v2);
  }

  sub_20BD14244(v3, v0[12]);

  return MEMORY[0x2822009F8](sub_20B91FE58, 0, 0);
}

uint64_t sub_20B91FE58()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 82;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_20B91FF68;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B928438, v2, v4);
}

uint64_t sub_20B91FF68()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20B920168;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];

    (*(v7 + 8))(v6, v8);
    v4 = v2[14];
    v5 = v2[15];
    v3 = sub_20B9200E0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B9200E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B920168()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x2822009F8](sub_20B928434, v1, v2);
}

uint64_t sub_20B9201DC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 144) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  *(v2 + 24) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40);
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = sub_20C13CDA4();
  *(v2 + 72) = sub_20C13CD94();
  v5 = sub_20C13CD24();
  *(v2 + 80) = v5;
  *(v2 + 88) = v4;

  return MEMORY[0x2822009F8](sub_20B920354, v5, v4);
}

uint64_t sub_20B920354()
{
  v1 = *(v0 + 16);
  v2 = (v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_storefrontLocalizer + 24));
  v3 = sub_20C138D34();
  v5 = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_lazyLockupFetcher);
  v6 = *(sub_20BD12D8C() + 16);

  if (v6)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_sessionPreferenceClient), *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_sessionPreferenceClient + 24));
    sub_20C139C94();

    return MEMORY[0x2822009F8](sub_20B9206B0, 0, 0);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14F980;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = v3;
    *(v8 + 48) = v5;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);

    *(v8 + 56) = sub_20C138D34();
    *(v8 + 64) = v9;
    v10 = sub_20C13C914();
    v11 = [objc_opt_self() smm:v10 systemImageNamed:?];

    *(v8 + 72) = v11;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = 0;
    *(v7 + 32) = v8 | 0x1000000000000006;
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v0 + 144);
    v17 = sub_20C13CDF4();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);

    v18 = sub_20C13CD94();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = v15;
    *(v19 + 40) = v13;
    *(v19 + 48) = v12;
    *(v19 + 56) = v7;
    *(v19 + 64) = v16;
    sub_20B6383D0(0, 0, v14, &unk_20C162EC8, v19);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_20B9206B0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 100;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_20C136194();
  v0[17] = v4;
  *v3 = v0;
  v3[1] = sub_20B9207CC;
  v5 = v0[7];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B92831C, v2, v4);
}

uint64_t sub_20B9207CC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20B920B30;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];

    (*(v7 + 8))(v6, v8);
    v4 = v2[10];
    v5 = v2[11];
    v3 = sub_20B920944;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B920944()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);

  (*(*(v1 - 8) + 56))(v2, 0, 1, v1);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = sub_20BD13168(sub_20B928334, v4);

  sub_20B520158(v2, &unk_27C765110);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 144);
  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);

  v12 = sub_20C13CD94();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v9;
  *(v13 + 40) = v7;
  *(v13 + 48) = v6;
  *(v13 + 56) = v5;
  *(v13 + 64) = v10;
  sub_20B6383D0(0, 0, v8, &unk_20C162EC8, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20B920B30()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x2822009F8](sub_20B920BA4, v1, v2);
}

uint64_t sub_20B920BA4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);

  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = sub_20BD13168(sub_20B928334, v4);

  sub_20B520158(v2, &unk_27C765110);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 144);
  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);

  v12 = sub_20C13CD94();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v9;
  *(v13 + 40) = v7;
  *(v13 + 48) = v6;
  *(v13 + 56) = v5;
  *(v13 + 64) = v10;
  sub_20B6383D0(0, 0, v8, &unk_20C162EC8, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20B920D90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_mediaTagStringBuilder + 24);
  v10 = *(a5 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_mediaTagStringBuilder + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_mediaTagStringBuilder), v9);
  MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(a6, v9, v10, v28);
  v24 = v28[1];
  v25 = v28[0];
  v23 = v28[2];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
  v26 = swift_allocBox();
  v13 = v12;
  v14 = v11[12];
  v15 = v11[16];
  v16 = &v12[v11[20]];
  v17 = &v12[v11[24]];
  v18 = &v12[v11[28]];
  v19 = v11[32];
  v20 = v11[36];
  *v12 = a2;
  v21 = sub_20C134014();
  (*(*(v21 - 8) + 16))(&v13[v14], a3, v21);
  v13[v15] = a4;
  *v16 = v25;
  *(v16 + 1) = v24;
  *(v16 + 2) = v23;
  *v17 = xmmword_20C157520;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 2) = 0;
  *(v17 + 20) = 0;
  *v18 = 3;
  v18[8] = 3;
  v13[v19] = 0;
  *&v13[v20] = sub_20B6B2348(MEMORY[0x277D84F90]);
  return v26 | 0x3000000000000006;
}

uint64_t sub_20B920F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 432) = a8;
  *(v8 + 368) = a6;
  *(v8 + 376) = a7;
  *(v8 + 352) = a4;
  *(v8 + 360) = a5;
  v9 = sub_20C13C554();
  *(v8 + 384) = v9;
  *(v8 + 392) = *(v9 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = sub_20C13CDA4();
  *(v8 + 416) = sub_20C13CD94();
  v10 = swift_task_alloc();
  *(v8 + 424) = v10;
  *v10 = v8;
  v10[1] = sub_20B92102C;

  return sub_20B921F3C();
}

uint64_t sub_20B92102C(char a1)
{
  *(*v1 + 433) = a1;

  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B921170, v3, v2);
}

uint64_t sub_20B921170()
{
  v1 = (v0 + 184);
  v2 = *(v0 + 433);

  v3 = 0uLL;
  if (v2 == 1)
  {
    v4 = *(v0 + 360);

    v3 = 0uLL;
    v6 = xmmword_20C162D20;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  v7 = *(v0 + 376);
  v8 = *(v0 + 352);
  *v1 = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 128;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = v6;
  *(v0 + 264) = v4;
  *(v0 + 272) = v5;
  *(v0 + 280) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v0 + 288) = v7;
  *(v0 + 296) = v9;
  *(v0 + 304) = v3;
  *(v0 + 320) = v3;
  *(v0 + 336) = 0;
  *(v0 + 344) = 2;
  nullsub_1(v0 + 184);
  v10 = v8 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row;
  v12 = *(v8 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 16);
  v11 = *(v8 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 32);
  *(v0 + 16) = *(v8 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row);
  *(v0 + 32) = v12;
  *(v0 + 48) = v11;
  v13 = *(v10 + 96);
  v15 = *(v10 + 48);
  v14 = *(v10 + 64);
  *(v0 + 96) = *(v10 + 80);
  *(v0 + 112) = v13;
  *(v0 + 64) = v15;
  *(v0 + 80) = v14;
  v17 = *(v10 + 128);
  v16 = *(v10 + 144);
  v18 = *(v10 + 112);
  *(v0 + 176) = *(v10 + 160);
  *(v0 + 144) = v17;
  *(v0 + 160) = v16;
  *(v0 + 128) = v18;
  v19 = *v1;
  v20 = *(v0 + 216);
  *(v10 + 16) = *(v0 + 200);
  *(v10 + 32) = v20;
  *v10 = v19;
  v21 = *(v0 + 232);
  v22 = *(v0 + 248);
  v23 = *(v0 + 280);
  *(v10 + 80) = *(v0 + 264);
  *(v10 + 96) = v23;
  *(v10 + 48) = v21;
  *(v10 + 64) = v22;
  v24 = *(v0 + 296);
  v25 = *(v0 + 312);
  v26 = *(v0 + 328);
  *(v10 + 160) = *(v0 + 344);
  *(v10 + 128) = v25;
  *(v10 + 144) = v26;
  *(v10 + 112) = v24;

  sub_20B520158(v0 + 16, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v29 = sub_20B61DAE0(*(v0 + 352), Strong);
      if (v30)
      {
        v32 = v30;
        v33 = v31;
        v49 = v29;
        v34 = *(v0 + 392);
        v35 = *(v0 + 400);
        v36 = *(v0 + 384);
        sub_20B5E2E18();
        *v35 = sub_20C13D374();
        (*(v34 + 104))(v35, *MEMORY[0x277D85200], v36);
        v37 = sub_20C13C584();
        result = (*(v34 + 8))(v35, v36);
        if ((v37 & 1) == 0)
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_20B621068(v49, v32, v33, *(v0 + 352), *(v0 + 432), v28);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    if (*(v39 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
LABEL_17:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v41 = sub_20B61DAE0(*(v0 + 352), v39);
    if (!v42)
    {
      sub_20C0C2D50(0);
      goto LABEL_17;
    }

    v43 = v41;
    v45 = *(v0 + 392);
    v44 = *(v0 + 400);
    v46 = *(v0 + 384);
    sub_20B5E2E18();
    *v44 = sub_20C13D374();
    (*(v45 + 104))(v44, *MEMORY[0x277D85200], v46);
    v47 = sub_20C13C584();
    result = (*(v45 + 8))(v44, v46);
    if (v47)
    {
      sub_20C10B0D0(*(v0 + 352), v43, *(v0 + 432), v40);

      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_18:

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_20B9214F0()
{
  v1[14] = v0;
  v2 = sub_20C13BB84();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B921624, 0, 0);
}

uint64_t sub_20B921624()
{
  v1 = v0[21];
  __swift_project_boxed_opaque_existential_1((v0[14] + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient), *(v0[14] + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient + 24));
  sub_20C139724();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 124;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
  v0[24] = v4;
  *v3 = v0;
  v3[1] = sub_20B92177C;

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B9282A0, v2, v4);
}

uint64_t sub_20B92177C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_20B921C6C;
  }

  else
  {
    v4 = v2[21];
    v5 = v2[18];
    v6 = v2[19];
    v2[26] = v2[12];

    v7 = *(v6 + 8);
    v2[27] = v7;
    v2[28] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_20B9218E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B9218E8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = __swift_project_boxed_opaque_existential_1((*(v0 + 112) + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_contentAvailabilityFilter), *(*(v0 + 112) + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_contentAvailabilityFilter + 24));
  *(v0 + 40) = v2;
  *(v0 + 48) = sub_20B9282B8();
  *(v0 + 16) = v1;
  v5 = *v4;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_20B51C710((v0 + 56), v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v7 + 24) = 41;
  *(v7 + 32) = 2;
  *(v7 + 40) = 25;
  *(v7 + 48) = &unk_20C15D270;
  *(v7 + 56) = v6;

  sub_20C137C94();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *(v8 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
  *(v8 + 24) = 39;
  *(v8 + 32) = 2;
  *(v8 + 40) = 125;
  *(v8 + 48) = v3;
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_20B921AFC;
  v10 = *(v0 + 192);

  return MEMORY[0x2822008A0](v0 + 104, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B92843C, v8, v10);
}

uint64_t sub_20B921AFC()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {

    v3 = sub_20B921EAC;
  }

  else
  {
    v4 = v2[27];
    v5 = v2[20];
    v6 = v2[18];
    v2[32] = v2[13];

    v4(v5, v6);
    v3 = sub_20B921D08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B921C6C()
{
  (*(v0[19] + 8))(v0[21], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B921D08()
{
  sub_20C13B444();
  swift_bridgeObjectRetain_n();

  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[32];
  v5 = v0[26];
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    v7 = *(v5 + 16);

    *(v6 + 4) = v7;

    *(v6 + 12) = 2048;
    v8 = *(v4 + 16);

    *(v6 + 14) = v8;

    _os_log_impl(&dword_20B517000, v1, v2, "%ld up next items fitlered to %ld", v6, 0x16u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];
  v10 = v0[32];

  return v9(v10);
}

uint64_t sub_20B921EAC()
{
  (*(v0 + 216))(*(v0 + 160), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B921F3C()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B921FFC, 0, 0);
}

uint64_t sub_20B921FFC()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B9220C0;

  return MEMORY[0x2821B5680](v3, v2);
}

uint64_t sub_20B9220C0(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20B922218, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_20B922218()
{
  v20 = v0;
  v1 = *(v0 + 88);
  sub_20C13B444();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Unexpected error occurred fetching subscription in gallery: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_20B9223F4()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B92253C, 0, 0);
}

uint64_t sub_20B92253C()
{
  v1 = v0[10];
  v2 = v0[7];
  v18 = v0[8];
  v19 = v0[13];
  v16 = v0[6];
  v17 = v0[9];
  v3 = *(v0[5] + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_lazyLockupFetcher);
  swift_beginAccess();
  v4 = v3[21];
  v6 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v6);
  v7 = *(v5 + 8);

  v7(v6, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  (*(v2 + 16))(v17, v1, v16);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + v9, v17, v16);
  v11 = (v10 + ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = sub_20B84086C;
  v11[1] = v8;

  v12 = MEMORY[0x277D84F78];
  sub_20C137C94();
  (*(v2 + 8))(v1, v16);
  v13 = swift_task_alloc();
  v0[14] = v13;
  *(v13 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
  *(v13 + 24) = 39;
  *(v13 + 32) = 2;
  *(v13 + 40) = 149;
  *(v13 + 48) = v19;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_20B9227CC;

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B928438, v13, v12 + 8);
}

uint64_t sub_20B9227CC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20B9229CC;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B922938;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B922938()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_20B922A78;

  return sub_20B9201DC(1);
}

uint64_t sub_20B9229CC()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_20B922A78;

  return sub_20B9201DC(1);
}

uint64_t sub_20B922A78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B922BC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for ShelfMetricAction();
  v2[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_20B922C88;

  return sub_20B921F3C();
}

uint64_t sub_20B922C88(char a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_20B922D88, 0, 0);
}

uint64_t sub_20B922D88()
{
  if (*(v0 + 56) == 1)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = sub_20C136664();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
    v4 = v2[5];
    v5 = *MEMORY[0x277D51430];
    v6 = sub_20C134F24();
    (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
    v7 = v2[6];
    v8 = sub_20C132C14();
    (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
    v9 = sub_20C134AB4();
    v11 = v10;
    v12 = v2[8];
    v13 = *MEMORY[0x277D52408];
    v14 = sub_20C135ED4();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v1 + v12, v13, v14);
    (*(v15 + 56))(v1 + v12, 0, 1, v14);
    v16 = v2[10];
    v17 = *MEMORY[0x277D51768];
    v18 = sub_20C1352E4();
    (*(*(v18 - 8) + 104))(v1 + v16, v17, v18);
    v19 = v2[11];
    v20 = sub_20C136E94();
    (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
    v21 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v22 = (v1 + v2[7]);
    *v22 = v9;
    v22[1] = v11;
    v23 = (v1 + v2[9]);
    *v23 = 0;
    v23[1] = 0;
    *(v1 + v2[12]) = v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BFA0384(*(v0 + 24), *(v0 + 40), Strong);
      swift_unknownObjectRelease();
    }

    sub_20B9280D8(*(v0 + 40), type metadata accessor for ShelfMetricAction);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20B92307C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_contentAvailabilityFilter);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_sessionPreferenceClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient);
  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion));
  return v0;
}

uint64_t sub_20B9231E4()
{
  sub_20B92307C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpNextQueueGalleryShelf()
{
  result = qword_27C767C48;
  if (!qword_27C767C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B923290()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B923378()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3 - 8];
  sub_20C13CDC4();
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B614F94(0, 0, v4, &unk_20C162E80, v6);

  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13B294();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B923658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B926F8C();
}

uint64_t sub_20B92371C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B7E6F64;

    return sub_20B926F8C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B923838()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B923934;

    return sub_20B926F8C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B923934()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B928444, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20B923A90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = sub_20C13CDA4();
    v0[8] = sub_20C13CD94();
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_20B923B98;

    return sub_20B9214F0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B923B98(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B924044, v7, v6);
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = swift_task_alloc();
    *(v4 + 96) = v8;
    *v8 = v5;
    v8[1] = sub_20B923D38;

    return sub_20B91FAC0(a1);
  }
}

uint64_t sub_20B923D38()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v2;
  v3[1] = sub_20B923E98;

  return sub_20B9201DC(1);
}

uint64_t sub_20B923E98()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B923FD4, v1, v0);
}

uint64_t sub_20B923FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B924044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B9240B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B924180, 0, 0);
}

uint64_t sub_20B924180()
{
  v1 = v0[6];
  sub_20BD14728(v0[3], v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 195;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_20B9242A8;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B928438, v2, v4);
}

uint64_t sub_20B9242A8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_20B9245A0;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20B9243F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B9243F8()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_20B92448C;

  return sub_20B9201DC(1);
}

uint64_t sub_20B92448C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B9245A0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B924620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v7[32] = v8;
  v9 = *(v8 - 8);
  v7[33] = v9;
  v7[34] = *(v9 + 64);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  type metadata accessor for ShelfIndexedLazyLockup();
  v7[37] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v7[38] = v10;
  v7[39] = *(v10 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v11 = sub_20C134B14();
  v7[42] = v11;
  v7[43] = *(v11 - 8);
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B924800, 0, 0);
}

uint64_t sub_20B924800()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[45] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[46] = v2;
    *v2 = v0;
    v2[1] = sub_20B924940;

    return sub_20B9214F0();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B924940(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_20B9267B4;
  }

  else
  {

    v4 = sub_20B924A5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20B924A5C()
{
  v1 = v0[29];
  v2 = v0[47];
  if (v1 < 0 || *(v2 + 16) <= v1)
  {
  }

  else
  {
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[42];
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64)) + *(v4 + 56) * v1;
    v0[49] = v6;
    v0[50] = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v7, v5);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = v0[36];
      v10 = v0[37];
      v11 = v0[35];
      v46 = v0[34];
      v48 = v0[41];
      v12 = v0[32];
      v13 = v0[33];
      v14 = v0[29];
      v15 = *(Strong + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_lazyLockupFetcher);

      swift_beginAccess();
      v49 = v15[21];

      sub_20B91F980(v14, sub_20BF90954, type metadata accessor for ShelfIndexedLazyLockup, type metadata accessor for ShelfIndexedLazyLockup, v10);
      sub_20B9280D8(v10, type metadata accessor for ShelfIndexedLazyLockup);
      v16 = v15[11];
      v17 = v15[12];
      __swift_project_boxed_opaque_existential_1(v15 + 8, v16);
      (*(v17 + 8))(v16, v17);
      v18 = swift_allocObject();
      *(v18 + 16) = v49;
      *(v18 + 24) = v15;
      (*(v13 + 16))(v11, v9, v12);
      v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v20 = swift_allocObject();
      (*(v13 + 32))(v20 + v19, v11, v12);
      v21 = (v20 + ((v46 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v21 = sub_20B8406F4;
      v21[1] = v18;
      v22 = MEMORY[0x277D84F78];
      sub_20C137C94();
      (*(v13 + 8))(v9, v12);
      v23 = swift_task_alloc();
      v0[51] = v23;
      *(v23 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
      *(v23 + 24) = 39;
      *(v23 + 32) = 2;
      *(v23 + 40) = 222;
      *(v23 + 48) = v48;
      v24 = swift_task_alloc();
      v0[52] = v24;
      *v24 = v0;
      v24[1] = sub_20B92520C;
      v25 = sub_20B526A34;
      v26 = v22 + 8;
LABEL_5:

      return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000013, 0x800000020C192D10, v25, v23, v26);
    }

    swift_beginAccess();
    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v30 = v0[30];
      v29 = v0[31];
      v31 = (v28 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
      v32 = *(v28 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
      *v31 = v30;
      v31[1] = v29;
      sub_20B584050(v30);
      sub_20B583ECC(v32);
    }

    swift_beginAccess();
    v33 = swift_weakLoadStrong();
    v0[53] = v33;
    if (v33)
    {
      v34 = swift_task_alloc();
      v0[54] = v34;
      *v34 = v0;
      v34[1] = sub_20B925CE0;

      return sub_20B9201DC(1);
    }

    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    if (v35)
    {
      v47 = v0[49];
      v36 = v0[44];
      v37 = v0[42];
      v38 = v0[40];
      sub_20B51CC64(v35 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient, (v0 + 2));

      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0);
      v39 = *(sub_20C1351C4() - 8);
      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_20C14F980;
      v47(v41 + v40, v36, v37);
      swift_storeEnumTagMultiPayload();
      sub_20C139734();

      v23 = swift_task_alloc();
      v0[55] = v23;
      *(v23 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
      *(v23 + 24) = 39;
      *(v23 + 32) = 2;
      *(v23 + 40) = 227;
      *(v23 + 48) = v38;
      v24 = swift_task_alloc();
      v0[56] = v24;
      *v24 = v0;
      v24[1] = sub_20B9261A0;
      v25 = sub_20B928438;
      v26 = MEMORY[0x277D84F78] + 8;
      goto LABEL_5;
    }

    swift_beginAccess();
    v42 = swift_weakLoadStrong();
    v0[57] = v42;
    if (v42)
    {
      v43 = swift_task_alloc();
      v0[58] = v43;
      *v43 = v0;
      v43[1] = sub_20B9265DC;
      v44 = v0[44];

      return sub_20B922BC8(v44);
    }

    (*(v0[43] + 8))(v0[44], v0[42]);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_20B92520C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20B925820;
  }

  else
  {
    v4 = v2[41];
    v5 = v2[38];
    v6 = v2[39];

    (*(v6 + 8))(v4, v5);
    v3 = sub_20B925378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B925378()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[30];
    v2 = v0[31];
    v4 = (Strong + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
    *v4 = v3;
    v4[1] = v2;
    sub_20B584050(v3);
    sub_20B583ECC(v5);
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  v0[53] = v6;
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[54] = v7;
    *v7 = v0;
    v7[1] = sub_20B925CE0;

    return sub_20B9201DC(1);
  }

  else
  {
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v23 = v0[49];
      v10 = v0[44];
      v11 = v0[42];
      v12 = v0[40];
      sub_20B51CC64(v9 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient, (v0 + 2));

      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0);
      v13 = *(sub_20C1351C4() - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20C14F980;
      v23(v15 + v14, v10, v11);
      swift_storeEnumTagMultiPayload();
      sub_20C139734();

      v16 = swift_task_alloc();
      v0[55] = v16;
      *(v16 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
      *(v16 + 24) = 39;
      *(v16 + 32) = 2;
      *(v16 + 40) = 227;
      *(v16 + 48) = v12;
      v17 = swift_task_alloc();
      v0[56] = v17;
      *v17 = v0;
      v17[1] = sub_20B9261A0;
      v18 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B928438, v16, v18);
    }

    else
    {
      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      v0[57] = v19;
      if (v19)
      {
        v20 = swift_task_alloc();
        v0[58] = v20;
        *v20 = v0;
        v20[1] = sub_20B9265DC;
        v21 = v0[44];

        return sub_20B922BC8(v21);
      }

      else
      {
        (*(v0[43] + 8))(v0[44], v0[42]);

        v22 = v0[1];

        return v22();
      }
    }
  }
}

uint64_t sub_20B925820()
{
  (*(v0[39] + 8))(v0[41], v0[38]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[30];
    v2 = v0[31];
    v4 = (Strong + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
    *v4 = v3;
    v4[1] = v2;
    sub_20B584050(v3);
    sub_20B583ECC(v5);
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  v0[53] = v6;
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[54] = v7;
    *v7 = v0;
    v7[1] = sub_20B925CE0;

    return sub_20B9201DC(1);
  }

  else
  {
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v23 = v0[49];
      v10 = v0[44];
      v11 = v0[42];
      v12 = v0[40];
      sub_20B51CC64(v9 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient, (v0 + 2));

      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0);
      v13 = *(sub_20C1351C4() - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20C14F980;
      v23(v15 + v14, v10, v11);
      swift_storeEnumTagMultiPayload();
      sub_20C139734();

      v16 = swift_task_alloc();
      v0[55] = v16;
      *(v16 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
      *(v16 + 24) = 39;
      *(v16 + 32) = 2;
      *(v16 + 40) = 227;
      *(v16 + 48) = v12;
      v17 = swift_task_alloc();
      v0[56] = v17;
      *v17 = v0;
      v17[1] = sub_20B9261A0;
      v18 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B928438, v16, v18);
    }

    else
    {
      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      v0[57] = v19;
      if (v19)
      {
        v20 = swift_task_alloc();
        v0[58] = v20;
        *v20 = v0;
        v20[1] = sub_20B9265DC;
        v21 = v0[44];

        return sub_20B922BC8(v21);
      }

      else
      {
        (*(v0[43] + 8))(v0[44], v0[42]);

        v22 = v0[1];

        return v22();
      }
    }
  }
}

uint64_t sub_20B925CE0()
{

  return MEMORY[0x2822009F8](sub_20B925DF8, 0, 0);
}

uint64_t sub_20B925DF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = v0[49];
    v2 = v0[44];
    v3 = v0[42];
    v4 = v0[40];
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0);
    v5 = *(sub_20C1351C4() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14F980;
    v16(v7 + v6, v2, v3);
    swift_storeEnumTagMultiPayload();
    sub_20C139734();

    v8 = swift_task_alloc();
    v0[55] = v8;
    *(v8 + 16) = "SeymourUI/UpNextQueueGalleryShelf.swift";
    *(v8 + 24) = 39;
    *(v8 + 32) = 2;
    *(v8 + 40) = 227;
    *(v8 + 48) = v4;
    v9 = swift_task_alloc();
    v0[56] = v9;
    *v9 = v0;
    v9[1] = sub_20B9261A0;
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B928438, v8, v10);
  }

  else
  {
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    v0[57] = v11;
    if (v11)
    {
      v12 = swift_task_alloc();
      v0[58] = v12;
      *v12 = v0;
      v12[1] = sub_20B9265DC;
      v13 = v0[44];

      return sub_20B922BC8(v13);
    }

    else
    {
      (*(v0[43] + 8))(v0[44], v0[42]);

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_20B9261A0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20B92645C;
  }

  else
  {
    v5 = v2[39];
    v4 = v2[40];
    v6 = v2[38];

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2));
    v3 = sub_20B9262FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B9262FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[57] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[58] = v2;
    *v2 = v0;
    v2[1] = sub_20B9265DC;
    v3 = v0[44];

    return sub_20B922BC8(v3);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20B92645C()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[57] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[58] = v2;
    *v2 = v0;
    v2[1] = sub_20B9265DC;
    v3 = v0[44];

    return sub_20B922BC8(v3);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20B9265DC()
{

  return MEMORY[0x2822009F8](sub_20B9266F4, 0, 0);
}

uint64_t sub_20B9266F4()
{
  (*(v0[43] + 8))(v0[44], v0[42]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B9267B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B926864@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9268DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B92698C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_20C13CDF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  sub_20B614F94(0, 0, v5, &unk_20C162E70, v7);
}

uint64_t sub_20B926A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  sub_20B584050(a2);
  sub_20B614F94(0, 0, v8, &unk_20C162E58, v11);
}

uint64_t sub_20B926BEC(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row;
  sub_20B5D8060(v16);
  v6 = v16[5];
  *(v5 + 64) = v16[4];
  *(v5 + 80) = v6;
  *(v5 + 160) = v17;
  v7 = v16[9];
  *(v5 + 128) = v16[8];
  *(v5 + 144) = v7;
  v8 = v16[7];
  *(v5 + 96) = v16[6];
  *(v5 + 112) = v8;
  v9 = v16[1];
  *v5 = v16[0];
  *(v5 + 16) = v9;
  v10 = v16[3];
  *(v5 + 32) = v16[2];
  *(v5 + 48) = v10;
  v11 = (v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_deletionCompletion);
  *v11 = 0;
  v11[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(v15, v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_contentAvailabilityFilter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_eventHub) = v15[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v15, v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_mediaTagStringBuilder);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_platform) = v15[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870);
  sub_20C133AA4();
  sub_20B51C710(v15, v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_sessionPreferenceClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v15, v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v15, v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v15, v2 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_upNextQueueClient);
  type metadata accessor for TVShelfIndexedLazyLockupFetcher();
  v12 = swift_allocObject();
  *(v12 + 152) = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84F90];
  *(v12 + 160) = sub_20B6B0C04(MEMORY[0x277D84F90]);
  *(v12 + 168) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();
  *(v12 + 16) = 20;
  *(v12 + 104) = a2;
  *(v12 + 105) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_lazyLockupFetcher) = v12;
  return v3;
}

uint64_t sub_20B926F8C()
{
  v1[2] = v0;
  v2 = sub_20C134B14();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_20C13CDA4();
  v1[7] = sub_20C13CD94();
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_20B927098;

  return sub_20B9214F0();
}

uint64_t sub_20B927098(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  v5 = sub_20C13CD24();
  v3[11] = v5;
  v3[12] = v4;
  if (v1)
  {
    v6 = sub_20B9279F0;
  }

  else
  {
    v6 = sub_20B9271FC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20B9271FC()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v24 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v22 = *(v3 + 56);
    v23 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[5];
      v8 = v0[3];
      v23(v7, v5, v8);
      v9 = sub_20C134AB4();
      v11 = v10;
      (*v6)(v7, v8);
      v13 = *(v24 + 16);
      v12 = *(v24 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20B526D44((v12 > 1), v13 + 1, 1);
      }

      *(v24 + 16) = v13 + 1;
      v14 = v24 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v5 += v22;
      --v2;
    }

    while (v2);
    v15 = sub_20BD12D8C();
    v16 = sub_20BB80B50(v24, v15);

    if (v16)
    {

      v17 = v0[1];

      return v17();
    }

    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v20 = sub_20B927484;
  }

  else
  {
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v20 = sub_20B927770;
  }

  v19[1] = v20;
  v21 = v0[9];

  return sub_20B91FAC0(v21);
}

uint64_t sub_20B927484()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_20B9275E4;

  return sub_20B9201DC(1);
}

uint64_t sub_20B9275E4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_20B927704, v3, v2);
}

uint64_t sub_20B927704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B927770()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  *v3 = v2;
  v3[1] = sub_20B9278D0;

  return sub_20B9201DC(1);
}

uint64_t sub_20B9278D0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_20B928430, v3, v2);
}

uint64_t sub_20B9279F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B927A60(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 144);
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 128);
  v57 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 48);
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 64);
  v53 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 80);
  v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 96);
  v55 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row);
  v49[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 48);
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 32);
  v51 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 80);
  v46 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 64);
  v47 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 16);
  v42 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row);
  v43 = v14;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 32);
  v45 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 112);
  v39 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 128);
  v40 = v15;
  v38 = v16;
  v59[0] = v49[0];
  v59[1] = v10;
  v59[4] = v52;
  v59[5] = v9;
  v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 160);
  v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI23UpNextQueueGalleryShelf_row + 96);
  v17 = *(&v54 + 1);
  v41 = *(v3 + 160);
  v18 = *(v3 + 96);
  v59[2] = v50;
  v59[3] = v8;
  v19 = *(v3 + 144);
  v65 = *(v3 + 160);
  v63 = v56;
  v64 = v19;
  v62 = v5;
  v60 = v18;
  v61 = *(&v54 + 1);
  if (sub_20B5EAF8C(v59) == 1)
  {
    v30 = v46;
    v31 = v47;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v32 = v48;
    v33 = *(&v54 + 1);
    v37 = v41;
    v35 = v39;
    v36 = v40;
    v34 = v38;
    sub_20B5EAED4(v49, v25);
    sub_20B520158(&v26, &qword_27C762340);
LABEL_6:
    v23 = 1;
    return v23 & 1;
  }

  v30 = v46;
  v31 = v47;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v32 = v48;
  v33 = *(&v54 + 1);
  v37 = v41;
  v35 = v39;
  v36 = v40;
  v34 = v38;
  sub_20B5EAED4(v49, v25);

  sub_20B520158(&v26, &qword_27C762340);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = *(v17 + 8 * v20 + 24);

  v22 = sub_20B969AA8(a1, v21);

  v23 = v22 ^ 1;
  return v23 & 1;
}

uint64_t sub_20B927C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20B52AC14;

  return sub_20B924620(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_20B927D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20B9240B4(a1, v4, v5, v7, v6);
}

uint64_t sub_20B927E04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B923658();
}

uint64_t sub_20B927EB8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B9236FC(v0);
}

uint64_t sub_20B927F48()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B923818(v0);
}

uint64_t sub_20B927FD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B923A70(a1, v1);
}

uint64_t sub_20B928070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9280D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_26Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B9281E4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B51F8F8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_20B9282B8()
{
  result = qword_27C767C58;
  if (!qword_27C767C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767C58);
  }

  return result;
}

uint64_t sub_20B92833C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52A9D4;

  return sub_20B920F18(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_20B928448(void *a1)
{
  v2 = v1;
  v60 = sub_20C134544();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[9];
  if (v5)
  {
    v6 = a1[8];

    swift_beginAccess();
    v7 = a1[13];
    v8 = *(v7 + 16);
    v61 = *(v1 + 16);

    if (v8)
    {
      v9 = 0;
      v63 = v7 + 32;
      v58 = v62 + 16;
      v10 = MEMORY[0x277D84F98];
      v57 = v62 + 32;
      v56 = xmmword_20C14F980;
LABEL_4:
      v11 = v9;
      while (v11 < v8)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_32;
        }

        v12 = *(v63 + 8 * v11);

        v13 = sub_20B9288F4(v12, v11);
        if (v13)
        {
          v45 = v6;
          v46 = v5;
          v47 = v2;
          v55 = *(v13 + 16);
          if (v55)
          {
            v14 = 0;
            v15 = *(v62 + 80);
            v53 = (v15 + 32) & ~v15;
            v54 = v15;
            v52 = v13 + v53;
            v50 = v8;
            v49 = v11 + 1;
            v48 = v13;
            v51 = v12;
            do
            {
              if (v14 >= *(v13 + 16))
              {
                goto LABEL_33;
              }

              v16 = v62;
              v18 = v59;
              v17 = v60;
              (*(v62 + 16))(v59, v52 + *(v62 + 72) * v14, v60);
              v19 = v10;
              v20 = sub_20C134534();
              v22 = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
              v23 = v53;
              v24 = swift_allocObject();
              *(v24 + 16) = v56;
              v25 = v24 + v23;
              v26 = v20;
              v27 = v19;
              (*(v16 + 32))(v25, v18, v17);
              v65 = v24;

              sub_20B8DA3B8(v28);
              v29 = v65;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v27;
              v32 = sub_20B65AA60(v26, v22);
              v33 = v27[2];
              v34 = (v31 & 1) == 0;
              v35 = v33 + v34;
              if (__OFADD__(v33, v34))
              {
                goto LABEL_34;
              }

              v36 = v31;
              if (v27[3] >= v35)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v31)
                  {
                    goto LABEL_12;
                  }
                }

                else
                {
                  sub_20BA11034();
                  if (v36)
                  {
                    goto LABEL_12;
                  }
                }
              }

              else
              {
                sub_20BA0B7C8(v35, isUniquelyReferenced_nonNull_native);
                v37 = sub_20B65AA60(v26, v22);
                if ((v36 & 1) != (v38 & 1))
                {
                  goto LABEL_36;
                }

                v32 = v37;
                if (v36)
                {
LABEL_12:

                  v10 = v65;
                  *(v65[7] + 8 * v32) = v29;

                  goto LABEL_13;
                }
              }

              v10 = v65;
              v65[(v32 >> 6) + 8] |= 1 << v32;
              v39 = (v10[6] + 16 * v32);
              *v39 = v26;
              v39[1] = v22;
              *(v10[7] + 8 * v32) = v29;
              v40 = v10[2];
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_35;
              }

              v10[2] = v42;
LABEL_13:
              ++v14;
              v8 = v50;
              v9 = v49;
              v13 = v48;
            }

            while (v55 != v14);
          }

          v2 = v47;
          v5 = v46;
          v6 = v45;
          if (v9 == v8)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        }

        ++v11;
        if (v9 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      sub_20C13E054();
      __break(1u);
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
LABEL_29:

      swift_beginAccess();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      sub_20B91E204(v10, v6, v5, v43);

      *(v2 + 24) = v64;
      swift_endAccess();
    }
  }
}

uint64_t sub_20B9288F4(unint64_t a1, uint64_t a2)
{
  while (1)
  {
    v102 = a2;
    v2 = a1;
    v3 = sub_20C138894();
    v92 = *(v3 - 8);
    MEMORY[0x28223BE20](v3);
    v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = sub_20C132C14();
    v95 = *(v6 - 1);
    v96 = v6;
    MEMORY[0x28223BE20](v6);
    v94 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = sub_20C136594();
    v9 = *(v8 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v98 = sub_20C134014();
    v93 = *(v98 - 8);
    MEMORY[0x28223BE20](v98);
    v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = sub_20C1352E4();
    v99 = *(v13 - 8);
    v100 = v13;
    MEMORY[0x28223BE20](v13);
    v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = sub_20C134544();
    MEMORY[0x28223BE20](v15);
    v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v18);
    v20 = &v87 - v19;
    MEMORY[0x28223BE20](v21);
    v25 = 0;
    v26 = (v2 >> 57) & 0x78 | v2 & 7;
    if (v26 > 33)
    {
      break;
    }

    if (v26 > 31)
    {
      v96 = &v87 - v23;
      v91 = v24;
      v92 = v22;
      if (v26 != 32)
      {
        v40 = swift_projectBox();
        v41 = v9;
        (*(v9 + 16))(v11, v40, v8);
        sub_20C136564();
        sub_20C1349B4();
        (*(v99 + 104))(v101, *MEMORY[0x277D51778], v100);
        sub_20B6B0904(MEMORY[0x277D84F90]);
        v42 = v96;
        sub_20C134524();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
        v43 = v91;
        v44 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_20C14F980;
        (*(v43 + 32))(v25 + v44, v42, v92);
        (*(v41 + 8))(v11, v8);
        return v25;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v52 = swift_projectBox() + *(v51 + 64);
      v53 = *v52;
      v54 = *(v52 + 8);
      v55 = *(v52 + 16);
      v56 = *(v52 + 24);
      v57 = *(v52 + 40);
      v89 = *(v52 + 32);
      v90 = v56;
      v87 = v57;
      v34 = v93;
      (v93)[2](v97);
      v58 = v53;
      v88 = v58;
      v95 = v54;
      v94 = v55;

      sub_20C133E44();
      sub_20C1349B4();
      v59 = [v58 string];
      sub_20C13C954();

      (*(v99 + 104))(v101, *MEMORY[0x277D51778], v100);
      sub_20B6B0904(MEMORY[0x277D84F90]);
      v60 = v96;
      sub_20C134524();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
      v61 = v91;
      v62 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20C14F980;
      (*(v61 + 32))(v25 + v62, v60, v92);

      v39 = v88;
      goto LABEL_20;
    }

    if (v26 == 16)
    {
      v47 = v22;
      v48 = v24;
      v49 = &v87 - v23;
      sub_20C1355B4();
      sub_20C1349B4();
      (*(v99 + 104))(v101, *MEMORY[0x277D51760], v100);
      sub_20B6B0904(MEMORY[0x277D84F90]);
      sub_20C134524();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20C14F980;
      (*(v48 + 32))(v25 + v50, v49, v47);
      return v25;
    }

    if (v26 != 28)
    {
      return v25;
    }

    a1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x20);
    a2 = v102;
  }

  if (v26 <= 68)
  {
    if (v26 == 34)
    {
      v91 = v24;
      v92 = v22;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20);
      v68 = swift_projectBox();
      v69 = v68 + *(v67 + 80);
      v70 = *v69;
      v71 = *(v69 + 8);
      v72 = *(v69 + 16);
      v73 = *(v69 + 24);
      v74 = *(v69 + 32);
      (*(v95 + 2))(v94, v68 + *(v67 + 96), v96);
      v75 = v70;
      v76 = v71;
      v77 = v72;

      v97 = v74;

      sub_20BD09848();
      v98 = v73;
      v93 = v76;
      v90 = v77;
      if (!v78)
      {
        sub_20BD09C88();
        if (!v79)
        {
          sub_20C132B54();
        }
      }

      v80 = [v75 string];
      sub_20C13C954();
      v81 = v75;

      sub_20C1349B4();
      (*(v99 + 104))(v101, *MEMORY[0x277D51760], v100);
      sub_20B6B0904(MEMORY[0x277D84F90]);
      sub_20C134524();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
      v82 = v91;
      v83 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20C14F980;
      (*(v82 + 32))(v25 + v83, v20, v92);

      (*(v95 + 1))(v94, v96);
    }

    else if (v26 == 35)
    {
      v45 = swift_projectBox();
      v46 = v92;
      (*(v92 + 16))(v5, v45, v3);
      v25 = sub_20B929958();
      (*(v46 + 8))(v5, v3);
    }
  }

  else if (v26 == 69)
  {
    v63 = v22;
    v64 = v24;
    v65 = &v87 - v23;
    sub_20C1349B4();
    (*(v99 + 104))(v101, *MEMORY[0x277D51748], v100);
    sub_20B6B0904(MEMORY[0x277D84F90]);
    sub_20C134524();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20C14F980;
    (*(v64 + 32))(v25 + v66, v65, v63);
  }

  else
  {
    v91 = v24;
    v92 = v22;
    if (v26 != 72)
    {
      if (v26 != 74)
      {
        return v25;
      }

      v27 = &v87 - v23;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
      v29 = swift_projectBox() + *(v28 + 80);
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      v94 = *(v29 + 24);
      v33 = *(v29 + 32);
      v88 = *(v29 + 40);
      v89 = v33;
      v34 = v93;
      (v93[2])();
      v35 = v30;
      v90 = v35;
      v96 = v31;
      v95 = v32;

      sub_20C133E44();
      v36 = [v35 string];
      sub_20C13C954();

      sub_20C1349B4();
      (*(v99 + 104))(v101, *MEMORY[0x277D51778], v100);
      sub_20B6B0904(MEMORY[0x277D84F90]);
      sub_20C134524();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
      v37 = v91;
      v38 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20C14F980;
      (*(v37 + 32))(v25 + v38, v27, v92);

      v39 = v90;
LABEL_20:

      (v34[1])(v97, v98);
      return v25;
    }

    sub_20C1349B4();
    (*(v99 + 104))(v101, *MEMORY[0x277D51778], v100);
    sub_20B6B0904(MEMORY[0x277D84F90]);
    sub_20C134524();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C60);
    v84 = v91;
    v85 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20C14F980;
    (*(v84 + 32))(v25 + v85, v17, v92);
  }

  return v25;
}

uint64_t sub_20B9297B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 144);
  v8 = *(a1 + 96);
  v26 = *(a1 + 112);
  v27 = v6;
  v28 = v7;
  v29 = *(a1 + 160);
  v9 = *(a1 + 80);
  v23 = *(a1 + 64);
  v24 = v9;
  v25 = v8;
  v10 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v10;
  v11 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v11;
  if (sub_20B5EAF8C(v22) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    return MEMORY[0x277D84F90];
  }

  v13 = v23;
  swift_beginAccess();
  v14 = *(v3 + 24);
  if (!*(v14 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v15 = sub_20B65AA60(v13, v12);
  if (v16)
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    if (*(v17 + 16) && (v18 = sub_20B65AA60(a2, a3), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_20B9298F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20B929958()
{
  v47 = sub_20C1352E4();
  v0 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C1388B4();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C68);
  MEMORY[0x28223BE20](v43);
  v49 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v42 = &v28 - v6;
  v41 = sub_20C134544();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C138824();
  v11 = *(v10 + 16);
  if (v11)
  {
    v50 = MEMORY[0x277D84F90];
    sub_20BB5E3B8(0, v11, 0);
    v12 = v50;
    v40 = *(v10 + 16);
    result = sub_20C138B94();
    v14 = 0;
    v15 = *(result - 8);
    v34 = v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v35 = v15;
    v36 = result;
    v32 = v15 + 32;
    v33 = v15 + 16;
    v31 = (v2 + 8);
    v30 = *MEMORY[0x277D51750];
    v29 = (v0 + 104);
    v28 = v7 + 32;
    v38 = v10;
    v39 = v7;
    v37 = v11;
    while (v40 != v14)
    {
      if (v14 >= *(v10 + 16))
      {
        goto LABEL_14;
      }

      v48 = v12;
      v17 = v42;
      v16 = v43;
      v18 = *(v43 + 48);
      v19 = v35;
      v20 = v36;
      (*(v35 + 16))(&v42[v18], v34 + *(v35 + 72) * v14, v36);
      v21 = v49;
      *v49 = v14;
      (*(v19 + 32))(&v21[*(v16 + 48)], &v17[v18], v20);
      v22 = v44;
      sub_20C138B74();
      sub_20C1388A4();
      v24 = v23;
      (*v31)(v22, v45);
      if (!v24)
      {
        sub_20C134994();
      }

      sub_20C1349B4();
      v25 = v49;
      sub_20C138B64();
      (*v29)(v46, v30, v47);
      sub_20C134524();
      sub_20B929E64(v25);
      v12 = v48;
      v50 = v48;
      v27 = *(v48 + 16);
      v26 = *(v48 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_20BB5E3B8(v26 > 1, v27 + 1, 1);
        v12 = v50;
      }

      ++v14;
      *(v12 + 16) = v27 + 1;
      result = (*(v39 + 32))(v12 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, v9, v41);
      v10 = v38;
      if (v37 == v14)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_20B929E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL RootViewController.allowsModalMessageDisplay.getter()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B424();
  v5 = v0;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v14[7] = *(v5 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability);
    v10 = sub_20C13C9D4();
    v12 = sub_20B51E694(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v6, v7, "[IAM] Message presentation %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return *(v5 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability) == 1;
}

void *sub_20B92A124()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LibraryGalleryViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = sub_20C13C914();
    [v0 setTitle_];

    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider];
    if ((*(v5 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_activationState) & 1) == 0)
    {
      *(v5 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_activationState) = 1;
    }

    if (((1 << v0[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_destination]) & 0x7DC) == 0)
    {
      sub_20C03669C();
      sub_20B92AC30();
    }

    sub_20B795568(0);
    sub_20BAD55A0();
    return sub_20B7962B0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B92A2A8(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LibraryGalleryViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_12;
      }

      v9 = 0;
    }

    sub_20BE8F76C(v9);
  }

LABEL_12:
}

void sub_20B92A710(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LibraryGalleryViewController();
  v23.receiver = v2;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, sel_viewWillDisappear_, a1 & 1);
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 viewControllers];

  sub_20B51C88C(0, &qword_281100550);
  v12 = sub_20C13CC74();

  if (v12 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x20F2F5430](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 navigationItem];
  [v15 setBackBarButtonItem_];

LABEL_11:
  v22 = v2;
  sub_20C132E84();
  sub_20B92B584(&qword_27C767CE8);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v16 = [v2 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v19 = sub_20C13CC74();

    v22 = v2;
    MEMORY[0x28223BE20](v20);
    *(&v21 - 2) = &v22;
    LOBYTE(v18) = sub_20B79AEEC(sub_20B5978BC, (&v21 - 4), v19);

    if ((v18 & 1) == 0)
    {
      v22 = v2;
      sub_20B92B584(&qword_27C767CF8);
      sub_20C138C64();
    }
  }
}

void sub_20B92AC30()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButton];
  v2 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v4 = v1;
  *(v4 + 1) = &off_2822C8C68;
  v11.receiver = v3;
  v11.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  [v6 setCustomView_];

  if (v0[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform] == 1)
  {
    v8 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C151490;
    *(v9 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v9 + 40) = v6;
    sub_20B51C88C(0, &qword_27C770510);
    v10 = v6;
    v7 = sub_20C13CC54();

    [v8 setRightBarButtonItems_];

    goto LABEL_5;
  }

  if (!v0[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform])
  {
    v7 = [v0 navigationItem];
    [v7 setRightBarButtonItem_];
LABEL_5:
  }
}

id sub_20B92AE20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryGalleryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LibraryGalleryViewController()
{
  result = qword_27C767CD8;
  if (!qword_27C767CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B92AFDC()
{
  result = sub_20C1352F4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_20B92B0F4(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_52;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20B92B2A4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20B92B3D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B92B48C()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B92B4F0()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20B92B584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibraryGalleryViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B92B5C8()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for ContentInsetBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ContentInsetBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_20B92B760(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_20B92B790(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_20B92B7CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a4 >> 6))
  {
    MEMORY[0x20F2F58E0](1);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x20F2F5910](v8);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x20F2F5910](v9);
    v6 = a4;
    return MEMORY[0x20F2F58E0](v6);
  }

  if (a4 >> 6 != 1 || (MEMORY[0x20F2F58E0](2), (a3 & 1) != 0))
  {
    v6 = 0;
    return MEMORY[0x20F2F58E0](v6);
  }

  MEMORY[0x20F2F58E0](1);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x20F2F5910](v11);
}

uint64_t sub_20B92B864()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_20C13E164();
  sub_20B92B7CC(v5, v1, v2, v3);
  return sub_20C13E1B4();
}

uint64_t sub_20B92B8CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_20C13E164();
  sub_20B92B7CC(v5, v1, v2, v3);
  return sub_20C13E1B4();
}

unint64_t sub_20B92B944()
{
  result = qword_27C767D00;
  if (!qword_27C767D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767D00);
  }

  return result;
}

uint64_t sub_20B92B998(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        if (a2)
        {
          if (a5)
          {
            return 1;
          }
        }

        else if (!(a5 & 1 | (*&a1 != *&a4)))
        {
          return 1;
        }
      }
    }

    else if ((a6 & 0xC0) == 0x80 && !(a5 | a4) && a6 == 128)
    {
      return 1;
    }

    return 0;
  }

  if (a6 >= 0x40u)
  {
    return 0;
  }

  v6 = *&a1 == *&a4;
  if (*&a2 != *&a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

void *sub_20B92BBBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20B92BBEC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  *&v5[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_layout] = 0x4018000000000000;
  v12 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView;
  v13 = objc_allocWithZone(type metadata accessor for TVArtworkView());
  v14 = sub_20BAEFC6C(1, 0.0, 0.0, 0.0, 0.0);
  v15 = [v14 config];
  [v15 setScaleSizeIncrease_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v12] = v14;
  v16 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = sub_20C13C914();
  [v17 setText_];

  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  [v17 setTextAlignment_];
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  [v17 setFont_];

  v20 = [objc_opt_self() labelColor];
  [v17 setTextColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  *&v5[v16] = v17;
  v55.receiver = v5;
  v55.super_class = type metadata accessor for TVCircleItemCell();
  v21 = objc_msgSendSuper2(&v55, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = [v21 contentView];
  v23 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView;
  v24 = *&v21[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView];
  [v22 addSubview_];

  v25 = [v21 contentView];
  v26 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_titleLabel;
  [v25 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C150AE0;
  v28 = [*&v21[v23] topAnchor];
  v29 = [v21 contentView];
  v30 = [v29 topAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v27 + 32) = v31;
  v32 = [*&v21[v23] centerXAnchor];
  v33 = [v21 contentView];
  v34 = [v33 centerXAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v27 + 40) = v35;
  v36 = [*&v21[v23] widthAnchor];
  v37 = [v36 constraintEqualToConstant_];

  *(v27 + 48) = v37;
  v38 = [*&v21[v23] heightAnchor];
  v39 = [v38 constraintEqualToConstant_];

  *(v27 + 56) = v39;
  v40 = [*&v21[v26] leadingAnchor];
  v41 = [v21 contentView];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v27 + 64) = v43;
  v44 = [*&v21[v26] topAnchor];
  result = [*&v21[v23] _focusedFrameGuide];
  if (result)
  {
    v46 = result;
    v47 = objc_opt_self();
    v48 = [v46 bottomAnchor];

    v49 = [v44 constraintEqualToAnchor:v48 constant:6.0];
    *(v27 + 72) = v49;
    v50 = [*&v21[v26] trailingAnchor];
    v51 = [v21 contentView];

    v52 = [v51 trailingAnchor];
    v53 = [v50 constraintEqualToAnchor_];

    *(v27 + 80) = v53;
    sub_20B51C88C(0, &qword_281100500);
    v54 = sub_20C13CC54();

    [v47 activateConstraints_];

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B92C438()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_titleLabel);
}

id sub_20B92C4A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVCircleItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVCircleItemCell()
{
  result = qword_27C767D10;
  if (!qword_27C767D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B92C5B0()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B92C678(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B92C6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B92C72C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

uint64_t sub_20B92C808(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B69ADFC();
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20B92CCC4(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v206 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v190 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v191 = &v167 - v7;
  v189 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v167 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v167 - v13;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v199 = *(v202 - 8);
  v15 = *(v199 + 64);
  MEMORY[0x28223BE20](v202);
  v188 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v200 = &v167 - v17;
  v198 = sub_20C1391C4();
  v197 = *(v198 - 1);
  MEMORY[0x28223BE20](v198);
  v19 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_20C138A64();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v201 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v21 - 8);
  v196 = &v167 - v22;
  v23 = sub_20C13C554();
  v207 = *(v23 - 8);
  v208 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = (&v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = sub_20C137C24();
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v203 = v26;
  v204 = &v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v213 = &v167 - v28;
  v205 = sub_20C136CD4();
  v29 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v210 = &v167 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v211 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v209 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v37 == 33)
  {
    v118 = v215;
    v119 = *&v215[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_titleLabel];
    v120 = sub_20C13C914();
    [v119 setText_];

    v63 = *&v118[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView];
    if (qword_27C760828 == -1)
    {
LABEL_12:
      v121 = qword_27C79AE50;

      return [v63 setBackgroundColor_];
    }

LABEL_24:
    v166 = v63;
    swift_once();
    v63 = v166;
    goto LABEL_12;
  }

  if (v37 == 32)
  {
    v175 = v19;
    v176 = v14;
    v173 = v15;
    v187 = v29;
    v174 = v11;
    v38 = v35;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v40 = swift_projectBox() + *(v39 + 64);
    v41 = *v40;
    v42 = *(v40 + 8);
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    v45 = *(v40 + 32);
    v46 = *(v40 + 40);
    v181 = v34;
    v47 = *(v34 + 16);
    v182 = v38;
    v48 = v209;
    v47();
    v49 = *&v215[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_titleLabel];
    v50 = v41;
    v183 = v42;
    v180 = v44;
    v186 = v43;

    v185 = v45;
    v51 = v50;

    v184 = v46;

    [v49 setAttributedText_];
    sub_20C133F34();
    if (v52)
    {
      v53 = sub_20C13C914();

      [v49 setAccessibilityLabel_];
    }

    [v49 setTextAlignment_];
    v54 = v211;
    sub_20C133F04();
    v179 = sub_20C138054();
    v206 = v55;
    v56 = v210;
    sub_20C134E34();
    v57 = v213;
    sub_20C136CB4();
    v178 = sub_20C136CC4();
    v59 = v58;
    sub_20B51C88C(0, &qword_281100530);
    *v25 = sub_20C13D374();
    v60 = v207;
    v61 = v208;
    v207[13](v25, *MEMORY[0x277D85200], v208);
    v62 = sub_20C13C584();
    v63 = (v60[1])(v25, v61);
    if (v62)
    {
      v64 = *&v215[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView];
      [v64 setContentMode_];
      if (sub_20B92C808(v57, v64, 0))
      {
        v207 = v51;
        v208 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v65 = v212;
        v66 = *(v212 + 16);
        v67 = v204;
        v68 = v214;
        v170 = v212 + 16;
        v169 = v66;
        v66(v204, v57, v214);
        v69 = *(v65 + 80);
        v70 = (v69 + 24) & ~v69;
        v168 = (v203 + 7);
        v71 = (v203 + 7 + v70) & 0xFFFFFFFFFFFFFFF8;
        v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
        v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
        v172 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
        v171 = v69;
        v74 = swift_allocObject();
        v177 = v59;
        v75 = v74;
        *(v74 + 16) = v208;
        v76 = v67;
        v77 = v65 + 32;
        v78 = v68;
        v79 = *(v65 + 32);
        v79(v74 + v70, v76, v78);
        v80 = (v75 + v71);
        v81 = v177;
        *v80 = v178;
        v80[1] = v81;
        v82 = (v75 + v72);
        v83 = v206;
        *v82 = v179;
        v82[1] = v83;
        *(v75 + v73) = 2;
        v84 = v75 + v172;
        *v84 = MEMORY[0x277D84F90];
        *(v84 + 8) = 0;
        v85 = (v75 + ((v73 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v85 = 0;
        v85[1] = 0;
        v86 = &v64[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v87 = *&v64[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v86 = sub_20B92E1F8;
        v86[1] = v75;

        sub_20B583ECC(v87);

        [v64 bounds];
        if (v88 <= 0.0 || (v90 = v89, v89 <= 0.0))
        {

          v57 = v213;
          v117 = v214;
        }

        else
        {
          v91 = v88;
          v92 = v64;
          v208 = ~v171;
          [v64 setStackImage_];
          v93 = v196;
          v94 = v213;
          v95 = v214;
          v96 = v169;
          v169(v196, v213, v214);
          (*(v212 + 56))(v93, 0, 1, v95);
          v97 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v93, &v92[v97], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v98 = sub_20C13D5A4();
          [v92 setBackgroundColor_];

          v99 = &v92[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v99 = v91;
          v99[1] = v90;
          *(v99 + 16) = 0;
          v100 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v101 = v204;
          v96(v204, v94, v95);
          v102 = v77;
          v103 = (v171 + 16) & v208;
          v104 = (v168 + v103) & 0xFFFFFFFFFFFFFFF8;
          v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
          v107 = swift_allocObject();
          v172 = v102;
          v168 = v79;
          v79(v107 + v103, v101, v95);
          *(v107 + v104) = v100;
          v108 = (v107 + v105);
          v109 = v101;
          *v108 = v91;
          v108[1] = v90;
          v196 = v107;
          v110 = (v107 + v106);
          v111 = v169;
          *v110 = 0;
          v110[1] = 0;
          v112 = v213;
          v111(v101);
          (*(v197 + 104))(v175, *MEMORY[0x277D542A8], v198);

          v113 = v201;
          sub_20C138A54();
          v114 = v176;
          sub_20B5F1820(v113, v176);
          v115 = v199;
          v116 = v202;
          if ((*(v199 + 48))(v114, 1, v202) == 1)
          {
            sub_20B520158(v114, &unk_27C766670);
            sub_20BA1D968();

            (*(v194 + 8))(v113, v195);
            v117 = v214;
            v57 = v112;
          }

          else
          {
            v198 = *(v115 + 32);
            v198(v200, v114, v116);
            v136 = v111;
            v137 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v136(v109, v112, v214);
            v138 = (v171 + 40) & v208;
            v139 = v138 + v203;
            v140 = (v138 + v203) & 0xFFFFFFFFFFFFFFF8;
            v141 = swift_allocObject();
            *(v141 + 2) = v137;
            v141[3] = v91;
            v141[4] = v90;
            v168(v141 + v138, v109, v214);
            *(v141 + v139) = 0;
            v142 = v141 + v140;
            *(v142 + 1) = 0;
            *(v142 + 2) = 0;
            v143 = swift_allocObject();
            *(v143 + 16) = sub_20B92E38C;
            *(v143 + 24) = v141;
            v144 = v188;
            v145 = v202;
            (*(v115 + 16))(v188, v200, v202);
            v146 = (*(v115 + 80) + 16) & ~*(v115 + 80);
            v147 = (v173 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
            v148 = swift_allocObject();
            v198((v148 + v146), v144, v145);
            v149 = (v148 + v147);
            *v149 = sub_20B5F67A4;
            v149[1] = v143;
            v150 = v191;
            sub_20C137C94();
            v151 = swift_allocObject();
            v152 = v196;
            *(v151 + 16) = sub_20B92E2D0;
            *(v151 + 24) = v152;
            v153 = swift_allocObject();
            *(v153 + 16) = sub_20B5F67D4;
            *(v153 + 24) = v151;
            v154 = v192;
            v155 = v190;
            v156 = v193;
            (*(v192 + 16))(v190, v150, v193);
            v157 = (*(v154 + 80) + 16) & ~*(v154 + 80);
            v158 = (v189 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
            v159 = swift_allocObject();
            (*(v154 + 32))(v159 + v157, v155, v156);
            v160 = (v159 + v158);
            *v160 = sub_20B5DF204;
            v160[1] = v153;

            v161 = v174;
            sub_20C137C94();
            v162 = *(v154 + 8);
            v162(v150, v156);
            v163 = sub_20C137CB4();
            v164 = swift_allocObject();
            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            v163(sub_20B52347C, v164);

            v162(v161, v156);
            v165 = v214;
            (*(v115 + 8))(v200, v202);
            (*(v194 + 8))(v201, v195);
            v117 = v165;
            v57 = v213;
          }
        }

        v56 = v210;
        v54 = v211;
        v134 = v187;
        v48 = v209;
        v51 = v207;
      }

      else
      {

        v117 = v214;
        v134 = v187;
      }

      v135 = v183;
      (*(v212 + 8))(v57, v117);
      (*(v134 + 8))(v56, v205);

      sub_20B62A2AC(v54);
      return (*(v181 + 8))(v48, v182);
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_20C13B534();

  v123 = v215;
  v124 = sub_20C13BB74();
  v125 = sub_20C13D1D4();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v216[0] = v128;
    *v126 = 138543618;
    *(v126 + 4) = v123;
    *v127 = v123;
    *(v126 + 12) = 2082;
    v216[3] = a1;
    v129 = sub_20B5F66D0();
    v130 = v123;
    v131 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v129);
    v133 = sub_20B51E694(v131, v132, v216);

    *(v126 + 14) = v133;
    _os_log_impl(&dword_20B517000, v124, v125, "Attempted to configure %{public}@ with item: %{public}s", v126, 0x16u);
    sub_20B520158(v127, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v127, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v128);
    MEMORY[0x20F2F6A40](v128, -1, -1);
    MEMORY[0x20F2F6A40](v126, -1, -1);
  }

  return (*(v206 + 8))(v4, v2);
}

void sub_20B92E1F8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA32630(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B92E2D0(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62F00(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B92E38C(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2608(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B92E440()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_layout) = 0x4018000000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView;
  v5 = objc_allocWithZone(type metadata accessor for TVArtworkView());
  v6 = sub_20BAEFC6C(1, 0.0, 0.0, 0.0, 0.0);
  v7 = [v6 config];
  [v7 setScaleSizeIncrease_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = sub_20C13C914();
  [v9 setText_];

  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  [v9 setTextAlignment_];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v9 setTextColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  *(v1 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B92E6DC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI12FallbackCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI12FallbackCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for FallbackCell();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor_];

  [v13 setUserInteractionEnabled_];
  return v13;
}

id sub_20B92EAB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FallbackCell()
{
  result = qword_27C767D28;
  if (!qword_27C767D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B92EB88()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B92EC24(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI12FallbackCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B92EC70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI12FallbackCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B92ECC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI12FallbackCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B92ED34(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = a1;
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_20B5F66D0();
    v11 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v10);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20B517000, v6, v7, "Configuring fallback cell with item: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20B92EEFC()
{
  result = _UISolariumEnabled();
  v1 = 12.0;
  if (result)
  {
    v1 = 20.0;
  }

  qword_27C79ACA0 = *&v1;
  return result;
}

uint64_t sub_20B92EF2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_20B92EF88(v7, v9) & 1;
}

uint64_t sub_20B92EF88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_20C13DFF4() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v5)
  {
LABEL_22:
    v8 = 0;
    return v8 & 1;
  }

  v7 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v7 && (sub_20C13DFF4() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_20C13DFF4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 64) ^ *(a2 + 64) ^ 1;
  return v8 & 1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20B92F08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B92F0D4(uint64_t result, int a2, int a3)
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
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_20B92F138(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView];
  v12 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v13 = sub_20B91B5FC(1);
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *v11 = v13;
  v11[1] = &off_2822B63E8;
  v14 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  [v15 setFont_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  [v15 setTextAlignment_];
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  [v15 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  v77 = 1144750080;
  v76 = 1065353216;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v19) = v78;
  [v15 setContentHuggingPriority:1 forAxis:v19];
  v20 = [v17 systemBackgroundColor];
  [v15 setBackgroundColor_];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_layout] = xmmword_20C163600;
  v75.receiver = v4;
  v75.super_class = type metadata accessor for CircleItemCell();
  v21 = objc_msgSendSuper2(&v75, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = [v21 contentView];
  v23 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView;
  [v22 addSubview_];

  v24 = [v21 contentView];
  v73 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_titleLabel;
  [v24 addSubview_];

  v74 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C1615B0;
  v26 = [*&v21[v23] leadingAnchor];
  v27 = [v21 contentView];
  v28 = [v27 leadingAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v25 + 32) = v29;
  v30 = [*&v21[v23] topAnchor];
  v31 = [v21 contentView];
  v32 = [v31 &selRef_setLineBreakMode_];

  v33 = [v30 &selRef:v32 alertControllerReleasedDictationButton:? + 5];
  *(v25 + 40) = v33;
  v34 = [*&v21[v23] trailingAnchor];
  v35 = [v21 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 &selRef:v36 alertControllerReleasedDictationButton:? + 5];
  *(v25 + 48) = v37;
  v38 = [*&v21[v23] widthAnchor];
  v39 = [v21 contentView];
  v40 = [v39 widthAnchor];

  v41 = [v38 &selRef:v40 alertControllerReleasedDictationButton:? + 5];
  v77 = 1144750080;
  v76 = 1065353216;
  sub_20C13BB94();
  LODWORD(v42) = v78;
  [v41 setPriority_];
  *(v25 + 56) = v41;
  v43 = [*&v21[v23] heightAnchor];
  v44 = [*&v21[v23] widthAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  v77 = 1144750080;
  v76 = 1065353216;
  sub_20C13BB94();
  LODWORD(v46) = v78;
  [v45 setPriority_];
  *(v25 + 64) = v45;
  v47 = [*&v21[v73] leadingAnchor];
  v48 = [v21 contentView];
  v49 = [v48 leadingAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  *(v25 + 72) = v50;
  v51 = [*&v21[v73] trailingAnchor];
  v52 = [v21 contentView];
  v53 = [v52 trailingAnchor];

  v54 = [v51 constraintLessThanOrEqualToAnchor_];
  *(v25 + 80) = v54;
  v55 = [*&v21[v73] centerXAnchor];
  v56 = [*&v21[v23] centerXAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v25 + 88) = v57;
  v58 = [*&v21[v73] topAnchor];
  v59 = [*&v21[v23] bottomAnchor];
  v60 = &v21[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_layout];
  v61 = [v58 constraintEqualToAnchor:v59 constant:*&v21[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_layout]];

  *(v25 + 96) = v61;
  v62 = [*&v21[v73] bottomAnchor];
  v63 = [v21 contentView];
  v64 = [v63 bottomAnchor];

  v65 = [v62 constraintLessThanOrEqualToAnchor_];
  *(v25 + 104) = v65;
  v66 = [*&v21[v73] firstBaselineAnchor];
  v67 = [v21 contentView];

  v68 = [v67 bottomAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:-v60[1]];

  v77 = 1144750080;
  v76 = 1065353216;
  sub_20C13BBA4();
  LODWORD(v70) = v78;
  [v69 setPriority_];
  *(v25 + 112) = v69;
  sub_20B51C88C(0, &qword_281100500);
  v71 = sub_20C13CC54();

  [v74 activateConstraints_];

  return v21;
}

id sub_20B92FD14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircleItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CircleItemCell()
{
  result = qword_281103950;
  if (!qword_281103950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B92FE1C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B92FEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI14CircleItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B92FF34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B92FF8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_20B92FFF0(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  return sub_20B72097C(2, 0.333333333, v3);
}

uint64_t sub_20B930088(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v216 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v200 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v201 = &v174 - v7;
  v199 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v174 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v174 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v211 = *(v15 - 8);
  v212 = v15;
  v16 = *(v211 + 64);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v209 = &v174 - v18;
  v208 = sub_20C1391C4();
  v207 = *(v208 - 1);
  MEMORY[0x28223BE20](v208);
  v20 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_20C138A64();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v210 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v206 = &v174 - v23;
  v24 = sub_20C13C554();
  v218 = *(v24 - 1);
  v219 = v24;
  MEMORY[0x28223BE20](v24);
  v217 = (&v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20C137C24();
  v222 = *(v26 - 8);
  v223 = v26;
  MEMORY[0x28223BE20](v26);
  v213 = v27;
  v214 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v224 = &v174 - v29;
  v215 = sub_20C136CD4();
  v30 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v220 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134E44();
  MEMORY[0x28223BE20](v32 - 8);
  v221 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134014();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v225 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v38 == 33)
  {
    v125 = *&v226[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_titleLabel];
    v126 = sub_20C13C914();
    [v125 setText_];

    return sub_20BA1D950();
  }

  else if (v38 == 32)
  {
    v187 = v20;
    v188 = v14;
    v184 = v16;
    v185 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v197 = v30;
    v186 = v11;
    v39 = v36;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v41 = swift_projectBox();
    v42 = v41 + *(v40 + 64);
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    v46 = *(v42 + 24);
    v48 = *(v42 + 32);
    v47 = *(v42 + 40);
    v191 = v35;
    v49 = *(v35 + 16);
    v192 = v39;
    v49(v225, v41, v39);
    v50 = v226;
    v51 = *&v226[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_titleLabel];
    v52 = v43;
    v194 = v44;
    v193 = v45;
    v196 = v46;
    v53 = v47;

    v195 = v48;

    [v51 setAttributedText_];
    sub_20C133F34();
    if (v54)
    {
      v55 = sub_20C13C914();

      [v51 setAccessibilityLabel_];
    }

    [v51 setTextAlignment_];
    v56 = v221;
    sub_20C133F04();
    v190 = sub_20C138054();
    v216 = v57;
    v58 = v220;
    sub_20C134E34();
    v59 = v224;
    sub_20C136CB4();
    v189 = sub_20C136CC4();
    v198 = v60;
    sub_20B51C88C(0, &qword_281100530);
    v61 = sub_20C13D374();
    v62 = v217;
    v63 = v218;
    *v217 = v61;
    v64 = v219;
    (*(v63 + 104))(v62, *MEMORY[0x277D85200], v219);
    v65 = sub_20C13C584();
    result = (*(v63 + 8))(v62, v64);
    if (v65)
    {
      v219 = v52;
      v67 = *&v50[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView];
      v68 = *&v50[OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v67 setContentMode_];
      if (sub_20BA66C54(v59, v67, v68, 0))
      {
        v218 = v53;
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v217 = v67;
        v71 = v222;
        v72 = v223;
        v73 = *(v222 + 16);
        v74 = v214;
        v178 = v222 + 16;
        v180 = v73;
        v73(v214, v59, v223);
        v75 = *(v71 + 80);
        v76 = (v75 + 24) & ~v75;
        v175 = v213 + 7;
        v77 = (v213 + 7 + v76) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v182 = v68;
        v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
        v181 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
        v179 = v75;
        v80 = swift_allocObject();
        v183 = ObjectType;
        v81 = v80;
        *(v80 + 16) = v70;
        v82 = *(v71 + 32);
        v83 = v80 + v76;
        v84 = v189;
        v85 = v72;
        v86 = v198;
        v176 = v71 + 32;
        v177 = v82;
        v82(v83, v74, v85);
        v87 = (v81 + v77);
        *v87 = v84;
        v87[1] = v86;
        v88 = (v81 + v78);
        v89 = v216;
        *v88 = v190;
        v88[1] = v89;
        *(v81 + v79) = 2;
        v90 = v81 + v181;
        *v90 = MEMORY[0x277D84F90];
        *(v90 + 8) = 0;
        v91 = (v81 + ((v79 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v91 = 0;
        v91[1] = 0;
        v92 = v182;
        v93 = *(v182 + 152);

        v94 = v217;

        v95 = v183;
        v93(sub_20B9315C8, v81);

        [v94 bounds];
        if (v96 <= 0.0 || (v98 = v97, v97 <= 0.0))
        {

          v140 = v222;
          v122 = v223;
          v123 = v215;
          v59 = v224;
        }

        else
        {
          v99 = v96;
          v100 = v92;
          v181 = ~v179;
          v101 = *(v92 + 120);
          v102 = v95;
          v101(0, v95, v100);
          v103 = v206;
          v104 = v223;
          v105 = v224;
          v180(v206, v224, v223);
          (*(v222 + 56))(v103, 0, 1, v104);
          (*(v100 + 16))(v103, v102, v100);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v106 = sub_20C13D5A4();
          [v94 setBackgroundColor_];

          v107 = v104;
          (*(v100 + 176))(COERCE_DOUBLE(*&v99), COERCE_DOUBLE(*&v98), 0, v102, v100);
          v108 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v109 = v214;
          v180(v214, v105, v104);
          v110 = (v179 + 16) & v181;
          v111 = (v175 + v110) & 0xFFFFFFFFFFFFFFF8;
          v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
          v113 = swift_allocObject();
          v177(v113 + v110, v109, v107);
          *(v113 + v111) = v108;
          v59 = v224;
          v114 = (v113 + v112);
          *v114 = v99;
          v114[1] = v98;
          v217 = v113;
          v115 = (v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v115 = 0;
          v115[1] = 0;
          v116 = v107;
          v117 = v109;
          v180(v109, v59, v116);
          (*(v207 + 104))(v187, *MEMORY[0x277D542A8], v208);

          v118 = v210;
          sub_20C138A54();
          v119 = v188;
          sub_20B5F1634(v118, v188);
          v121 = v211;
          v120 = v212;
          if ((*(v211 + 48))(v119, 1, v212) == 1)
          {
            sub_20B520158(v119, &unk_27C766670);
            sub_20BA1D950();

            (*(v204 + 8))(v118, v205);
            v122 = v223;
            v123 = v215;
            v58 = v220;
            v56 = v221;
            v124 = v197;
LABEL_18:
            v138 = v194;
            v139 = v193;
            v140 = v222;
LABEL_21:
            (*(v140 + 8))(v59, v122);
            (*(v124 + 8))(v58, v123);

            sub_20B62A2AC(v56);
            return (*(v191 + 8))(v225, v192);
          }

          v208 = *(v121 + 32);
          v208(v209, v119, v120);
          v141 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v142 = v223;
          v180(v117, v224, v223);
          v143 = (v179 + 40) & v181;
          v144 = v143 + v213;
          v145 = v117;
          v146 = (v143 + v213) & 0xFFFFFFFFFFFFFFF8;
          v147 = swift_allocObject();
          *(v147 + 2) = v141;
          v147[3] = v99;
          v147[4] = v98;
          v177(v147 + v143, v145, v142);
          *(v147 + v144) = 0;
          v148 = v147 + v146;
          *(v148 + 1) = 0;
          *(v148 + 2) = 0;
          v149 = swift_allocObject();
          *(v149 + 16) = sub_20B93175C;
          *(v149 + 24) = v147;
          v150 = v211;
          v151 = v212;
          v152 = v185;
          (*(v211 + 16))(v185, v209, v212);
          v153 = v150;
          v154 = (*(v150 + 80) + 16) & ~*(v150 + 80);
          v155 = (v184 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
          v156 = swift_allocObject();
          v208((v156 + v154), v152, v151);
          v157 = (v156 + v155);
          *v157 = sub_20B5F67A4;
          v157[1] = v149;
          v158 = v201;
          sub_20C137C94();
          v159 = swift_allocObject();
          v160 = v217;
          *(v159 + 16) = sub_20B9316A0;
          *(v159 + 24) = v160;
          v161 = swift_allocObject();
          *(v161 + 16) = sub_20B5F67D4;
          *(v161 + 24) = v159;
          v162 = v202;
          v163 = v200;
          v164 = v203;
          (*(v202 + 16))(v200, v158, v203);
          v165 = (*(v162 + 80) + 16) & ~*(v162 + 80);
          v166 = (v199 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
          v167 = swift_allocObject();
          (*(v162 + 32))(v167 + v165, v163, v164);
          v168 = (v167 + v166);
          *v168 = sub_20B5DF204;
          v168[1] = v161;

          v169 = v186;
          sub_20C137C94();
          v170 = *(v162 + 8);
          v170(v158, v164);
          v171 = sub_20C137CB4();
          v172 = swift_allocObject();
          *(v172 + 16) = 0;
          *(v172 + 24) = 0;
          v171(sub_20B52347C, v172);
          v173 = v222;

          v170(v169, v164);
          v59 = v224;
          (*(v153 + 8))(v209, v212);
          (*(v204 + 8))(v210, v205);
          v140 = v173;
          v122 = v223;
          v123 = v215;
        }

        v58 = v220;
        v56 = v221;
        v124 = v197;
        v138 = v194;
        v139 = v193;
        goto LABEL_21;
      }

      v122 = v223;
      v123 = v215;
      v124 = v197;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v127 = v226;
    v128 = sub_20C13BB74();
    v129 = sub_20C13D1D4();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v227 = a1;
      v228 = v132;
      *v130 = 138543618;
      *(v130 + 4) = v127;
      *v131 = v127;
      *(v130 + 12) = 2082;
      v133 = sub_20B5F66D0();
      v134 = v127;
      v135 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v133);
      v137 = sub_20B51E694(v135, v136, &v228);

      *(v130 + 14) = v137;
      _os_log_impl(&dword_20B517000, v128, v129, "Attempted to configure %{public}@ with item: %{public}s", v130, 0x16u);
      sub_20B520158(v131, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v131, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x20F2F6A40](v132, -1, -1);
      MEMORY[0x20F2F6A40](v130, -1, -1);
    }

    return (*(v216 + 8))(v4, v2);
  }

  return result;
}

void sub_20B9315C8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA30520(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B9316A0(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA629C0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B93175C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F1F48(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B931810()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI14CircleItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView);
  v5 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v6 = sub_20B91B5FC(1);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v6;
  v4[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI14CircleItemCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  [v8 setTextAlignment_];
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  [v8 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v12) = v14;
  [v8 setContentHuggingPriority:1 forAxis:v12];
  v13 = [v10 systemBackgroundColor];
  [v8 setBackgroundColor_];

  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC9SeymourUI14CircleItemCell_layout) = xmmword_20C163600;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B931AF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B93245C();
  }

  return result;
}

uint64_t sub_20B931B50()
{
  v0 = sub_20C139684();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D90);
    sub_20C139414();
    sub_20B936060(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B931C70()
{
  v0 = sub_20C139684();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D88);
    sub_20C139294();
    sub_20B939B10(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B931D8C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B9320C8(v1);
  }

  return result;
}

uint64_t sub_20B931E0C()
{
  v0[3] = *__swift_project_boxed_opaque_existential_1((v0[2] + 88), *(v0[2] + 112));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B931EB0;

  return sub_20BD49114();
}

uint64_t sub_20B931EB0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20B931FEC, 0, 0);
  }
}

uint64_t sub_20B931FEC()
{
  v1 = *(*(v0 + 24) + 88);
  os_unfair_lock_lock((v1 + 24));
  v2 = 3;
  if ((sub_20B8DD120(3, *(v1 + 16)) & 1) == 0)
  {
    v2 = 0;
    if ((sub_20B8DD120(0, *(v1 + 16)) & 1) == 0)
    {
      v2 = 4;
      if ((sub_20B8DD120(4, *(v1 + 16)) & 1) == 0)
      {
        if (sub_20B8DD120(1, *(v1 + 16)))
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }
    }
  }

  os_unfair_lock_unlock((v1 + 24));
  sub_20B9320C8(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B9320C8(char a1)
{
  v2 = v1;
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(v2 + 80);
  v12 = swift_allocObject();
  swift_weakInit();
  LOBYTE(v2) = *(v2 + 56);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 25) = v2;
  aBlock[4] = sub_20B939B00;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_151;
  v14 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v16[1] = MEMORY[0x277D84F90];
  sub_20B939550(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

void sub_20B9323AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v4 = *(Strong + 128), , v4 != a2))
  {
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = sub_20B939280(a2);
      v8 = *(v6 + 136);
      *(v6 + 128) = v7;
      *(v6 + 136) = v9;
    }
  }
}

uint64_t sub_20B93245C()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = sub_20C132FD4();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[24];
  if (!v15 || (v16 = [v15 asset], v17 = objc_msgSend(v16, sel_mediaSelectionGroupForMediaCharacteristic_, *MEMORY[0x277CE5DE0]), v16, !v17))
  {
LABEL_12:
    sub_20C13B534();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20B517000, v25, v26, "Unable to find audiohints in map, cannot update audiohints", v27, 2u);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  v30 = v1;
  v18 = v0[24];
  if (!v18 || (v19 = [v18 currentMediaSelection], v20 = objc_msgSend(v19, sel_selectedMediaOptionInMediaSelectionGroup_, v17), v19, !v20))
  {

    (*(v12 + 56))(v10, 1, 1, v11);
    v1 = v30;
LABEL_11:
    sub_20B520158(v10, &qword_27C76FEB0);
    goto LABEL_12;
  }

  v21 = [v20 locale];

  if (v21)
  {
    sub_20C132F84();

    v22 = v12;
    (*(v12 + 56))(v7, 0, 1, v11);
  }

  else
  {
    v22 = v12;
    (*(v12 + 56))(v7, 1, 1, v11);
  }

  sub_20B5DF134(v7, v10, &qword_27C76FEB0);
  v23 = (*(v22 + 48))(v10, 1, v11);
  v1 = v30;
  v24 = v31;
  if (v23 == 1)
  {

    goto LABEL_11;
  }

  (*(v22 + 32))(v31, v10, v11);
  if (!*(v0[26] + 16))
  {
LABEL_21:

    (*(v22 + 8))(v24, v11);
    goto LABEL_12;
  }

  sub_20B65AED8(v24);
  if ((v29 & 1) == 0)
  {

    goto LABEL_21;
  }

  if (v0[8])
  {

    sub_20C138914();
  }

  else
  {
  }

  return (*(v22 + 8))(v24, v11);
}

void sub_20B932908(void *a1, uint64_t a2)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = *(v2 + 192);
  *(v2 + 192) = a1;
  v15 = a1;

  *(v2 + 64) = a2;

  v36 = [v15 asset];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v2;
    v19 = swift_allocObject();
    *(v19 + 16) = "SeymourUI/AudioHintPresenter.swift";
    *(v19 + 24) = 34;
    *(v19 + 32) = 2;
    *(v19 + 40) = 181;
    *(v19 + 48) = &unk_20C163810;
    *(v19 + 56) = v18;
    v36 = v36;

    sub_20C137C94();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v15;
    v21[4] = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B939734;
    *(v22 + 24) = v21;
    v23 = v33;
    (*(v5 + 16))(v7, v10, v33);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    (*(v5 + 32))(v25 + v24, v7, v23);
    v26 = (v25 + ((v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B5D9FF4;
    v26[1] = v22;
    v27 = v15;
    v28 = v36;
    sub_20C137C94();
    (*(v5 + 8))(v10, v23);
    v29 = v35;
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v30(sub_20B5DF6DC, v31);

    (*(v34 + 8))(v13, v29);
  }

  else
  {
    v32 = v36;
  }
}

uint64_t sub_20B932D88(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    sub_20C13B574();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "Skipping audio hint activation as no audio hints were found", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_20B932F54(a3);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20B9353D4(a4);
    }
  }

  return result;
}

void sub_20B932F54(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277CE6100];
  v4 = [objc_opt_self() mainQueue];
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v10[4] = sub_20B93966C;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20BF3ECF4;
  v10[3] = &block_descriptor_105;
  v7 = _Block_copy(v10);
  v8 = a1;

  v9 = [v2 addObserverForName:v3 object:v8 queue:v4 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

uint64_t sub_20B9330DC()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    sub_20B93245C();
    sub_20B935BE8();
  }

  return result;
}

uint64_t sub_20B933214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v4 = sub_20C132FD4();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B9333E0, 0, 0);
}

uint64_t sub_20B9333E0()
{
  v1 = v0[21];
  v2 = v0[9];
  sub_20B51C88C(0, &qword_281100530);
  v3 = sub_20C13D374();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = sub_20B51C88C(0, &qword_27C763230);
  v6 = v2;
  sub_20C137C94();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *(v7 + 16) = "SeymourUI/AudioHintPresenter.swift";
  *(v7 + 24) = 34;
  *(v7 + 32) = 2;
  *(v7 + 40) = 183;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_20B933578;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B939844, v7, v5);
}

uint64_t sub_20B933578()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    v3 = sub_20B933ADC;
  }

  else
  {
    v5 = v2[20];
    v4 = v2[21];
    v6 = v2[19];
    v2[25] = v2[5];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B9336D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B9336D8()
{
  v1 = [*(v0 + 200) options];
  sub_20B51C88C(0, &qword_27C76FEC0);
  v2 = sub_20C13CC74();

  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v3 = v22)
  {
    v5 = 0;
    v6 = *(v0 + 112);
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = v3 & 0xC000000000000001;
    v31 = (v6 + 56);
    v29 = (v6 + 48);
    v37 = MEMORY[0x277D84F90];
    v28 = v6;
    v30 = (v6 + 32);
    v7 = &qword_27C76FEB0;
    v32 = i;
    v33 = v3;
    while (1)
    {
      if (v35)
      {
        v3 = MEMORY[0x20F2F5430](v5, v3);
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_21;
        }

        v3 = *(v3 + 8 * v5 + 32);
      }

      v8 = v3;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = v7;
      v11 = [v3 locale];
      if (v11)
      {
        v12 = v11;
        sub_20C132F84();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = *(v0 + 96);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);

      (*v31)(v16, v13, 1, v15);
      v7 = v10;
      sub_20B5DF134(v16, v14, v10);
      if ((*v29)(v14, 1, v15) == 1)
      {
        sub_20B520158(*(v0 + 96), v10);
      }

      else
      {
        v17 = *v30;
        (*v30)(*(v0 + 120), *(v0 + 96), *(v0 + 104));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_20BC07C0C(0, *(v37 + 2) + 1, 1, v37);
        }

        v19 = *(v37 + 2);
        v18 = *(v37 + 3);
        if (v19 >= v18 >> 1)
        {
          v37 = sub_20BC07C0C(v18 > 1, v19 + 1, 1, v37);
        }

        v20 = *(v0 + 120);
        v21 = *(v0 + 104);
        *(v37 + 2) = v19 + 1;
        v17(&v37[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19], v20, v21);
      }

      v3 = v33;
      ++v5;
      if (v9 == v32)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = v3;
    i = sub_20C13DB34();
  }

  v37 = MEMORY[0x277D84F90];
LABEL_24:
  v23 = *(v0 + 72);

  v24 = sub_20B717824(v37);
  *(v0 + 208) = v24;

  *(v0 + 56) = sub_20B6B2CFC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D60);
  v25 = swift_task_alloc();
  *(v0 + 216) = v25;
  v25[2] = v24;
  v25[3] = v23;
  v25[4] = v0 + 56;
  v26 = swift_task_alloc();
  *(v0 + 224) = v26;
  *v26 = v0;
  v26[1] = sub_20B933D88;

  return MEMORY[0x282200600]();
}

uint64_t sub_20B933ADC()
{
  v29 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 72);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_20C13B574();
  v3 = v2;
  v4 = v1;
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v27 = *(v0 + 144);
    v25 = *(v0 + 192);
    v26 = *(v0 + 128);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_20C13C954();
    v15 = v14;

    v16 = sub_20B51E694(v13, v15, &v28);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v17 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v19 = sub_20B51E694(v17, v18, &v28);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_20B517000, v5, v6, "No audible media selection group for %s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v22 = *(v0 + 128);

    (*(v21 + 8))(v20, v22);
  }

  **(v0 + 64) = 1;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20B933D88()
{

  return MEMORY[0x2822009F8](sub_20B933EBC, 0, 0);
}

uint64_t sub_20B933EBC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  *(v1 + 208) = *(v0 + 56);

  v3 = *(*(v1 + 208) + 16);

  *v2 = v3 == 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20B933F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D60);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D68);
  v5[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D70);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = sub_20C132FD4();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v5[25] = *(v9 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B9341D8, 0, 0);
}

uint64_t sub_20B9341D8()
{
  v1 = *(v0 + 88);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 88) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v37 = *(v0 + 88);
  v38 = *(v0 + 192);

  v13 = 0;
  v35 = v8;
  v36 = v3;
  while (v7)
  {
LABEL_11:
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v39 = v19;
    v41 = *(v0 + 168);
    v40 = *(v0 + 96);
    (*(v38 + 16))(v17, *(v37 + 48) + *(v38 + 72) * (__clz(__rbit64(v7)) | (v13 << 6)), v20);
    v21 = sub_20C13CDF4();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v19, 1, 1, v21);
    v23 = *(v38 + 32);
    v23(v18, v17, v20);
    v24 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v40;
    v23(v25 + v24, v18, v20);
    sub_20B63983C(v39, v41);
    LODWORD(v24) = (*(v22 + 48))(v41, 1, v21);
    v26 = v40;
    v27 = *(v0 + 168);
    if (v24 == 1)
    {
      sub_20B520158(*(v0 + 168), &unk_27C762220);
    }

    else
    {
      sub_20C13CDE4();
      (*(v22 + 8))(v27, v21);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_20C13CD24();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = **(v0 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_20C163850;
    *(v32 + 24) = v25;

    if (v30 | v28)
    {
      v14 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v28;
      *(v0 + 40) = v30;
    }

    else
    {
      v14 = 0;
    }

    v7 &= v7 - 1;
    v15 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v14;
    *(v0 + 64) = v31;
    swift_task_create();

    v9 = sub_20B520158(v15, &unk_27C762220);
    v8 = v35;
    v3 = v36;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v13;
    if (v7)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  sub_20C13CD64();
  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  *v33 = v0;
  v33[1] = sub_20B934610;
  v9 = *(v0 + 136);
  v12 = *(v0 + 144);
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_20B934610()
{

  return MEMORY[0x2822009F8](sub_20B93470C, 0, 0);
}

uint64_t sub_20B93470C()
{
  v1 = v0[17];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v2 = v0[1];

    return v2();
  }

  v4 = v0[16];
  sub_20B5DF134(v1, v4, &qword_27C767D60);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639F8);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v0[16], &qword_27C767D60);
    goto LABEL_21;
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[13];
  v11 = *(v0[16] + *(v5 + 48));
  (*(v9 + 32))(v6);
  v12 = *(v9 + 16);
  v12(v7, v6, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v10;
  v0[9] = *v10;
  *v10 = 0x8000000000000000;
  v15 = sub_20B65AED8(v7);
  v19 = *(v14 + 16);
  v20 = (v16 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_25;
  }

  v23 = v16;
  if (*(v14 + 24) >= v22)
  {
    v40 = v12;
    v26 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = v15;
      sub_20BA11048();
      v15 = v27;
    }

    goto LABEL_16;
  }

  v24 = v0[26];
  sub_20BA0B7DC(v22, isUniquelyReferenced_nonNull_native);
  v15 = sub_20B65AED8(v24);
  if ((v23 & 1) == (v25 & 1))
  {
    v40 = v12;
    v26 = v11;
LABEL_16:
    v28 = v0[9];
    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[23];
    v32 = v0[24];
    v33 = (v32 + 8);
    if (v23)
    {
      *(v28[7] + 8 * v15) = v26;

      v34 = *v33;
      (*v33)(v30, v31);
      v34(v29, v31);
LABEL_20:
      *v0[13] = v28;

LABEL_21:
      v39 = swift_task_alloc();
      v0[30] = v39;
      *v39 = v0;
      v39[1] = sub_20B934610;
      v15 = v0[17];
      v18 = v0[18];
      v16 = 0;
      v17 = 0;

      return MEMORY[0x2822002E8](v15, v16, v17, v18);
    }

    v28[(v15 >> 6) + 8] |= 1 << v15;
    v35 = v15;
    v40(v28[6] + *(v32 + 72) * v15, v30, v31);
    *(v28[7] + 8 * v35) = v26;
    v36 = *(v32 + 8);
    v36(v30, v31);
    v15 = (v36)(v29, v31);
    v37 = v28[2];
    v21 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v21)
    {
      v28[2] = v38;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x2822002E8](v15, v16, v17, v18);
  }

  return sub_20C13E054();
}

uint64_t sub_20B934B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_20C13BB84();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D78);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B934C88, 0, 0);
}

uint64_t sub_20B934C88()
{
  v1 = [objc_opt_self() sharedSession];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_20C13C954();
  }

  v4 = v0[15];
  v5 = sub_20C13D194();

  sub_20C13D0E4();

  v6 = swift_task_alloc();
  v0[16] = v6;
  *(v6 + 16) = "SeymourUI/AudioHintPresenter.swift";
  *(v6 + 24) = 34;
  *(v6 + 32) = 2;
  *(v6 + 40) = 194;
  *(v6 + 48) = v4;
  v7 = swift_task_alloc();
  v0[17] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D80);
  *v7 = v0;
  v7[1] = sub_20B934E74;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B939AD0, v6, v8);
}

uint64_t sub_20B934E74()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = sub_20B935108;
  }

  else
  {
    v5 = v2[14];
    v4 = v2[15];
    v6 = v2[13];
    v2[19] = v2[5];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B934FD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B934FD4()
{
  v1 = v0[19];
  v2 = v0[9];
  v3 = v0[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639F8);
  v5 = *(v4 + 48);
  v6 = sub_20C132FD4();
  (*(*(v6 - 8) + 16))(v3, v2, v6);
  v7 = sub_20B7179C4(v1);

  *(v3 + v5) = v7;
  (*(*(v4 - 8) + 56))(v0[7], 0, 1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20B935108()
{
  v30 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  sub_20C13B574();
  v3 = v2;
  v4 = v1;
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 88);
    v28 = *(v0 + 96);
    v26 = *(v0 + 144);
    v27 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_20C13C954();
    v15 = v14;

    v16 = sub_20B51E694(v13, v15, &v29);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v17 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v19 = sub_20B51E694(v17, v18, &v29);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_20B517000, v5, v6, "No Audio Hints for urlAsset: %s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v28, v27);
  }

  else
  {
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 80);

    (*(v21 + 8))(v20, v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639F8);
  (*(*(v23 - 8) + 56))(*(v0 + 56), 1, 1);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20B9353D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  sub_20B51C88C(0, &qword_281100530);
  v13 = sub_20C13D374();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  sub_20B51C88C(0, &qword_27C763230);
  v15 = a1;
  sub_20C137C94();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B939648;
  *(v17 + 24) = v16;
  (*(v3 + 16))(v5, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v5, v2);
  v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_20B939E00;
  v20[1] = v17;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v21 = v25;
  v22 = sub_20C137CB4();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_20B5DF6DC, v23);

  return (*(v26 + 8))(v12, v21);
}

uint64_t sub_20B935760(void **a1, uint64_t a2)
{
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C4F4();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [v11 customMediaSelectionScheme];
    v15 = v14;
    if (v14)
    {
    }

    *(v13 + 57) = v15 != 0;
  }

  sub_20B51C88C(0, &qword_281100530);
  v16 = sub_20C13D374();
  aBlock[4] = sub_20B939664;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_98;
  v17 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[10] = MEMORY[0x277D84F90];
  sub_20B939550(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v20);
}

uint64_t sub_20B935A78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B935BE8();
  }

  return result;
}

void sub_20B935BE8()
{
  sub_20B935D08();
  sub_20B937A94();
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[23];
    v3 = v2;
  }

  else
  {
    v3 = sub_20B938374();
    v2 = 0;
    v1 = v0[23];
  }

  v0[23] = v3;
  v4 = v3;
  v5 = v2;

  swift_beginAccess();
  if (v0[22])
  {
    v6 = v4;

    v7 = sub_20C13C914();
  }

  else
  {
    v8 = v4;
    v7 = 0;
  }

  [v4 setSubtitle_];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v4, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_20B935D08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = sub_20C132FD4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 192);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [v12 asset];
  v14 = [v13 mediaSelectionGroupForMediaCharacteristic_];

  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = *(v0 + 192);
  if (!v15 || (v16 = [v15 currentMediaSelection], v17 = objc_msgSend(v16, sel_selectedMediaOptionInMediaSelectionGroup_, v14), v16, !v17))
  {

    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_11:
    sub_20B520158(v6, &qword_27C76FEB0);
    goto LABEL_12;
  }

  v18 = [v17 locale];

  if (v18)
  {
    sub_20C132F84();

    (*(v8 + 56))(v3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v3, 1, 1, v7);
  }

  sub_20B5DF134(v3, v6, &qword_27C76FEB0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    goto LABEL_11;
  }

  (*(v8 + 32))(v11, v6, v7);
  v20 = *(*(v0 + 208) + 16);

  if (v20)
  {
    sub_20B65AED8(v11);
    v22 = v21;

    (*(v8 + 8))(v11, v7);

    if (v22)
    {
      v19 = 1;
      goto LABEL_13;
    }
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  *(v0 + 200) = v19;
}

uint64_t sub_20B936060(uint64_t a1)
{
  v2 = sub_20C13C4B4();
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13C4F4();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C139684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = v8;
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_20C13BB84();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v36 = *(v7 + 16);
  v36(v11, a1, v6);
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v18 = 136315138;
    sub_20B939550(&qword_27C767D50, MEMORY[0x277D54458]);
    v19 = sub_20C13DFA4();
    v35 = v2;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_20B51E694(v19, v21, aBlock);
    v2 = v35;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_20B517000, v15, v16, "AudioHint started: %s", v18, 0xCu);
    v23 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    v24 = v18;
    a1 = v34;
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  (*(v37 + 8))(v14, v38);
  v26 = v40;
  v25 = v41;
  v36(v40, a1, v6);
  v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  (*(v7 + 32))(v28 + v27, v26, v6);
  aBlock[4] = sub_20B9394EC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_53;
  v29 = _Block_copy(aBlock);

  v30 = v42;
  sub_20C13C4D4();
  v47 = MEMORY[0x277D84F90];
  sub_20B939550(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v31 = v45;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v30, v31, v29);
  _Block_release(v29);
  (*(v46 + 8))(v31, v2);
  (*(v43 + 8))(v30, v44);
}

void sub_20B93661C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_20C139684();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = *(a1 + 192);
  if (v16)
  {
    v41 = v15;
    v42 = v7;
    v43 = v13;
    v44 = v16;
    v47 = [v44 asset];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      sub_20B51C88C(0, &qword_281100530);
      v40 = v12;
      v19 = sub_20C13D374();
      v20 = swift_allocObject();
      v38 = a1;
      v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      sub_20B51C88C(0, &qword_27C763230);
      v47 = v47;
      sub_20C137C94();
      (*(v4 + 16))(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v3);
      v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v22 = swift_allocObject();
      v23 = v3;
      v24 = v44;
      *(v22 + 16) = v44;
      *(v22 + 24) = a1;
      (*(v4 + 32))(v22 + v21, v6, v23);
      v25 = swift_allocObject();
      *(v25 + 16) = sub_20B939598;
      *(v25 + 24) = v22;
      v26 = v46;
      v27 = v39;
      v28 = v42;
      (*(v46 + 16))(v39, v11, v42);
      v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v30 = swift_allocObject();
      (*(v26 + 32))(v30 + v29, v27, v28);
      v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v31 = sub_20B939618;
      v31[1] = v25;
      v32 = v24;

      v33 = v41;
      sub_20C137C94();
      (*(v26 + 8))(v11, v28);
      v34 = v40;
      v35 = sub_20C137CB4();
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v35(sub_20B52347C, v36);

      (*(v43 + 8))(v33, v34);
    }

    else
    {

      v37 = v47;
    }
  }
}

uint64_t sub_20B936B34(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v33 = sub_20C13BB84();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_20C132FD4();
  v16 = *(v15 - 8);
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [a2 currentMediaSelection];
  v22 = [v21 selectedMediaOptionInMediaSelectionGroup_];

  if (v22)
  {
    v23 = [v22 locale];

    if (v23)
    {
      sub_20C132F84();

      (*(v16 + 56))(v11, 0, 1, v15);
    }

    else
    {
      (*(v16 + 56))(v11, 1, 1, v15);
    }

    sub_20B5DF134(v11, v14, &qword_27C76FEB0);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      v28 = *(v32 + 128);
      v29 = *(v32 + 136);
      sub_20B93747C(v31, v28, v29, v19);

      return (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_20B520158(v14, &qword_27C76FEB0);
  sub_20C13B574();
  v24 = sub_20C13BB74();
  v25 = sub_20C13D1D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20B517000, v24, v25, "[AudioHintPresenter] currentlySelectedLocale unknown, dropping audio hint", v26, 2u);
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  return (*(v6 + 8))(v8, v33);
}

id sub_20B936F10()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CB84C0]);
  v3 = sub_20C13C914();
  v4 = [v2 initWithString_];

  sub_20C132F04();
  v5 = sub_20C13C914();

  v6 = [objc_opt_self() voiceWithLanguage_];

  [v4 setVoice_];
  v8 = *(v1 + 73);
  if (v8 <= 2)
  {
    if (!*(v1 + 73))
    {
      v9 = *MEMORY[0x277CB82F8];
      v10 = 0.8;
      goto LABEL_11;
    }

    if (v8 != 1)
    {
      v9 = *MEMORY[0x277CB82F8];
      v10 = 1.25;
LABEL_11:
      *&v7 = v9 * v10;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v8 == 3)
  {
    v9 = *MEMORY[0x277CB82F8];
    v10 = 1.5;
    goto LABEL_11;
  }

  if (v8 != 4)
  {
LABEL_8:
    LODWORD(v7) = *MEMORY[0x277CB82F8];
    goto LABEL_12;
  }

  *&v7 = *MEMORY[0x277CB82F8] + *MEMORY[0x277CB82F8];
LABEL_12:
  [v4 setRate_];
  [v4 setPrefersAssistiveTechnologySettings_];
  return v4;
}

BOOL sub_20B9370A0(uint64_t a1, char a2, uint64_t a3)
{
  v7 = sub_20C132FD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-v12];
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (MEMORY[0x20F2EA6E0](a3, a1, v15))
  {
    v18 = *(v3 + 56);
    v19 = v18 >= 2;
    v20 = v18 != 2;
    if (v19)
    {
      return v20;
    }

    else
    {
      return a2 != 3;
    }
  }

  else
  {
    sub_20C13B574();
    v22 = *(v8 + 16);
    v22(v13, a1, v7);
    v22(v10, a3, v7);
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v25 = 136315394;
      sub_20B939550(&qword_27C767D58, MEMORY[0x277CC9788]);
      v42 = v14;
      v40 = v23;
      v26 = sub_20C13DFA4();
      v28 = v27;
      v39 = v24;
      v29 = *(v8 + 8);
      v29(v13, v7);
      v30 = sub_20B51E694(v26, v28, &v44);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_20C13DFA4();
      v33 = v32;
      v29(v10, v7);
      v34 = sub_20B51E694(v31, v33, &v44);

      *(v25 + 14) = v34;
      v35 = v40;
      _os_log_impl(&dword_20B517000, v40, v39, "Dropped AudioHint as locale of Audio Hint %s does not match currently selected audio locale %s", v25, 0x16u);
      v36 = v41;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);

      (*(v43 + 8))(v17, v42);
    }

    else
    {

      v37 = *(v8 + 8);
      v37(v10, v7);
      v37(v13, v7);
      (*(v43 + 8))(v17, v14);
    }

    return 0;
  }
}

void sub_20B93747C(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v68 = a1;
  v63 = a3;
  v6 = sub_20C139684();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = sub_20C132FD4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 200) == 1)
  {
    v21 = *(v4 + 72);
    if (v21 == 2)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        return;
      }
    }

    else if ((v21 & 1) == 0)
    {
      return;
    }

    sub_20C139664();
    v22 = sub_20B9370A0(v20, a2, v67);
    (*(v18 + 8))(v20, v17);
    if (v22)
    {
      sub_20C13B574();
      sub_20C13BB64();
      v23 = *(v9 + 8);
      v23(v16, v8);
      sub_20C13B574();
      v24 = sub_20C13BB74();
      v25 = sub_20C13D1F4();
      v26 = os_log_type_enabled(v24, v25);
      v60 = v9 + 8;
      v61 = v23;
      v59 = v8;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v57 = v27;
        v58 = swift_slowAlloc();
        v69 = v58;
        *v27 = 136315138;
        v28 = [objc_opt_self() sharedInstance];
        v29 = [v28 category];

        v30 = sub_20C13C954();
        v32 = v31;

        v33 = sub_20B51E694(v30, v32, &v69);

        v34 = v57;
        *(v57 + 1) = v33;
        v35 = v34;
        _os_log_impl(&dword_20B517000, v24, v25, "[AudioHintPresenter] Current AVAudioSession category: %s", v34, 0xCu);
        v36 = v58;
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x20F2F6A40](v36, -1, -1);
        MEMORY[0x20F2F6A40](v35, -1, -1);
      }

      v23(v13, v8);
      v38 = v65;
      v37 = v66;
      v39 = v64;
      v40 = v68;
      sub_20C139674();
      v41 = sub_20B936F10();

      v42 = v63;
      if ([v63 isSpeaking])
      {
        v43 = v62;
        sub_20C13B574();
        (*(v38 + 16))(v39, v40, v37);
        v44 = sub_20C13BB74();
        v45 = sub_20C13D1D4();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = v39;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v69 = v48;
          *v47 = 136315138;
          sub_20B939550(&qword_27C767D50, MEMORY[0x277D54458]);
          v49 = sub_20C13DFA4();
          v50 = v37;
          v51 = v43;
          v53 = v52;
          (*(v38 + 8))(v46, v50);
          v54 = sub_20B51E694(v49, v53, &v69);

          *(v47 + 4) = v54;
          _os_log_impl(&dword_20B517000, v44, v45, "Dropped Audio Hint due to overlap: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x20F2F6A40](v48, -1, -1);
          MEMORY[0x20F2F6A40](v47, -1, -1);

          v55 = v51;
        }

        else
        {

          (*(v38 + 8))(v39, v37);
          v55 = v43;
        }

        v61(v55, v59);
      }

      else
      {
        [v42 speakUtterance_];
      }
    }
  }
}

uint64_t sub_20B937A94()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 144);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(v0 + 200) == 1)
  {
    v3 = *(v0 + 72);
    if (v3 == 2)
    {
      v4 = v2;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = v2;
      if (v3)
      {
LABEL_9:
        v5 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4 = v2;
  }

  v5 = 0;
LABEL_10:
  [v4 setState_];

LABEL_11:
  v6 = *(v1 + 152);
  if (v6)
  {
    if (*(v1 + 200) == 1)
    {
      IsVoiceOverRunning = *(v1 + 72);
      v8 = v6;
      if (IsVoiceOverRunning == 2)
      {
        IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      }

      v9 = ~IsVoiceOverRunning & 1;
    }

    else
    {
      v8 = v6;
      v9 = 1;
    }

    [v8 setState_];
  }

  v10 = *(v1 + 144);
  if (v10)
  {
    [v10 setAttributes_];
    v11 = *(v1 + 144);
    if (v11)
    {
      [v11 setAttributes_];
    }
  }

  for (i = 0; i != 5; ++i)
  {
    v15 = byte_28228D7B8[i + 32];
    v16 = *(v1 + 160);
    if (*(v16 + 16) && (v17 = sub_20B65CEBC(byte_28228D7B8[i + 32]), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v20 = v19;
      if ((*(v1 + 200) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0;
      if ((*(v1 + 200) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v21 = *(v1 + 72);
    if (v21 != 2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_37:
      if (!v19)
      {
        goto LABEL_44;
      }

      v22 = *(v1 + 73);
      if (v22 == 5)
      {
        if (v15 == 1)
        {
LABEL_40:
          v23 = 1;
LABEL_43:
          [v19 setState_];
          goto LABEL_44;
        }
      }

      else if (v22 == v15)
      {
        goto LABEL_40;
      }

      v23 = 0;
      goto LABEL_43;
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_37;
    }

LABEL_34:
    if (v19)
    {
      [v19 setState_];
    }

LABEL_44:
    v24 = sub_20C138104();
    if (v24 == sub_20C138104())
    {
      goto LABEL_25;
    }

    if (v19)
    {
      if (*(v1 + 200) == 1)
      {
        v25 = *(v1 + 72);
        if (v25 == 2)
        {
          v26 = v19;
          if (UIAccessibilityIsVoiceOverRunning())
          {
LABEL_51:
            v14 = 0;
            goto LABEL_24;
          }
        }

        else
        {
          v27 = v19;
          if (v25)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v13 = v19;
      }

      v14 = 4;
LABEL_24:
      [v19 setAttributes_];

LABEL_25:
      continue;
    }
  }

  if (*(v1 + 200) != 1)
  {
    goto LABEL_55;
  }

  v28 = *(v1 + 72);
  if (v28 == 2)
  {
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_55;
    }

LABEL_57:
    sub_20C1380F4();
    v31 = sub_20BB560F8();
    v33 = v34;
  }

  else
  {
    if (v28)
    {
      goto LABEL_57;
    }

LABEL_55:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_20C132964();
    v33 = v32;
  }

  *(v1 + 168) = v31;
  *(v1 + 176) = v33;
}

uint64_t sub_20B937E14()
{
  v1 = v0;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_20C132964();

  sub_20B51C88C(0, &qword_27C7713A0);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 1;
  v35 = v6;
  v7 = sub_20C13D624();
  swift_beginAccess();
  v8 = v1[18];
  v1[18] = v7;

  v9 = [v3 bundleForClass_];
  sub_20C132964();

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0;
  v12 = sub_20C13D624();
  v13 = v1[19];
  v1[19] = v12;

  v14 = 0;
  while (1)
  {
    v18 = byte_2822875F8[v14 + 32];
    sub_20BB560F8();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    v21 = sub_20C13D624();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v1[20];
    v1[20] = 0x8000000000000000;
    v24 = sub_20B65CEBC(v18);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_20BA08918(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_20B65CEBC(v18);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v30)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v34 = v24;
    sub_20BA0F9E4();
    v24 = v34;
    if (v30)
    {
LABEL_2:
      v15 = v23[7];
      v16 = *(v15 + 8 * v24);
      *(v15 + 8 * v24) = v21;

      goto LABEL_3;
    }

LABEL_10:
    v23[(v24 >> 6) + 8] |= 1 << v24;
    *(v23[6] + v24) = v18;
    *(v23[7] + 8 * v24) = v21;
    v32 = v23[2];
    v28 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v28)
    {
      goto LABEL_16;
    }

    v23[2] = v33;
LABEL_3:
    ++v14;
    v1[20] = v23;

    result = swift_endAccess();
    if (v14 == 5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20B9382B4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B938C60(a3 & 1);
  }

  return result;
}

uint64_t sub_20B938314(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B938E28(a3);
  }

  return result;
}

uint64_t sub_20B938374()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[19];
  v81 = v0[18];
  v82 = v2;
  v3 = MEMORY[0x277D84F90];
  v77[0] = MEMORY[0x277D84F90];
  v4 = v2;
  v5 = v81;
  for (i = 0; i != 2; ++i)
  {
    v7 = v80[i + 16];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x20F2F43B0]();
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v3 = v77[0];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D40);
  swift_arrayDestroy();
  v9 = v0[20];
  if (*(v9 + 16) && (v10 = sub_20B65CEBC(0), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  v80[4] = v12;
  v14 = *(v1 + 160);
  if (*(v14 + 16) && (v15 = sub_20B65CEBC(1), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  v80[5] = v17;
  v19 = *(v1 + 160);
  if (*(v19 + 16) && (v20 = sub_20B65CEBC(2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    v23 = v22;
  }

  else
  {
    v22 = 0;
  }

  v80[6] = v22;
  v24 = *(v1 + 160);
  if (*(v24 + 16) && (v25 = sub_20B65CEBC(3), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    v28 = v27;
  }

  else
  {
    v27 = 0;
  }

  v80[7] = v27;
  v29 = *(v1 + 160);
  if (*(v29 + 16) && (v30 = sub_20B65CEBC(4), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + 8 * v30);
    v33 = v32;
  }

  else
  {
    v32 = 0;
  }

  v34 = 0;
  v80[8] = v32;
  v35 = MEMORY[0x277D84F90];
  v77[0] = MEMORY[0x277D84F90];
LABEL_28:
  if (v34 <= 5)
  {
    v36 = 5;
  }

  else
  {
    v36 = v34;
  }

  while (v34 != 5)
  {
    if (v36 == v34)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v37 = v80[v34++ + 4];
    if (v37)
    {
      v38 = v37;
      MEMORY[0x20F2F43B0]();
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v35 = v77[0];
      goto LABEL_28;
    }
  }

  swift_arrayDestroy();
  if (!(v3 >> 62))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v39 = v3;
    goto LABEL_39;
  }

LABEL_62:
  sub_20B51C88C(0, &qword_27C764F30);

  v39 = sub_20C13DE34();

LABEL_39:

  sub_20B51C88C(0, &unk_27C76FED0);
  v71 = v39;
  v40 = sub_20C13D554();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  v76 = ObjCClassFromMetadata;
  v42 = [v75 bundleForClass_];
  sub_20C132964();

  if (v35 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v43 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v43 = v35;
  }

  v72 = v43;
  v44 = sub_20C13D554();
  v45 = sub_20C138104();
  v74 = v40;
  v73 = v44;
  if (v45 == sub_20C138104())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D48);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_20C14F980;
    v47 = *(v1 + 152);
    *(v46 + 32) = v47;
    v48 = v47;
    v49 = sub_20BEF6DB0(v35);

    v77[0] = v46;
    sub_20B8DA9E0(v49);
    v35 = v77[0];
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D48);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_20C14F320;
    *(v35 + 32) = v40;
    *(v35 + 40) = v44;
    v50 = v40;
    v51 = v44;
  }

  v52 = sub_20C13AAC4();
  v78 = v52;
  v53 = sub_20B939550(&qword_281103AF0, MEMORY[0x277D4F200]);
  v79 = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  v55 = *MEMORY[0x277D4F1F8];
  v56 = *(*(v52 - 8) + 104);
  v56(boxed_opaque_existential_1, v55, v52);
  v57 = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v77);
  if (v57 & 1) != 0 && (v58 = *(v1 + 57), v58 != 2) && (v58)
  {
    v59 = 1;
  }

  else
  {
    v60 = sub_20C13C914();
    [objc_opt_self() systemImageNamed_];

    v59 = 0;
  }

  v78 = v52;
  v79 = v53;
  v61 = __swift_allocate_boxed_opaque_existential_1(v77);
  v56(v61, v55, v52);
  sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v77);
  v62 = [v75 bundleForClass_];
  sub_20C132964();

  if (v59)
  {
    v78 = v52;
    v79 = v53;
    v63 = __swift_allocate_boxed_opaque_existential_1(v77);
    v56(v63, v55, v52);
    v64 = sub_20C1383C4();
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (v64)
    {
      v65 = *MEMORY[0x277CB8588];
    }
  }

  v1 = MEMORY[0x277D84F90];
  sub_20C138104();
  sub_20C138104();
  v66 = 0;
  v77[0] = v1;
  v67 = *(v35 + 16);
  while (v67 != v66)
  {
    if (v66 >= *(v35 + 16))
    {
      goto LABEL_61;
    }

    v68 = *(v35 + 8 * v66++ + 32);
    if (v68)
    {
      MEMORY[0x20F2F43B0](v68);
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v1 = v77[0];
    }
  }

  v69 = sub_20C13D554();

  return v69;
}

void sub_20B938C60(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_20B517000, v8, v9, "AudioHints toggled: %{BOOL}d", v10, 8u);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_20C13C914();
  [v12 setBool:v11 forKey:v13];

  sub_20B935BE8();
}

void sub_20B938E28(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_20BD096F8(a1);
    v20 = v4;
    v14 = sub_20B51E694(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20B517000, v8, v9, "AudioHints speed changed: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v5 + 8))(v7, v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + 72) = 1;
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = sub_20C13C914();
  [v16 setBool:1 forKey:v17];

  *(v2 + 73) = a1;
  v18 = [v15 standardUserDefaults];
  v19 = sub_20C13C914();
  [v18 setInteger:a1 forKey:v19];

  sub_20B935BE8();
}

uint64_t sub_20B9390D4()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v0;
}

uint64_t sub_20B93916C()
{
  sub_20B9390D4();

  return swift_deallocClassInstance();
}

uint64_t sub_20B9391C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B93920C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_20B939280(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C138104();
  if (v6 == sub_20C138104() || (v7 = sub_20C138104(), v8 = 1, v7 == sub_20C138104()))
  {
    v8 = a1 != 0;
  }

  sub_20C13B574();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 67240450;
    *(v11 + 4) = v8;
    *(v11 + 8) = 2082;
    v19 = a1;
    v13 = sub_20C13C9D4();
    v18 = v2;
    v15 = sub_20B51E694(v13, v14, &v20);

    *(v11 + 10) = v15;
    _os_log_impl(&dword_20B517000, v9, v10, "Configuring Synthesizer. Use Application Audio Session = %{BOOL,public}d routeCategory = %{public}s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    (*(v3 + 8))(v5, v18);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  [objc_msgSend(objc_allocWithZone(MEMORY[0x277CB84B8]) init)];
  return a1;
}