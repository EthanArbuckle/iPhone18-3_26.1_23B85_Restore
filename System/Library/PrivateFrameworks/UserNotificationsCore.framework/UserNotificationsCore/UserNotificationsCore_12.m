unint64_t sub_1DA90B540(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DA85A5A0(a3);
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
      sub_1DA85C9FC(v16, a4 & 1);
      v20 = *v5;
      result = sub_1DA85A5A0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DA860D68();
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

_OWORD *sub_1DA90B6A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
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
      sub_1DA860ECC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DA85CC70(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DA85A4B4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DA9416E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1DA848FE8(a1, v23);
  }

  else
  {
    sub_1DA90CCD4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1DA90B7F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1DA90B84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA90B8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DA85A4B4(a2, a3);
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
      v15 = sub_1DA85A4B4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1DA9416E4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
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

    return MEMORY[0x1EEE66BB8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_1DA90BA70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1DA85A5A0(a2);
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
      sub_1DA85D1D8(v14, a3 & 1);
      v18 = *v4;
      result = sub_1DA85A5A0(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1DA8611E0();
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

uint64_t sub_1DA90BC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
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
      sub_1DA85D470(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA861364();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1DA863074(a1, v23);
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

uint64_t sub_1DA90BDD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DA85A4B4(a2, a3);
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
      v15 = sub_1DA85A4B4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
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

id sub_1DA90BF68(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DA85A7CC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DA85D9F4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1DA85A7CC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for NotificationServiceConnection();
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1DA86168C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

uint64_t sub_1DA90C0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
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
      sub_1DA85DC64(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA8617F0();
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

uint64_t sub_1DA90C27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DA85A4B4(a2, a3);
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
      v15 = sub_1DA85A4B4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
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

uint64_t sub_1DA90C414(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DA93FB24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DA85A5DC(a2);
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
      sub_1DA86226C();
      goto LABEL_7;
    }

    sub_1DA85ED44(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1DA85A5DC(a2);
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
      return sub_1DA90CD88(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DA9416E4();
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

uint64_t sub_1DA90C5E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
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
      sub_1DA85F120(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA8624EC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1DA90D054(a1, v23);
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

uint64_t sub_1DA90C7C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DA85A4B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DA862950();
      goto LABEL_7;
    }

    sub_1DA85F79C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1DA85A4B4(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DA9416E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AlertCoordinationMessage(0) - 8) + 72) * v12;

    return sub_1DA90CF8C(a1, v20);
  }

LABEL_13:
  sub_1DA90CEF4(v12, a2, a3, a1, v18);
}

uint64_t sub_1DA90C928(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DA85A4B4(a2, a3);
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
      sub_1DA85F7D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DA85A4B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DA9416E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DA86298C();
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

uint64_t sub_1DA90CAA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1DA93FB24();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_1DA90CBAC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DA848FE8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1DA90CC28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1DA93FBD4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1DA90CCD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DA848FE8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1DA90CD40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DA90CD88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DA93FB24();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1DA90CE40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1DA90CEF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AlertCoordinationMessage(0);
  result = sub_1DA90CFF0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DA90CF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90CFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90D0B4()
{
  v27[3] = *MEMORY[0x1E69E9840];
  v1 = sub_1DA93F8E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA93F964();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 0;
  v11 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:v27];
  v12 = v27[0];
  if (!v11)
  {
    v17 = v27[0];
    v18 = sub_1DA93F8C4();

    swift_willThrow();
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    __swift_project_value_buffer(v19, qword_1EE114E48);
    v20 = v18;
    v21 = sub_1DA940584();
    v22 = sub_1DA940F14();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1DA7A9000, v21, v22, "Failed to get library directory; %{public}@. Exiting.", v23, 0xCu);
      sub_1DA828378(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    exit(0);
  }

  v13 = v11;
  sub_1DA93F914();
  v14 = v12;

  v27[0] = 0xD000000000000011;
  v27[1] = 0x80000001DA956470;
  (*(v2 + 104))(v5, *MEMORY[0x1E6968F70], v1);
  sub_1DA8282D0();
  sub_1DA93F954();
  (*(v2 + 8))(v5, v1);
  result = (*(v7 + 8))(v10, v6);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DA90D470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DA9407A4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v18 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72A0, qword_1DA9632A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA90F66C(&unk_1EE113F58, type metadata accessor for UserNotificationsVendorClientTransaction);
  sub_1DA940794();
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_1DA90F6B4(v9, v14);
  v15 = sub_1DA90D8D8(v14);
  v16 = MEMORY[0x1E69E6378];
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *(a1 + 32) = v16;
  *a1 = v15 & 1;
  return sub_1DA90F534(v14, type metadata accessor for UserNotificationsVendorClientTransaction);
}

uint64_t sub_1DA90D8D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DA93FB24();
  v106 = *(v4 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = &v98 - v9;
  v108 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v10 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v98 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v98 - v23;
  if (qword_1EE110DA0 != -1)
  {
    swift_once();
  }

  v102 = sub_1DA9405A4();
  v25 = __swift_project_value_buffer(v102, qword_1EE110DB0);
  sub_1DA90F594(a1, v24, type metadata accessor for UserNotificationsVendorClientTransaction);
  v107 = v25;
  v26 = sub_1DA940584();
  v27 = sub_1DA940EF4();
  v28 = os_log_type_enabled(v26, v27);
  v101 = v17;
  v100 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v98 = v4;
    v30 = v29;
    v31 = swift_slowAlloc();
    v99 = a1;
    v32 = v31;
    *&v115 = v31;
    *v30 = 136315138;
    sub_1DA90F594(v24, v22, type metadata accessor for UserNotificationsVendorClientTransaction);
    v33 = sub_1DA940A74();
    v34 = v13;
    v35 = v2;
    v37 = v36;
    sub_1DA90F534(v24, type metadata accessor for UserNotificationsVendorClientTransaction);
    v38 = sub_1DA7AE6E8(v33, v37, &v115);
    v2 = v35;
    v13 = v34;

    *(v30 + 4) = v38;
    _os_log_impl(&dword_1DA7A9000, v26, v27, "transaction %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v39 = v32;
    a1 = v99;
    MEMORY[0x1E12739F0](v39, -1, -1);
    v40 = v30;
    v4 = v98;
    MEMORY[0x1E12739F0](v40, -1, -1);
  }

  else
  {

    sub_1DA90F534(v24, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  sub_1DA90F594(a1, v12, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v45 = *v12;
      v44 = *(v12 + 1);
      v46 = *(v12 + 2);

      v47 = sub_1DA940584();
      v48 = sub_1DA940F34();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v115 = v50;
        *v49 = 136315394;
        *(v49 + 4) = sub_1DA7AE6E8(v45, v44, &v115);
        *(v49 + 12) = 2080;
        v51 = MEMORY[0x1E1271CD0](v46, MEMORY[0x1E69E6158]);
        v53 = sub_1DA7AE6E8(v51, v52, &v115);

        *(v49 + 14) = v53;
        _os_log_impl(&dword_1DA7A9000, v47, v48, "transaction bundleIdentifier: %s recordIdentifiers: %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v50, -1, -1);
        MEMORY[0x1E12739F0](v49, -1, -1);
      }

      v54 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository);
      sub_1DA8AD06C(v46);

      v55 = sub_1DA940E84();

      v56 = sub_1DA940A04();

      [v54 removeNotificationRecordsForIdentifiers:v55 bundleIdentifier:v56];
    }

    else
    {
      v71 = v106;
      v72 = v103;
      (*(v106 + 16))(v103, a1 + *(v13 + 24), v4);
      (*(v71 + 56))(v72, 0, 1, v4);
      v73 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
      swift_beginAccess();
      sub_1DA90F5FC(v72, v2 + v73);
      swift_endAccess();
      v74 = a1;
      v75 = v105;
      sub_1DA90F594(v74, v105, type metadata accessor for UserNotificationsVendorClientTransaction);

      v76 = sub_1DA940584();
      v77 = sub_1DA940F34();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v115 = v79;
        *v78 = 136315394;
        v80 = *(v13 + 24);
        sub_1DA90F66C(&qword_1EE114C50, MEMORY[0x1E69695A8]);
        v81 = sub_1DA941614();
        v83 = v82;
        sub_1DA90F534(v75, type metadata accessor for UserNotificationsVendorClientTransaction);
        v84 = sub_1DA7AE6E8(v81, v83, &v115);

        *(v78 + 4) = v84;
        *(v78 + 12) = 2080;
        v85 = sub_1DA941614();
        v87 = sub_1DA7AE6E8(v85, v86, &v115);

        *(v78 + 14) = v87;
        _os_log_impl(&dword_1DA7A9000, v76, v77, "VendorSession hello: %s maps to: %s", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v79, -1, -1);
        MEMORY[0x1E12739F0](v78, -1, -1);
      }

      else
      {

        sub_1DA90F534(v75, type metadata accessor for UserNotificationsVendorClientTransaction);
      }
    }

    return 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v42 = v106;
    v43 = v104;
    (*(v106 + 32))(v104, v12, v4);
    sub_1DA90E4E8(v43);
    (*(v42 + 8))(v43, v4);
    return 1;
  }

  v57 = *(v12 + 1);
  v115 = *v12;
  v116 = v57;
  v58 = *(v12 + 3);
  v117 = *(v12 + 2);
  v118 = v58;
  if (qword_1ECBD47B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v102, qword_1ECBE3DA0);
  sub_1DA848A24(&v115, &v111);
  v59 = sub_1DA940584();
  v60 = sub_1DA940F34();
  sub_1DA84A040(&v115);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v110 = v62;
    *v61 = 136315138;
    v111 = v115;
    v112 = v116;
    v113 = v117;
    v114 = v118;
    sub_1DA848A24(&v115, v109);
    v63 = sub_1DA940A74();
    v65 = sub_1DA7AE6E8(v63, v64, &v110);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_1DA7A9000, v59, v60, "VendorSession perform(action:): %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1E12739F0](v62, -1, -1);
    MEMORY[0x1E12739F0](v61, -1, -1);
  }

  v66 = v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v68 = *(v66 + 8);
    v69 = Strong;
    ObjectType = swift_getObjectType();
    v109[0] = v69;
    v111 = v115;
    v112 = v116;
    v113 = v117;
    v114 = v118;
    (*(v68 + 8))(&v111, ObjectType, v68);
    sub_1DA84A040(&v115);
    swift_unknownObjectRelease();
    return 1;
  }

  sub_1DA84A040(&v115);
  v89 = v101;
  sub_1DA90F594(a1, v101, type metadata accessor for UserNotificationsVendorClientTransaction);
  v90 = sub_1DA940584();
  v91 = sub_1DA940F14();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v111 = v93;
    *v92 = 136315138;
    sub_1DA90F594(v89, v100, type metadata accessor for UserNotificationsVendorClientTransaction);
    v94 = sub_1DA940A74();
    v96 = v95;
    sub_1DA90F534(v89, type metadata accessor for UserNotificationsVendorClientTransaction);
    v97 = sub_1DA7AE6E8(v94, v96, &v111);

    *(v92 + 4) = v97;
    _os_log_impl(&dword_1DA7A9000, v90, v91, "No action responder for transaction %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x1E12739F0](v93, -1, -1);
    MEMORY[0x1E12739F0](v92, -1, -1);
  }

  else
  {

    sub_1DA90F534(v89, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  return 0;
}

void sub_1DA90E4E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v47 - v6;
  v7 = sub_1DA93FB24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = *(v8 + 16);
  v51 = a1;
  v49 = v14;
  v14(&v47 - v12, a1, v7);
  v15 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository);
  v16 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_categoryRepositoryAggregator);
  v17 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_settingsProvider;
  v18 = type metadata accessor for VendorSession();
  v55[3] = v18;
  v55[4] = &off_1F5639028;
  v55[0] = v2;
  v19 = type metadata accessor for HistoricalNotificationsRequestProcessor();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v47 = v19;
  v22 = swift_allocObject();
  v53 = *(v2 + v17);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v55, v18);
  v24 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v29 = (v22 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint);
  v29[3] = v18;
  v29[4] = &off_1F5639028;
  *v29 = v28;
  v52 = v8;
  (*(v8 + 32))(v22 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID, v13, v7);
  *(v22 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_repository) = v15;
  *(v22 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_categoryRepositoryAggregator) = v16;
  *(v22 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_settingsProvider) = v53;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_1(v55);
  v30 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor);
  *(v2 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor) = v22;

  v31 = sub_1DA940D34();
  v32 = v48;
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v22;

  sub_1DA8DB00C(0, 0, v32, &unk_1DA963290, v33);

  if (qword_1ECBD47B0 != -1)
  {
    swift_once();
  }

  v34 = sub_1DA9405A4();
  __swift_project_value_buffer(v34, qword_1ECBE3DA0);
  v35 = v50;
  v49(v50, v51, v7);

  v36 = sub_1DA940584();
  v37 = sub_1DA940F34();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55[0] = v39;
    *v38 = 136315394;
    sub_1DA90F66C(&qword_1EE114C50, MEMORY[0x1E69695A8]);
    v40 = sub_1DA941614();
    v42 = v41;
    (*(v52 + 8))(v35, v7);
    v43 = sub_1DA7AE6E8(v40, v42, v55);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v54 = v22;

    v44 = sub_1DA940A74();
    v46 = sub_1DA7AE6E8(v44, v45, v55);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_1DA7A9000, v36, v37, "beginHistoricalNotificationsRequest: continuationUUID: %s %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v39, -1, -1);
    MEMORY[0x1E12739F0](v38, -1, -1);
  }

  else
  {

    (*(v52 + 8))(v35, v7);
  }
}

uint64_t sub_1DA90EAB8()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key;
  v2 = sub_1DA93FB24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID, &unk_1ECBD6F98, &unk_1DA963280);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session));
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_categoryRepositoryAggregator);

  v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_settingsProvider);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor);

  sub_1DA7C5714(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_delegate);
  sub_1DA7C5714(v0 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder);
  return v0;
}

uint64_t sub_1DA90EBA8()
{
  sub_1DA90EAB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VendorSession()
{
  result = qword_1EE1137F8;
  if (!qword_1EE1137F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA90EC54()
{
  v0 = sub_1DA93FB24();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DA90ED5C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DA90ED5C()
{
  if (!qword_1EE114C48)
  {
    sub_1DA93FB24();
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114C48);
    }
  }
}

uint64_t sub_1DA90EDD8()
{
  v1 = *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1DA8F400C(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA90EE38(uint64_t a1)
{
  v3 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = *(a1 + *(v6 + 28));
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v11 = *(a1 + *(v6 + 28));
    }

    if (!sub_1DA941264())
    {
      goto LABEL_3;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v8 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor);
    *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor) = 0;
  }

  v9 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session), *(v1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session + 24));
  sub_1DA90F66C(qword_1EE1141E0, type metadata accessor for UserNotificationsVendorTransaction);
  return sub_1DA940624();
}

unint64_t sub_1DA90F23C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - v4;
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_1DA941364();

  v11 = 0xD000000000000010;
  v12 = 0x80000001DA955D20;
  sub_1DA93FB24();
  sub_1DA90F66C(&qword_1EE114C50, MEMORY[0x1E69695A8]);
  v6 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v6);

  MEMORY[0x1E1271BD0](0x55746E65696C6320, 0xED0000203A444955);
  v7 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
  swift_beginAccess();
  sub_1DA8F7018(v1 + v7, v5);
  v8 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v8);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_1DA90F40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA819C68(a1, v4, v5, v6);
}

uint64_t sub_1DA90F4C0()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110DB0);
  __swift_project_value_buffer(v0, qword_1EE110DB0);
  return sub_1DA940594();
}

