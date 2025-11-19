uint64_t sub_19A4E6390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_19A4E5CD0();
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_19A4E669C();
      goto LABEL_22;
    }

    sub_19A4E6BD8();
  }

  v14 = *v6;
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  result = sub_19A57410C();
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
      if (v22 || (result = sub_19A573F1C(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_19A573F1C();
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

    result = sub_19A57403C();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_19A4E655C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F10);
  v2 = *v0;
  v3 = sub_19A5738FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_19A4E669C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E68);
  v2 = *v0;
  v3 = sub_19A5738FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_19A4E6808()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F10);
  result = sub_19A57390C();
  v4 = result;
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
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_19A4E6BD8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E68);
  result = sub_19A57390C();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_19A5740BC();

      sub_19A572E4C();
      sub_19A572E4C();
      result = sub_19A57410C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v30;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

double sub_19A4E6E3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 4);
  *(a2 + 4) = result;
  return result;
}

float sub_19A4E6E50@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = *a1;
  *(a2 + 4) = result;
  return result;
}

uint64_t _s13DiffusionBase05AppleA8PipelineV10IPASettingO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_19A57400C();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A4E6F10(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_19A4E6F34()
{
  result = qword_1EAF9EFC8;
  if (!qword_1EAF9EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EFC8);
  }

  return result;
}

uint64_t sub_19A4E6F88(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_19A4E6FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F98);
    v3 = sub_19A573BEC();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_19A3200C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E70BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F90);
    v3 = sub_19A573BEC();

    for (i = (a1 + 36); ; i = (i + 12))
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_19A3200C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19A4E71A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A4E7208(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19A4E7220(uint64_t result)
{
  if (*(result + 16) != 2)
  {
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v1 = sub_19A5723FC();
    __swift_project_value_buffer(v1, qword_1ED82BD48);
    v2 = sub_19A5723DC();
    v3 = sub_19A57355C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19A2DE000, v2, v3, "Error in IPA conditioning scale array: unexpected format", v4, 2u);
      MEMORY[0x19A902C50](v4, -1, -1);
    }

    sub_19A4E6F34();
    swift_allocError();
    *v5 = xmmword_19A577090;
    *(v5 + 16) = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A4E7350(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = 4;
  sub_19A4E7220(*(a1 + 8));
  if (v1)
  {
    return swift_setDeallocating();
  }

  *(inited + 36) = v4;
  *(inited + 40) = v5;
  *(inited + 44) = 5;
  sub_19A4E7220(*(a1 + 24));
  *(inited + 48) = v7;
  *(inited + 52) = v8;
  sub_19A4E70BC(inited);
  swift_setDeallocating();
  v9 = *(a1 + 40);
  if (v9)
  {
    sub_19A4E7220(v9);
    v11 = v10;
    v13 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(6, isUniquelyReferenced_nonNull_native, v11, v13);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    sub_19A4E7220(v15);
    v17 = v16;
    v19 = v18;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(7, v20, v17, v19);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    sub_19A4E7220(v21);
    v23 = v22;
    v25 = v24;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(8, v26, v23, v25);
  }

  v27 = *(a1 + 96);
  if (v27)
  {
    sub_19A4E7220(v27);
    v29 = v28;
    v31 = v30;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(12, v32, v29, v31);
  }

  v33 = *(a1 + 128);
  if (v33)
  {
    sub_19A4E7220(v33);
    v35 = v34;
    v37 = v36;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(16, v38, v35, v37);
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    sub_19A4E7220(v39);
    v41 = v40;
    v43 = v42;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(10, v44, v41, v43);
  }

  v45 = *(a1 + 112);
  if (v45)
  {
    sub_19A4E7220(v45);
    v47 = v46;
    v49 = v48;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(14, v50, v47, v49);
  }

  v51 = *(a1 + 144);
  if (v51)
  {
    sub_19A4E7220(v51);
    v53 = v52;
    v55 = v54;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    sub_19A54538C(18, v56, v53, v55);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F80);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_19A576E20;
  *(v57 + 32) = 0;
  *(v57 + 36) = *(a1 + 4);
  *(v57 + 40) = 1;
  *(v57 + 44) = *(a1 + 16);
  v58 = sub_19A4E6FD0(v57);
  swift_setDeallocating();
  if (*(a1 + 36))
  {
    if (*(a1 + 52))
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_19A5499D8(*(a1 + 32), 2);
    if (*(a1 + 52))
    {
LABEL_22:
      if (*(a1 + 76))
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  sub_19A5499D8(*(a1 + 48), 3);
  if (*(a1 + 76))
  {
LABEL_23:
    if (*(a1 + 108))
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_19A5499D8(*(a1 + 72), 9);
  if (*(a1 + 108))
  {
LABEL_24:
    if (*(a1 + 140))
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_19A5499D8(*(a1 + 104), 13);
  if (*(a1 + 140))
  {
LABEL_25:
    if (*(a1 + 92))
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_19A5499D8(*(a1 + 136), 17);
  if (*(a1 + 92))
  {
LABEL_26:
    if (*(a1 + 124))
    {
      goto LABEL_27;
    }

LABEL_36:
    sub_19A5499D8(*(a1 + 120), 15);
    if (*(a1 + 156))
    {
      return v58;
    }

    goto LABEL_28;
  }

LABEL_35:
  sub_19A5499D8(*(a1 + 88), 11);
  if ((*(a1 + 124) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  if ((*(a1 + 156) & 1) == 0)
  {
LABEL_28:
    sub_19A5499D8(*(a1 + 152), 19);
  }

  return v58;
}

uint64_t sub_19A4E788C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_19A4E78A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A4E7944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2ED0);
    v7 = sub_19A573BEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A33546C(v9, v5, &qword_1EAFA2EC8);
      v12 = *v5;
      v11 = v5[1];
      result = sub_19A31F6BC(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F60);
    v3 = sub_19A573BEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_19A33546C(v4, &v13, &qword_1EAFA2F68);
      v5 = v13;
      v6 = v14;
      result = sub_19A31F6BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19A2E10E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F08);
    v3 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_19A31F6BC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2D00);
    v3 = sub_19A573BEC();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_19A2EA56C(v7);
      result = sub_19A4F38B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E7E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D28);
    v7 = sub_19A573BEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A33546C(v9, v5, &qword_1EAFA2D20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_19A31F6BC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_19A570EAC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E807C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2DE0);
    v3 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_19A4F38B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E8180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E40);
    v7 = sub_19A573BEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19A33546C(v9, v5, &qword_1EAFA2E38);
      v11 = *v5;
      result = sub_19A31FBD4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_19A570EAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E837C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D30);
    v3 = sub_19A573BEC();

    for (i = (a1 + 34); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_19A31FCAC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 2 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_19A4E849C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E20);
  v3 = sub_19A573BEC();

  memcpy(__dst, a1 + 4, 0x170uLL);
  v4 = __dst[0];
  sub_19A33546C(__dst, v13, &qword_1EAFA2E28);
  v5 = sub_19A31FBD4(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 50);
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + v5) = v4;
    result = memcpy((v3[7] + 360 * v5), &__dst[8], 0x168uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v7, 0x170uLL);
    v4 = __dst[0];
    sub_19A33546C(__dst, v13, &qword_1EAFA2E28);
    v5 = sub_19A31FBD4(v4);
    v7 += 368;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19A4E861C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E10);
    v3 = sub_19A573BEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_19A31FCAC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_19A4E8710(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E00);
  v3 = sub_19A573BEC();

  memcpy(__dst, a1 + 4, 0x170uLL);
  v4 = __dst[0];
  sub_19A33546C(__dst, v13, &qword_1EAFA2E08);
  v5 = sub_19A31FCAC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 50);
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + v5) = v4;
    result = memcpy((v3[7] + 360 * v5), &__dst[8], 0x168uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v7, 0x170uLL);
    v4 = __dst[0];
    sub_19A33546C(__dst, v13, &qword_1EAFA2E08);
    v5 = sub_19A31FCAC(v4);
    v7 += 368;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19A4E88B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_19A573BEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E89AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E18);
    v3 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_19A31FDEC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19A4E8AA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_19A573BEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_19A31F6BC(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19A4E8BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4E8C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A4E8C7C()
{
  result = qword_1EAF9EFC0;
  if (!qword_1EAF9EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EFC0);
  }

  return result;
}

unint64_t sub_19A4E8CD4()
{
  result = qword_1EAFA2CD8;
  if (!qword_1EAFA2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2CD8);
  }

  return result;
}

void sub_19A4E8D54()
{
  type metadata accessor for AppleDiffusionUnet();
  if (v0 <= 0x3F)
  {
    sub_19A4E9430(319, qword_1EAF9EDA8, &type metadata for Encoder, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_19A4E9430(319, &qword_1EAF9EFF0, &type metadata for AppleDiffusionLocalImageConditioner, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19A57236C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AppleDiffusionPipeline.IPASetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionPipeline.IPASetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase05AppleA8PipelineV0cA5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

void sub_19A4E9098()
{
  sub_19A4E9178();
  if (v0 <= 0x3F)
  {
    sub_19A4E91D0();
    if (v1 <= 0x3F)
    {
      sub_19A4E9430(319, &unk_1EAF9EFE0, &type metadata for AppleDiffusionUnet.IPAInputs, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19A4E9234();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A4E9178()
{
  if (!qword_1ED8255D8[0])
  {
    v0 = sub_19A57265C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8255D8);
    }
  }
}

void sub_19A4E91D0()
{
  if (!qword_1EAF9E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2CF8);
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9E850);
    }
  }
}

void sub_19A4E9234()
{
  if (!qword_1EAF9E8F8)
  {
    sub_19A2F1600(255, &qword_1ED823EE0);
    v0 = sub_19A572B1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9E8F8);
    }
  }
}

uint64_t sub_19A4E92AC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {

    v5 = a4;
  }

  return result;
}

id sub_19A4E92F8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {

    return a1;
  }

  else
  {
    v5 = a1;
  }
}

uint64_t sub_19A4E9344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_19A4E9430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_19A4E94C8(unint64_t *a1, void (*a2)(uint64_t))
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

double TextEncoder.init(tokenizer:modelAt:configuration:)@<D0>(__n128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __n128 *a4@<X8>)
{
  sub_19A4EA94C(a1, a2, a3, v9);
  v5 = v9[3];
  a4[2] = v9[2];
  a4[3] = v5;
  v6 = v9[5];
  a4[4] = v9[4];
  a4[5] = v6;
  result = v9[0].n128_f64[0];
  v8 = v9[1];
  *a4 = v9[0];
  a4[1] = v8;
  return result;
}

