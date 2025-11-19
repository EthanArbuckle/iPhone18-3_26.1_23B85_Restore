void sub_280164(unsigned __int8 *a1, unsigned __int8 a2)
{
  if (*a1 != a2)
  {
    sub_2809A8();
    swift_allocError();
    v10 = 1;
LABEL_16:
    *v9 = v10;
    swift_willThrow();
    sub_280AEC(a1);
    return;
  }

  if (a1[48])
  {
    v3 = *(a1 + 3);
    v4 = *(a1 + 4);
    v5 = v4 >> 1;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
    }

    else
    {
      if (((v4 >> 1) - v3) <= 0)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 1);
      v7 = *(a1 + 2);
      if (v3 == v5)
      {
LABEL_12:
        sub_280270(v6, v7, v3, v4);
        return;
      }

      if (v3 < v5)
      {
        if (v3 + 1 == v5)
        {
          goto LABEL_12;
        }

        if (v3 + 1 < v5)
        {
          v8 = *(v7 + v3 + 1);
          if (*(v7 + v3))
          {
            if (*(v7 + v3) != 255 || (v8 & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_15;
          }

          if ((v8 & 0x80000000) == 0)
          {
LABEL_15:
            sub_2809A8();
            swift_allocError();
            v10 = 4;
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void sub_280270(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_unknownObjectRetain();
  sub_27FEA0(v8, a2, a3, a4);
  if (v4 || a4 >> 1 == a3 || (a4 >> 1) > a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_280440(char **a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  v5[1] = *v2;
  v5[2] = v3;
  return sub_28A2F4(3, a1, sub_280A64, v5);
}

void *sub_28048C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (a5)
  {
    v27 = a8;
    *&v29 = a5;
    sub_27F7A4(&v29, v28, v47);
    if (v10)
    {

      v48 = v28[0];
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      v39 = a1;
      v40 = a2;
      v41 = a3;
      v42 = a4;
      v43 = a6;
      v44 = a7;
      v45 = v27;
      v46 = a10;
      return sub_280ABC(&v36);
    }

    v48 = 0;

    v23 = v47[0];
    v22 = v47[1];
    v21 = v47[2];
    v20 = v47[3];
    v19 = v47[4];
    a8 = v27;
  }

  else
  {
    v48 = v10;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *&v29 = v23;
  *(&v29 + 1) = v22;
  *&v30 = v21;
  *(&v30 + 1) = v20;
  *&v31 = v19;
  *(&v31 + 1) = a1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a6;
  *&v34 = a7;
  *(&v34 + 1) = a8;
  v35 = a10;
  *&v36 = v23;
  *(&v36 + 1) = v22;
  *&v37 = v21;
  *(&v37 + 1) = v20;
  v38 = v19;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a10;
  sub_280A84(&v29, v28);
  result = sub_280ABC(&v36);
  v24 = v34;
  *(a9 + 64) = v33;
  *(a9 + 80) = v24;
  *(a9 + 96) = v35;
  v25 = v30;
  *a9 = v29;
  *(a9 + 16) = v25;
  v26 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v26;
  return result;
}

uint64_t sub_2805FC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_2809A8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_280AEC(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v23[0] = *(a1 + 8);
  v23[1] = v9;
  v24 = v8;
  sub_280B40(a1, v14);
  swift_unknownObjectRetain();
  sub_27F58C(v23, &v16);
  if (v3)
  {
    sub_280AEC(a1);
    sub_280AEC(a1);
    return swift_unknownObjectRelease();
  }

  sub_285058(v25);
  if (v25[48] != 255)
  {
    sub_2566A0(v25, &qword_519610);
    sub_2809A8();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    sub_280AEC(a1);
    sub_280AEC(a1);
    v14[4] = v20;
    v14[5] = v21;
    v15 = v22;
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_280ABC(v14);
    return swift_unknownObjectRelease();
  }

  sub_280AEC(a1);
  sub_280AEC(a1);
  result = swift_unknownObjectRelease();
  v11 = v21;
  *(a3 + 64) = v20;
  *(a3 + 80) = v11;
  *(a3 + 96) = v22;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  v13 = v19;
  *(a3 + 32) = v18;
  *(a3 + 48) = v13;
  return result;
}

__n128 sub_2807D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = (2 * *(a1 + 16)) | 1;
  v20[0] = *a2;
  v20[1] = v5;
  v7 = *(a2 + 32);
  v8 = (2 * *(a3 + 16)) | 1;
  v13 = v20[0];
  v14 = v5;
  *&v15 = v7;
  *(&v15 + 1) = a1;
  v16 = (a1 + 32);
  *&v17 = v6;
  *(&v17 + 1) = a3;
  v18 = (a3 + 32);
  v19 = v8;
  v21 = v7;
  v22 = a1;
  v23 = a1 + 32;
  v24 = 0;
  v25 = v6;
  v26 = a3;
  v27 = a3 + 32;
  v28 = 0;
  v29 = v8;
  sub_280A84(&v13, v12);
  sub_280ABC(v20);
  v9 = v18;
  *(a4 + 64) = v17;
  *(a4 + 80) = v9;
  *(a4 + 96) = v19;
  v10 = v14;
  *a4 = v13;
  *(a4 + 16) = v10;
  result = v16;
  *(a4 + 32) = v15;
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_2808EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2809A8()
{
  result = qword_519600;
  if (!qword_519600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519600);
  }

  return result;
}

unint64_t sub_280B9C@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_2AA44C((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_303A18();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_2AA44C(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = _swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_3039F8();
        v9 = v19;
        result = sub_281A34(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_303978();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_303978();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_303A18();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2AA44C(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_2AA44C((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_303978();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_303A18();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_2AA44C(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_2AA44C((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

uint64_t sub_280F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 - result;
  if (__OFSUB__(v6, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 1;
    if (v6 < v7)
    {
LABEL_10:
      if (v8 >= a4)
      {
        if (v5 >= a4)
        {
          if (v5 >= v8)
          {
            if ((v8 & 0x8000000000000000) == 0)
            {
              return a2;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v8 = a4 + v7;
  if (!__OFADD__(a4, v7))
  {
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_281018(uint64_t a1, void *a2)
{
  sub_303588(0);
  v6 = sub_303A18();
  v8 = v7;

  v9 = sub_303BB8();

  v14 = v9 + 64;
  if (__OFADD__(v9, 64))
  {
    goto LABEL_21;
  }

  if (v14 < 0)
  {
    v14 = v9 + 127;
  }

  v15 = v14 >> 6;
  if (v15 <= -2)
  {
    v15 = -2;
  }

  v9 = sub_2AA44C(0, v15 + 2, 0, _swiftEmptyArrayStorage);
  sub_303C78(18);

  v44._countAndFlagsBits = a1;
  v44._object = a2;
  sub_303988(v44);
  v45._countAndFlagsBits = 0x2D2D2D2D2DLL;
  v45._object = 0xE500000000000000;
  sub_303988(v45);
  v10 = sub_303BE8();
  v3 = *(v9 + 16);
  v14 = *(v9 + 24);
  v2 = v3 + 1;
  v43 = a2;
  a2 = a1;
  if (v3 >= v14 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    *(v9 + 16) = v2;
    v16 = (v9 + 32 * v3);
    v16[4] = v10;
    v16[5] = v11;
    v16[6] = v12;
    v16[7] = v13;
    if (sub_303BD8() < 1)
    {
      break;
    }

    while (1)
    {
      v10 = sub_303B98();
      v2 = (v11 & 1) != 0 ? v8 : v10;
      if (v2 >> 14 < v6 >> 14)
      {
        break;
      }

      v10 = sub_303BF8();
      v3 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v3 >= v17 >> 1)
      {
        v39 = v11;
        v41 = v10;
        v37 = v13;
        v38 = v12;
        v19 = sub_2AA44C((v17 > 1), v3 + 1, 1, v9);
        v13 = v37;
        v12 = v38;
        v9 = v19;
        v11 = v39;
        v10 = v41;
      }

      *(v9 + 16) = v3 + 1;
      v14 = v9 + 32 * v3;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v12;
      *(v14 + 56) = v13;
      if (v2 >> 14 > v8 >> 14)
      {
        goto LABEL_20;
      }

      v6 = sub_303BF8();
      v8 = v18;

      if (sub_303BD8() <= 0)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v40 = v11;
    v42 = v10;
    v29 = v12;
    v30 = v13;
    v31 = sub_2AA44C((v14 > 1), v2, 1, v9);
    v13 = v30;
    v12 = v29;
    v9 = v31;
    v11 = v40;
    v10 = v42;
  }

LABEL_16:
  sub_303C78(16);

  v46._countAndFlagsBits = a2;
  v46._object = v43;
  sub_303988(v46);
  v47._countAndFlagsBits = 0x2D2D2D2D2DLL;
  v47._object = 0xE500000000000000;
  sub_303988(v47);
  v20 = sub_303BE8();
  v25 = *(v9 + 16);
  v24 = *(v9 + 24);
  if (v25 >= v24 >> 1)
  {
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = sub_2AA44C((v24 > 1), v25 + 1, 1, v9);
    v23 = v35;
    v22 = v34;
    v21 = v33;
    v9 = v36;
    v20 = v32;
  }

  *(v9 + 16) = v25 + 1;
  v26 = (v9 + 32 * v25);
  v26[4] = v20;
  v26[5] = v21;
  v26[6] = v22;
  v26[7] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519618);
  sub_26E8CC(&qword_519620, &qword_519618);
  sub_281E30();
  v27 = sub_303A98();

  return v27;
}

unint64_t sub_2814AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a6 >> 14 < a5 >> 14)
  {
    __break(1u);
LABEL_31:
    result = sub_303998();
    v18 = result;
    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_32:
    result = sub_303998();
    v19 = result;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = a8;
  v9 = a7;
  v10 = a4;
  v12 = a3;
  v11 = a2;
  v13 = a1;
  result = sub_281E84(a5, a6, a5, a6, a7, a8);
  v14 = result;
  v15 = v17;
  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_7:
  if ((v10 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v19 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 < 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  swift_bridgeObjectRetain_n();
  result = sub_303BA8();
  if (v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = result;
  }

  if (v21 >> 14 < v14 >> 14)
  {
    goto LABEL_34;
  }

  v36 = v13;
  v35 = sub_281E84(v14, v21, v14, v15, v9, v8);
  v23 = v22;
  result = sub_303BA8();
  if (v24)
  {
    result = v15;
  }

  if (v15 >> 14 < result >> 14)
  {
    goto LABEL_35;
  }

  result = sub_281E84(result, v15, v14, v15, v9, v8);
  if (v19 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = v25;

  result = sub_303BA8();
  if (v28)
  {
    result = v26;
  }

  if (v27 >> 14 < result >> 14)
  {
    goto LABEL_37;
  }

  v29 = sub_281E84(result, v27, v26, v27, v9, v8);
  v31 = v30;
  result = sub_303BA8();
  if (v32)
  {
    v33 = v26;
  }

  else
  {
    v33 = result;
  }

  if (v33 >> 14 < v26 >> 14)
  {
    goto LABEL_38;
  }

  sub_281E84(v26, v33, v26, v27, v9, v8);
  if (sub_2817A0(v36, v11, v35, v23, v9, v8) & 1) != 0 && (sub_2817A0(v12, v10, v29, v31, v9, v8))
  {
    v34 = sub_303A08();
    swift_bridgeObjectRelease_n();
    return v34;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    return 0;
  }
}

unint64_t sub_2817A0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v9 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 4 << v9;
  v28 = 4 * v11;
  v13 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v25 = a2 & 0xFFFFFFFFFFFFFFLL;
  v26 = v12;
  v23 = v10;
  v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  v15 = 15;
  while (1)
  {
    v16 = a3 ^ a4;
    if ((a3 ^ a4) < 0x4000)
    {
      if (v28 != v15 >> 14)
      {
        v17 = 0;
        goto LABEL_19;
      }

      v22 = 1;
LABEL_43:

      return v22;
    }

    result = sub_303BC8();
    v17 = result;
    if ((a3 & 0xC) == v26)
    {
      result = sub_281DB4(a3, a5, a6);
      a3 = result;
      if ((a6 & 0x1000000000000000) == 0)
      {
LABEL_17:
        a3 = (a3 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_18;
      }
    }

    else if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_17;
    }

    if (v23 <= a3 >> 16)
    {
      goto LABEL_46;
    }

    a3 = sub_3039A8();
LABEL_18:
    if (v28 == v15 >> 14)
    {
      v22 = 0;
      goto LABEL_43;
    }

LABEL_19:
    v19 = v15 & 0xC;
    result = v15;
    if (v19 == v14)
    {
      result = sub_281DB4(v15, a1, a2);
    }

    v20 = result >> 16;
    if (result >> 16 >= v11)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_3039D8();
      v21 = result;
      if (v19 != v14)
      {
        goto LABEL_29;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v31[0] = a1;
      v31[1] = v25;
      v21 = *(v31 + v20);
      if (v19 != v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = v24;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_303C98();
      }

      v21 = *(result + v20);
      if (v19 != v14)
      {
LABEL_29:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    result = sub_281DB4(v15, a1, a2);
    v15 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_33:
      if (v11 <= v15 >> 16)
      {
        goto LABEL_45;
      }

      v15 = sub_3039A8();
      goto LABEL_35;
    }

LABEL_30:
    v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_35:
    v22 = 0;
    if (v16 < 0x4000 || v17 != v21)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_281A34(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_281B84(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_303C68();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_303C98() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_281B84(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_281C1C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_281C90(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_281C1C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_281DB4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_281C90(unint64_t result, uint64_t a2, unint64_t a3)
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
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_303C98();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_281DB4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_3039E8();
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
    v5 = sub_3039B8();
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

unint64_t sub_281E30()
{
  result = qword_519628;
  if (!qword_519628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519628);
  }

  return result;
}

unint64_t sub_281E84(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    v10 = result;
    v11 = a3;
    v12 = a4;
    v13 = sub_281DB4(a2, a5, a6);
    a4 = v12;
    a3 = v11;
    a2 = v13;
    result = v10;
  }

  if ((result & 0xC) == v9)
  {
    v14 = a2;
    v15 = a5;
    v16 = a3;
    v17 = a6;
    v18 = a4;
    result = sub_281DB4(result, v15, v17);
    a4 = v18;
    a3 = v16;
    a2 = v14;
  }

  if (a2 >> 14 > a4 >> 14 || result >> 14 < a3 >> 14 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_281F64(uint64_t a1, unint64_t a2)
{

  v5 = sub_280B9C(0x7FFFFFFFFFFFFFFFuLL, 1, a1, a2, v4);
  v6 = v5;
  v7 = v5[2];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  v12 = &v5[4 * v7];
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v49 = v12[2];

  v16 = sub_2814AC(0x4745422D2D2D2D2DuLL, 0xEB00000000204E49, 0x2D2D2D2D2DuLL, 0xE500000000000000, v8, v9, v10, v11);
  if (!v17)
  {

    goto LABEL_13;
  }

  v48 = v16;
  v18 = v17;

  v19 = sub_2814AC(0x444E452D2D2D2D2DuLL, 0xE900000000000020, 0x2D2D2D2D2DuLL, 0xE500000000000000, v13, v14, v49, v15);
  if (!v20)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_13;
  }

  if (v48 == v19 && v18 == v20)
  {
  }

  else
  {
    v22 = sub_303D08();

    if ((v22 & 1) == 0)
    {

LABEL_13:

LABEL_14:

      sub_2809A8();
      swift_allocError();
      *v23 = 7;
      swift_willThrow();
    }
  }

  result = sub_280F84(1, v6, v6 + 32, 1, (2 * v7) | 1);
  if (__OFSUB__(v27 >> 1, v26))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (((v27 >> 1) - v26) < 1)
  {

LABEL_45:

    goto LABEL_46;
  }

  v46 = v27 >> 1;
  v47 = v26;
  result = sub_280F84(1, result, v25, v26, v27);
  if (v29 <= (v30 >> 1))
  {
    v31 = v30 >> 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - v29 + 1;
  v33 = (v28 + 32 * v29 + 16);
  v34 = (v30 >> 1) - v29;
  while (v34)
  {
    if (!--v32)
    {
      __break(1u);
      goto LABEL_49;
    }

    v36 = *(v33 - 2);
    v35 = *(v33 - 1);
    v38 = *v33;
    v37 = v33[1];
    v39 = (*v33 >> 59) & 1;
    if ((v37 & 0x1000000000000000) == 0)
    {
      LOBYTE(v39) = 1;
    }

    v40 = 4 << v39;
    if ((*(v33 - 2) & 0xC) == 4 << v39)
    {
      result = sub_281DB4(*(v33 - 2), *v33, v33[1]);
      v36 = result;
    }

    if ((v35 & 0xC) == v40)
    {
      result = sub_281DB4(v35, v38, v37);
      v35 = result;
      if ((v37 & 0x1000000000000000) != 0)
      {
LABEL_34:
        v41 = HIBYTE(v37) & 0xF;
        if ((v37 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (v41 < v36 >> 16)
        {
          goto LABEL_52;
        }

        if (v41 < v35 >> 16)
        {
          goto LABEL_53;
        }

        result = sub_3039C8();
        goto LABEL_31;
      }
    }

    else if ((v37 & 0x1000000000000000) != 0)
    {
      goto LABEL_34;
    }

    result = (v35 >> 16) - (v36 >> 16);
LABEL_31:
    v33 += 4;
    --v34;
    if (result != 64)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();

      goto LABEL_45;
    }
  }

  swift_unknownObjectRetain();

  result = swift_unknownObjectRelease();
  if (v47 == v46)
  {
    goto LABEL_50;
  }

  if (v46 <= v47)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v42 = sub_303BB8();

  if (v42 <= 64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519630);
    sub_26E8CC(&qword_519638, &qword_519630);
    sub_281E30();
    swift_unknownObjectRetain();
    sub_303A98();
    swift_unknownObjectRelease();

    sub_3034E8();
    v44 = v43;

    if (v44 >> 60 != 15)
    {
      swift_unknownObjectRelease();
      return v48;
    }
  }

LABEL_46:

  sub_2809A8();
  swift_allocError();
  *v45 = 7;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t _s26RFC5480AlgorithmIdentifierVwxx()
{

  return swift_unknownObjectRelease();
}

uint64_t _s26RFC5480AlgorithmIdentifierVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  swift_unknownObjectRetain();
  return a1;
}

void *_s26RFC5480AlgorithmIdentifierVwca(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
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

uint64_t _s26RFC5480AlgorithmIdentifierVwta(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t _s26RFC5480AlgorithmIdentifierVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t _s26RFC5480AlgorithmIdentifierVwst(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s20SubjectPublicKeyInfoVwxx()
{

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t _s20SubjectPublicKeyInfoVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void *_s20SubjectPublicKeyInfoVwca(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t _s20SubjectPublicKeyInfoVwta(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t _s20SubjectPublicKeyInfoVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t _s20SubjectPublicKeyInfoVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_28299C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  sub_303DB8(v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_303DB8(v4);
      --v2;
    }

    while (v2);
  }

  if (!v0[1])
  {
    sub_303DC8(0);
    return;
  }

  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  sub_303DC8(1u);
  v8 = v6 >> 1;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_303DB8((v6 >> 1) - v5);
  v9 = __OFSUB__(v8, v5);
  v10 = v8 - v5;
  if (!v10)
  {
    return;
  }

  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = (v7 + v5);
  do
  {
    v12 = *v11++;
    sub_303DC8(v12);
    --v10;
  }

  while (v10);
}

Swift::Int sub_282A54()
{
  sub_303D98();
  sub_28299C();
  return sub_303DE8();
}

Swift::Int sub_282A98()
{
  sub_303D98();
  sub_28299C();
  return sub_303DE8();
}

unint64_t sub_282AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_282DA0(v5, v7) & 1;
}

unint64_t sub_282B24()
{
  result = qword_519640;
  if (!qword_519640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519640);
  }

  return result;
}

uint64_t sub_282B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519608);
  inited = swift_initStaticObject();
  v1 = sub_282EE8(inited);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  result = swift_initStaticObject();
  *&xmmword_520878 = result;
  *(&xmmword_520878 + 1) = v1;
  qword_520888 = v3;
  unk_520890 = v5;
  qword_520898 = v7;
  return result;
}

uint64_t sub_282C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519608);
  inited = swift_initStaticObject();
  v1 = sub_282EE8(inited);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  result = swift_initStaticObject();
  *&xmmword_5208A0 = result;
  *(&xmmword_5208A0 + 1) = v1;
  qword_5208B0 = v3;
  unk_5208B8 = v5;
  qword_5208C0 = v7;
  return result;
}

uint64_t sub_282CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519608);
  inited = swift_initStaticObject();
  v1 = sub_282EE8(inited);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  result = swift_initStaticObject();
  *&xmmword_5208C8 = result;
  *(&xmmword_5208C8 + 1) = v1;
  qword_5208D8 = v3;
  unk_5208E0 = v5;
  qword_5208E8 = v7;
  return result;
}

void *sub_282DA0(void *result, void *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_10:
  v8 = a2[1];
  if (!result[1])
  {
    return !v8;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = result[3];
  v10 = result[4] >> 1;
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = a2[3];
  v13 = a2[4] >> 1;
  v14 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v11 != v14)
  {
    return 0;
  }

  if (!v11)
  {
    return (&dword_0 + 1);
  }

  v15 = result[2] + v9;
  v16 = a2[2] + v12;
  result = (&dword_0 + 1);
  if (v15 != v16 && v9 != v10)
  {
    if (v9 >= v10)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    if (v12 != v13)
    {
      v17 = 0;
      if (v12 <= v13)
      {
        v18 = a2[4] >> 1;
      }

      else
      {
        v18 = a2[3];
      }

      v19 = v18 - v12;
      while (v19 != v17)
      {
        if (*(v15 + v17) != *(v16 + v17))
        {
          return 0;
        }

        if (~v9 + v10 == v17)
        {
          return (&dword_0 + 1);
        }

        v20 = v9 + v17 + 1;
        if (v20 < v9 || v20 >= v10)
        {
          goto LABEL_39;
        }

        result = 0;
        if (v14 == ++v17)
        {
          return result;
        }
      }

      goto LABEL_38;
    }

    return 0;
  }

  return result;
}

char *sub_282EE8(uint64_t a1)
{
  v3[2] = a1;
  v4 = sub_2AA214(0, 1024, 0, _swiftEmptyArrayStorage);
  sub_28A2F4(6, &v4, sub_280A48, v3);
  result = v4;
  if (v1)
  {
  }

  return result;
}

uint64_t sub_282F84@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_2809A8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_280AEC(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v23 = *(a1 + 8);
  v24 = v9;
  v25 = v8;
  sub_280B40(a1, &v18);
  swift_unknownObjectRetain();
  sub_283708(48, v26);
  if (v3)
  {
    goto LABEL_8;
  }

  sub_285058(v27);
  if (v28 == 255)
  {
    sub_2809A8();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v33 = *v26;
    sub_280954(&v33);
    v32[0] = *&v26[8];
    v32[1] = *&v26[24];
    sub_2566A0(v32, &qword_5195F8);
LABEL_8:
    sub_280AEC(a1);
    sub_280AEC(a1);
    return swift_unknownObjectRelease();
  }

  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v27[2];
  v31 = v28;
  v10 = sub_28F698(v30, 3u);
  v18 = *v26;
  v19 = *&v26[16];
  *&v20 = *&v26[32];
  *(&v20 + 1) = v10;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  v22 = v13;
  sub_285058(v29);
  if (v29[48] != 255)
  {
    sub_2566A0(v29, &qword_519610);
    sub_2809A8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    sub_283218(&v18);
    goto LABEL_8;
  }

  sub_280AEC(a1);
  sub_280AEC(a1);
  result = swift_unknownObjectRelease();
  v16 = v21;
  *(a3 + 32) = v20;
  *(a3 + 48) = v16;
  *(a3 + 64) = v22;
  v17 = v19;
  *a3 = v18;
  *(a3 + 16) = v17;
  return result;
}

uint64_t _s15PKCS8PrivateKeyVwxx(uint64_t a1)
{

  swift_unknownObjectRelease();
  if (*(a1 + 40))
  {

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t _s15PKCS8PrivateKeyVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = a2 + 40;
  v5 = *(a2 + 40);

  swift_unknownObjectRetain();
  if (v5)
  {
    v7 = *(a2 + 48);
    *(a1 + 40) = v5;
    *(a1 + 48) = v7;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);

    swift_unknownObjectRetain();
  }

  else
  {
    v8 = *(v6 + 16);
    *(a1 + 40) = *v6;
    *(a1 + 56) = v8;
    *(a1 + 72) = *(v6 + 32);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void *_s15PKCS8PrivateKeyVwca(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = a1 + 5;
  v5 = a1[5];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  v7 = a2 + 5;
  v6 = a2[5];
  if (v5)
  {
    if (v6)
    {
      a1[5] = v6;

      a1[6] = a2[6];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[7] = a2[7];
      a1[8] = a2[8];
      a1[9] = a2[9];
    }

    else
    {
      sub_27F3A0((a1 + 5));
      v8 = a2[9];
      v9 = *(a2 + 7);
      *v4 = *v7;
      *(a1 + 7) = v9;
      a1[9] = v8;
    }
  }

  else if (v6)
  {
    a1[5] = v6;
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];

    swift_unknownObjectRetain();
  }

  else
  {
    v10 = *v7;
    v11 = *(a2 + 7);
    a1[9] = a2[9];
    *v4 = v10;
    *(a1 + 7) = v11;
  }

  a1[10] = a2[10];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[11] = a2[11];
  a1[12] = a2[12];
  a1[13] = a2[13];
  a1[14] = a2[14];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[15] = a2[15];
  a1[16] = a2[16];
  a1[17] = a2[17];
  return a1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t _s15PKCS8PrivateKeyVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v4)
  {
    sub_27F3A0(a1 + 40);
LABEL_5:
    v6 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v6;
    *(a1 + 72) = *(a2 + 72);
    goto LABEL_6;
  }

  *(a1 + 40) = v4;

  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectRelease();
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  swift_unknownObjectRelease();
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  swift_unknownObjectRelease();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t _s15PKCS8PrivateKeyVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t _s15PKCS8PrivateKeyVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_283708@<X0>(char a1@<W1>, char **a2@<X8>)
{
  sub_285058(v19);
  if (v23 == 255)
  {
    sub_2809A8();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }

  if (v19[0] != a1 || (v23 & 1) != 0)
  {
    sub_2809A8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_2566A0(v19, &qword_519610);
  }

  v16 = v20;
  v17 = v21;
  v18 = v22;
  sub_285058(v24);
  if (v25 == 255)
  {
    sub_2809A8();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v31[0] = v24[0];
  v31[1] = v24[1];
  v31[2] = v24[2];
  v32 = v25;
  sub_2808EC(v19, v15, &qword_519610);
  sub_2808EC(v19, v15, &qword_519610);
  v8 = sub_29085C(v31, 6);
  if (v2)
  {
    sub_2566A0(v19, &qword_519610);
    sub_2566A0(v19, &qword_519610);
    return swift_unknownObjectRelease();
  }

  v10 = v8;
  sub_285058(v26);
  if (v27 == 255)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v29[0] = v26[0];
    v29[1] = v26[1];
    v29[2] = v26[2];
    v30 = v27;
    v15[0] = sub_2AA214(0, 1024, 0, _swiftEmptyArrayStorage);
    sub_288A94(v29[0], v15, v29);
    sub_2566A0(v26, &qword_519610);
    v11 = v15[0];
    v12 = v15[0] + 32;
    v13 = (2 * *(v15[0] + 16)) | 1;
  }

  sub_285058(v28);
  if (v28[48] != 255)
  {
    sub_2566A0(v28, &qword_519610);
    sub_2809A8();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    sub_2566A0(v19, &qword_519610);
    sub_2566A0(v19, &qword_519610);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  sub_2566A0(v19, &qword_519610);
  sub_2566A0(v19, &qword_519610);
  result = swift_unknownObjectRelease();
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = 0;
  a2[4] = v13;
  return result;
}

void sub_283AD4(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_285058(v22);
  if (v23 != 255)
  {
    v37[0] = v22[0];
    v37[1] = v22[1];
    v37[2] = v22[2];
    v38 = v23;
    sub_280164(v37, 2u);
    if (v2)
    {
      return;
    }

    if (!v5)
    {
      sub_283708(48, v24);
      sub_285058(v25);
      if (v30 == 255)
      {
        sub_2809A8();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();
        v46 = *v24;
        sub_280954(&v46);
        v45[0] = *&v24[8];
        v45[1] = *&v24[24];
        v12 = &qword_5195F8;
        v13 = v45;
      }

      else if (v25[0] == 4)
      {
        if ((v30 & 1) == 0)
        {
          sub_2566A0(v25, &qword_519610);
          __break(1u);
          return;
        }

        v7 = v26;
        v8 = v27;
        v9 = v28;
        v10 = v29;
        sub_284DB0(a1, 0, 2u);
        sub_2808EC(v25, v21, &qword_519610);
        sub_289100(v7, v8, v9, v10, v31);
        sub_2566A0(v25, &qword_519610);
        sub_280B40(v31, v21);
        sub_2805FC(v31, 0x30u, v32);
        v41[0] = *v32;
        v41[1] = *&v32[16];
        v42 = *&v32[32];
        v15 = *v32;
        if (!*v32)
        {
          sub_280AEC(v31);
          v16 = &qword_519610;
          v17 = v25;
          goto LABEL_17;
        }

        v50 = *&v32[8];
        v51 = *&v32[24];
        v47 = *&v41[0];
        v48 = *&v32[8];
        v49 = *&v32[24];
        sub_2808EC(v41, v21, &qword_5195F0);
        if (sub_282DA0(&v47, v24))
        {
          sub_280AEC(v31);
          sub_2566A0(v25, &qword_519610);
          v54 = v15;
          sub_280954(&v54);
          v55[0] = v50;
          v55[1] = v51;
          v16 = &qword_5195F8;
          v17 = v55;
LABEL_17:
          sub_2566A0(v17, v16);
          *&v20[56] = v33;
          *&v20[72] = v34;
          *&v20[88] = v35;
          *&v20[8] = *v32;
          *&v20[104] = v36;
          *&v20[24] = *&v32[16];
          *&v20[40] = *&v32[32];
          v18 = *&v24[16];
          *v20 = *&v24[32];
          *a2 = *v24;
          a2[1] = v18;
          a2[7] = *&v20[80];
          a2[8] = *&v20[96];
          a2[5] = *&v20[48];
          a2[6] = *&v20[64];
          a2[3] = *&v20[16];
          a2[4] = *&v20[32];
          a2[2] = *v20;
          return;
        }

        sub_2809A8();
        swift_allocError();
        *v19 = 3;
        swift_willThrow();
        v52 = v15;
        sub_280954(&v52);
        v53[0] = v50;
        v53[1] = v51;
        sub_2566A0(v53, &qword_5195F8);
        sub_280ABC(v32);
        sub_280AEC(v31);
        sub_2566A0(v25, &qword_519610);
        v40 = *v24;
        sub_280954(&v40);
        v39[0] = *&v24[8];
        v39[1] = *&v24[24];
        v13 = v39;
        v12 = &qword_5195F8;
      }

      else
      {
        sub_2809A8();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        v44 = *v24;
        sub_280954(&v44);
        v43[0] = *&v24[8];
        v43[1] = *&v24[24];
        sub_2566A0(v43, &qword_5195F8);
        v12 = &qword_519610;
        v13 = v25;
      }

      sub_2566A0(v13, v12);
      return;
    }
  }

  sub_2809A8();
  swift_allocError();
  *v6 = 3;
  swift_willThrow();
}

uint64_t sub_28405C(char **a1, uint64_t a2)
{
  v16[0] = 0;
  v15[2] = v16;
  result = sub_28A2F4(2, a1, sub_28456C, v15);
  if (!v2)
  {
    v6 = *(a2 + 16);
    v20[0] = *a2;
    v20[1] = v6;
    v21 = *(a2 + 32);
    v23 = *&v20[0];
    v7 = *(a2 + 24);
    v22[0] = *(a2 + 8);
    v22[1] = v7;
    sub_280890(&v23, v16);
    sub_2808EC(v22, v16, &qword_5195F8);
    sub_285EDC(48, a1, v20);
    v17 = sub_2AA214(0, 1024, 0, _swiftEmptyArrayStorage);
    v8 = *(a2 + 88);
    v9 = *(a2 + 120);
    v18[4] = *(a2 + 104);
    v18[5] = v9;
    v19 = *(a2 + 136);
    v10 = *(a2 + 56);
    v18[0] = *(a2 + 40);
    v18[1] = v10;
    v18[2] = *(a2 + 72);
    v18[3] = v8;
    sub_280A84(v18, v16);
    sub_2892C8(48, &v17, v18);
    sub_280ABC(v18);
    __chkstk_darwin(v17);
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = 0;
    v14[5] = v13;
    sub_28A2F4(4, a1, sub_280420, v14);
  }

  return result;
}

uint64_t sub_284240(unint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = sub_284300(a1);
    return sub_28FCA0(v3, v4, v5);
  }

  else
  {
    v7 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((result & 1) == 0)
    {
      result = sub_2AA214(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *a2 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_2AA214((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
      *a2 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + v9 + 32) = 0;
  }

  return result;
}

unint64_t sub_284300(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = __clz(a1);
  v3 = (71 - v2) >> 3;
  v4 = sub_290228(v3, v3, 0, a1, 71 - v2);
  if (v4 != 255 && v4 != 0)
  {
    return (71 - v2) >> 3;
  }

  if (a1 < 0x100)
  {
    return 1;
  }

  v6 = v3 - 1;
  if (v4 != (a1 >> (8 * ((v3 - 1) & 7))))
  {
    return (71 - v2) >> 3;
  }

  v7 = (71 - v2) >> 3;
  if (((v4 ^ (a1 >> ((55 - v2) & 0x38))) & 0x80) == 0)
  {
    if (a1 < 0x10000)
    {
      return 1;
    }

    v8 = v3 - 2;
    if (v4 != (a1 >> (8 * ((v3 - 2) & 7))))
    {
      return v6;
    }

    v7 = v3 - 1;
    if (((v4 ^ (a1 >> ((8 * v6 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!(a1 >> 24))
    {
      return 1;
    }

    v6 = v3 - 3;
    if (v4 != (a1 >> (8 * ((v3 - 3) & 7))))
    {
      return v8;
    }

    v7 = v3 - 2;
    if (((v4 ^ (a1 >> ((8 * v8 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!HIDWORD(a1))
    {
      return 1;
    }

    v8 = v3 - 4;
    if (v4 != (a1 >> (8 * ((v3 - 4) & 7))))
    {
      return v6;
    }

    v7 = v3 - 3;
    if (((v4 ^ (a1 >> ((8 * v6 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!(a1 >> 40))
    {
      return 1;
    }

    if (v4 != (a1 >> (8 * ((v3 - 5) & 7))))
    {
      return v8;
    }

    v7 = v3 - 4;
    if (((v4 ^ (a1 >> ((8 * v8 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!HIWORD(a1))
    {
      return 1;
    }

    v6 = v3 - 6;
    if (v4 != (a1 >> (8 * ((v3 - 6) & 7))))
    {
      return v3 - 5;
    }

    v7 = v3 - 5;
    if (((v4 ^ (a1 >> ((8 * (v3 - 5) + 48) & 0x38))) & 0x80) == 0)
    {
      if (HIBYTE(a1))
      {
        if (v4 == (a1 >> ((15 - v2) & 0x38)))
        {
          if (((v4 ^ (a1 >> ((8 * v6 + 48) & 0x38))) & 0x80u) == 0)
          {
            return 1;
          }

          else
          {
            return v3 - 6;
          }
        }

        return v6;
      }

      return 1;
    }
  }

  return v7;
}

uint64_t sub_284590@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_2809A8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_280AEC(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v25[0] = *(a1 + 8);
  v25[1] = v9;
  v26 = v8;
  sub_280B40(a1, v15);
  swift_unknownObjectRetain();
  sub_283AD4(v25, &v16);
  if (v3)
  {
    sub_280AEC(a1);
    sub_280AEC(a1);
    return swift_unknownObjectRelease();
  }

  sub_285058(v27);
  if (v27[48] != 255)
  {
    sub_2566A0(v27, &qword_519610);
    sub_2809A8();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    sub_280AEC(a1);
    sub_280AEC(a1);
    v15[6] = v22;
    v15[7] = v23;
    v15[8] = v24;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = v21;
    v15[0] = v16;
    v15[1] = v17;
    sub_28476C(v15);
    return swift_unknownObjectRelease();
  }

  sub_280AEC(a1);
  sub_280AEC(a1);
  result = swift_unknownObjectRelease();
  v11 = v23;
  a3[6] = v22;
  a3[7] = v11;
  a3[8] = v24;
  v12 = v19;
  a3[2] = v18;
  a3[3] = v12;
  v13 = v21;
  a3[4] = v20;
  a3[5] = v13;
  v14 = v17;
  *a3 = v16;
  a3[1] = v14;
  return result;
}

unint64_t sub_2847A0()
{
  result = qword_519648;
  if (!qword_519648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519648);
  }

  return result;
}

void sub_2847F4(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_285058(v26);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 64;
  }

  else if (a3 == 2)
  {
    v14 = 128;
  }

  else
  {
    v14 = 192;
  }

  if (v26[0] != (v14 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_2566A0(v26, &qword_519610);
    return;
  }

  v15 = *(&v23 + 1);
  v16 = v25;
  *a1 = v23;
  *(a1 + 1) = v15;
  a1[1] = v24;
  *(a1 + 4) = v16;
  if (v10)
  {
LABEL_22:
    swift_unknownObjectRetain();
    sub_2566A0(v26, &qword_519610);
    __break(1u);
    goto LABEL_23;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_285058(v31);
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    sub_2808EC(v26, v19, &qword_519610);
    goto LABEL_17;
  }

  v34[0] = v31[0];
  v34[1] = v31[1];
  v34[2] = v31[2];
  v35 = v32;
  sub_285058(v33);
  v17 = v33[48];
  swift_unknownObjectRetain();
  if (v17 != 255)
  {
    sub_2808EC(v26, v19, &qword_519610);
    sub_2566A0(v33, &qword_519610);
    sub_2566A0(v31, &qword_519610);
LABEL_17:
    sub_2809A8();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_2566A0(v26, &qword_519610);
LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_29085C(v34, 6);
  if (v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_284AC0(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(a1 + 4);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v25 = v8;
  sub_285058(v26);
  v10 = v30;
  if (v30 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v27;
  v12 = v28;
  v13 = v29;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 64;
  }

  else if (a3 == 2)
  {
    v14 = 128;
  }

  else
  {
    v14 = 192;
  }

  if (v26[0] != (v14 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_2566A0(v26, &qword_519610);
    return;
  }

  v15 = *(&v23 + 1);
  v16 = v25;
  *a1 = v23;
  *(a1 + 1) = v15;
  a1[1] = v24;
  *(a1 + 4) = v16;
  if (v10)
  {
LABEL_22:
    swift_unknownObjectRetain();
    sub_2566A0(v26, &qword_519610);
    __break(1u);
    goto LABEL_23;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_285058(v31);
  if (v32 == 255)
  {
    swift_unknownObjectRetain();
    sub_2808EC(v26, v19, &qword_519610);
    goto LABEL_17;
  }

  v34[0] = v31[0];
  v34[1] = v31[1];
  v34[2] = v31[2];
  v35 = v32;
  sub_285058(v33);
  v17 = v33[48];
  swift_unknownObjectRetain();
  if (v17 != 255)
  {
    sub_2808EC(v26, v19, &qword_519610);
    sub_2566A0(v33, &qword_519610);
    sub_2566A0(v31, &qword_519610);
LABEL_17:
    sub_2809A8();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    sub_2566A0(v26, &qword_519610);
LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_28F698(v34, 3u);
  if (v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_284DB0(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = *(a1 + 4);
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v23 = v6;
  sub_285058(v24);
  v8 = v28;
  if (v28 == 255)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    return;
  }

  if (a2 > 0x1E)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v25;
  v10 = v26;
  v11 = v27;
  if (a3 <= 1u)
  {
    if (a3 != 1)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v12 = 64;
  }

  else if (a3 == 2)
  {
    v12 = 128;
  }

  else
  {
    v12 = 192;
  }

  if (v24[0] != (v12 | a2 | 0x20))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_2566A0(v24, &qword_519610);
    return;
  }

  v13 = *(&v21 + 1);
  v14 = v23;
  *a1 = v21;
  *(a1 + 1) = v13;
  a1[1] = v22;
  *(a1 + 4) = v14;
  if (v8)
  {
LABEL_20:
    swift_unknownObjectRetain();
    sub_2566A0(v24, &qword_519610);
    __break(1u);
    goto LABEL_21;
  }

  v18 = v9;
  v19 = v10;
  v20 = v11;
  sub_285058(v29);
  if (v29[48] == 255)
  {
    swift_unknownObjectRetain();
    sub_2808EC(v24, v17, &qword_519610);
    goto LABEL_17;
  }

  sub_285058(v30);
  v15 = v30[48];
  swift_unknownObjectRetain();
  if (v15 != 255)
  {
    sub_2808EC(v24, v17, &qword_519610);
    sub_2566A0(v30, &qword_519610);
    sub_2566A0(v29, &qword_519610);
LABEL_17:
    sub_2809A8();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    sub_2566A0(v24, &qword_519610);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  sub_2566A0(v29, &qword_519610);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_285058(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v3 >> 1;
  if (v4 == v3 >> 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = -1;
    v10 = 0uLL;
LABEL_18:
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 24) = v10;
    *(a1 + 40) = v7;
    *(a1 + 48) = v9;
    return;
  }

  if (v4 >= (v3 >> 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *v1;
  v12 = v1[1];
  v13 = (v12 + 48 * v4);
  v6 = v13->n128_u8[0];
  v14 = v13->n128_i64[1];
  v15 = v13[1];
  v16 = v13[2];
  v17 = v4 + 1;
  v1[2] = v4 + 1;
  if ((v6 & 0x20) != 0)
  {
    if (v17 == v5)
    {
LABEL_12:
      v19 = v3 >> 1;
    }

    else
    {
      v18 = (v12 + 48 * v4 + 56);
      v19 = v4 + 1;
      while (1)
      {
        v20 = *v18;
        v18 += 6;
        if (v14 >= v20)
        {
          break;
        }

        if (v5 == ++v19)
        {
          goto LABEL_12;
        }
      }
    }

    if (v19 > v4)
    {
      if (v5 >= v19)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          if (!__OFSUB__(v19, v17))
          {
            v21 = v3 & 1 | (2 * v19);
            *v1 = sub_273EC4(v19 - v17, v11, v12, v4 + 1, v15, v16);
            v1[1] = v22;
            v1[2] = v23;
            v1[3] = v24;
            sub_287FF0(v11, v12, v17, v21, v14, v29);
            v26 = v29[1];
            v28 = v29[0];
            v7 = v30;
            swift_unknownObjectRetain();
            v10 = v26;
            v8 = v28;
            v9 = 0;
            goto LABEL_18;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v16;
  v27 = v15;
  if (v15.n128_u64[0])
  {
    swift_unknownObjectRetain();
    v7 = 0;
    v9 = 1;
    v10 = v25;
    v8 = v27;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_2851E0()
{
  sub_303DC8(*v0);
  sub_303DB8(*(v0 + 8));
  if (!*(v0 + 16))
  {
    sub_303DC8(0);
    return;
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_303DC8(1u);
  v4 = v2 >> 1;
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_303DB8((v2 >> 1) - v1);
  v5 = __OFSUB__(v4, v1);
  v6 = v4 - v1;
  if (!v6)
  {
    return;
  }

  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = (v3 + v1);
  do
  {
    v8 = *v7++;
    sub_303DC8(v8);
    --v6;
  }

  while (v6);
}

Swift::Int sub_285280()
{
  sub_303D98();
  sub_2851E0();
  return sub_303DE8();
}

Swift::Int sub_285310()
{
  sub_303D98();
  sub_2851E0();
  return sub_303DE8();
}

unint64_t sub_285360(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_288154(v7, v8) & 1;
}

void sub_2853A8()
{
  sub_303C78(61);
  v1._object = 0x8000000000439DB0;
  v1._countAndFlagsBits = 0xD000000000000020;
  sub_303988(v1);
  sub_2854FC();
  v2._countAndFlagsBits = 0x3A6874706564202CLL;
  v2._object = 0xE900000000000020;
  sub_303988(v2);
  v3._countAndFlagsBits = sub_303CF8();
  sub_303988(v3);

  v4._countAndFlagsBits = 0x794261746164202CLL;
  v4._object = 0xED0000203A736574;
  sub_303988(v4);
  if (v0[2] && __OFSUB__(v0[5] >> 1, v0[4]))
  {
    __break(1u);
  }

  else
  {
    v5._countAndFlagsBits = sub_303CF8();
    sub_303988(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    sub_303988(v6);
  }
}

uint64_t sub_2854FC()
{
  sub_303C78(18);

  v1._countAndFlagsBits = sub_303CF8();
  sub_303988(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_303988(v2);
  v3._countAndFlagsBits = 0x6E656449314E5341;
  v3._object = 0xEF28726569666974;
  sub_303988(v3);
}

void sub_285604(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v6 = sub_2AA558(0, 16, 0, _swiftEmptyArrayStorage);
  sub_285714(v7, 1, &v6);
  if (v4)
  {

LABEL_6:
    swift_unknownObjectRelease();
    return;
  }

  if (!__OFSUB__(v9 >> 1, v8))
  {
    if (v9 >> 1 != v8)
    {

      sub_2809A8();
      swift_allocError();
      *v5 = 3;
      swift_willThrow();
    }

    goto LABEL_6;
  }

  __break(1u);
}

void sub_285714(char *a1, uint64_t a2, char **a3)
{
  if (a2 > 10)
  {
    goto LABEL_2;
  }

  v9 = sub_290318();
  if ((v9 & 0x100) != 0)
  {
LABEL_8:
    sub_2809A8();
    swift_allocError();
    v5 = 5;
    goto LABEL_9;
  }

  v10 = v9;
  if ((~v9 & 0x1F) != 0)
  {
    sub_285A74();
    if (v3)
    {
      return;
    }

    if (v13)
    {
      goto LABEL_8;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_2:
      sub_2809A8();
      swift_allocError();
      v5 = 3;
LABEL_9:
      *v4 = v5;
      goto LABEL_10;
    }

    v14 = *a1;
    v48 = *(a1 + 1);
    v15 = *(a1 + 2);
    v16 = v12;
    v17 = sub_27294C(v12, v14, v48, v15, *(a1 + 3));
    v19 = v18;
    v44 = v17;
    v45[0] = v17;
    v45[1] = v20;
    v43 = v20;
    v46 = v21;
    v47 = v18;
    v22 = v15;
    v23 = v21;
    *a1 = sub_273EC4(v16, v14, v48, v22, v24, v25);
    *(a1 + 1) = v26;
    *(a1 + 2) = v27;
    *(a1 + 3) = v28;
    if (!__OFSUB__(v19 >> 1, v23))
    {
      if ((v19 >> 1) - v23 != v16)
      {
        sub_2809A8();
        swift_allocError();
        *v35 = 5;
        swift_willThrow();
        swift_unknownObjectRetain();
LABEL_29:
        swift_unknownObjectRelease();
        return;
      }

      v14 = v19;
      a1 = *a3;
      swift_unknownObjectRetain();
      if ((v10 & 0x20) == 0)
      {
        swift_unknownObjectRetain();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_17:
          v29 = a3;
          v30 = a2;
          v31 = v43;
          v33 = *(a1 + 2);
          v32 = *(a1 + 3);
          if (v33 >= v32 >> 1)
          {
            v41 = sub_2AA558((v32 > 1), v33 + 1, 1, a1);
            v31 = v43;
            v30 = a2;
            v29 = a3;
            a1 = v41;
          }

          *(a1 + 2) = v33 + 1;
          v34 = &a1[48 * v33];
          v34[32] = v10;
          *(v34 + 5) = v30;
          *(v34 + 6) = v44;
          *(v34 + 7) = v31;
          *(v34 + 8) = v23;
          *(v34 + 9) = v14;
          *v29 = a1;
          goto LABEL_29;
        }

LABEL_32:
        a1 = sub_2AA558(0, *(a1 + 2) + 1, 1, a1);
        goto LABEL_17;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_2AA558(0, *(a1 + 2) + 1, 1, a1);
      }

      v36 = a3;
      v37 = a2;
      v39 = *(a1 + 2);
      v38 = *(a1 + 3);
      if (v39 >= v38 >> 1)
      {
        v42 = sub_2AA558((v38 > 1), v39 + 1, 1, a1);
        v37 = a2;
        v36 = a3;
        a1 = v42;
      }

      *(a1 + 2) = v39 + 1;
      v40 = &a1[48 * v39];
      v40[32] = v10;
      *(v40 + 5) = v37;
      *(v40 + 3) = 0u;
      *(v40 + 4) = 0u;
      *v36 = a1;
      while (!__OFSUB__(v47 >> 1, v46))
      {
        if (((v47 >> 1) - v46) < 1)
        {
          goto LABEL_29;
        }

        sub_285714(v45, a2 + 1, a3);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  sub_2809A8();
  swift_allocError();
  *v11 = 0;
LABEL_10:
  swift_willThrow();
}

void sub_285A74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v3 >> 1;
  if (v2 == v3 >> 1)
  {
    return;
  }

  if (v2 >= (v3 >> 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v5 = *v0;
  v6 = v0[1];
  v7 = *(v6 + v2);
  v8 = v2 + 1;
  v0[2] = v2 + 1;
  if (v7 == 128)
  {
    sub_2809A8();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();
    return;
  }

  if ((v7 & 0x80) != 0)
  {
    v10 = __OFSUB__(v4, v8);
    v11 = v4 - v8;
    if (v10)
    {
      goto LABEL_16;
    }

    v12 = v7 & 0x7F;
    if (v11 >= v12)
    {
      sub_27294C(v7 & 0x7F, v5, v6, v2 + 1, v3);
      v14 = v13;
      v26 = v15;
      v17 = v16;
      *v0 = sub_273EC4(v12, v5, v6, v8, v18, v19);
      v0[1] = v20;
      v0[2] = v21;
      v0[3] = v22;
      swift_unknownObjectRetain();
      v23 = swift_unknownObjectRetain();
      sub_280000(v23, v14, v26, v17);
      if (!v1 && (v24 <= 0x7F || v12 > (71 - __clz(v24)) >> 3))
      {
        sub_2809A8();
        swift_allocError();
        *v25 = 6;
        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Int sub_285C44()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_303D98();
  sub_288990(v5, v1, v2, v3);
  return sub_303DE8();
}

Swift::Int sub_285CAC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_303D98();
  sub_288990(v5, v1, v2, v3);
  return sub_303DE8();
}

double sub_285D20@<D0>(uint64_t a1@<X8>)
{
  sub_285058(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_285D6C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_285D80()
{
  v1 = sub_288690(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  return v1;
}

unint64_t sub_285DFC()
{
  result = qword_519650;
  if (!qword_519650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519650);
  }

  return result;
}

unint64_t sub_285E54()
{
  result = qword_519658;
  if (!qword_519658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519658);
  }

  return result;
}

uint64_t sub_285EDC(int a1, char **a2, char *a3)
{
  v5 = v3;
  LODWORD(v8) = a1;
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      isUniquelyReferenced_nonNull_native = sub_2AA214((v11 > 1), v12 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
      v11 = *(isUniquelyReferenced_nonNull_native + 24);
      v13 = v11 >> 1;
    }

    *(v9 + 2) = v14;
    v9[v12 + 32] = v8;
    v15 = v12 + 2;
    if (v13 < v15)
    {
      isUniquelyReferenced_nonNull_native = sub_2AA214((v11 > 1), v15, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    *(v9 + 2) = v15;
    v9[v14 + 32] = 0;
    *a2 = v9;
    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v9 = *a3;
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v25[2] = v9;
    sub_288D9C(6, a2, sub_280A48, v25);
    if (v5)
    {

      v17 = *(a3 + 24);
      v26[0] = *(a3 + 8);
      v26[1] = v17;
      return sub_2566A0(v26, &qword_5195F8);
    }

    v8 = *(a3 + 1);
    if (v8)
    {
      v14 = *(a3 + 3);
      v19 = *(a3 + 4);
      v20 = *(a3 + 2);
      v21 = swift_unknownObjectRetain();
      sub_28FEF4(v21, v20, v14, v19);
    }

    a3 = *a2;
    v22 = *(*a2 + 2);
    v4 = v22 - v15;
    if ((v22 - v15) >= 128)
    {
      v27 = v8;
      if (v22 >= v15)
      {
        v8 = 71 - __clz(v4);
        v14 = v8 >> 3;
        sub_28693C(v8 >> 3, v15, v22);
        a3 = *a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_14;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    a3 = sub_29550C(a3);
LABEL_14:
    if (v16 >= *(a3 + 2))
    {
      __break(1u);
      goto LABEL_43;
    }

    v23 = v8;
    v24 = a3 + 32;
    a3[v16 + 32] = (v8 >> 3) | 0x80;
    *a2 = a3;
    LODWORD(v8) = v27;
    if (v15 < *(a3 + 2))
    {
      v24[v15] = v4 >> (8 * ((v14 - 1) & 7));
      if (v14 == 1)
      {
        goto LABEL_35;
      }

      if (v15 + 1 < *(a3 + 2))
      {
        v24[v15 + 1] = v4 >> (8 * ((v14 - 2) & 7));
        if (v14 == 2)
        {
          goto LABEL_35;
        }

        if (v15 + 2 < *(a3 + 2))
        {
          v24[v15 + 2] = v4 >> (8 * ((v14 - 3) & 7));
          if (v14 == 3)
          {
            goto LABEL_35;
          }

          if (v15 + 3 < *(a3 + 2))
          {
            v24[v15 + 3] = v4 >> (8 * ((v14 - 4) & 7));
            if (v14 == 4)
            {
              goto LABEL_35;
            }

            if (v15 + 4 < *(a3 + 2))
            {
              v24[v15 + 4] = v4 >> (8 * ((v14 - 5) & 7));
              if (v14 == 5)
              {
                goto LABEL_35;
              }

              if (v15 + 5 < *(a3 + 2))
              {
                v24[v15 + 5] = v4 >> (8 * ((v14 - 6) & 7));
                if (v14 == 6)
                {
                  goto LABEL_35;
                }

                if (v15 + 6 < *(a3 + 2))
                {
                  v24[v15 + 6] = v4 >> (8 * ((v14 - 7) & 7));
                  if (v14 == 7)
                  {
                    goto LABEL_35;
                  }

                  if (v15 + 7 < *(a3 + 2))
                  {
                    v24[v15 + 7] = v4 >> (v23 & 0x38);
LABEL_35:

                    result = swift_unknownObjectRelease();
                    *a2 = a3;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_37:
    isUniquelyReferenced_nonNull_native = sub_2AA214(0, *(v9 + 2) + 1, 1, v9);
    v9 = isUniquelyReferenced_nonNull_native;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_33;
  }

LABEL_43:
  result = sub_29550C(a3);
  a3 = result;
LABEL_33:
  if (v16 < *(a3 + 2))
  {
    a3[v16 + 32] = v4;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_2862AC(unint64_t a1, char **a2, uint64_t a3)
{
  v9 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_2AA214(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v9 = sub_2AA214((v10 > 1), v11 + 1, 1, v9);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
  }

  *(v9 + 2) = v13;
  v9[v11 + 32] = a1;
  v14 = v11 + 2;
  if (v12 < v14)
  {
    v9 = sub_2AA214((v10 > 1), v14, 1, v9);
  }

  *(v9 + 2) = v14;
  v9[v13 + 32] = 0;
  *a2 = v9;
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(a3 + 16);
  v26[0] = *a3;
  v26[1] = v16;
  v27 = *(a3 + 32);
  v29 = *&v26[0];
  v17 = *(a3 + 24);
  v28[0] = *(a3 + 8);
  v28[1] = v17;
  sub_280890(&v29, v25);
  sub_2808EC(v28, v25, &qword_5195F8);
  v18 = sub_285EDC(48, a2, v26);
  if (v3)
  {
    return sub_283218(a3);
  }

  *&v20 = __chkstk_darwin(v18);
  v24[1] = v21;
  v24[2] = v20;
  sub_288D9C(3, a2, sub_280A64, v24);
  v9 = *a2;
  v22 = *(*a2 + 2);
  v4 = v22 - v14;
  if ((v22 - v14) > 127)
  {
    if (v22 < v14)
    {
      goto LABEL_37;
    }

    v5 = 71 - __clz(v4);
    a1 = v5 >> 3;
    sub_28693C(v5 >> 3, v14, v22);
    v9 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (v15 < *(v9 + 2))
    {
      v23 = v9 + 32;
      v9[v15 + 32] = (v5 >> 3) | 0x80;
      *a2 = v9;
      if (v14 < *(v9 + 2))
      {
        v23[v14] = v4 >> (8 * ((a1 - 1) & 7));
        if (a1 == 1)
        {
          goto LABEL_34;
        }

        if (v14 + 1 < *(v9 + 2))
        {
          v23[v14 + 1] = v4 >> (8 * ((a1 - 2) & 7));
          if (a1 == 2)
          {
            goto LABEL_34;
          }

          if (v14 + 2 < *(v9 + 2))
          {
            v23[v14 + 2] = v4 >> (8 * ((a1 - 3) & 7));
            if (a1 == 3)
            {
              goto LABEL_34;
            }

            if (v14 + 3 < *(v9 + 2))
            {
              v23[v14 + 3] = v4 >> (8 * ((a1 - 4) & 7));
              if (a1 == 4)
              {
                goto LABEL_34;
              }

              if (v14 + 4 < *(v9 + 2))
              {
                v23[v14 + 4] = v4 >> (8 * ((a1 - 5) & 7));
                if (a1 == 5)
                {
                  goto LABEL_34;
                }

                if (v14 + 5 < *(v9 + 2))
                {
                  v23[v14 + 5] = v4 >> (8 * ((a1 - 6) & 7));
                  if (a1 == 6)
                  {
                    goto LABEL_34;
                  }

                  if (v14 + 6 < *(v9 + 2))
                  {
                    v23[v14 + 6] = v4 >> (8 * ((a1 - 7) & 7));
                    if (a1 == 7)
                    {
                      goto LABEL_34;
                    }

                    if (v14 + 7 < *(v9 + 2))
                    {
                      v23[v14 + 7] = v4 >> (v5 & 0x38);
                      goto LABEL_34;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v9 = sub_29550C(v9);
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_41:
    result = sub_29550C(v9);
    v9 = result;
  }

  if (v15 >= *(v9 + 2))
  {
    __break(1u);
  }

  else
  {
    v9[v15 + 32] = v4;
LABEL_34:
    result = sub_283218(a3);
    *a2 = v9;
  }

  return result;
}

void sub_28668C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (*(a2 + 48))
  {
    v6 = swift_unknownObjectRetain();
    sub_28FEF4(v6, v3, v5, v4);
  }

  else if (v5 != v4 >> 1)
  {
    v7 = *(a2 + 8);
    sub_280B40(a2, v34);
    v29 = v7;
    swift_unknownObjectRetain();
    while (1)
    {
      v10 = v4 >> 1;
      if (v5 == v4 >> 1)
      {
        break;
      }

      if (v5 >= (v4 >> 1))
      {
        goto LABEL_27;
      }

      v11 = (v3 + 48 * v5);
      v12 = *v11;
      v13 = v5 + 1;
      if ((v12 & 0x20) != 0)
      {
        v16 = *(v11 + 1);
        if (v13 == v10)
        {
LABEL_14:
          v18 = v4 >> 1;
        }

        else
        {
          v17 = (v3 + 48 * v5 + 56);
          v18 = v5 + 1;
          while (1)
          {
            v19 = *v17;
            v17 += 6;
            if (v16 >= v19)
            {
              break;
            }

            if (v10 == ++v18)
            {
              goto LABEL_14;
            }
          }
        }

        if (v18 <= v5)
        {
          goto LABEL_28;
        }

        if (v10 < v18)
        {
          goto LABEL_29;
        }

        if (v18 < 0)
        {
          goto LABEL_30;
        }

        if (__OFSUB__(v18, v13))
        {
          goto LABEL_31;
        }

        v20 = v4 & 1 | (2 * v18);
        v21 = sub_273EC4(v18 - v13, v29, v3, v5 + 1, v8, v9);
        v22 = v3;
        v24 = v23;
        v5 = v25;
        v4 = v26;
        sub_287FF0(v29, v22, v13, v20, v16, v35);
        v31 = v35[1];
        v33 = v35[0];
        v14 = v36;
        swift_unknownObjectRetain();
        v15 = v33;
        v29 = v21;
        v42 = v24;
      }

      else
      {
        v32 = *(v11 + 1);
        if (!v32)
        {
          goto LABEL_32;
        }

        v42 = v3;
        v31 = *(v11 + 2);
        swift_unknownObjectRetain();
        v14 = 0;
        ++v5;
        v15 = v32;
      }

      v37[0] = v12;
      v38 = v15;
      v39 = v31;
      v40 = v14;
      v41 = (v12 & 0x20) == 0;
      v27 = v15;
      j__swift_unknownObjectRetain(v15, *(&v15 + 1), v31, *(&v31 + 1), v14, v41);
      sub_285EA8(v12, a1, v37);
      if (v2)
      {
        sub_280AEC(a2);
        j__swift_unknownObjectRelease(v27, *(&v27 + 1), v31, *(&v31 + 1), v14, (v12 & 0x20) == 0);
        goto LABEL_24;
      }

      j__swift_unknownObjectRelease(v27, *(&v27 + 1), v31, *(&v31 + 1), v14, (v12 & 0x20) == 0);
      v3 = v42;
      if (v5 == v4 >> 1)
      {
        sub_280AEC(a2);
LABEL_24:
        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_28693C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  v10 = v7 - a3;
  if (__OFSUB__(v7, a3))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = a2;
  v5 = result;
  if (v10 >= result)
  {
    goto LABEL_13;
  }

  v8 = result - v10;
  if (__OFSUB__(result, v10))
  {
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = sub_2AA214(0, v7 + 1, 1, v6);
    v6 = result;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  v11 = *(v6 + 16);
  a3 = v9;
  do
  {
    v12 = *(v6 + 24);
    if (v11 >= v12 >> 1)
    {
      result = sub_2AA214((v12 > 1), v11 + 1, 1, v6);
      a3 = v9;
      v6 = result;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + v11++ + 32) = 0;
    --v8;
  }

  while (v8);
  *v4 = v6;
LABEL_13:
  if (a3 != v3)
  {
    while (a3 > v3)
    {
      v13 = a3 - 1 + v5;
      if (__OFADD__(a3 - 1, v5))
      {
        goto LABEL_26;
      }

      v14 = a3 - 1;
      if (a3 < 1)
      {
        goto LABEL_27;
      }

      if (v14 >= *(v6 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v6 + a3 + 31);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_29550C(v6);
        v6 = result;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      if (v13 >= *(v6 + 16))
      {
        goto LABEL_29;
      }

      *(v6 + v13 + 32) = v15;
      a3 = v14;
      if (v14 == v3)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    *v4 = v6;
  }

  return result;
}

void *sub_286ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v4 = sub_2A0B58(v25, &v26);
  v5 = v4[2];
  v6 = _swiftEmptyArrayStorage;
  v7 = 0;
  if (v5)
  {
    v8 = &_swiftEmptyArrayStorage[4];
    v9 = (v4 + 4);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (!v7)
      {
        v12 = v6[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v15 = swift_allocObject();
        v16 = 2 * _swift_stdlib_malloc_size(v15) - 64;
        v15[2] = v14;
        v15[3] = v16;
        v17 = (v15 + 4);
        v18 = v6[3] >> 1;
        if (v6[2])
        {
          if (v15 != v6 || v17 >= v6 + v18 + 32)
          {
            memmove(v15 + 4, v6 + 4, v18);
          }

          v6[2] = 0;
        }

        v8 = (v17 + v18);
        v7 = (v16 >> 1) - v18;

        v6 = v15;
      }

      v20 = __OFSUB__(v7--, 1);
      if (v20)
      {
        break;
      }

      *v8++ = v10;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v21 = v6[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v20 = __OFSUB__(v22, v7);
    v23 = v22 - v7;
    if (v20)
    {
      goto LABEL_25;
    }

    v6[2] = v23;
  }

  return v6;
}

void *sub_286C74(_OWORD *a1)
{
  v1 = a1[1];
  v23[0] = *a1;
  v23[1] = v1;
  v23[2] = a1[2];
  v2 = sub_2A0B58(v23, v24);
  v3 = v2[2];
  v4 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v3)
  {
    v6 = &_swiftEmptyArrayStorage[4];
    v7 = (v2 + 4);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v5)
      {
        v10 = v4[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v15 >= v4 + v16 + 32)
          {
            memmove(v13 + 4, v4 + 4, v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + v16);
        v5 = (v14 >> 1) - v16;

        v4 = v13;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = v8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v21;
  }

  return v4;
}

void *sub_286E14(_OWORD *a1)
{
  v1 = a1[1];
  v24[0] = *a1;
  v24[1] = v1;
  v2 = a1[3];
  v24[2] = a1[2];
  v24[3] = v2;
  v3 = sub_2A0B58(v24, v25);
  v4 = v3[2];
  v5 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (v4)
  {
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = (v3 + 4);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v6)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v14 = swift_allocObject();
        v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
        v14[2] = v13;
        v14[3] = v15;
        v16 = (v14 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v14 != v5 || v16 >= v5 + v17 + 32)
          {
            memmove(v14 + 4, v5 + 4, v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + v17);
        v6 = (v15 >> 1) - v17;

        v5 = v14;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v9;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (v19)
    {
      goto LABEL_25;
    }

    v5[2] = v22;
  }

  return v5;
}

void *sub_286FB4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v35[0] = a1;
      LOWORD(v35[1]) = a2;
      BYTE2(v35[1]) = BYTE2(a2);
      BYTE3(v35[1]) = BYTE3(a2);
      BYTE4(v35[1]) = BYTE4(a2);
      BYTE5(v35[1]) = BYTE5(a2);
      v3 = v35 + BYTE6(a2);
      v4 = v35;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    memset(v35, 0, 14);
    v4 = v35;
    v3 = v35;
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  a1 = sub_303388();
  v7 = a1;
  if (a1)
  {
    a1 = sub_3033B8();
    if (__OFSUB__(v5, a1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    v7 += v5 - a1;
  }

  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v8)
  {
    __break(1u);
LABEL_11:
    v10 = a1;
    v9 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v7 = sub_303388();
    if (v7)
    {
      v11 = sub_3033B8();
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_50;
      }

      v7 += v10 - v11;
    }
  }

  v12 = sub_3033A8();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v13 + v7);
  if (v7)
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v7;
LABEL_23:
  v15 = sub_2A0B58(v4, v3);
  v16 = v15[2];
  v17 = _swiftEmptyArrayStorage;
  v18 = 0;
  if (v16)
  {
    v19 = &_swiftEmptyArrayStorage[4];
    v20 = (v15 + 4);
    while (1)
    {
      v22 = *v20++;
      v21 = v22;
      if (!v18)
      {
        v23 = v17[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v26 = swift_allocObject();
        v27 = 2 * _swift_stdlib_malloc_size(v26) - 64;
        v26[2] = v25;
        v26[3] = v27;
        v28 = (v26 + 4);
        v29 = v17[3] >> 1;
        if (v17[2])
        {
          if (v26 != v17 || v28 >= v17 + v29 + 32)
          {
            memmove(v26 + 4, v17 + 4, v29);
          }

          v17[2] = 0;
        }

        v19 = (v28 + v29);
        v18 = (v27 >> 1) - v29;

        v17 = v26;
      }

      v8 = __OFSUB__(v18--, 1);
      if (v8)
      {
        break;
      }

      *v19++ = v21;
      if (!--v16)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v31 = v17[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v8 = __OFSUB__(v32, v18);
    v33 = v32 - v18;
    if (v8)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v17[2] = v33;
  }

  return v17;
}

void *sub_287278(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      v7 = sub_303388();
      if (v7)
      {
        v8 = sub_3033B8();
        if (__OFSUB__(v5, v8))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v7 += v5 - v8;
      }

      v9 = __OFSUB__(v6, v5);
      v10 = v6 - v5;
      if (v9)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v11 = sub_3033A8();
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v4 = _swiftEmptyArrayStorage;
      if (!v7)
      {
        goto LABEL_28;
      }

      if (!v12)
      {
        goto LABEL_28;
      }

      v4 = sub_252148(v12, 0);
      sub_29AC10(v4 + 4, v12, v7, v12);
      if (v13 == v12)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

LABEL_17:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  if (!v2)
  {
    __src = a1;
    v41 = a2;
    v42 = BYTE2(a2);
    v43 = BYTE3(a2);
    v44 = BYTE4(a2);
    v3 = BYTE6(a2);
    v45 = BYTE5(a2);
    if (BYTE6(a2))
    {
      v4 = sub_252148(BYTE6(a2), 0);
      memcpy(v4 + 4, &__src, v3);
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  v14 = a1;
  v15 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v16 = sub_303388();
  if (v16)
  {
    v17 = sub_3033B8();
    if (__OFSUB__(v14, v17))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v16 += v14 - v17;
  }

  v18 = sub_3033A8();
  if (v18 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v4 = _swiftEmptyArrayStorage;
  if (v16)
  {
    if (v19)
    {
      v4 = sub_252148(v19, 0);
      sub_29AC10(v4 + 4, v19, v16, v19);
      if (v20 != v19)
      {
LABEL_57:
        __break(1u);
      }
    }
  }

LABEL_28:
  v21 = v4[2];
  v22 = _swiftEmptyArrayStorage;
  v23 = 0;
  if (v21)
  {
    v24 = &_swiftEmptyArrayStorage[4];
    v25 = (v4 + 4);
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if (!v23)
      {
        v28 = v22[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v31 = swift_allocObject();
        v32 = 2 * _swift_stdlib_malloc_size(v31) - 64;
        v31[2] = v30;
        v31[3] = v32;
        v33 = (v31 + 4);
        v34 = v22[3] >> 1;
        if (v22[2])
        {
          if (v31 != v22 || v33 >= v22 + v34 + 32)
          {
            memmove(v31 + 4, v22 + 4, v34);
          }

          v22[2] = 0;
        }

        v24 = (v33 + v34);
        v23 = (v32 >> 1) - v34;

        v22 = v31;
      }

      v9 = __OFSUB__(v23--, 1);
      if (v9)
      {
        break;
      }

      *v24++ = v26;
      if (!--v21)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_46:

  v36 = v22[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v9 = __OFSUB__(v37, v23);
    v38 = v37 - v23;
    if (v9)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v22[2] = v38;
  }

  return v22;
}

void *sub_2875C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a1;
  v24[1] = a2;
  v25 = a3;
  v3 = sub_2A0B58(v24, &v25 + 4);
  v4 = v3[2];
  v5 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (v4)
  {
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = (v3 + 4);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (!v6)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v14 = swift_allocObject();
        v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
        v14[2] = v13;
        v14[3] = v15;
        v16 = (v14 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v14 != v5 || v16 >= v5 + v17 + 32)
          {
            memmove(v14 + 4, v5 + 4, v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + v17);
        v6 = (v15 >> 1) - v17;

        v5 = v14;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v9;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (v19)
    {
      goto LABEL_25;
    }

    v5[2] = v22;
  }

  return v5;
}

void *sub_287760(uint64_t a1, uint64_t a2)
{
  v23[0] = a1;
  v23[1] = a2;
  v2 = sub_2A0B58(v23, &v24);
  v3 = v2[2];
  v4 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v3)
  {
    v6 = &_swiftEmptyArrayStorage[4];
    v7 = (v2 + 4);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (!v5)
      {
        v10 = v4[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v13 != v4 || v15 >= v4 + v16 + 32)
          {
            memmove(v13 + 4, v4 + 4, v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + v16);
        v5 = (v14 >> 1) - v16;

        v4 = v13;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = v8;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_19:

  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_25;
    }

    v4[2] = v21;
  }

  return v4;
}

uint64_t sub_2878F4(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519668);
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage[3];

  v15 = &_swiftEmptyArrayStorage[4];
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519668);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_287B88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v25 = *(v3 + 24);
  if (!a2)
  {
LABEL_33:
    v7 = 0;
    goto LABEL_36;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_36:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = v6;
    *(result + 24) = v25;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v24 = result;
    result = 0;
    v9 = v25 >> 1;
    v10 = 1;
    while (1)
    {
      if (v6 == v9)
      {
        v6 = v25 >> 1;
        v7 = result;
LABEL_35:
        result = v24;
        goto LABEL_36;
      }

      if (v6 >= v9)
      {
        break;
      }

      v11 = v5 + 48 * v6;
      v12 = *v11;
      v13 = v6 + 1;
      if ((*v11 & 0x20) != 0)
      {
        v16 = *(v11 + 8);
        v17 = v25 >> 1;
        if (v13 != v9)
        {
          v18 = (v5 + 56 + 48 * v6);
          v17 = v6 + 1;
          while (1)
          {
            v19 = *v18;
            v18 += 6;
            if (v16 >= v19)
            {
              break;
            }

            if (v9 == ++v17)
            {
              v17 = v25 >> 1;
              break;
            }
          }
        }

        if (v17 <= v6)
        {
          goto LABEL_37;
        }

        if (v9 < v17)
        {
          goto LABEL_38;
        }

        if (v17 < 0)
        {
          goto LABEL_39;
        }

        v20 = v17 - v13;
        if (__OFSUB__(v17, v13))
        {
          goto LABEL_40;
        }

        if (v20 < 0)
        {
          goto LABEL_41;
        }

        v21 = v9 - v13;
        if (__OFSUB__(v9, v13))
        {
          goto LABEL_42;
        }

        if (!v20 || v21 < 0 || (v22 = v25 >> 1, v21 >= v20))
        {
          v22 = v17;
          if (__OFADD__(v13, v20))
          {
            goto LABEL_45;
          }

          if (v9 < v17)
          {
            goto LABEL_43;
          }
        }

        if (v22 <= v6)
        {
          goto LABEL_44;
        }

        sub_287FF0(v4, v5, v13, v25 & 1 | (2 * v17), v16, v29);
        v26 = v29[1];
        v28 = v29[0];
        v14 = v30;
        swift_unknownObjectRetain();
        v15 = v28;
        v6 = v22;
      }

      else
      {
        v27 = *(v11 + 16);
        result = *(v11 + 16);
        if (!v27)
        {
          goto LABEL_47;
        }

        v26 = *(v11 + 32);
        swift_unknownObjectRetain();
        v14 = 0;
        v6 = v13;
        v15 = v27;
      }

      *v8 = v12;
      *(v8 + 8) = v15;
      *(v8 + 24) = v26;
      *(v8 + 40) = v14;
      *(v8 + 48) = (v12 & 0x20) == 0;
      if (v10 == v7)
      {
        goto LABEL_35;
      }

      v8 += 56;
      result = v10;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_287DC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v22 = a3;
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FC0);
  __chkstk_darwin(v5);
  v7 = (&v20 - v6);
  v25 = *v3;
  *v7 = v25;
  v7[1] = 0;
  v23 = a1;
  v8 = v3[3];
  v9 = v3[4];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FE0);
  result = sub_3035E8();
  v12 = *(v10 + 56);
  *(v7 + v12) = 0;
  v13 = (v7 + *(v5 + 44));
  *v13 = v8;
  v13[1] = v9;
  if (v26)
  {
    v14 = v22;
    if (v22)
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v15 = v25;
      v16 = *(v25 + 16);
      if (v16)
      {
        v21 = v12;
        v14 = 0;
        v17 = v25 + 32;
        v24 = v22 - 1;
        while (v14 < *(v15 + 16))
        {
          v18 = *(v17 + v14);
          v7[1] = v14 + 1;
          sub_3035D8();
          sub_2715A8();
          sub_303C08();
          if ((v27 & 0x100000000) != 0)
          {
            goto LABEL_11;
          }

          BYTE1(v27) = v18;
          BYTE2(v27) = BYTE3(v27);
          result = v8(&v27, &v27 + 1);
          *(v26 + v14) = v27;
          if (v24 == v14)
          {
            v14 = v22;
            v19 = v23;
            goto LABEL_16;
          }

          ++v14;
          v15 = v25;
          if (v16 == v14)
          {
            v14 = v16;
LABEL_11:
            v12 = v21;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

      v14 = 0;
LABEL_14:
      *(v7 + v12) = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = v23;
LABEL_16:
  sub_271538(v7, v19);
  return v14;
}

uint64_t sub_287FF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a4 >> 1;
  if (a3 <= (a4 >> 1))
  {
    v7 = a4 >> 1;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 - a3 + 1;
  v9 = (48 * a3) | 8;
  v10 = v6 - a3;
  do
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    if (!--v8)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v11 = *(a2 + v9);
    v9 += 48;
    --v10;
  }

  while (v11 > a5);
  __break(1u);
LABEL_9:
  if (v6 == a3)
  {
LABEL_13:
    *a6 = result;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    a6[4] = a5;
    return result;
  }

  if (v6 <= a3)
  {
    goto LABEL_15;
  }

  if (__OFADD__(a5, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a2 + 48 * a3 + 8) == a5 + 1)
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_288080(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = a6 >> 1;
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = result + a2;
  result = 1;
  if (v10 != a4 + a5 && v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v8 == a5)
    {
      return 0;
    }

    v11 = 0;
    if (a5 <= v8)
    {
      v12 = a6 >> 1;
    }

    else
    {
      v12 = a5;
    }

    v13 = v12 - a5;
    while (v13 != v11)
    {
      if (*(v10 + v11) != *(a4 + a5 + v11))
      {
        return 0;
      }

      if (~a2 + v6 == v11)
      {
        return 1;
      }

      v14 = a2 + v11 + 1;
      if (v14 < a2 || v14 >= v6)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v9 == ++v11)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

void *sub_288154(void *result, void *a2)
{
  if (*result != *a2 || result[1] != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  if (!result[2])
  {
    if (!v2)
    {
      return (&dword_0 + 1);
    }

    goto LABEL_25;
  }

  if (!v2)
  {
LABEL_25:
    sub_2882B8(result, v16);
    sub_2882B8(a2, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = result[4];
  v4 = result[5] >> 1;
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2[4];
  v7 = a2[5] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5 != v8)
  {
    return 0;
  }

  if (!v5)
  {
    return (&dword_0 + 1);
  }

  v9 = result[3] + v3;
  v10 = a2[3] + v6;
  result = (&dword_0 + 1);
  if (v9 != v10 && v3 != v4)
  {
    if (v3 >= v4)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    if (v6 != v7)
    {
      v11 = 0;
      if (v6 <= v7)
      {
        v12 = a2[5] >> 1;
      }

      else
      {
        v12 = a2[4];
      }

      v13 = v12 - v6;
      while (v13 != v11)
      {
        if (*(v9 + v11) != *(v10 + v11))
        {
          return 0;
        }

        if (~v3 + v4 == v11)
        {
          return (&dword_0 + 1);
        }

        v14 = v3 + v11 + 1;
        if (v14 < v3 || v14 >= v4)
        {
          goto LABEL_32;
        }

        result = 0;
        if (v8 == ++v11)
        {
          return result;
        }
      }

      goto LABEL_31;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2882B8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  swift_unknownObjectRetain();
  return a2;
}

uint64_t sub_288304(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v8 = a5;
  v9 = a6 >> 1;
  if (__OFSUB__(a6 >> 1, a5))
  {
    goto LABEL_57;
  }

  if (v7 != (a6 >> 1) - a5)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = (result + 48 * a2);
  if (v10 == (a4 + 48 * a5) || v6 == a2)
  {
    return 1;
  }

  v37 = result;
  if (v6 > a2)
  {
    v12 = v10[5];
    v13 = v10[3];
    v44 = v10[1];
    v45 = *v10;
    v42 = v10[4];
    v43 = v10[2];
    result = swift_unknownObjectRetain();
    if (v9 == v8)
    {
LABEL_13:
      v14 = 0;
      v15 = 0;
LABEL_14:
      sub_288A80(v45, v44, v43);
      v16 = v15;
      v17 = v14;
      v18 = 1;
LABEL_52:
      sub_288A80(v16, v17, v18);
      return 0;
    }

    if (v8 <= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = v8;
    }

    v36 = v19;
    v20 = a2;
    while (1)
    {
      v41 = v13;
      if (v8 == v36)
      {
        goto LABEL_60;
      }

      v21 = (a4 + 48 * v8);
      v15 = *v21;
      v23 = v21[4];
      v22 = v21[5];
      v24 = v21[2];
      v40 = v21[3];
      v14 = v21[1];
      result = swift_unknownObjectRetain();
      if (v24 == 1)
      {
        goto LABEL_14;
      }

      v25 = v44;
      if (v45 != v15 || v44 != v14)
      {
        sub_288A80(v15, v14, v24);
        v16 = v45;
        v17 = v44;
        v18 = v43;
        goto LABEL_52;
      }

      if (v43)
      {
        if (!v24)
        {
          goto LABEL_55;
        }

        v26 = v12 >> 1;
        v27 = (v12 >> 1) - v42;
        if (__OFSUB__(v12 >> 1, v42))
        {
          goto LABEL_63;
        }

        v28 = v22 >> 1;
        v29 = (v22 >> 1) - v23;
        if (__OFSUB__(v22 >> 1, v23))
        {
          goto LABEL_64;
        }

        if (v27 != v29)
        {
          goto LABEL_50;
        }

        if (v27 && v41 + v42 != v40 + v23)
        {
          if (v42 >= v26)
          {
            goto LABEL_65;
          }

          if (v23 == v28)
          {
LABEL_50:
            sub_288A80(v15, v44, v24);
            v16 = v45;
            v17 = v44;
            v18 = v43;
            goto LABEL_52;
          }

          v30 = 0;
          if (v23 <= v28)
          {
            v31 = v22 >> 1;
          }

          else
          {
            v31 = v23;
          }

          v32 = v31 - v23;
          while (v32 != v30)
          {
            if (*(v41 + v42 + v30) != *(v40 + v23 + v30))
            {
              goto LABEL_50;
            }

            if (~v42 + v26 == v30)
            {
              goto LABEL_43;
            }

            v33 = v42 + v30 + 1;
            if (v33 < v42 || v33 >= v26)
            {
              goto LABEL_59;
            }

            if (v29 == ++v30)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_58;
        }

LABEL_43:
        sub_288A80(v15, v44, v24);
        v34 = v43;
        v25 = v44;
      }

      else
      {
        v34 = 0;
        if (v24)
        {
LABEL_55:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return 0;
        }
      }

      ++v20;
      result = sub_288A80(v45, v25, v34);
      if (v20 == v6)
      {
        return 1;
      }

      if (v20 < a2 || v20 >= v6)
      {
        goto LABEL_61;
      }

      ++v8;
      v35 = (v37 + 48 * v20);
      v12 = v35[5];
      v13 = v35[3];
      v44 = v35[1];
      v45 = *v35;
      v42 = v35[4];
      v43 = v35[2];
      result = swift_unknownObjectRetain();
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_288690(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = a4 >> 1;
  result = swift_unknownObjectRetain();
  v9 = _swiftEmptyArrayStorage;
  if (v7 != a3)
  {
    v10 = 0;
    v11 = &_swiftEmptyArrayStorage[4];
    v12 = a2;
    v36 = a2 + 56;
    v37 = v4 & 1;
    v39 = a2;
    while (1)
    {
      if (a3 >= v7)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v13 = v12 + 48 * a3;
      v14 = *v13;
      v15 = a3 + 1;
      if ((*v13 & 0x20) != 0)
      {
        v17 = *(v13 + 8);
        v18 = v7;
        if (v15 != v7)
        {
          v19 = (v36 + 48 * a3);
          v18 = a3 + 1;
          while (1)
          {
            v20 = *v19;
            v19 += 6;
            if (v17 >= v20)
            {
              break;
            }

            if (v7 == ++v18)
            {
              v18 = v7;
              break;
            }
          }
        }

        if (v18 <= a3)
        {
          goto LABEL_48;
        }

        if (v7 < v18)
        {
          goto LABEL_49;
        }

        if (v18 < 0)
        {
          goto LABEL_50;
        }

        v21 = v18 - v15;
        if (__OFSUB__(v18, v15))
        {
          goto LABEL_51;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (__OFSUB__(v7, v15))
        {
          goto LABEL_53;
        }

        if (!v21 || (v22 = v7, v7 - v15 >= v21))
        {
          v22 = v18;
          if (__OFADD__(v15, v21))
          {
            goto LABEL_57;
          }

          if (v7 < v18)
          {
            goto LABEL_56;
          }
        }

        if (v22 <= a3)
        {
          goto LABEL_54;
        }

        sub_287FF0(a1, v12, a3 + 1, v37 | (2 * v18), v17, v42);
        v40 = v42[1];
        v41 = v42[0];
        v16 = v43;
        result = swift_unknownObjectRetain();
        v15 = v22;
        if (v10)
        {
          v15 = v22;
          goto LABEL_40;
        }
      }

      else
      {
        v41 = *(v13 + 16);
        result = *(v13 + 16);
        if (!v41)
        {
          goto LABEL_59;
        }

        v40 = *(v13 + 32);
        result = swift_unknownObjectRetain();
        v16 = 0;
        if (v10)
        {
          goto LABEL_40;
        }
      }

      v23 = v9[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_55;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519660);
      v26 = swift_allocObject();
      v27 = (_swift_stdlib_malloc_size(v26) - 32) / 56;
      v26[2] = v25;
      v26[3] = 2 * v27;
      v28 = (v26 + 4);
      v29 = v9[3] >> 1;
      v30 = 7 * v29;
      if (v9[2])
      {
        if (v26 != v9 || v28 >= &v9[v30 + 4])
        {
          memmove(v26 + 4, v9 + 4, 56 * v29);
        }

        v9[2] = 0;
      }

      v11 = (v28 + v30 * 8);
      v10 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

      v9 = v26;
LABEL_40:
      v32 = __OFSUB__(v10--, 1);
      if (v32)
      {
        goto LABEL_47;
      }

      *v11 = v14;
      *(v11 + 1) = v41;
      *(v11 + 3) = v40;
      v11[5] = v16;
      *(v11 + 48) = (v14 & 0x20) == 0;
      v11 += 7;
      a3 = v15;
      v12 = v39;
      if (v15 == v7)
      {
        goto LABEL_42;
      }
    }
  }

  v10 = 0;
LABEL_42:
  result = swift_unknownObjectRelease();
  v33 = v9[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v32 = __OFSUB__(v34, v10);
    v35 = v34 - v10;
    if (v32)
    {
      goto LABEL_58;
    }

    v9[2] = v35;
  }

  return v9;
}

void sub_288990(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_17;
  }

  v5 = a3;
  sub_303DB8((a4 >> 1) - a3);
  if (v4 == v5)
  {
    return;
  }

  if (v4 <= v5)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = a2 + 48 * v5;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    v11 = *(v7 + 32);
    v12 = *(v7 + 40);
    sub_303DC8(*v7);
    sub_303DB8(v8);
    if (!v9)
    {
      sub_303DC8(0);
      goto LABEL_7;
    }

    sub_303DC8(1u);
    v13 = v12 >> 1;
    if (__OFSUB__(v12 >> 1, v11))
    {
      break;
    }

    sub_303DB8((v12 >> 1) - v11);
    v14 = __OFSUB__(v13, v11);
    v15 = v13 - v11;
    if (v15)
    {
      if ((v15 < 0) ^ v14 | (v15 == 0))
      {
        goto LABEL_16;
      }

      v16 = (v10 + v11);
      do
      {
        v17 = *v16++;
        sub_303DC8(v17);
        --v15;
      }

      while (v15);
    }

LABEL_7:
    if (++v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_288A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_288A94(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_2AA214((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_2AA214((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_28668C(a2, a3);
    if (v4)
    {
      return;
    }

    v4 = *a2;
    v13 = *(*a2 + 16);
    v12 = v13 - v7;
    if ((v13 - v7) > 127)
    {
      if (v13 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_28693C(v10 >> 3, v7, v13);
        v4 = *a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v4 = sub_29550C(v4);
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v14 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v14[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v14[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v14[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v14[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v14[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v14[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v14[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v14[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_2AA214(0, *(v8 + 2) + 1, 1, v8);
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_30;
  }

LABEL_41:
  v4 = sub_29550C(v4);
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_288D9C(char a1, char **a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  LOBYTE(v9) = a1;
  v10 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = sub_2AA214((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = v9;
    v9 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v10 = sub_2AA214((v11 > 1), v12 + 2, 1, v10);
    }

    *(v10 + 2) = v9;
    v10[v14 + 32] = 0;
    *a2 = v10;
    v10 = (v12 + 1);
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = (a3)(a2);
    if (v5)
    {
      return result;
    }

    a4 = *a2;
    v16 = *(*a2 + 2);
    a3 = v16 - v9;
    if ((v16 - v9) > 127)
    {
      if (v16 >= v9)
      {
        v14 = 71 - __clz(a3);
        v5 = v14 >> 3;
        sub_28693C(v14 >> 3, v9, v16);
        a4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_29550C(a4);
    a4 = result;
LABEL_11:
    if (v10 >= *(a4 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v17 = a4 + 32;
    v10[a4 + 32] = (v14 >> 3) | 0x80;
    *a2 = a4;
    if (v9 < *(a4 + 16))
    {
      *(v17 + v9) = a3 >> (8 * ((v5 - 1) & 7));
      if (v5 == 1)
      {
        goto LABEL_32;
      }

      if (v12 + 3 < *(a4 + 16))
      {
        *(v17 + v12 + 3) = a3 >> (8 * ((v5 - 2) & 7));
        if (v5 == 2)
        {
          goto LABEL_32;
        }

        if (v12 + 4 < *(a4 + 16))
        {
          *(v17 + v12 + 4) = a3 >> (8 * ((v5 - 3) & 7));
          if (v5 == 3)
          {
            goto LABEL_32;
          }

          if (v12 + 5 < *(a4 + 16))
          {
            *(v17 + v12 + 5) = a3 >> (8 * ((v5 - 4) & 7));
            if (v5 == 4)
            {
              goto LABEL_32;
            }

            if (v12 + 6 < *(a4 + 16))
            {
              *(v17 + v12 + 6) = a3 >> (8 * ((v5 - 5) & 7));
              if (v5 == 5)
              {
                goto LABEL_32;
              }

              if (v12 + 7 < *(a4 + 16))
              {
                *(v17 + v12 + 7) = a3 >> (8 * ((v5 - 6) & 7));
                if (v5 == 6)
                {
                  goto LABEL_32;
                }

                if (v12 + 8 < *(a4 + 16))
                {
                  *(v17 + v12 + 8) = a3 >> (8 * ((v5 - 7) & 7));
                  if (v5 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v12 + 9 < *(a4 + 16))
                  {
                    *(v17 + v12 + 9) = a3 >> (v14 & 0x38);
LABEL_32:
                    *a2 = a4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v10 = sub_2AA214(0, *(v10 + 2) + 1, 1, v10);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_29550C(a4);
  a4 = result;
LABEL_30:
  if (v10 < *(a4 + 16))
  {
    v10[a4 + 32] = a3;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_2890AC(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    __break(1u);
  }

  else if (v2 < v3)
  {
    v4 = v1[1] + 48 * v2;
    v5 = *(v4 + 40);
    *a1 = *v4;
    *(a1 + 8) = *(v4 + 8);
    v6 = *(v4 + 24);
    v1[2] = v2 + 1;
    *(a1 + 24) = v6;
    *(a1 + 40) = v5;
    return;
  }

  __break(1u);
}

void sub_289100(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_285604(a1, a2, a3, a4);
  if (!v5)
  {
    v39[6] = 0;
    v29 = v7;
    v30 = v8;
    v31 = v9;
    v32 = v10;
    sub_2890AC(v33);
    v13 = v33[0];
    if ((v33[0] & 0x20) != 0)
    {
      v28 = v33[0];
      v21 = v32 >> 1;
      v22 = v31;
      if (v31 != v32 >> 1)
      {
        if (v31 <= (v32 >> 1))
        {
          v23 = v32 >> 1;
        }

        else
        {
          v23 = v31;
        }

        v24 = (v30 + 48 * v31 + 8);
        v22 = v31;
        while (1)
        {
          if (v23 == v22)
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v34 >= *v24)
          {
            break;
          }

          ++v22;
          v24 += 6;
          if (v21 == v22)
          {
            v22 = v32 >> 1;
            break;
          }
        }

        if (v22 < v31)
        {
          goto LABEL_27;
        }
      }

      if (v21 < v31)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v21 < v22)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v22 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (__OFSUB__(v22, v31))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v25 = v32 & 1 | (2 * v22);
      sub_273EC4(v22 - v31, v29, v30, v31, v11, v12);
      v19 = v26;
      v20 = v27;
      sub_287FF0(v29, v30, v31, v25, v34, v39);
      v14 = v39[0];
      v17 = v39[1];
      v16 = v39[2];
      v15 = v39[3];
      v18 = v39[4];
      swift_unknownObjectRetain();
      v13 = v28;
    }

    else
    {
      v14 = v35;
      if (!v35)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v16 = v37;
      v15 = v38;
      v17 = v36;
      swift_unknownObjectRetain();
      v18 = 0;
      v19 = v31;
      v20 = v32;
    }

    if (__OFSUB__(v20 >> 1, v19))
    {
LABEL_25:
      __break(1u);
    }

    else if (v20 >> 1 == v19)
    {
      swift_unknownObjectRelease();
      *a5 = v13;
      *(a5 + 8) = v14;
      *(a5 + 16) = v17;
      *(a5 + 24) = v16;
      *(a5 + 32) = v15;
      *(a5 + 40) = v18;
      *(a5 + 48) = (v13 & 0x20) == 0;
      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_2892C8(char a1, char **a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_2AA214((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_2AA214((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_27F9F0(a2, a3);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v12 = v14 - v7;
    if ((v14 - v7) > 127)
    {
      if (v14 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_28693C(v10 >> 3, v7, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_29550C(v4);
    v4 = result;
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v15[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v15[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v15[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v15[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v15[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v15[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v15[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v15[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_2AA214(0, *(v8 + 2) + 1, 1, v8);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_29550C(v4);
  v4 = result;
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_2895D0(char a1, char **a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_2AA214((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_2AA214((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_28405C(a2, a3);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v12 = v14 - v7;
    if ((v14 - v7) > 127)
    {
      if (v14 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_28693C(v10 >> 3, v7, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_29550C(v4);
    v4 = result;
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v15[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v15[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v15[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v15[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v15[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v15[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v15[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v15[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_2AA214(0, *(v8 + 2) + 1, 1, v8);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_29550C(v4);
  v4 = result;
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for ASN1.ASN1ParserNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for ASN1.ASN1ParserNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
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

uint64_t assignWithTake for ASN1.ASN1ParserNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for ASN1.ASN1ParserNode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ASN1.ASN1ParserNode(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t _s7ASN1AnyVwcp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  return a1;
}

void *_s7ASN1AnyVwca(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

_OWORD *_s7ASN1AnyVwta(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  return a1;
}

uint64_t _s7ASN1AnyVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t _s7ASN1AnyVwst(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t initializeWithCopy for ASN1.ASN1Node(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  j__swift_unknownObjectRetain(v3, v4, v5, v6, v7, v8);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return a1;
}

uint64_t assignWithCopy for ASN1.ASN1Node(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  j__swift_unknownObjectRetain(v3, v4, v5, v6, v7, v8);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  j__swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for ASN1.ASN1Node(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  j__swift_unknownObjectRelease(v5, v7, v6, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for ASN1.ASN1Node(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1.ASN1Node(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_289EA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  return a1;
}

void *sub_289EE0(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t sub_289F48(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t initializeWithCopy for ASN1.ASN1Node.Content(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 40);
  j__swift_unknownObjectRetain(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t *assignWithCopy for ASN1.ASN1Node.Content(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 40);
  j__swift_unknownObjectRetain(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = *(a1 + 40);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  *(a1 + 40) = v8;
  j__swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t *assignWithTake for ASN1.ASN1Node.Content(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v11;
  a1[4] = v3;
  *(a1 + 40) = v4;
  j__swift_unknownObjectRelease(v5, v7, v6, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for ASN1.ASN1Node.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1.ASN1Node.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void *sub_28A1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_E1FC(a1, a2, a3, a4);
}

void *sub_28A244(_OWORD *a1)
{

  return sub_E254(a1);
}

void *sub_28A29C(_OWORD *a1)
{

  return sub_E2AC(a1);
}

void *sub_28A310(uint64_t a1, unint64_t a2)
{

  return sub_E1A4(a1, a2);
}

uint64_t sub_28A378@<X0>(uint64_t *a1@<X0>, unsigned __int16 a2@<W4>, unsigned __int8 *a3@<X7>, void *a4@<X8>)
{
  v12 = *a1;
  v5 = *a3;
  v16 = sub_28D524(a2, 2);
  v17 = v6;
  if (qword_5187E8 != -1)
  {
    swift_once();
  }

  sub_3035C8();
  sub_3035C8();
  sub_3035C8();
  sub_3035B8();
  v7 = v16;
  v8 = v17;
  if (v5)
  {
    if (v5 == 1)
    {
      sub_27E4A0(v12, v16, v17, a2, &v15);
    }

    else
    {
      sub_27E8A8(v12, v16, v17, a2, &v15);
    }
  }

  else
  {
    sub_27E0B4(v12, v16, v17, a2, &v15);
  }

  v9 = v15;
  swift_beginAccess();
  sub_299C98(v9 + 32, v9 + 32 + *(v9 + 16), &v14);
  v10 = v14;

  *a4 = v10;
  return sub_258780(v7, v8);
}

uint64_t sub_28A51C()
{
  result = sub_26FC90(0x31762D454B5048, 0xE700000000000000);
  qword_519670 = result;
  *algn_519678 = v1;
  return result;
}

uint64_t sub_28A554()
{
  result = sub_26FC90(0x6B72705F656165, 0xE700000000000000);
  qword_519680 = result;
  *algn_519688 = v1;
  return result;
}

uint64_t sub_28A58C()
{
  result = sub_26FC90(0x735F646572616873, 0xED00007465726365);
  qword_519690 = result;
  *algn_519698 = v1;
  return result;
}

uint64_t sub_28A5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2AA770(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_295534(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2955B0(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_28A69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v5);
  sub_3033E8();
  v6 = v8[2];
  (*(v3 + 8))(v5, a2);
  return v6;
}

uint64_t sub_28A7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 42) == 3)
  {
    sub_2713F4();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    return v8;
  }

  v28 = *(v6 + 42);
  v15 = *v6;
  v26 = *(v6 + 1);
  *v27 = *(v6 + 3);
  *&v27[15] = *(v6 + 39);
  v23 = v15;
  v25[1] = v15;
  v17 = sub_28C3F0();
  if (v6[1])
  {
    v18 = v16;
    v25[0] = v6[1];

    v8 = sub_27946C(a1, a2, v17, v18, v25, a3, a4, a5, a6);
    v20 = v19;

    sub_258780(v17, v18);
    if (v7)
    {
      return v8;
    }

    if (*(v6 + 42) < 3u)
    {
      if (v23 == -1)
      {
        sub_2713F4();
        swift_allocError();
        *v22 = 6;
        swift_willThrow();
        sub_258780(v8, v20);
      }

      else
      {
        *v6 = v23 + 1;
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

uint64_t sub_28A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 42) == 3)
  {
    sub_2713F4();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    return v8;
  }

  v28 = *(v6 + 42);
  v15 = *v6;
  v26 = *(v6 + 8);
  *v27 = *(v6 + 24);
  *&v27[15] = *(v6 + 39);
  v23 = v15;
  v25[1] = v15;
  v17 = sub_28C3F0();
  if (*(v6 + 8))
  {
    v18 = v16;
    v25[0] = *(v6 + 8);

    v8 = sub_2796CC(a1, v17, v18, a2, v25, a3, a4, a5, a6);
    v20 = v19;

    sub_258780(v17, v18);
    if (v7)
    {
      return v8;
    }

    if (*(v6 + 42) < 3u)
    {
      if (v23 == -1)
      {
        sub_2713F4();
        swift_allocError();
        *v22 = 6;
        swift_willThrow();
        sub_258780(v8, v20);
      }

      else
      {
        *v6 = v23 + 1;
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

size_t sub_28ABAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    if (a3 != 1)
    {
      sub_2582E4(a1, a2);
      sub_26DE98(a1, a2);
      swift_beginAccess();

      sub_27D170(v21, &v44);
      v22 = sub_303AA8();
      v24 = sub_2689C8(v22, v23);
      v25 = v44;
      sub_2698CC(v24);
      *&v31 = v25;

      sub_2689C8(&v32, &v36);

      sub_2698CC(v26);

      sub_258780(a1, a2);
      v32 = v36;
      v33 = v37;
      v34 = v38;
      v35 = v39;
      result = sub_299C98(&v32, &v36, &v44);
      v20 = v44;
      goto LABEL_7;
    }

    sub_2582E4(a1, a2);
    sub_26DE98(a1, a2);
    swift_beginAccess();

    sub_27D460(v7, &v31);
    v8 = sub_303AA8();
    v10 = sub_2689DC(v8, v9);
    sub_269834(v10);
    v40 = v36;
    v41 = v37;
    v42 = v38;

    sub_2689DC(&v40, &v43);

    sub_269834(v11);

    v12 = v34;
    v27 = v33;
    v29 = v32;

    sub_258780(a1, a2);
    v36 = v29;
    v37 = v27;
    v38 = v12;
    v13 = &v39;
  }

  else
  {
    sub_2582E4(a1, a2);
    sub_26DE98(a1, a2);
    swift_beginAccess();

    sub_27D740(v14, &v31);
    v15 = sub_303AA8();
    v17 = sub_2689F0(v15, v16);
    sub_2697A4(v17);
    v40 = v36;
    v41 = v37;

    sub_2689F0(&v40, &v42);

    sub_2697A4(v18);

    v28 = v33;
    v30 = v32;

    sub_258780(a1, a2);
    v36 = v30;
    v37 = v28;
    v13 = &v38;
  }

  result = sub_299C98(&v36, v13, &v32);
  v20 = v32;
LABEL_7:
  *a4 = v20;
  return result;
}

BOOL sub_28AF4C(uint64_t a1)
{
  sub_28C7FC(a1, &v15);
  v1 = v16;
  if (v16)
  {
    sub_258288(&v15, v14);
    sub_28C748(v14, v12);
    v2 = v13;
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    __chkstk_darwin(v3);
    v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v6 + 16))(v5);
    v7 = sub_28A69C(v5, v2);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v12);
    sub_3035C8();
    sub_258780(v7, v9);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  return v1 == 0;
}

uint64_t sub_28B0A4()
{
  result = sub_26FC90(0x685F64695F6B7370, 0xEB00000000687361);
  qword_5196A0 = result;
  *algn_5196A8 = v1;
  return result;
}

uint64_t sub_28B0E4()
{
  result = sub_26FC90(0x7361685F6F666E69, 0xE900000000000068);
  qword_5196B0 = result;
  *algn_5196B8 = v1;
  return result;
}

uint64_t sub_28B120()
{
  result = sub_26FC90(0x746572636573, 0xE600000000000000);
  qword_5196C0 = result;
  *algn_5196C8 = v1;
  return result;
}

uint64_t sub_28B154()
{
  result = sub_26FC90(7955819, 0xE300000000000000);
  qword_5196D0 = result;
  *algn_5196D8 = v1;
  return result;
}

uint64_t sub_28B184()
{
  result = sub_26FC90(0x6E6F6E5F65736162, 0xEA00000000006563);
  qword_5196E0 = result;
  *algn_5196E8 = v1;
  return result;
}

uint64_t sub_28B1C0()
{
  result = sub_26FC90(7370853, 0xE300000000000000);
  qword_5196F0 = result;
  *algn_5196F8 = v1;
  return result;
}

uint64_t sub_28B1F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>)
{
  v168 = a4;
  v163 = a9;
  v15 = *a5;
  v16 = *a8;
  v17 = a8[1];
  v18 = a8[2];
  *v184 = *a5;
  sub_28C594(a1, v184, a6, a7);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    sub_EB18(a6, a7);
    sub_258780(a3, v168);

    return sub_EB18(0, 0xF000000000000000);
  }

  else
  {
    v161 = a2;
    v164 = v17;
    v157 = a1;
    v156 = v15;
    v162 = v18;
    v158 = v16;
    v154 = a6;
    v160 = a3;
    if (qword_518800 != -1)
    {
      swift_once();
    }

    if (a7 >> 60 == 15)
    {
      v20 = 0;
      v185 = 0u;
      *&v184[8] = 0u;
    }

    else
    {
      *&v185 = &type metadata for SymmetricKey;
      *(&v185 + 1) = sub_28C690();
      sub_2582E4(v154, a7);
      v20 = sub_26DE98(v154, a7);
      sub_EB18(v154, a7);
    }

    v153 = a7;
    *v184 = v20;
    if (qword_518858 != -1)
    {
      swift_once();
    }

    v182 = qword_519730;
    v183 = *algn_519738;
    v21 = qword_33EBC0[v158];
    sub_2582E4(qword_519730, *algn_519738);
    v166 = v21;
    v22 = sub_28D524(v21, 2);
    v24 = v23;
    sub_3035C8();
    sub_258780(v22, v24);
    v25 = sub_28D524(v164 + 1, 2);
    v27 = v26;
    sub_3035C8();
    sub_258780(v25, v27);
    v165 = qword_33EC00[v162];
    v28 = sub_28D524(v165, 2);
    v30 = v29;
    sub_3035C8();
    sub_258780(v28, v30);
    v31 = v182;
    v32 = v183;
    if (qword_5187E8 != -1)
    {
      swift_once();
    }

    v182 = qword_519670;
    v183 = *algn_519678;
    sub_2582E4(qword_519670, *algn_519678);
    sub_3035C8();
    sub_3035C8();
    sub_28AF4C(v184);
    v33 = v182;
    v34 = v183;
    sub_26DE98(v182, v183);
    sub_28ABAC(0, 0xC000000000000000, v164, &v177);

    sub_258780(v33, v34);
    v35 = v177;
    swift_beginAccess();
    v36 = *(v35 + 16);

    sub_28A5D0(v35 + 32, v35 + 32 + v36, &v180);
    v37 = v167;
    sub_258780(v31, v32);

    sub_27CF48(v184);

    v159 = v180;
    v167 = v181;
    if (qword_518808 != -1)
    {
      swift_once();
    }

    *&v185 = &type metadata for SymmetricKey;
    v155 = sub_28C690();
    *(&v185 + 1) = v155;
    sub_2582E4(v160, v168);
    v38 = sub_26DE98(v160, v168);
    sub_258780(v160, v168);
    *v184 = v38;
    v180 = qword_519730;
    v181 = *algn_519738;
    sub_2582E4(qword_519730, *algn_519738);
    v39 = sub_28D524(v166, 2);
    v41 = v40;
    sub_3035C8();
    sub_258780(v39, v41);
    v42 = sub_28D524(v164 + 1, 2);
    v44 = v43;
    sub_3035C8();
    sub_258780(v42, v44);
    v45 = sub_28D524(v165, 2);
    v47 = v46;
    sub_3035C8();
    sub_258780(v45, v47);
    v49 = v180;
    v48 = v181;
    v180 = qword_519670;
    v181 = *algn_519678;
    sub_2582E4(qword_519670, *algn_519678);
    sub_3035C8();
    sub_3035C8();
    sub_28AF4C(v184);
    v50 = v37;
    v51 = v180;
    v52 = v181;
    sub_26DE98(v180, v181);
    sub_28ABAC(0, 0xC000000000000000, v164, &v175);

    sub_258780(v51, v52);
    v53 = v175;
    swift_beginAccess();
    v54 = *(v53 + 16);

    sub_28A5D0(v53 + 32, v53 + 32 + v54, &v177);
    v55 = v50;
    sub_258780(v49, v48);

    v57 = v177;
    v56 = v178;
    sub_27CF48(v184);
    v179 = xmmword_33DAD0;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519708);
    *&v185 = v58;
    *(&v185 + 1) = sub_28C6E4();
    v184[0] = v157;
    LOBYTE(v177) = *__swift_project_boxed_opaque_existential_1(v184, v58);
    sub_303518();
    __swift_destroy_boxed_opaque_existential_0(v184);
    sub_3035C8();
    v151 = v57;
    v152 = v56;
    sub_3035C8();
    sub_28C748(v161, v184);
    v59 = v185;
    v60 = __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
    __chkstk_darwin(v60);
    v62 = &v149 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v62);
    v64 = sub_28A69C(v62, v59);
    v66 = v65;
    __swift_destroy_boxed_opaque_existential_0(v184);
    if (qword_518810 != -1)
    {
      swift_once();
    }

    v157 = v162;
    v67 = v156;
    if (v156)
    {
      *&v185 = &type metadata for SymmetricKey;
      *(&v185 + 1) = v155;
      swift_beginAccess();
      sub_299C98(v67 + 32, v67 + 32 + *(v67 + 16), &v177);
      v68 = v177;
    }

    else
    {
      v68 = 0;
      v185 = 0u;
      *&v184[8] = 0u;
    }

    v69 = v164;
    *v184 = v68;
    v177 = qword_519730;
    v178 = *algn_519738;
    sub_2582E4(qword_519730, *algn_519738);
    v70 = sub_28D524(v166, 2);
    v72 = v71;
    sub_3035C8();
    sub_258780(v70, v72);
    v73 = sub_28D524(v69 + 1, 2);
    v75 = v74;
    sub_3035C8();
    sub_258780(v73, v75);
    v76 = sub_28D524(v165, 2);
    v78 = v77;
    sub_3035C8();
    sub_258780(v76, v78);
    v80 = v177;
    v79 = v178;
    v177 = qword_519670;
    v178 = *algn_519678;
    sub_2582E4(qword_519670, *algn_519678);
    sub_3035C8();
    sub_3035C8();
    sub_28AF4C(v184);
    v155 = v55;
    v81 = v177;
    v82 = v178;
    sub_26DE98(v177, v178);
    sub_28ABAC(v64, v66, v69, &v175);

    sub_258780(v80, v79);
    sub_27CF48(v184);
    sub_258780(v81, v82);
    sub_258780(v64, v66);
    v156 = v175;
    if (v157 == 3)
    {
      v162 = 0;
      v150 = 0;
      v149 = 0xF000000000000000;
    }

    else
    {
      if (qword_518818 != -1)
      {
        swift_once();
      }

      v83 = v179;
      v84 = qword_33EBE8[v162];
      *v184 = qword_519730;
      *&v184[8] = *algn_519738;
      sub_2582E4(qword_519730, *algn_519738);
      v85 = sub_28D524(v166, 2);
      v87 = v86;
      sub_3035C8();
      sub_258780(v85, v87);
      v88 = sub_28D524(v69 + 1, 2);
      v90 = v89;
      sub_3035C8();
      sub_258780(v88, v90);
      v91 = sub_28D524(v165, 2);
      v93 = v92;
      sub_3035C8();
      sub_258780(v91, v93);
      v95 = *v184;
      v94 = *&v184[8];
      v175 = sub_28D524(v84, 2);
      v176 = v96;
      sub_3035C8();
      v149 = v94;
      sub_3035C8();
      sub_3035C8();
      *&v185 = &type metadata for Data;
      *(&v185 + 1) = &protocol witness table for Data;
      *v184 = v83;
      v97 = __swift_project_boxed_opaque_existential_1(v184, &type metadata for Data);
      v98 = *v97;
      v99 = v97[1];
      v150 = v83;
      sub_2582E4(v83, *(&v83 + 1));
      v100 = v155;
      sub_273900(v98, v99);
      __swift_destroy_boxed_opaque_existential_0(v184);
      v101 = v175;
      v102 = v176;
      if (v69)
      {
        if (v69 == 1)
        {
          sub_27E4A0(v156, v175, v176, v84, v184);
        }

        else
        {
          sub_27E8A8(v156, v175, v176, v84, v184);
        }
      }

      else
      {
        sub_27E0B4(v156, v175, v176, v84, v184);
      }

      v103 = *v184;
      swift_beginAccess();
      sub_299C98(v103 + 32, v103 + 32 + *(v103 + 16), &v173);
      v162 = v173;

      sub_258780(v95, v149);
      sub_258780(v101, v102);
      if (qword_518820 != -1)
      {
        swift_once();
      }

      *v184 = qword_519730;
      *&v184[8] = *algn_519738;
      sub_2582E4(qword_519730, *algn_519738);
      v104 = sub_28D524(v166, 2);
      v106 = v105;
      sub_3035C8();
      sub_258780(v104, v106);
      v107 = sub_28D524(v69 + 1, 2);
      v109 = v108;
      sub_3035C8();
      sub_258780(v107, v109);
      v110 = sub_28D524(v165, 2);
      v112 = v111;
      sub_3035C8();
      sub_258780(v110, v112);
      v113 = *v184;
      v114 = *&v184[8];
      v173 = sub_28D524(0xCuLL, 2);
      v174 = v115;
      sub_3035C8();
      sub_3035C8();
      sub_3035C8();
      *&v185 = &type metadata for Data;
      *(&v185 + 1) = &protocol witness table for Data;
      v116 = v150;
      *v184 = v150;
      *&v184[8] = *(&v83 + 1);
      v117 = __swift_project_boxed_opaque_existential_1(v184, &type metadata for Data);
      v118 = *v117;
      v119 = v117[1];
      sub_2582E4(v116, *(&v83 + 1));
      sub_273900(v118, v119);
      __swift_destroy_boxed_opaque_existential_0(v184);
      v120 = v173;
      v121 = v174;
      if (v69)
      {
        if (v69 == 1)
        {
          sub_27E4A0(v156, v173, v174, 12, v184);
        }

        else
        {
          sub_27E8A8(v156, v173, v174, 0xCuLL, v184);
        }
      }

      else
      {
        sub_27E0B4(v156, v173, v174, 0xCuLL, v184);
      }

      v122 = *v184;
      swift_beginAccess();
      sub_299C98(v122 + 32, v122 + 32 + *(v122 + 16), &v171);
      v123 = v171;

      sub_258780(v120, v121);
      swift_beginAccess();
      v124 = *(v123 + 16);

      sub_28A5D0(v123 + 32, v123 + 32 + v124, v184);
      v155 = v100;
      sub_258780(v113, v114);

      v150 = *v184;
      v149 = *&v184[8];
      sub_EB18(0, 0xF000000000000000);
    }

    LODWORD(v158) = v158;
    if (qword_518828 != -1)
    {
      swift_once();
    }

    v125 = v179;
    *v184 = qword_519730;
    *&v184[8] = *algn_519738;
    sub_2582E4(qword_519730, *algn_519738);
    v126 = sub_28D524(v166, 2);
    v128 = v127;
    sub_3035C8();
    sub_258780(v126, v128);
    v129 = sub_28D524(v69 + 1, 2);
    v131 = v130;
    sub_3035C8();
    sub_258780(v129, v131);
    v132 = sub_28D524(v165, 2);
    v134 = v133;
    sub_3035C8();
    sub_258780(v132, v134);
    v136 = *v184;
    v135 = *&v184[8];
    v171 = sub_28D524(16 * v69 + 32, 2);
    v172 = v137;
    sub_3035C8();
    v165 = v135;
    sub_3035C8();
    sub_3035C8();
    *&v185 = &type metadata for Data;
    *(&v185 + 1) = &protocol witness table for Data;
    *v184 = v125;
    v138 = __swift_project_boxed_opaque_existential_1(v184, &type metadata for Data);
    v139 = *v138;
    v140 = v138[1];
    v166 = v125;
    sub_2582E4(v125, *(&v125 + 1));
    sub_273900(v139, v140);
    __swift_destroy_boxed_opaque_existential_0(v184);
    v141 = v171;
    v142 = v172;
    v143 = 16 * v69 + 32;
    if (v69)
    {
      if (v69 == 1)
      {
        sub_27E4A0(v156, v171, v172, v143, &v170);
      }

      else
      {
        sub_27E8A8(v156, v171, v172, v143, &v170);
      }
    }

    else
    {
      sub_27E0B4(v156, v171, v172, v143, &v170);
    }

    v144 = v170;
    swift_beginAccess();
    sub_299C98(v144 + 32, v144 + 32 + *(v144 + 16), &v169);
    v145 = v169;

    sub_258780(v159, v167);
    sub_258780(v151, v152);
    sub_258780(v136, v165);
    sub_EB18(v154, v153);
    sub_258780(v160, v168);
    __swift_destroy_boxed_opaque_existential_0(v161);
    sub_258780(v141, v142);

    result = sub_258780(v166, *(&v125 + 1));
    v146 = v163;
    v147 = v162;
    *v163 = 0;
    v146[1] = v147;
    v148 = v149;
    v146[2] = v150;
    v146[3] = v148;
    v146[4] = v145;
    *(v146 + 40) = v158;
    *(v146 + 41) = v164;
    *(v146 + 42) = v157;
  }

  return result;
}

uint64_t sub_28C3F0()
{
  if (*(v0 + 42) < 3u)
  {
    v1 = *v0;
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_276F08(v2, v3);
    v4 = sub_303AE8();
    *(v4 + 16) = 4;
    *(v4 + 32) = 0;
    v11 = bswap64(v1);
    v12 = v4;
    sub_28F9DC(&v11, &v12);
    if (v3 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v5 != 2)
      {
        v6 = 0;
        goto LABEL_13;
      }

      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v5)
    {
      v6 = BYTE6(v3);
      goto LABEL_13;
    }

    LODWORD(v6) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    v6 = v6;
LABEL_13:
    if (v6 == *(v12 + 16))
    {
      v13[0] = v12;
      v13[1] = v2;
      v13[2] = v3;
      v13[3] = sub_28C580;
      v13[4] = 0;
      return sub_2701B0(v13);
    }

    __break(1u);
    goto LABEL_16;
  }

  result = sub_303CA8();
  __break(1u);
  return result;
}

uint64_t sub_28C594(unsigned __int8 a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v5 = *a2;
  if (a4 >> 60 != 15)
  {
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519718);
      result = swift_initStaticObject();
      v11 = *(result + 16);
      v12 = (result + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == v4)
        {
          return result;
        }
      }

      v10 = 5;
      goto LABEL_14;
    }

LABEL_12:
    v10 = 3;
LABEL_14:
    sub_2713F4();
    swift_allocError();
    *v14 = v10;
    return swift_willThrow();
  }

  if (v5)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_519718);
  result = swift_initStaticObject();
  v7 = *(result + 16);
  v8 = (result + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == v4)
    {
      v10 = 4;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t sub_28C690()
{
  result = qword_519700;
  if (!qword_519700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519700);
  }

  return result;
}

unint64_t sub_28C6E4()
{
  result = qword_519710;
  if (!qword_519710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_519708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_519710);
  }

  return result;
}

uint64_t sub_28C748(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_28C7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11KeyScheduleVwxx(uint64_t a1)
{

  v2 = *(a1 + 24);
  if (v2 >> 60 != 15)
  {
    sub_258780(*(a1 + 16), v2);
  }
}

uint64_t _s11KeyScheduleVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);

  if (v5 >> 60 == 15)
  {
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
    sub_2582E4(v6, v5);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);

  return a1;
}

uint64_t _s11KeyScheduleVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  if (*(a1 + 24) >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v6 = *(a2 + 16);
      sub_2582E4(v6, *(a2 + 24));
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 16) = v6;
      *(a1 + 24) = v4;
      sub_258780(v7, v8);
      goto LABEL_8;
    }

    sub_26B7C8(a1 + 16);
    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  v5 = *(a2 + 16);
  sub_2582E4(v5, *(a2 + 24));
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
LABEL_8:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s11KeyScheduleVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a1 + 24);
  if (v5 >> 60 != 15)
  {
    v6 = *(a2 + 24);
    if (v6 >> 60 != 15)
    {
      v7 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v6;
      sub_258780(v7, v5);
      goto LABEL_6;
    }

    sub_26B7C8(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t _s11KeyScheduleVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t _s11KeyScheduleVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_28CBAC@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

uint64_t sub_28CBC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_518830 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_519722;
  *a1 = word_519720;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_28CC54@<X0>(uint64_t a1@<X8>)
{
  if (qword_518838 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_519725;
  *a1 = word_519723;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_28CCE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_518840 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_519728;
  *a1 = word_519726;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_28CD6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_518848 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_51972B;
  *a1 = word_519729;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_28CDF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_518850 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_51972E;
  *a1 = word_51972C;
  *(a1 + 2) = v1;
  return result;
}

uint64_t sub_28CE68()
{
  result = sub_26FC90(1162563656, 0xE400000000000000);
  qword_519730 = result;
  *algn_519738 = v1;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11CiphersuiteVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s11CiphersuiteVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}