uint64_t sub_1DA90F534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA90F594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA90F5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90F66C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA90F6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA90F780()
{
  result = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(319);
  if (v1 <= 0x3F)
  {
    result = sub_1DA93FB24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DA90F804()
{
  sub_1DA90F88C();
  if (v0 <= 0x3F)
  {
    sub_1DA90F8D4();
    if (v1 <= 0x3F)
    {
      sub_1DA90F904();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1DA90F88C()
{
  if (!qword_1EE115A48)
  {
    v0 = sub_1DA93FB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE115A48);
    }
  }
}

ValueMetadata *sub_1DA90F8D4()
{
  result = qword_1EE115278[0];
  if (!qword_1EE115278[0])
  {
    result = &type metadata for NotificationActionSelector;
    atomic_store(&type metadata for NotificationActionSelector, qword_1EE115278);
  }

  return result;
}

void sub_1DA90F904()
{
  if (!qword_1EE114DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE114DF8);
    }
  }
}

uint64_t sub_1DA90F97C(void *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72F8, &qword_1DA9633F8);
  v55 = *(v56 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v44 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7300, &qword_1DA963400);
  v52 = *(v53 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v44 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7308, &qword_1DA963408);
  v49 = *(v50 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v44 - v7;
  v48 = sub_1DA93FB24();
  v47 = *(v48 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7310, &qword_1DA963410);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7318, &qword_1DA963418);
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA911F38();
  sub_1DA941834();
  sub_1DA9120DC(v57, v18, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = *v18;
      v31 = *(v18 + 1);
      v33 = *(v18 + 2);
      LOBYTE(v64) = 3;
      sub_1DA911F8C();
      v34 = v54;
      v35 = v59;
      sub_1DA9415A4();
      LOBYTE(v64) = 0;
      v36 = v56;
      v37 = v68;
      sub_1DA9415D4();

      if (v37)
      {

        (*(v55 + 8))(v34, v36);
        return (*(v58 + 8))(v22, v35);
      }

      else
      {
        *&v64 = v33;
        LOBYTE(v60) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
        sub_1DA8EF6F4(&qword_1ECBD6DA0);
        sub_1DA941604();
        (*(v55 + 8))(v34, v36);
        (*(v58 + 8))(v22, v35);
      }
    }

    else
    {
      LOBYTE(v64) = 0;
      sub_1DA912088();
      v43 = v59;
      sub_1DA9415A4();
      (*(v45 + 8))(v14, v11);
      return (*(v58 + 8))(v22, v43);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v38 = *(v18 + 1);
    v64 = *v18;
    v65 = v38;
    v39 = *(v18 + 3);
    v66 = *(v18 + 2);
    v67 = v39;
    LOBYTE(v60) = 2;
    sub_1DA911FE0();
    v40 = v51;
    v41 = v59;
    sub_1DA9415A4();
    v60 = v64;
    v61 = v65;
    v62 = v66;
    v63 = v67;
    sub_1DA864940();
    v42 = v53;
    sub_1DA941604();
    (*(v52 + 8))(v40, v42);
    (*(v58 + 8))(v22, v41);
    return sub_1DA84A040(&v64);
  }

  else
  {
    v25 = v47;
    v26 = v48;
    (*(v47 + 32))(v10, v18, v48);
    LOBYTE(v64) = 1;
    sub_1DA912034();
    v27 = v46;
    v28 = v59;
    sub_1DA9415A4();
    sub_1DA911E2C(&qword_1EE114C70, MEMORY[0x1E69695A8]);
    v29 = v50;
    sub_1DA941604();
    (*(v49 + 8))(v27, v29);
    (*(v25 + 8))(v10, v26);
    return (*(v58 + 8))(v22, v28);
  }
}

uint64_t sub_1DA9101B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72B8, &qword_1DA9633C8);
  v74 = *(v69 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v81 = &v64 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72C0, &qword_1DA9633D0);
  v73 = *(v72 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v80 = &v64 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72C8, &qword_1DA9633D8);
  v71 = *(v70 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v79 = &v64 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72D0, &qword_1DA9633E0);
  v77 = *(v68 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v76 = &v64 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72D8, &unk_1DA9633E8);
  v82 = *(v78 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v13 = &v64 - v12;
  v14 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v64 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v64 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1DA911F38();
  v29 = v83;
  sub_1DA941804();
  if (!v29)
  {
    v30 = v76;
    v66 = v24;
    v65 = v21;
    v31 = v77;
    v64 = v18;
    v32 = v79;
    v33 = v80;
    v34 = v81;
    v67 = v26;
    v83 = v14;
    v35 = v78;
    v36 = sub_1DA941594();
    v37 = (2 * *(v36 + 16)) | 1;
    v89 = v36;
    v90 = v36 + 32;
    v91 = 0;
    v92 = v37;
    v38 = sub_1DA8675E8();
    if (v38 != 4 && v91 == v92 >> 1)
    {
      if (v38 > 1u)
      {
        if (v38 == 2)
        {
          LOBYTE(v85) = 2;
          sub_1DA911FE0();
          sub_1DA941504();
          v45 = v82;
          sub_1DA865250();
          v51 = v72;
          sub_1DA941584();
          (*(v73 + 8))(v33, v51);
          (*(v45 + 8))(v13, v35);
          swift_unknownObjectRelease();
          v60 = v86;
          v61 = v65;
          *v65 = v85;
          *(v61 + 1) = v60;
          v62 = v88;
          *(v61 + 2) = v87;
          *(v61 + 3) = v62;
        }

        else
        {
          LOBYTE(v85) = 3;
          sub_1DA911F8C();
          v47 = v34;
          sub_1DA941504();
          v48 = v82;
          LOBYTE(v85) = 0;
          v56 = v69;
          v57 = sub_1DA941554();
          v59 = v58;
          v80 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
          v93 = 1;
          sub_1DA8EF6F4(&qword_1EE110CC0);
          sub_1DA941584();
          (*(v74 + 8))(v47, v56);
          (*(v48 + 8))(v13, v35);
          swift_unknownObjectRelease();
          v63 = v85;
          v61 = v64;
          *v64 = v80;
          v61[1] = v59;
          v61[2] = v63;
        }

        swift_storeEnumTagMultiPayload();
        v55 = v61;
      }

      else
      {
        if (!v38)
        {
          LOBYTE(v85) = 0;
          sub_1DA912088();
          sub_1DA941504();
          (*(v31 + 8))(v30, v68);
          (*(v82 + 8))(v13, v35);
          swift_unknownObjectRelease();
          v49 = v67;
          swift_storeEnumTagMultiPayload();
          v50 = v75;
LABEL_15:
          sub_1DA911E74(v49, v50);
          return __swift_destroy_boxed_opaque_existential_1(v84);
        }

        LOBYTE(v85) = 1;
        sub_1DA912034();
        v46 = v32;
        sub_1DA941504();
        sub_1DA93FB24();
        v52 = v35;
        sub_1DA911E2C(&unk_1EE114C58, MEMORY[0x1E69695A8]);
        v53 = v66;
        v54 = v70;
        sub_1DA941584();
        (*(v71 + 8))(v46, v54);
        (*(v82 + 8))(v13, v52);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v55 = v53;
      }

      v49 = v67;
      sub_1DA911E74(v55, v67);
      v50 = v75;
      goto LABEL_15;
    }

    v39 = v35;
    v40 = sub_1DA9413B4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
    *v42 = v83;
    sub_1DA941514();
    sub_1DA9413A4();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v82 + 8))(v13, v39);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_1DA910C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA910CDC(uint64_t a1)
{
  v2 = sub_1DA911FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910D18(uint64_t a1)
{
  v2 = sub_1DA911FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA910D54()
{
  v1 = 0x6F6C6C6568;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x65766F6D6572;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

uint64_t sub_1DA910DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA91277C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA910DF0(uint64_t a1)
{
  v2 = sub_1DA911F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910E2C(uint64_t a1)
{
  v2 = sub_1DA911F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA910E68(uint64_t a1)
{
  v2 = sub_1DA912088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910EA4(uint64_t a1)
{
  v2 = sub_1DA912088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA910EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA9507C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA910F90(uint64_t a1)
{
  v2 = sub_1DA912034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA910FCC(uint64_t a1)
{
  v2 = sub_1DA912034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA911008()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1DA911040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DA950340 == a2 || (sub_1DA941684() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DA956550 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DA941684();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DA911124(uint64_t a1)
{
  v2 = sub_1DA911F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA911160(uint64_t a1)
{
  v2 = sub_1DA911F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA9111CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF444955556E6F69;
  v4 = 0x5555746E65696C63;
  if (v2 == 1)
  {
    v4 = 0x746361736E617274;
  }

  else
  {
    v3 = 0xEA00000000004449;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746361736E617274;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF657079546E6F69;
  }

  v7 = 0xEF444955556E6F69;
  v8 = 0x5555746E65696C63;
  if (*a2 == 1)
  {
    v8 = 0x746361736E617274;
  }

  else
  {
    v7 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746361736E617274;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF657079546E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA9112D8()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA911388()
{
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA911424()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA9114D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA9128DC();
  *a2 = result;
  return result;
}

void sub_1DA911500(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657079546E6F69;
  v4 = 0xEF444955556E6F69;
  v5 = 0x746361736E617274;
  if (v2 != 1)
  {
    v5 = 0x5555746E65696C63;
    v4 = 0xEA00000000004449;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746361736E617274;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DA91157C()
{
  v1 = 0x5555746E65696C63;
  if (*v0 == 1)
  {
    v1 = 0x746361736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_1DA9115E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA9128DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DA91160C(uint64_t a1)
{
  v2 = sub_1DA911DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA911648(uint64_t a1)
{
  v2 = sub_1DA911DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA911684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = sub_1DA93FB24();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  v4 = MEMORY[0x1EEE9AC00](v32);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72B0, &qword_1DA9633C0);
  v31 = *(v34 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v27 - v12;
  v14 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA911DD8();
  v35 = v13;
  v19 = v36;
  sub_1DA941804();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v14;
  v36 = v17;
  v20 = a1;
  v21 = v31;
  v22 = v32;
  v39 = 0;
  sub_1DA911E2C(&qword_1EE113F70, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v23 = v33;
  sub_1DA941584();
  sub_1DA911E74(v23, v36);
  v38 = 2;
  sub_1DA911E2C(&unk_1EE114C58, MEMORY[0x1E69695A8]);
  sub_1DA941584();
  v24 = &v36[*(v27 + 24)];
  v33 = *(v30 + 32);
  v33(v24, v7, v22);
  v37 = 1;
  sub_1DA941584();
  v25 = v36;
  (*(v21 + 8))(v35, v34);
  v33((v25 + *(v27 + 20)), v29, v22);
  sub_1DA9120DC(v25, v28, type metadata accessor for UserNotificationsVendorClientTransaction);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1DA911ED8(v25, type metadata accessor for UserNotificationsVendorClientTransaction);
}

uint64_t sub_1DA911B68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD72A8, &qword_1DA9633B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA911DD8();
  sub_1DA941834();
  v16 = 0;
  type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  sub_1DA911E2C(qword_1EE113F78, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  sub_1DA941604();
  if (!v1)
  {
    v9 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
    v10 = *(v9 + 24);
    v15 = 2;
    sub_1DA93FB24();
    sub_1DA911E2C(&qword_1EE114C70, MEMORY[0x1E69695A8]);
    sub_1DA941604();
    v11 = *(v9 + 20);
    v14 = 1;
    sub_1DA941604();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DA911DD8()
{
  result = qword_1EE115700[0];
  if (!qword_1EE115700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115700);
  }

  return result;
}

uint64_t sub_1DA911E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA911E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA911ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DA911F38()
{
  result = qword_1EE1157F8;
  if (!qword_1EE1157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157F8);
  }

  return result;
}

unint64_t sub_1DA911F8C()
{
  result = qword_1ECBD72E0;
  if (!qword_1ECBD72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD72E0);
  }

  return result;
}

unint64_t sub_1DA911FE0()
{
  result = qword_1ECBD72E8;
  if (!qword_1ECBD72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD72E8);
  }

  return result;
}

unint64_t sub_1DA912034()
{
  result = qword_1ECBD72F0;
  if (!qword_1ECBD72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD72F0);
  }

  return result;
}

unint64_t sub_1DA912088()
{
  result = qword_1EE1157E0;
  if (!qword_1EE1157E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157E0);
  }

  return result;
}

uint64_t sub_1DA9120DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DA9121A8()
{
  result = qword_1ECBD7320;
  if (!qword_1ECBD7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7320);
  }

  return result;
}

unint64_t sub_1DA912200()
{
  result = qword_1ECBD7328;
  if (!qword_1ECBD7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7328);
  }

  return result;
}

unint64_t sub_1DA912258()
{
  result = qword_1ECBD7330;
  if (!qword_1ECBD7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7330);
  }

  return result;
}

unint64_t sub_1DA9122B0()
{
  result = qword_1ECBD7338;
  if (!qword_1ECBD7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7338);
  }

  return result;
}

unint64_t sub_1DA912308()
{
  result = qword_1ECBD7340;
  if (!qword_1ECBD7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7340);
  }

  return result;
}

unint64_t sub_1DA912360()
{
  result = qword_1EE1157D0;
  if (!qword_1EE1157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157D0);
  }

  return result;
}

unint64_t sub_1DA9123B8()
{
  result = qword_1EE1157D8;
  if (!qword_1EE1157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157D8);
  }

  return result;
}

unint64_t sub_1DA912410()
{
  result = qword_1EE115800;
  if (!qword_1EE115800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115800);
  }

  return result;
}

unint64_t sub_1DA912468()
{
  result = qword_1EE115808;
  if (!qword_1EE115808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115808);
  }

  return result;
}

unint64_t sub_1DA9124C0()
{
  result = qword_1EE1157C0;
  if (!qword_1EE1157C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157C0);
  }

  return result;
}

unint64_t sub_1DA912518()
{
  result = qword_1EE1157C8;
  if (!qword_1EE1157C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157C8);
  }

  return result;
}

unint64_t sub_1DA912570()
{
  result = qword_1EE1157B0;
  if (!qword_1EE1157B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157B0);
  }

  return result;
}

unint64_t sub_1DA9125C8()
{
  result = qword_1EE1157B8;
  if (!qword_1EE1157B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157B8);
  }

  return result;
}

unint64_t sub_1DA912620()
{
  result = qword_1EE1157E8;
  if (!qword_1EE1157E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157E8);
  }

  return result;
}

unint64_t sub_1DA912678()
{
  result = qword_1EE1157F0;
  if (!qword_1EE1157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1157F0);
  }

  return result;
}

unint64_t sub_1DA9126D0()
{
  result = qword_1EE1156F0;
  if (!qword_1EE1156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1156F0);
  }

  return result;
}

unint64_t sub_1DA912728()
{
  result = qword_1EE1156F8;
  if (!qword_1EE1156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1156F8);
  }

  return result;
}

uint64_t sub_1DA91277C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6C6568 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001DA956530 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DA9128DC()
{
  v0 = sub_1DA9414F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1DA9129D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v55 = a3;
  v9 = type metadata accessor for UserNotificationsCloudRecord(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v52 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = sub_1DA93F7A4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1DA93F794();
  sub_1DA917214(&unk_1ECBD73E0, type metadata accessor for UserNotificationsCloudRecord);
  sub_1DA93F784();
  if (v5)
  {

    if (qword_1ECBD4718 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1ECBE3D78);
    sub_1DA841874(a1, a2);
    sub_1DA841874(a1, a2);
    v23 = v5;
    v16 = sub_1DA940584();
    v13 = sub_1DA940F14();

    if (!os_log_type_enabled(v16, v13))
    {
      sub_1DA828324(a1, a2);
      sub_1DA828324(a1, a2);
LABEL_34:

      swift_willThrow();
      return;
    }

    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58 = v54;
    *v9 = 136446978;
    if (v56)
    {
      v25 = 7104846;
      v26 = 0xE300000000000000;
    }

    else
    {
      v57 = v55;
      sub_1DA841820();
      v25 = sub_1DA941144();
      v26 = v33;
    }

    v34 = sub_1DA7AE6E8(v25, v26, &v58);

    *(v9 + 4) = v34;
    *(v9 + 12) = 2050;
    v35 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v35)
      {
        sub_1DA828324(a1, a2);
        v36 = BYTE6(a2);
LABEL_33:
        *(v9 + 14) = v36;
        sub_1DA828324(a1, a2);
        *(v9 + 22) = 2080;
        *(v9 + 24) = sub_1DA7AE6E8(0xD00000000000001CLL, 0x80000001DA956640, &v58);
        *(v9 + 32) = 2112;
        v43 = v5;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 34) = v44;
        *v24 = v44;
        _os_log_impl(&dword_1DA7A9000, v16, v13, "[v%{public}s] Encountered error decoding payload of size %{public}ldB to type %s; %@", v9, 0x2Au);
        sub_1DA7BA120(v24, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v24, -1, -1);
        v45 = v54;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v45, -1, -1);
        MEMORY[0x1E12739F0](v9, -1, -1);
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v35 != 2)
    {
      sub_1DA828324(a1, a2);
      v36 = 0;
      goto LABEL_33;
    }

    v30 = *(a1 + 16);
    v37 = *(a1 + 24);
    sub_1DA828324(a1, a2);
    v36 = v37 - v30;
    if (!__OFSUB__(v37, v30))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  else
  {

    sub_1DA916BA4(v18, a5, type metadata accessor for UserNotificationsCloudRecord);
    if (qword_1ECBD4718 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1ECBE3D78);
    sub_1DA916AF0(a5, v16, type metadata accessor for UserNotificationsCloudRecord);
    sub_1DA841874(a1, a2);
    sub_1DA841874(a1, a2);
    v28 = sub_1DA940584();
    v29 = sub_1DA940F34();
    if (!os_log_type_enabled(v28, v29))
    {
      sub_1DA828324(a1, a2);
      sub_1DA828324(a1, a2);

      sub_1DA85758C(v16, type metadata accessor for UserNotificationsCloudRecord);
      return;
    }

    v53 = v29;
    v54 = v28;
    v30 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v30 = 136446978;
    if (v56)
    {
      v31 = 7104846;
      v32 = 0xE300000000000000;
      goto LABEL_23;
    }
  }

  v57 = v55;
  sub_1DA841820();
  v31 = sub_1DA941144();
  v32 = v38;
LABEL_23:
  v39 = sub_1DA7AE6E8(v31, v32, &v58);

  *(v30 + 4) = v39;
  *(v30 + 12) = 2050;
  v40 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v24 = *(a1 + 16);
      v42 = *(a1 + 24);
      sub_1DA828324(a1, a2);
      v41 = v42 - v24;
      if (__OFSUB__(v42, v24))
      {
        __break(1u);
LABEL_30:
        sub_1DA828324(a1, a2);
        LODWORD(v36) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v36 = v36;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      sub_1DA828324(a1, a2);
      v41 = 0;
    }