uint64_t TextEncoder.encode(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A4E9A18();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 8 * v5 + 24);

    v7 = BPETokenizer.tokenize(input:minCount:)(a1, v6, 0);
    v9 = v8;
    v10 = *(v8 + 16);
    if (v6 >= v10)
    {
LABEL_6:

      sub_19A4EA0BC(v9, a2);
    }

    v11 = *(v7 + 16);
    v12 = __OFSUB__(v11, v6);
    v13 = v11 - v6;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      sub_19A4E9C70(v13, v7);
      if (!__OFSUB__(v10, v6))
      {
        v20 = sub_19A4E9ECC(v10 - v6, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
        sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
        sub_19A572BEC();
        v14 = MEMORY[0x1E69E6158];
        sub_19A572F8C();
        sub_19A2F4450();
        sub_19A57382C();

        sub_19A57382C();

        v19 = sub_19A57382C();
        v16 = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_19A576E10;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD00000000000001ALL, 0x800000019A59CC30);
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_19A573EFC();
        MEMORY[0x19A900A50](0x27206F742027, 0xE600000000000000);
        MEMORY[0x19A900A50](v19, v16);

        MEMORY[0x19A900A50](39, 0xE100000000000000);
        *(v17 + 56) = v14;
        v9 = v20;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0xE000000000000000;
        sub_19A5740AC();
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A4E9A18()
{
  sub_19A2F1600(0, &unk_1ED823EB0);
  sub_19A5735DC();
  v0 = [v12 multiArrayConstraint];

  if (!v0)
  {
    goto LABEL_17;
  }

  v1 = [v0 shape];

  sub_19A2F1600(0, &qword_1ED823EA8);
  v2 = sub_19A57308C();

  if (v2 >> 62)
  {
    v3 = sub_19A573B4C();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_4:
  v13 = MEMORY[0x1E69E7CC0];
  sub_19A3225A0(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A901520](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = v13[2];
      v9 = v13[3];
      if (v10 >= v9 >> 1)
      {
        sub_19A3225A0((v9 > 1), v10 + 1, 1);
      }

      ++v4;
      v13[2] = v10 + 1;
      v13[v10 + 4] = v8;
    }

    while (v3 != v4);

    return v5;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_19A4E9C70(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v31 = *(a2 + 16);
        v27 = v4 - 1;
        v8 = MEMORY[0x1E69E7CC0];
        v30 = MEMORY[0x1E69E7CC0];
        v28 = a2 + 40;
        while (1)
        {
          v29 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = *(v8 + 16);
            if (v13 >= v3)
            {
              break;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_19A322580(0, v13 + 1, 1);
            }

            v15 = *(v8 + 16);
            v14 = *(v8 + 24);
            if (v15 >= v14 >> 1)
            {
              result = sub_19A322580((v14 > 1), v15 + 1, 1);
            }

            *(v8 + 16) = v15 + 1;
            v16 = v8 + 16 * v15;
            *(v16 + 32) = v10;
            *(v16 + 40) = v11;
            v9 += 2;
            v5 = v12;
            if (v31 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v29 >= v13)
          {
            goto LABEL_33;
          }

          v17 = v8 + 16 * v29;
          v18 = *(v17 + 40);
          v25 = *(v17 + 32);

          v26 = v18;

          v19 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_19A322580(0, *(v30 + 16) + 1, 1);
            v19 = v30;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_19A322580((v20 > 1), v21 + 1, 1);
            v19 = v30;
          }

          *(v19 + 16) = v21 + 1;
          v30 = v19;
          v22 = v19 + 16 * v21;
          *(v22 + 32) = v25;
          *(v22 + 40) = v26;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_19A4FF6C8(v8);
            v8 = result;
          }

          v7 = v28;
          if (v29 >= *(v8 + 16))
          {
            goto LABEL_34;
          }

          v23 = v8 + 16 * v29;
          *(v23 + 32) = v10;
          *(v23 + 40) = v11;

          if ((v29 + 1) < v3)
          {
            v6 = v29 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v27 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_29:

      return v30;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_19A4E9ECC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v7;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = v3 - 1;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v17 = result;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    v11 = *(v8 + 16);
    if (v11 < v2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19A3225A0(0, v11 + 1, 1);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_19A3225A0((v12 > 1), v13 + 1, 1);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v9;
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v4 >= v11)
    {
      break;
    }

    v14 = *(v8 + 8 * v4 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_19A3225A0(0, *(v7 + 16) + 1, 1);
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_19A3225A0((v15 > 1), v16 + 1, 1);
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + 8 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A4FF6DC(v8);
      v8 = result;
    }

    v2 = v17;
    if (v4 >= *(v8 + 16))
    {
      goto LABEL_29;
    }

    *(v8 + 8 * v4++ + 32) = v9;
    if (v4 < v17)
    {
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v4 = 0;
    }

LABEL_6:
    --v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_19A4EA0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v48 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = v40 - v9;
  v10 = *(v2 + 80);
  v11 = *(v10 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v50 = 0;
  v51 = 0;
  v49 = v10;
  v52 = sub_19A4EA81C;
  v53 = 0;
  sub_19A2F1600(0, &unk_1ED823EB0);
  sub_19A5735DC();
  if (v3)
  {
    goto LABEL_16;
  }

  v43 = 0;
  v44 = v11;
  v12 = v54;
  v13 = [v54 name];

  v42 = sub_19A572CFC();
  v46 = v14;

  v45 = sub_19A4E9A18();
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v41 = v5;
    v54 = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v15, 0);
    v16 = v54;
    v17 = (a1 + 32);
    v18 = v54[2];
    do
    {
      v20 = *v17++;
      v19 = v20;
      v54 = v16;
      v21 = v16[3];
      if (v18 >= v21 >> 1)
      {
        sub_19A4E44CC((v21 > 1), v18 + 1, 1);
        v16 = v54;
      }

      v16[2] = v18 + 1;
      *(v16 + v18++ + 8) = v19;
      --v15;
    }

    while (v15);
    v5 = v41;
  }

  v54 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
  v22 = v47;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  *(inited + 32) = v42;
  *(inited + 40) = v46;
  v24 = sub_19A2F1600(0, &qword_1ED823EE0);
  (*(v48 + 16))(v8, v22, v5);
  v25 = sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);

  v42 = v25;
  v26 = sub_19A57351C();
  *(inited + 72) = v24;
  *(inited + 48) = v26;
  sub_19A330370(inited);
  swift_setDeallocating();
  sub_19A4EACFC(inited + 32);
  v27 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v28 = v43;
  v29 = sub_19A544CF4();
  if (v28)
  {
    goto LABEL_17;
  }

  v30 = v29;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v40[-2] = v31;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v40[-4] = sub_19A4EAD64;
  v40[-3] = v33;
  v40[-2] = v10;
  MEMORY[0x1EEE9AC00](v32);
  v40[-5] = 0;
  v40[-4] = 0;
  v40[-6] = v10;
  v40[-3] = sub_19A4EAD80;
  v40[-2] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0);
  sub_19A5735DC();
  v35 = sub_19A56D50C(v54);

  if (*(v35 + 16))
  {
    v36 = sub_19A31F6BC(0xD000000000000011, 0x800000019A59C580);
    if (v37)
    {
      v38 = *(*(v35 + 56) + 8 * v36);
      if ([v38 multiArrayValue])
      {

        sub_19A5726AC();

        return (*(v48 + 8))(v47, v5);
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  swift_unexpectedError();
  __break(1u);
LABEL_17:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_19A4EA764(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [a1 predictionFromFeatures:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_19A4EA81C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v5 = sub_19A572AFC();
  sub_19A506920(v5);
  v7 = v6;
  v9 = v8;

  if (v7)
  {

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_19A4EA94C@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __n128 *a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_19A570EAC();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A5735CC();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A5735BC();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_19A57298C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v23[2] = sub_19A2F1600(0, &unk_1EAF9E7A0);
  v23[1] = "chedulerStep";
  sub_19A57297C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_19A4EADE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C60);
  sub_19A2F12E4(&unk_1EAF9E840, &unk_1EAFA2C60);
  sub_19A57388C();
  (*(v24 + 104))(v10, *MEMORY[0x1E69E8090], v25);
  v13 = sub_19A5735FC();
  v14 = a1[3];
  v34 = a1[2];
  v35 = v14;
  v36 = a1[4];
  v15 = a1[1];
  v32 = *a1;
  v33 = v15;
  v17 = v26;
  v16 = v27;
  v19 = v28;
  v18 = v29;
  (*(v27 + 16))(v26, v29, v28);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v20 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v17, v30, MEMORY[0x1E69E7CC0], "TextEncoder", 11, 2);
  (*(v16 + 8))(v18, v19);
  v21 = v35;
  a4[2] = v34;
  a4[3] = v21;
  a4[4] = v36;
  result = v33;
  *a4 = v32;
  a4[1] = result;
  a4[5].n128_u64[0] = v20;
  a4[5].n128_u64[1] = v13;
  return result;
}

uint64_t sub_19A4EACFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A4EADE8()
{
  result = qword_1EAF9E7B0;
  if (!qword_1EAF9E7B0)
  {
    sub_19A5735BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E7B0);
  }

  return result;
}

uint64_t sub_19A4EAE58(uint64_t result, int64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v5 = result;
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_19A4E456C(0, v2 & ~(v2 >> 63), 0);
  if (a2 >= v5 && (v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v3 = v11;
    while (v6 < v2)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

      result = sub_19A4EB178();
      v12 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = result;
        sub_19A4E456C((v8 > 1), v9 + 1, 1);
        result = v10;
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = vcvts_n_f32_u32(result & 0xFFFFFF, 0x18uLL);
      ++v6;
      if ((v5 - 1 + v6) >= a2)
      {
        goto LABEL_15;
      }

      if (v7 == v2)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_19A4EAF98(uint64_t a1, int64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_19;
  }

  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_19A4E456C(0, v5 & ~(v5 >> 63), 0);
    v10 = a2;
    if (a2 < a1 || v5 < 0)
    {
      goto LABEL_20;
    }

    v11 = 0;
    v12 = a1 - 1;
    while (v11 < v5)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v14 = *(a3 + 24);
      if (v14)
      {
        v15 = sub_19A4EB178();
        v16 = vcvtd_n_f64_u64(sub_19A4EB178() | ((*&v15 & 0x1FFFFFLL) << 32), 0x35uLL);
        v17 = sub_19A4EB178();
        v18 = sub_19A4EB178();
        v19 = log(1.0 - vcvtd_n_f64_u64(v18 | ((*&v17 & 0x1FFFFFLL) << 32), 0x35uLL));
        v20 = sqrt(v19 * -2.0);
        v21 = __sincos_stret(v16 * 6.28318531);
        v10 = a2;
        v22 = v20 * v21.__sinval;
        v23 = v20 * v21.__cosval;
      }

      else
      {
        v23 = *(a3 + 16);
        v22 = 0.0;
      }

      *(a3 + 16) = v22;
      *(a3 + 24) = v14 ^ 1;
      v25 = *(v27 + 16);
      v24 = *(v27 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_19A4E456C((v24 > 1), v25 + 1, 1);
        v10 = a2;
      }

      *(v27 + 16) = v25 + 1;
      *(v27 + 8 * v25 + 32) = v23 * a5 + a4;
      ++v11;
      if ((v12 + v11) >= v10)
      {
        goto LABEL_18;
      }

      if (v13 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t sub_19A4EB178()
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(*v2 + 16);
  if (v3 == v5)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v3 = *(v4 + 16);
      if (v3 < 0xE4)
      {
        break;
      }

      v5 = v4 + 32;
      v1 = *(v4 + 32);
      v7 = 397;
      if (v3 > 0x18D)
      {
        v7 = *(v4 + 16);
      }

      v0 = v7 - 397;
      if (v0 < 8)
      {
        v8 = 0;
        goto LABEL_17;
      }

LABEL_10:
      if (v0 >= 0xE2)
      {
        v0 = 226;
      }

      v9 = v0 + 1;
      v10 = v9 & 7;
      if ((v9 & 7) == 0)
      {
        v10 = 8;
      }

      v8 = v9 - v10;
      v11 = vdupq_n_s32(v1);
      v12.i64[0] = 0x100000001;
      v12.i64[1] = 0x100000001;
      v13 = vnegq_f32(v12);
      v14.i64[0] = 0x8000000080000000;
      v14.i64[1] = 0x8000000080000000;
      v15.i64[0] = 0x100000001;
      v15.i64[1] = 0x100000001;
      v16 = vdupq_n_s32(0x9908B0DF);
      v17 = v8;
      v18 = v4;
      do
      {
        v19 = *(v18 + 36);
        v20 = *(v18 + 1636);
        *(v18 + 32) = veorq_s8(veorq_s8(vbicq_s8(v16, vceqzq_s32(vandq_s8(v19, v15))), *(v18 + 1620)), vshrq_n_u32(vorrq_s8(vandq_s8(v19, v13), vandq_s8(vextq_s8(v11, v19, 0xCuLL), v14)), 1uLL));
        v18 += 32;
        v11 = *(v18 + 20);
        *(v18 + 16) = veorq_s8(veorq_s8(vbicq_s8(v16, vceqzq_s32(vandq_s8(v11, v15))), v20), vshrq_n_u32(vorrq_s8(vandq_s8(v11, v13), vandq_s8(vextq_s8(v19, v11, 0xCuLL), v14)), 1uLL));
        v17 -= 8;
      }

      while (v17);
      v1 = v11.u32[3];
      do
      {
LABEL_17:
        if (v8 + 397 >= v3)
        {
          __break(1u);
          goto LABEL_32;
        }

        v21 = (v4 + 4 * v8);
        v22 = v8 + 1;
        v23 = v1 & 0x80000000;
        v1 = v21[9];
        v21[8] = ((v1 << 31) >> 31) & 0x9908B0DF ^ ((v1 & 0x7FFFFFFE | v23) >> 1) ^ v21[405];
        v8 = v22;
      }

      while (v22 != 227);
      v25 = 395;
      if (v3 < 0x18B)
      {
        v25 = v3;
      }

      v26 = (v25 + 1) & 3;
      if (!v26)
      {
        v26 = 4;
      }

      v27 = v25 + 1 - v26;
      v24 = (v4 + 940);
      v28 = vld1q_dup_f32(v24);
      v29 = v5 + 908;
      v30.i64[0] = 0x100000001;
      v30.i64[1] = 0x100000001;
      v31 = vnegq_f32(v30);
      v32.i64[0] = 0x8000000080000000;
      v32.i64[1] = 0x8000000080000000;
      v33.i64[0] = 0x100000001;
      v33.i64[1] = 0x100000001;
      v34 = vdupq_n_s32(0x9908B0DF);
      do
      {
        v35 = v28;
        v28 = *(v29 + 4);
        *v29 = veorq_s8(veorq_s8(vbicq_s8(v34, vceqzq_s32(vandq_s8(v28, v33))), *(v29 - 908)), vshrq_n_u32(vorrq_s8(vandq_s8(v28, v31), vandq_s8(vextq_s8(v35, v28, 0xCuLL), v32)), 1uLL));
        v29 += 16;
        v27 -= 4;
      }

      while (v27);
      v36 = v28.i32[3];
      v37 = v25 - v26;
      v38 = 4 * v25 - 4 * v26 + 944;
      while (1)
      {
        v39 = v37 + 1;
        if (v37 + 1 >= v3)
        {
          break;
        }

        v40 = *(v4 + v38 + 4);
        *(v4 + v38) = (v40 << 31 >> 31) & 0x9908B0DF ^ ((v40 & 0x7FFFFFFE | v36 & 0x80000000) >> 1) ^ *(v4 + 4 * v37 + 36);
        v38 += 4;
        ++v37;
        v36 = v40;
        if (v39 == 395)
        {
          v3 = 0;
          *(v4 + 2524) = *(v4 + 1616) ^ ((*(v4 + 32) & 0x7FFFFFFE | *(v4 + 2524) & 0x80000000) >> 1) ^ ((*(v4 + 32) << 31) >> 31) & 0x9908B0DF;
          *v2 = v4;
          v5 = *(v4 + 16);
          goto LABEL_29;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_19A4E5268(v4);
      v4 = result;
    }

    __break(1u);
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_29:
    if (v3 >= v5)
    {
      goto LABEL_33;
    }

    v41 = v3 + 1;
    v42 = *(v4 + 4 * v3 + 32);
    v2[1] = v41;
    v43 = ((v42 ^ (v42 >> 11)) << 7) & 0x9D2C5680 ^ v42 ^ (v42 >> 11);
    return (v43 << 15) & 0xEFC60000 ^ v43 ^ (((v43 << 15) & 0xEFC60000 ^ v43) >> 18);
  }

  return result;
}

double sub_19A4EB47C(double a1, double a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = sub_19A4EB178();
    v7 = vcvtd_n_f64_u64(sub_19A4EB178() | ((*&v6 & 0x1FFFFFLL) << 32), 0x35uLL);
    v8 = sub_19A4EB178();
    v9 = sub_19A4EB178();
    v10 = log(1.0 - vcvtd_n_f64_u64(v9 | ((*&v8 & 0x1FFFFFLL) << 32), 0x35uLL));
    v11 = sqrt(v10 * -2.0);
    v12 = __sincos_stret(v7 * 6.28318531);
    v13 = v11 * v12.__sinval;
    v14 = v11 * v12.__cosval;
  }

  else
  {
    v14 = *(v2 + 16);
    v13 = 0.0;
  }

  *(v2 + 16) = v13;
  *(v2 + 24) = v5 ^ 1;
  return v14 * a2 + a1;
}

uint64_t sub_19A4EB544(int64_t a1, double a2, double a3)
{
  v7 = a1;
  if (a1 >= 16)
  {
    v4 = sub_19A4EAE58(0, a1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  else
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      sub_19A4EAF98(0, a1, v3, a2, a3);
      return v8;
    }

LABEL_37:
    __break(1u);
  }

  v4 = sub_19A4E52A4(v4);
LABEL_5:
  v9 = 0;
  v10 = (v4 + 96);
  do
  {
    v11 = 0;
    v12 = __OFADD__(v9, 16);
    v13 = v10;
    do
    {
      v14 = *(v4 + 16);
      if (v9 + v11 >= v14)
      {
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
        __break(1u);
        goto LABEL_37;
      }

      if (v9 + v11 + 8 >= v14)
      {
        goto LABEL_32;
      }

      ++v11;
      v15 = *v13;
      v16 = log(1.0 - *(v13 - 8));
      v17 = sqrt(v16 * -2.0);
      v18 = __sincos_stret(v15 * 6.28318531);
      *(v13 - 8) = v17 * v18.__cosval * a3 + a2;
      *v13++ = v17 * v18.__sinval * a3 + a2;
    }

    while (v11 != 8);
    v19 = v9 + 16 >= v7 - 15 || v12;
    v10 += 16;
    v9 += 16;
  }

  while ((v19 & 1) == 0);
  if ((v7 & 0xF) != 0)
  {
    v20 = 16;
    v21 = v7;
    while (1)
    {
      v22 = sub_19A4EB178();
      v23 = sub_19A4EB178();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_19A4E52A4(v4);
      }

      if ((v21 - 16) >= *(v4 + 16))
      {
        goto LABEL_33;
      }

      *(v4 + 8 * v21++ - 96) = vcvtd_n_f64_u64((v22 << 32) & 0x1FFFFF00000000 | v23, 0x35uLL);
      if (!--v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_19A4E52A4(v4);
        }

        v24 = v4 + 32;
        v25 = 8;
        while (1)
        {
          v26 = *(v4 + 16);
          if (v7 - 16 >= v26)
          {
            goto LABEL_34;
          }

          v27 = v7 - 8;
          if (__OFADD__(v7 - 16, 8))
          {
            goto LABEL_35;
          }

          if (v27 >= v26)
          {
            goto LABEL_36;
          }

          v28 = v4 + 8 * v7;
          v29 = *(v24 + 8 * v27);
          v30 = log(1.0 - *(v28 - 96));
          v31 = sqrt(v30 * -2.0);
          v32 = __sincos_stret(v29 * 6.28318531);
          *(v28 - 96) = v31 * v32.__cosval * a3 + a2;
          *(v24 + 8 * v27) = v31 * v32.__sinval * a3 + a2;
          ++v7;
          if (!--v25)
          {
            return v4;
          }
        }
      }
    }
  }

  return v4;
}

int64_t sub_19A4EB800(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 1;
    while (1)
    {
      v6 = *v4++;
      result = v5 * v6;
      if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
      {
        break;
      }

      v5 = result;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    sub_19A4EB544(result, a2, a3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090);
    sub_19A4EB9A0();
    return sub_19A57264C();
  }

  return result;
}

void sub_19A4EB8FC(unsigned int a1)
{
  v2 = sub_19A5730DC();
  *(v2 + 16) = 624;
  bzero((v2 + 32), 0x9C0uLL);
  v3 = 0;
  while (1)
  {
    *(v2 + 4 * v3 + 32) = a1;
    v4 = v3 + 1812433253 * (a1 ^ (a1 >> 30));
    a1 = v4 + 1;
    if (v4 == -1)
    {
      break;
    }

    if (++v3 == 624)
    {
      return;
    }
  }

  __break(1u);
}

unint64_t sub_19A4EB9A0()
{
  result = qword_1EAF9E878;
  if (!qword_1EAF9E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E878);
  }

  return result;
}

uint64_t sub_19A4EBA04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_19A4EBA4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19A4EBAA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_21;
  }

  if (v5)
  {
    v9 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_19A4E456C(0, v5 & ~(v5 >> 63), 0);
    if (a2 < v9 || v5 < 0)
    {
      goto LABEL_22;
    }

    v24 = v5;
    v10 = 0;
    while (v10 < v5)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_19;
      }

      if (*(a3 + 24) == 1)
      {
        do
        {
          do
          {
            v12 = (sub_19A4EB178() >> 5);
            v13 = sub_19A4EB178();
            v14 = (v12 * 67108864.0 + (v13 >> 6)) * 1.11022302e-16 + (v12 * 67108864.0 + (v13 >> 6)) * 1.11022302e-16 + -1.0;
            v15 = (sub_19A4EB178() >> 5);
            v16 = sub_19A4EB178();
            v17 = (v15 * 67108864.0 + (v16 >> 6)) * 1.11022302e-16 + (v15 * 67108864.0 + (v16 >> 6)) * 1.11022302e-16 + -1.0;
            v18 = v14 * v14 + v17 * v17;
          }

          while (v18 >= 1.0);
        }

        while (v18 == 0.0);
        v19 = log(v14 * v14 + v17 * v17);
        v20 = sqrt(v19 * -2.0 / v18);
        *(a3 + 16) = v14 * v20;
        *(a3 + 24) = 0;
        v21 = v17 * v20;
      }

      else
      {
        v21 = *(a3 + 16);
        *(a3 + 16) = 0;
        *(a3 + 24) = 1;
      }

      v23 = *(v26 + 16);
      v22 = *(v26 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_19A4E456C((v22 > 1), v23 + 1, 1);
      }

      *(v26 + 16) = v23 + 1;
      *(v26 + 8 * v23 + 32) = v21 * a5 + a4;
      if (v9 >= a2)
      {
        goto LABEL_20;
      }

      ++v9;
      v5 = v24;
      if (v10 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_19A4EBCD8()
{
  if (*(v0 + 24) == 1)
  {
    do
    {
      do
      {
        v1 = (sub_19A4EB178() >> 5);
        v2 = sub_19A4EB178();
        v3 = (v1 * 67108864.0 + (v2 >> 6)) * 1.11022302e-16 + (v1 * 67108864.0 + (v2 >> 6)) * 1.11022302e-16 + -1.0;
        v4 = (sub_19A4EB178() >> 5);
        v5 = sub_19A4EB178();
        v6 = (v4 * 67108864.0 + (v5 >> 6)) * 1.11022302e-16 + (v4 * 67108864.0 + (v5 >> 6)) * 1.11022302e-16 + -1.0;
        v7 = v3 * v3 + v6 * v6;
      }

      while (v7 >= 1.0);
    }

    while (v7 == 0.0);
    v8 = log(v3 * v3 + v6 * v6);
    *(v0 + 16) = v3 * sqrt(v8 * -2.0 / v7);
    *(v0 + 24) = 0;
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
  }
}

uint64_t sub_19A4EBDE0(uint64_t result, double a2, double a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    v6 = 1;
    do
    {
      v7 = *v5++;
      v8 = v6 * v7;
      if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
      {
        __break(1u);
        return result;
      }

      v6 = v8;
      --v4;
    }

    while (v4);
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v6 = 1;
LABEL_8:
  sub_19A4EBAA8(0, v6, v3, a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090);
  sub_19A4EB9A0();
  return sub_19A57264C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDiffusionUnet.loadResources()()
{
  v2 = v1;
  v19 = *(v0 + 208);
  if (v19 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v4 = 0;
    v5 = &qword_1ED824000;
    v18 = i;
    while ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](v4, v19);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v20 = v6;
      if (v5[424] != -1)
      {
        swift_once();
      }

      v7 = sub_19A5723FC();
      __swift_project_value_buffer(v7, qword_1ED82BD48);

      v8 = sub_19A5723DC();
      v9 = sub_19A57354C();

      v10 = v9;
      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v2;
        v16 = sub_19A31F114(v13, v14, &v21);
        i = v18;

        *(v11 + 4) = v16;
        v2 = v15;
        _os_log_impl(&dword_19A2DE000, v8, v10, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v17 = v11;
        v5 = &qword_1ED824000;
        MEMORY[0x19A902C50](v17, -1, -1);
      }

      sub_19A5735DC();

      if (!v2)
      {
        ++v4;
        if (v20 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v4 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

Swift::Void __swiftcall AppleDiffusionUnet.unloadResources()()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
    v2 = sub_19A573B4C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](i, v1);
      }

      else
      {
      }

      ManagedMLModel.unloadResources()();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleDiffusionUnet.prewarmResources()()
{
  v2 = v1;
  v3 = *(v0 + 208);
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v5 = 0;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    v21 = v3 & 0xC000000000000001;
    v6 = &qword_1ED824000;
    v19 = i;
    while (v21)
    {
      MEMORY[0x19A901520](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

LABEL_7:
      v23 = v7;
      if (v6[424] != -1)
      {
        swift_once();
      }

      v8 = sub_19A5723FC();
      __swift_project_value_buffer(v8, qword_1ED82BD48);

      v9 = sub_19A5723DC();
      v10 = sub_19A57354C();

      v22 = v10;
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v3;
        v16 = v2;
        v17 = sub_19A31F114(v13, v14, &v24);
        i = v19;

        *(v11 + 4) = v17;
        v2 = v16;
        v3 = v15;
        _os_log_impl(&dword_19A2DE000, v9, v22, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v18 = v11;
        v6 = &qword_1ED824000;
        MEMORY[0x19A902C50](v18, -1, -1);
      }

      sub_19A5735DC();
      if (v2)
      {

        return;
      }

      ManagedMLModel.unloadResources()();

      ++v5;
      if (v23 == i)
      {
        return;
      }
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_20;
    }

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

uint64_t sub_19A4EC548(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6, unint64_t a7, void *a8, float a9, float a10, uint64_t a11, unint64_t a12, char a13, unint64_t a14, unsigned __int8 a15, int64_t a16)
{
  v242 = a8;
  v257 = a7;
  v254 = a6;
  v253 = a5;
  v246 = a4;
  v241 = a3;
  v255 = a2;
  v240 = a1;
  v252 = a11;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v251 = *(v250 - 8);
  v19 = MEMORY[0x1EEE9AC00](v250);
  v238 = &v237 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v248 = &v237 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v249 = &v237 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v237 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v237 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v237 - v31;
  v33 = *(type metadata accessor for AppleDiffusionUnet() + 24);
  v256 = v16;
  sub_19A33546C(v16 + v33, v32, &unk_1EAFA2BF0);
  v34 = type metadata accessor for ConcreteAdapter();
  v35 = *(*(v34 - 8) + 48);
  if (v35(v32, 1, v34) == 1)
  {
    v36 = v32;
LABEL_12:
    sub_19A2F3FA0(v36, &unk_1EAFA2BF0);
    goto LABEL_13;
  }

  v37 = *v32;
  sub_19A4F3F68(v32);
  if (AppleDiffusionAdapter.rawValue.getter(v37) == 0xD000000000000014 && 0x800000019A596540 == v38)
  {
  }

  else
  {
    v40 = sub_19A573F1C();

    if ((v40 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_19A33546C(v256 + v33, v30, &unk_1EAFA2BF0);
  if (v35(v30, 1, v34) == 1)
  {
    v36 = v30;
    goto LABEL_12;
  }

  v51 = *&v30[*(v34 + 24) + 232];

  sub_19A4F3F68(v30);
  if (v51)
  {
    if (*(v51 + 16))
    {
      sub_19A31F6BC(3226162, 0xE300000000000000);
      v53 = v52;

      if (v53)
      {
        v239 = 0;
        v42 = v256;
        goto LABEL_44;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v41 = v256 + v33;
  v42 = v256;
  sub_19A33546C(v41, v27, &unk_1EAFA2BF0);
  v43 = v35(v27, 1, v34);
  v44 = v252;
  if (v43 == 1)
  {
    sub_19A2F3FA0(v27, &unk_1EAFA2BF0);
    v45 = v257;
  }

  else
  {
    v47 = *v27;
    sub_19A4F3F68(v27);
    if (AppleDiffusionAdapter.rawValue.getter(v47) == 0x63735F656C797473 && v48 == 0xEE00656C62626972)
    {

      v46 = 2;
      goto LABEL_43;
    }

    v50 = sub_19A573F1C();

    v45 = v257;
    if (v50)
    {
      goto LABEL_30;
    }
  }

  if (!v45)
  {
    goto LABEL_18;
  }

  if (!(v45 >> 62))
  {
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    v46 = 2;
    goto LABEL_43;
  }

  if (sub_19A573B4C() > 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (!v44)
  {
    goto LABEL_21;
  }

  if (v44 >> 62)
  {
    if (sub_19A573B4C())
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v45)
    {
      if (v45 >> 62)
      {
        if (sub_19A573B4C())
        {
          goto LABEL_24;
        }
      }

      else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }
    }

    v46 = *(v42 + 194);
    goto LABEL_43;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_24:
  v46 = 3;
LABEL_43:
  v239 = v46;
LABEL_44:
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_19A576E20;
  *(v54 + 32) = a9;
  *(v54 + 36) = a9;
  v261 = v54;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
  v55 = v249;
  v245 = v58;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE0);
  inited = swift_initStackObject();
  inited[1] = xmmword_19A57A9D0;
  v57 = v42[3];
  *(inited + 4) = v42[2];
  v243 = (inited + 2);
  *(inited + 5) = v57;
  LOBYTE(v58) = sub_19A2F1600(0, &qword_1ED823EE0);
  v59 = *(v251 + 16);
  v60 = v248;
  v61 = v42;
  v62 = v250;
  v59(v248, v55, v250);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);

  *(inited + 6) = sub_19A57351C();
  v63 = *(v61 + 40);
  *(inited + 7) = *(v61 + 32);
  *(inited + 8) = v63;
  v59(v60, v246, v62);

  *(inited + 9) = sub_19A57351C();
  v64 = *(v61 + 56);
  *(inited + 10) = *(v61 + 48);
  *(inited + 11) = v64;
  v59(v60, v253, v62);

  *(inited + 12) = sub_19A57351C();
  v65 = *(v61 + 72);
  *(inited + 13) = *(v61 + 64);
  *(inited + 14) = v65;
  v59(v60, v254, v62);

  *(inited + 15) = sub_19A57351C();
  v66 = sub_19A4E7C6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE8);
  swift_arrayDestroy();
  v263 = v66;
  v67 = v255;
  if ((v255 & 0x100000000) != 0)
  {
    v68 = v61;
  }

  else
  {
    v68 = v61;
    if (*(v61 + 192) == 1)
    {
      v69 = *(v61 + 128);
      inited = *(v61 + 136);
      v70 = v244;
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_19A576E10;
      *(v71 + 32) = v67;
      v261 = v71;
      sub_19A2F12E4(&qword_1EAF9E860, &unk_1EAFA32E0);

      v72 = v247;
      v73 = sub_19A57350C();
      if (v72)
      {
LABEL_55:
        (*(v251 + 8))(v249, v250);

        return inited;
      }

      v247 = 0;
      v169 = v263;
      v58 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v261 = v169;
      sub_19A5454C0(v58, v69, inited, isUniquelyReferenced_nonNull_native);

      v66 = v261;
      v263 = v261;
      goto LABEL_50;
    }
  }

  v70 = v244;
LABEL_50:
  if (*(v68 + 193) == 1)
  {
    v58 = *(v68 + 144);
    inited = *(v68 + 152);
    v74 = v241;
    if ((v241 & 0x100000000) != 0)
    {
      v261 = &unk_1F0DB57B0;
    }

    else
    {
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_19A576E10;
      *(v75 + 32) = v74;
      v261 = v75;
    }

    sub_19A2F12E4(&qword_1EAF9E860, &unk_1EAFA32E0);

    v76 = v247;
    v77 = sub_19A57350C();
    if (v76)
    {
      goto LABEL_55;
    }

    v247 = 0;
    v78 = v263;
    v79 = v77;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v261 = v78;
    sub_19A5454C0(v79, v58, inited, v80);

    v66 = v261;
    v263 = v261;
  }

  v81 = v257;
  if (v257)
  {
    inited = (v257 & 0xFFFFFFFFFFFFFF8);
    if (v257 >> 62)
    {
      goto LABEL_158;
    }

    v82 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_60:
    if (v82)
    {
      v248 = inited;
      v83 = v68;
      v68 = 0;
      v84 = *(v83 + 80);
      v254 = v81 & 0xC000000000000001;
      v255 = v84;
      v70 = v84 + 40;
      v253 = v82;
      while (1)
      {
        if (v68 >= *(v255 + 16))
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          v82 = sub_19A573B4C();
          if (v82 < 0)
          {
            __break(1u);
            goto LABEL_160;
          }

          goto LABEL_60;
        }

        v58 = *(v70 - 8);
        inited = *v70;
        if (v254)
        {

          v87 = MEMORY[0x19A901520](v68, v81);
        }

        else
        {
          if (v68 >= *(v248 + 2))
          {
            goto LABEL_153;
          }

          v88 = *(v81 + 8 * v68 + 32);

          v87 = v88;
        }

        v89 = v87;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v261 = v66;
        v91 = sub_19A31F6BC(v58, inited);
        v92 = v66[2];
        v93 = (v90 & 1) == 0;
        v94 = v92 + v93;
        if (__OFADD__(v92, v93))
        {
          goto LABEL_149;
        }

        v95 = v90;
        if (v66[3] >= v94)
        {
          if (v81)
          {
            if ((v90 & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          else
          {
            sub_19A554C80();
            if ((v95 & 1) == 0)
            {
              goto LABEL_76;
            }
          }
        }

        else
        {
          sub_19A550DB0(v94, v81);
          v96 = sub_19A31F6BC(v58, inited);
          if ((v95 & 1) != (v97 & 1))
          {
            goto LABEL_214;
          }

          v91 = v96;
          if ((v95 & 1) == 0)
          {
LABEL_76:
            v66 = v261;
            v261[(v91 >> 6) + 8] |= 1 << v91;
            v98 = (v66[6] + 16 * v91);
            *v98 = v58;
            v98[1] = inited;
            *(v66[7] + 8 * v91) = v89;
            v99 = v66[2];
            v100 = __OFADD__(v99, 1);
            v101 = v99 + 1;
            if (v100)
            {
              goto LABEL_152;
            }

            v66[2] = v101;
            goto LABEL_63;
          }
        }

        v66 = v261;
        v85 = v261[7];
        v86 = *(v85 + 8 * v91);
        *(v85 + 8 * v91) = v89;

LABEL_63:
        ++v68;
        v70 += 16;
        v81 = v257;
        if (v253 == v68)
        {
          v263 = v66;
          v68 = v256;
          break;
        }
      }
    }
  }

  else
  {
    v102 = *(v68 + 176);
    v105 = *(v102 + 64);
    v104 = v102 + 64;
    v103 = v105;
    v106 = 1 << *(*(v68 + 176) + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & v103;
    v81 = (v106 + 63) >> 6;
    v257 = *(v68 + 176);

    v109 = 0;
    v255 = v104;
    while (v108)
    {
      v70 = v109;
LABEL_90:
      v113 = __clz(__rbit64(v108)) | (v70 << 6);
      v114 = (*(v257 + 48) + 16 * v113);
      v68 = *v114;
      v58 = v114[1];
      inited = *(*(v257 + 56) + 8 * v113);

      v115 = swift_isUniquelyReferenced_nonNull_native();
      v261 = v66;
      v116 = sub_19A31F6BC(v68, v58);
      v118 = v66[2];
      v119 = (v117 & 1) == 0;
      v100 = __OFADD__(v118, v119);
      v120 = v118 + v119;
      if (v100)
      {
        goto LABEL_154;
      }

      v121 = v117;
      if (v66[3] >= v120)
      {
        if ((v115 & 1) == 0)
        {
          v126 = v116;
          sub_19A554C80();
          v116 = v126;
        }
      }

      else
      {
        sub_19A550DB0(v120, v115);
        v116 = sub_19A31F6BC(v68, v58);
        if ((v121 & 1) != (v122 & 1))
        {
LABEL_214:
          sub_19A57404C();
          __break(1u);
LABEL_215:

          __break(1u);
          return result;
        }
      }

      v108 &= v108 - 1;
      if (v121)
      {
        v110 = v116;

        v111 = v261;
        v112 = v261[7];
        v58 = *(v112 + 8 * v110);
        *(v112 + 8 * v110) = inited;
        v66 = v111;
      }

      else
      {
        v66 = v261;
        v261[(v116 >> 6) + 8] |= 1 << v116;
        v123 = (v66[6] + 16 * v116);
        *v123 = v68;
        v123[1] = v58;
        *(v66[7] + 8 * v116) = inited;

        v124 = v66[2];
        v100 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v100)
        {
          goto LABEL_156;
        }

        v66[2] = v125;
      }

      v109 = v70;
      v68 = v256;
      v104 = v255;
    }

    while (1)
    {
      v70 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        goto LABEL_150;
      }

      if (v70 >= v81)
      {
        break;
      }

      v108 = *(v104 + 8 * v70);
      ++v109;
      if (v108)
      {
        goto LABEL_90;
      }
    }

    v263 = v66;
  }

  v70 = v252;
  if (!v252)
  {
    v144 = *(v68 + 184);
    v147 = *(v144 + 64);
    v146 = v144 + 64;
    v145 = v147;
    v148 = 1 << *(*(v68 + 184) + 32);
    v149 = -1;
    if (v148 < 64)
    {
      v149 = ~(-1 << v148);
    }

    v150 = v149 & v145;
    v81 = (v148 + 63) >> 6;
    v257 = *(v68 + 184);

    v151 = 0;
    v255 = v146;
    while (v150)
    {
      v70 = v151;
LABEL_121:
      v155 = __clz(__rbit64(v150)) | (v70 << 6);
      v156 = (*(v257 + 48) + 16 * v155);
      v68 = *v156;
      v58 = v156[1];
      inited = *(*(v257 + 56) + 8 * v155);

      v157 = swift_isUniquelyReferenced_nonNull_native();
      v261 = v66;
      v158 = sub_19A31F6BC(v68, v58);
      v160 = v66[2];
      v161 = (v159 & 1) == 0;
      v100 = __OFADD__(v160, v161);
      v162 = v160 + v161;
      if (v100)
      {
        goto LABEL_155;
      }

      v163 = v159;
      if (v66[3] >= v162)
      {
        if ((v157 & 1) == 0)
        {
          v168 = v158;
          sub_19A554C80();
          v158 = v168;
        }
      }

      else
      {
        sub_19A550DB0(v162, v157);
        v158 = sub_19A31F6BC(v68, v58);
        if ((v163 & 1) != (v164 & 1))
        {
          goto LABEL_214;
        }
      }

      v150 &= v150 - 1;
      if (v163)
      {
        v152 = v158;

        v153 = v261;
        v154 = v261[7];
        v58 = *(v154 + 8 * v152);
        *(v154 + 8 * v152) = inited;
        v66 = v153;
      }

      else
      {
        v66 = v261;
        v261[(v158 >> 6) + 8] |= 1 << v158;
        v165 = (v66[6] + 16 * v158);
        *v165 = v68;
        v165[1] = v58;
        *(v66[7] + 8 * v158) = inited;

        v166 = v66[2];
        v100 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (v100)
        {
          goto LABEL_157;
        }

        v66[2] = v167;
      }

      v151 = v70;
      v68 = v256;
      v146 = v255;
    }

    while (1)
    {
      v70 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        goto LABEL_151;
      }

      if (v70 >= v81)
      {
        v255 = v66;
        v263 = v66;

        goto LABEL_185;
      }

      v150 = *(v146 + 8 * v70);
      ++v151;
      if (v150)
      {
        goto LABEL_121;
      }
    }
  }

  v68 = v242;
  if (!v242)
  {

    goto LABEL_142;
  }

  LOBYTE(v58) = a13;
  sub_19A4F791C(v242, v252);
  v128 = qword_1ED824D40;
  v81 = v68;
  if (v128 != -1)
  {
    goto LABEL_212;
  }

  while (1)
  {
    v129 = sub_19A5723FC();
    __swift_project_value_buffer(v129, qword_1ED82BD48);
    v130 = sub_19A5723DC();
    v131 = sub_19A57353C();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 134217984;
      *(v132 + 4) = a10;
      _os_log_impl(&dword_19A2DE000, v130, v131, "Determining IPA scale. Current stepProgression: %f", v132, 0xCu);
      v133 = v132;
      v70 = v252;
      MEMORY[0x19A902C50](v133, -1, -1);
    }

    if ((v58 & 1) != 0 || (v134 = a12, *&a12 <= a10) && *(&a12 + 1) >= a10)
    {
      v135 = v256[11];
      v58 = v256[12];
      v136 = v81;

      v137 = v263;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v261 = v137;
      sub_19A5454C0(v136, v135, v58, v138);

      v263 = v261;
      v139 = v136;
      v140 = sub_19A5723DC();
      LOBYTE(v58) = sub_19A57353C();

      if (os_log_type_enabled(v140, v58))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v141 = 138412290;
        v143 = [v139 objectAtIndexedSubscript_];
        *(v141 + 4) = v143;
        *v142 = v143;
        _os_log_impl(&dword_19A2DE000, v140, v58, "Using scale value of %@", v141, 0xCu);
        sub_19A2F3FA0(v142, &qword_1EAF9FD28);
        MEMORY[0x19A902C50](v142, -1, -1);
        MEMORY[0x19A902C50](v141, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v171 = v256[11];
      v58 = v256[12];
      v172 = v256[23];
      v173 = *(v172 + 16);

      if (v173 && (v174 = sub_19A31F6BC(v171, v58), (v175 & 1) != 0))
      {
        v176 = *(*(v172 + 56) + 8 * v174);
        v177 = v176;
        v178 = v176;
      }

      else
      {
        v178 = 0;
      }

      sub_19A549A94(v178, v171, v58);
      v179 = sub_19A5723DC();
      v180 = sub_19A57353C();
      if (os_log_type_enabled(v179, v180))
      {
        v58 = swift_slowAlloc();
        *v58 = 134218496;
        *(v58 + 4) = a10;
        *(v58 + 12) = 2048;
        *(v58 + 14) = *&v134;
        *(v58 + 22) = 2048;
        *(v58 + 24) = *(&v134 + 1);
        _os_log_impl(&dword_19A2DE000, v179, v180, "stepProgression %f is outside the range of [%f, %f], so using zero IPA scale", v58, 0x20u);
        MEMORY[0x19A902C50](v58, -1, -1);
      }
    }

    v68 = v242;
LABEL_142:
    v81 = v70 >> 62;
    if (v70 >> 62)
    {
LABEL_160:
      if (sub_19A573B4C() > 5)
      {
LABEL_144:

        v261 = 0;
        v262 = 0xE000000000000000;
        sub_19A57395C();
        if (v81)
        {
          v181 = sub_19A573B4C();
        }

        else
        {
          v181 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v259 = v181;
        v182 = sub_19A573EDC();
        v184 = v183;

        v261 = v182;
        v262 = v184;
        MEMORY[0x19A900A50](0xD00000000000002DLL, 0x800000019A59CCC0);
        v259 = 5;
        v185 = sub_19A573EDC();
        MEMORY[0x19A900A50](v185);

        MEMORY[0x19A900A50](46, 0xE100000000000000);
        v186 = v261;
        v187 = v262;
        sub_19A4F78C8();
        v188 = swift_allocError();
        *v189 = v186;
        *(v189 + 8) = v187;
        inited = v188;
        *(v189 + 16) = 1;
        swift_willThrow();

        (*(v251 + 8))(v249, v250);
        return inited;
      }

      a12 = sub_19A573B4C();
    }

    else
    {
      a12 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a12 > 5)
      {
        goto LABEL_144;
      }
    }

    if (a12)
    {
      v190 = 0;
      v257 = v70 & 0xC000000000000001;
      v255 = v70 & 0xFFFFFFFFFFFFFF8;
      v254 = a12;
      while (1)
      {
        if (v257)
        {
          v194 = MEMORY[0x19A901520](v190, v70);
        }

        else
        {
          if (v190 >= *(v255 + 16))
          {
            goto LABEL_208;
          }

          v194 = *(v70 + 8 * v190 + 32);
        }

        v70 = v194;
        v81 = v190 + 1;
        if (__OFADD__(v190, 1))
        {
          break;
        }

        v58 = v256[13];
        a12 = v256[14];
        v261 = v58;
        v262 = a12;
        if (v190)
        {
          v259 = 95;
          v260 = 0xE100000000000000;
          v258 = v190 + 1;

          v195 = sub_19A573EDC();
          MEMORY[0x19A900A50](v195);

          MEMORY[0x19A900A50](v259, v260);

          v58 = v261;
          a12 = v262;
        }

        else
        {
        }

        v196 = v70;
        v197 = v263;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v259 = v197;
        v199 = sub_19A31F6BC(v58, a12);
        v200 = *(v197 + 16);
        v201 = (v198 & 1) == 0;
        v202 = v200 + v201;
        if (__OFADD__(v200, v201))
        {
          goto LABEL_209;
        }

        v203 = v198;
        if (*(v197 + 24) >= v202)
        {
          if ((v70 & 1) == 0)
          {
            sub_19A554C80();
          }
        }

        else
        {
          sub_19A550DB0(v202, v70);
          v204 = sub_19A31F6BC(v58, a12);
          if ((v203 & 1) != (v205 & 1))
          {
            goto LABEL_214;
          }

          v199 = v204;
        }

        v70 = v252;
        if (v203)
        {

          v191 = v259;
          v192 = *(v259 + 56);
          v193 = *(v192 + 8 * v199);
          *(v192 + 8 * v199) = v196;
        }

        else
        {
          v191 = v259;
          *(v259 + 8 * (v199 >> 6) + 64) |= 1 << v199;
          v206 = (v191[6] + 16 * v199);
          *v206 = v58;
          v206[1] = a12;
          *(v191[7] + 8 * v199) = v196;

          v207 = v191[2];
          v100 = __OFADD__(v207, 1);
          v208 = v207 + 1;
          if (v100)
          {
            goto LABEL_210;
          }

          v191[2] = v208;
        }

        v263 = v191;
        ++v190;
        a12 = v254;
        if (v81 == v254)
        {
          goto LABEL_184;
        }
      }

      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v191 = v263;
LABEL_184:
    v255 = v191;
    swift_bridgeObjectRelease_n();

    v68 = v256;
LABEL_185:
    v209 = v255;

    if (a14)
    {
      v210 = a14;
    }

    else
    {
      v210 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
    }

    v211 = swift_isUniquelyReferenced_nonNull_native();
    v261 = v209;
    v212 = v247;
    sub_19A4F5724(v210, sub_19A4F56D8, 0, v211, &v261);
    if (v212)
    {
      goto LABEL_215;
    }

    v213 = a15;

    v215 = v261;
    MEMORY[0x1EEE9AC00](v214);
    *(&v237 - 2) = v68;
    *(&v237 - 1) = v215;
    v216 = sub_19A4DAD74(sub_19A4F78A8, (&v237 - 4), v240);
    LOBYTE(v58) = 0;

    a12 = sub_19A4F0E00(v216, a15 & 1);

    v81 = *(a12 + 16);
    if (!v81)
    {
      break;
    }

    v261 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v217 = 0;
    v70 = 0x1E695F000uLL;
    while (v217 < *(a12 + 16))
    {

      sub_19A543CE8(v218);
      v219 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      sub_19A544CF4();
      ++v217;

      sub_19A573A2C();
      v58 = v261[2];
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      if (v81 == v217)
      {

        v220 = v261;
        goto LABEL_195;
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    swift_once();
  }

  v220 = MEMORY[0x1E69E7CC0];
LABEL_195:

  if (v220 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
    sub_19A573B8C();
  }

  else
  {
    sub_19A573FEC();
  }

  v221 = objc_allocWithZone(MEMORY[0x1E695FE30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
  v222 = sub_19A57307C();

  v223 = [v221 initWithFeatureProviderArray_];

  v224 = swift_slowAlloc();
  *v224 = 0;
  v225 = sub_19A57234C();
  LOBYTE(v222) = sub_19A57361C();
  v226 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v225, v222, v226, "unet-predictions-only", "", v224, 2u);
  v228 = sub_19A4F2268(v239, v223, a16);
  v257 = v223;
  v229 = sub_19A57360C();
  v230 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v225, v229, v230, "unet-predictions-only", "", v224, 2u);

  MEMORY[0x19A902C50](v224, -1, -1);
  v231 = *(v228 + 16);
  if (v231)
  {
    LODWORD(v254) = a15;
    v261 = MEMORY[0x1E69E7CC0];
    sub_19A4E436C(0, v231, 0);
    v232 = 0;
    v233 = v261;
    v234 = v238;
    do
    {
      v259 = v232;
      sub_19A4F2A64(&v259, v228);
      v261 = v233;
      v236 = v233[2];
      v235 = v233[3];
      if (v236 >= v235 >> 1)
      {
        sub_19A4E436C(v235 > 1, v236 + 1, 1);
        v233 = v261;
      }

      ++v232;
      v233[2] = v236 + 1;
      (*(v251 + 32))(v233 + ((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v236, v234, v250);
    }

    while (v231 != v232);

    v213 = v254;
  }

  else
  {

    v233 = MEMORY[0x1E69E7CC0];
  }

  inited = sub_19A4F2BF0(v233, v213 & 1);

  (*(v251 + 8))(v249, v250);
  return inited;
}

uint64_t AppleDiffusionUnet.defaultGeometricConditioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + 168);
  v5 = sub_19A4EF400();
  v6 = type metadata accessor for AppleDiffusionUnet();
  sub_19A33546C(v0 + *(v6 + 24), v3, &unk_1EAFA2BF0);
  v7 = type metadata accessor for ConcreteAdapter();
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {

    result = sub_19A2F3FA0(v3, &unk_1EAFA2BF0);
LABEL_18:
    if (*(v4 + 16) >= 2uLL)
    {
      if (*(v4 + 40) == 6)
      {
        v24 = &unk_1F0DB5538;
      }

      else
      {
        v24 = &unk_1F0DB55A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
      sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
      return sub_19A57264C();
    }

    __break(1u);
    goto LABEL_26;
  }

  v9 = *&v3[*(v7 + 24) + 232];

  sub_19A4F3F68(v3);
  if (!v9)
  {
    goto LABEL_17;
  }

  if (!*(v9 + 16))
  {

    goto LABEL_17;
  }

  v10 = sub_19A31F6BC(v5, 0xE300000000000000);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v13 = *(*(v9 + 56) + 8 * v10);

  v14 = v13[2];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = v13[4];
  v15 = v13[5];
  v17 = v16 * v15;
  if ((v16 * v15) >> 64 != (v16 * v15) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 < 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v13[6];

  if ((v16 * v18) >> 64 != (v16 * v18) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v4 + 16) >= 2uLL)
  {
    v19 = v17;
    v20 = (v16 * v18);
    v21 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
    v22 = swift_allocObject();
    if (v21 == 6)
    {
      *(v22 + 16) = xmmword_19A58BFA0;
      *(v22 + 32) = v19;
      *(v22 + 36) = v20;
      *(v22 + 40) = 0;
      *(v22 + 48) = v19;
      *(v22 + 52) = v20;
    }

    else
    {
      *(v22 + 16) = xmmword_19A57A9D0;
      *(v22 + 32) = v19;
      *(v22 + 36) = v20;
      *(v22 + 40) = 0;
    }

    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
    sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
    return sub_19A57264C();
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_19A4EE7FC(unint64_t a1, float a2)
{
  v4 = v2;
  v6 = *(v2 + 184);
  if (*(v6 + 16))
  {
    v8 = sub_19A31F6BC(*(v4 + 88), *(v4 + 96));
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);
      v11 = [v10 shape];
      sub_19A2F1600(0, &qword_1ED823EA8);
      v12 = sub_19A57308C();

      v13 = objc_allocWithZone(MEMORY[0x1E695FED0]);
      v14 = sub_19A52A8D8(v12, 65552);
      if (v3)
      {

        return v12;
      }

      v12 = v14;
      if (v14)
      {
        v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v26 = a2;
        v27 = [v25 initWithFloat_];
        [v12 fillWithNumber_];
      }

      if (a1 >> 62)
      {
        goto LABEL_19;
      }

LABEL_6:
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v12 = 0;
  if (!(a1 >> 62))
  {
    goto LABEL_6;
  }

LABEL_19:
  v15 = sub_19A573B4C();
LABEL_7:
  if (!v15)
  {
    return v12;
  }

  result = sub_19A573A5C();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v28 = v12;
    v17 = objc_opt_self();
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x19A901520](v18, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_19A58F190;
      *(v21 + 32) = v20;
      *(v21 + 40) = v20;
      sub_19A2F1600(0, &qword_1ED823EE0);
      v22 = v20;
      v23 = sub_19A57307C();

      v24 = [v17 multiArrayByConcatenatingMultiArrays:v23 alongAxis:0 dataType:65552];

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
    }

    while (v15 != v18);
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A4EEB04(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4EEB24, 0, 0);
}

uint64_t sub_19A4EEB24()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19A4EEC40;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19A354FC8;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 modelDescriptionWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19A4EEC40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_19A4EED70;
  }

  else
  {
    v2 = sub_19A4EED50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4EED70()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  **(v0 + 152) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A4EEDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3138);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;

  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v10[7] = v8;

  v11 = v8;
  sub_19A307070(0, 0, v6, &unk_19A58FEF8, v10);

  result = sub_19A57366C();
  v13 = *(v7 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 16);
    if (v13)
    {
      v15[1] = *(v7 + 16);
      sub_19A4F7D5C(v14, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
    }

    return v14;
  }

  return result;
}

uint64_t sub_19A4EEFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;

  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v10[7] = v8;

  v11 = v8;
  sub_19A307070(0, 0, v6, &unk_19A58FE50, v10);

  result = sub_19A57366C();
  v13 = *(v7 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 16);
    if (v13)
    {
      v16[1] = *(v7 + 16);
      sub_19A2EA56C(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
      v15 = v14;
    }

    return v14;
  }

  return result;
}

uint64_t sub_19A4EF1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = -1;

  v8 = dispatch_semaphore_create(0);
  v9 = sub_19A5731CC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v7;
  v10[7] = v8;

  v11 = v8;
  sub_19A307070(0, 0, v6, &unk_19A58FE70, v10);

  result = sub_19A57366C();
  v13 = *(v7 + 24);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 16);
    if (v13)
    {
      v16[1] = *(v7 + 16);
      sub_19A2EA56C(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
      v15 = v14;
    }

    return v14;
  }

  return result;
}

uint64_t sub_19A4EF400()
{
  v1 = 3226161;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for AppleDiffusionUnet() + 24);
  sub_19A33546C(v0 + v8, v7, &unk_1EAFA2BF0);
  v9 = type metadata accessor for ConcreteAdapter();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) == 1)
  {
    v11 = v7;
LABEL_12:
    sub_19A2F3FA0(v11, &unk_1EAFA2BF0);
    return v1;
  }

  v12 = *v7;
  sub_19A4F3F68(v7);
  if (AppleDiffusionAdapter.rawValue.getter(v12) == 0xD000000000000014 && 0x800000019A596540 == v13)
  {
  }

  else
  {
    v15 = sub_19A573F1C();

    if ((v15 & 1) == 0)
    {
      return v1;
    }
  }

  sub_19A33546C(v0 + v8, v5, &unk_1EAFA2BF0);
  if (v10(v5, 1, v9) == 1)
  {
    v11 = v5;
    goto LABEL_12;
  }

  v17 = *&v5[*(v9 + 24) + 232];

  sub_19A4F3F68(v5);
  if (v17)
  {
    if (*(v17 + 16))
    {
      sub_19A31F6BC(3226162, 0xE300000000000000);
      v19 = v18;

      if (v19)
      {
        return 3226162;
      }
    }

    else
    {
    }
  }

  return v1;
}

void sub_19A4EF65C(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *, char *, char *)@<X8>)
{
  v134 = a5;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3098);
  v9 = MEMORY[0x1EEE9AC00](v147);
  v157 = (v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v146 = v133 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v143 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v133 - v17;
  v19 = sub_19A570EAC();
  v151 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v137 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v145 = v133 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v133 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v133 - v27;
  v135 = a2;
  [a2 copy];
  sub_19A57384C();
  swift_unknownObjectRelease();
  sub_19A2F1600(0, &qword_1EAF9E798);
  swift_dynamicCast();
  v29 = v153;
  [v153 setExperimentalMLE5EngineUsage_];
  sub_19A33546C(a3, v18, &unk_1EAFA2BF0);
  v30 = type metadata accessor for ConcreteAdapter();
  v31 = (*(*(v30 - 8) + 48))(v18, 1, v30);
  v148 = a1;
  v144 = a4;
  if (v31 == 1)
  {
    sub_19A2F3FA0(v18, &unk_1EAFA2BF0);
    v32 = v151;
  }

  else
  {
    v33 = *(v30 + 20);
    v149 = v29;
    v34 = v151;
    v136 = a3;
    v35 = *(v151 + 16);
    v35(v26, &v18[v33], v19);
    sub_19A4F3F68(v18);
    (*(v34 + 32))(v28, v26, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30A0);
    v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D20) - 8);
    v37 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_19A576E10;
    v39 = (v38 + v37);
    a4 = v144;
    v40 = v36[14];
    *v39 = 1634889580;
    *(v39 + 1) = 0xE400000000000000;
    v35(&v39[v40], v28, v19);
    a3 = v136;
    a1 = v148;
    sub_19A4E7E90(v38);
    swift_setDeallocating();
    sub_19A2F3FA0(v39, &qword_1EAFA2D20);
    swift_deallocClassInstance();
    v41 = sub_19A572ADC();

    v29 = v149;
    [v149 setE5rtMutableMILWeightURLs_];

    v32 = v151;
    (*(v151 + 8))(v28, v19);
  }

  v138 = *(a1 + 2);
  v42 = v150;
  if (v138)
  {
    (*(v32 + 16))(v150, &a1[(*(v32 + 80) + 32) & ~*(v32 + 80)], v19);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (*(v32 + 56))(v42, v43, 1, v19);
  v44 = v143;
  sub_19A33546C(a3, v143, &unk_1EAFA2BF0);
  v45 = v152;
  sub_19A4F59AC(v42, v44, v155);
  if (v45)
  {
    sub_19A2F3FA0(a3, &unk_1EAFA2BF0);

    return;
  }

  v133[0] = 0;
  v149 = v29;
  v136 = a3;
  v46 = &unk_1F0DB5A58;
  v47 = *(a1 + 2);
  if (v47 == 1)
  {
    v46 = &unk_1F0DB5A20;
  }

  v133[1] = v46;
  v48 = *(a4 + 16);
  v150 = v19;
  if (v48)
  {
    v152 = MEMORY[0x1E69E7CC0];
    v49 = *(&v156 + 1);
    v44 = 32;
    do
    {
      if (*(v49 + 16))
      {
        v52 = sub_19A4F3A80(*(a4 + v44));
        if (v53)
        {
          v54 = (*(v49 + 56) + 16 * v52);
          v56 = *v54;
          v55 = v54[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = sub_19A31CE20(0, *(v152 + 2) + 1, 1, v152);
          }

          v58 = *(v152 + 2);
          v57 = *(v152 + 3);
          v19 = v58 + 1;
          if (v58 >= v57 >> 1)
          {
            v152 = sub_19A31CE20((v57 > 1), v58 + 1, 1, v152);
          }

          v50 = v152;
          *(v152 + 2) = v19;
          v51 = &v50[16 * v58];
          *(v51 + 4) = v56;
          *(v51 + 5) = v55;
          a4 = v144;
        }
      }

      ++v44;
      --v48;
    }

    while (v48);

    goto LABEL_22;
  }

  v60 = *(&v156 + 1);
  if (*(*(&v156 + 1) + 16))
  {
    v79 = sub_19A4F3A80(0);
    if ((v80 & 1) == 0)
    {
      v152 = MEMORY[0x1E69E7CC0];
      v59 = v136;
      goto LABEL_44;
    }

    v81 = *(v60 + 7) + 16 * v79;
    v59 = *v81;
    v32 = *(v81 + 8);

    v152 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v44 = *(v152 + 2);
    v82 = *(v152 + 3);
    v19 = v44 + 1;
    if (v44 < v82 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_81;
  }

  v152 = MEMORY[0x1E69E7CC0];
  v59 = v136;
  while (1)
  {
    v144 = *(a1 + 2);
    if (v144)
    {
      v154[0] = MEMORY[0x1E69E7CC0];

      v60 = v154;
      sub_19A573A5C();
      v61 = 0;
      v143 = *(a1 + 2);
      v142 = &a1[(*(v32 + 80) + 32) & ~*(v32 + 80)];
      v62 = &unk_1F0DB5A68;
      v63 = &unk_1F0DB5A78;
      if (v47 == 1)
      {
        v63 = &unk_1F0DB5A40;
        v62 = &unk_1F0DB5A30;
      }

      v64 = *v62;
      v141 = v32 + 16;
      v140 = v32 + 32;
      v139 = v64 & ~(v64 >> 63);
      v59 = (v63 + 16);
      while (v143 != v61)
      {
        if (v61 >= *(a1 + 2))
        {
          goto LABEL_66;
        }

        v65 = v147;
        v66 = *(v147 + 48);
        v67 = v151;
        v60 = *(v151 + 16);
        v68 = v146;
        a1 = v150;
        v44 = v141;
        v60(&v146[v66], &v142[*(v151 + 72) * v61], v150);
        *v157 = v61;
        v32 = *(v65 + 48);
        v69 = *(v67 + 32);
        v19 = v157;
        v70 = &v68[v66];
        v71 = v145;
        v69(v157 + v32, v70, a1);
        v60(v71, (v19 + v32), a1);
        if (v139 == v61)
        {
          goto LABEL_67;
        }

        ++v61;
        v72 = *(v59 - 2);
        v73 = *(v59 - 1);
        v74 = *v59;
        v59 += 24;
        type metadata accessor for ManagedMLModel(0);
        swift_allocObject();
        v75 = v152;

        v76 = v149;
        v77 = v75;
        v44 = v144;
        v78 = v73;
        a1 = v148;
        ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v71, v76, v77, v72, v78, v74);
        sub_19A2F3FA0(v19, &qword_1EAFA3098);
        v60 = v154;
        sub_19A573A2C();
        v32 = *(v154[0] + 16);
        sub_19A573A6C();
        sub_19A573A7C();
        sub_19A573A3C();
        if (v44 == v61)
        {

          v32 = v154[0];
          v59 = v136;
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
LABEL_37:
      v60 = v134;
      *(v134 + 26) = v32;
      if (!(v32 >> 62))
      {
        v85 = v151;
        if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        goto LABEL_39;
      }
    }

    v117 = sub_19A573B4C();
    v85 = v151;
    if (!v117)
    {
LABEL_69:
      sub_19A4F74E0(v155);
      if (v138)
      {
        v147 = v32;
        v119 = *(v85 + 16);
        v118 = v85 + 16;
        v157 = v119;
        v120 = &a1[(*(v118 + 64) + 32) & ~*(v118 + 64)];
        v121 = *(v118 + 56);
        v122 = (v118 - 8);
        v123 = MEMORY[0x1E69E7CC0];
        do
        {
          v124 = v137;
          v125 = v150;
          v157(v137, v120, v150);
          v126 = sub_19A570E5C();
          v128 = v127;
          (*v122)(v124, v125);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_19A31CE20(0, *(v123 + 2) + 1, 1, v123);
          }

          v130 = *(v123 + 2);
          v129 = *(v123 + 3);
          if (v130 >= v129 >> 1)
          {
            v123 = sub_19A31CE20((v129 > 1), v130 + 1, 1, v123);
          }

          *(v123 + 2) = v130 + 1;
          v131 = &v123[16 * v130];
          *(v131 + 4) = v126;
          *(v131 + 5) = v128;
          v120 += v121;
          --v138;
        }

        while (v138);
      }

      else
      {

        v123 = MEMORY[0x1E69E7CC0];
      }

      sub_19A4E6F34();
      swift_allocError();
      *v132 = v123;
      *(v132 + 8) = 0;
      *(v132 + 16) = 2;
      swift_willThrow();

      sub_19A2F3FA0(v136, &unk_1EAFA2BF0);

      return;
    }

LABEL_39:
    if ((v32 & 0xC000000000000001) != 0)
    {
      break;
    }

    v47 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v47)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_81:
    v152 = sub_19A31CE20((v82 > 1), v19, 1, v152);
LABEL_35:
    v83 = v152;
    *(v152 + 2) = v19;
    v84 = &v83[16 * v44];
    *(v84 + 4) = v59;
    *(v84 + 5) = v32;
    v59 = v136;
    v32 = v151;
LABEL_44:
    if (*(v60 + 2))
    {
      v93 = sub_19A4F3A80(1u);
      if (v94)
      {
        v95 = (*(v60 + 7) + 16 * v93);
        v96 = *v95;
        v97 = v95[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_19A31CE20(0, *(v152 + 2) + 1, 1, v152);
        }

        v44 = *(v152 + 2);
        v98 = *(v152 + 3);
        v19 = v44 + 1;
        if (v44 >= v98 >> 1)
        {
          v152 = sub_19A31CE20((v98 > 1), v44 + 1, 1, v152);
        }

        v99 = v152;
        *(v152 + 2) = v19;
        v100 = &v99[16 * v44];
        *(v100 + 4) = v96;
        *(v100 + 5) = v97;
        v59 = v136;
        v32 = v151;
      }

      if (*(v60 + 2))
      {
        v101 = sub_19A4F3A80(2u);
        if (v102)
        {
          v103 = (*(v60 + 7) + 16 * v101);
          v104 = *v103;
          v105 = v103[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = sub_19A31CE20(0, *(v152 + 2) + 1, 1, v152);
          }

          v44 = *(v152 + 2);
          v106 = *(v152 + 3);
          v19 = v44 + 1;
          if (v44 >= v106 >> 1)
          {
            v152 = sub_19A31CE20((v106 > 1), v44 + 1, 1, v152);
          }

          v107 = v152;
          *(v152 + 2) = v19;
          v108 = &v107[16 * v44];
          *(v108 + 4) = v104;
          *(v108 + 5) = v105;
          v59 = v136;
          v32 = v151;
        }

        if (*(v60 + 2))
        {
          v109 = sub_19A4F3A80(3u);
          if (v110)
          {
            v111 = (*(v60 + 7) + 16 * v109);
            v113 = *v111;
            v112 = v111[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v152 = sub_19A31CE20(0, *(v152 + 2) + 1, 1, v152);
            }

            v44 = *(v152 + 2);
            v114 = *(v152 + 3);
            if (v44 >= v114 >> 1)
            {
              v152 = sub_19A31CE20((v114 > 1), v44 + 1, 1, v152);
            }

            v115 = v152;
            *(v152 + 2) = v44 + 1;
            v116 = &v115[16 * v44];
            *(v116 + 4) = v113;
            *(v116 + 5) = v112;
LABEL_22:
            v59 = v136;
            v32 = v151;
            continue;
          }
        }
      }
    }
  }

  MEMORY[0x19A901520](0, v32);

  v60 = v134;
  swift_unknownObjectRelease();

LABEL_41:
  v86 = v155[11];
  *(v60 + 10) = v155[10];
  *(v60 + 11) = v86;
  *(v60 + 12) = v156;
  v87 = v155[7];
  *(v60 + 6) = v155[6];
  *(v60 + 7) = v87;
  v88 = v155[9];
  *(v60 + 8) = v155[8];
  *(v60 + 9) = v88;
  v89 = v155[3];
  *(v60 + 2) = v155[2];
  *(v60 + 3) = v89;
  v90 = v155[5];
  *(v60 + 4) = v155[4];
  *(v60 + 5) = v90;
  v91 = v155[1];
  *v60 = v155[0];
  *(v60 + 1) = v91;
  v92 = type metadata accessor for AppleDiffusionUnet();
  sub_19A4F7470(v59, v60 + *(v92 + 24));
}

void sub_19A4F071C(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(char *, char *, char *)@<X8>)
{
  v35 = a1;
  v36 = a3;
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v34 = &v30 - v14;
  v15 = *(v3 + 208);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_19:
    v17 = MEMORY[0x1E69E7CC0];
    if ((v15 & 0xC000000000000001) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v26 = MEMORY[0x19A901520](0, v15);
    goto LABEL_17;
  }

  v16 = sub_19A573B4C();
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_3:
  v40 = MEMORY[0x1E69E7CC0];
  sub_19A4E432C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    goto LABEL_22;
  }

  v32 = a2;
  v33 = v4;
  v17 = v40;
  v31 = v15 & 0xC000000000000001;
  v39 = v15;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    v38 = (v7 + 32);
    do
    {
      v19 = MEMORY[0x19A901520](v18, v39);
      (*(v7 + 16))(v12, v19 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v6);
      swift_unknownObjectRelease();
      v40 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_19A4E432C(v20 > 1, v21 + 1, 1);
        v17 = v40;
      }

      ++v18;
      *(v17 + 16) = v21 + 1;
      (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v12, v6);
    }

    while (v16 != v18);
  }

  else
  {
    v22 = (v15 + 32);
    v23 = *(v7 + 16);
    v37 = v7 + 32;
    v38 = v23;
    do
    {
      v38(v10, *v22 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v6);
      v40 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_19A4E432C(v24 > 1, v25 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v25 + 1;
      (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, v6);
      ++v22;
      --v16;
    }

    while (v16);
  }

  a2 = v32;
  v15 = v39;
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v15 + 32);

LABEL_17:
    [*(v26 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_configuration) copy];
    sub_19A57384C();
    swift_unknownObjectRelease();

    sub_19A2F1600(0, &qword_1EAF9E798);
    swift_dynamicCast();
    v27 = v41;
    v28 = v34;
    sub_19A4F77FC(v35, v34);
    v29 = type metadata accessor for ConcreteAdapter();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);

    sub_19A4EF65C(v17, v27, v28, a2, v36);
    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t AppleDiffusionUnet.modelBatchSize.getter()
{
  v1 = *(v0 + 160);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

void sub_19A4F0B9C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2)
    {
      bzero(a1, v2);
    }
  }
}

