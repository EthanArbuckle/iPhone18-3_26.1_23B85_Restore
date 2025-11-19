void sub_2273690F8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22766CCA0() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      v13 = sub_22766CB20();

      v14 = v13 & v9;
      if (v4 >= v10)
      {
        if (v14 < v10 || v4 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v10 && v4 < v14)
      {
        goto LABEL_5;
      }

      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v4);
      v19 = (v17 + 8 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      v23 = v20 + v21 * v4;
      v24 = v21 * v7;
      v25 = v20 + v21 * v7 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

unint64_t sub_2273692C8(int64_t a1, uint64_t a2)
{
  v4 = sub_227668BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_22766CCA0();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_22736CC08(&qword_27D7B8730, MEMORY[0x277D537B0]);
      v24 = sub_22766BF50();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22736960C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t *), uint64_t (*a7)(uint64_t, uint64_t))
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v8 = v7;
  v12 = sub_2276694E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_226F39E30(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v32();
      goto LABEL_7;
    }

    v33();
    v29 = *v8;
    v30 = sub_226F39E30(a2);
    if ((v23 & 1) == (v31 & 1))
    {
      v19 = v30;
      v25 = *v8;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v12);
      return sub_227366268(v19, v16, a1, v25, v35);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v8;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = (v25[7] + 40 * v19);
  __swift_destroy_boxed_opaque_existential_0(v26);
  v27 = v34;

  return v27(a1, v26);
}