LABEL_38:
    *(v30 + 14) = v41;
    sub_1DA828324(a1, a2);
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_1DA7AE6E8(0xD00000000000001CLL, 0x80000001DA956640, &v58);
    *(v30 + 32) = 2082;
    sub_1DA916AF0(v16, v13, type metadata accessor for UserNotificationsCloudRecord);
    sub_1DA85758C(v13, type metadata accessor for UserNotificationsCloudRecord);
    v46 = sub_1DA941884();
    v48 = v47;
    sub_1DA85758C(v16, type metadata accessor for UserNotificationsCloudRecord);
    v49 = sub_1DA7AE6E8(v46, v48, &v58);

    *(v30 + 34) = v49;
    v50 = v54;
    _os_log_impl(&dword_1DA7A9000, v54, v53, "[v%{public}s] Decoded payload of size %{public}ldB to type %s (actual: %{public}s).", v30, 0x2Au);
    v51 = v52;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v51, -1, -1);
    MEMORY[0x1E12739F0](v30, -1, -1);

    return;
  }

  if (!v40)
  {
    sub_1DA828324(a1, a2);
    v41 = BYTE6(a2);
    goto LABEL_38;
  }

  sub_1DA828324(a1, a2);
  LODWORD(v41) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v41 = v41;
    goto LABEL_38;
  }

LABEL_40:
  __break(1u);
}

id sub_1DA913174()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA91325C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties);
  v11 = off_1F5637B10;
  type metadata accessor for RemoteNotificationsProperties();
  if (v11())
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1EE11AD30);
    v13 = a6;
    v14 = a1;
    v15 = a2;

    oslog = sub_1DA940584();
    v16 = sub_1DA940F34();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = v59;
      *v17 = 136316162;
      v18 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
      v19 = sub_1DA940A74();
      v21 = sub_1DA7AE6E8(v19, v20, &v61);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
      v23 = sub_1DA940A74();
      v25 = sub_1DA7AE6E8(v23, v24, &v61);

      *(v17 + 14) = v25;
      *(v17 + 22) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73F0, qword_1DA963C40);
      v26 = sub_1DA940A74();
      v28 = sub_1DA7AE6E8(v26, v27, &v61);

      *(v17 + 24) = v28;
      *(v17 + 32) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v29 = sub_1DA940A74();
      v31 = sub_1DA7AE6E8(v29, v30, &v61);

      *(v17 + 34) = v31;
      *(v17 + 42) = 2080;
      v32 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73A8, &unk_1DA963C08);
      v33 = sub_1DA940A74();
      v35 = sub_1DA7AE6E8(v33, v34, &v61);

      *(v17 + 44) = v35;
      v36 = "UserNotificationsIDSCloudReceiver service: %s account: %s message: %s fromID: %s context: %s";
LABEL_10:
      _os_log_impl(&dword_1DA7A9000, oslog, v16, v36, v17, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v59, -1, -1);
      MEMORY[0x1E12739F0](v17, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v37 = sub_1DA9405A4();
    __swift_project_value_buffer(v37, qword_1EE11AD30);
    v38 = a6;
    v39 = a1;
    v40 = a2;

    oslog = sub_1DA940584();
    v16 = sub_1DA940F14();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = v59;
      *v17 = 136316162;
      v41 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
      v42 = sub_1DA940A74();
      v44 = sub_1DA7AE6E8(v42, v43, &v61);

      *(v17 + 4) = v44;
      *(v17 + 12) = 2080;
      v45 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
      v46 = sub_1DA940A74();
      v48 = sub_1DA7AE6E8(v46, v47, &v61);

      *(v17 + 14) = v48;
      *(v17 + 22) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73F0, qword_1DA963C40);
      v49 = sub_1DA940A74();
      v51 = sub_1DA7AE6E8(v49, v50, &v61);

      *(v17 + 24) = v51;
      *(v17 + 32) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v52 = sub_1DA940A74();
      v54 = sub_1DA7AE6E8(v52, v53, &v61);

      *(v17 + 34) = v54;
      *(v17 + 42) = 2080;
      v55 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73A8, &unk_1DA963C08);
      v56 = sub_1DA940A74();
      v58 = sub_1DA7AE6E8(v56, v57, &v61);

      *(v17 + 44) = v58;
      v36 = "UserNotificationsIDSCloudReceiver !isActive - skipping: service: %s account: %s message: %s fromID: %s context: %s";
      goto LABEL_10;
    }
  }
}

void sub_1DA913940(char *a1, uint64_t a2)
{
  v211 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v206 = &v192 - v6;
  v7 = sub_1DA93F964();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v192 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v210 = &v192 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v209 = &v192 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v204 = &v192 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v201 = &v192 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v199 = &v192 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v203 = &v192 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v202 = &v192 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v205 = &v192 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v192 - v32;
  v208 = v2;
  v34 = *&v2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties];
  v35 = off_1F5637B10;
  type metadata accessor for RemoteNotificationsProperties();
  if ((v35() & 1) == 0)
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v58 = sub_1DA9405A4();
    __swift_project_value_buffer(v58, qword_1EE11AD30);
    (*(v8 + 16))(v12, v211, v7);

    v59 = v8;
    v60 = sub_1DA940584();
    v61 = sub_1DA940F34();

    if (!os_log_type_enabled(v60, v61))
    {

      (*(v59 + 8))(v12, v7);
      return;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v214 = v63;
    *v62 = 136315394;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v64 = sub_1DA941614();
    v66 = v65;
    (*(v59 + 8))(v12, v7);
    v67 = sub_1DA7AE6E8(v64, v66, &v214);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    v68 = sub_1DA940984();
    v70 = sub_1DA7AE6E8(v68, v69, &v214);

    *(v62 + 14) = v70;
    v71 = "UserNotificationsIDSCloudReceiver !isActive - skipping: dispatchAttachment(incomingResourceAt): %s metadata: %s";
    goto LABEL_26;
  }

  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v36 = sub_1DA9405A4();
  v37 = __swift_project_value_buffer(v36, qword_1EE11AD30);
  v38 = *(v8 + 16);
  v39 = v211;
  v198 = v8 + 16;
  v197 = v38;
  v38(v33, v211, v7);

  v200 = v37;
  v40 = sub_1DA940584();
  v41 = sub_1DA940F34();

  v42 = os_log_type_enabled(v40, v41);
  v207 = v8;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v196 = a2;
    v45 = v7;
    v46 = v44;
    v214 = v44;
    *v43 = 136315394;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v47 = sub_1DA941614();
    v49 = v48;
    v50 = *(v8 + 8);
    v50(v33, v45);
    v51 = sub_1DA7AE6E8(v47, v49, &v214);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2080;
    v52 = sub_1DA940984();
    v54 = sub_1DA7AE6E8(v52, v53, &v214);

    *(v43 + 14) = v54;
    _os_log_impl(&dword_1DA7A9000, v40, v41, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s metadata: %s", v43, 0x16u);
    swift_arrayDestroy();
    v55 = v46;
    v7 = v45;
    a2 = v196;
    MEMORY[0x1E12739F0](v55, -1, -1);
    v56 = v43;
    v39 = v211;
    MEMORY[0x1E12739F0](v56, -1, -1);

    v57 = v50;
  }

  else
  {

    v57 = *(v8 + 8);
    v57(v33, v7);
  }

  v212 = 0xD000000000000010;
  v213 = 0x80000001DA950340;
  sub_1DA9412F4();
  if (!*(a2 + 16) || (v72 = sub_1DA85A788(&v214), (v73 & 1) == 0))
  {
    sub_1DA862DE8(&v214);
    goto LABEL_24;
  }

  sub_1DA7AD270(*(a2 + 56) + 32 * v72, v216);
  sub_1DA862DE8(&v214);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v197(v15, v39, v7);

    v60 = sub_1DA940584();
    v61 = sub_1DA940F14();

    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_38;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v214 = v63;
    *v62 = 136315394;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v91 = sub_1DA941614();
    v93 = v92;
    v57(v15, v7);
    v94 = sub_1DA7AE6E8(v91, v93, &v214);

    *(v62 + 4) = v94;
    *(v62 + 12) = 2080;
    v95 = sub_1DA940984();
    v97 = sub_1DA7AE6E8(v95, v96, &v214);

    *(v62 + 14) = v97;
    v71 = "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s no bundleIdentifier in metadata: %s";
LABEL_26:
    _os_log_impl(&dword_1DA7A9000, v60, v61, v71, v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v63, -1, -1);
    MEMORY[0x1E12739F0](v62, -1, -1);

    return;
  }

  v74 = v212;
  v75 = v213;
  v212 = 0xD00000000000001DLL;
  v213 = 0x80000001DA955E70;
  sub_1DA9412F4();
  if (!*(a2 + 16) || (v76 = sub_1DA85A788(&v214), (v77 & 1) == 0))
  {
    sub_1DA862DE8(&v214);
    goto LABEL_29;
  }

  sub_1DA7AD270(*(a2 + 56) + 32 * v76, v216);
  sub_1DA862DE8(&v214);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:

    v98 = v210;
    v197(v210, v39, v7);

    v99 = sub_1DA940584();
    v100 = sub_1DA940F14();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = v7;
      v103 = swift_slowAlloc();
      v214 = v103;
      *v101 = 136315394;
      sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
      v104 = sub_1DA941614();
      v105 = v98;
      v106 = v104;
      v108 = v107;
      v57(v105, v102);
      v109 = sub_1DA7AE6E8(v106, v108, &v214);

      *(v101 + 4) = v109;
      *(v101 + 12) = 2080;
      v110 = sub_1DA940984();
      v112 = sub_1DA7AE6E8(v110, v111, &v214);

      *(v101 + 14) = v112;
      _os_log_impl(&dword_1DA7A9000, v99, v100, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s no notificationRecord.identifier in metadata: %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v103, -1, -1);
      MEMORY[0x1E12739F0](v101, -1, -1);

      return;
    }

    v113 = v98;
    goto LABEL_39;
  }

  v210 = v74;
  v79 = v212;
  v78 = v213;
  v212 = 0xD000000000000015;
  v213 = 0x80000001DA955E50;
  sub_1DA9412F4();
  if (!*(a2 + 16) || (v80 = sub_1DA85A788(&v214), (v81 & 1) == 0))
  {
    sub_1DA862DE8(&v214);
LABEL_33:

    v15 = v209;
    v197(v209, v39, v7);

    v60 = sub_1DA940584();
    v61 = sub_1DA940F14();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v214 = v63;
      *v62 = 136315394;
      sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
      v114 = sub_1DA941614();
      v116 = v115;
      v57(v15, v7);
      v117 = sub_1DA7AE6E8(v114, v116, &v214);

      *(v62 + 4) = v117;
      *(v62 + 12) = 2080;
      v118 = sub_1DA940984();
      v120 = sub_1DA7AE6E8(v118, v119, &v214);

      *(v62 + 14) = v120;
      v71 = "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s no attachment.identifier in metadata: %s";
      goto LABEL_26;
    }

LABEL_38:

    v113 = v15;
LABEL_39:
    v57(v113, v7);
    return;
  }

  sub_1DA7AD270(*(a2 + 56) + 32 * v80, v216);
  sub_1DA862DE8(&v214);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v196 = a2;
  v209 = v7;
  v83 = v212;
  v82 = v213;
  v84 = &v208[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_attachmentDelegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {

    v87 = v206;
    v7 = v209;
    (*(v207 + 56))(v206, 1, 1, v209);
    v88 = v211;
LABEL_36:
    sub_1DA7BA120(v87, &qword_1ECBD6310, &unk_1DA95F3B0);
    v15 = v204;
    v197(v204, v88, v7);

    v60 = sub_1DA940584();
    v61 = sub_1DA940F14();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v214 = v63;
      *v62 = 136315394;
      sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
      v121 = sub_1DA941614();
      v123 = v122;
      v57(v15, v7);
      v124 = sub_1DA7AE6E8(v121, v123, &v214);

      *(v62 + 4) = v124;
      *(v62 + 12) = 2080;
      v125 = sub_1DA940984();
      v127 = sub_1DA7AE6E8(v125, v126, &v214);

      *(v62 + 14) = v127;
      v71 = "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s attachmentDelegate failed to store URL with metadata: %s";
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  v194 = v83;
  v195 = v82;
  v85 = *(v84 + 1);
  ObjectType = swift_getObjectType();
  v87 = v206;
  v88 = v211;
  (*(v85 + 8))(v211, v79, v78, v210, v75, ObjectType, v85);
  swift_unknownObjectRelease();
  v89 = v75;
  v90 = v207;
  v7 = v209;
  if ((*(v207 + 48))(v87, 1, v209) == 1)
  {

    goto LABEL_36;
  }

  v204 = v89;
  v128 = v205;
  (*(v90 + 32))(v205, v87, v7);
  v129 = v197;
  v197(v202, v88, v7);
  v129(v203, v128, v7);

  v130 = v208;
  v131 = sub_1DA940584();
  v132 = sub_1DA940F34();
  v208 = v130;

  LODWORD(v206) = v132;
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v216[0] = v193;
    *v133 = 136315906;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v192 = v131;
    v134 = v202;
    v135 = sub_1DA941614();
    v137 = v136;
    v57(v134, v7);
    v138 = sub_1DA7AE6E8(v135, v137, v216);

    *(v133 + 4) = v138;
    *(v133 + 12) = 2080;
    v139 = v203;
    v140 = sub_1DA941614();
    v142 = v141;
    v57(v139, v7);
    v143 = sub_1DA7AE6E8(v140, v142, v216);

    *(v133 + 14) = v143;
    *(v133 + 22) = 2080;
    v144 = sub_1DA940984();
    v146 = sub_1DA7AE6E8(v144, v145, v216);

    *(v133 + 24) = v146;
    *(v133 + 32) = 2080;
    v147 = v208;
    v148 = &v208[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v150 = *(v148 + 1);
    v214 = Strong;
    v215 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
    v151 = sub_1DA940A74();
    v153 = sub_1DA7AE6E8(v151, v152, v216);

    *(v133 + 34) = v153;
    v154 = v192;
    _os_log_impl(&dword_1DA7A9000, v192, v206, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s newURL: %s metadata: %s sending to: %s", v133, 0x2Au);
    v155 = v193;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v155, -1, -1);
    v156 = v133;
    v157 = v205;
    v88 = v211;
    MEMORY[0x1E12739F0](v156, -1, -1);

    v158 = v147;
  }

  else
  {

    v57(v203, v7);
    v57(v202, v7);
    v158 = v208;
    v157 = v205;
  }

  v159 = &v158[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
  v160 = swift_unknownObjectWeakLoadStrong();
  v161 = v201;
  v162 = v204;
  if (v160)
  {
    v163 = *(v159 + 1);
    v164 = swift_getObjectType();
    (*(v163 + 24))(v157, v194, v195, v79, v78, v210, v162, v164, v163);
    swift_unknownObjectRelease();
  }

  v211 = v159;

  v165 = v199;
  v166 = v209;
  v167 = v197;
  v197(v199, v88, v209);
  v167(v161, v157, v166);

  v168 = v208;
  v169 = sub_1DA940584();
  v170 = sub_1DA940F34();

  if (os_log_type_enabled(v169, v170))
  {
    v171 = v161;
    v172 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v216[0] = v210;
    *v172 = 136315906;
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    LODWORD(v208) = v170;
    v173 = sub_1DA941614();
    v174 = v165;
    v176 = v175;
    v57(v174, v166);
    v177 = sub_1DA7AE6E8(v173, v176, v216);

    *(v172 + 4) = v177;
    *(v172 + 12) = 2080;
    v178 = sub_1DA941614();
    v180 = v179;
    v57(v171, v166);
    v181 = sub_1DA7AE6E8(v178, v180, v216);

    *(v172 + 14) = v181;
    *(v172 + 22) = 2080;
    v182 = sub_1DA940984();
    v184 = sub_1DA7AE6E8(v182, v183, v216);

    *(v172 + 24) = v184;
    *(v172 + 32) = 2080;
    v185 = v211;
    v186 = swift_unknownObjectWeakLoadStrong();
    v187 = *(v185 + 1);
    v214 = v186;
    v215 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
    v188 = sub_1DA940A74();
    v190 = sub_1DA7AE6E8(v188, v189, v216);

    *(v172 + 34) = v190;
    _os_log_impl(&dword_1DA7A9000, v169, v208, "UserNotificationsIDSCloudReceiver dispatchAttachment(incomingResourceAt): %s DONE! newURL: %s metadata: %s sending to: %s", v172, 0x2Au);
    v191 = v210;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v191, -1, -1);
    MEMORY[0x1E12739F0](v172, -1, -1);

    v57(v205, v166);
  }

  else
  {

    v57(v161, v166);
    v57(v165, v166);
    v57(v157, v166);
  }
}

void sub_1DA9152A4(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6, void *a7)
{
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA9405A4();
  __swift_project_value_buffer(v13, qword_1EE11AD30);
  v14 = a2;
  v15 = a1;
  sub_1DA915D8C(a3, a4);
  v16 = a7;

  v17 = sub_1DA940584();
  v18 = sub_1DA940F34();

  sub_1DA852CB0(a3, a4);
  v43 = v16;

  v44 = v18;
  v19 = v18;
  v20 = v17;
  if (os_log_type_enabled(v17, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136316162;
    v23 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
    v24 = sub_1DA940A74();
    v26 = sub_1DA7AE6E8(v24, v25, &v46);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
    v28 = sub_1DA940A74();
    v30 = sub_1DA7AE6E8(v28, v29, &v46);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    sub_1DA915D8C(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6958, &qword_1DA960370);
    v31 = sub_1DA940A74();
    v33 = sub_1DA7AE6E8(v31, v32, &v46);

    *(v21 + 24) = v33;
    *(v21 + 32) = 2080;
    v34 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v35 = sub_1DA940A74();
    v37 = sub_1DA7AE6E8(v35, v36, &v46);

    *(v21 + 34) = v37;
    *(v21 + 42) = 2080;
    v38 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73A8, &unk_1DA963C08);
    v39 = sub_1DA940A74();
    v41 = sub_1DA7AE6E8(v39, v40, &v46);

    *(v21 + 44) = v41;
    _os_log_impl(&dword_1DA7A9000, v20, v44, "UserNotificationsIDSCloudReceiver service: %s account: %s data: %s fromID: %s context: %s", v21, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);

    v42 = a3;
  }

  else
  {

    v42 = a3;
    v34 = a5;
  }

  if (a4 >> 60 == 15)
  {
    __break(1u);
  }

  else if (a6)
  {
    sub_1DA915630(v42, a4, v34, a6);
    return;
  }

  __break(1u);
}

void sub_1DA915630(uint64_t a1, NSObject *a2, uint64_t a3, NSObject *a4)
{
  v44 = a2;
  v42 = type metadata accessor for UserNotificationsCloudRecord(0);
  v8 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v41 - v15);
  v43 = v4;
  v17 = *(v4 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties);
  v18 = off_1F5637B10;
  type metadata accessor for RemoteNotificationsProperties();
  if (v18())
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    __swift_project_value_buffer(v19, qword_1EE11AD30);

    v20 = sub_1DA940584();
    v21 = sub_1DA940F34();

    v22 = os_log_type_enabled(v20, v21);
    v41 = a3;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = a4;
      v26 = v24;
      v45 = v24;
      *v23 = 136315138;
      v27 = a3;
      v28 = v25;
      *(v23 + 4) = sub_1DA7AE6E8(v27, v25, &v45);
      _os_log_impl(&dword_1DA7A9000, v20, v21, "UserNotificationsIDSCloudReceiver dispatch(data): fromID: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12739F0](v26, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    else
    {
      v28 = a4;
    }

    sub_1DA9129D0(a1, v44, 0, 1, v16);
    sub_1DA916AF0(v16, v14, type metadata accessor for UserNotificationsCloudRecord);
    v33 = sub_1DA940584();
    v34 = sub_1DA940F34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v44 = v28;
      v36 = v47;
      *v35 = 136315138;
      sub_1DA916AF0(v14, v11, type metadata accessor for UserNotificationsCloudRecord);
      v45 = 0;
      v46 = 0xE000000000000000;
      MEMORY[0x1E1271BD0](*v11, v11[1]);
      MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
      sub_1DA8D346C(v11 + *(v42 + 20));
      v37 = v45;
      v38 = v46;
      sub_1DA85758C(v14, type metadata accessor for UserNotificationsCloudRecord);
      sub_1DA85758C(v11, type metadata accessor for UserNotificationsCloudRecord);
      v39 = sub_1DA7AE6E8(v37, v38, &v47);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1DA7A9000, v33, v34, "UserNotificationsIDSCloudReceiver dispatch(data): %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v40 = v36;
      v28 = v44;
      MEMORY[0x1E12739F0](v40, -1, -1);
      MEMORY[0x1E12739F0](v35, -1, -1);
    }

    else
    {

      sub_1DA85758C(v14, type metadata accessor for UserNotificationsCloudRecord);
    }

    sub_1DA915DA0(v16, v41, v28);
    sub_1DA85758C(v16, type metadata accessor for UserNotificationsCloudRecord);
  }

  else
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v29 = sub_1DA9405A4();
    __swift_project_value_buffer(v29, qword_1EE11AD30);
    v44 = sub_1DA940584();
    v30 = sub_1DA940F14();
    if (os_log_type_enabled(v44, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DA7A9000, v44, v30, "UserNotificationsIDSCloudReceiver dispatch(data): !isActive - skipping", v31, 2u);
      MEMORY[0x1E12739F0](v31, -1, -1);
    }

    v32 = v44;
  }
}