uint64_t sub_19A4F0BB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  v11 = a2[1];
  *(inited + 32) = *a2;
  *(inited + 40) = v11;
  sub_19A2F1600(0, &qword_1ED823EE0);
  sub_19A33546C(a1, v9, &qword_1EAFA2DC8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  *(inited + 48) = sub_19A57351C();
  v12 = sub_19A4E7C6C(inited);
  swift_setDeallocating();
  sub_19A2F3FA0(inited + 32, &qword_1EAFA2EE8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v14 = v16[1];
  sub_19A4F7988(v12, sub_19A4F56D8, 0, isUniquelyReferenced_nonNull_native, &v18, sub_19A550DB0, sub_19A554C80);
  if (v14)
  {

    __break(1u);
  }

  else
  {

    *v17 = v18;
  }

  return result;
}

uint64_t sub_19A4F0E00(void *a1, int a2)
{
  v152 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30D8);
  v173 = *(v147 - 8);
  v4 = MEMORY[0x1EEE9AC00](v147);
  v146 = &v122[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v145 = &v122[-v6];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30E0);
  v172 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v122[-v7];
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30E8);
  v171 = *(v144 - 8);
  v8 = MEMORY[0x1EEE9AC00](v144);
  v143 = &v122[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v122[-v10];
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0);
  v11 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v122[-v12];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F8);
  v13 = *(v141 - 8);
  v14 = MEMORY[0x1EEE9AC00](v141);
  v140 = &v122[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v122[-v16];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28);
  v17 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v122[-v18];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3100);
  v19 = *(v138 - 8);
  v20 = MEMORY[0x1EEE9AC00](v138);
  v137 = &v122[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v122[-v22];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3108);
  v23 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v122[-v24];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3110);
  v25 = *(v135 - 8);
  v26 = MEMORY[0x1EEE9AC00](v135);
  v134 = &v122[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v122[-v28];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v29 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v122[-v30];
  v31 = *(v2 + 160);
  if (*(v31 + 16))
  {
    if (*(v31 + 32) == 2)
    {

      return a1;
    }

    v32 = a1;
    v33 = a1[2];
    if (v152)
    {
LABEL_7:
      a1 = sub_19A5147D4(0, v33, 0, MEMORY[0x1E69E7CC0]);
      v151 = v32[2];
      if (v151)
      {
        v34 = 0;
        v150 = v32 + 4;
        v132 = (v173 + 8);
        v131 = (v172 + 8);
        v130 = (v171 + 8);
        v129 = (v11 + 8);
        v128 = (v13 + 8);
        v127 = (v17 + 8);
        v126 = (v19 + 8);
        v125 = (v23 + 8);
        v124 = (v25 + 8);
        v123 = (v29 + 8);
        do
        {
          v35 = v34;
          v163 = v34 + 1;
          v164 = a1;
          v36 = MEMORY[0x1E69E7CC0];
          a1 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
          v170 = sub_19A4E7C6C(v36);
          v37 = v150[v35];
          v40 = *(v37 + 64);
          v39 = (v37 + 64);
          v38 = v40;
          v41 = 1 << *(v150[v35] + 32);
          if (v41 < 64)
          {
            v42 = ~(-1 << v41);
          }

          else
          {
            v42 = -1;
          }

          v43 = v42 & v38;
          v44 = (v41 + 63) >> 6;
          v168 = v150[v35];

          v45 = 0;
          v166 = v44;
          v167 = v39;
          while (v43)
          {
            v48 = v45;
LABEL_20:
            v49 = __clz(__rbit64(v43)) | (v48 << 6);
            v50 = *(v168 + 56);
            v51 = (*(v168 + 48) + 16 * v49);
            v52 = v51[1];
            v172 = *v51;
            v53 = *(v50 + 8 * v49);

            v39 = v53;
            v54 = [v39 shape];
            sub_19A2F1600(0, &qword_1ED823EA8);
            v55 = sub_19A57308C();

            if ((v55 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x19A901520](0, v55);
            }

            else
            {
              if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v56 = *(v55 + 32);
            }

            v57 = v56;

            v58 = [v57 integerValue];

            v173 = v52;
            if (v58 == 2)
            {
              v59 = [v39 dataType];
              v165 = a1;
              if (v59 <= 65599)
              {
                if (v59 == 65552)
                {
                  v71 = v39;
                  sub_19A57267C();
                  v149 = sub_19A2F1600(0, &qword_1ED823EE0);
                  v72 = v137;
                  sub_19A57266C();
                  v73 = v138;
                  sub_19A57268C();
                  v171 = *v126;
                  (v171)(v72, v73);
                  v148 = sub_19A2F12E4(&qword_1EAFA3130, &qword_1EAFA3100);
                  v63 = sub_19A57351C();
                  sub_19A57266C();
                  sub_19A57268C();
                  (v171)(v72, v73);
                  v64 = sub_19A57351C();
                  (*v125)(v155, v156);
                }

                else
                {
                  if (v59 != 65568)
                  {
LABEL_68:

                    sub_19A4E6F34();
                    swift_allocError();
                    *v121 = xmmword_19A583520;
                    *(v121 + 16) = 5;
                    swift_willThrow();

                    return a1;
                  }

                  v65 = v39;
                  sub_19A57267C();
                  v149 = sub_19A2F1600(0, &qword_1ED823EE0);
                  v66 = v134;
                  sub_19A57266C();
                  v67 = v135;
                  sub_19A57268C();
                  v171 = *v124;
                  (v171)(v66, v67);
                  v148 = sub_19A2F12E4(&qword_1EAF9E930, &qword_1EAFA3110);
                  v63 = sub_19A57351C();
                  sub_19A57266C();
                  sub_19A57268C();
                  (v171)(v66, v67);
                  v64 = sub_19A57351C();
                  (*v123)(v153, v154);
                }
              }

              else
              {
                switch(v59)
                {
                  case 65600:
                    v74 = v39;
                    sub_19A57267C();
                    v149 = sub_19A2F1600(0, &qword_1ED823EE0);
                    v75 = v140;
                    sub_19A57266C();
                    v76 = v141;
                    sub_19A57268C();
                    v171 = *v128;
                    (v171)(v75, v76);
                    v148 = sub_19A2F12E4(&qword_1EAFA3128, &qword_1EAFA30F8);
                    v63 = sub_19A57351C();
                    sub_19A57266C();
                    sub_19A57268C();
                    (v171)(v75, v76);
                    v64 = sub_19A57351C();
                    (*v127)(v157, v158);
                    break;
                  case 131080:
                    v68 = v39;
                    sub_19A57267C();
                    v149 = sub_19A2F1600(0, &qword_1ED823EE0);
                    v69 = v146;
                    sub_19A57266C();
                    v70 = v147;
                    sub_19A57268C();
                    v171 = *v132;
                    (v171)(v69, v70);
                    v148 = sub_19A2F12E4(&qword_1EAFA3118, &qword_1EAFA30D8);
                    v63 = sub_19A57351C();
                    sub_19A57266C();
                    sub_19A57268C();
                    (v171)(v69, v70);
                    v64 = sub_19A57351C();
                    (*v131)(v161, v162);
                    break;
                  case 131104:
                    v60 = v39;
                    sub_19A57267C();
                    v149 = sub_19A2F1600(0, &qword_1ED823EE0);
                    v61 = v143;
                    sub_19A57266C();
                    v62 = v144;
                    sub_19A57268C();
                    v171 = *v130;
                    (v171)(v61, v62);
                    v148 = sub_19A2F12E4(&qword_1EAFA3120, &qword_1EAFA30E8);
                    v63 = sub_19A57351C();
                    sub_19A57266C();
                    sub_19A57268C();
                    (v171)(v61, v62);
                    v64 = sub_19A57351C();
                    (*v129)(v159, v160);
                    break;
                  default:
                    goto LABEL_68;
                }
              }

              a1 = v165;
            }

            else
            {
              v63 = v39;
              v64 = v63;
            }

            v171 = v63;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v174 = a1;
            v78 = v172;
            v79 = sub_19A31F6BC(v172, v173);
            v81 = a1[2];
            v82 = (v80 & 1) == 0;
            v83 = __OFADD__(v81, v82);
            v84 = v81 + v82;
            if (v83)
            {
              goto LABEL_70;
            }

            v85 = v80;
            if (a1[3] >= v84)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v112 = v79;
                sub_19A554C80();
                v79 = v112;
              }

              v86 = v173;
            }

            else
            {
              sub_19A550DB0(v84, isUniquelyReferenced_nonNull_native);
              v86 = v173;
              v79 = sub_19A31F6BC(v78, v173);
              if ((v85 & 1) != (v87 & 1))
              {
                goto LABEL_76;
              }
            }

            v88 = v174;
            v169 = v39;
            if (v85)
            {
              v89 = v174;
              v90 = v174[7];
              v91 = *(v90 + 8 * v79);
              *(v90 + 8 * v79) = v171;
            }

            else
            {
              v174[(v79 >> 6) + 8] |= 1 << v79;
              v92 = (v88[6] + 16 * v79);
              *v92 = v78;
              v92[1] = v86;
              *(v88[7] + 8 * v79) = v171;
              v93 = v88[2];
              v83 = __OFADD__(v93, 1);
              v94 = v93 + 1;
              if (v83)
              {
                goto LABEL_72;
              }

              v89 = v88;
              v88[2] = v94;
            }

            v95 = v64;
            v96 = v170;
            v97 = swift_isUniquelyReferenced_nonNull_native();
            v174 = v96;
            v98 = v78;
            v99 = v86;
            v101 = sub_19A31F6BC(v98, v86);
            v102 = *(v96 + 16);
            v103 = (v100 & 1) == 0;
            v104 = v102 + v103;
            if (__OFADD__(v102, v103))
            {
              goto LABEL_71;
            }

            v105 = v100;
            if (*(v96 + 24) >= v104)
            {
              if ((v97 & 1) == 0)
              {
                sub_19A554C80();
              }
            }

            else
            {
              sub_19A550DB0(v104, v97);
              v106 = sub_19A31F6BC(v172, v99);
              if ((v105 & 1) != (v107 & 1))
              {
                goto LABEL_76;
              }

              v101 = v106;
            }

            a1 = v89;
            v43 &= v43 - 1;
            v39 = v167;
            if (v105)
            {

              v170 = v174;
              v46 = v174[7];
              v47 = *(v46 + 8 * v101);
              *(v46 + 8 * v101) = v95;
            }

            else
            {
              v108 = v174;
              v174[(v101 >> 6) + 8] |= 1 << v101;
              v109 = (v108[6] + 16 * v101);
              *v109 = v172;
              v109[1] = v99;
              *(v108[7] + 8 * v101) = v95;

              v110 = v108[2];
              v83 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v83)
              {
                goto LABEL_73;
              }

              v170 = v108;
              v108[2] = v111;
            }

            v45 = v48;
            v44 = v166;
          }

          while (1)
          {
            v48 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
              goto LABEL_68;
            }

            if (v48 >= v44)
            {
              break;
            }

            v43 = *(v39 + v48);
            ++v45;
            if (v43)
            {
              goto LABEL_20;
            }
          }

          if (v152)
          {

            a1 = v164;
            v113 = v164[2];
          }

          else
          {
            v114 = a1;
            a1 = v164;
            v116 = v164[2];
            v115 = v164[3];
            v113 = v116 + 1;
            if (v116 >= v115 >> 1)
            {
              a1 = sub_19A5147D4((v115 > 1), v116 + 1, 1, v164);
            }

            a1[2] = v113;
            a1[v116 + 4] = v114;
          }

          v34 = v163;
          v117 = v170;
          v118 = a1[3];
          if (v113 >= v118 >> 1)
          {
            v119 = sub_19A5147D4((v118 > 1), v113 + 1, 1, a1);
            v117 = v170;
            v34 = v163;
            a1 = v119;
          }

          a1[2] = v113 + 1;
          a1[v113 + 4] = v117;
        }

        while (v34 != v151);
      }

      return a1;
    }

    if (v33 + 0x4000000000000000 >= 0)
    {
      v33 *= 2;
      v32 = a1;
      goto LABEL_7;
    }
  }

  else
  {
LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_76:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A4F2268(unsigned __int8 a1, unint64_t a2, int64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *(v3 + 200);
  if (*(v9 + 16) && (v10 = sub_19A4F3A80(a1), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = *(v6 + 208);
  v16 = (v15 >> 62);
  v65 = v15;
  if (v15 >> 62)
  {
    goto LABEL_71;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_73;
    }

    goto LABEL_13;
  }

  do
  {
    v17 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x19A901520](0, v15);
      v18 = v19;
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);

        __break(1u);
        return result;
      }

      v18 = *(v15 + 32);
    }

    MEMORY[0x1EEE9AC00](v19);
    v55 = a2;
    v56 = a3;
    v20 = sub_19A506C14(v13, v14, sub_19A4F795C, v54);
    if (v5)
    {
      goto LABEL_11;
    }

    v31 = v13;
    v13 = v20;
    v63 = v31;
    v64 = v18;
    if (v16)
    {
      v32 = v65;
      if (sub_19A573B4C() == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v32 = v65;
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_11;
      }
    }

    v59 = a3;
    swift_getObjectType();
    a3 = sub_19A5074CC();
    if (v16)
    {
      v34 = sub_19A573B4C();
      if (v34 < 0)
      {
        goto LABEL_81;
      }

      a2 = v34;
      v33 = v34 != 0;
      if (sub_19A573B4C() < v33)
      {
        goto LABEL_79;
      }

      if (sub_19A573B4C() < a2)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = a2 != 0;
      if (a2 < v33)
      {
        goto LABEL_79;
      }
    }

    v62 = v14;
    if (v17 && a2 > 1)
    {
      type metadata accessor for ManagedMLModel(0);

      v35 = v33;
      do
      {
        v36 = v35 + 1;
        sub_19A57398C();
        v35 = v36;
      }

      while (a2 != v36);
      if (!v16)
      {
LABEL_42:
        v60 = v65 & 0xFFFFFFFFFFFFFF8;
        v37 = (v65 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_45;
      }
    }

    else
    {

      if (!v16)
      {
        goto LABEL_42;
      }
    }

    v60 = sub_19A573BAC();
    v33 = v38;
    a2 = v39 >> 1;
LABEL_45:
    v40 = v62;
    if (v33 == a2)
    {
LABEL_46:

      swift_unknownObjectRelease();
LABEL_11:

      return v13;
    }

    v57 = v37;
    v58 = a2;
    while (1)
    {
      if (v33 >= a2)
      {
        goto LABEL_78;
      }

      v61 = v33;
      v41 = *(v37 + 8 * v33);
      v15 = *(v13 + 16);
      v65 = v41;
      if (v15)
      {
        break;
      }

      v47 = MEMORY[0x1E69E7CC0];
LABEL_61:
      v48 = v63;

      if (v47 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
        sub_19A573B8C();
      }

      else
      {
        sub_19A573FEC();
      }

      v49 = objc_allocWithZone(MEMORY[0x1E695FE30]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
      v16 = sub_19A57307C();

      v50 = [v49 initWithFeatureProviderArray_];

      MEMORY[0x1EEE9AC00](v51);
      v55 = v50;
      v56 = v59;
      v13 = sub_19A506C14(v48, v40, sub_19A4F7E40, v54);
      v33 = v61 + 1;

      v37 = v57;
      a2 = v58;
      if (v33 == v58)
      {
        goto LABEL_46;
      }
    }

    v67 = MEMORY[0x1E69E7CC0];

    sub_19A573A5C();
    if (*(v13 + 16) >= v15)
    {
      v42 = v15;
    }

    else
    {
      v42 = *(v13 + 16);
    }

    v14 = 4;
    while (v42)
    {
      if ((v14 - 4) >= *(v13 + 16))
      {
        goto LABEL_69;
      }

      if ((v14 - 4) >= *(a3 + 16))
      {
        goto LABEL_70;
      }

      v43 = *(v13 + 8 * v14);
      v44 = *(a3 + 8 * v14);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v43;
      sub_19A4F7988(v44, sub_19A4F56D8, 0, isUniquelyReferenced_nonNull_native, &v66, sub_19A550DC4, sub_19A554C94);
      v5 = 0;

      sub_19A543CFC(v66);

      v46 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v16 = sub_19A544CF4();

      sub_19A573A2C();
      a2 = *(v67 + 16);
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v42;
      ++v14;
      if (!--v15)
      {

        v47 = v67;
        v40 = v62;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  while (sub_19A573B4C());

  v13 = sub_19A573B4C();
  if (!v13)
  {
LABEL_73:
    v23 = MEMORY[0x1E69E7CC0];
LABEL_74:
    sub_19A4E6F34();
    swift_allocError();
    *v52 = v23;
    *(v52 + 8) = 0;
    *(v52 + 16) = 2;
    swift_willThrow();
    return v13;
  }

LABEL_13:
  v21 = 0;
  v64 = v15 & 0xC000000000000001;
  v22 = v15 & 0xFFFFFFFFFFFFFF8;
  v23 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v64)
    {
      MEMORY[0x19A901520](v21, v15);
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      goto LABEL_17;
    }

    if (v21 >= *(v22 + 16))
    {
      goto LABEL_67;
    }

    v24 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
LABEL_17:
      v25 = sub_19A570E4C();
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_19A31CE20(0, *(v23 + 2) + 1, 1, v23);
      }

      a2 = *(v23 + 2);
      v28 = *(v23 + 3);
      if (a2 >= v28 >> 1)
      {
        v23 = sub_19A31CE20((v28 > 1), a2 + 1, 1, v23);
      }

      *(v23 + 2) = a2 + 1;
      v29 = &v23[16 * a2];
      *(v29 + 4) = v25;
      *(v29 + 5) = v27;
      ++v21;
      v30 = v24 == v13;
      v15 = v65;
      if (v30)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_67:
  __break(1u);

  swift_unknownObjectRelease();

  return v13;
}

void sub_19A4F2A64(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= *(a2 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(a2 + 8 * v2 + 32);

  v5 = sub_19A5069A0(v4);
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  v7 = sub_19A31F6BC(v5, v6);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = [*(*(v3 + 56) + 8 * v7) multiArrayValue];
  if (v9)
  {
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19A576E00;
    *(v11 + 32) = v10;
    sub_19A2F1600(0, &qword_1ED823EE0);
    v12 = v10;
    v13 = sub_19A57307C();

    v14 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v13 alongAxis:0 dataType:65568];

    sub_19A57267C();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_19A4F2BF0(void *a1, int a2)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = *(v2 + 160);
  if (!*(v13 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (*(v13 + 32) == 2)
  {

    return a1;
  }

  if (v49)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = a1[2];
  if ((v15 & (v14 - 1)) == 0)
  {
    if (!v15)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v16 = 0;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v53 = v18;
    v43 = *(v17 + 64);
    v19 = (v43 + 32) & ~v43;
    v20 = a1 + v19;
    v21 = *(v17 + 56);
    v51 = v19;
    v41 = (v17 - 8);
    v42 = v19 + 2 * v21;
    v40 = (v17 + 16);
    a1 = MEMORY[0x1E69E7CC0];
    v55 = v21;
    v39 = v14 * v21;
    v38 = xmmword_19A576E20;
    v37 = v20;
    v52 = v8;
    v47 = &v36 - v11;
    v48 = v17;
    v45 = v15;
    v46 = v14;
    v44 = v4;
    while (1)
    {
      v22 = __OFADD__(v16, v14);
      if (v16 < 0)
      {
        break;
      }

      v53(v12, v20, v4);
      v23 = v20;
      if ((v49 & 1) == 0)
      {
        if (v16 + 1 >= v15)
        {
          goto LABEL_28;
        }

        v23 = &v37[v55 * (v16 + 1)];
      }

      v50 = v22;
      v24 = a1;
      v25 = v53;
      v26 = v54;
      v53(v54, v23, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
      v27 = v25;
      v28 = swift_allocObject();
      *(v28 + 16) = v38;
      v29 = v28 + v51;
      v27(v28 + v51, v12, v4);
      v30 = v26;
      a1 = v24;
      v27(v29 + v55, v30, v4);
      v56 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50);
      sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50);
      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
      sub_19A5725EC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_19A5147F8(0, v24[2] + 1, 1, v24);
      }

      v32 = a1[2];
      v31 = a1[3];
      v14 = v46;
      v12 = v47;
      v4 = v44;
      if (v32 >= v31 >> 1)
      {
        a1 = sub_19A5147F8(v31 > 1, v32 + 1, 1, a1);
      }

      v16 += v14;
      v33 = *v41;
      (*v41)(v54, v4);
      v33(v12, v4);
      a1[2] = v32 + 1;
      (*v40)(a1 + v51 + v32 * v55, v52, v4);
      v15 = v45;
      v34 = v50;
      if (v16 >= v45)
      {
        v34 = 1;
      }

      v20 += v39;
      if (v34)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  result = sub_19A573B7C();
  __break(1u);
  return result;
}

uint64_t sub_19A4F30B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_19A4F31A4;

  return v10(v7 + 2);
}

uint64_t sub_19A4F31A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A4F3330;
  }

  else
  {
    v2 = sub_19A4F32B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4F32B8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_19A4F7D68(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F3330()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_19A4F7D68(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F33B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_19A4F34A4;

  return v10(v7 + 2);
}

uint64_t sub_19A4F34A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A4F3630;
  }

  else
  {
    v2 = sub_19A4F35B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4F35B8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[2];
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  sub_19A2E8AF8(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F3630()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  *(v1 + 16) = v0[6];
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  sub_19A2E8AF8(v2, v3);
  sub_19A57367C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4F36B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_19A4F37A4;

  return v10(v7 + 2);
}

uint64_t sub_19A4F37A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A4F7E58;
  }

  else
  {
    v2 = sub_19A4F7E5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_19A4F38B8(uint64_t a1, uint64_t a2)
{
  sub_19A5740BC();
  sub_19A5740DC();
  if (a2)
  {
    sub_19A572E4C();
  }

  v4 = sub_19A57410C();

  return sub_19A4F3B84(a1, a2, v4);
}

unint64_t sub_19A4F394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  v8 = sub_19A57410C();

  return sub_19A4F3C50(a1, a2, a3, a4, v8);
}

unint64_t sub_19A4F39EC(uint64_t a1)
{
  sub_19A572CFC();
  sub_19A5740BC();
  sub_19A572E4C();
  v2 = sub_19A57410C();

  return sub_19A321F68(a1, v2);
}

unint64_t sub_19A4F3A80(unsigned __int8 a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  v2 = sub_19A57410C();

  return sub_19A4F3D50(a1, v2);
}

unint64_t sub_19A4F3B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_19A573F1C() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_19A4F3C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_19A573F1C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_19A573F1C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_19A4F3D50(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x656C626269726373 : 0x636E657265666572;
      v7 = v5 == 2 ? 0xE800000000000000 : 0xEF6567616D695F65;
      v8 = *(*(v22 + 48) + v4) ? 0x746C7561666564 : 0x6B6361625F67736DLL;
      v9 = *(*(v22 + 48) + v4) ? 0xE700000000000000 : 0xEE00646E756F7267;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0x656C626269726373 : 0x636E657265666572;
      v13 = v21 == 2 ? 0xE800000000000000 : 0xEF6567616D695F65;
      v14 = v21 ? 0x746C7561666564 : 0x6B6361625F67736DLL;
      v15 = v21 ? 0xE700000000000000 : 0xEE00646E756F7267;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_19A573F1C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AppleDiffusionUnet()
{
  result = qword_1EAF9EFD0;
  if (!qword_1EAF9EFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A4F3F68(uint64_t a1)
{
  v2 = type metadata accessor for ConcreteAdapter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19A4F3FEC()
{
  sub_19A4F40E0(319, &qword_1EAF9E8E0, type metadata accessor for ManagedMLModel, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_19A4F40E0(319, &qword_1EAF9EE80, type metadata accessor for ConcreteAdapter, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A4F40E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_19A4F4180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_19A4F41C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A4F425C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4F46AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();

      sub_19A572E4C();
      v9 = sub_19A57410C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4F485C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19A4F4A90(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    while (1)
    {
      sub_19A5740BC();

      sub_19A572E4C();
      v9 = sub_19A57410C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19A4F4C94(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    while (1)
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_19A570EAC() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19A4F4FFC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        result = v13 + 360 * v3;
        v14 = (v13 + 360 * v6);
        if (v3 != v6 || result >= v14 + 360)
        {
          result = memmove(result, v14, 0x168uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4F5308(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4F550C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_19A5740BC();
      sub_19A5740DC();
      if (v9)
      {

        sub_19A572E4C();
      }

      v10 = sub_19A57410C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_12;
      }

      if (v3 >= v11)
      {
LABEL_12:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

id sub_19A4F56D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_19A4F5724(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_19A31F6BC(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_19A554C80();
      }
    }

    else
    {
      sub_19A550DB0(v29, v42 & 1);
      v31 = sub_19A31F6BC(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_19A2EA480();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A4F59AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v233 = a2;
  v231 = a3;
  v281[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v228 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v229 = &v217 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v217 - v9;
  v11 = sub_19A570EAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v217 - v16;
  v232 = 0x800000019A59C560;
  v18 = MEMORY[0x1E69E7CC0];
  v235 = sub_19A4E7C6C(MEMORY[0x1E69E7CC0]);
  v234 = sub_19A4E7C6C(v18);
  sub_19A33546C(a1, v10, &qword_1EAFA02E8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    sub_19A2F3FA0(a1, &qword_1EAFA02E8);
    sub_19A2F3FA0(v10, &qword_1EAFA02E8);
LABEL_10:
    v21 = 0;
    v22 = 0;
    goto LABEL_11;
  }

  v230 = a1;
  (*(v12 + 32))(v17, v10, v11);
  sub_19A2F1600(0, &qword_1ED823EE8);
  (*(v12 + 16))(v15, v17, v11);
  v19 = v236;
  v20 = sub_19A549F60(v15);
  if (v19)
  {

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    sub_19A2F3FA0(v230, &qword_1EAFA02E8);
    (*(v12 + 8))(v17, v11);
    v21 = 0;
    v22 = 0;
    v236 = 0;
LABEL_11:
    v27 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC8];
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  if (!v20)
  {
    v236 = 0;
    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    v26 = v230;
    goto LABEL_9;
  }

  v23 = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v225 = v23;
  v25 = sub_19A4EEFF8(&unk_19A58FE30, v24);
  v38 = v230;
  if (!v25)
  {
    v236 = 0;

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    v26 = v38;
LABEL_9:
    sub_19A2F3FA0(v26, &qword_1EAFA02E8);
    (*(v12 + 8))(v17, v11);
    goto LABEL_10;
  }

  v224 = v25;
  v39 = [v25 inputDescriptionsByName];
  v223 = sub_19A2F1600(0, &unk_1ED823EB0);
  v40 = sub_19A572AFC();

  v41 = *(v40 + 16);
  v221 = v12;
  v222 = v11;
  v220 = v17;
  v227 = v40;
  v236 = 0;
  if (!v41)
  {
    v53 = MEMORY[0x1E69E7CC0];
    v219 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v42 = sub_19A31F6BC(0x746E6574616CLL, 0xE600000000000000);
  v43 = MEMORY[0x1E69E7CC0];
  v44 = v233;
  if ((v45 & 1) == 0)
  {
    goto LABEL_47;
  }

  v46 = *(*(v40 + 56) + 8 * v42);
  v226 = [v46 multiArrayConstraint];
  if (!v226)
  {

    goto LABEL_47;
  }

  v219 = v46;
  v47 = v43;
  v48 = v229;
  sub_19A33546C(v44, v229, &unk_1EAFA2BF0);
  v49 = type metadata accessor for ConcreteAdapter();
  v50 = *(*(v49 - 8) + 48);
  if (v50(v48, 1, v49) == 1)
  {
    goto LABEL_25;
  }

  v51 = *v48;
  sub_19A4F3F68(v48);
  if (AppleDiffusionAdapter.rawValue.getter(v51) == 0xD000000000000014 && 0x800000019A596540 == v52)
  {

    goto LABEL_24;
  }

  v54 = sub_19A573F1C();

  if (v54)
  {
LABEL_24:
    v48 = v228;
    sub_19A33546C(v233, v228, &unk_1EAFA2BF0);
    if (v50(v48, 1, v49) == 1)
    {
LABEL_25:
      sub_19A2F3FA0(v48, &unk_1EAFA2BF0);
      goto LABEL_26;
    }

    v66 = *&v48[*(v49 + 24) + 232];

    sub_19A4F3F68(v48);
    if (!v66)
    {
      goto LABEL_26;
    }

    if (!*(v66 + 16) || (v67 = sub_19A31F6BC(3226162, 0xE300000000000000), (v68 & 1) == 0))
    {

      goto LABEL_26;
    }

    v69 = *(*(v66 + 56) + 8 * v67);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_19A57A9D0;
    *(v70 + 32) = 1;
    v71 = v69[2];
    if (v71)
    {
      v43 = v70;
      *(v70 + 40) = v69[4];
      v72 = v219;
      if (v71 != 1)
      {
        *(v70 + 48) = v69[5];
        if (v71 >= 3)
        {
          v73 = v69[6];

          v43[7] = v73;

          goto LABEL_47;
        }

LABEL_183:
        __break(1u);
LABEL_184:
        sub_19A57404C();
        __break(1u);
LABEL_185:
        result = sub_19A57404C();
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_183;
  }

LABEL_26:
  v55 = [v226 shape];
  sub_19A2F1600(0, &qword_1ED823EA8);
  v56 = sub_19A57308C();

  if (v56 >> 62)
  {
    v57 = sub_19A573B4C();
    if (v57)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_28:
      v253[0] = v47;
      sub_19A3225A0(0, v57 & ~(v57 >> 63), 0);
      if (v57 < 0)
      {
        goto LABEL_178;
      }

      v58 = 0;
      v59 = v253[0];
      do
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x19A901520](v58, v56);
        }

        else
        {
          v60 = *(v56 + 8 * v58 + 32);
        }

        v61 = v60;
        v62 = [v60 integerValue];

        v63 = v59;
        v253[0] = v59;
        v65 = v59[2];
        v64 = v59[3];
        if (v65 >= v64 >> 1)
        {
          sub_19A3225A0((v64 > 1), v65 + 1, 1);
          v63 = v253[0];
        }

        ++v58;
        v63[2] = v65 + 1;
        v59 = v63;
        v63[v65 + 4] = v62;
      }

      while (v57 != v58);

      v43 = v59;
      v40 = v227;
      goto LABEL_47;
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v74 = *(v40 + 16);
  v219 = v43;
  if (!v74)
  {
LABEL_62:
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v75 = sub_19A31F6BC(0xD000000000000015, v232);
  v53 = MEMORY[0x1E69E7CC0];
  if (v76)
  {
    v77 = MEMORY[0x1E69E7CC0];
    v78 = *(*(v40 + 56) + 8 * v75);
    v79 = [v78 multiArrayConstraint];
    if (v79)
    {
      v80 = v79;
      v81 = [v79 shape];
      sub_19A2F1600(0, &qword_1ED823EA8);
      v82 = sub_19A57308C();

      if (v82 >> 62)
      {
        v83 = sub_19A573B4C();
        if (v83)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v83)
        {
LABEL_52:
          v228 = v80;
          v229 = v78;
          v253[0] = v77;
          sub_19A3225A0(0, v83 & ~(v83 >> 63), 0);
          if (v83 < 0)
          {
            goto LABEL_180;
          }

          v84 = 0;
          v85 = v253[0];
          do
          {
            v86 = v85;
            if ((v82 & 0xC000000000000001) != 0)
            {
              v87 = MEMORY[0x19A901520](v84, v82);
            }

            else
            {
              v87 = *(v82 + 8 * v84 + 32);
            }

            v88 = v87;
            v89 = [v87 integerValue];

            v85 = v86;
            v253[0] = v86;
            v90 = v86[2];
            v91 = v85[3];
            if (v90 >= v91 >> 1)
            {
              sub_19A3225A0((v91 > 1), v90 + 1, 1);
              v85 = v253[0];
            }

            ++v84;
            v85[2] = v90 + 1;
            v85[v90 + 4] = v89;
          }

          while (v83 != v84);
          v92 = v85;

          v53 = v92;
          goto LABEL_65;
        }
      }

      v53 = MEMORY[0x1E69E7CC0];
LABEL_65:
      v40 = v227;
      goto LABEL_66;
    }

    goto LABEL_62;
  }

LABEL_66:
  v218 = v53;
  v93 = &off_1F0DB5990;
  v94 = 3;
  do
  {
    if (!*(v40 + 16))
    {
      goto LABEL_69;
    }

    v95 = *(v93 - 1);
    v96 = *v93;

    v97 = sub_19A31F6BC(v95, v96);
    if ((v98 & 1) == 0)
    {
      goto LABEL_68;
    }

    v99 = *(*(v40 + 56) + 8 * v97);
    v100 = [v99 multiArrayConstraint];
    if (!v100)
    {

LABEL_68:

      goto LABEL_69;
    }

    v101 = v100;
    v228 = v99;
    v229 = v95;
    v102 = [v100 shape];
    if (!v102)
    {
      sub_19A2F1600(0, &qword_1ED823EA8);
      sub_19A57308C();
      v102 = sub_19A57307C();
    }

    v103 = [v101 dataType];
    v104 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    v253[0] = 0;
    v105 = [v104 initWithShape:v102 dataType:v103 error:v253];

    if (!v105)
    {
      v178 = v253[0];

      sub_19A570D1C();

      swift_willThrow();
      v177 = v222;
      v164 = v228;
      goto LABEL_126;
    }

    v226 = v101;
    v106 = v253[0];
    v107 = v236;
    sub_19A5734DC();
    v236 = v107;
    v108 = v235;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v253[0] = v108;
    v111 = sub_19A31F6BC(v229, v96);
    v112 = v108[2];
    v113 = (v110 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
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
    }

    v115 = v110;
    if (v108[3] >= v114)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v227;
        if (v110)
        {
          goto LABEL_84;
        }
      }

      else
      {
        sub_19A554C80();
        v40 = v227;
        if (v115)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      sub_19A550DB0(v114, isUniquelyReferenced_nonNull_native);
      v116 = sub_19A31F6BC(v229, v96);
      if ((v115 & 1) != (v117 & 1))
      {
        goto LABEL_184;
      }

      v111 = v116;
      v40 = v227;
      if (v115)
      {
LABEL_84:

        v235 = v253[0];
        v123 = *(v253[0] + 7);
        v124 = *(v123 + 8 * v111);
        *(v123 + 8 * v111) = v105;

        goto LABEL_69;
      }
    }

    v118 = v253[0];
    *(v253[0] + (v111 >> 6) + 8) |= 1 << v111;
    v119 = (v118[6] + 16 * v111);
    *v119 = v229;
    v119[1] = v96;
    *(v118[7] + 8 * v111) = v105;

    v120 = v118[2];
    v121 = __OFADD__(v120, 1);
    v122 = v120 + 1;
    if (v121)
    {
      goto LABEL_175;
    }

    v235 = v118;
    v118[2] = v122;
LABEL_69:
    v93 += 2;
    --v94;
  }

  while (v94);
  v125 = 0;
  v126 = 0;
  do
  {
    v127 = v125;
    if (!*(v40 + 16))
    {
      goto LABEL_90;
    }

    v128 = &unk_1F0DB59B8 + 16 * v126;
    v129 = *(v128 + 4);
    v130 = *(v128 + 5);

    v131 = sub_19A31F6BC(v129, v130);
    if ((v132 & 1) == 0)
    {
      goto LABEL_89;
    }

    v133 = *(*(v40 + 56) + 8 * v131);
    v134 = [v133 multiArrayConstraint];
    if (!v134)
    {

LABEL_89:

      goto LABEL_90;
    }

    v135 = v134;
    v136 = [v134 shape];
    if (!v136)
    {
      sub_19A2F1600(0, &qword_1ED823EA8);
      sub_19A57308C();
      v136 = sub_19A57307C();
    }

    v137 = [v135 dataType];
    v138 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    v253[0] = 0;
    v139 = [v138 initWithShape:v136 dataType:v137 error:v253];

    if (!v139)
    {
      v179 = v253[0];

      sub_19A570D1C();

      swift_willThrow();
      v164 = v224;
      v177 = v222;
      goto LABEL_126;
    }

    v229 = v135;
    v140 = v133;
    v141 = v253[0];
    v142 = v236;
    sub_19A5734DC();
    v236 = v142;
    v143 = v234;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v253[0] = v143;
    v145 = sub_19A31F6BC(v129, v130);
    v147 = v143[2];
    v148 = (v146 & 1) == 0;
    v121 = __OFADD__(v147, v148);
    v149 = v147 + v148;
    if (v121)
    {
      goto LABEL_174;
    }

    v150 = v146;
    if (v143[3] < v149)
    {
      sub_19A550DB0(v149, v144);
      v145 = sub_19A31F6BC(v129, v130);
      if ((v150 & 1) != (v151 & 1))
      {
        goto LABEL_184;
      }

LABEL_102:
      if (v150)
      {
        goto LABEL_103;
      }

      goto LABEL_105;
    }

    if (v144)
    {
      goto LABEL_102;
    }

    v155 = v145;
    sub_19A554C80();
    v145 = v155;
    if (v150)
    {
LABEL_103:
      v152 = v145;

      v234 = v253[0];
      v153 = *(v253[0] + 7);
      v154 = *(v153 + 8 * v152);
      *(v153 + 8 * v152) = v139;

      v40 = v227;
      goto LABEL_90;
    }

LABEL_105:
    v156 = v253[0];
    *(v253[0] + (v145 >> 6) + 8) |= 1 << v145;
    v157 = (v156[6] + 16 * v145);
    *v157 = v129;
    v157[1] = v130;
    *(v156[7] + 8 * v145) = v139;

    v158 = v156[2];
    v121 = __OFADD__(v158, 1);
    v159 = v158 + 1;
    if (v121)
    {
      goto LABEL_176;
    }

    v234 = v156;
    v156[2] = v159;
    v40 = v227;
LABEL_90:
    v125 = 1;
    v126 = 1;
  }

  while ((v127 & 1) == 0);

  v160 = [v224 inputDescriptionsByName];
  v161 = sub_19A572AFC();

  if (*(v161 + 16) && (v162 = sub_19A31F6BC(0x6C6163735F6D636CLL, 0xE900000000000065), (v163 & 1) != 0))
  {
    v164 = *(*(v161 + 56) + 8 * v162);
    v165 = v164;
  }

  else
  {
    v164 = 0;
  }

  v22 = v164 != 0;
  v166 = [v224 inputDescriptionsByName];
  v167 = sub_19A572AFC();

  if (*(v167 + 16) && (v168 = sub_19A31F6BC(0x5F6D636C5F657375, 0xEC00000073726570), (v169 & 1) != 0))
  {
    v170 = *(*(v167 + 56) + 8 * v168);
    v171 = v170;
  }

  else
  {
    v170 = 0;
  }

  v21 = v170 != 0;
  v172 = [v224 metadata];
  type metadata accessor for MLModelMetadataKey(0);
  sub_19A4F7860(&qword_1ED823ED0, type metadata accessor for MLModelMetadataKey);
  v173 = sub_19A572AFC();

  if (!*(v173 + 16) || (v174 = sub_19A4F39EC(*MEMORY[0x1E695FDB0]), (v175 & 1) == 0))
  {

LABEL_121:

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    sub_19A2F3FA0(v230, &qword_1EAFA02E8);
    (*(v221 + 8))(v220, v222);
    goto LABEL_122;
  }

  sub_19A334618(*(v173 + 56) + 32 * v174, v253);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_121;
  }

  v176 = v236;
  sub_19A52E514(v238, v278);
  v177 = v222;
  v236 = v176;
  if (v176)
  {

LABEL_126:
    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    sub_19A2F3FA0(v230, &qword_1EAFA02E8);
    (*(v221 + 8))(v220, v177);
  }

  memcpy(v279, v278, sizeof(v279));
  sub_19A33546C(v279, v253, &qword_1EAFA2510);
  sub_19A4F75E8(v278);
  memcpy(v280, v279, sizeof(v280));
  if (sub_19A489468(v280) == 1)
  {

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    v180 = v230;
    goto LABEL_172;
  }

  v281[0] = v280[44];
  sub_19A33546C(v281, v253, &qword_1EAFA30A8);
  sub_19A2F3FA0(v279, &qword_1EAFA2510);
  v181 = v281[0];
  v182 = v230;
  if (!v281[0])
  {

    sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
    v180 = v182;
LABEL_172:
    sub_19A2F3FA0(v180, &qword_1EAFA02E8);
    (*(v221 + 8))(v220, v177);
LABEL_122:
    v28 = MEMORY[0x1E69E7CC8];
    goto LABEL_123;
  }

  v223 = v170;
  v228 = v164;
  v183 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  v227 = v281[0];
  do
  {
    v185 = *(&unk_1F0DB59F8 + v183 + 32);
    v229 = v183 + 1;
    v186 = 0x656C626269726373;
    if (v185 != 2)
    {
      v186 = 0x636E657265666572;
    }

    v187 = 0xE800000000000000;
    if (v185 != 2)
    {
      v187 = 0xEF6567616D695F65;
    }

    v188 = 0x6B6361625F67736DLL;
    if (v185)
    {
      v188 = 0x746C7561666564;
    }

    v189 = 0xEE00646E756F7267;
    if (v185)
    {
      v189 = 0xE700000000000000;
    }

    if (v185 <= 1)
    {
      v190 = v188;
    }

    else
    {
      v190 = v186;
    }

    if (v185 <= 1)
    {
      v191 = v189;
    }

    else
    {
      v191 = v187;
    }

    if (*(v181 + 16))
    {
      v192 = sub_19A31F6BC(v190, v191);
      v194 = v193;

      if (v194)
      {
        v181 = v227;
        goto LABEL_156;
      }
    }

    else
    {
    }

    v181 = v227;
    if (!*(v227 + 16) || (v195 = sub_19A31F6BC(0x656C626269726373, 0xE800000000000000), (v196 & 1) == 0))
    {
      v209 = sub_19A4F3A80(v185);
      if (v210)
      {
        v211 = v209;
        v212 = swift_isUniquelyReferenced_nonNull_native();
        v253[0] = v28;
        v208 = v230;
        if (!v212)
        {
          sub_19A554F7C();
          v208 = v230;
          v28 = v253[0];
        }

        sub_19A4F485C(v211, v28);
      }

      else
      {
        v208 = v230;
      }

      goto LABEL_134;
    }

    v192 = v195;
LABEL_156:
    v197 = *(v181 + 56) + 16 * v192;
    v198 = *(v197 + 8);
    v226 = *v197;
    v199 = v198;

    v200 = swift_isUniquelyReferenced_nonNull_native();
    v253[0] = v28;
    v201 = sub_19A4F3A80(v185);
    v203 = v28[2];
    v204 = (v202 & 1) == 0;
    v121 = __OFADD__(v203, v204);
    v205 = v203 + v204;
    if (v121)
    {
      goto LABEL_177;
    }

    v206 = v202;
    if (v28[3] >= v205)
    {
      v208 = v230;
      if ((v200 & 1) == 0)
      {
        v216 = v201;
        sub_19A554F7C();
        v208 = v230;
        v201 = v216;
      }
    }

    else
    {
      sub_19A551340(v205, v200);
      v201 = sub_19A4F3A80(v185);
      if ((v206 & 1) != (v207 & 1))
      {
        goto LABEL_185;
      }

      v208 = v230;
    }

    v181 = v227;
    v28 = v253[0];
    if (v206)
    {
      v184 = (*(v253[0] + 7) + 16 * v201);
      *v184 = v226;
      v184[1] = v199;
    }

    else
    {
      *(v253[0] + (v201 >> 6) + 8) |= 1 << v201;
      *(v28[6] + v201) = v185;
      v213 = (v28[7] + 16 * v201);
      *v213 = v226;
      v213[1] = v199;
      v214 = v28[2];
      v121 = __OFADD__(v214, 1);
      v215 = v214 + 1;
      if (v121)
      {
        goto LABEL_179;
      }

      v28[2] = v215;
    }

    v177 = v222;
LABEL_134:
    v183 = v229;
  }

  while (v229 != 4);

  sub_19A2F3FA0(v281, &qword_1EAFA30A8);
  sub_19A2F3FA0(v233, &unk_1EAFA2BF0);
  sub_19A2F3FA0(v208, &qword_1EAFA02E8);
  (*(v221 + 8))(v220, v177);
LABEL_123:
  v27 = v218;
  v29 = v219;
LABEL_12:
  *&v238 = 0x746E6574616CLL;
  *(&v238 + 1) = 0xE600000000000000;
  *&v239 = 1885697139;
  *(&v239 + 1) = 0xE400000000000000;
  strcpy(&v240, "conditioning");
  BYTE13(v240) = 0;
  HIWORD(v240) = -5120;
  *&v241 = 0xD000000000000013;
  *(&v241 + 1) = 0x800000019A59C540;
  *&v242 = 0xD000000000000015;
  *(&v242 + 1) = v232;
  *&v243 = &unk_1F0DB5968;
  *(&v243 + 1) = 0xD000000000000015;
  *&v244 = 0x800000019A59C3E0;
  *(&v244 + 1) = 0xD000000000000013;
  *&v245 = 0x800000019A59C3C0;
  *(&v245 + 1) = &unk_1F0DB59B8;
  *&v246 = 0x6C6163735F6D636CLL;
  *(&v246 + 1) = 0xE900000000000065;
  strcpy(&v247, "use_lcm_pers");
  BYTE13(v247) = 0;
  HIWORD(v247) = -5120;
  *&v248 = v29;
  *(&v248 + 1) = v27;
  *&v249 = v235;
  *(&v249 + 1) = v234;
  LOBYTE(v250) = v22;
  BYTE1(v250) = v21;
  BYTE2(v250) = 1;
  BYTE7(v250) = v252;
  *(&v250 + 3) = v251;
  *(&v250 + 1) = v28;
  v253[0] = 0x746E6574616CLL;
  v253[1] = 0xE600000000000000;
  v253[2] = 1885697139;
  v253[3] = 0xE400000000000000;
  strcpy(v254, "conditioning");
  HIBYTE(v254[6]) = 0;
  v254[7] = -5120;
  v255 = 0xD000000000000013;
  v256 = 0x800000019A59C540;
  v257 = 0xD000000000000015;
  v258 = v232;
  v259 = &unk_1F0DB5968;
  v260 = 0xD000000000000015;
  v261 = 0x800000019A59C3E0;
  v262 = 0xD000000000000013;
  v263 = 0x800000019A59C3C0;
  v264 = &unk_1F0DB59B8;
  v265 = 0x6C6163735F6D636CLL;
  v266 = 0xE900000000000065;
  strcpy(v267, "use_lcm_pers");
  HIBYTE(v267[6]) = 0;
  v267[7] = -5120;
  v268 = v29;
  v269 = v27;
  v270 = v235;
  v271 = v234;
  v272 = v22;
  v273 = v21;
  v274 = 1;
  v275 = v251;
  v276 = v252;
  v277 = v28;
  sub_19A4F7510(&v238, &v237);
  result = sub_19A4F74E0(v253);
  v31 = v249;
  v32 = v231;
  v231[10] = v248;
  v32[11] = v31;
  v32[12] = v250;
  v33 = v245;
  v32[6] = v244;
  v32[7] = v33;
  v34 = v247;
  v32[8] = v246;
  v32[9] = v34;
  v35 = v241;
  v32[2] = v240;
  v32[3] = v35;
  v36 = v243;
  v32[4] = v242;
  v32[5] = v36;
  v37 = v239;
  *v32 = v238;
  v32[1] = v37;
  return result;
}

uint64_t sub_19A4F7470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4F7548(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A4EEB04(a1, v4);
}

uint64_t sub_19A4F763C(uint64_t a1)
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
  v10[1] = sub_19A33558C;

  return sub_19A4F33B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A4F7728(uint64_t a1)
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
  v10[1] = sub_19A33558C;

  return sub_19A4F36B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A4F77FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConcreteAdapter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4F7860(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A4F78C8()
{
  result = qword_1EAFA30D0;
  if (!qword_1EAFA30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA30D0);
  }

  return result;
}

void *sub_19A4F791C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_19A4F7988(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5, void (*a6)(void), void (*a7)(void))
{
  v51 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  v43 = v8;
  while (v11)
  {
    v46 = a4;
    v17 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v11)) | (v17 << 6);
    v20 = (*(a1 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(a1 + 56) + 8 * v19);
    v50[0] = *v20;
    v50[1] = v21;
    v50[2] = v22;

    v23 = v22;
    a2(&v47, v50);

    v25 = v47;
    v24 = v48;
    v26 = v49;
    v27 = *v51;
    v29 = sub_19A31F6BC(v47, v48);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v32 = v28;
    if (v27[3] >= v30 + v31)
    {
      if ((v46 & 1) == 0)
      {
        a7();
      }
    }

    else
    {
      a6();
      v33 = sub_19A31F6BC(v25, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v29 = v33;
    }

    v11 &= v11 - 1;
    v35 = *v51;
    if (v32)
    {
      v14 = *(v35[7] + 8 * v29);

      v15 = v35[7];
      v16 = *(v15 + 8 * v29);
      *(v15 + 8 * v29) = v14;
    }

    else
    {
      v35[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v25;
      v36[1] = v24;
      *(v35[7] + 8 * v29) = v26;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v13 = v17;
    v8 = v43;
  }

  v18 = v13;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      sub_19A2EA480();
    }

    v11 = *(v8 + 8 * v17);
    ++v18;
    if (v11)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_19A57404C();
  __break(1u);
  return result;
}