id sub_2273698B8(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v17 = sub_226F3A030(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v31 = *v12;
    v32 = sub_226F3A030(a2);
    if ((v21 & 1) == (v33 & 1))
    {
      v17 = v32;
      v23 = *v12;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v12;
  if (v21)
  {
LABEL_8:
    v24 = v23[7];
    v25 = a6(0);
    v26 = *(v25 - 8);
    v27 = *(v26 + 40);
    v28 = v25;
    v29 = v24 + *(v26 + 72) * v17;

    return v27(v29, a1, v28);
  }

LABEL_13:
  sub_227366A28(v17, a2, a1, v23, a7);

  return a2;
}

unint64_t sub_227369A70(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_226F3A978(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_226FE3888(v14, a3 & 1);
      v18 = *v4;
      result = sub_226F3A978(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_226FF0DD4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    v26 = v20[7] + 40 * result;
    v27 = *(a1 + 16);
    *v26 = *a1;
    *(v26 + 16) = v27;
    *(v26 + 32) = *(a1 + 32);
    v28 = v20[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v20[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 40 * result;
  v22 = *(v21 + 8);
  v24 = *(v21 + 24);
  v23 = *(v21 + 32);
  v25 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v25;
  *(v21 + 32) = *(a1 + 32);
  swift_unknownObjectRelease();
}

unint64_t sub_227369C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226E92000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226FE2228(v16, a4 & 1);
      v20 = *v5;
      result = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_226FF016C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_227369DA0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226E92000(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_226FE24C8(v16, a3 & 1);
      v20 = *v5;
      result = sub_226E92000(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_226FF02D4();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_227369F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_226F3AA2C(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_226FF15B8();
      goto LABEL_9;
    }

    sub_226FE510C(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_226F3AA2C(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v30 = v28[1];
    v29 = v28[2];
    *v28 = v32;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_227366334(v17, v14, v32, v26, a3, v27);
  }
}

uint64_t sub_22736A144(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_226F3ABA4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_226FE57E0(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_226F3ABA4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_226FF19D4();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v24 = v20[6] + 40 * v9;
    v25 = *a2;
    v26 = *(a2 + 16);
    *(v24 + 32) = *(a2 + 32);
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v20[7] + 8 * v9) = a1;
    v27 = v20[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v20[2] = v28;
      return sub_227019388(a2, v29);
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

uint64_t sub_22736A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_226F3AB00(a2, a3, a4, a5 & 1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_226FE5AF0(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_226F3AB00(a2, a3, a4, a5 & 1);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_226FF1B80();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = v26[6] + 32 * v15;
  *v30 = a2;
  *(v30 + 8) = a3;
  *(v30 + 16) = a4;
  *(v30 + 24) = a5 & 1;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;

  return sub_226EB396C(a3, a4, a5 & 1);
}

_OWORD *sub_22736A46C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226FF1414();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226FE4910(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_226E92000(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22766D220();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_226F04970(a1, v23);
  }

  else
  {
    sub_227366484(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22736A5BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
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
      sub_226FE636C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF2024();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_227333460(a1, v23);
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

unint64_t sub_22736A74C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_226F491D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_226FE69BC(v14, a3 & 1);
      v18 = *v4;
      result = sub_226F491D4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_226FF23B0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_22736A898(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226F3ACCC(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 < v16 || (a2 & 1) != 0)
    {
      sub_226FE7DD4(v16, a2 & 1);
      v20 = *v5;
      result = sub_226F3ACCC(a1);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_226FF2C6C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * result);
    *v23 = a3;
    v23[1] = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = a1;
  v24 = (v22[7] + 16 * result);
  *v24 = a3;
  v24[1] = a4;
  v25 = v22[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v26;
}

unint64_t sub_22736AA00(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_226F3ACCC(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_226FE8110(v14, a2 & 1);
      v18 = *v4;
      result = sub_226F3ACCC(a1);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_226FF2DCC();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a3;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a1;
  *(v20[7] + 8 * result) = a3;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v22;
}

uint64_t sub_22736AC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_226E92000(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_226FE4E4C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_226E92000(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_226FF129C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_22736AD8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226F3B058(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_226FF3640();
      goto LABEL_7;
    }

    sub_226FE9350(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_226F3B058(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22736661C(v15, v12, a1, v21, MEMORY[0x277CC9260], MEMORY[0x277D50430]);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_227663CD0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_22736AFB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
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
      sub_226FEA188(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_22766D220();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_226FF384C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_22736B130(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_226F3B1C0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_226FEA19C(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_226F3B1C0(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_226E99364(0, &qword_281398AE8, 0x277CCAD50);
        sub_22766D220();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v18 = v10;
      sub_226FF3860();
      v10 = v18;
    }
  }

  v21 = *v5;
  if ((v16 & 1) == 0)
  {
    v21[(v10 >> 6) + 8] |= 1 << v10;
    *(v21[6] + 8 * v10) = a3;
    v25 = (v21[7] + 16 * v10);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v14)
    {
      v21[2] = v27;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v22 = (v21[7] + 16 * v10);
  v23 = v22[1];
  *v22 = a1;
  v22[1] = a2;
}

id sub_22736B2B4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_226F3B1C0(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_226FF39D8();
      goto LABEL_7;
    }

    sub_226FEA410(v12, a3 & 1);
    v19 = *v4;
    v20 = sub_226F3B1C0(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_226E99364(0, &qword_281398AE8, 0x277CCAD50);
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8) + 72) * v9;

    return sub_22736CB24(a1, v17);
  }

LABEL_13:
  sub_22736657C(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_22736B424(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226F3B3E8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_226FF3DE8();
      goto LABEL_7;
    }

    sub_226FEAEF4(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_226F3B3E8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22736661C(v15, v12, a1, v21, MEMORY[0x277D50180], MEMORY[0x277D518F8]);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_227665750();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_22736B650(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226F3B3E8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_226FF4180();
      goto LABEL_7;
    }

    sub_226FEB3B0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_226F3B3E8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22736671C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_22736B864(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
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
      sub_226FEBAA0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF437C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
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

unint64_t sub_22736BA9C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  result = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a3 & 1) != 0)
  {
LABEL_8:
    v26 = *v10;
    if (v21)
    {
      v27 = v26[7];
      v28 = *(v27 + 8 * result);
      *(v27 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + 8 * result) = a1;
    v29 = v26[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v26[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  if (v22 >= v20 && (a3 & 1) == 0)
  {
    v23 = result;
    a5();
    result = v23;
    goto LABEL_8;
  }

  a6(v20, a3 & 1);
  v24 = *v10;
  result = a4(a2);
  if ((v21 & 1) == (v25 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22766D220();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22736BC60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226E923A0(a3);
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
      sub_226FECE20(v16, a4 & 1);
      v20 = *v5;
      result = sub_226E923A0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_226FF4ADC();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_22736BDC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_227663480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226F3BA10(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle();
      return sub_22736CC50(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_226FF533C();
    goto LABEL_7;
  }

  sub_226FEDFE8(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_226F3BA10(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_227366930(v15, v12, a1, v21, MEMORY[0x277D4FF88], type metadata accessor for AssetBundleHandler.DownloadedAssetBundle, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
}

uint64_t sub_22736BFFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_226E92000(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_226E92000(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

unint64_t sub_22736C230(uint64_t a1, char a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t, void))
{
  v9 = v5;
  v12 = *v5;
  result = a3();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a2 & 1) != 0)
  {
LABEL_8:
    v25 = *v9;
    if (v19)
    {
      v26 = *(v25 + 56);
      v27 = *(v26 + 8 * result);
      *(v26 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    *(v25 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v25 + 56) + 8 * result) = a1;
    v28 = *(v25 + 16);
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      *(v25 + 16) = v29;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a2 & 1) == 0)
  {
    v21 = result;
    a4();
    result = v21;
    goto LABEL_8;
  }

  v22 = a5(v18, a2 & 1);
  v23 = *v9;
  result = (a3)(v22);
  if ((v19 & 1) == (v24 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22766D220();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22736C3E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t), void (*a6)(void), void (*a7)(uint64_t, void))
{
  v11 = v7;
  v16 = *v7;
  result = a5(a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      a7(v22, a4 & 1);
      v26 = *v11;
      result = a5(a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      a6();
      result = v25;
    }
  }

  v28 = *v11;
  if ((v23 & 1) == 0)
  {
    v28[(result >> 6) + 8] |= 1 << result;
    *(v28[6] + result) = a3;
    v31 = (v28[7] + 16 * result);
    *v31 = a1;
    v31[1] = a2;
    v32 = v28[2];
    v21 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v21)
    {
      v28[2] = v33;
      return result;
    }

    goto LABEL_15;
  }

  v29 = (v28[7] + 16 * result);
  v30 = v29[1];
  *v29 = a1;
  v29[1] = a2;
}

id sub_22736C574(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_226F3B23C(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for AssetMediaStreamLoader.TaskResult();
      return sub_22736CC50(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_226FF5AB8();
    goto LABEL_7;
  }

  sub_226FEECA0(v12, a3 & 1);
  v19 = *v4;
  v20 = sub_226F3B23C(a2);
  if ((v13 & 1) != (v21 & 1))
  {
LABEL_15:
    sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
    result = sub_22766D220();
    __break(1u);
    return result;
  }

  v9 = v20;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_227366888(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_22736C6E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_227668BB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226F3B28C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
      return sub_22736CC50(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_226FF5E68();
    goto LABEL_7;
  }

  sub_226FEF2E4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_226F3B28C(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_227366930(v15, v12, a1, v21, MEMORY[0x277D537B0], type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
}

void sub_22736C944(void (*a1)(void **), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_2273652D4(a1, a2, v2[2]);
}

unint64_t sub_22736C954()
{
  result = qword_27D7BCEC8;
  if (!qword_27D7BCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEC8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22736C9C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_22736CA0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22736CB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22736CB94()
{
  result = qword_27D7BCEE8;
  if (!qword_27D7BCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEE8);
  }

  return result;
}

uint64_t sub_22736CC08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22736CC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_22736CCC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v38 = a2;
    v17 = v16;
    v18 = sub_22766C000();
    v36 = v19;
    v37 = v18;

    v20 = [a1 notificationID];
    if (v20)
    {
      v21 = v20;
      v22 = sub_22766C000();
      v34 = v23;
      v35 = v22;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v26 = [a1 marketingItemID];
    if (v26)
    {
      v27 = v26;
      sub_22766C000();
      v33 = v28;
    }

    else
    {
      v33 = 0;
    }

    v29 = [a1 receivedDate];
    if (v29)
    {
      v30 = v29;
      sub_227662710();

      v32 = a1;
      v31 = *(v9 + 32);
      v31(v7, v13, v8);
      (*(v9 + 56))(v7, 0, 1, v8);
      v31(v15, v7, v8);
      a1 = v32;
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_2276625C0();
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        sub_226EDDD40(v7);
      }
    }

    (*(v9 + 16))(v13, v15, v8);
    sub_227664680();

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v24 = sub_227664DD0();
    sub_22736D4E8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
    swift_willThrow();
  }
}

uint64_t static EngagementBadge.representativeSamples()()
{
  v0 = sub_227662750();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2276646D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = *(v7 + 16);
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_226F1F688(0, v8, 0);
    v9 = v17;
    v16 = v7;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_227662740();
      sub_227664680();
      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1F688(v13 > 1, v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v6, v2);
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_22736D2E8(uint64_t a1)
{
  result = sub_22736D4E8(&unk_28139B968, MEMORY[0x277D50B18]);
  *(a1 + 8) = result;
  return result;
}

void sub_22736D340(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664690();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276646B0();
  if (v8)
  {
    v9 = sub_22766BFD0();
  }

  else
  {
    v9 = 0;
  }

  [a1 setNotificationID_];

  sub_2276646C0();
  if (v10)
  {
    v11 = sub_22766BFD0();
  }

  else
  {
    v11 = 0;
  }

  [a1 setMarketingItemID_];

  sub_2276646A0();
  v12 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setReceivedDate_];
}

uint64_t sub_22736D4E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22736D530(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276666C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22736D5F0, 0, 0);
}

uint64_t sub_22736D5F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D524F0])
  {
    v5 = v0[6];
    (*(v0[5] + 96))(v5, v0[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = v0[6];

    v9 = v0[1];

    return v9(v6, v7);
  }

  else if (v4 == *MEMORY[0x277D524E8])
  {
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_22736D798;
    v12 = v0[2];

    return sub_2273CF184(0xD000000000000028, 0x800000022769E950);
  }

  else
  {
    v13 = v0[4];

    return MEMORY[0x2821FDEB8](v13, v13);
  }
}

uint64_t sub_22736D798(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {

    v9 = sub_22736D940;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_22736D8D0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22736D8D0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v2, v1);
}

uint64_t sub_22736D940()
{
  v1 = *(v0 + 48);
  v2 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D51F20], v2);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22736DA24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_22766A740();
  sub_22766B370();
  v10 = *(v3 + 8);
  v10(v9, v2);
  v11 = [objc_opt_self() standardUserDefaults];
  sub_227664840();
  v12 = sub_22766BFD0();

  v13 = [v11 BOOLForKey_];

  if (v13)
  {
    sub_22766A740();
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Metrics reporting is disabled", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    v10(v7, v2);
    v17 = type metadata accessor for NullMetricRecorder();
    result = swift_allocObject();
    v19 = result;
    v20 = &off_283AADA38;
  }

  else
  {
    v19 = sub_22736DC9C();
    result = type metadata accessor for JetMetricsRecorder();
    v17 = result;
    v20 = &off_283A9CB28;
  }

  a1[3] = v17;
  a1[4] = v20;
  *a1 = v19;
  return result;
}

uint64_t sub_22736DC9C()
{
  v1 = sub_22766B880();
  v140 = *(v1 - 8);
  v141 = v1;
  v2 = *(v140 + 64);
  MEMORY[0x28223BE20](v1);
  v138 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_22766B850();
  v137 = *(v143 - 8);
  v4 = *(v137 + 64);
  v5 = MEMORY[0x28223BE20](v143);
  v136 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v134 = &v124 - v8;
  MEMORY[0x28223BE20](v7);
  v139 = &v124 - v9;
  v10 = sub_227669A90();
  v130 = *(v10 - 8);
  v131 = v10;
  v11 = *(v130 + 64);
  MEMORY[0x28223BE20](v10);
  v129 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BCB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v132 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v147 = &v124 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v124 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v124 - v23;
  v133 = v0;
  v25 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_226E9EF44();
  sub_22766BC70();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEF8, &qword_2276821B0);
  v142 = v14;
  v26 = *(v14 + 16);
  (v26)(v22, v24, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF00, &qword_2276821B8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_227670CD0;
  *(v27 + 56) = &type metadata for HardwareModelFieldRemovalLinterRule;
  *(v27 + 64) = sub_22736ED78();
  v146 = sub_22766BB60();
  v124 = sub_22766BB00();
  v145 = v13;
  (v26)(v22, v24, v13);
  v126 = v26;
  v127 = v14 + 16;
  v28 = sub_2276636C0();
  v29 = sub_227090024(v28);
  v128 = 0;

  v30 = sub_226F3E6A8(v29);

  v31 = MEMORY[0x22AA97E10](v22, 0, 0xE000000000000000, v30);
  v144 = v31;
  v135 = v24;
  (v26)(v147, v24, v13);
  v32 = v133;
  sub_226E91B50(v133 + 56, v177);
  sub_226E91B50(v32 + 16, v175);
  sub_226E91B50(v32 + 96, v174);
  sub_226E91B50(v32 + 136, v172);
  sub_226E91B50(v32 + 176, v170);
  sub_226FB68A4(v32 + 216, v169);
  LODWORD(v133) = sub_2276693D0();
  v33 = v178;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v177, v178);
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v37);
  v39 = v176;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (&v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = v173;
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v172, v173);
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v124 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = v171;
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = (&v124 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v43;
  v58 = *v49;
  v59 = *v55;
  v168[3] = &type metadata for MetricEventSequenceNumberProvider;
  v168[4] = &off_283A9A9A8;
  v60 = swift_allocObject();
  v168[0] = v60;
  v61 = *(v37 + 1);
  *(v60 + 16) = *v37;
  *(v60 + 32) = v61;
  *(v60 + 48) = *(v37 + 4);
  v167[3] = v125;
  v167[4] = sub_22736EDCC();
  v167[0] = v146;
  v166[4] = MEMORY[0x277D221A8];
  v166[3] = v124;
  v166[0] = v31;
  v62 = type metadata accessor for BagConsumer();
  v165[3] = v62;
  v165[4] = &off_283A9F810;
  v165[0] = v57;
  v63 = type metadata accessor for PrivacyPreferenceDataSource();
  v163 = v63;
  v164 = &off_283AB2760;
  v162[0] = v58;
  v64 = type metadata accessor for ServiceSubscriptionProviderBroker();
  v160 = v64;
  v161 = &off_283ACB2B8;
  v159[0] = v59;
  v65 = type metadata accessor for JetMetricsRecorder();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v125 = v65;
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v168, &type metadata for MetricEventSequenceNumberProvider);
  v70 = *(off_283A9A988 + 8);
  MEMORY[0x28223BE20](v69);
  v72 = &v124 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v72);
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v165, v62);
  v75 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = (&v124 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = v163;
  v80 = __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
  v81 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = (&v124 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83);
  v85 = v160;
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
  v87 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v89 = (&v124 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v90 + 16))(v89);
  v91 = *v77;
  v92 = *v83;
  v93 = *v89;
  v158[3] = &type metadata for MetricEventSequenceNumberProvider;
  v158[4] = &off_283A9A9A8;
  v94 = swift_allocObject();
  v158[0] = v94;
  v95 = *(v72 + 1);
  *(v94 + 16) = *v72;
  *(v94 + 32) = v95;
  *(v94 + 48) = *(v72 + 4);
  v156 = v62;
  v157 = &off_283A9F810;
  v155[0] = v91;
  v153 = v63;
  v154 = &off_283AB2760;
  *&v152 = v92;
  v150 = v64;
  v151 = &off_283ACB2B8;
  *&v149 = v93;
  v96 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder__metricsEventDefaultRoutingBehavior;
  (*(v130 + 104))(v129, *MEMORY[0x277D4F038], v131);
  v148[0] = 0;

  v131 = v96;
  sub_227669760();
  v97 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
  v98 = sub_2276624A0();
  (*(*(v98 - 8) + 56))(v68 + v97, 1, 1, v98);
  v99 = (v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
  *v99 = 0;
  v99[1] = 0;
  v130 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag;
  v100 = v126;
  (v126)(v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag, v147, v145);
  v101 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore;
  sub_226FB68A4(v169, v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore);
  v102 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider;
  sub_226E91B50(v158, v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider);
  v103 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder;
  sub_226E91B50(v166, v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder);
  v100();
  sub_226E91B50(v167, v148);
  v104 = sub_2276636C0();
  v105 = v128;
  v106 = sub_227090024(v104);
  if (v105)
  {
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    (*(*(v120 - 8) + 8))(v68 + v131, v120);
    __swift_destroy_boxed_opaque_existential_0((v68 + v103));
    __swift_destroy_boxed_opaque_existential_0((v68 + v102));
    (*(v142 + 8))(v68 + v130, v145);
    __swift_destroy_boxed_opaque_existential_0((v68 + v101));
    sub_226FB1188(v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL);
    v121 = *(v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication + 8);

    v122 = *(*v68 + 48);
    v123 = *(*v68 + 52);
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v107 = v106;

    sub_226F3E6A8(v107);

    v108 = v134;
    sub_22766B840();
    v109 = v139;
    sub_22766B830();
    v110 = v137;
    v111 = *(v137 + 8);
    v112 = v143;
    v111(v108, v143);
    (*(v110 + 16))(v136, v109, v112);
    v113 = v138;
    sub_22766B860();
    (*(v140 + 32))(v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_metricsPipeline, v113, v141);
    v114 = *__swift_project_boxed_opaque_existential_0(v155, v156);
    v115 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];

    swift_unknownObjectRelease();
    v111(v109, v112);
    __swift_destroy_boxed_opaque_existential_0(v169);
    v116 = *(v142 + 8);
    v117 = v145;
    v116(v147, v145);
    v116(v135, v117);
    __swift_destroy_boxed_opaque_existential_0(v166);
    __swift_destroy_boxed_opaque_existential_0(v167);
    __swift_destroy_boxed_opaque_existential_0(v158);
    *(v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_amsEngagement) = v115;
    sub_226E92AB8(v174, v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore);
    *(v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_platform) = v133;
    v118 = v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recordingContextBuilder;
    sub_226E92AB8(&v152, v68 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recordingContextBuilder);
    sub_226E92AB8(&v149, v118 + 40);
    __swift_destroy_boxed_opaque_existential_0(v155);
    __swift_destroy_boxed_opaque_existential_0(v159);
    __swift_destroy_boxed_opaque_existential_0(v162);
    __swift_destroy_boxed_opaque_existential_0(v165);
    __swift_destroy_boxed_opaque_existential_0(v168);
    __swift_destroy_boxed_opaque_existential_0(v170);
    __swift_destroy_boxed_opaque_existential_0(v172);
    __swift_destroy_boxed_opaque_existential_0(v175);
    __swift_destroy_boxed_opaque_existential_0(v177);
    return v68;
  }

  return result;
}

uint64_t sub_22736EBEC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  sub_22736EE30((v0 + 35));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices20MetricRecorderBrokerC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22736EC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22736ECE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_22736ED3C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_22736ED78()
{
  result = qword_281399988[0];
  if (!qword_281399988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281399988);
  }

  return result;
}

unint64_t sub_22736EDCC()
{
  result = qword_2813991D0;
  if (!qword_2813991D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCEF8, &qword_2276821B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991D0);
  }

  return result;
}

uint64_t sub_22736EEA0(uint64_t a1)
{
  v43 = sub_227662750();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_227666330();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v35[1] = v1;
    v47 = MEMORY[0x277D84F90];
    sub_226F1F888(0, v9, 0);
    v46 = v47;
    v11 = a1 + 56;
    v12 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v39 = v6 + 32;
    v40 = (v3 + 8);
    v36 = a1 + 64;
    v37 = v9;
    v38 = a1 + 56;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      v17 = v6;
      v45 = *(a1 + 36);
      v18 = (*(a1 + 48) + 16 * v13);
      v19 = a1;
      v21 = *v18;
      v20 = v18[1];
      swift_bridgeObjectRetain_n();
      v22 = v42;
      sub_227662660();
      sub_2276625D0();
      (*v40)(v22, v43);
      v23 = v44;
      sub_227666300();

      v24 = v46;
      v47 = v46;
      v26 = *(v46 + 16);
      v25 = *(v46 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1F888(v25 > 1, v26 + 1, 1);
        v23 = v44;
        v24 = v47;
      }

      *(v24 + 16) = v26 + 1;
      v6 = v17;
      v27 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v46 = v24;
      result = (*(v17 + 32))(v24 + v27 + *(v17 + 72) * v26, v23, v41);
      v15 = 1 << *(v19 + 32);
      if (v13 >= v15)
      {
        goto LABEL_24;
      }

      v11 = v38;
      v28 = *(v38 + 8 * v16);
      if ((v28 & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v19;
      if (v45 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v29 = v28 & (-2 << (v13 & 0x3F));
      if (v29)
      {
        v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v16 << 6;
        v31 = v16 + 1;
        v32 = (v36 + 8 * v16);
        while (v31 < (v15 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_226EB526C(v13, v45, 0);
            v15 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v13, v45, 0);
LABEL_19:
        a1 = v19;
      }

      ++v14;
      v13 = v15;
      if (v14 == v37)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_22736F27C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32[1] = v3;
    v45 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1EF90(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_22736F58C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v90 = a5;
  v87 = a2;
  v85 = sub_227662750();
  v88 = *(v85 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  v9 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v81 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v72 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - v29;
  v31 = a4;
  v32 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v33 = a1;
  v34 = sub_227664230();
  v35 = *v32;
  v36 = v89;
  sub_2270765A0(v34, v37, v90, v20);
  if (v36)
  {
    goto LABEL_7;
  }

  v78 = v31;
  v79 = v30;
  v74 = v25;
  v38 = v85;
  v76 = v28;
  v77 = v33;
  v89 = 0;

  v39 = v84;
  sub_226E93170(v20, v84, &unk_27D7BD3F0, &unk_2276823F0);
  v40 = sub_227663480();
  v41 = *(v40 - 8);
  v75 = *(v41 + 48);
  v42 = v75(v39, 1, v40);
  v73 = v41;
  if (v42 == 1)
  {
    sub_226E97D1C(v20, &unk_27D7BD3F0, &unk_2276823F0);
    sub_226E97D1C(v39, &unk_27D7BD3F0, &unk_2276823F0);
    v43 = 1;
    v44 = v79;
  }

  else
  {
    v44 = v79;
    sub_227663400();
    sub_226E97D1C(v20, &unk_27D7BD3F0, &unk_2276823F0);
    (*(v41 + 8))(v39, v40);
    v43 = 0;
  }

  v45 = v38;
  v46 = *(v88 + 56);
  v46(v44, v43, 1, v38);
  v47 = __swift_project_boxed_opaque_existential_0(v78, v78[3]);
  v48 = sub_227664230();
  v49 = *v47;
  v25 = v86;
  v50 = v89;
  sub_2270765A0(v48, v51, v90, v86);
  if (!v50)
  {
    v89 = 0;

    v53 = v81;
    sub_226E93170(v25, v81, &unk_27D7BD3F0, &unk_2276823F0);
    if (v75(v53, 1, v40) == 1)
    {
      sub_226E97D1C(v25, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E97D1C(v53, &unk_27D7BD3F0, &unk_2276823F0);
      v54 = 1;
      v55 = v76;
    }

    else
    {
      v55 = v76;
      sub_227663400();
      sub_226E97D1C(v25, &unk_27D7BD3F0, &unk_2276823F0);
      (*(v73 + 8))(v53, v40);
      v54 = 0;
    }

    v56 = v79;
    v57 = v88;
    v58 = v82;
    v46(v55, v54, 1, v45);
    v59 = *(v58 + 48);
    v60 = v83;
    sub_226E93170(v56, v83, &qword_27D7B9690, qword_227670B50);
    sub_226E93170(v55, v60 + v59, &qword_27D7B9690, qword_227670B50);
    v61 = *(v57 + 48);
    if (v61(v60, 1, v45) == 1)
    {
      if (v61(v60 + v59, 1, v45) == 1)
      {
        sub_226E97D1C(v60, &qword_27D7B9690, qword_227670B50);
        goto LABEL_20;
      }
    }

    else
    {
      v62 = v74;
      sub_226E93170(v60, v74, &qword_27D7B9690, qword_227670B50);
      if (v61(v60 + v59, 1, v45) != 1)
      {
        v63 = v60 + v59;
        v64 = v80;
        (*(v57 + 32))(v80, v63, v45);
        sub_227390744(&qword_28139BDB8, MEMORY[0x277CC9578]);
        v65 = sub_22766BFB0();
        v66 = *(v57 + 8);
        v66(v64, v45);
        v66(v62, v45);
        sub_226E97D1C(v60, &qword_27D7B9690, qword_227670B50);
        if (v65)
        {
LABEL_20:
          v67 = sub_2276642B0();
          if (v67 == sub_2276642B0())
          {
            v68 = sub_227664230();
            v70 = v69;
            if (v68 == sub_227664230() && v70 == v71)
            {

              LOBYTE(v25) = 0;
            }

            else
            {
              LOBYTE(v25) = sub_22766D190();
            }
          }

          else
          {
            v25 = sub_2276642B0();
            LOBYTE(v25) = sub_2276642B0() < v25;
          }

          goto LABEL_26;
        }

LABEL_18:
        LOBYTE(v25) = sub_2273707B4(v56, v55);
LABEL_26:
        sub_226E97D1C(v55, &qword_27D7B9690, qword_227670B50);
        sub_226E97D1C(v56, &qword_27D7B9690, qword_227670B50);
        return v25 & 1;
      }

      (*(v57 + 8))(v62, v45);
    }

    sub_226E97D1C(v60, &qword_27D7BCF28, &qword_2276823E8);
    goto LABEL_18;
  }

  sub_226E97D1C(v44, &qword_27D7B9690, qword_227670B50);
LABEL_7:

  return v25 & 1;
}

unint64_t sub_22736FDBC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v106 = a5;
  v101 = a2;
  v8 = sub_227662750();
  v103 = *(v8 - 8);
  v104 = v8;
  v9 = v103[8];
  MEMORY[0x28223BE20](v8);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  v11 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v94 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v93 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v97 = &v84 - v28;
  MEMORY[0x28223BE20](v27);
  v105 = &v84 - v29;
  swift_beginAccess();
  v30 = *(a3 + 16);
  v31 = *(a3 + 24);
  v32 = *(a3 + 32);
  v33 = *(a3 + 40);
  v34 = a4[3];
  v100 = a4;
  v35 = __swift_project_boxed_opaque_existential_0(a4, v34);

  v98 = a1;
  v36 = sub_227666A50();
  v37 = *v35;
  v38 = v107;
  sub_2270765A0(v36, v39, v106, v22);
  v107 = v38;
  if (!v38)
  {
    v88 = v32;
    v89 = v31;
    v90 = v30;
    v91 = a3;

    v40 = v99;
    sub_226E93170(v22, v99, &unk_27D7BD3F0, &unk_2276823F0);
    v41 = sub_227663480();
    v42 = *(v41 - 8);
    v43 = *(v42 + 48);
    v86 = v42 + 48;
    v85 = v43;
    v44 = v43(v40, 1, v41);
    v87 = v41;
    v84 = v42;
    if (v44 == 1)
    {

      sub_226E97D1C(v22, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E97D1C(v40, &unk_27D7BD3F0, &unk_2276823F0);
      v45 = 1;
      v46 = v105;
    }

    else
    {
      v46 = v105;
      sub_227663400();

      sub_226E97D1C(v22, &unk_27D7BD3F0, &unk_2276823F0);
      (*(v42 + 8))(v40, v41);
      v45 = 0;
    }

    v47 = v100;
    v48 = v91;
    v49 = v103 + 7;
    v100 = v103[7];
    (v100)(v46, v45, 1, v104);
    swift_beginAccess();
    a3 = v48[2];
    v50 = v48[3];
    v52 = v48[4];
    v51 = v48[5];
    v53 = __swift_project_boxed_opaque_existential_0(v47, v47[3]);

    v54 = sub_227666A50();
    v55 = *v53;
    v56 = v102;
    v57 = v107;
    sub_2270765A0(v54, v58, v106, v102);
    v107 = v57;
    if (v57)
    {

      sub_226E97D1C(v105, &qword_27D7B9690, qword_227670B50);
      return a3 & 1;
    }

    v106 = v49;
    v60 = v100;

    v61 = v94;
    sub_226E93170(v56, v94, &unk_27D7BD3F0, &unk_2276823F0);
    v62 = v87;
    if (v85(v61, 1, v87) == 1)
    {

      sub_226E97D1C(v56, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E97D1C(v61, &unk_27D7BD3F0, &unk_2276823F0);
      v63 = 1;
      v64 = v105;
      v65 = v97;
    }

    else
    {
      v66 = v97;
      sub_227663400();

      sub_226E97D1C(v102, &unk_27D7BD3F0, &unk_2276823F0);
      v67 = v62;
      v65 = v66;
      (*(v84 + 8))(v61, v67);
      v63 = 0;
      v64 = v105;
    }

    v68 = v95;
    v69 = v104;
    v60(v65, v63, 1, v104);
    v70 = *(v68 + 48);
    v71 = v96;
    sub_226E93170(v64, v96, &qword_27D7B9690, qword_227670B50);
    sub_226E93170(v65, v71 + v70, &qword_27D7B9690, qword_227670B50);
    v72 = v103;
    v73 = v103[6];
    if (v73(v71, 1, v69) == 1)
    {
      if (v73(v71 + v70, 1, v69) == 1)
      {
        sub_226E97D1C(v71, &qword_27D7B9690, qword_227670B50);
        goto LABEL_20;
      }
    }

    else
    {
      v74 = v93;
      sub_226E93170(v71, v93, &qword_27D7B9690, qword_227670B50);
      if (v73(v71 + v70, 1, v69) != 1)
      {
        v75 = v71 + v70;
        v76 = v92;
        (v72[4])(v92, v75, v69);
        sub_227390744(&qword_28139BDB8, MEMORY[0x277CC9578]);
        v77 = sub_22766BFB0();
        v78 = v72[1];
        v78(v76, v69);
        v78(v74, v69);
        sub_226E97D1C(v71, &qword_27D7B9690, qword_227670B50);
        v64 = v105;
        if (v77)
        {
LABEL_20:
          v79 = sub_227666B30();
          if (v79 == sub_227666B30())
          {
            v80 = sub_227666A50();
            v82 = v81;
            if (v80 == sub_227666A50() && v82 == v83)
            {

              LOBYTE(a3) = 0;
            }

            else
            {
              LOBYTE(a3) = sub_22766D190();
            }
          }

          else
          {
            a3 = sub_227666B30();
            LOBYTE(a3) = sub_227666B30() < a3;
          }

          goto LABEL_26;
        }

LABEL_18:
        LOBYTE(a3) = sub_2273707B4(v64, v65);
LABEL_26:
        sub_226E97D1C(v65, &qword_27D7B9690, qword_227670B50);
        sub_226E97D1C(v64, &qword_27D7B9690, qword_227670B50);
        return a3 & 1;
      }

      (v72[1])(v74, v69);
      v64 = v105;
    }

    sub_226E97D1C(v71, &qword_27D7BCF28, &qword_2276823E8);
    goto LABEL_18;
  }

  return a3 & 1;
}

uint64_t sub_2273707B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_226E93170(a2, v10, &qword_27D7B9690, qword_227670B50);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_226E97D1C(v10, &qword_27D7B9690, qword_227670B50);
    v20 = 1;
  }

  else
  {
    v21 = v10;
    v22 = *(v12 + 32);
    v22(v18, v21, v11);
    sub_226E93170(a1, v8, &qword_27D7B9690, qword_227670B50);
    if (v19(v8, 1, v11) == 1)
    {
      (*(v12 + 8))(v18, v11);
      sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
      v20 = 0;
    }

    else
    {
      v22(v16, v8, v11);
      sub_227390744(&qword_28139BDC0, MEMORY[0x277CC9578]);
      v20 = sub_22766BF80();
      v23 = *(v12 + 8);
      v23(v16, v11);
      v23(v18, v11);
    }
  }

  return v20 & 1;
}

uint64_t sub_227370A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v54 = a6;
  v57 = a5;
  v63 = a2;
  v8 = sub_227662750();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  v12 = *(v11 - 8);
  v59 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v54 - v14;
  v15 = sub_227662190();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v58 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v54 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v54 - v28;
  v56 = a1;
  a4(v27);
  sub_2276628D0();
  v30 = *(v16 + 8);
  v31 = v30(v19, v15);
  a4(v31);
  sub_2276628D0();
  v32 = v19;
  v34 = v61;
  v33 = v62;
  v30(v32, v15);
  v35 = v60;
  v36 = v29;
  v37 = *(v59 + 56);
  sub_226E93170(v29, v60, &qword_27D7B9690, qword_227670B50);
  sub_226E93170(v26, v35 + v37, &qword_27D7B9690, qword_227670B50);
  v38 = *(v34 + 48);
  if (v38(v35, 1, v33) == 1)
  {
    if (v38(v35 + v37, 1, v33) == 1)
    {
      v39 = sub_226E97D1C(v35, &qword_27D7B9690, qword_227670B50);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v40 = v58;
  sub_226E93170(v35, v58, &qword_27D7B9690, qword_227670B50);
  if (v38(v35 + v37, 1, v33) == 1)
  {
    (*(v34 + 8))(v40, v33);
LABEL_6:
    sub_226E97D1C(v35, &qword_27D7BCF28, &qword_2276823E8);
LABEL_7:
    v41 = sub_2273707B4(v26, v36);
    goto LABEL_15;
  }

  v42 = v55;
  (*(v34 + 32))(v55, v35 + v37, v33);
  sub_227390744(&qword_28139BDB8, MEMORY[0x277CC9578]);
  v43 = sub_22766BFB0();
  v44 = *(v34 + 8);
  v44(v42, v33);
  v44(v40, v33);
  v39 = sub_226E97D1C(v35, &qword_27D7B9690, qword_227670B50);
  if ((v43 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v45 = v57;
  v46 = (v57)(v39);
  if (v46 == v45())
  {
    v47 = v54;
    v48 = v54();
    v50 = v49;
    if (v47() == v48 && v51 == v50)
    {

      v41 = 0;
    }

    else
    {
      v41 = sub_22766D190();
    }
  }

  else
  {
    v52 = v45();
    v41 = v45() < v52;
  }

LABEL_15:
  sub_226E97D1C(v26, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v36, &qword_27D7B9690, qword_227670B50);
  return v41 & 1;
}

BOOL sub_2273710D4(uint64_t a1, uint64_t a2, double (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3();
  v9 = a3();
  if (v8 != v9)
  {
    return v8 < v9;
  }

  v10 = a4();
  if (v10 == a4())
  {
    v11 = a5();
    v13 = v12;
    if (v11 == a5() && v13 == v14)
    {

      return 0;
    }

    else
    {
      v17 = sub_22766D190();

      return v17 & 1;
    }
  }

  else
  {
    v16 = a4();
    return a4() < v16;
  }
}

uint64_t sub_22737121C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2276645D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276642C0();
  v8 = sub_2276645C0();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v7, v3);
  v24[1] = a2;
  sub_2276642C0();
  v12 = sub_2276645C0();
  v14 = v13;
  v11(v7, v3);
  v15 = v8 == v12 && v10 == v14;
  if (!v15 && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = sub_2276642B0();
  if (v16 != sub_2276642B0())
  {
    v22 = sub_2276642B0();
    v21 = sub_2276642B0() < v22;
    return v21 & 1;
  }

  v17 = sub_227664230();
  v19 = v18;
  if (v17 != sub_227664230() || v19 != v20)
  {
LABEL_11:
    v21 = sub_22766D190();

    return v21 & 1;
  }

  v21 = 0;
  return v21 & 1;
}

unint64_t sub_22737145C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v8 = a3[5];

  v10 = sub_2274E5858(a1, v7);
  v12 = v11;

  if (!v3)
  {
    swift_beginAccess();
    v13 = a3[2];
    v14 = a3[3];
    v16 = a3[4];
    v15 = a3[5];

    v17 = sub_2274E5858(a2, v14);
    v19 = v18;

    if (v12)
    {
      if (!v19)
      {

        LOBYTE(v8) = 1;
        return v8 & 1;
      }

      if ((v10 != v17 || v12 != v19) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v19)
    {
LABEL_15:

      LOBYTE(v8) = 0;
      return v8 & 1;
    }

    v21 = sub_227666B30();
    if (v21 != sub_227666B30())
    {
      v8 = sub_227666B30();
      LOBYTE(v8) = sub_227666B30() < v8;
      return v8 & 1;
    }

    v22 = sub_227666A50();
    v24 = v23;
    if (v22 == sub_227666A50() && v24 == v25)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v8) = sub_22766D190();
  }

  return v8 & 1;
}

unint64_t sub_227371710(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v8 = a3[5];

  v10 = sub_2274E5C0C(a1, v9);
  v12 = v11;

  if (!v3)
  {
    swift_beginAccess();
    v13 = a3[2];
    v14 = a3[3];
    v16 = a3[4];
    v15 = a3[5];

    v17 = sub_2274E5C0C(a2, v16);
    v19 = v18;

    if (v12)
    {
      if (!v19)
      {

        LOBYTE(v8) = 1;
        return v8 & 1;
      }

      if ((v10 != v17 || v12 != v19) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v19)
    {
LABEL_15:

      LOBYTE(v8) = 0;
      return v8 & 1;
    }

    v21 = sub_227666B30();
    if (v21 != sub_227666B30())
    {
      v8 = sub_227666B30();
      LOBYTE(v8) = sub_227666B30() < v8;
      return v8 & 1;
    }

    v22 = sub_227666A50();
    v24 = v23;
    if (v22 == sub_227666A50() && v24 == v25)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v8) = sub_22766D190();
  }

  return v8 & 1;
}

unint64_t sub_2273719C4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v8 = a3[5];

  v10 = sub_2274E5C68(a1, v6);
  v12 = v11;

  if (!v3)
  {
    swift_beginAccess();
    v13 = a3[2];
    v14 = a3[3];
    v16 = a3[4];
    v15 = a3[5];

    v17 = sub_2274E5C68(a2, v13);
    v19 = v18;

    if (v12)
    {
      if (!v19)
      {

        LOBYTE(v8) = 1;
        return v8 & 1;
      }

      if ((v10 != v17 || v12 != v19) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v19)
    {
LABEL_15:

      LOBYTE(v8) = 0;
      return v8 & 1;
    }

    v21 = sub_227666B30();
    if (v21 != sub_227666B30())
    {
      v8 = sub_227666B30();
      LOBYTE(v8) = sub_227666B30() < v8;
      return v8 & 1;
    }

    v22 = sub_227666A50();
    v24 = v23;
    if (v22 == sub_227666A50() && v24 == v25)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v8) = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227371C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v38[3] = a2;
  v9 = a4(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v38 - v16;
  v38[0] = a1;
  v18 = a5(v15);
  if (*(v18 + 16))
  {
    (*(v10 + 16))(v17, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v20 = a6(v19);
    v22 = v21;
    v23 = (*(v10 + 8))(v17, v9);
  }

  else
  {

    v20 = 0;
    v22 = 0;
  }

  v24 = a5(v23);
  if (*(v24 + 16))
  {
    (*(v10 + 16))(v14, v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v26 = a6(v25);
    v28 = v27;
    (*(v10 + 8))(v14, v9);
    if (!v22)
    {
      if (v28)
      {
LABEL_20:

        v30 = 0;
        return v30 & 1;
      }

      goto LABEL_16;
    }

    if (v28)
    {
      v29 = v20 == v26 && v22 == v28;
      if (!v29 && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_16:
      v31 = sub_2276642B0();
      if (v31 != sub_2276642B0())
      {
        v36 = sub_2276642B0();
        v30 = sub_2276642B0() < v36;
        return v30 & 1;
      }

      v32 = sub_227664230();
      v34 = v33;
      if (v32 == sub_227664230() && v34 == v35)
      {

        goto LABEL_20;
      }

LABEL_22:
      v30 = sub_22766D190();

      return v30 & 1;
    }
  }

  else
  {

    if (!v22)
    {
      goto LABEL_16;
    }
  }

  v30 = 1;
  return v30 & 1;
}

unint64_t sub_227371FAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v8 = a3[5];

  v10 = sub_2274E5CC4(a1, v8);
  v12 = v11;

  if (!v3)
  {
    swift_beginAccess();
    v13 = a3[2];
    v14 = a3[3];
    v16 = a3[4];
    v15 = a3[5];

    v17 = sub_2274E5CC4(a2, v15);
    v19 = v18;

    if (v12)
    {
      if (!v19)
      {

        LOBYTE(v8) = 1;
        return v8 & 1;
      }

      if ((v10 != v17 || v12 != v19) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v19)
    {
LABEL_15:

      LOBYTE(v8) = 0;
      return v8 & 1;
    }

    v21 = sub_227666B30();
    if (v21 != sub_227666B30())
    {
      v8 = sub_227666B30();
      LOBYTE(v8) = sub_227666B30() < v8;
      return v8 & 1;
    }

    v22 = sub_227666A50();
    v24 = v23;
    if (v22 == sub_227666A50() && v24 == v25)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v8) = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227372260(uint64_t a1)
{
  v50 = sub_2276650A0();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_227665060();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_227665060();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227372644(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_227284754(a1);
  if (!v2)
  {
    v27 = v5;
    v28 = 0;
    v14 = v13;
    v26 = *(v1 + 16);
    if (sub_2272764F8(v26))
    {
      v15 = sub_22766C2B0();
    }

    else
    {
      v15 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    v16 = v28;
    v17 = sub_227284754(a1);
    if (v16)
    {
    }

    else
    {
      v18 = v17;
      (*(v27 + 104))(v8, *MEMORY[0x277D4F000], v4);
      v30 = 1;
      v19 = v26;
      sub_227669760();
      *&v12[*(v9 + 28)] = v18;
      *&v12[*(v9 + 32)] = v19;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
      v21 = sub_227669730();
      if (v29 == 1)
      {
        sub_2272681EC(MEMORY[0x277D84F90], sub_22711E2EC, 0);
        v1 = v22;
      }

      else
      {
        v23 = MEMORY[0x22AA99A00](v21);
        v1 = sub_22725FE40(v12, MEMORY[0x277D84F90], sub_22711E2EC, 0);
        objc_autoreleasePoolPop(v23);
      }

      sub_226E97D1C(v12, &qword_27D7BC490, &qword_22767DB28);
    }
  }

  return v1;
}

uint64_t sub_227372974()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF08, &qword_227682248);
  __swift_allocate_value_buffer(v5, qword_28139B0A0);
  __swift_project_value_buffer(v5, qword_28139B0A0);
  (*(v1 + 104))(v4, *MEMORY[0x277D4EE90], v0);
  v7 = 0;
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
  sub_22738F79C(&qword_281398BA8);
  sub_22738F79C(&qword_281398BA0);
  return sub_227669760();
}

uint64_t sub_227372B10(uint64_t *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_22766A1F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276650A0();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22766B390();
  v12 = *(v54 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v54);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  sub_22766A730();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  v21 = os_log_type_enabled(v19, v20);
  v52 = v3;
  if (v21)
  {
    v22 = v4;
    v23 = v16;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_226E8E000, v19, v20, "[CatalogSystem] Received SyncablesUpdated<CatalogTipJournal>", v24, 2u);
    v25 = v24;
    v16 = v23;
    v4 = v22;
    v3 = v52;
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v54);
  v58 = v16;
  v59 = v17;
  v60 = v18;
  v26 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();

  sub_2274616DC(v16);

  sub_2274616DC(v27);

  sub_2274616DC(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB70, &qword_227682598);
  swift_arrayDestroy();
  v29 = v57;
  v30 = *(v57 + 16);
  if (v30)
  {
    v49 = v4;
    v57 = v26;
    sub_226F1EF90(0, v30, 0);
    v31 = v57;
    v32 = *(v56 + 16);
    v33 = *(v56 + 80);
    v48 = v29;
    v34 = v29 + ((v33 + 32) & ~v33);
    v53 = *(v56 + 72);
    v54 = v32;
    v56 += 16;
    v35 = (v56 - 8);
    do
    {
      v36 = v55;
      v54(v11, v34, v55);
      v37 = sub_227665050();
      v39 = v38;
      (*v35)(v11, v36);
      v57 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_226F1EF90(v40 > 1, v41 + 1, 1);
        v31 = v57;
      }

      *(v31 + 16) = v41 + 1;
      v42 = v31 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v34 += v53;
      --v30;
    }

    while (v30);

    v3 = v52;
    v4 = v49;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v45 = *(Strong + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub);
  v44 = *(Strong + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub + 8);
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_226F3E6A8(v31);

  v46 = v50;
  sub_22766A1D0();
  sub_2276699D0();
  swift_unknownObjectRelease();
  return (*(v4 + 8))(v46, v3);
}

uint64_t sub_227372FBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = sub_22766C4B0();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_227389594(0, 0, v3, &unk_227682590, v12);
  }

  return result;
}

uint64_t sub_2273731BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227373214();
  }

  return result;
}

uint64_t sub_227373214()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - v3;
  v5 = sub_22766A8A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_22766A730();
  sub_22766B370();
  v28 = *(v11 + 8);
  v28(v17, v10);
  v18 = *(v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_platform);
  v19 = sub_2276693C0();
  (*(v6 + 104))(v9, *MEMORY[0x277D4F980], v5);
  LOBYTE(v17) = sub_226EC9A38(v9, v19);

  (*(v6 + 8))(v9, v5);
  if (v17)
  {
    sub_227385880(&unk_283A94430, 1, v4);
    v20 = v30;
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(sub_226E937DC, v22);

    return (*(v29 + 8))(v4, v20);
  }

  else
  {
    sub_22766A730();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v25, "Current platform does not support background workout metadata refreshing", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    return (v28)(v15, v10);
  }
}

uint64_t sub_2273735E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = sub_22766C4B0();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_227389594(0, 0, v3, &unk_227682580, v12);
  }

  return result;
}

uint64_t sub_2273737E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v9, v5);
    sub_227375CDC(v4);
    v11 = sub_227669290();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    v11(sub_226E9F7B0, v12);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_227373A28(uint64_t a1)
{
  v2 = sub_227669910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17[1] = a1;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_226E8E000, v12, v13, "[CatalogSystem] Received CatalogDeleted", v14, 2u);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E030], v2);
  sub_227669660();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227373C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_227669910();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_22766B390();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227373D80, 0, 0);
}

uint64_t sub_227373D80()
{
  v1 = *(v0 + 112);
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSystem] Received CatalogUpdated", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 48);

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v10 = *(v0 + 40);
    v11 = sub_2276698C0();
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_227373FE4;

    return sub_227374218(v11);
  }

  else
  {
    v14 = *(v0 + 112);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);
    v20 = *(v0 + 40);
    swift_getObjectType();
    (*(v16 + 104))(v15, *MEMORY[0x277D4E038], v17);
    *(v0 + 136) = sub_2276698C0();
    sub_227669650();
    (*(v16 + 8))(v15, v17);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_227373FE4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2273740FC, 0, 0);
}

uint64_t sub_2273740FC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  swift_getObjectType();
  (*(v3 + 104))(v2, *MEMORY[0x277D4E038], v4);
  *(v0 + 136) = sub_2276698C0();
  sub_227669650();
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_227374218(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF50, &unk_227682568) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = sub_22766B390();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227374394, 0, 0);
}

uint64_t sub_227374394()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 120);
  sub_22766A730();
  sub_22766B370();
  v5 = *(v3 + 8);
  v5(v1, v2);
  sub_227666340();
  v6 = sub_227666360();
  v8 = v7;
  if (v6 == sub_227666360() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_22766D190();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v12 = *(v0 + 16);
  if ((sub_227389030() & 1) == 0)
  {
LABEL_14:
    v26 = *(v0 + 72);
    sub_22766A730();
    v27 = sub_22766B380();
    v28 = sub_22766C8B0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 72);
    v31 = *(v0 + 56);
    if (v29)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v27, v28, "[CatalogSystem] skipping workout metadata refresh after catalog update", v32, 2u);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    v5(v30, v31);
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    v35 = *(v0 + 72);
    v37 = *(v0 + 40);
    v36 = *(v0 + 48);

    v38 = *(v0 + 8);

    return v38();
  }

  v13 = *(v0 + 80);
  sub_22766A730();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "[CatalogSystem] refreshing workout metadata after catalog update", v16, 2u);
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 40);
  v20 = *(v0 + 16);

  v5(v17, v18);
  sub_227385880(&unk_283A94458, 0, v19);
  v21 = swift_task_alloc();
  *(v0 + 96) = v21;
  *(v21 + 16) = "SeymourServices/CatalogSystem.swift";
  *(v21 + 24) = 35;
  *(v21 + 32) = 2;
  *(v21 + 40) = 939;
  *(v21 + 48) = v19;
  v22 = *(MEMORY[0x277D85A40] + 4);
  v23 = swift_task_alloc();
  *(v0 + 104) = v23;
  v24 = sub_227668CE0();
  *(v0 + 112) = v24;
  *v23 = v0;
  v23[1] = sub_227374744;
  v25 = *(v0 + 48);

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227391BDC, v21, v24);
}

uint64_t sub_227374744()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;

  v6 = v2[12];
  if (v0)
  {

    v7 = sub_227374994;
  }

  else
  {
    v9 = v3[4];
    v8 = v3[5];
    v10 = v3[3];

    (*(v9 + 8))(v8, v10);
    v7 = sub_2273748B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2273748B0()
{
  v1 = v0[6];
  (*(*(v0[14] - 8) + 56))(v1, 0, 1);
  sub_226E97D1C(v1, &qword_27D7BCF50, &unk_227682568);
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227374994()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[6];
  (*(*(v0[14] - 8) + 56))(v1, 1, 1);
  sub_226E97D1C(v1, &qword_27D7BCF50, &unk_227682568);
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227374A90()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v4, *MEMORY[0x277D4E098], v0);
  sub_227669660();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_227374B9C()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v4, *MEMORY[0x277D4E100], v0);
  v6[1] = sub_22766A1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_226FA71B0();
  sub_227669650();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_227374D0C()
{
  v0 = sub_227664F60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227669980();
    sub_227374E18(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_227374E18(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_227664F60();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v5;
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = v9;
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v59 - v13;
  v14 = sub_22766A8A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  sub_22766A730();
  sub_22766B370();
  v27 = *(v20 + 8);
  v27(v26, v19);
  v28 = v2;
  v29 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_platform);
  v30 = sub_2276693C0();
  (*(v15 + 104))(v18, *MEMORY[0x277D4F980], v14);
  LOBYTE(v2) = sub_226EC9A38(v18, v30);

  (*(v15 + 8))(v18, v14);
  if (v2)
  {
    v31 = v28;
    v33 = *(v28 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v32 = *(v28 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v28 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v33);
    v35 = v61;
    v34 = v62;
    v36 = v63;
    (*(v62 + 16))(v61, v60, v63);
    v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v34 + 32))(v39 + v37, v35, v36);
    *(v39 + v38) = v31;
    v40 = sub_2276690A0();

    v41 = v66;
    sub_226ECF5D8(sub_227391A20, v39, v33, v40, v32, v66);

    v42 = *__swift_project_boxed_opaque_existential_0((v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
    v73[3] = type metadata accessor for CatalogScriptClient();
    v73[4] = &off_283AC6368;
    v73[0] = v42;
    sub_226E91B50(v73, v72);
    v43 = swift_allocObject();
    sub_226E92AB8(v72, v43 + 16);

    __swift_destroy_boxed_opaque_existential_0(v73);
    v45 = v68;
    v44 = v69;
    v46 = v65;
    (*(v68 + 16))(v65, v41, v69);
    v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v45 + 32))(v49 + v47, v46, v44);
    v50 = (v49 + v48);
    *v50 = sub_227391D74;
    v50[1] = v43;
    sub_227668CE0();
    v51 = v67;
    sub_227669270();
    (*(v45 + 8))(v41, v44);
    v52 = v71;
    v53 = sub_227669290();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    v53(sub_226E93814, v54);

    return (*(v70 + 8))(v51, v52);
  }

  else
  {
    sub_22766A730();
    v56 = sub_22766B380();
    v57 = sub_22766C8B0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_226E8E000, v56, v57, "Current platform does not support background workout metadata refreshing", v58, 2u);
      MEMORY[0x22AA9A450](v58, -1, -1);
    }

    return (v27)(v24, v19);
  }
}

uint64_t *sub_22737553C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = OBJC_IVAR____TtC15SeymourServices13CatalogSystem_calendar;
  v2 = sub_227662940();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver));
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_serviceSubscriptionProviderBroker));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_storefrontObserver));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator));
  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_subscriptionToken);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator));
  return v0;
}