uint64_t sub_1DA915D8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA841874(a1, a2);
  }

  return a1;
}

void sub_1DA915DA0(Swift::String *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AlertCoordinationMessage(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v136[-v12];
  v14 = type metadata accessor for CloudAction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v136[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for UserNotificationsCloudRecord(0);
  sub_1DA916AF0(a1 + *(v18 + 20), v17, type metadata accessor for CloudAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v109 = *v17;
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v110 = sub_1DA9405A4();
      __swift_project_value_buffer(v110, qword_1EE11AD30);
      v111 = v3;
      v112 = v109;
      v113 = sub_1DA940584();
      v114 = sub_1DA940F34();

      v115 = &unk_1ECBD7000;
      if (os_log_type_enabled(v113, v114))
      {
        v116 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v143 = v140;
        *v116 = 136315394;
        v117 = v112;
        v118 = [v117 description];
        v119 = sub_1DA940A14();
        v121 = v120;

        v115 = &unk_1ECBD7000;
        v122 = sub_1DA7AE6E8(v119, v121, &v143);

        *(v116 + 4) = v122;
        *(v116 + 12) = 2080;
        v123 = &v111[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
        Strong = swift_unknownObjectWeakLoadStrong();
        v125 = *(v123 + 1);
        *&v147 = Strong;
        *(&v147 + 1) = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
        v126 = sub_1DA940A74();
        v128 = sub_1DA7AE6E8(v126, v127, &v143);

        *(v116 + 14) = v128;
        _os_log_impl(&dword_1DA7A9000, v113, v114, "UserNotificationsIDSCloudReceiver removeNotification: %s notificationDelegate: %s", v116, 0x16u);
        v129 = v140;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v129, -1, -1);
        MEMORY[0x1E12739F0](v116, -1, -1);
      }

      v130 = &v111[v115[107]];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v131 = *(v130 + 1);
        ObjectType = swift_getObjectType();
        (*(v131 + 16))(v112, a1->_countAndFlagsBits, a1->_object, ObjectType, v131);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = *v17;
      v43 = *(v17 + 1);
      v45 = *(v17 + 2);
      v44 = *(v17 + 3);
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v46 = sub_1DA9405A4();
      __swift_project_value_buffer(v46, qword_1EE11AD30);
      v47 = v42;
      sub_1DA915D8C(v45, v44);
      v48 = v3;
      v49 = sub_1DA940584();
      v50 = sub_1DA940F34();

      sub_1DA852CB0(v45, v44);
      v51 = os_log_type_enabled(v49, v50);
      v140 = v47;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v143 = v138;
        *v52 = 136315650;
        v53 = v47;
        v54 = [v53 description];
        v55 = sub_1DA940A14();
        v137 = v50;
        v56 = v55;
        v139 = v43;
        v58 = v57;

        v59 = sub_1DA7AE6E8(v56, v58, &v143);

        *(v52 + 4) = v59;
        *(v52 + 12) = 2080;
        *&v147 = v45;
        *(&v147 + 1) = v44;
        sub_1DA915D8C(v45, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6958, &qword_1DA960370);
        v60 = sub_1DA940A74();
        v62 = sub_1DA7AE6E8(v60, v61, &v143);

        *(v52 + 14) = v62;
        *(v52 + 22) = 2080;
        v63 = &v48[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
        v64 = swift_unknownObjectWeakLoadStrong();
        v65 = *(v63 + 1);
        *&v147 = v64;
        *(&v147 + 1) = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D8, &unk_1DA963C30);
        v66 = sub_1DA940A74();
        v68 = sub_1DA7AE6E8(v66, v67, &v143);

        *(v52 + 24) = v68;
        v43 = v139;
        _os_log_impl(&dword_1DA7A9000, v49, v137, "UserNotificationsIDSCloudReceiver addNotification: %s communicationImageData: %s notificationDelegate: %s", v52, 0x20u);
        v69 = v138;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v69, -1, -1);
        MEMORY[0x1E12739F0](v52, -1, -1);
      }

      v70 = &v48[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v71 = *(v70 + 1);
        v72 = swift_getObjectType();
        countAndFlagsBits = a1->_countAndFlagsBits;
        object = a1->_object;
        v75 = v140;
        (*(v71 + 8))(v140, countAndFlagsBits, object, v43, v45, v44, v72, v71);

        sub_1DA852CB0(v45, v44);
        swift_unknownObjectRelease();
      }

      else
      {

        sub_1DA852CB0(v45, v44);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v76._rawValue = *v17;
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v77 = sub_1DA9405A4();
    __swift_project_value_buffer(v77, qword_1EE11AD30);
    v78 = v3;

    v79 = sub_1DA940584();
    v80 = sub_1DA940F34();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v143 = v82;
      *v81 = 136315394;
      v83 = sub_1DA916B58();
      v84 = MEMORY[0x1E1271CD0](v76._rawValue, v83);
      v86 = sub_1DA7AE6E8(v84, v85, &v143);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2080;
      v87 = &v78[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_categoriesDelegate];
      v88 = swift_unknownObjectWeakLoadStrong();
      v89 = *(v87 + 1);
      *&v147 = v88;
      *(&v147 + 1) = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73D0, &qword_1DA963C28);
      v90 = sub_1DA940A74();
      v92 = sub_1DA7AE6E8(v90, v91, &v143);

      *(v81 + 14) = v92;
      _os_log_impl(&dword_1DA7A9000, v79, v80, "UserNotificationsIDSCloudReceiver updateCategories: %s delegate: %s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v82, -1, -1);
      MEMORY[0x1E12739F0](v81, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      UserNotificationsCloudReceiver.receiveCategory(categories:bundleIdentifier:)(v76, *a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v20 = *(v17 + 1);
    v147 = *v17;
    v148 = v20;
    v21 = *(v17 + 3);
    v149 = *(v17 + 2);
    v150 = v21;
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE11AD30);
    v23 = v3;
    sub_1DA848A24(&v147, &v143);
    v24 = sub_1DA940584();
    v25 = sub_1DA940F34();
    sub_1DA84A040(&v147);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v142 = v27;
      *v26 = 136315394;
      v143 = v147;
      v144 = v148;
      v145 = v149;
      v146 = v150;
      sub_1DA848A24(&v147, v141);
      v28 = sub_1DA940A74();
      v30 = sub_1DA7AE6E8(v28, v29, &v142);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = &v23[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate];
      v32 = swift_unknownObjectWeakLoadStrong();
      v33 = *(v31 + 1);
      *&v143 = v32;
      *(&v143 + 1) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73C0, &qword_1DA963C20);
      v34 = sub_1DA940A74();
      v36 = sub_1DA7AE6E8(v34, v35, &v142);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_1DA7A9000, v24, v25, "UserNotificationsIDSCloudReceiver performAction: %sdelegate: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v27, -1, -1);
      MEMORY[0x1E12739F0](v26, -1, -1);
    }

    v37 = &v23[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate];
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = *(v37 + 1);
      v40 = v38;
      v41 = swift_getObjectType();
      v141[0] = v40;
      v143 = v147;
      v144 = v148;
      v145 = v149;
      v146 = v150;
      (*(v39 + 8))(&v143, v41, v39);
      swift_unknownObjectRelease();
    }

    sub_1DA84A040(&v147);
  }

  else
  {
    sub_1DA916BA4(v17, v13, type metadata accessor for AlertCoordinationMessage);
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v93 = sub_1DA9405A4();
    __swift_project_value_buffer(v93, qword_1EE11AD30);
    sub_1DA916AF0(v13, v11, type metadata accessor for AlertCoordinationMessage);
    v94 = v3;
    v95 = sub_1DA940584();
    v96 = sub_1DA940F34();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *&v143 = v140;
      *v97 = 136315394;
      v98 = AlertCoordinationMessage.description.getter();
      v100 = v99;
      sub_1DA85758C(v11, type metadata accessor for AlertCoordinationMessage);
      v101 = sub_1DA7AE6E8(v98, v100, &v143);

      *(v97 + 4) = v101;
      *(v97 + 12) = 2080;
      v102 = &v94[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate];
      v103 = swift_unknownObjectWeakLoadStrong();
      v104 = *(v102 + 1);
      *&v147 = v103;
      *(&v147 + 1) = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73B8, &qword_1DA963C18);
      v105 = sub_1DA940A74();
      v107 = sub_1DA7AE6E8(v105, v106, &v143);

      *(v97 + 14) = v107;
      _os_log_impl(&dword_1DA7A9000, v95, v96, "UserNotificationsIDSCloudReceiver alertCoordination: %s delegate: %s", v97, 0x16u);
      v108 = v140;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v108, -1, -1);
      MEMORY[0x1E12739F0](v97, -1, -1);
    }

    else
    {

      sub_1DA85758C(v11, type metadata accessor for AlertCoordinationMessage);
    }

    v133 = &v94[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v134 = *(v133 + 1);
      v135 = swift_getObjectType();
      (*(v134 + 8))(v13, a2, a3, v135, v134);
      swift_unknownObjectRelease();
    }

    sub_1DA85758C(v13, type metadata accessor for AlertCoordinationMessage);
  }
}

uint64_t sub_1DA916AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DA916B58()
{
  result = qword_1EE114D80;
  if (!qword_1EE114D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE114D80);
  }

  return result;
}

uint64_t sub_1DA916BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA916C0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v64 = a5;
  v13 = sub_1DA93F964();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1EE11AD30);
  v67 = a3;
  sub_1DA9171A4(a3, v24);

  v26 = a1;
  v27 = a2;
  v65 = a2;
  v28 = v27;

  v29 = sub_1DA940584();
  v30 = sub_1DA940F34();
  v68 = a4;

  v63 = v30;
  if (os_log_type_enabled(v29, v30))
  {
    v60 = v29;
    v61 = v7;
    v31 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v73 = v59;
    *v31 = 136316162;
    v71 = a1;
    v32 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7388, &qword_1DA963BF8);
    v33 = sub_1DA940A74();
    v35 = sub_1DA7AE6E8(v33, v34, &v73);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v71 = v65;
    v36 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7390, &qword_1DA963C00);
    v37 = sub_1DA940A74();
    v39 = sub_1DA7AE6E8(v37, v38, &v73);

    *(v31 + 14) = v39;
    *(v31 + 22) = 2080;
    sub_1DA9171A4(v24, v22);
    v40 = v69;
    v41 = v70;
    result = (*(v69 + 48))(v22, 1, v70);
    if (result == 1)
    {
      goto LABEL_12;
    }

    v43 = v62;
    (*(v40 + 32))(v62, v22, v41);
    sub_1DA917214(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
    v44 = sub_1DA941614();
    v46 = v45;
    (*(v40 + 8))(v43, v41);
    sub_1DA7BA120(v24, &qword_1ECBD6310, &unk_1DA95F3B0);
    v47 = sub_1DA7AE6E8(v44, v46, &v73);

    *(v31 + 24) = v47;
    *(v31 + 32) = 2080;
    v71 = v64;
    v72 = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
    v48 = sub_1DA940A74();
    v50 = sub_1DA7AE6E8(v48, v49, &v73);

    *(v31 + 34) = v50;
    *(v31 + 42) = 2080;
    v51 = v68;
    v71 = v68;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD73F0, qword_1DA963C40);
    v52 = sub_1DA940A74();
    v54 = sub_1DA7AE6E8(v52, v53, &v73);

    *(v31 + 44) = v54;
    v55 = v60;
    _os_log_impl(&dword_1DA7A9000, v60, v63, "UserNotificationsIDSCloudReceiver service: %s account: %s incomingResourceAt: %s fromID: %s metadata: %s", v31, 0x34u);
    v56 = v59;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v56, -1, -1);
    MEMORY[0x1E12739F0](v31, -1, -1);
  }

  else
  {

    sub_1DA7BA120(v24, &qword_1ECBD6310, &unk_1DA95F3B0);
    v51 = v68;
    v40 = v69;
    v41 = v70;
  }

  v57 = v66;
  sub_1DA9171A4(v67, v66);
  result = (*(v40 + 48))(v57, 1, v41);
  if (result == 1)
  {
    __break(1u);
  }

  else if (v51)
  {
    sub_1DA913940(v57, v51);
    return (*(v40 + 8))(v57, v41);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DA9171A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA917214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA91725C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7438, &qword_1DA963D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC21UserNotificationsCore5Queue__task;
  v8 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore5Queue__task);
  sub_1DA940DE4();
  v9 = OBJC_IVAR____TtC21UserNotificationsCore5Queue__streamContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC21UserNotificationsCore5Queue__streamContinuation, v2);
  sub_1DA940D64();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10((v1 + v9), v2);
  v11 = *(v1 + v7);

  v12 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore5Queue_name + 8);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for Queue()
{
  result = qword_1ECBD7410;
  if (!qword_1ECBD7410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA917420()
{
  sub_1DA9174D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA9174D4()
{
  if (!qword_1ECBD7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7428, &qword_1DA963C88);
    v0 = sub_1DA940D74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBD7420);
    }
  }
}

uint64_t sub_1DA917538()
{
  v1 = *v0;
  sub_1DA941364();
  MEMORY[0x1E1271BD0](60, 0xE100000000000000);
  v2 = sub_1DA941884();
  MEMORY[0x1E1271BD0](v2);

  MEMORY[0x1E1271BD0](32, 0xE100000000000000);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0x656D616E207B203ELL, 0xEC00000022203D20);
  MEMORY[0x1E1271BD0](*(v0 + OBJC_IVAR____TtC21UserNotificationsCore5Queue_name), *(v0 + OBJC_IVAR____TtC21UserNotificationsCore5Queue_name + 8));
  MEMORY[0x1E1271BD0](0x206B736174202C22, 0xEA0000000000203DLL);
  v4 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore5Queue__task);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7430, &qword_1DA963CF8);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0xD000000000000011, 0x80000001DA9566F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7438, &qword_1DA963D00);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1DA917740()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DA9177A4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1DA917A2C;
  }

  else
  {
    v6 = sub_1DA9178D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DA9178D0()
{
  v1 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 16), *(v0 + 24), *(v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v14 = *(v0 + 104);
  v15 = *(v0 + 96);
  v16 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = *(v0 + 56);
  v19 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DA917A2C()
{
  v50 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 24), *(v0 + 112));
  v4 = v1;
  v5 = sub_1DA940584();
  v6 = sub_1DA940F14();

  if (os_log_type_enabled(v5, v6))
  {
    v45 = *(v0 + 232);
    v47 = *(v0 + 248);
    v7 = *(v0 + 192);
    v8 = *(v0 + 112);
    v43 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49 = v11;
    *v9 = 136446466;
    sub_1DA7BB52C();
    v12 = sub_1DA941614();
    v14 = v13;
    v45(v7, v8);
    v15 = sub_1DA7AE6E8(v12, v14, &v49);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v47;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "%{public}s Failed to remove index, error=%{public}@", v9, 0x16u);
    sub_1DA7BA120(v10, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 192);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);

    v18(v19, v20);
  }

  v22 = *(v0 + 248);
  v24 = *(v0 + 16);
  v23 = *(v0 + 24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  *(v24 + 24) = &type metadata for IntelligenceActor.ServiceError;
  *(v24 + 32) = sub_1DA91A058();
  *v24 = 0;
  sub_1DA93FF14();
  sub_1DA93FF34();

  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v31 = *(v0 + 176);
  v30 = *(v0 + 184);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v35 = *(v0 + 144);
  v34 = *(v0 + 152);
  v36 = *(v0 + 128);
  v37 = *(v0 + 136);
  v40 = *(v0 + 104);
  v41 = *(v0 + 96);
  v42 = *(v0 + 88);
  v44 = *(v0 + 64);
  v46 = *(v0 + 56);
  v48 = *(v0 + 48);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1DA917DA0(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v4;
  v9 = *(*v4 + 264);
  v10 = *v4;
  *(v8 + 272) = v3;

  v11 = *(v8 + 40);
  if (v3)
  {
    v12 = sub_1DA918F20;
  }

  else
  {
    *(v8 + 344) = a3;
    *(v8 + 280) = a2;
    *(v8 + 288) = a1;
    v12 = sub_1DA917EF0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1DA917EF0()
{
  v113 = v0;
  v108 = *(v0 + 344);
  v1 = *(v0 + 288);
  v101 = *(v0 + 280);
  v2 = qword_1EE110E48;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 160);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 24);
  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE11AD90);
  v104 = *(v5 + 16);
  v104(v4, v7, v6);
  v9 = v3;
  v10 = sub_1DA940584();
  v11 = sub_1DA940F34();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 160);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v99 = v9;
  if (v12)
  {
    v16 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v112 = v96;
    *v16 = 136446466;
    sub_1DA7BB52C();
    v17 = v1;
    v18 = sub_1DA941614();
    v20 = v19;
    v93 = *(v14 + 8);
    v93(v13, v15);
    v21 = v18;
    v1 = v17;
    v9 = v99;
    v22 = sub_1DA7AE6E8(v21, v20, &v112);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v101;
    LODWORD(v14) = v108;
    v24 = sub_1DA93B7DC(v1, v101 & 0xFFFFFFFF000000FFLL, v108);
    v26 = v25;

    v27 = sub_1DA7AE6E8(v24, v26, &v112);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "%{public}s Got inference %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v96, -1, -1);
    MEMORY[0x1E12739F0](v16, -1, -1);
  }

  else
  {

    v93 = *(v14 + 8);
    v93(v13, v15);
    LODWORD(v14) = v108;
    v23 = v101;
  }

  v28 = *(v0 + 40);
  v29 = *(v0 + 24);
  v30 = sub_1DA940014();
  v32 = sub_1DA9193E8(v30, v31);

  if (v32)
  {
    v97 = HIDWORD(v23);
    v33 = v9;
  }

  else
  {
    v1 = 0;
    LODWORD(v97) = 5;
  }

  if ((v32 & 0x100) != 0)
  {
    v34 = v23;
  }

  else
  {
    v34 = 0;
  }

  if ((v32 & 0x100) != 0)
  {
    v14 = v14;
  }

  else
  {
    v14 = 5;
  }

  v104(*(v0 + 152), *(v0 + 24), *(v0 + 112));
  v35 = v1;
  v36 = sub_1DA940584();
  v37 = sub_1DA940F34();
  v102 = v35;

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 152);
  v40 = v1;
  v42 = *(v0 + 112);
  v41 = *(v0 + 120);
  v109 = v34;
  v95 = v14;
  if (v38)
  {
    v92 = v37;
    log = v36;
    v43 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v112 = v91;
    *v43 = 136447746;
    sub_1DA7BB52C();
    v44 = sub_1DA941614();
    v46 = v45;
    v93(v39, v42);
    v47 = sub_1DA7AE6E8(v44, v46, &v112);

    *(v43 + 4) = v47;
    *(v43 + 12) = 1026;
    *(v43 + 14) = v32 & 1;
    *(v43 + 18) = 1026;
    *(v43 + 20) = (v32 & 0x100) >> 8;
    *(v43 + 24) = 1026;
    *(v43 + 26) = v97;
    if (v40)
    {
      v48 = 49;
    }

    else
    {
      v48 = 48;
    }

    *(v43 + 30) = 2082;
    v49 = sub_1DA7AE6E8(v48, 0xE100000000000000, &v112);

    *(v43 + 32) = v49;
    *(v43 + 40) = 1026;
    *(v43 + 42) = v14;
    *(v43 + 46) = 1026;
    v34 = v109;
    v50 = v109 != 2 && (v109 & 1) != 0;
    *(v43 + 48) = v50;
    _os_log_impl(&dword_1DA7A9000, log, v92, "%{public}s canSummarize %{BOOL,public}d, canPrioritize %{BOOL,public}d, summaryStatus: %{public}u, hasSummary: %{public}s, priorityStatus: %{public}u, priority: %{BOOL,public}d", v43, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v91, -1, -1);
    MEMORY[0x1E12739F0](v43, -1, -1);
  }

  else
  {

    v93(v39, v42);
  }

  *(*(v0 + 256) + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight) = v34;
  if (v40)
  {
    v51 = [v102 string];
    sub_1DA940A14();

    v52 = sub_1DA940AC4();
  }

  else
  {
    v52 = 0;
  }

  v53 = v40 == 0;
  v54 = *(v0 + 256);
  v55 = *(v0 + 144);
  v57 = *(v0 + 104);
  v56 = *(v0 + 112);
  v58 = *(v0 + 96);
  v60 = *(v0 + 72);
  v59 = *(v0 + 80);
  v61 = *(v0 + 64);
  v62 = *(v0 + 40);
  v63 = *(v0 + 24);
  v64 = v54 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength;
  *v64 = v52;
  *(v64 + 8) = v53;
  v65 = v54 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus;
  *v65 = v97;
  *(v65 + 4) = 0;
  v66 = v54 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus;
  *v66 = v95;
  *(v66 + 4) = 0;
  v104(v55, v63, v56);
  LOBYTE(v112) = 0;
  sub_1DA91995C(v95, v109, v57);
  v67 = sub_1DA9402E4();
  (*(*(v67 - 8) + 56))(v57, 0, 1, v67);
  sub_1DA93FF44();
  LOBYTE(v112) = 0;
  sub_1DA919BF4(v97, v58);
  v68 = sub_1DA9402D4();
  (*(*(v68 - 8) + 56))(v58, 0, 1, v68);
  sub_1DA93FF24();
  sub_1DA940044();
  v69 = (*(v59 + 48))(v61, 1, v60);
  v70 = *(v0 + 256);
  v71 = *(v0 + 144);
  if (v69 == 1)
  {
    v72 = *(v0 + 72);
    v73 = *(v0 + 80);
    v74 = *(v0 + 48);
    sub_1DA7BA120(*(v0 + 64), &qword_1ECBD4E08, &qword_1DA958750);
    UNCCatchMeHighlights();
    v75 = v102;
    sub_1DA93FFC4();
    (*(v73 + 56))(v74, 0, 1, v72);
    sub_1DA940054();
  }

  else
  {
    v76 = *(v0 + 80);
    v77 = *(v0 + 88);
    v106 = *(v0 + 72);
    v78 = *(v0 + 56);
    (*(v76 + 32))(v77, *(v0 + 64));
    sub_1DA93FFD4();
    sub_1DA93FFE4();
    sub_1DA93FFB4();
    UNCCatchMeHighlights();
    v110 = v102;
    sub_1DA93FFC4();
    (*(v76 + 56))(v78, 0, 1, v106);
    sub_1DA940054();

    (*(v76 + 8))(v77, v106);
  }

  (*(*(v0 + 120) + 32))(*(v0 + 16), *(v0 + 144), *(v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v80 = *(v0 + 192);
  v79 = *(v0 + 200);
  v82 = *(v0 + 176);
  v81 = *(v0 + 184);
  v84 = *(v0 + 160);
  v83 = *(v0 + 168);
  v86 = *(v0 + 144);
  v85 = *(v0 + 152);
  v87 = *(v0 + 128);
  v88 = *(v0 + 136);
  v98 = *(v0 + 104);
  v100 = *(v0 + 96);
  v103 = *(v0 + 88);
  v105 = *(v0 + 64);
  v107 = *(v0 + 56);
  v111 = *(v0 + 48);

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1DA918894()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1DA918B2C;
  }

  else
  {
    v6 = sub_1DA9189C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DA9189C0()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[32];
  v4 = v0[14];
  v6 = v0[2];
  v5 = v0[3];

  v2(v6, v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[20];
  v11 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v16 = v0[17];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[8];
  v23 = v0[7];
  v24 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DA918B2C()
{
  v52 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  (*(v0 + 304))(*(v0 + 136), *(v0 + 24), *(v0 + 112));
  v4 = v1;
  v5 = sub_1DA940584();
  v6 = sub_1DA940F14();

  if (os_log_type_enabled(v5, v6))
  {
    v47 = *(v0 + 320);
    v49 = *(v0 + 336);
    v7 = *(v0 + 136);
    v8 = *(v0 + 112);
    v45 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51 = v11;
    *v9 = 136446466;
    sub_1DA7BB52C();
    v12 = sub_1DA941614();
    v14 = v13;
    v47(v7, v8);
    v15 = sub_1DA7AE6E8(v12, v14, &v51);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v49;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "%{public}s Error while indexing %@", v9, 0x16u);
    sub_1DA7BA120(v10, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 320);
    v19 = *(v0 + 136);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);

    v18(v19, v20);
  }

  v22 = *(v0 + 336);
  v23 = *(v0 + 256);
  v24 = *(v0 + 16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  *(v24 + 24) = &type metadata for IntelligenceActor.ServiceError;
  *(v24 + 32) = sub_1DA91A058();

  *v24 = 3;
  v28 = sub_1DA9402D4();
  (*(*(v28 - 8) + 56))(v24 + v26, 1, 1, v28);
  v29 = sub_1DA9402E4();
  (*(*(v29 - 8) + 56))(v24 + v27, 1, 1, v29);
  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v31 = *(v0 + 192);
  v30 = *(v0 + 200);
  v33 = *(v0 + 176);
  v32 = *(v0 + 184);
  v35 = *(v0 + 160);
  v34 = *(v0 + 168);
  v37 = *(v0 + 144);
  v36 = *(v0 + 152);
  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v42 = *(v0 + 104);
  v43 = *(v0 + 96);
  v44 = *(v0 + 88);
  v46 = *(v0 + 64);
  v48 = *(v0 + 56);
  v50 = *(v0 + 48);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1DA918F20()
{
  v57 = v0;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[3];
  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11AD90);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1DA940584();
  v9 = sub_1DA940F34();

  if (os_log_type_enabled(v8, v9))
  {
    v52 = v0[34];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v13 = 136446466;
    sub_1DA7BB52C();
    v15 = sub_1DA941614();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1DA7AE6E8(v15, v17, &v56);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v52;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "%{public}s Notification inference failed with error: %@", v13, 0x16u);
    sub_1DA7BA120(v14, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1E12739F0](v54, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[34];
  v25 = v0[32];
  v26 = v0[2];
  sub_1DA8214C8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  v28 = *(v27 + 48);
  v29 = *(v27 + 64);
  *(v26 + 24) = &type metadata for IntelligenceActor.ServiceError;
  *(v26 + 32) = sub_1DA91A058();

  *v26 = 2;
  v30 = *MEMORY[0x1E69DF1D0];
  v31 = sub_1DA9402D4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v26 + v28, v30, v31);
  (*(v32 + 56))(v26 + v28, 0, 1, v31);
  v33 = *MEMORY[0x1E69DF200];
  v34 = sub_1DA9402E4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26 + v29, v33, v34);
  (*(v35 + 56))(v26 + v29, 0, 1, v34);
  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v37 = v0[24];
  v36 = v0[25];
  v39 = v0[22];
  v38 = v0[23];
  v41 = v0[20];
  v40 = v0[21];
  v43 = v0[18];
  v42 = v0[19];
  v44 = v0[16];
  v45 = v0[17];
  v48 = v0[13];
  v49 = v0[12];
  v50 = v0[11];
  v51 = v0[8];
  v53 = v0[7];
  v55 = v0[6];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1DA9193E8(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 128);
  v6 = off_1F563AD40[0];
  type metadata accessor for NotificationSettingsManager();
  v7 = v6();
  if (!v7)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v36 = sub_1DA9405A4();
    __swift_project_value_buffer(v36, qword_1EE11AD90);

    v8 = sub_1DA940584();
    v37 = sub_1DA940F14();

    if (os_log_type_enabled(v8, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1DA7AE6E8(a1, a2, &v50);
      _os_log_impl(&dword_1DA7A9000, v8, v37, "[%{public}s] Could not determine system summarization and prioritization setting.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E12739F0](v39, -1, -1);
      MEMORY[0x1E12739F0](v38, -1, -1);
    }

    goto LABEL_41;
  }

  v8 = v7;
  v9 = [v7 summarizationSetting];
  v10 = [v8 prioritizationSetting];
  v11 = off_1F563AD38[0]();
  if (!v11)
  {
    if (qword_1EE110E48 != -1)
    {
      swift_once();
    }

    v40 = sub_1DA9405A4();
    __swift_project_value_buffer(v40, qword_1EE11AD90);

    v41 = sub_1DA940584();
    v42 = sub_1DA940F14();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_1DA7AE6E8(a1, a2, &v50);
      _os_log_impl(&dword_1DA7A9000, v41, v42, "[%{public}s] Could not determine source summarization and prioritization setting.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1E12739F0](v44, -1, -1);
      MEMORY[0x1E12739F0](v43, -1, -1);
    }

LABEL_41:
    v16 = 0;
    goto LABEL_42;
  }

  v12 = v11;
  v13 = [v11 notificationSettings];
  v14 = [v13 summarizationSetting];

  v48 = v14;
  v15 = v9 == 2 && v14 == 2;
  v16 = v15;
  v17 = [v12 notificationSettings];
  v18 = [v17 prioritizationSetting];

  v49 = v10;
  v15 = v10 == 2;
  v19 = v18;
  v21 = v15 && v18 == 2;
  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE11AD90);

  v23 = sub_1DA940584();
  v24 = sub_1DA940F34();

  if (!os_log_type_enabled(v23, v24))
  {

    if (v21)
    {
LABEL_44:
      v35 = 256;
      return v35 | v16;
    }

LABEL_42:
    v35 = 0;
    return v35 | v16;
  }

  v47 = v21;
  v25 = a1;
  v26 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v50 = v46;
  *v26 = 136447234;
  *(v26 + 4) = sub_1DA7AE6E8(v25, a2, &v50);
  *(v26 + 12) = 2082;
  if (v9 == 2)
  {
    v27 = 49;
  }

  else
  {
    v27 = 48;
  }

  v28 = sub_1DA7AE6E8(v27, 0xE100000000000000, &v50);

  *(v26 + 14) = v28;
  *(v26 + 22) = 2082;
  if (v48 == 2)
  {
    v29 = 49;
  }

  else
  {
    v29 = 48;
  }

  v30 = sub_1DA7AE6E8(v29, 0xE100000000000000, &v50);

  *(v26 + 24) = v30;
  *(v26 + 32) = 2082;
  if (v49 == 2)
  {
    v31 = 49;
  }

  else
  {
    v31 = 48;
  }

  v32 = sub_1DA7AE6E8(v31, 0xE100000000000000, &v50);

  *(v26 + 34) = v32;
  *(v26 + 42) = 2082;
  if (v19 == 2)
  {
    v33 = 49;
  }

  else
  {
    v33 = 48;
  }

  v34 = sub_1DA7AE6E8(v33, 0xE100000000000000, &v50);

  *(v26 + 44) = v34;
  _os_log_impl(&dword_1DA7A9000, v23, v24, "%{public}s systemSummarization %{public}s, sourceSummarization %{public}s, systemPrioritization %{public}s, sourcePrioritization %{public}s,", v26, 0x34u);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v46, -1, -1);
  MEMORY[0x1E12739F0](v26, -1, -1);

  v35 = v47;
  if (v47)
  {
    goto LABEL_44;
  }

  return v35 | v16;
}