uint64_t sub_22737568C()
{
  sub_22737553C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogSystem()
{
  result = qword_2813A4548;
  if (!qword_2813A4548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227375738()
{
  result = sub_227662940();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_227375878@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v16 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v15);

  sub_226ECF5D8(sub_227391928, v2, v15, MEMORY[0x277D84F78] + 8, v16, v9);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_227391944;
  *(v17 + 24) = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226EB4A28;
  *(v18 + 24) = v17;
  (*(v4 + 16))(v7, v9, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, v7, v3);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_226F32FEC;
  v21[1] = v18;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

char *sub_227375BC0(void *a1, uint64_t a2)
{
  result = sub_226F88F0C(a1);
  if (!v2)
  {
    v6 = result;
    sub_226F90470(a1);
    v7 = *__swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator + 24));
    v8 = sub_227372260(v6);

    sub_2272D7EE4(1, v8, a1);
  }

  return result;
}

uint64_t sub_227375CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v16 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v15);

  sub_226ECF5D8(sub_2273918F4, v2, v15, MEMORY[0x277D84F78] + 8, v16, v9);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_22739190C;
  *(v17 + 24) = v2;
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v18, v7, v3);
  v21 = (v20 + v19);
  *v21 = sub_226F32FEC;
  v21[1] = v17;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_227375FFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2276698B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub + 8);
  v9 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub);
  swift_getObjectType();
  sub_2276698A0();
  sub_2276699D0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_227376128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v43 = a1;
  v50 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v46);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v11 = *(v49 - 8);
  v48 = *(v11 + 64);
  v12 = MEMORY[0x28223BE20](v49);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v41 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v17 + 8))(v20, v16);
  v21 = __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v42 = *__swift_project_boxed_opaque_existential_0((*v21 + 16), *(*v21 + 40));
  v22 = *(v42 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = v43;
  *(v23 + 24) = a2;

  v41 = v10;
  sub_227669280();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = 5;
  v25 = v44;
  v26 = v46;
  (*(v6 + 16))(v44, v10, v46);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v27, v25, v26);
  v30 = (v29 + v28);
  *v30 = sub_227391510;
  v30[1] = v24;
  sub_227669080();
  v31 = v22;
  sub_227669270();
  (*(v6 + 8))(v41, v26);
  v32 = v47;
  sub_2272AAF14(v14, v47);
  v33 = *(v11 + 8);
  v34 = v49;
  v33(v14, v49);
  (*(v11 + 16))(v14, v32, v34);
  v35 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v36 = (v48 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v11 + 32))(v37 + v35, v14, v34);
  v38 = (v37 + v36);
  v39 = v45;
  *v38 = sub_227391588;
  v38[1] = v39;
  sub_227668930();

  sub_227669270();
  return (v33)(v32, v34);
}