uint64_t sub_1DA91995C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60A8, &unk_1DA963DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  if ((a1 & 0x100000000) == 0)
  {
    switch(a1)
    {
      case 4:
        v13 = MEMORY[0x1E69DF1F0];
        goto LABEL_8;
      case 2:
        v13 = MEMORY[0x1E69DF200];
        goto LABEL_8;
      case 1:
        if (a2 == 2)
        {
          v10 = sub_1DA9402E4();
          v11 = *(v10 - 8);
          (*(v11 + 56))(v9, 1, 1, v10);
          return (*(v11 + 104))(a3, *MEMORY[0x1E69DF208], v10);
        }

        else
        {
          v17 = sub_1DA9402E4();
          v18 = *(v17 - 8);
          v19 = MEMORY[0x1E69DF1E0];
          if ((a2 & 1) == 0)
          {
            v19 = MEMORY[0x1E69DF1E8];
          }

          (*(*(v17 - 8) + 104))(v9, *v19, v17);
          sub_1DA9402E4();
          (*(v18 + 56))(v9, 0, 1, v17);
          return (*(v18 + 32))(a3, v9, v17);
        }
    }
  }

  v13 = MEMORY[0x1E69DF208];
LABEL_8:
  v14 = *v13;
  v15 = sub_1DA9402E4();
  v16 = *(*(v15 - 8) + 104);

  return v16(a3, v14, v15);
}

uint64_t sub_1DA919BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x100000000) != 0 || (a1 - 1) > 3)
  {
    v3 = MEMORY[0x1E69DF1D8];
  }

  else
  {
    v3 = qword_1E85D8228[(a1 - 1)];
  }

  v4 = *v3;
  v5 = sub_1DA9402D4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_1DA919C88()
{
  result = os_variant_has_internal_content();
  byte_1EE112FF0 = result;
  return result;
}

uint64_t sub_1DA919CB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA919CE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7440, &unk_1DA963DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_1DA9401A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UNCCatchMe();
  if (result)
  {
    if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
    {
      if (sub_1DA940014() == 0x6C7070612E6D6F63 && v10 == 0xEE0073616D632E65)
      {

        return 2;
      }

      else
      {
        v11 = sub_1DA941684();

        if (v11)
        {
          return 2;
        }

        else if (sub_1DA93FF74())
        {
          sub_1DA93FF54();
          if ((*(v5 + 48))(v3, 1, v4) == 1)
          {
            sub_1DA7BA120(v3, &unk_1ECBD7440, &unk_1DA963DD0);
            return 9;
          }

          else
          {
            (*(v5 + 32))(v8, v3, v4);
            if (sub_1DA940194())
            {
              (*(v5 + 8))(v8, v4);
              return 3;
            }

            else if (sub_1DA940174())
            {
              (*(v5 + 8))(v8, v4);
              return 4;
            }

            else
            {
              v12 = sub_1DA9401C4();
              if (v12 && (v13 = v12, v14 = [v12 isEligibleForIndexing], v13, (v14 & 1) == 0))
              {
                (*(v5 + 8))(v8, v4);
                return 7;
              }

              else
              {
                v15 = objc_opt_self();
                sub_1DA940014();
                v16 = sub_1DA940A04();

                v17 = [v15 applicationWithBundleIdentifier_];

                if ([v17 isHidden])
                {
                  (*(v5 + 8))(v8, v4);

                  return 8;
                }

                else
                {
                  v18 = [v17 isLocked];

                  (*(v5 + 8))(v8, v4);
                  if (v18)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }

        else
        {
          return 5;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1DA91A058()
{
  result = qword_1EE112FF8;
  if (!qword_1EE112FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE112FF8);
  }

  return result;
}

unint64_t sub_1DA91A0C0()
{
  result = qword_1EE113008;
  if (!qword_1EE113008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113008);
  }

  return result;
}

unint64_t sub_1DA91A114(uint64_t a1)
{
  *(a1 + 8) = sub_1DA91A0C0();
  result = sub_1DA91A144();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA91A144()
{
  result = qword_1EE113000;
  if (!qword_1EE113000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE113000);
  }

  return result;
}

id sub_1DA91A1AC()
{
  [*&v0[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationCoreServiceConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA91A2C4()
{
  v1 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA91B6BC;
  *(v3 + 24) = v2;
  v8[4] = sub_1DA8D2650;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DA88419C;
  v8[3] = &block_descriptor_36;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 configureConnection_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    [v1 activate];
  }

  return result;
}

void sub_1DA91A430(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v5 = [objc_opt_self() serviceInterface];
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1DA91B710;
  v15 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1DA7B00D0;
  v13 = &block_descriptor_42;
  v7 = _Block_copy(&v10);

  [a1 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1DA91B6C4;
  v15 = v8;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1DA7B00D0;
  v13 = &block_descriptor_46_1;
  v9 = _Block_copy(&v10);

  [a1 setInvalidationHandler_];
  _Block_release(v9);
}

void sub_1DA91A648()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1DA884758(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1DA91A814(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(v7 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v13 = [a3 BOOLValue];
  v14 = sub_1DA940A04();
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v17[4] = sub_1DA91B6B4;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DA91AA00;
  v17[3] = &block_descriptor_27_1;
  v16 = _Block_copy(v17);
  sub_1DA7B3DC0(a6);

  [v12 saveNotificationRecord:a1 targetRevisionNumber:a2 shouldRepost:v13 forBundleIdentifier:v14 withCompletionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1DA91A964(uint64_t result, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a3)
  {
    v5 = result;
    v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v7 = [v6 initWithUnsignedInteger_];
    a3(v7, a2);

    return sub_1DA7B5220(a3);
  }

  return result;
}

void sub_1DA91AA00(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1DA91AE94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v10 = sub_1DA940A04();
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DA7B1BFC;
    v11[3] = &block_descriptor_18;
    a4 = _Block_copy(v11);
  }

  [v9 setBadgeNumber:a1 forBundleIdentifier:v10 withCompletionHandler:a4];
  _Block_release(a4);
}

void sub_1DA91B070(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  v9 = [a1 integerValue];
  v10 = sub_1DA940A04();
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1DA7B1BFC;
    v11[3] = &block_descriptor_11;
    a4 = _Block_copy(v11);
  }

  [v8 setBadgeCount:v9 forBundleIdentifier:v10 withCompletionHandler:a4];
  _Block_release(a4);
}

void sub_1DA91B25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = *(v6 + OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository);
  if (a2)
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1DA940A04();
  if (a5)
  {
    v12[4] = a5;
    v12[5] = a6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1DA7B1BFC;
    v12[3] = &block_descriptor_24;
    a5 = _Block_copy(v12);
  }

  [v9 setBadgeString:v10 forBundleIdentifier:v11 withCompletionHandler:a5];
  _Block_release(a5);
}

id sub_1DA91B4E8(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;
  v5 = [v3 allBundleIdentifiers];
  if (!v5)
  {
    sub_1DA940BE4();
    v5 = sub_1DA940BD4();
  }

  return v5;
}

id sub_1DA91B5E4(char *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, unint64_t *a6, uint64_t *a7)
{
  v11 = *&a1[*a4];
  v12 = a1;
  v13 = [v11 *a5];
  if (!v13)
  {
    sub_1DA7AF3EC(0, a6, a7);
    sub_1DA940BE4();
    v13 = sub_1DA940BD4();
  }

  return v13;
}

unint64_t sub_1DA91B728()
{
  result = qword_1ECBD7470;
  if (!qword_1ECBD7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7470);
  }

  return result;
}

uint64_t sub_1DA91B7E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA91B844()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA91B8A0()
{
  v1 = [*(v0 + 16) allBundleIdentifiers];
  v2 = sub_1DA940BE4();

  return v2;
}

uint64_t sub_1DA91B8F0()
{
  v1 = *(v0 + 16);
  v2 = sub_1DA940A04();
  v3 = [v1 notificationRecordsForBundleIdentifier_];

  sub_1DA81AA20();
  v4 = sub_1DA940BE4();

  return v4;
}

void sub_1DA91B95C()
{
  v1 = *(v0 + 16);
  v2 = sub_1DA940E84();
  v3 = sub_1DA940A04();
  [v1 removeNotificationRecordsForIdentifiers:v2 bundleIdentifier:v3];
}

uint64_t sub_1DA91B9EC(void *a1, int a2)
{
  v21 = a2;
  v23 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75F0, &qword_1DA964578);
  v20 = *(v22 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v18 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75F8, &qword_1DA964580);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7600, &unk_1DA964588);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA920A50();
  sub_1DA941834();
  if (v23 == 2)
  {
    v24 = 0;
    sub_1DA920AF8();
    sub_1DA9415A4();
    (*(v6 + 8))(v9, v19);
  }

  else
  {
    v25 = 1;
    sub_1DA920AA4();
    sub_1DA9415A4();
    v17 = v22;
    sub_1DA9415E4();
    (*(v20 + 8))(v5, v17);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DA91BCF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7538, &qword_1DA964508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9200AC();
  sub_1DA941834();
  v15[15] = *v3;
  v15[14] = 0;
  sub_1DA920100();
  sub_1DA941604();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v15[13] = 1;
    sub_1DA9415D4();
    v14 = *(type metadata accessor for AlertCoordinatorXPCMessage() + 24);
    v15[12] = 2;
    sub_1DA93FAF4();
    sub_1DA920A08(&qword_1ECBD6908, MEMORY[0x1E6969530]);
    sub_1DA941604();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DA91BF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1DA93FAF4();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75B0, &qword_1DA964558);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for AlertCoordinatorXPCMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9200AC();
  sub_1DA941804();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v15 = a1;
  v16 = v24;
  v17 = v25;
  v29 = 0;
  sub_1DA9209B4();
  sub_1DA941584();
  *v13 = v30;
  v28 = 1;
  *(v13 + 1) = sub_1DA941554();
  *(v13 + 2) = v18;
  v20[1] = v18;
  v27 = 2;
  sub_1DA920A08(&qword_1ECBD6920, MEMORY[0x1E6969530]);
  sub_1DA941584();
  (*(v16 + 8))(v9, v26);
  (*(v22 + 32))(&v13[*(v21 + 24)], v6, v17);
  sub_1DA8FC808(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_1DA8FC86C(v13);
}

unint64_t sub_1DA91C2C0()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_1DA91C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x80000001DA9569C0 == a2;
  if (v5 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DA9569E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA91C3E0(uint64_t a1)
{
  v2 = sub_1DA920A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C41C(uint64_t a1)
{
  v2 = sub_1DA920A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91C458(uint64_t a1)
{
  v2 = sub_1DA920AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C494(uint64_t a1)
{
  v2 = sub_1DA920AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91C4D0(uint64_t a1)
{
  v2 = sub_1DA920AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C50C(uint64_t a1)
{
  v2 = sub_1DA920AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91C548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA91EFF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA91C590()
{
  v1 = 0x6163696669746F6ELL;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1DA91C5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA91F4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA91C614(uint64_t a1)
{
  v2 = sub_1DA9200AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91C650(uint64_t a1)
{
  v2 = sub_1DA9200AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertCoordinatorServer.deinit()
{
  v1 = *(v0 + 32);

  sub_1DA7C5714(v0 + 40);
  return v0;
}

uint64_t AlertCoordinatorServer.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  sub_1DA7C5714(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t AlertCoordinatorServer.handleIncomingRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1DA9407A4();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v55 - v15;
  v57 = v14;
  v63 = swift_allocBox();
  v18 = v17;
  v19 = type metadata accessor for AlertCoordinatorXPCMessage();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v18, 1, 1, v19);
  sub_1DA920A08(&qword_1ECBD7498, type metadata accessor for AlertCoordinatorXPCMessage);
  v65 = a1;
  sub_1DA940794();
  (v21)(&OBJC_PROTOCOL___UNOneTimeCodeServerProtocol.cb, v16, 0, 1, v19);
  sub_1DA91EF80(v16, v18);
  v22 = v61;
  sub_1DA91EDE0(v18, v13);
  LODWORD(a1) = (*(v20 + 48))(v13, 1, v19);
  sub_1DA7BA120(v13, &qword_1ECBD7490, &qword_1DA964140);
  if (a1 == 1)
  {
    v23 = v65;
    if (qword_1ECBD4800 != -1)
    {
      swift_once();
    }

    v24 = sub_1DA9405A4();
    __swift_project_value_buffer(v24, qword_1ECBD7478);
    v25 = *(v22 + 16);
    v26 = v58;
    v27 = v62;
    v25(v58, v23, v62);
    v28 = sub_1DA940584();
    v29 = sub_1DA940F14();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66[0] = v31;
      *v30 = 136315138;
      v25(v60, v26, v27);
      v32 = sub_1DA940A74();
      v34 = v33;
      (*(v22 + 8))(v26, v27);
      v35 = sub_1DA7AE6E8(v32, v34, v66);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DA7A9000, v28, v29, "Message failed to decode. %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12739F0](v31, -1, -1);
      MEMORY[0x1E12739F0](v30, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v26, v27);
    }

    v66[0] = 0;
    v66[1] = 0;
    v67 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA91EE50();
    sub_1DA940784();
    v53 = v64;
    *(v64 + 32) = 0;
    *v53 = 0u;
    v53[1] = 0u;
  }

  else
  {
    v61 = v4;
    v36 = v65;
    if (qword_1ECBD4800 != -1)
    {
      swift_once();
    }

    v37 = sub_1DA9405A4();
    __swift_project_value_buffer(v37, qword_1ECBD7478);
    v38 = v63;

    v39 = sub_1DA940584();
    v40 = sub_1DA940F04();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v68 = v42;
      *v41 = 136315138;
      swift_beginAccess();
      sub_1DA91EDE0(v18, v56);
      v43 = sub_1DA940A74();
      v45 = sub_1DA7AE6E8(v43, v44, &v68);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1DA7A9000, v39, v40, "Received XPC request: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1E12739F0](v42, -1, -1);
      MEMORY[0x1E12739F0](v41, -1, -1);
    }

    v46 = v59;
    v47 = v60;
    v48 = *(v59 + 24);
    v49 = v62;
    (*(v22 + 16))(v60, v36, v62);
    v50 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v51 = (v61 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v38;
    (*(v22 + 32))(v52 + v50, v47, v49);
    *(v52 + v51) = v46;

    sub_1DA940774();
  }
}

uint64_t sub_1DA91CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v62 = a2;
  v3 = sub_1DA9407A4();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v56 = v5;
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v53 - v8;
  v9 = sub_1DA93FAF4();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v53 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v53 - v28;
  v30 = swift_projectBox();
  swift_beginAccess();
  sub_1DA91EDE0(v30, v29);
  v31 = type metadata accessor for AlertCoordinatorXPCMessage();
  v32 = *(*(v31 - 8) + 48);
  result = v32(v29, 1, v31);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v34 = *v29;
  sub_1DA8FC86C(v29);
  if (v34 != 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_beginAccess();
    sub_1DA91EDE0(v30, v21);
    result = v32(v21, 1, v31);
    if (result != 1)
    {
      v52 = *(v21 + 1);
      v51 = *(v21 + 2);

      sub_1DA8FC86C(v21);
      swift_beginAccess();
      sub_1DA91EDE0(v30, v18);
      result = v32(v18, 1, v31);
      if (result != 1)
      {
        v50 = v63;
        v38 = v64;
        v37 = v65;
        (*(v64 + 16))(v63, &v18[*(v31 + 24)], v65);
        sub_1DA8FC86C(v18);
        sub_1DA857034(v52, v51, v34 & 1, v50);
        swift_unknownObjectRelease();

        return (*(v38 + 8))(v50, v37);
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v62;
  result = sub_1DA940764();
  if ((result & 1) == 0)
  {
    return result;
  }

  swift_beginAccess();
  sub_1DA91EDE0(v30, v27);
  result = v32(v27, 1, v31);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v36 = *(v27 + 2);
  v53 = *(v27 + 1);
  v54 = v36;

  sub_1DA8FC86C(v27);
  swift_beginAccess();
  sub_1DA91EDE0(v30, v24);
  result = v32(v24, 1, v31);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v38 = v64;
  v37 = v65;
  v39 = *(v64 + 16);
  v40 = &v24[*(v31 + 24)];
  v41 = v59;
  v39(v59, v40, v65);
  sub_1DA8FC86C(v24);
  v42 = sub_1DA940D34();
  (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
  v43 = v63;
  v39(v63, v41, v37);
  v44 = v57;
  v45 = v58;
  (*(v57 + 16))(v61, v35, v58);
  v46 = (*(v38 + 80) + 56) & ~*(v38 + 80);
  v47 = (v55 + *(v44 + 80) + v46) & ~*(v44 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  v49 = v53;
  *(v48 + 4) = v66;
  *(v48 + 5) = v49;
  *(v48 + 6) = v54;
  (*(v38 + 32))(&v48[v46], v43, v37);
  (*(v44 + 32))(&v48[v47], v61, v45);

  sub_1DA8DB00C(0, 0, v60, &unk_1DA9645A0, v48);

  v50 = v59;
  return (*(v38 + 8))(v50, v37);
}

uint64_t sub_1DA91D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DA91D5D4, 0, 0);
}

uint64_t sub_1DA91D5D4()
{
  v22 = v0;
  if (qword_1ECBD4800 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_1ECBD7478);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "In work continuation", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  v5 = *(v0 + 40);

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_1DA91D8B0;
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);

    return sub_1DA854330(v0 + 33);
  }

  else
  {
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA91EE50();
    sub_1DA940784();
    v13 = sub_1DA940584();
    v14 = sub_1DA940F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v0 + 35) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F0, &qword_1DA960170);
      v17 = sub_1DA940A74();
      v19 = sub_1DA7AE6E8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1DA7A9000, v13, v14, "Replied with shouldAlert=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12739F0](v16, -1, -1);
      MEMORY[0x1E12739F0](v15, -1, -1);
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1DA91D8B0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1DA91D9C8, 0, 0);
}

uint64_t sub_1DA91D9C8()
{
  v18 = v0;
  v1 = *(v0 + 33);
  v2 = *(v0 + 34);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
LABEL_5:
      v3 = sub_1DA941684();

      v4 = v3 & 1;
      goto LABEL_8;
    }

    v4 = 0;
  }

  else
  {
    if (!*(v0 + 33))
    {
      goto LABEL_5;
    }

    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

LABEL_8:
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  *(v0 + 16) = v4;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7050, &unk_1DA962930);
  sub_1DA91EE50();
  sub_1DA940784();
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1 | (v2 << 8);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v0 + 35) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD68F0, &qword_1DA960170);
    v12 = sub_1DA940A74();
    v14 = sub_1DA7AE6E8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "Replied with shouldAlert=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DA91DC24(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7590, &qword_1DA964538);
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7598, &qword_1DA964540);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75A0, &qword_1DA964548);
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75A8, &qword_1DA964550);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA920864();
  v21 = v33;
  sub_1DA941834();
  if (!v21)
  {
    v35 = 1;
    sub_1DA92090C();
    sub_1DA9415A4();
    v23 = v27;
    v22 = v28;
    goto LABEL_5;
  }

  if (v21 == 1)
  {
    v36 = 2;
    sub_1DA9208B8();
    v10 = v29;
    sub_1DA9415A4();
    v23 = v30;
    v22 = v31;
LABEL_5:
    (*(v23 + 8))(v10, v22);
    return (*(v16 + 8))(v19, v15);
  }

  v34 = 0;
  sub_1DA920960();
  sub_1DA9415A4();
  sub_1DA9415D4();
  (*(v26 + 8))(v14, v11);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1DA91DFDC()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x74754F64656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69796C7265646E75;
  }
}

uint64_t sub_1DA91E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA920154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA91E070(uint64_t a1)
{
  v2 = sub_1DA920864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E0AC(uint64_t a1)
{
  v2 = sub_1DA920864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E0E8(uint64_t a1)
{
  v2 = sub_1DA92090C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E124(uint64_t a1)
{
  v2 = sub_1DA92090C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E160(uint64_t a1)
{
  v2 = sub_1DA9208B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E19C(uint64_t a1)
{
  v2 = sub_1DA9208B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E1D8(uint64_t a1)
{
  v2 = sub_1DA920960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA91E214(uint64_t a1)
{
  v2 = sub_1DA920960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA91E250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA92027C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DA91E298()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD7478);
  __swift_project_value_buffer(v0, qword_1ECBD7478);
  return sub_1DA940594();
}

uint64_t sub_1DA91E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v46 = a1;
  v47 = a2;
  v44 = *(a4 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v13;
  v14 = type metadata accessor for UNCXPCResult();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v23 = *(v42 + 64);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v38 - v25;
  v27 = *(v24 + 48);
  v28 = *(v15 + 16);
  v28(&v38 - v25, v46, v14);
  v28(&v26[v27], v47, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28(v21, v26, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v43;
      v35 = v38;
      (*(v43 + 32))(v38, &v26[v27], a3);
      v32 = sub_1DA9409F4();
      v36 = *(v34 + 8);
      v36(v35, a3);
      v36(v21, a3);
      goto LABEL_9;
    }

    (*(v43 + 8))(v21, a3);
    goto LABEL_7;
  }

  v28(v19, v26, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v44 + 8))(v19, v45);
LABEL_7:
    v32 = 0;
    v15 = v42;
    v14 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v30 = v44;
  v29 = v45;
  v31 = v39;
  (*(v44 + 32))(v39, &v26[v27], v45);
  v32 = sub_1DA9409F4();
  v33 = *(v30 + 8);
  v33(v31, v29);
  v33(v19, v29);
LABEL_9:
  (*(v15 + 8))(v26, v14);
  return v32 & 1;
}

uint64_t sub_1DA91E770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v36 = a2;
  v40 = a3;
  v8 = type metadata accessor for UNCXPCResult();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9417E4();
  if (v6)
  {
    v19 = a1;
  }

  else
  {
    v30 = v12;
    v31 = v15;
    v29 = v17;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    v21 = sub_1DA941634();
    v28 = v39;
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    if (v21)
    {
      v22 = v31;
      sub_1DA941644();
      v23 = v35;
      v24 = a1;
      swift_storeEnumTagMultiPayload();
      v25 = v34;
    }

    else
    {
      v22 = v30;
      sub_1DA941644();
      v25 = v34;
      v23 = v35;
      v24 = a1;
      swift_storeEnumTagMultiPayload();
    }

    v26 = *(v23 + 32);
    v27 = v29;
    v26(v29, v22, v8);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v26(v25, v27, v8);
    v19 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1DA91EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31[1] = a4;
  v31[2] = a6;
  v33 = *(*(a2 + 24) - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1DA941814();
  (*(v18 + 16))(v22, v35, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v33;
    v25 = v22;
    v26 = v34;
    (*(v33 + 32))(v10, v25, v34);
    __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v27 = v38;
    sub_1DA941654();
    if (!v27)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      sub_1DA941664();
    }

    (*(v24 + 8))(v10, v26);
  }

  else
  {
    v28 = v32;
    (*(v32 + 32))(v16, v22, v12);
    __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v29 = v38;
    sub_1DA941654();
    if (!v29)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      sub_1DA941664();
    }

    (*(v28 + 8))(v16, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t type metadata accessor for AlertCoordinatorXPCMessage()
{
  result = qword_1ECBD7528;
  if (!qword_1ECBD7528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA91EDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA91EE50()
{
  result = qword_1ECBD74A0[0];
  if (!qword_1ECBD74A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD7050, &unk_1DA962930);
    sub_1DA8FC9EC();
    sub_1DA8FCA40();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBD74A0);
  }

  return result;
}

uint64_t sub_1DA91EEF0()
{
  v1 = *(sub_1DA9407A4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DA91CF38(v3, v0 + v2, v4);
}

uint64_t sub_1DA91EF80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7490, &qword_1DA964140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA91EFF0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75C0, &qword_1DA964560);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75C8, &qword_1DA964568);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD75D0, &qword_1DA964570);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v38 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DA920A50();
  v18 = v37;
  sub_1DA941804();
  if (!v18)
  {
    v33 = v6;
    v19 = v36;
    v37 = v11;
    v20 = sub_1DA941594();
    v21 = (2 * *(v20 + 16)) | 1;
    v39 = v20;
    v40 = v20 + 32;
    v41 = 0;
    v42 = v21;
    v22 = sub_1DA8675E4();
    v23 = v10;
    if (v22 == 2 || v41 != v42 >> 1)
    {
      v17 = v14;
      v26 = sub_1DA9413B4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v28 = &type metadata for AlertCoordinatorXPCMessage.AlertCoordinatorXPCMessageAction;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v37 + 8))(v17, v10);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v43 = 1;
      sub_1DA920AA4();
      v24 = v14;
      sub_1DA941504();
      v25 = v37;
      v32 = sub_1DA941564();
      (*(v35 + 8))(v5, v19);
      (*(v25 + 8))(v24, v23);
      swift_unknownObjectRelease();
      v17 = v32 & 1;
    }

    else
    {
      v43 = 0;
      sub_1DA920AF8();
      sub_1DA941504();
      v31 = v37;
      (*(v34 + 8))(v9, v33);
      (*(v31 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 2;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v17;
}

uint64_t sub_1DA91F4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEE0044496E6F6974 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void _s21UserNotificationsCore22AlertCoordinatorServerC18handleCancellation5errory3XPC12XPCRichErrorV_tF_0(uint64_t a1)
{
  v2 = sub_1DA940744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  if (qword_1ECBD4800 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1ECBD7478);
  v11 = *(v3 + 16);
  v11(v9, a1, v2);
  v12 = sub_1DA940584();
  v13 = sub_1DA940F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v11(v7, v9, v2);
    v16 = sub_1DA940A74();
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_1DA7AE6E8(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1DA7A9000, v12, v13, "Session cancelled. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12739F0](v15, -1, -1);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_1DA91F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1DA7B7660;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore22AlertCoordinatorServerC12RequestErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DA91FA0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA91FA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DA91FAD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA91FB50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1DA91FC78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DA91FE80()
{
  result = sub_1DA93FAF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertCoordinatorXPCMessage.AlertCoordinatorXPCMessageAction(unsigned __int8 *a1, unsigned int a2)
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
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for AlertCoordinatorXPCMessage.AlertCoordinatorXPCMessageAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DA920068(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DA920084(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1DA9200AC()
{
  result = qword_1ECBD7540;
  if (!qword_1ECBD7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7540);
  }

  return result;
}

unint64_t sub_1DA920100()
{
  result = qword_1ECBD7548;
  if (!qword_1ECBD7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7548);
  }

  return result;
}

uint64_t sub_1DA920154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DA955C60 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DA92027C(uint64_t *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7550, &qword_1DA964510);
  v32 = *(v35 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v32 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7558, &qword_1DA964518);
  v36 = *(v33 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7560, &qword_1DA964520);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7568, &unk_1DA964528);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v39 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DA920864();
  v19 = v38;
  sub_1DA941804();
  if (!v19)
  {
    v38 = 0;
    v20 = v37;
    v21 = sub_1DA941594();
    v22 = (2 * *(v21 + 16)) | 1;
    v40 = v21;
    v41 = v21 + 32;
    v42 = 0;
    v43 = v22;
    v23 = sub_1DA8653EC();
    if (v23 == 3 || v42 != v43 >> 1)
    {
      v25 = sub_1DA9413B4();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v27 = &type metadata for AlertCoordinatorServer.RequestError;
      v18 = v15;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        v44 = 1;
        sub_1DA92090C();
        v18 = v15;
        v24 = v38;
        sub_1DA941504();
        if (!v24)
        {
          (*(v36 + 8))(v6, v33);
          (*(v12 + 8))(v15, v11);
          swift_unknownObjectRelease();
          v18 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v44 = 2;
        sub_1DA9208B8();
        v18 = v15;
        v31 = v38;
        sub_1DA941504();
        if (!v31)
        {
          (*(v32 + 8))(v20, v35);
          (*(v12 + 8))(v15, v11);
          swift_unknownObjectRelease();
          v18 = 0;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v44 = 0;
      sub_1DA920960();
      v18 = v15;
      v30 = v38;
      sub_1DA941504();
      if (!v30)
      {
        v18 = sub_1DA941554();
        (*(v34 + 8))(v10, v7);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    (*(v12 + 8))(v15, v11);
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v18;
}

unint64_t sub_1DA920864()
{
  result = qword_1ECBD7570;
  if (!qword_1ECBD7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7570);
  }

  return result;
}

unint64_t sub_1DA9208B8()
{
  result = qword_1ECBD7578;
  if (!qword_1ECBD7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7578);
  }

  return result;
}

unint64_t sub_1DA92090C()
{
  result = qword_1ECBD7580;
  if (!qword_1ECBD7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7580);
  }

  return result;
}

unint64_t sub_1DA920960()
{
  result = qword_1ECBD7588;
  if (!qword_1ECBD7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7588);
  }

  return result;
}

unint64_t sub_1DA9209B4()
{
  result = qword_1ECBD75B8;
  if (!qword_1ECBD75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75B8);
  }

  return result;
}

uint64_t sub_1DA920A08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA920A50()
{
  result = qword_1ECBD75D8;
  if (!qword_1ECBD75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75D8);
  }

  return result;
}

unint64_t sub_1DA920AA4()
{
  result = qword_1ECBD75E0;
  if (!qword_1ECBD75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75E0);
  }

  return result;
}

unint64_t sub_1DA920AF8()
{
  result = qword_1ECBD75E8;
  if (!qword_1ECBD75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD75E8);
  }

  return result;
}

uint64_t sub_1DA920B4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DA93FAF4() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1DA9407A4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DA7B7470;

  return sub_1DA91D5B0(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

unint64_t sub_1DA920D44()
{
  result = qword_1ECBD7608;
  if (!qword_1ECBD7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7608);
  }

  return result;
}

unint64_t sub_1DA920D9C()
{
  result = qword_1ECBD7610;
  if (!qword_1ECBD7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7610);
  }

  return result;
}

unint64_t sub_1DA920DF4()
{
  result = qword_1ECBD7618;
  if (!qword_1ECBD7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7618);
  }

  return result;
}

unint64_t sub_1DA920E4C()
{
  result = qword_1ECBD7620;
  if (!qword_1ECBD7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7620);
  }

  return result;
}

unint64_t sub_1DA920EA4()
{
  result = qword_1ECBD7628;
  if (!qword_1ECBD7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7628);
  }

  return result;
}

unint64_t sub_1DA920EFC()
{
  result = qword_1ECBD7630;
  if (!qword_1ECBD7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7630);
  }

  return result;
}

unint64_t sub_1DA920F54()
{
  result = qword_1ECBD7638;
  if (!qword_1ECBD7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7638);
  }

  return result;
}

unint64_t sub_1DA920FAC()
{
  result = qword_1ECBD7640;
  if (!qword_1ECBD7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7640);
  }

  return result;
}

unint64_t sub_1DA921004()
{
  result = qword_1ECBD7648;
  if (!qword_1ECBD7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7648);
  }

  return result;
}

unint64_t sub_1DA92105C()
{
  result = qword_1ECBD7650;
  if (!qword_1ECBD7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7650);
  }

  return result;
}