uint64_t sub_227376638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v32 = a3;
  v30 = sub_227669080();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v31);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_227669060();
  v12 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v13 = sub_22745016C(v11);
  v14 = sub_2273D1B98(v13);

  v15 = *v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v17 + 24) = 50;
  *(v17 + 32) = 2;
  *(v17 + 40) = 32;
  *(v17 + 48) = &unk_227682540;
  *(v17 + 56) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v18 = v30;
  (*(v4 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v30);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  (*(v4 + 32))(v20 + v19, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = v29;
  v22 = v31;
  (*(v6 + 16))(v29, v10, v31);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2273916B0;
  v25[1] = v20;
  sub_227668930();
  sub_227669270();
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_2273769D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_227667790();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_227668930();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  sub_22732DBF8(*a1, a2);
  sub_227669070();
  sub_227669050();
  sub_227668920();
  (*(v10 + 16))(v13, v15, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v9);
  sub_227669280();
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_227376C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[0] = a2;
  v22[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  sub_227376ED0(a1, v22[0], v12);
  (*(v7 + 16))(v10, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v10, v6);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_2273910F4;
  v20[1] = v4;
  sub_2276660B0();

  sub_227669270();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_227376ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = __swift_project_boxed_opaque_existential_0((v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v20 = *(*__swift_project_boxed_opaque_existential_0((*v19 + 16), *(*v19 + 40)) + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = v10;
  sub_227669280();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = 9;
  v24 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v24, v22, v5);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v25, v24, v5);
  v28 = (v27 + v26);
  *v28 = sub_22739125C;
  v28[1] = v23;
  sub_2276645D0();
  v29 = v20;
  v30 = v34;
  sub_227669270();
  (*(v6 + 8))(v22, v5);
  sub_2272AB448(v30, v37);
  return (*(v35 + 8))(v30, v36);
}

uint64_t sub_2273772C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = sub_2276645D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v8 = *(v24[0] - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v24[0]);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v15 = *__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272B1550(1, a1, v13);
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_227391124;
  *(v18 + 24) = v17;
  v19 = v24[0];
  (*(v8 + 16))(v11, v13, v24[0]);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v11, v19);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_22739122C;
  v22[1] = v18;
  sub_2276660B0();
  sub_227669270();
  return (*(v8 + 8))(v13, v19);
}

uint64_t sub_2273775C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[0] = a2;
  v22[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  sub_227377870(a1, v22[0], v12);
  (*(v7 + 16))(v10, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v10, v6);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227391014;
  v20[1] = v4;
  sub_227665CF0();

  sub_227669270();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_227377870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = __swift_project_boxed_opaque_existential_0((v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v20 = *(*__swift_project_boxed_opaque_existential_0((*v19 + 16), *(*v19 + 40)) + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = v10;
  sub_227669280();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = 8;
  v24 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v24, v22, v5);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v25, v24, v5);
  v28 = (v27 + v26);
  *v28 = sub_2273910B4;
  v28[1] = v23;
  sub_227664220();
  v29 = v20;
  v30 = v34;
  sub_227669270();
  (*(v6 + 8))(v22, v5);
  sub_2272AB97C(v30, v37);
  return (*(v35 + 8))(v30, v36);
}

uint64_t sub_227377C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = sub_227664220();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v8 = *(v24[0] - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v24[0]);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v15 = *__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272B190C(2, a1, v13);
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_227391044;
  *(v18 + 24) = v17;
  v19 = v24[0];
  (*(v8 + 16))(v11, v13, v24[0]);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v11, v19);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_227391084;
  v22[1] = v18;
  sub_227665CF0();
  sub_227669270();
  return (*(v8 + 8))(v13, v19);
}