unint64_t sub_1DA9210B4()
{
  result = qword_1ECBD7658;
  if (!qword_1ECBD7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7658);
  }

  return result;
}

unint64_t sub_1DA92110C()
{
  result = qword_1ECBD7660;
  if (!qword_1ECBD7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7660);
  }

  return result;
}

unint64_t sub_1DA921164()
{
  result = qword_1ECBD7668;
  if (!qword_1ECBD7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7668);
  }

  return result;
}

unint64_t sub_1DA9211BC()
{
  result = qword_1ECBD7670;
  if (!qword_1ECBD7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7670);
  }

  return result;
}

unint64_t sub_1DA921214()
{
  result = qword_1ECBD7678;
  if (!qword_1ECBD7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7678);
  }

  return result;
}

unint64_t sub_1DA92126C()
{
  result = qword_1ECBD7680;
  if (!qword_1ECBD7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7680);
  }

  return result;
}

unint64_t sub_1DA9212C4()
{
  result = qword_1ECBD7688;
  if (!qword_1ECBD7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7688);
  }

  return result;
}

unint64_t sub_1DA92131C()
{
  result = qword_1ECBD7690;
  if (!qword_1ECBD7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7690);
  }

  return result;
}

unint64_t sub_1DA921374()
{
  result = qword_1ECBD7698;
  if (!qword_1ECBD7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7698);
  }

  return result;
}

unint64_t sub_1DA9213CC()
{
  result = qword_1ECBD76A0;
  if (!qword_1ECBD76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD76A0);
  }

  return result;
}

unint64_t sub_1DA921424()
{
  result = qword_1ECBD76A8;
  if (!qword_1ECBD76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD76A8);
  }

  return result;
}

uint64_t sub_1DA92147C()
{
  v0 = *MEMORY[0x1E6963EE8];
  result = sub_1DA940A14();
  qword_1EE11B028 = result;
  unk_1EE11B030 = v2;
  return result;
}

uint64_t sub_1DA9214AC()
{
  v0 = *MEMORY[0x1E6964C48];
  result = sub_1DA940A14();
  qword_1EE11B058 = result;
  unk_1EE11B060 = v2;
  return result;
}

uint64_t sub_1DA9214DC()
{
  v0 = *MEMORY[0x1E69644F8];
  result = sub_1DA940A14();
  qword_1EE11AFF8 = result;
  unk_1EE11B000 = v2;
  return result;
}

uint64_t sub_1DA92150C()
{
  v0 = *MEMORY[0x1E6964930];
  result = sub_1DA940A14();
  qword_1EE11B038 = result;
  unk_1EE11B040 = v2;
  return result;
}

uint64_t sub_1DA92153C()
{
  v0 = *MEMORY[0x1E6964BD8];
  result = sub_1DA940A14();
  qword_1EE11B048 = result;
  unk_1EE11B050 = v2;
  return result;
}

uint64_t sub_1DA92156C()
{
  v0 = *MEMORY[0x1E6964B70];
  result = sub_1DA940A14();
  qword_1EE11B018 = result;
  unk_1EE11B020 = v2;
  return result;
}

uint64_t sub_1DA92159C()
{
  v0 = *MEMORY[0x1E6964C50];
  result = sub_1DA940A14();
  qword_1EE11AEC8 = result;
  unk_1EE11AED0 = v2;
  return result;
}

uint64_t sub_1DA9215CC()
{
  v0 = *MEMORY[0x1E6964B78];
  result = sub_1DA940A14();
  qword_1EE11AEB8 = result;
  unk_1EE11AEC0 = v2;
  return result;
}