uint64_t sub_227377F64(uint64_t a1, uint64_t a2)
{
  v3 = sub_227664220();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227664EF0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2276684B0();
  sub_227668490();
  (*(v4 + 16))(v7, a2, v3);
  sub_2276684A0();
  sub_2276684C0();
  return sub_227665CE0();
}

uint64_t sub_2273780C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = sub_227667B60();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v33);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v12 + 8))(v15, v11);
  v16 = sub_227667B40();
  v17 = v31;
  sub_227378474(v16, v18, v10);

  v19 = v32;
  (*(v3 + 16))(v5, a1, v32);
  v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  (*(v3 + 32))(v21 + v20, v5, v19);
  v22 = v30;
  v23 = v33;
  (*(v6 + 16))(v30, v10, v33);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v24, v22, v23);
  v27 = (v26 + v25);
  *v27 = sub_227390E20;
  v27[1] = v21;
  sub_227665D90();

  sub_227669270();
  return (*(v6 + 8))(v10, v23);
}

uint64_t sub_227378474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = __swift_project_boxed_opaque_existential_0((v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v20 = *(*__swift_project_boxed_opaque_existential_0((*v19 + 16), *(*v19 + 40)) + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = v10;
  sub_227669280();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = 6;
  v24 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v24, v22, v5);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v25, v24, v5);
  v28 = (v27 + v26);
  *v28 = sub_227390FD4;
  v28[1] = v23;
  sub_2276642E0();
  v29 = v20;
  v30 = v34;
  sub_227669270();
  (*(v6 + 8))(v22, v5);
  sub_2272ABEB0(v30, v37);
  return (*(v35 + 8))(v30, v36);
}

uint64_t sub_227378868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[0] = a2;
  v22[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  sub_227378B18(a1, v22[0], v12);
  (*(v7 + 16))(v10, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v10, v6);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_22739078C;
  v20[1] = v4;
  sub_227664160();

  sub_227669270();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_227378B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = __swift_project_boxed_opaque_existential_0((v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v33 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v20 = *(*__swift_project_boxed_opaque_existential_0((*v19 + 16), *(*v19 + 40)) + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = v10;
  sub_227669280();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = 12;
  v24 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v24, v22, v5);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v25, v24, v5);
  v28 = (v27 + v26);
  *v28 = sub_227390854;
  v28[1] = v23;
  sub_2276692D0();
  v29 = v20;
  v30 = v34;
  sub_227669270();
  (*(v6 + 8))(v22, v5);
  sub_2272AD8E4(v30, v37);
  return (*(v35 + 8))(v30, v36);
}

uint64_t sub_227378F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = sub_2276692D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v8 = *(v24[0] - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v24[0]);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v15 = *__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272B1CC8(4, a1, v13);
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2273907BC;
  *(v18 + 24) = v17;
  v19 = v24[0];
  (*(v8 + 16))(v11, v13, v24[0]);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v11, v19);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_227390824;
  v22[1] = v18;
  sub_227664160();
  sub_227669270();
  return (*(v8 + 8))(v13, v19);
}

uint64_t sub_22737920C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(char *, char *))
{
  v19 = a5;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = sub_227664EF0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v14);
  (*(v8 + 16))(v11, a2, v7);
  return v19(v16, v11);
}

uint64_t sub_227379364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a1;
  v99 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v107 = *(v4 - 8);
  v108 = v4;
  v94 = *(v107 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = &v79 - v7;
  v109 = sub_227662750();
  v98 = *(v109 - 8);
  v97 = *(v98 + 64);
  v8 = MEMORY[0x28223BE20](v109);
  v96 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v79 - v10;
  v87 = sub_22766B360();
  v86 = *(v87 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v104 = *(v17 - 8);
  v105 = v17;
  v18 = v104[8];
  v19 = MEMORY[0x28223BE20](v17);
  v103 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v88 = &v79 - v21;
  MEMORY[0x28223BE20](v20);
  v100 = &v79 - v22;
  v23 = sub_2276654E0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  v95 = sub_227669890();
  v93 = *(v95 - 8);
  v30 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v101 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A810();
  v32 = *(v24 + 16);
  v91 = v29;
  v32(v29, v102, v23);
  v33 = *__swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v89 = v23;
  v32(v27, v29, v23);
  v90 = v24;
  v34 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  (*(v24 + 32))(v35 + v34, v27, v23);
  v36 = swift_allocObject();
  *(v36 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v36 + 24) = 50;
  *(v36 + 32) = 2;
  *(v36 + 40) = 28;
  *(v36 + 48) = &unk_227682530;
  *(v36 + 56) = v35;

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  v37 = v100;
  sub_227669270();
  v38 = sub_2276697A0();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v86 + 8))(v13, v87);
  sub_227669880();
  v42 = sub_22766A920();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_22766A8F0();
  v87 = v45;
  v111 = v41;
  v46 = sub_22766C060();
  v86 = v46;
  v48 = v47;
  sub_227662720();
  v49 = swift_allocObject();
  v84 = v41;
  *(v49 + 16) = v41;
  *(v49 + 24) = v45;
  *(v49 + 32) = v46;
  *(v49 + 40) = v48;
  v85 = v48;
  *(v49 + 48) = "CatalogSystem::fetchRemoteCatalogLockups";
  *(v49 + 56) = 40;
  *(v49 + 64) = 2;

  v50 = v106;
  sub_227669270();
  v51 = v104;
  v83 = v104[2];
  v52 = v103;
  v53 = v37;
  v54 = v105;
  v83(v103, v53, v105);
  v82 = *(v51 + 80);
  v79 = ((v82 + 16) & ~v82) + v18;
  v55 = (v82 + 16) & ~v82;
  v81 = v55;
  v56 = swift_allocObject();
  v80 = v51[4];
  v80(v56 + v55, v52, v54);
  v57 = v107;
  v58 = v108;
  v59 = v92;
  (*(v107 + 16))(v92, v50, v108);
  v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v61 = (v94 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v57 + 32))(v62 + v60, v59, v58);
  v63 = (v62 + v61);
  *v63 = sub_227391388;
  v63[1] = v56;
  v64 = v88;
  sub_227669270();
  v65 = v98;
  v66 = v96;
  v67 = v109;
  (*(v98 + 16))(v96, v110, v109);
  v68 = (*(v65 + 80) + 49) & ~*(v65 + 80);
  v69 = (v97 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v71 = v85;
  *(v70 + 16) = v86;
  *(v70 + 24) = v71;
  *(v70 + 32) = "CatalogSystem::fetchRemoteCatalogLockups";
  *(v70 + 40) = 40;
  *(v70 + 48) = 2;
  (*(v65 + 32))(v70 + v68, v66, v67);
  *(v70 + v69) = v87;
  *(v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;
  v72 = v103;
  v73 = v105;
  v83(v103, v64, v105);
  v74 = (v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  v80(v75 + v81, v72, v73);
  v76 = (v75 + v74);
  *v76 = sub_227391430;
  v76[1] = v70;

  sub_227669270();
  v77 = v104[1];
  v77(v64, v73);
  (*(v107 + 8))(v106, v108);
  (*(v65 + 8))(v110, v109);
  v77(v100, v73);
  (*(v90 + 8))(v91, v89);
  (*(v93 + 8))(v101, v95);
}

uint64_t sub_227379E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_2272858E0(11, 0, 0, v7);
  sub_2272A1748(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390E18;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_22737A118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v14 = sub_22745016C(v12);
  v15 = sub_2273D1B98(v14);

  v16 = *v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824F0;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227391D98;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v9, v5);
  v24 = (v23 + v22);
  *v24 = sub_227391D54;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737A418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v18 = *__swift_project_boxed_opaque_existential_0((*v17 + 16), *(*v17 + 40));
  sub_227322234(15, a1, v11);
  (*(v6 + 16))(v9, v11, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v19, v9, v5);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_227390D00;
  v21[1] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A0, &qword_2276824E0);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737A6F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v14 = sub_2273D1B98(v12);
  v15 = *v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v17 + 24) = 50;
  *(v17 + 32) = 2;
  *(v17 + 40) = 32;
  *(v17 + 48) = &unk_2276824E8;
  *(v17 + 56) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_227390D30;
  *(v19 + 24) = v18;
  (*(v6 + 16))(v9, v11, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v20, v9, v5);
  v23 = (v22 + v21);
  *v23 = sub_227390D68;
  v23[1] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A0, &qword_2276824E0);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737A9E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_2272858E0(16, 0, 0, v7);
  sub_2272A1748(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390CC0;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_22737ACE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v14 = sub_22745016C(v12);
  v15 = sub_2273D1B98(v14);

  v16 = *v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824D0;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227390CC8;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v9, v5);
  v24 = (v23 + v22);
  *v24 = sub_227391D54;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737AFE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD870, &qword_22767E530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_22728DF58(17, 0, 0, v7);
  sub_2272AD3A0(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390BE8;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A8, &qword_2276824C0);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_22737B2E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = sub_226F19774(v12);
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v15 = sub_2273D1B98(v13);

  v16 = *v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824C8;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227390C18;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v9, v5);
  v24 = (v23 + v22);
  *v24 = sub_227390C50;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A8, &qword_2276824C0);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737B5E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_2272858E0(18, 0, 0, v7);
  sub_2272A1748(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390BE0;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_22737B8EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v14 = sub_22745016C(v12);
  v15 = sub_2273D1B98(v14);

  v16 = *v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824B0;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227391D98;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v9, v5);
  v24 = (v23 + v22);
  *v24 = sub_227391D54;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737BBEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_2272858E0(19, 0, 0, v7);
  sub_2272A1748(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390BD8;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_22737BEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v14 = sub_22745016C(v12);
  v15 = sub_2273D1B98(v14);

  v16 = *v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824A8;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227391D98;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v9, v5);
  v24 = (v23 + v22);
  *v24 = sub_227391D54;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737C1F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_2272858E0(22, 0, 0, v7);
  sub_2272A1748(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390BA8;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_22737C4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v14 = sub_22745016C(v12);
  v15 = sub_2273D1B98(v14);

  v16 = *v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824A0;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227391D98;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v9, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v9, v5);
  v24 = (v23 + v22);
  *v24 = sub_227391D54;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737C7F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_2276642E0();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669180();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - v10;
  v25[4] = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = v16;
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  v25[5] = v25 - v17;
  v25[9] = sub_227668540();
  v25[8] = sub_227668570();
  v25[7] = sub_227668550();
  v25[6] = sub_227668580();
  v19 = sub_227662750();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v21 = sub_227665780();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = sub_227668590();
  v25[2] = v23;
  v25[3] = v22;
  v20(v16, 1, 1, v19);
  sub_227668530();
  sub_2276684E0();
  sub_227668520();
  sub_2276684F0();
  sub_227668560();
  sub_227668510();
  sub_227668500();
  sub_2276685A0();
  (*(v26 + 16))(v5, v28, v27);
  return sub_227665D80();
}

uint64_t sub_22737CB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227664C00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v46 = v8;
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  sub_22766A730();
  sub_22766B370();
  v19 = *(v12 + 8);
  v44 = v12 + 8;
  v45 = v11;
  v42 = v19;
  v19(v18, v11);
  sub_22766A730();
  v43 = *(v5 + 16);
  v43(v10, a1, v4);
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = a1;
    v23 = v22;
    v39 = swift_slowAlloc();
    v49 = v39;
    *v23 = 136315138;
    sub_227390744(&qword_28139B910, MEMORY[0x277D50DE8]);
    v24 = sub_22766D140();
    v41 = a2;
    v26 = v25;
    (*(v5 + 8))(v10, v4);
    v27 = sub_226E97AE8(v24, v26, &v49);
    a2 = v41;

    *(v23 + 4) = v27;
    _os_log_impl(&dword_226E8E000, v20, v21, "[CatalogSystem] inserting catalog changeset: %s", v23, 0xCu);
    v28 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AA9A450](v28, -1, -1);
    v29 = v23;
    a1 = v40;
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v42(v16, v45);
  v30 = v48;
  v31 = *(v48 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v32 = *(v48 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v48 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v31);
  v33 = v47;
  v43(v47, a1, v4);
  v34 = v4;
  v35 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  (*(v5 + 32))(v36 + v35, v33, v34);

  sub_226ECF5D8(sub_2273902F0, v36, v31, MEMORY[0x277D84F78] + 8, v32, a2);
}

uint64_t sub_22737CFCC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_2275690A4(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737D0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v51 = a2;
  v5 = sub_2276650A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = v7;
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v49 = *(v9 - 8);
  v50 = v9;
  v48 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v39 = v3;
  v18 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v45 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  v19 = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v18);
  v20 = *(v6 + 16);
  v42 = v19;
  v43 = v20;
  v20(v8, a1, v5);
  v21 = v6;
  v22 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  v40 = *(v21 + 32);
  v40(v23 + v22, v8, v5);

  v24 = v46;
  sub_226ECF5D8(sub_2273901F0, v23, v18, MEMORY[0x277D84F78] + 8, v45, v46);

  v43(v8, v44, v5);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 16) = v39;
  v26(v25 + v22, v8, v5);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_227390270;
  *(v27 + 24) = v25;
  v28 = v49;
  v29 = v50;
  v30 = v47;
  v31 = v24;
  (*(v49 + 16))(v47, v24, v50);
  v32 = v28;
  v33 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v34 = (v48 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v32 + 32))(v35 + v33, v30, v29);
  v36 = (v35 + v34);
  *v36 = sub_226EBFB9C;
  v36[1] = v27;

  sub_227669270();
  return (*(v32 + 8))(v31, v29);
}