uint64_t sub_1DA9215FC()
{
  v0 = *MEMORY[0x1E6964B68];
  result = sub_1DA940A14();
  qword_1EE11B008 = result;
  unk_1EE11B010 = v2;
  return result;
}

uint64_t sub_1DA92162C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v3)
  {
    v5 = "led";
  }

  else
  {
    v5 = "com.apple.usernotifications";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v8 = "com.apple.usernotifications";
  }

  else
  {
    v8 = "led";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DA941684();
  }

  return v10 & 1;
}

uint64_t sub_1DA9216D8()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA921758()
{
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA9217C4()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA921840@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DA9414F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DA9218A0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v1)
  {
    v3 = "com.apple.usernotifications";
  }

  else
  {
    v3 = "led";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1DA921914()
{
  result = qword_1ECBD76B0;
  if (!qword_1ECBD76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD76B0);
  }

  return result;
}

id sub_1DA921998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteBadgeService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA921AC0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    v7 = *(*(v1 + OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient) + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
    MEMORY[0x1EEE9AC00](a1);
    sub_1DA940FE4();
    return v15[0];
  }

  sub_1DA89667C(a1, v15);
  if (v16)
  {
    sub_1DA898804();
    v3 = swift_dynamicCast();
    if (v3)
    {
      v4 = *(*(v1 + OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient) + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
      MEMORY[0x1EEE9AC00](v3);
      v6 = v5;
      sub_1DA940FE4();

      return v15[0];
    }
  }

  else
  {
    sub_1DA896614(v15);
  }

  sub_1DA89667C(a1, v15);
  if (v16)
  {
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = *(*(v1 + OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient) + OBJC_IVAR____TtC21UserNotificationsCore31NotificationSystemServiceClient_queue);
      MEMORY[0x1EEE9AC00](v9);
      sub_1DA940FE4();

      return v15[0];
    }
  }

  else
  {
    sub_1DA896614(v15);
  }

  if (qword_1ECBD47B8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA9405A4();
  __swift_project_value_buffer(v11, qword_1ECBE3DB8);
  v12 = sub_1DA940584();
  v13 = sub_1DA940F14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DA7A9000, v12, v13, "Calling setBadgeValue failed. Pass either NSNumber or String.", v14, 2u);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_1DA921E78@<X0>(unsigned __int8 *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1DA9352DC(v1[3], a1);
}

uint64_t sub_1DA921E98@<X0>(unsigned __int8 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  return sub_1DA93538C(*(v1 + 32), a1);
}

uint64_t sub_1DA921EBC@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DA93522C(a1);
}

uint64_t sub_1DA921EF4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 16);

  v8 = 0;
  while (v4)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(*(v1 + 56) + ((v9 << 9) | (8 * v10)));
    swift_unknownObjectRetain();
    v12 = sub_1DA940A04();
    v13 = sub_1DA940A04();
    v14 = [v11 categoryWithIdentifier:v12 bundleIdentifier:v13];

    result = swift_unknownObjectRelease();
    if (v14)
    {

      return v14;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return 0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA922060(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_1DA85A4B4(0x6C61636F6CLL, 0xE500000000000000), (v3 & 1) != 0))
  {
    swift_endAccess();
    result = sub_1DA9414A4();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    swift_unknownObjectRetain();
    v4 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_1DA90C0D4(a1, 0x6C61636F6CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v7;
    return swift_endAccess();
  }

  return result;
}

uint64_t NotificationCategoryRepositoryAggregator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NotificationCategoryRepositoryAggregator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t NotificationCategoryRepositoryAggregator.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD00000000000003FLL, 0x80000001DA956A80);
  swift_beginAccess();
  v1 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7750, &qword_1DA95F618);
  v2 = sub_1DA940984();
  v4 = v3;

  MEMORY[0x1E1271BD0](v2, v4);

  MEMORY[0x1E1271BD0](4071456, 0xE300000000000000);
  return 0;
}

uint64_t sub_1DA92233C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = v4;
  *(v5 + 208) = a2;
  *(v5 + 152) = a1;
  *(v5 + 160) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DA922364, 0, 0);
}

uint64_t sub_1DA922364()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 208);
  v3 = *(v0 + 160);
  v4 = *(*(v0 + 176) + 16);
  v5 = [*(v0 + 152) notificationRecord];
  *(v0 + 184) = v5;
  v6 = sub_1DA940A04();
  *(v0 + 192) = v6;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DA9224D8;
  v7 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7760, qword_1DA964FD8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DA9226D0;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v7;
  [v4 saveNotificationRecord:v5 shouldRepost:v2 forBundleIdentifier:v6 withCompletionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DA9224D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1DA922658;
  }

  else
  {
    v3 = sub_1DA9225E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA9225E8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1DA922658()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_1DA9226D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DA9227C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA8D7D60;

  return sub_1DA92233C(a1, a2, a3, a4);
}

uint64_t sub_1DA92287C()
{
  result = os_variant_has_internal_content();
  byte_1EE112658 = result;
  return result;
}

uint64_t sub_1DA9228A4(uint64_t a1, char a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *(v3 + 176) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  v4 = sub_1DA9401F4();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7440, &unk_1DA963DD0) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v9 = sub_1DA9401A4();
  *(v3 + 144) = v9;
  v10 = *(v9 - 8);
  *(v3 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DA922A9C, 0, 0);
}

uint64_t sub_1DA922A9C()
{
  v131 = v0;
  v130 = *MEMORY[0x1E69E9840];
  if (*(v0 + 176) == 3)
  {
    (*(*(v0 + 80) + 16))(*(v0 + 56), *(v0 + 64), *(v0 + 72));
    goto LABEL_67;
  }

  v1 = *(v0 + 64);
  v2 = sub_1DA940A04();
  v126 = [objc_opt_self() serviceForClientIdentifier_];

  v3 = [objc_allocWithZone(MEMORY[0x1E699A218]) init];
  sub_1DA9400A4();
  v4 = sub_1DA940A04();

  [v3 setIdentifier_];

  sub_1DA940014();
  v5 = sub_1DA940A04();

  [v3 setBundleIdentifier_];

  v6 = sub_1DA93FF84();
  v7 = [v6 request];

  v8 = [v7 content];
  v9 = [v8 threadIdentifier];

  if (!v9)
  {
    sub_1DA940A14();
    v9 = sub_1DA940A04();
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 64);
  [v3 setThreadIdentifier_];

  v14 = sub_1DA93FF84();
  v15 = [v14 request];

  v16 = [v15 content];
  v17 = [v16 filterCriteria];

  [v3 setFilterCriteria_];
  sub_1DA93FF54();
  v18 = *(v11 + 48);
  if (v18(v12, 1, v10) == 1)
  {
    sub_1DA7BA120(*(v0 + 136), &unk_1ECBD7440, &unk_1DA963DD0);
    goto LABEL_12;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 144));
  if (sub_1DA940194() & 1) != 0 || (v19 = *(v0 + 168), (sub_1DA940174()))
  {
    v20 = 2;
  }

  else
  {
    v74 = *(v0 + 168);
    if ((sub_1DA940164() & 1) == 0)
    {
      goto LABEL_11;
    }

    v20 = 1;
  }

  [v3 setUrgency_];
LABEL_11:
  (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
LABEL_12:
  v21 = *(v0 + 64);
  v22 = sub_1DA940104();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 sender];
    if (v24)
    {
      v25 = v24;
      v26 = [v25 handleType];
      if (v26 == 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * (v26 == 2);
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E699A220]) init];
      [v28 setType_];
      v29 = [v25 handle];
      if (!v29)
      {
        sub_1DA940A14();
        v29 = sub_1DA940A04();
      }

      [v28 setValue_];

      v30 = [v25 cnContactIdentifier];
      [v28 setContactIdentifier_];
    }

    else
    {
      v28 = 0;
    }

    [v3 setSender_];

    [v3 setNotifyAnyway_];
  }

  v31 = *(v0 + 112);
  v32 = *(v0 + 64);
  v33 = sub_1DA93FED4();
  v34 = sub_1DA923930();

  [v3 setType_];
  sub_1DA940044();
  v35 = sub_1DA940004();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(v31, 1, v35);
  v39 = *(v0 + 112);
  if (v38 == 1)
  {
    sub_1DA7BA120(*(v0 + 112), &qword_1ECBD4E08, &qword_1DA958750);
  }

  else
  {
    sub_1DA93FFD4();
    v41 = v40;
    (*(v36 + 8))(v39, v35);
    if (v41)
    {
      v42 = sub_1DA940A04();

      goto LABEL_27;
    }
  }

  v42 = 0;
LABEL_27:
  v43 = *(v0 + 104);
  v44 = *(v0 + 64);
  [v3 setTitle_];

  sub_1DA940044();
  v45 = v37(v43, 1, v35);
  v46 = *(v0 + 104);
  if (v45 == 1)
  {
    sub_1DA7BA120(*(v0 + 104), &qword_1ECBD4E08, &qword_1DA958750);
  }

  else
  {
    sub_1DA93FFE4();
    v48 = v47;
    (*(v36 + 8))(v46, v35);
    if (v48)
    {
      v49 = sub_1DA940A04();

      goto LABEL_32;
    }
  }

  v49 = 0;
LABEL_32:
  v50 = *(v0 + 96);
  v51 = *(v0 + 64);
  [v3 setSubtitle_];

  sub_1DA940044();
  v52 = v37(v50, 1, v35);
  v53 = *(v0 + 96);
  if (v52 == 1)
  {
    sub_1DA7BA120(*(v0 + 96), &qword_1ECBD4E08, &qword_1DA958750);
LABEL_36:
    v56 = 0;
    goto LABEL_37;
  }

  sub_1DA93FFB4();
  v55 = v54;
  (*(v36 + 8))(v53, v35);
  if (!v55)
  {
    goto LABEL_36;
  }

  v56 = sub_1DA940A04();

LABEL_37:
  [v3 setBody_];

  if (qword_1EE112650 != -1)
  {
    swift_once();
  }

  if (byte_1EE112658 == 1)
  {
    v57 = *(v0 + 64);
    sub_1DA90A7F8(&v127);
    v58 = v128;
    if (v128 != 1)
    {
      v59 = v127;
      v60 = v129;
      v61 = 2;
      if ((v129 & 1) == 0)
      {
        v61 = 3;
      }

      if (v129 == 2)
      {
        v62 = 1;
      }

      else
      {
        v62 = v61;
      }

      v63 = [objc_allocWithZone(MEMORY[0x1E699A1B0]) initWithEventDetails:v3 interruptionSuppression:0 intelligentBehavior:v62 resolutionReason:26 activeModeUUID:0];
      [v3 setForwardingBehavior_];
      if (qword_1EE110E48 != -1)
      {
        swift_once();
      }

      v64 = sub_1DA9405A4();
      __swift_project_value_buffer(v64, qword_1EE11AD90);
      sub_1DA8A6E50(v59, v58);
      sub_1DA8A6E50(v59, v58);
      v65 = v3;
      v66 = sub_1DA940584();
      v67 = sub_1DA940F34();

      if (os_log_type_enabled(v66, v67))
      {
        v123 = v67;
        v124 = v63;
        v125 = v18;
        v68 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v127 = v122;
        *v68 = 136315650;
        if (v58)
        {
          v69 = v59;
        }

        else
        {
          v69 = 0;
        }

        if (v58)
        {
          v70 = v58;
        }

        else
        {
          v70 = 0xE000000000000000;
        }

        v71 = sub_1DA7AE6E8(v69, v70, &v127);

        *(v68 + 4) = v71;
        *(v68 + 12) = 1024;
        sub_1DA8A65A0(v59, v58);
        *(v68 + 14) = v60 & 1;
        sub_1DA8A65A0(v59, v58);
        *(v68 + 18) = 2080;
        v72 = [v65 forwardingBehavior];
        if (v72)
        {
          v73 = v72;
          [v72 intelligentBehavior];
        }

        v18 = v125;
        v75 = DNDIntelligentInterruptionBehaviorToString();
        v76 = sub_1DA940A14();
        v78 = v77;

        v79 = sub_1DA7AE6E8(v76, v78, &v127);

        *(v68 + 20) = v79;
        _os_log_impl(&dword_1DA7A9000, v66, v123, "Untool values of summary: %s and isHighlight: %{BOOL}d, written as %s on a faked forwardingBehavior", v68, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v122, -1, -1);
        MEMORY[0x1E12739F0](v68, -1, -1);
      }

      else
      {
        sub_1DA8A65A0(v59, v58);
        sub_1DA8A65A0(v59, v58);

        sub_1DA8A65A0(v59, v58);
      }
    }
  }

  *(v0 + 40) = 0;
  v80 = [v126 resolveBehaviorForEventDetails:v3 error:{v0 + 40, v122}];
  v81 = *(v0 + 40);
  if (!v80)
  {
    v91 = *(v0 + 56);
    v92 = *(v0 + 64);
    v93 = v81;
    v94 = sub_1DA93F8C4();

    swift_willThrow();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    v96 = *(v95 + 48);
    v97 = *(v95 + 64);
    swift_getErrorValue();
    v99 = *(v0 + 16);
    v98 = *(v0 + 24);
    v100 = *(v0 + 32);
    v101 = sub_1DA941704();
    v103 = v102;
    v91[3] = &type metadata for BehaviorResolutionActor.ActorError;
    v91[4] = sub_1DA923C2C();
    *v91 = v101;
    v91[1] = v103;
    sub_1DA93FF14();
    sub_1DA93FF34();

    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
    goto LABEL_68;
  }

  v82 = v80;
  v83 = *(v0 + 144);
  v84 = *(v0 + 128);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  v85 = v81;
  sub_1DA93FF54();
  if (v18(v84, 1, v83) == 1)
  {
    v86 = *(v0 + 144);
    v87 = *(v0 + 152);
    v88 = *(v0 + 120);
    v89 = *(v0 + 88);
    sub_1DA7BA120(*(v0 + 128), &unk_1ECBD7440, &unk_1DA963DD0);
    v90 = v82;
    sub_1DA940184();
    (*(v87 + 56))(v88, 0, 1, v86);
    sub_1DA93FF64();
  }

  else
  {
    v105 = *(v0 + 152);
    v104 = *(v0 + 160);
    v106 = *(v0 + 144);
    v107 = *(v0 + 120);
    v108 = *(v0 + 88);
    (*(v105 + 32))(v104, *(v0 + 128), v106);
    v109 = v82;
    sub_1DA940154();
    (*(v105 + 16))(v107, v104, v106);
    (*(v105 + 56))(v107, 0, 1, v106);
    sub_1DA93FF64();

    (*(v105 + 8))(v104, v106);
  }

  (*(*(v0 + 80) + 32))(*(v0 + 56), *(v0 + 88), *(v0 + 72));
LABEL_67:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
LABEL_68:
  swift_storeEnumTagMultiPayload();
  v111 = *(v0 + 160);
  v110 = *(v0 + 168);
  v113 = *(v0 + 128);
  v112 = *(v0 + 136);
  v115 = *(v0 + 112);
  v114 = *(v0 + 120);
  v117 = *(v0 + 96);
  v116 = *(v0 + 104);
  v118 = *(v0 + 88);

  v119 = *(v0 + 8);
  v120 = *MEMORY[0x1E69E9840];

  return v119();
}

uint64_t sub_1DA92382C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA941684();
  }
}

uint64_t sub_1DA923880(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA9228A4(a1, a2, a3);
}

uint64_t sub_1DA923930()
{
  v0 = *MEMORY[0x1E6983460];
  v1 = sub_1DA940A14();
  v3 = v2;
  if (v1 == sub_1DA940A14() && v3 == v4)
  {

    return 3;
  }

  v6 = sub_1DA941684();

  if (v6)
  {
    return 3;
  }

  v7 = *MEMORY[0x1E6983470];
  v8 = sub_1DA940A14();
  v10 = v9;
  if (v8 == sub_1DA940A14() && v10 == v11)
  {

    return 4;
  }

  v13 = sub_1DA941684();

  if (v13)
  {
    return 4;
  }

  v15 = *MEMORY[0x1E6983490];
  v16 = sub_1DA940A14();
  v18 = v17;
  if (v16 == sub_1DA940A14() && v18 == v19)
  {
    goto LABEL_17;
  }

  v20 = sub_1DA941684();

  if (v20)
  {
    return 2;
  }

  v21 = *MEMORY[0x1E6983480];
  v22 = sub_1DA940A14();
  v24 = v23;
  if (v22 == sub_1DA940A14() && v24 == v25)
  {
    goto LABEL_17;
  }

  v26 = sub_1DA941684();

  if (v26)
  {
    return 2;
  }

  v27 = *MEMORY[0x1E6983440];
  v28 = sub_1DA940A14();
  v30 = v29;
  if (v28 == sub_1DA940A14() && v30 == v31)
  {
LABEL_17:

    return 2;
  }

  v32 = sub_1DA941684();

  if (v32)
  {
    return 2;
  }

  v33 = *MEMORY[0x1E6983450];
  v34 = sub_1DA940A14();
  v36 = v35;
  if (v34 == sub_1DA940A14() && v36 == v37)
  {

    return 1;
  }

  else
  {
    v38 = sub_1DA941684();

    return v38 & 1;
  }
}

unint64_t sub_1DA923C2C()
{
  result = qword_1ECBD7768;
  if (!qword_1ECBD7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD7768);
  }

  return result;
}

uint64_t sub_1DA923C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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