uint64_t sub_22737D588(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v27 = a1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB230, &qword_227679DA0);
  v9 = sub_2276650A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v24 = xmmword_227670CD0;
  *(v13 + 16) = xmmword_227670CD0;
  v14 = *(v10 + 16);
  v26 = a3;
  v15 = a3;
  v16 = v27;
  v14(v13 + v12, v15, v9);
  v17 = sub_226F50298(v13);
  swift_setDeallocating();
  (*(v10 + 8))(v13 + v12, v9);
  swift_deallocClassInstance();
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v18 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  v19 = v28;
  sub_2275696FC(v17, v18[1], *(v18 + 16), v18[3]);

  if (!v19)
  {
    v21 = *__swift_project_boxed_opaque_existential_0((v25 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator), *(v25 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v22 = swift_allocObject();
    *(v22 + 16) = v24;
    *(v22 + 32) = sub_227665060();
    *(v22 + 40) = v23;
    sub_2272D7EE4(0, v22, v16);
  }

  return result;
}

uint64_t sub_22737D858(uint64_t a1, uint64_t a2)
{
  v3 = sub_22766A1F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *__swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator + 24));
  sub_2271D7EE8();
  v10 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub);
  v9 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub + 8);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_227665050();
  *(inited + 40) = v12;
  sub_226F4BE8C(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  sub_22766A1D0();
  sub_2276699D0();
  return (*(v4 + 8))(v7, v3);
}

void sub_22737DA40(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227568A84(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737DB70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_22756A4B0(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737DCA0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_22756AB24(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737DDD0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_227569E58(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737DF00(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_22756B1FC(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737E030(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_22756B854(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737E160(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  return sub_22756BEAC(a3, v10[1], *(v10 + 16), v10[3]);
}

uint64_t sub_22737E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a1;
  v65 = a2;
  v67 = sub_227667B60();
  v5 = *(v67 - 8);
  v68 = *(v5 + 64);
  MEMORY[0x28223BE20](v67);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v56 = *(v60 - 8);
  v59 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](v60);
  v57 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v63 = *(v11 - 8);
  v64 = v11;
  v62 = *(v63 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v61 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = v49 - v14;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v16 + 8))(v19, v15);
  v51 = v3;
  v20 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v21 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  v49[1] = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v20);
  v50 = v7;
  v54 = *(v5 + 16);
  v22 = v67;
  v54(v7, a1, v67);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  v25 = *(v5 + 32);
  v52 = v5 + 32;
  v53 = v25;
  v25(v24 + v23, v7, v22);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  v27 = v66;
  sub_226ECF5D8(sub_22738FF44, v24, v20, v26, v21, v66);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_22738DE34;
  *(v28 + 24) = 0;
  v30 = v56;
  v29 = v57;
  v31 = v60;
  (*(v56 + 16))(v57, v27, v60);
  v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v33 = (v59 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v30 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_22738FFC4;
  v35[1] = v28;
  sub_2276642E0();
  v36 = v58;
  sub_227669270();
  (*(v30 + 8))(v66, v31);
  v37 = v50;
  v38 = v67;
  v54(v50, v55, v67);
  v39 = swift_allocObject();
  *(v39 + 16) = v51;
  v53(v39 + v23, v37, v38);
  v41 = v63;
  v40 = v64;
  v42 = v61;
  v43 = v36;
  (*(v63 + 16))(v61, v36, v64);
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v41 + 32))(v46 + v44, v42, v40);
  v47 = (v46 + v45);
  *v47 = sub_227390038;
  v47[1] = v39;
  sub_227665D90();

  sub_227669270();
  return (*(v41 + 8))(v43, v40);
}

uint64_t sub_22737E8C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670CD0;
  *(v5 + 32) = sub_227667B40();
  *(v5 + 40) = v6;
  v7 = sub_226F87158(v5, 0, 1, a1);

  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_22737E970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v23 = a6;
  v24 = a5;
  v21 = a3;
  v22 = a4;
  v8 = sub_2276642E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v12 = sub_227667B50();
  v14 = v13;
  v15 = *v11;
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v9 + 32))(v17 + v16, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = v12;
  *(v18 + 8) = v14 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v19 + 24) = 50;
  *(v19 + 32) = 2;
  *(v19 + 40) = 24;
  *(v19 + 48) = v22;
  *(v19 + 56) = v17;
  sub_227665D90();

  return sub_227669270();
}

uint64_t sub_22737EB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v91 = a2;
  v5 = sub_227668AC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v8;
  v74 = v8;
  v10 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v80 = *(v81 - 8);
  v78 = *(v80 + 64);
  v11 = MEMORY[0x28223BE20](v81);
  v77 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF20, &unk_2276823C0);
  v85 = *(v14 - 8);
  v86 = v14;
  v83 = *(v85 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v82 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v89 = *(v18 - 8);
  v90 = v18;
  v88 = *(v89 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v87 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = v71 - v21;
  v22 = sub_22766B390();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v23 + 8))(v26, v22);
  v27 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v75 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  v71[1] = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v27);
  v28 = v6;
  v72 = *(v6 + 16);
  v29 = v10;
  v72(v10, a1, v5);
  v30 = *(v6 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = swift_allocObject();
  v33 = *(v28 + 32);
  v33(v32 + v31, v29, v5);
  *(v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v92;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  v35 = v76;
  sub_226ECF5D8(sub_22738FA70, v32, v27, v34, v75, v76);

  v36 = v5;
  v72(v29, v73, v5);
  v37 = swift_allocObject();
  v38 = v92;
  *(v37 + 16) = v92;
  v33(v37 + ((v30 + 24) & ~v30), v29, v36);
  v39 = v80;
  v40 = v77;
  v41 = v81;
  (*(v80 + 16))(v77, v35, v81);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v78 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v40, v41);
  v45 = (v44 + v43);
  *v45 = sub_22738FB18;
  v45[1] = v37;
  sub_2276687F0();

  v46 = v79;
  sub_227669270();
  (*(v39 + 8))(v35, v41);
  v47 = *__swift_project_boxed_opaque_existential_0((v38 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v38 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v95 = type metadata accessor for CatalogScriptClient();
  v96 = &off_283AC6368;
  v94[0] = v47;
  sub_226E91B50(v94, v93);
  v48 = swift_allocObject();
  sub_226E92AB8(v93, v48 + 16);

  __swift_destroy_boxed_opaque_existential_0(v94);
  v49 = v85;
  v50 = v86;
  v51 = v82;
  (*(v85 + 16))(v82, v46, v86);
  v52 = v49;
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v54 = (v83 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v52 + 32))(v55 + v53, v51, v50);
  v56 = (v55 + v54);
  *v56 = sub_22738FB6C;
  v56[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  v57 = v84;
  sub_227669270();
  (*(v52 + 8))(v46, v50);
  v58 = *__swift_project_boxed_opaque_existential_0((v38 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(v38 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v95 = type metadata accessor for CatalogLockupBuilder();
  v96 = &off_283AC3220;
  v94[0] = v58;
  sub_226E91B50(v94, v93);
  v59 = swift_allocObject();
  sub_226E92AB8(v93, v59 + 16);

  __swift_destroy_boxed_opaque_existential_0(v94);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_22738FBC8;
  *(v60 + 24) = v59;
  v61 = v89;
  v62 = v90;
  v63 = v87;
  v64 = v57;
  (*(v89 + 16))(v87, v57, v90);
  v65 = v61;
  v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v67 = (v88 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v65 + 32))(v68 + v66, v63, v62);
  v69 = (v68 + v67);
  *v69 = sub_226F326A8;
  v69[1] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  return (*(v65 + 8))(v64, v62);
}

uint64_t sub_22737F480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_227668AB0();
  if (v6)
  {
    result = sub_226F86808(v5, a1);
    if (!v2)
    {
      *a2 = result;
    }
  }

  else
  {
    v8 = v5;
    v9 = sub_226F87158(v5, 0, 1, a1);
    result = sub_22738FF38(v8, 0);
    if (!v2)
    {
      *a2 = v9;
    }
  }

  return result;
}

uint64_t sub_22737F514@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v7 = sub_227668AC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = *a1;
  v11 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v16 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v11);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a2;
  (*(v8 + 32))(v13 + v12, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v14 = sub_2276687F0();

  sub_226ECF5D8(sub_22738FCC8, v13, v11, v14, v16, v17);
}

uint64_t sub_22737F6B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a1;
  v66 = a3;
  v63[0] = a5;
  v68 = sub_2276642E0();
  v74 = *(v68 - 8);
  v7 = *(v74 + 64);
  v8 = MEMORY[0x28223BE20](v68);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = v63 - v10;
  v70 = sub_227662940();
  v11 = *(v70 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = v13;
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22766B390();
  v72 = *(v77 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x28223BE20](v77);
  v71 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC15SeymourServices13CatalogSystem_calendar;
  v18 = sub_227668AA0();
  v19 = sub_2276645E0();
  v21 = v20;
  if (v19 == sub_2276645E0() && v21 == v22)
  {

LABEL_5:

    v24 = v69;
    goto LABEL_6;
  }

  v23 = sub_22766D190();

  if (v23)
  {
    goto LABEL_5;
  }

  v48 = swift_allocEmptyBox();
  v49 = sub_22738FE98;
  v24 = v69;
  if (v18 > 3u)
  {
    if (v18 <= 5u)
    {
      if (v18 != 4)
      {
        result = sub_22766CFB0();
        __break(1u);
        return result;
      }

      v49 = sub_22738FE3C;
    }

    else if (v18 == 6)
    {
      v49 = sub_22738FDE0;
    }

    else
    {
      v49 = sub_22738FD48;
    }
  }

  else
  {
    if (v18 <= 1u)
    {
      if (v18)
      {
        v57 = v11;
        v58 = &v66[v17];
        v17 = v70;
        (*(v11 + 16))(v14, v58, v70);
        v59 = (*(v11 + 80) + 16) & ~*(v11 + 80);
        v60 = swift_allocObject();
        (*(v57 + 32))(v60 + v59, v14, v17);

        v51 = sub_22738FEB8;
        v48 = v60;
      }

      else
      {
        sub_226E91B50((v66 + 56), v76);
        sub_226E91B50(v65, v75);
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        sub_226E92AB8(v76, v50 + 24);
        sub_226E92AB8(v75, v50 + 64);
        v51 = sub_22738FF10;
        v48 = v50;
      }

      goto LABEL_44;
    }

    if (v18 == 2)
    {

      v48 = 0;
      v49 = sub_227371024;
    }
  }

  v51 = v49;
LABEL_44:
  *&v76[0] = a2;

  v55 = v51;
  v56 = v64;
  sub_22720AC34(v55, v48);
  if (v56)
  {
  }

  v64 = 0;

  a2 = *&v76[0];
LABEL_6:
  v63[1] = a4;
  v25 = __swift_project_boxed_opaque_existential_0(v65, v65[3]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v71;
  sub_22766A730();
  sub_22766B370();
  v29 = v72 + 8;
  (*(v72 + 8))(v28, v77);
  v30 = &off_2785D6000;
  [v26 reset];
  [v27 reset];
  v31 = *&v66[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver + 32];
  __swift_project_boxed_opaque_existential_0(&v66[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver], *&v66[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver + 24]);
  v77 = sub_22766A2C0();
  v72 = *(a2 + 16);
  if (v72)
  {
    v32 = 0;
    v67 = (v74 + 8);
    v70 = (v74 + 32);
    v71 = (v74 + 16);
    v33 = MEMORY[0x277D84F90];
    v34 = v64;
    v35 = v68;
    while (v32 < *(a2 + 16))
    {
      v17 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v29 = *(v74 + 72);
      v36 = (*(v74 + 16))(v24, a2 + v17 + v29 * v32, v35);
      v30 = v63;
      MEMORY[0x28223BE20](v36);
      v61 = v24;
      if (sub_226F7E2BC(sub_22738FDA4, &v63[-4], v77))
      {
        v37 = v24;
        v38 = a2;
        v39 = *v70;
        (*v70)(v73, v37, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76[0] = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F20548(0, *(v33 + 16) + 1, 1);
          v33 = *&v76[0];
        }

        v30 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v30 >= v41 >> 1)
        {
          sub_226F20548(v41 > 1, v30 + 1, 1);
          v33 = *&v76[0];
        }

        *(v33 + 16) = v30 + 1;
        v35 = v68;
        v39((v33 + v17 + v30 * v29), v73, v68);
        a2 = v38;
        v24 = v69;
      }

      else
      {
        (*v67)(v24, v35);
      }

      if (v72 == ++v32)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v33 = MEMORY[0x277D84F90];
  v34 = v64;
LABEL_18:
  v29 = v34;

  v42 = sub_227668A90();
  if (v43)
  {
    goto LABEL_32;
  }

  v32 = sub_2273FC620(v42, v33);
  if ((v46 & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = v46;
  v33 = v45;
  v30 = v44;
  sub_22766D1D0();
  swift_unknownObjectRetain_n();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v52 = MEMORY[0x277D84F90];
  }

  v53 = *(v52 + 16);

  if (__OFSUB__(v17 >> 1, v33))
  {
    goto LABEL_49;
  }

  if (v53 != (v17 >> 1) - v33)
  {
LABEL_50:
    swift_unknownObjectRelease();
    v46 = v17;
    v45 = v33;
    v44 = v30;
LABEL_20:
    sub_22726CD98(v32, v44, v45, v46);
    v33 = v47;
    goto LABEL_31;
  }

  v33 = swift_dynamicCastClass();
  v42 = swift_unknownObjectRelease();
  if (v33)
  {
    goto LABEL_32;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_31:
  v42 = swift_unknownObjectRelease();
LABEL_32:
  MEMORY[0x28223BE20](v42);
  v61 = v66;
  v62 = v65;
  sub_2270A85B0(MEMORY[0x277D84F90], sub_22738FDC4, &v63[-4], v33);
  if (v29)
  {
  }

  sub_227668A80();
  return sub_2276687E0();
}

uint64_t sub_22737FFA0(char *a1)
{
  v1 = *a1;
  v2 = sub_227664250();
  v4 = v3;
  v6 = v5 & 1;
  sub_22710571C();
  sub_226ED978C();
  v7 = sub_227663B30();
  sub_226EB2DFC(v2, v4, v6);
  return v7 & 1;
}

uint64_t sub_227380040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v44 = a3;
  v42 = a5;
  v43 = a2;
  v7 = sub_2276642E0();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276667D0();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663FA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *__swift_project_boxed_opaque_existential_0((v44 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore), *(v44 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore + 24));
  v44 = a4;
  v22 = v45;
  result = sub_226EAF48C(a4, v19);
  if (!v22)
  {
    v38 = v10;
    v45 = v14;
    sub_227663F60();
    v25 = v24;
    (*(v16 + 8))(v19, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    inited = swift_initStackObject();
    v37 = xmmword_227670CD0;
    *(inited + 16) = xmmword_227670CD0;
    v27 = v43;
    *(inited + 32) = sub_227664230();
    *(inited + 40) = v28;
    v29 = sub_226F4BE8C(inited);
    swift_setDeallocating();
    sub_226FA6DA4(inited + 32);
    v30 = sub_22701D97C(v29, v44, v25);

    v31 = *(v30 + 2);

    (*(v39 + 16))(v38, v27, v40);
    v32 = v45;
    sub_2276667C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF30, &unk_227682400);
    v33 = v41;
    v34 = *(v41 + 72);
    v35 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v37;
    (*(v33 + 16))(v36 + v35, v32, v11);
    v46 = v20;

    sub_227461DFC(v36);
    result = (*(v33 + 8))(v32, v11);
    *v42 = v46;
  }

  return result;
}

uint64_t sub_2273803D8(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v5 + 24) = 50;
  *(v5 + 32) = 2;
  *(v5 + 40) = 32;
  *(v5 + 48) = &unk_2276823E0;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);

  return sub_227669270();
}

uint64_t sub_2273804DC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = sub_227662750();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v6 = sub_22766B390();
  *(v2 + 48) = v6;
  v7 = *(v6 - 8);
  *(v2 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273805FC, 0, 0);
}

uint64_t sub_2273805FC()
{
  v21 = v0;
  v1 = *(v0 + 64);
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  if (v4)
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = sub_227666360();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSystem] requestCatalogSync with mode: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v14 = *(v0 + 40);
  v15 = *__swift_project_boxed_opaque_existential_0((*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator), *(*(v0 + 16) + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator + 24));
  sub_227662740();
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_2273807D0;
  v17 = *(v0 + 40);
  v18 = *(v0 + 88);

  return sub_2273A75C8(v18, v17);
}

uint64_t sub_2273807D0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227380988, 0, 0);
  }

  else
  {
    v7 = v6[8];
    v8 = v6[5];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_227380988()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_2273809F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v10 = sub_227664F70();
  sub_22766A730();
  if (v10)
  {
    v11 = sub_22738FA20;
  }

  else
  {
    v11 = sub_22738FA04;
  }

  sub_22766B370();
  v9(v8, v4);
  v12 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v13 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v12);
  v14 = sub_227665CD0();

  sub_226ECF5D8(v11, v2, v12, v14, v13, a1);
}

uint64_t sub_227380C04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v73 = *MEMORY[0x277D85DE8];
  v6 = sub_227666FF0();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *__swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore + 24));
  v16 = a1;
  result = sub_226EAF48C(a1, v14);
  if (v3)
  {
    goto LABEL_3;
  }

  v67 = v9;
  v68 = v14;
  v69 = v10;
  v70 = v11;
  v18 = v71;
  v19 = v16;
  v66 = sub_226F87C04(v16);
  v20 = sub_226F88950(v16);
  v21 = v68;
  v22 = v69;
  v65 = v20;
  v23 = sub_227663E90();
  v63 = sub_226F891AC(v16);
  v64 = v23;
  v25 = sub_227663EB0();
  v26 = sub_226ECF80C(v16);
  v62 = v25;
  v27 = sub_226EB16F8(v16);
  v28 = sub_226ED0F04(v19);
  v29 = v19;
  v30 = v28;
  v31 = sub_226F8951C(v29);
  v51 = v31;
  v52 = v30;
  v53 = v26;
  v54 = 0;
  v32 = v27[32];
  v50 = ((1 << v32) + 63) >> 6;
  if ((v32 & 0x3Fu) <= 0xD)
  {
    goto LABEL_5;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    v21 = v68;
    v22 = v69;
LABEL_5:
    v49 = &v49;
    MEMORY[0x28223BE20](v31);
    v55 = &v49 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v55, v33);
    v34 = 0;
    v68 = v27;
    v35 = v27 + 56;
    v36 = 1 << v27[32];
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v27 + 7);
    v56 = 0;
    v57 = (v36 + 63) >> 6;
    v39 = v18;
    v59 = v18 + 8;
    v60 = v18 + 16;
    v58 = v6;
    v61 = v35;
    while (v38)
    {
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_15:
      v43 = v67;
      v44 = v40 | (v34 << 6);
      v45 = v58;
      (*(v39 + 16))(v67, *(v68 + 6) + *(v39 + 72) * v44, v58);
      v69 = *(sub_227666F80() + 16);

      (*(v18 + 8))(v43, v45);
      v39 = v18;
      v35 = v61;
      if (v69)
      {
        *&v55[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
        if (__OFADD__(v56++, 1))
        {
          __break(1u);
          goto LABEL_19;
        }
      }
    }

    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
      }

      if (v34 >= v57)
      {
        break;
      }

      v42 = *&v35[8 * v34];
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v38 = (v42 - 1) & v42;
        goto LABEL_15;
      }
    }

LABEL_19:
    sub_226EBAEF0(v55, v50, v56, v68);
    goto LABEL_20;
  }

  v47 = swift_slowAlloc();
  v48 = v54;
  sub_22700C11C(v47, v50, v27, sub_227381354, 0);
  v54 = v48;
  if (!v48)
  {

    MEMORY[0x22AA9A450](v47, -1, -1);
    v21 = v68;
    v22 = v69;
LABEL_20:
    sub_227665CC0();
    result = (*(v70 + 8))(v21, v22);
LABEL_3:
    v24 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = MEMORY[0x22AA9A450](v47, -1, -1);
  __break(1u);
  return result;
}

BOOL sub_227381354()
{
  v0 = *(sub_227666F80() + 16);

  return v0 != 0;
}

char *sub_227381390(void *a1)
{
  result = sub_226F88CC0(a1);
  if (!v1)
  {
    return sub_227665CC0();
  }

  return result;
}

uint64_t sub_2273813F8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227663D60();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_227669890();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22738152C, 0, 0);
}

uint64_t sub_22738152C()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v20 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  sub_22766A820();
  v8 = *(v4 + 16);
  v8(v3, v7, v6);
  sub_226E9DD3C("CatalogSystem::filterCatalogTips", 32, 2, &dword_226E8E000, 0, v0 + 2);
  v9 = *(v5 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v10 = *(v5 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v9);
  v8(v2, v3, v6);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v0[18] = v12;
  (*(v4 + 32))(v12 + v11, v2, v6);
  *(v12 + ((v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v13 = *(v10 + 24);

  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[19] = v15;
  v16 = sub_2276657D0();
  *v15 = v0;
  v15[1] = sub_227381784;
  v17 = v0[7];

  return v19(v17, sub_22739035C, v12, v16, v9, v10);
}

uint64_t sub_227381784()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2273819A0;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2273818A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273818A0()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  (*(v7 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2273819A0()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  swift_willThrow();
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669920();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v10 = v0[1];
  v11 = v0[20];

  return v10();
}

uint64_t sub_227381AD8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227669890();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227381B9C, 0, 0);
}

uint64_t sub_227381B9C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator;
  sub_22766A820();
  sub_226E9DD3C("CatalogSystem::filterCatalogWorkouts", 36, 2, &dword_226E8E000, 0, v0 + 2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_227161224;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  return sub_227381C7C(v7, v2 + v3, v5, v6);
}

uint64_t sub_227381C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_227663D60();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227381D48, 0, 0);
}

uint64_t sub_227381D48()
{
  v17 = *(v0 + 72);
  v19 = *(v0 + 64);
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  *(v0 + 120) = 15;
  *(v0 + 80) = sub_226F19410();
  *(v0 + 88) = sub_226F19464();
  sub_22766A130();
  v5 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v6 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v5);
  (*(v1 + 16))(v17, v15, v16);
  v7 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v0 + 96) = v8;
  *(v8 + 16) = v2;
  (*(v1 + 32))(v8 + v7, v17, v16);
  v9 = *(v6 + 24);

  v18 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = sub_2276657D0();
  *v11 = v0;
  v11[1] = sub_227381FD4;
  v13 = *(v0 + 16);

  return (v18)(v13, sub_2273903BC, v8, v12, v5, v6);
}

uint64_t sub_227381FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2273821E8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2273820F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273820F0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  *(v0 + 122) = 15;
  sub_22766A120();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2273821E8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 24);

  v6 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  *(v0 + 121) = 15;
  sub_22766A120();

  v7 = *(v0 + 8);
  v8 = *(v0 + 112);

  return v7();
}

uint64_t sub_2273822EC@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v275 = a3;
  v284 = a2;
  v280 = a1;
  v270 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v291 = &v261 - v6;
  v298 = sub_227666B60();
  v279 = *(v298 - 8);
  v7 = *(v279 + 64);
  v8 = MEMORY[0x28223BE20](v298);
  v285 = &v261 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v287 = &v261 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v288 = &v261 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v289 = &v261 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v290 = &v261 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v281 = &v261 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v293 = &v261 - v21;
  MEMORY[0x28223BE20](v20);
  v295 = &v261 - v22;
  v292 = sub_227666F60();
  v294 = *(v292 - 8);
  v23 = *(v294 + 64);
  MEMORY[0x28223BE20](v292);
  v269 = &v261 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_227663D60();
  v273 = *(v271 - 8);
  v25 = *(v273 + 64);
  MEMORY[0x28223BE20](v271);
  v274 = &v261 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_227662940();
  v268 = *(v282 - 8);
  v27 = *(v268 + 64);
  MEMORY[0x28223BE20](v282);
  v28 = sub_227663FA0();
  v283 = *(v28 - 8);
  v29 = *(v283 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v261 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22766B390();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v261 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v261 - v38;
  sub_22766A730();
  sub_22766B370();
  v41 = *(v33 + 8);
  v40 = v33 + 8;
  v278 = v32;
  v277 = v41;
  v41(v39, v32);
  v42 = *__swift_project_boxed_opaque_existential_0(&v284[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore], *&v284[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore + 24]);
  v43 = v280;
  v44 = v286;
  result = sub_226EAF48C(v280, v31);
  if (v44)
  {
    return result;
  }

  v264 = v27;
  v265 = &v261 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = v37;
  v276 = 0;
  v286 = sub_227663E90();
  (*(v283 + 8))(v31, v28);
  v46 = *&v284[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver + 32];
  __swift_project_boxed_opaque_existential_0(&v284[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver], *&v284[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver + 24]);
  v47 = sub_22766A2C0();
  v48 = v43;
  v49 = __swift_project_boxed_opaque_existential_0(v43, v43[3]);
  v50 = *v49;
  v51 = v49[1];
  sub_22766A730();
  v266 = "outs(_:age:handle:)";
  sub_22766B370();
  v52 = v278;
  v53 = v277;
  v277(v39, v278);
  [v50 reset];
  v54 = v51;
  v55 = v47;
  [v54 reset];
  v56 = __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  sub_227019A10(v275, v47, 0, *v56, v56[1], *(v56 + 16), v56[3]);
  v57 = v276;
  v58 = sub_227372644(100);
  v276 = v57;
  if (v57)
  {
  }

  v272 = v58;

  v59 = __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  v60 = *v59;
  v61 = v59[1];
  sub_22766A730();
  sub_22766B370();
  v262 = v39;
  v263 = v40;
  v53(v39, v52);
  [v60 reset];
  [v61 reset];
  v62 = OBJC_IVAR____TtC15SeymourServices13CatalogSystem_calendar;
  v63 = sub_227663D50();
  v64 = sub_2276645E0();
  v66 = v65;
  if (v64 == sub_2276645E0() && v66 == v67)
  {

    v68 = v293;
    goto LABEL_9;
  }

  v283 = v55;
  v69 = sub_22766D190();

  v68 = v293;
  if ((v69 & 1) == 0)
  {
    v89 = swift_allocObject();
    v90 = MEMORY[0x277D84F90];
    v91 = sub_227148560(MEMORY[0x277D84F90]);
    v92 = sub_22714874C(v90);
    v93 = sub_227148938(v90);
    v94 = sub_227148B24(v90);
    v89[2] = v91;
    v89[3] = v92;
    v89[4] = v93;
    v89[5] = v94;
    v261 = v89;
    if (v63 > 3u)
    {
      if (v63 <= 5u)
      {
        v72 = v298;
        v74 = v274;
        v75 = v267;
        v76 = v294;
        v95 = v272;
        if (v63 != 4)
        {
LABEL_195:
          result = sub_22766CFB0();
          __break(1u);
          return result;
        }

        v102 = v276;
        sub_226ECF80C(v280);
        if (v102)
        {
          goto LABEL_35;
        }

        v276 = 0;
        sub_2276632A0();
        sub_227390744(&qword_28139BD28, MEMORY[0x277D4FE80]);
        v103 = sub_22766C5A0();

        v96 = v261;
        v104 = v261[4];
        v261[4] = v103;

        v101 = sub_22739047C;
      }

      else
      {
        v72 = v298;
        v74 = v274;
        v75 = v267;
        v76 = v294;
        v95 = v272;
        if (v63 == 6)
        {

          v98 = v276;
          sub_226F8951C(v280);
          if (v98)
          {
            goto LABEL_35;
          }

          v276 = 0;
          sub_227664EB0();
          sub_227390744(&qword_28139B8B8, MEMORY[0x277D51130]);
          v99 = sub_22766C5A0();

          v96 = v261;
          v100 = v261[2];
          v261[2] = v99;

          v101 = sub_22739045C;
        }

        else
        {

          v105 = v276;
          sub_226F885E0(v280);
          if (v105)
          {
            goto LABEL_35;
          }

          v276 = 0;
          sub_227663A30();
          sub_227390744(&qword_28139BC90, MEMORY[0x277D50278]);
          v106 = sub_22766C5A0();

          v96 = v261;
          v107 = v261[5];
          v261[5] = v106;

          v101 = sub_22739043C;
        }
      }
    }

    else
    {
      if (v63 <= 1u)
      {
        v95 = v272;

        if (v63)
        {
          v108 = v268;
          v109 = &v284[v62];
          v110 = v265;
          v111 = v282;
          (*(v268 + 16))(v265, v109, v282);
          v112 = (*(v108 + 80) + 16) & ~*(v108 + 80);
          v96 = swift_allocObject();
          (*(v108 + 32))(v96 + v112, v110, v111);

          v97 = sub_2273904BC;
        }

        else
        {
          sub_226E91B50((v284 + 56), &v297);
          sub_226E91B50(v280, &v296);
          v96 = swift_allocObject();
          *(v96 + 16) = v261;
          sub_226E92AB8(&v297, v96 + 24);
          sub_226E92AB8(&v296, v96 + 64);
          v97 = sub_2273905FC;
        }

        goto LABEL_33;
      }

      v95 = v272;
      if (v63 == 2)
      {

        v96 = 0;
        v97 = sub_22737107C;
LABEL_33:
        v113 = v97;
        v72 = v298;
        v74 = v274;
        v75 = v267;
        v76 = v294;
        goto LABEL_38;
      }

      v114 = v276;
      sub_226EB16F8(v280);
      v72 = v298;
      v74 = v274;
      v75 = v267;
      v76 = v294;
      if (v114)
      {
LABEL_35:
      }

      v276 = 0;
      sub_227666FF0();
      sub_227390744(&unk_28139B578, MEMORY[0x277D52AF8]);
      v115 = sub_22766C5A0();

      v96 = v261;
      v116 = v261[3];
      v261[3] = v115;

      v101 = sub_22739049C;
    }

    v113 = v101;
LABEL_38:
    *&v297 = v95;

    v117 = v113;
    v118 = v276;
    sub_22720AD34(v117, v96);
    v276 = v118;
    if (v118)
    {
    }

    v71 = v297;
    v70 = v95;
    v73 = v273;
    v77 = *(v297 + 16);
    if (v77)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_9:

  v70 = v272;

  v72 = v298;
  v73 = v273;
  v74 = v274;
  v75 = v267;
  v76 = v294;
  v77 = *(v71 + 16);
  if (v77)
  {
LABEL_10:
    *&v297 = MEMORY[0x277D84F90];
    v78 = v71;
    sub_226F1FA28(0, v77, 0);
    v79 = v297;
    v284 = *(v279 + 16);
    v80 = (*(v279 + 80) + 32) & ~*(v279 + 80);
    v268 = v78;
    v81 = v78 + v80;
    v283 = *(v279 + 72);
    v82 = (v279 + 8);
    v282 = v76 + 32;
    v83 = v295;
    v84 = v269;
    do
    {
      (v284)(v83, v81, v72);
      sub_227666A50();
      v83 = v295;
      sub_227666F30();
      (*v82)(v83, v72);
      *&v297 = v79;
      v86 = *(v79 + 16);
      v85 = *(v79 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_226F1FA28(v85 > 1, v86 + 1, 1);
        v83 = v295;
        v79 = v297;
      }

      *(v79 + 16) = v86 + 1;
      (*(v294 + 32))(v79 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v86, v84, v292);
      v81 += v283;
      --v77;
      v72 = v298;
    }

    while (v77);
    v282 = v79;

    v87 = v272;
    v68 = v293;
    v88 = v273;
    v74 = v274;
    v75 = v267;
    goto LABEL_42;
  }

LABEL_41:

  v282 = MEMORY[0x277D84F90];
  v87 = v70;
  v88 = v73;
LABEL_42:
  v119 = __swift_project_boxed_opaque_existential_0(v280, v280[3]);
  v120 = *v119;
  v121 = v119[1];
  v122 = v262;
  sub_22766A730();
  sub_22766B370();
  v277(v122, v278);
  [v120 reset];
  [v121 reset];
  sub_22766A710();
  v123 = v271;
  (*(v88 + 16))(v74, v275, v271);

  v124 = sub_22766B380();
  v125 = v87;
  v126 = sub_22766C8B0();
  if (os_log_type_enabled(v124, v126))
  {
    v127 = v74;
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v297 = v129;
    *v128 = 134218242;
    *(v128 + 4) = *(v272 + 16);

    *(v128 + 12) = 2080;
    sub_227390744(&qword_28139BC38, MEMORY[0x277D504B0]);
    v130 = sub_22766D140();
    v131 = v123;
    v133 = v132;
    (*(v88 + 8))(v127, v131);
    v134 = sub_226E97AE8(v130, v133, &v297);

    *(v128 + 14) = v134;
    _os_log_impl(&dword_226E8E000, v124, v126, "FilterCatalog found %ld workouts with filter: %s", v128, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v129);
    MEMORY[0x22AA9A450](v129, -1, -1);
    v125 = v272;
    MEMORY[0x22AA9A450](v128, -1, -1);

    v135 = v267;
  }

  else
  {

    (*(v88 + 8))(v74, v123);
    v135 = v75;
  }

  v277(v135, v278);
  v136 = *(v125 + 16);
  v283 = v136;
  if (v136)
  {
    v294 = *(v279 + 16);
    v137 = v125 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v292 = *(v279 + 72);
    v138 = (v279 + 8);
    v139 = MEMORY[0x277D84F90];
    while (1)
    {
      v140 = v298;
      (v294)(v68, v137, v298);
      v141 = sub_227666AC0();
      (*v138)(v68, v140);
      v142 = *(v141 + 16);
      v143 = *(v139 + 2);
      v144 = v143 + v142;
      if (__OFADD__(v143, v142))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v144 > *(v139 + 3) >> 1)
      {
        if (v143 <= v144)
        {
          v146 = v143 + v142;
        }

        else
        {
          v146 = v143;
        }

        v139 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v146, 1, v139);
      }

      v68 = v293;
      if (*(v141 + 16))
      {
        if ((*(v139 + 3) >> 1) - *(v139 + 2) < v142)
        {
          goto LABEL_183;
        }

        swift_arrayInitWithCopy();

        if (v142)
        {
          v147 = *(v139 + 2);
          v148 = __OFADD__(v147, v142);
          v149 = v147 + v142;
          if (v148)
          {
            goto LABEL_189;
          }

          *(v139 + 2) = v149;
        }
      }

      else
      {

        if (v142)
        {
          goto LABEL_172;
        }
      }

      v137 += v292;
      if (!--v136)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v139 = MEMORY[0x277D84F90];
LABEL_62:
  v280 = sub_226F3E6A8(v139);

  v150 = v283;
  if (v283)
  {
    v294 = *(v279 + 16);
    v151 = v272 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v293 = *(v279 + 72);
    v152 = MEMORY[0x277D84F90];
    v292 = v279 + 8;
    v153 = v298;
    v154 = v281;
    v284 = (v279 + 16);
    (v294)(v281, v151, v298);
    while (1)
    {
      sub_227666B40();
      v155 = v291;
      Set<>.matchingAssetDuration(_:)(v286, v291, v156);
      v157 = sub_227664010();
      v158 = *(v157 - 8);
      if ((*(v158 + 48))(v155, 1, v157) == 1)
      {
        (*v292)(v154, v153);
        sub_226E97D1C(v155, &qword_27D7BC9B8, &unk_227682440);
      }

      else
      {
        v159 = sub_227663FD0();
        v160 = v154;
        v161 = v159;
        v163 = v162;
        (*v292)(v160, v153);
        (*(v158 + 8))(v155, v157);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_226EB3F78(0, *(v152 + 2) + 1, 1, v152);
        }

        v165 = *(v152 + 2);
        v164 = *(v152 + 3);
        if (v165 >= v164 >> 1)
        {
          v152 = sub_226EB3F78((v164 > 1), v165 + 1, 1, v152);
        }

        *(v152 + 2) = v165 + 1;
        v166 = &v152[16 * v165];
        *(v166 + 4) = v161;
        *(v166 + 5) = v163;
        v153 = v298;
        v154 = v281;
      }

      v151 += v293;
      if (!--v150)
      {
        break;
      }

      (v294)(v154, v151, v153);
    }
  }

  else
  {
    v152 = MEMORY[0x277D84F90];
  }

  v291 = sub_226F3E6A8(v152);

  v167 = v283;
  if (v283)
  {
    v294 = *(v279 + 16);
    v168 = v272 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v293 = *(v279 + 72);
    v169 = (v279 + 8);
    v170 = MEMORY[0x277D84F90];
    v171 = v290;
    while (1)
    {
      v172 = v171;
      v173 = v298;
      (v294)(v171, v168, v298);
      v174 = sub_227666AD0();
      (*v169)(v172, v173);
      v175 = *(v174 + 16);
      v176 = *(v170 + 2);
      v177 = v176 + v175;
      if (__OFADD__(v176, v175))
      {
        goto LABEL_173;
      }

      v178 = swift_isUniquelyReferenced_nonNull_native();
      if (v178 && v177 <= *(v170 + 3) >> 1)
      {
        if (!*(v174 + 16))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v176 <= v177)
        {
          v179 = v176 + v175;
        }

        else
        {
          v179 = v176;
        }

        v170 = sub_226EB3F78(v178, v179, 1, v170);
        if (!*(v174 + 16))
        {
LABEL_76:

          v171 = v290;
          if (v175)
          {
            goto LABEL_174;
          }

          goto LABEL_77;
        }
      }

      if ((*(v170 + 3) >> 1) - *(v170 + 2) < v175)
      {
        goto LABEL_184;
      }

      swift_arrayInitWithCopy();

      v171 = v290;
      if (v175)
      {
        v180 = *(v170 + 2);
        v148 = __OFADD__(v180, v175);
        v181 = v180 + v175;
        if (v148)
        {
          goto LABEL_190;
        }

        *(v170 + 2) = v181;
      }

LABEL_77:
      v168 += v293;
      if (!--v167)
      {
        goto LABEL_92;
      }
    }
  }

  v170 = MEMORY[0x277D84F90];
LABEL_92:
  v290 = sub_226F3E6A8(v170);

  v182 = v272;
  v183 = *(v272 + 16);
  v184 = MEMORY[0x277D84F90];
  if (v183)
  {
    *&v297 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v183, 0);
    v184 = v297;
    v185 = *(v279 + 16);
    v186 = v182 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v292 = *(v279 + 72);
    v293 = v185;
    v294 = v279 + 16;
    v187 = (v279 + 8);
    v188 = v298;
    v189 = v295;
    do
    {
      (v293)(v189, v186, v188);
      v190 = sub_227666A90();
      v189 = v295;
      v191 = v190;
      v193 = v192;
      (*v187)(v295, v188);
      *&v297 = v184;
      v195 = *(v184 + 16);
      v194 = *(v184 + 24);
      if (v195 >= v194 >> 1)
      {
        sub_226F1EF90(v194 > 1, v195 + 1, 1);
        v189 = v295;
        v184 = v297;
      }

      *(v184 + 16) = v195 + 1;
      v196 = v184 + 16 * v195;
      *(v196 + 32) = v191;
      *(v196 + 40) = v193;
      v186 += v292;
      --v183;
      v188 = v298;
    }

    while (v183);
  }

  v293 = sub_226F3E6A8(v184);

  v197 = v283;
  if (v283)
  {
    v295 = *(v279 + 16);
    v198 = v272 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v294 = *(v279 + 72);
    v199 = (v279 + 8);
    v200 = MEMORY[0x277D84F90];
    v201 = v289;
    while (1)
    {
      v202 = v201;
      v203 = v298;
      (v295)(v201, v198, v298);
      v204 = sub_227666AE0();
      (*v199)(v202, v203);
      v205 = *(v204 + 16);
      v206 = *(v200 + 2);
      v207 = v206 + v205;
      if (__OFADD__(v206, v205))
      {
        goto LABEL_175;
      }

      v208 = swift_isUniquelyReferenced_nonNull_native();
      if (v208 && v207 <= *(v200 + 3) >> 1)
      {
        if (!*(v204 + 16))
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v206 <= v207)
        {
          v209 = v206 + v205;
        }

        else
        {
          v209 = v206;
        }

        v200 = sub_226EB3F78(v208, v209, 1, v200);
        if (!*(v204 + 16))
        {
LABEL_99:

          v201 = v289;
          if (v205)
          {
            goto LABEL_176;
          }

          goto LABEL_100;
        }
      }

      if ((*(v200 + 3) >> 1) - *(v200 + 2) < v205)
      {
        goto LABEL_185;
      }

      swift_arrayInitWithCopy();

      v201 = v289;
      if (v205)
      {
        v210 = *(v200 + 2);
        v148 = __OFADD__(v210, v205);
        v211 = v210 + v205;
        if (v148)
        {
          goto LABEL_191;
        }

        *(v200 + 2) = v211;
      }

LABEL_100:
      v198 += v294;
      if (!--v197)
      {
        goto LABEL_115;
      }
    }
  }

  v200 = MEMORY[0x277D84F90];
LABEL_115:
  v292 = sub_226F3E6A8(v200);

  v212 = v283;
  if (v283)
  {
    v295 = *(v279 + 16);
    v213 = v272 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v294 = *(v279 + 72);
    v214 = (v279 + 8);
    v215 = MEMORY[0x277D84F90];
    v216 = v288;
    while (1)
    {
      v217 = v216;
      v218 = v298;
      (v295)(v216, v213, v298);
      v219 = sub_227666AF0();
      (*v214)(v217, v218);
      v220 = *(v219 + 16);
      v221 = *(v215 + 2);
      v222 = v221 + v220;
      if (__OFADD__(v221, v220))
      {
        goto LABEL_177;
      }

      v223 = swift_isUniquelyReferenced_nonNull_native();
      if (v223 && v222 <= *(v215 + 3) >> 1)
      {
        if (!*(v219 + 16))
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v221 <= v222)
        {
          v224 = v221 + v220;
        }

        else
        {
          v224 = v221;
        }

        v215 = sub_226EB3F78(v223, v224, 1, v215);
        if (!*(v219 + 16))
        {
LABEL_117:

          v216 = v288;
          if (v220)
          {
            goto LABEL_178;
          }

          goto LABEL_118;
        }
      }

      if ((*(v215 + 3) >> 1) - *(v215 + 2) < v220)
      {
        goto LABEL_186;
      }

      swift_arrayInitWithCopy();

      v216 = v288;
      if (v220)
      {
        v225 = *(v215 + 2);
        v148 = __OFADD__(v225, v220);
        v226 = v225 + v220;
        if (v148)
        {
          goto LABEL_192;
        }

        *(v215 + 2) = v226;
      }

LABEL_118:
      v213 += v294;
      if (!--v212)
      {
        goto LABEL_133;
      }
    }
  }

  v215 = MEMORY[0x277D84F90];
LABEL_133:
  v227 = sub_226F3E6A8(v215);

  v228 = v283;
  v289 = v227;
  if (v283)
  {
    v295 = *(v279 + 16);
    v229 = v272 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v294 = *(v279 + 72);
    v230 = (v279 + 8);
    v231 = MEMORY[0x277D84F90];
    v232 = v287;
    while (1)
    {
      v233 = v232;
      v234 = v298;
      (v295)(v232, v229, v298);
      v235 = sub_227666A80();
      (*v230)(v233, v234);
      v236 = *(v235 + 16);
      v237 = *(v231 + 2);
      v238 = v237 + v236;
      if (__OFADD__(v237, v236))
      {
        goto LABEL_179;
      }

      v239 = swift_isUniquelyReferenced_nonNull_native();
      if (v239 && v238 <= *(v231 + 3) >> 1)
      {
        if (!*(v235 + 16))
        {
          goto LABEL_135;
        }
      }

      else
      {
        if (v237 <= v238)
        {
          v240 = v237 + v236;
        }

        else
        {
          v240 = v237;
        }

        v231 = sub_226EB3F78(v239, v240, 1, v231);
        if (!*(v235 + 16))
        {
LABEL_135:

          v232 = v287;
          if (v236)
          {
            goto LABEL_180;
          }

          goto LABEL_136;
        }
      }

      if ((*(v231 + 3) >> 1) - *(v231 + 2) < v236)
      {
        goto LABEL_187;
      }

      swift_arrayInitWithCopy();

      v232 = v287;
      if (v236)
      {
        v241 = *(v231 + 2);
        v148 = __OFADD__(v241, v236);
        v242 = v241 + v236;
        if (v148)
        {
          goto LABEL_193;
        }

        *(v231 + 2) = v242;
      }

LABEL_136:
      v229 += v294;
      if (!--v228)
      {
        goto LABEL_151;
      }
    }
  }

  v231 = MEMORY[0x277D84F90];
LABEL_151:
  v243 = sub_226F3E6A8(v231);

  v244 = v283;
  v288 = v243;
  if (v283)
  {
    v245 = v279 + 16;
    v295 = *(v279 + 16);
    v246 = v272 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
    v294 = *(v279 + 72);
    v247 = (v279 + 8);
    v248 = MEMORY[0x277D84F90];
    v249 = v285;
    while (1)
    {
      v250 = v249;
      v251 = v298;
      v252 = v245;
      (v295)(v249, v246, v298);
      v253 = sub_227666AA0();
      (*v247)(v250, v251);
      v254 = *(v253 + 16);
      v255 = *(v248 + 2);
      v256 = v255 + v254;
      if (__OFADD__(v255, v254))
      {
        goto LABEL_181;
      }

      v257 = swift_isUniquelyReferenced_nonNull_native();
      if (v257 && v256 <= *(v248 + 3) >> 1)
      {
        if (!*(v253 + 16))
        {
          goto LABEL_153;
        }
      }

      else
      {
        if (v255 <= v256)
        {
          v258 = v255 + v254;
        }

        else
        {
          v258 = v255;
        }

        v248 = sub_226EB3F78(v257, v258, 1, v248);
        if (!*(v253 + 16))
        {
LABEL_153:

          v245 = v252;
          v249 = v285;
          if (v254)
          {
            goto LABEL_182;
          }

          goto LABEL_154;
        }
      }

      if ((*(v248 + 3) >> 1) - *(v248 + 2) < v254)
      {
        goto LABEL_188;
      }

      swift_arrayInitWithCopy();

      v245 = v252;
      v249 = v285;
      if (v254)
      {
        v259 = *(v248 + 2);
        v148 = __OFADD__(v259, v254);
        v260 = v259 + v254;
        if (v148)
        {
          goto LABEL_194;
        }

        *(v248 + 2) = v260;
      }

LABEL_154:
      v246 += v294;
      if (!--v244)
      {
        goto LABEL_169;
      }
    }
  }

  v248 = MEMORY[0x277D84F90];
LABEL_169:

  sub_226F3E6A8(v248);

  return sub_2276657C0();
}