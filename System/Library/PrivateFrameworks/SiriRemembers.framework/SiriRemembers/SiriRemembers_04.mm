uint64_t sub_23142A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_231477C58();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_23142A6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for InteractionWithParameters(0);
  v6 = v5;
  if (v4)
  {
    sub_23142C2A0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_23142A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return a7(v12);
}

uint64_t sub_23142A830()
{
  sub_231477F38();

  return sub_231477F38();
}

uint64_t sub_23142A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_2314787C8(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_2314787C8();
    }
  }

  return result;
}

uint64_t sub_23142A920()
{
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  return sub_231478918();
}

uint64_t sub_23142A990()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_23142A920();
}

uint64_t sub_23142A99C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_23142A830();
}

uint64_t sub_23142A9A8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  return sub_231478918();
}

uint64_t sub_23142AA28()
{
  sub_23140224C(v0 + 16, &qword_27DD4DCF0, &qword_23147B810);
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return v0;
}

uint64_t sub_23142AA68()
{
  sub_23142AA28();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_23142AAC0(uint64_t a1, int a2)
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

uint64_t sub_23142AB00(uint64_t result, int a2, int a3)
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

unint64_t sub_23142AB54()
{
  result = qword_27DD4DCD0;
  if (!qword_27DD4DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCD0);
  }

  return result;
}

uint64_t sub_23142ABA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23147B6D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_23142AC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCF0, &qword_23147B810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23142AC7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  v12 = sub_231478918();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_2314787C8() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_2314787C8() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v26 = (*(v30 + 48) + 32 * v15);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    *a1 = *v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;

    return 0;
  }

  else
  {
LABEL_14:
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_23142B80C(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_23142AE50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23142AE98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_23142AEEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2314788E8();
  sub_231477F38();
  v9 = sub_231478918();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2314787C8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_23142B9D4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_23142B038(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_2314788D8();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_23142BB3C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_23142B108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD18, &unk_23147B8A8);
  result = sub_2314784B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_23142ABA8(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v6 + 40);
    sub_2314788E8();
    v35 = v18;
    sub_231477F38();
    sub_231477F38();
    result = sub_231478918();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v6 + 48) + 32 * v26);
    v3 = v34;
    *v31 = v35;
    v31[1] = v19;
    v31[2] = v20;
    v31[3] = v21;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v13 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23142B38C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  result = sub_2314784B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_23142ABA8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2314788E8();
    sub_231477F38();
    result = sub_231478918();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23142B5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD20, &qword_23147B8B8);
  result = sub_2314784B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_23142ABA8(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_2314788D8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23142B80C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_23142B108(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_23142BC40();
      goto LABEL_21;
    }

    sub_23142C040(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  result = sub_231478918();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_2314787C8(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          goto LABEL_24;
        }

        result = sub_2314787C8();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_231478878();
  __break(1u);
  return result;
}

uint64_t sub_23142B9D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23142B38C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_23142C304(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2314788E8();
      sub_231477F38();
      result = sub_231478918();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2314787C8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_23142BDA8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_231478878();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_23142BB3C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23142B5E8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_23142C538(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_2314788D8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_23142BF00();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_231478878();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_23142BC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD18, &unk_23147B8A8);
  v2 = *v0;
  v3 = sub_2314784A8();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
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

void *sub_23142BDA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  v2 = *v0;
  v3 = sub_2314784A8();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_23142BF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD20, &qword_23147B8B8);
  v2 = *v0;
  v3 = sub_2314784A8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_23142C040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD18, &unk_23147B8A8);
  result = sub_2314784B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = *(v6 + 40);
        sub_2314788E8();

        sub_231477F38();
        sub_231477F38();
        result = sub_231478918();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + 32 * v26);
        *v31 = v18;
        v31[1] = v19;
        v31[2] = v20;
        v31[3] = v21;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23142C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionWithParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23142C304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  result = sub_2314784B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2314788E8();

        sub_231477F38();
        result = sub_231478918();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23142C538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD20, &qword_23147B8B8);
  result = sub_2314784B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_2314788D8();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_23142C724()
{
  result = qword_27DD4DD28;
  if (!qword_27DD4DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DD28);
  }

  return result;
}

void *sub_23142C778()
{
  result = sub_231477DC8();
  off_27DD4DD30 = result;
  return result;
}

uint64_t sub_23142C7B4()
{
  v1[3] = sub_231477C18();
  v1[4] = &off_28460A360;
  v1[0] = sub_231477C08();
  type metadata accessor for AppIntentStreamBundleIDTranslator();
  swift_allocObject();
  result = sub_2314294D0(v1);
  qword_27DD4DD38 = result;
  return result;
}

uint64_t *sub_23142C84C()
{
  result = sub_231421820();
  qword_280C3D8C0 = result;
  return result;
}

void sub_23142C86C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v56 - v4);
  v59 = type metadata accessor for Entity();
  v6 = OUTLINED_FUNCTION_4(v59);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v57 = &v56 - v14;
  v63 = 91;
  v64 = 0xE100000000000000;
  v15 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v16 = *(v15 + 24);
  sub_231476CA8();
  sub_23142EEA4();
  v17 = sub_231478798();
  MEMORY[0x23192E060](v17);

  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](*v1, v1[1]);
  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](v1[2], v1[3]);
  MEMORY[0x23192E060](93, 0xE100000000000000);
  v61 = 0x736E6F737265505BLL;
  v62 = 0xEA0000000000203ALL;
  v18 = *(v1 + *(v15 + 28));
  v19 = sub_2313F303C(v18);
  v20 = 0;
  v58 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x23192E5D0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    sub_2313EF700(1, v5);

    __swift_storeEnumTagSinglePayload(v5, 0, 1, v59);
    OUTLINED_FUNCTION_9_8();
    sub_23142EEFC(v5, v57, v24);
    v25 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = *(v25 + 16);
      sub_23141CB80();
      v25 = v35;
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    v58 = v25;
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_20(v26);
      sub_23141CB80();
      v58 = v36;
    }

    *(v58 + 16) = v27 + 1;
    v28 = *(v56 + 80);
    OUTLINED_FUNCTION_59();
    v30 = *(v29 + 72);
    OUTLINED_FUNCTION_9_8();
    sub_23142EEFC(v31, v32, v33);
    v20 = v23;
  }

  v37 = v58;
  v38 = *(v58 + 16);
  if (v38)
  {
    v60 = MEMORY[0x277D84F90];
    sub_23141252C(0, v38, 0);
    v39 = v60;
    v40 = *(v56 + 80);
    OUTLINED_FUNCTION_59();
    v42 = v37 + v41;
    v44 = *(v43 + 72);
    do
    {
      sub_23142EF58(v42, v12, type metadata accessor for Entity);
      v46 = *v12;
      v45 = v12[1];

      v47 = OUTLINED_FUNCTION_17();
      sub_23142EFB4(v47, v48);
      v60 = v39;
      v50 = *(v39 + 16);
      v49 = *(v39 + 24);
      if (v50 >= v49 >> 1)
      {
        v52 = OUTLINED_FUNCTION_20(v49);
        sub_23141252C(v52, v50 + 1, 1);
        v39 = v60;
      }

      *(v39 + 16) = v50 + 1;
      v51 = v39 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v45;
      v42 += v44;
      --v38;
    }

    while (v38);
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v60 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
  sub_2313EF69C();
  v53 = sub_231477E28();
  v55 = v54;

  MEMORY[0x23192E060](v53, v55);

  MEMORY[0x23192E060](93, 0xE100000000000000);
  MEMORY[0x23192E060](v61, v62);

  OUTLINED_FUNCTION_16();
}

void sub_23142CD10()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = sub_231476CE8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v101 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v104 = &v84 - v14;
  v103 = type metadata accessor for Interaction(0);
  v15 = OUTLINED_FUNCTION_3(v103);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v102 = &v84 - v22;
  v107 = sub_231476CA8();
  v23 = OUTLINED_FUNCTION_4(v107);
  v105 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_34();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v106 = &v84 - v31;
  v32 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v33 = OUTLINED_FUNCTION_3(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v38 = (v37 - v36);
  v39 = sub_23142EDB4(v1, &selRef_bundleID);
  if (!v40)
  {
    goto LABEL_14;
  }

  v41 = v39;
  v42 = v40;
  v43 = [v1 resolvedAction];
  if (!v43)
  {

LABEL_14:

    goto LABEL_15;
  }

  v100 = v43;
  v44 = [v1 action];
  if (v44)
  {
    v45 = sub_2314748B0(v44);
    v99 = v46;
    if (v46)
    {
      v97 = v32;
      v98 = v45;
      v47 = [v1 executionDate];
      if (v47)
      {
        v48 = v47;
        sub_231476C78();

        v49 = v105 + 32;
        v96 = *(v105 + 32);
        v96(v106, v29, v107);
        if (qword_280C3BF58 != -1)
        {
          swift_once();
        }

        v50 = v99;
        if (sub_231405B6C(v98, v99, qword_280C3D8C0))
        {
          v93 = v49;
          v94 = v3;
          if (qword_27DD4D230 != -1)
          {
            swift_once();
          }

          v51 = sub_231429534(v41, v42, v98, v50);
          v95 = v52;

          sub_23142D4A0(v100);
          v54 = v53;

          v56 = sub_23143028C(v55, 1);
          v90 = v51;
          v91 = v56;

          if (qword_27DD4D228 != -1)
          {
            swift_once();
          }

          v92 = v54;
          v60 = off_27DD4DD30;
          if (*(off_27DD4DD30 + 2) && (v61 = sub_2313F0604(), (v62 & 1) != 0))
          {
            v63 = (v60[7] + 16 * v61);
            v64 = v63[1];
            v85 = *v63;
            *(v20 + 81) = 512;
            v65 = v103;
            v88 = v103[12];

            sub_231476C98();
            v66 = v65[14];
            v89 = v65[13];
            *(v20 + v66) = 0;
            *(v20 + v65[15]) = 1;
            *(v20 + v65[16]) = 3;
            v67 = v65[18];
            v86 = (v20 + v65[17]);
            v87 = (v20 + v67);
            *(v20 + v65[19]) = MEMORY[0x277D84F98];
            sub_231476CD8();
            v68 = sub_231476CB8();
            v84 = v68;
            v60 = v95;
            v70 = v69;
            (*(v101 + 8))(v11, v4);
            *v20 = v68;
            *(v20 + 8) = v70;
            *(v20 + 16) = 0;
            *(v20 + 24) = 0xE000000000000000;
            *(v20 + 32) = v85;
            *(v20 + 40) = v64;
            *(v20 + 48) = v90;
            *(v20 + 56) = v60;
            v71 = v99;
            *(v20 + 64) = v98;
            *(v20 + 72) = v71;
            *(v20 + 80) = 769;
            *(v20 + 82) = 1;
            v72 = *(v105 + 24);

            v72(v20 + v88, v106, v107);
            *(v20 + v89) = 1;
            v73 = v86;
            *v86 = 0;
            v73[1] = 0xE000000000000000;
            v74 = v65;
            v50 = v99;
            v75 = v87;
            *v87 = v84;
            v75[1] = v70;
            OUTLINED_FUNCTION_10_7();
            v76 = v104;
            sub_23142EF58(v20, v104, v77);
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v74);
            sub_23142EFB4(v20, v60);
          }

          else
          {
            v74 = v103;
            v76 = v104;
            __swift_storeEnumTagSinglePayload(v104, 1, 1, v103);
          }

          if (__swift_getEnumTagSinglePayload(v76, 1, v74) != 1)
          {
            OUTLINED_FUNCTION_10_7();
            v80 = v102;
            sub_23142EEFC(v76, v102, v81);
            v82 = v95;
            *v38 = v90;
            v38[1] = v82;
            v32 = v97;
            v38[2] = v98;
            v38[3] = v50;
            v96(v38 + v32[6], v106, v107);
            *(v38 + v32[7]) = v92;
            sub_23142EEFC(v80, v38 + v32[8], v60);
            *(v38 + v32[9]) = v91;
            OUTLINED_FUNCTION_1_7();
            v3 = v94;
            sub_23142EEFC(v38, v94, v83);
            v57 = 0;
            goto LABEL_16;
          }

          v78 = OUTLINED_FUNCTION_18_2();
          v79(v78);

          sub_2313E937C(v76, &qword_27DD4D690, &qword_231479AD0);
          v57 = 1;
          v3 = v94;
          goto LABEL_28;
        }

        v58 = OUTLINED_FUNCTION_18_2();
        v59(v58);
      }

      else
      {
      }

      v57 = 1;
LABEL_28:
      v32 = v97;
      goto LABEL_16;
    }
  }

LABEL_15:
  v57 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v3, v57, 1, v32);
  OUTLINED_FUNCTION_16();
}

void sub_23142D4A0(void *a1)
{
  v3 = [a1 parameters];
  sub_2313E4AFC(0, &qword_27DD4DD48, 0x277CF0FF8);
  v4 = sub_231478128();

  v5 = sub_2313F303C(v4);
  if (!v5)
  {

    return;
  }

  v6 = v5;
  v7 = 0;
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_8_9();
  v8 = v4 & 0xC000000000000001;
  v80 = v4 & 0xFFFFFFFFFFFFFF8;
  v79 = v4 + 32;
  v9 = &selRef_identifier;
  v76 = v4;
  v81 = v4 & 0xC000000000000001;
  v82 = v10;
LABEL_3:
  if (v8)
  {
    v11 = MEMORY[0x23192E5D0](v7, v4);
  }

  else
  {
    if (v7 >= *(v80 + 16))
    {
      goto LABEL_86;
    }

    v11 = *(v79 + 8 * v7);
  }

  v12 = v11;
  if (!__OFADD__(v7++, 1))
  {
    v14 = sub_23142EDB4(v11, v9);
    if (!v15)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v18 = sub_231477B68();
      OUTLINED_FUNCTION_38(v18, qword_280C3D970);
      v19 = sub_231477B58();
      v20 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v20))
      {
        v21 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v21);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v19, v22, "No identifier");
        OUTLINED_FUNCTION_2_5();
      }

LABEL_20:
      goto LABEL_49;
    }

    if (v14 == v1 && v15 == v2)
    {
    }

    else
    {
      v17 = sub_2314787C8();

      if ((v17 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v23 = v9;
    v24 = [v12 value];
    if (!v24)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v39 = sub_231477B68();
      OUTLINED_FUNCTION_38(v39, qword_280C3D970);
      v40 = sub_231477B58();
      v41 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v41))
      {
        v42 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v42);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v40, v43, "no value");
        OUTLINED_FUNCTION_2_5();
      }

      goto LABEL_48;
    }

    v25 = v24;
    v26 = [v24 valueType];
    if (!v26)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v44 = sub_231477B68();
      OUTLINED_FUNCTION_38(v44, qword_280C3D970);
      v45 = sub_231477B58();
      v46 = sub_2314782A8();
      OUTLINED_FUNCTION_12(v46);
      OUTLINED_FUNCTION_8_9();
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v48);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v45, v49, "no valueType");
        OUTLINED_FUNCTION_2_5();
      }

      goto LABEL_47;
    }

    v1 = v26;
    v27 = [v26 array];
    if (!v27)
    {

      goto LABEL_46;
    }

    v28 = v27;
    v29 = [v27 memberValueType];
    if (!v29)
    {
      goto LABEL_52;
    }

    v30 = v29;
    if ([v29 legacyIntent] != 4)
    {

LABEL_52:
      v2 = v4;
      v50 = v28;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v51 = sub_231477B68();
      OUTLINED_FUNCTION_38(v51, qword_280C3D970);
      v52 = sub_231477B58();
      v53 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v53))
      {
        v54 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v54);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v52, v55, "no memberValueType");
        OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_8_9();
      v9 = v23;
      v6 = v82;
      v4 = v2;
      OUTLINED_FUNCTION_4_7();
      goto LABEL_49;
    }

    v77 = v30;
    v31 = [v12 value];
    v78 = v28;
    if (!v31 || (v32 = sub_23142ED44(v31), v33 >> 60 == 15))
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v34 = sub_231477B68();
      OUTLINED_FUNCTION_38(v34, qword_280C3D970);
      v35 = sub_231477B58();
      v36 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v36))
      {
        v37 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v37);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v35, v38, "No value data");
        OUTLINED_FUNCTION_2_5();
      }

      goto LABEL_33;
    }

    v56 = v32;
    v57 = v33;
    sub_2313E4AFC(0, &qword_27DD4DD50, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD58, &qword_23147B978);
    v2 = swift_allocObject();
    v2[1] = xmmword_231479AC0;
    *(v2 + 4) = sub_2313E4AFC(0, &qword_27DD4DD60, 0x277CBEA60);
    *(v2 + 5) = sub_2313E4AFC(0, &qword_27DD4DD68, 0x277D23958);
    v70 = v56;
    v71 = v57;
    sub_2314782D8();

    if (!v85)
    {
      sub_2313E937C(v84, &qword_27DD4DD70, &qword_23147B988);
      OUTLINED_FUNCTION_4_7();
LABEL_78:
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v66 = sub_231477B68();
      OUTLINED_FUNCTION_38(v66, qword_280C3D970);
      v35 = sub_231477B58();
      v67 = sub_2314782A8();
      if (OUTLINED_FUNCTION_12(v67))
      {
        v68 = OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_6_7(v68);
        OUTLINED_FUNCTION_23_2(&dword_2313E1000, v35, v69, "nil value");
        OUTLINED_FUNCTION_2_5();
      }

      sub_2313F3D2C(v70, 0);
LABEL_33:

      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD78, &qword_23147B990);
    swift_dynamicCast();
    OUTLINED_FUNCTION_4_7();
    if ((v58 & 1) == 0)
    {
      goto LABEL_78;
    }

    v59 = v83;
    v83 = MEMORY[0x277D84F90];
    v74 = v59;
    log = sub_2313F303C(v59);
    v60 = 0;
    v72 = v59 & 0xFFFFFFFFFFFFFF8;
    v73 = v59 & 0xC000000000000001;
    while (1)
    {
      if (log == v60)
      {

        sub_2313F3D2C(v70, v71);

LABEL_34:

LABEL_46:
        OUTLINED_FUNCTION_8_9();
LABEL_47:
        v9 = v23;
LABEL_48:
        v6 = v82;
LABEL_49:
        if (v7 == v6)
        {

          return;
        }

        goto LABEL_3;
      }

      if (v73)
      {
        v61 = MEMORY[0x23192E5D0](v60, v74);
      }

      else
      {
        if (v60 >= *(v72 + 16))
        {
          goto LABEL_88;
        }

        v61 = *(v74 + 8 * v60 + 32);
      }

      v62 = v61;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_87;
      }

      v2 = [v61 valueType];
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (!v63)
      {
        break;
      }

      if ([v63 typeIdentifier] != 3)
      {

        goto LABEL_71;
      }

      v64 = [v62 value];
      sub_231478468();

      swift_unknownObjectRelease();
      sub_2313E4AFC(0, &qword_280C3BBC8, 0x277CD3E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v8 = v81;
LABEL_71:
        v60 = (v60 + 1);
        goto LABEL_72;
      }

      MEMORY[0x23192E1C0]();
      v2 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v65 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v8 = v81;
      if (v2 >= v65 >> 1)
      {
        OUTLINED_FUNCTION_20(v65);
        sub_231478158();
      }

      sub_231478188();
      v60 = (v60 + 1);
LABEL_72:
      v4 = v76;
      OUTLINED_FUNCTION_4_7();
    }

    goto LABEL_71;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_23142DEE8()
{
  OUTLINED_FUNCTION_15();
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v5 = OUTLINED_FUNCTION_29(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_1();
  if (v1)
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_14_4();
    do
    {
      OUTLINED_FUNCTION_11_8();
      sub_23142EF58(v2, v0, v8);
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);

      sub_23142EFB4(v0, v3);
      OUTLINED_FUNCTION_27_1();
      if (v12)
      {
        v14 = OUTLINED_FUNCTION_20(v11);
        sub_23141252C(v14, v3, 1);
      }

      OUTLINED_FUNCTION_19_3();
    }

    while (!v13);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript()
{
  result = qword_280C3BF48;
  if (!qword_280C3BF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23142E038()
{
  OUTLINED_FUNCTION_15();
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v5 = OUTLINED_FUNCTION_29(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_1();
  if (v1)
  {
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_14_4();
    do
    {
      OUTLINED_FUNCTION_11_8();
      sub_23142EF58(v2, v0, v8);
      v10 = *v0;
      v9 = v0[1];

      sub_23142EFB4(v0, v3);
      OUTLINED_FUNCTION_27_1();
      if (v12)
      {
        v14 = OUTLINED_FUNCTION_20(v11);
        sub_23141252C(v14, v3, 1);
      }

      OUTLINED_FUNCTION_19_3();
    }

    while (!v13);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t QueriedAppIntentEvents.__allocating_init(events:)()
{
  v0 = swift_allocObject();
  QueriedAppIntentEvents.init(events:)();
  return v0;
}

void QueriedAppIntentEvents.init(events:)()
{
  OUTLINED_FUNCTION_15();
  v35 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD40, &qword_23147B8C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v8 = OUTLINED_FUNCTION_4(v7);
  v34 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v36 = v13 - v12;
  v14 = sub_2313F303C(v2);
  v15 = 0;
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v15)
    {

      *(v35 + 16) = v37;
      OUTLINED_FUNCTION_16();
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23192E5D0](v15, v2);
    }

    else
    {
      if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v16 = *(v2 + 8 * v15 + 32);
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_23142CD10();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_2313E937C(v6, &qword_27DD4DD40, &qword_23147B8C0);
      ++v15;
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      sub_23142EEFC(v6, v36, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v37 + 16);
        sub_23141D4D8();
        v37 = v29;
      }

      v20 = *(v37 + 16);
      v19 = *(v37 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_20(v19);
        v33 = v30;
        sub_23141D4D8();
        v21 = v33;
        v37 = v31;
      }

      *(v37 + 16) = v21;
      v22 = *(v34 + 80);
      OUTLINED_FUNCTION_59();
      v24 = *(v23 + 72);
      OUTLINED_FUNCTION_1_7();
      sub_23142EEFC(v25, v26, v27);
      v15 = v17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_23142E3CC()
{
  OUTLINED_FUNCTION_15();
  v25 = *v0;
  v26 = v1;
  v2 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v3 = OUTLINED_FUNCTION_29(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v24 = (v9 - v8);
  v10 = v0[2];
  v11 = *(v10 + 16);
  if (v11)
  {
    v27 = MEMORY[0x277D84F90];
    sub_23141252C(0, v11, 0);
    v12 = 0;
    v13 = *(v5 + 80);
    OUTLINED_FUNCTION_59();
    v23 = v10 + v14;
    while (v12 < *(v10 + 16))
    {
      v15 = v5;
      sub_23142EF58(v23 + *(v5 + 72) * v12, v24, type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript);
      v16 = sub_23142E584(v24, v26);
      v18 = v17;
      sub_23142EFB4(v24, type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript);
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = OUTLINED_FUNCTION_20(v19);
        sub_23141252C(v22, v20 + 1, 1);
      }

      ++v12;
      *(v27 + 16) = v20 + 1;
      v21 = v27 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v5 = v15;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_16();
  }
}

id sub_23142E584(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v47 - v6);
  v50 = type metadata accessor for Entity();
  v47 = *(v50 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v50);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - v12;
  v54 = 91;
  v55 = 0xE100000000000000;
  v13 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v14 = a1 + *(v13 + 24);
  v15 = sub_231476BF8();
  v16 = [a2 stringFromDate_];

  v17 = sub_231477E68();
  v19 = v18;

  MEMORY[0x23192E060](v17, v19);

  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](*a1, a1[1]);
  MEMORY[0x23192E060](23389, 0xE200000000000000);
  MEMORY[0x23192E060](a1[2], a1[3]);
  MEMORY[0x23192E060](93, 0xE100000000000000);
  v52 = 0x736E6F737265505BLL;
  v53 = 0xEA0000000000203ALL;
  v20 = *(a1 + *(v13 + 28));
  result = sub_2313F303C(v20);
  v22 = result;
  v23 = 0;
  v49 = MEMORY[0x277D84F90];
  while (v22 != v23)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23192E5D0](v23, v20);
    }

    else
    {
      if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      result = *(v20 + 8 * v23 + 32);
    }

    v24 = result;
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    sub_2313EF700(1, v7);

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v50);
    sub_23142EEFC(v7, v48, type metadata accessor for Entity);
    v26 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = *(v26 + 16);
      sub_23141CB80();
      v26 = v32;
    }

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    v49 = v26;
    if (v28 >= v27 >> 1)
    {
      sub_23141CB80();
      v49 = v33;
    }

    v29 = v48;
    v30 = v49;
    *(v49 + 16) = v28 + 1;
    result = sub_23142EEFC(v29, v30 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v28, type metadata accessor for Entity);
    v23 = v25;
  }

  v34 = v49;
  v35 = *(v49 + 16);
  if (v35)
  {
    v51 = MEMORY[0x277D84F90];
    sub_23141252C(0, v35, 0);
    v36 = v51;
    v37 = v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v38 = *(v47 + 72);
    do
    {
      sub_23142EF58(v37, v11, type metadata accessor for Entity);
      v40 = *v11;
      v39 = v11[1];

      sub_23142EFB4(v11, type metadata accessor for Entity);
      v51 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_23141252C(v41 > 1, v42 + 1, 1);
        v36 = v51;
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      v37 += v38;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v51 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
  sub_2313EF69C();
  v44 = sub_231477E28();
  v46 = v45;

  MEMORY[0x23192E060](v44, v46);

  MEMORY[0x23192E060](93, 0xE100000000000000);
  MEMORY[0x23192E060](v52, v53);

  return v54;
}

uint64_t QueriedAppIntentEvents.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t QueriedAppIntentEvents.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_23142EB10(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_23142EC18()
{
  sub_231476CA8();
  if (v0 <= 0x3F)
  {
    sub_23142ECDC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Interaction(319);
      if (v2 <= 0x3F)
      {
        sub_23141F374();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23142ECDC()
{
  if (!qword_280C3BC18)
  {
    sub_2313E4AFC(255, &qword_280C3BBC8, 0x277CD3E90);
    v0 = sub_231478198();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3BC18);
    }
  }
}

uint64_t sub_23142ED44(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231476BA8();

  return v3;
}

uint64_t sub_23142EDB4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_231477E68();
  }

  return OUTLINED_FUNCTION_17();
}

void (*sub_23142EE10(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_23142EB04(a3);
  sub_23142EB10(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x23192E5D0](a2, a3);
  }

  *a1 = v7;
  return sub_23142EE9C;
}

unint64_t sub_23142EEA4()
{
  result = qword_27DD4EAB0;
  if (!qword_27DD4EAB0)
  {
    sub_231476CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EAB0);
  }

  return result;
}

uint64_t sub_23142EEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_23142EF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_23142EFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_23142F00C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 7)
  {
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v4 = sub_231477B68();
    __swift_project_value_buffer(v4, qword_280C3D970);
    v5 = sub_231477B58();
    v6 = sub_2314782B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_2313E1000, v5, v6, "unknown INIntentHandlingStatus: %ld", v7, 0xCu);
      MEMORY[0x23192F1F0](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_23142F110(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479A40;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000231481C90;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x8000000231481CD0;
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x8000000231481CB0;
  v16[0] = a2;
  v16[1] = a3;
  MEMORY[0x28223BE20](inited);
  v15[2] = v16;
  LOBYTE(a2) = sub_231462038(sub_23142FED0, v15, inited);
  swift_setDeallocating();
  sub_231414B24();
  if (a2)
  {
    v10 = 1;
  }

  else
  {
LABEL_4:
    if (a1 >= 3)
    {
      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v11 = sub_231477B68();
      __swift_project_value_buffer(v11, qword_280C3D970);
      v12 = sub_231477B58();
      v13 = sub_2314782B8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = a1;
        _os_log_impl(&dword_2313E1000, v12, v13, "unknown INInteractionDirection: %ld", v14, 0xCu);
        MEMORY[0x23192F1F0](v14, -1, -1);
      }

      v10 = 2;
    }

    else
    {
      v10 = 2 - a1;
    }
  }

  *a5 = v10;
}

char *sub_23142F340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D670, &qword_231479A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_23142F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      if (v18 || (sub_2314787C8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_2314787C8() & 1) != 0)
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

unint64_t sub_23142F530(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_23142F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_2314788E8();
  sub_231477F38();
  OUTLINED_FUNCTION_14_5();
  sub_231477F38();
  v10 = sub_231478918();

  return sub_23142F434(a1, a2, a3, a4, v10);
}

unint64_t sub_23142F62C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2314788D8();

  return sub_23142F530(a1, v4);
}

uint64_t sub_23142F6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v10 = v7;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v14 = sub_2313E7C04();
  OUTLINED_FUNCTION_0_7(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (sub_2314785F8())
  {
    v21 = *v7;
    sub_2313E7C04();
    OUTLINED_FUNCTION_9_9();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v10;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = a7(0);
    OUTLINED_FUNCTION_3(v26);
    v28 = *(v27 + 40);
    v29 = v25 + *(v27 + 72) * v19;
    OUTLINED_FUNCTION_12_9();

    __asm { BRAA            X3, X16 }
  }

  sub_23142FC4C(v19, a2, a3, a1, v24);
  OUTLINED_FUNCTION_12_9();
}

uint64_t sub_23142F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_23142F590(a3, a4, a5, a6);
  OUTLINED_FUNCTION_0_7(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD98, &qword_23147B9C0);
  if (sub_2314785F8())
  {
    v21 = *v7;
    sub_23142F590(a3, a4, a5, a6);
    OUTLINED_FUNCTION_9_9();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v7;
  if (v20)
  {
    v25 = (v24[7] + 16 * v19);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
    OUTLINED_FUNCTION_12_9();
  }

  else
  {
    sub_23142FCD4(v19, a3, a4, a5, a6, a1, a2, v24);

    OUTLINED_FUNCTION_12_9();
  }
}

void sub_23142F994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v5 = sub_2313F0604();
  OUTLINED_FUNCTION_0_7(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDB0, &qword_23147B9D8);
  OUTLINED_FUNCTION_11_9();
  if ((sub_2314785F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *v2;
  OUTLINED_FUNCTION_36_0();
  v13 = sub_2313F0604();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_231478888();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    v15 = *(*v3 + 56);
    v16 = type metadata accessor for HistoryStats();
    sub_23142FE10(a1, v15 + *(*(v16 - 8) + 72) * v10, type metadata accessor for HistoryStats);
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    sub_23142FD24(v17, v18, v19, a1, v20, v21, v22);
    OUTLINED_FUNCTION_25_1();
  }
}

void sub_23142FAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_5_7(a1, a2);
  v5 = sub_2313F0604();
  OUTLINED_FUNCTION_0_7(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD88, &qword_23147B9B8);
  OUTLINED_FUNCTION_11_9();
  if ((sub_2314785F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *v2;
  OUTLINED_FUNCTION_36_0();
  v13 = sub_2313F0604();
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_231478888();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  if (v11)
  {
    v15 = *(*v3 + 56);
    v16 = type metadata accessor for Interaction(0);
    sub_23142FE10(a1, v15 + *(*(v16 - 8) + 72) * v10, type metadata accessor for Interaction);
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    sub_23142FD24(v17, v18, v19, a1, v20, v21, v22);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_23142FC4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  OUTLINED_FUNCTION_3(v11);
  result = (*(v12 + 32))(v9 + *(v12 + 72) * a1, a4);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

unint64_t sub_23142FCD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
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

uint64_t sub_23142FD24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  result = sub_23142FE70(a4, v12 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
  }

  return result;
}

uint64_t sub_23142FDAC(void *a1)
{
  v1 = [a1 groupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231477E68();

  return v3;
}

uint64_t sub_23142FE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_23142FE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t INPerson.entityId.getter()
{
  result = sub_231414BC8(v0, &selRef_contactIdentifier);
  if (!v2)
  {
    return sub_231414BC8(v0, &selRef_customIdentifier);
  }

  return result;
}

uint64_t sub_23142FF28()
{
  v1 = v0;
  if (qword_280C3BE50 != -1)
  {
    swift_once();
  }

  v3 = sub_2314600DC();
  v4 = v2;
  if (qword_280C3BE38 != -1)
  {
    swift_once();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_23:
    v12 = 0;
    return v12 & 1;
  }

  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_5:
  v5 = sub_231414BC8(v1, &selRef_contactIdentifier);
  if (v6)
  {
    if (v5 == v3 && v6 == v4)
    {

      v12 = 1;
      goto LABEL_21;
    }

    v8 = sub_2314787C8();

    if (v8)
    {
LABEL_20:
      v12 = 1;
      goto LABEL_21;
    }
  }

  v9 = sub_231414BC8(v1, &selRef_customIdentifier);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_21;
  }

  if (v9 == v3 && v10 == v4)
  {

    goto LABEL_20;
  }

  v12 = sub_2314787C8();

LABEL_21:

  return v12 & 1;
}

unint64_t sub_2314300A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_231477F78();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_231478088();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23143018C()
{
  sub_231423704();
  if (sub_231478438())
  {
    v0 = *MEMORY[0x277CFBCE0];
    v1 = sub_231477E58();
    v2 = (*(v0 + 16))(v0, v1);

    v3 = sub_231477E68();
  }

  else
  {
    sub_2313F0F60();

    v4 = sub_2313F0FA4();
    v5 = sub_2313F1018(v4);
    if (v6)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_23143028C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v80) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v71 - v13);
  v15 = type metadata accessor for Entity();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v79 = &v71 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  if (!a1)
  {
    goto LABEL_46;
  }

  v72 = &v71 - v22;
  v73 = v23;
  v82 = v9;
  v24 = sub_2313F3038(a1);
  v25 = 0;
  v83 = a1 & 0xFFFFFFFFFFFFFF8;
  v84 = a1 & 0xC000000000000001;
  v76 = MEMORY[0x277D84F90];
  v81 = v24;
  while (1)
  {
    if (v24 == v25)
    {
      v37 = v76;
      if (*(v76 + 16))
      {
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_0_8();
        sub_2313F0660(v37, v38 & 0xFFFFFFFFFFFFLL | 0x7374000000000000, 0xE800000000000000);
        v39 = 0;
        v76 = v85;
        v80 = MEMORY[0x277D84F90];
        v77 = v12;
        v78 = a1;
        while (1)
        {
          if (v24 == v39)
          {
            v63 = v80;
            if (*(v80 + 16))
            {
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_0_8();
              sub_2313F0660(v63, v64 & 0xFFFFFFFFFFFFLL | 0x4874000000000000, 0xEE0073656C646E61);
              return v85;
            }

            else
            {

              return v76;
            }
          }

          if (v84)
          {
            v40 = MEMORY[0x23192E5D0](v39, a1);
          }

          else
          {
            if (v39 >= *(v83 + 16))
            {
              goto LABEL_54;
            }

            v40 = *(a1 + 8 * v39 + 32);
          }

          v41 = v40;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_53;
          }

          v42 = [v40 personHandle];
          if (!v42)
          {
            goto LABEL_28;
          }

          v43 = v42;
          v44 = v82;
          sub_2313F0A10(v82);
          if (v3)
          {
            break;
          }

          OUTLINED_FUNCTION_1_10(v44, 0);
          v47 = v79;
          sub_2313F0804(v44, v79);
          _sSo8INPersonC13SiriRemembersE04makeB13InferenceNameSSyF_0();
          v50 = v49;
          v51 = HIBYTE(v49) & 0xF;
          if ((v49 & 0x2000000000000000) == 0)
          {
            v51 = v48 & 0xFFFFFFFFFFFFLL;
          }

          if (v51)
          {
            v52 = v48;
            v53 = *(v47 + 32);
            swift_isUniquelyReferenced_nonNull_native();
            v85 = *(v47 + 32);
            sub_2313F1184(v52, v50, 3, 1701667182, 0xE400000000000000);
            *(v47 + 32) = v85;
          }

          else
          {
          }

          v54 = v47;
          v12 = v77;
          sub_2313F0804(v54, v77);
          v45 = 0;
          a1 = v78;
LABEL_35:
          OUTLINED_FUNCTION_1_10(v12, v45);

          if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
          {
            sub_231426638(v12);
            ++v39;
            v24 = v81;
          }

          else
          {
            v55 = v73;
            sub_2313F0804(v12, v73);
            sub_2313F0804(v55, v75);
            v56 = v80;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = *(v56 + 16);
              sub_23141CB80();
              v56 = v61;
            }

            v58 = *(v56 + 16);
            v57 = *(v56 + 24);
            if (v58 >= v57 >> 1)
            {
              OUTLINED_FUNCTION_10(v57);
              sub_23141CB80();
              v56 = v62;
            }

            *(v56 + 16) = v58 + 1;
            v59 = (*(v74 + 80) + 32) & ~*(v74 + 80);
            v80 = v56;
            sub_2313F0804(v75, v56 + v59 + *(v74 + 72) * v58);
            ++v39;
            v24 = v81;
          }
        }

        v3 = 0;
LABEL_28:
        v45 = 1;
        v46 = v82;
        OUTLINED_FUNCTION_1_10(v82, 1);
        sub_231426638(v46);
        goto LABEL_35;
      }

LABEL_46:
      if (qword_280C3CF50 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_47;
    }

    if (v84)
    {
      v26 = MEMORY[0x23192E5D0](v25, a1);
    }

    else
    {
      if (v25 >= *(v83 + 16))
      {
        goto LABEL_52;
      }

      v26 = *(a1 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (sub_23142FF28())
    {
      goto LABEL_11;
    }

    sub_2313EF700(v80 & 1, v14);
    if (v3)
    {

      v3 = 0;
LABEL_11:

      OUTLINED_FUNCTION_1_10(v14, 1);
      sub_231426638(v14);
      ++v25;
    }

    else
    {

      OUTLINED_FUNCTION_1_10(v14, 0);
      v29 = v72;
      sub_2313F0804(v14, v72);
      v30 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v76 + 16);
        sub_23141CB80();
        v76 = v35;
      }

      v32 = *(v76 + 16);
      v31 = *(v76 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_10(v31);
        sub_23141CB80();
        v76 = v36;
      }

      v33 = v76;
      *(v76 + 16) = v32 + 1;
      sub_2313F0804(v29, v33 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v32);
      v25 = v28;
      a1 = v30;
      v24 = v81;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_47:
  v66 = sub_231477B68();
  __swift_project_value_buffer(v66, qword_280C3D970);
  v67 = sub_231477B58();
  v68 = sub_2314782B8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_2313E1000, v67, v68, "no INPersons to donate", v69, 2u);
    MEMORY[0x23192F1F0](v69, -1, -1);
  }

  sub_2313F17E0();
  swift_allocError();
  *v70 = 1;
  return swift_willThrow();
}

uint64_t sub_2314309A8()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 appInferred];

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 1;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v5 = sub_231477B68();
  __swift_project_value_buffer(v5, qword_280C3D970);
  v6 = sub_231477B58();
  v7 = sub_2314782A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2313E1000, v6, v7, "INPlayMediaIntent with appInferred; donation will be skipped", v8, 2u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  return 0;
}

void sub_231430AD8()
{
  v1 = v0;
  v2 = type metadata accessor for Entity();
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v59 - v7;
  MEMORY[0x28223BE20](v6);
  *&v65 = &v59 - v8;
  if (qword_280C3CF50 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v9 = sub_231477B68();
    __swift_project_value_buffer(v9, qword_280C3D970);
    v10 = v1;
    v11 = sub_231477B58();
    v12 = sub_2314782A8();

    v13 = os_log_type_enabled(v11, v12);
    v64 = v10;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v67 = v15;
      *v14 = 136315138;
      v16 = v10;
      v17 = [v16 description];
      v18 = sub_231477E68();
      v20 = v19;

      v10 = v64;
      v21 = sub_2313EB684(v18, v20, &v67);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_2313E1000, v11, v12, "The INPlayMediaIntent: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v22 = [v10 mediaSearch];
    if (v22)
    {
      v23 = v22;
      v24 = v10;
      v25 = sub_231477B58();
      v26 = sub_2314782A8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v67 = v28;
        *v27 = 136315138;
        v66 = [v24 mediaSearch];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDD0, qword_23147BA88);
        v29 = sub_231477EB8();
        v31 = sub_2313EB684(v29, v30, &v67);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_2313E1000, v25, v26, "The INPlayMediaIntent mediaSearch: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }
    }

    v32 = sub_231432388(v10);
    if (!v32)
    {
      goto LABEL_24;
    }

    v33 = v32;
    if (!sub_2313F3038(v32))
    {

LABEL_24:
      v45 = [v10 mediaSearch];
      if (v45)
      {
        v46 = v45;
        v47 = v45;
        v48 = v62;
        v49 = v61;
        sub_2314312B4(0, v46, v62);

        v61 = v49;
        if (!v49)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v50 = [v10 mediaContainer];
        if (!v50)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
LABEL_34:
          sub_231477DC8();
          return;
        }

        v51 = v50;
        v47 = v50;
        v52 = [v10 mediaSearch];
        v48 = v60;
        v53 = v61;
        sub_2314312B4(v51, v52, v60);

        v61 = v53;
        if (!v53)
        {
LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
          inited = swift_initStackObject();
          v65 = xmmword_231479580;
          OUTLINED_FUNCTION_7_4(inited, xmmword_231479580);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
          v56 = *(v63 + 72);
          v57 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v58 = swift_allocObject();
          *(v58 + 16) = v65;
          sub_2313F0868(v48, v58 + v57);
          inited[3].n128_u64[0] = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
          sub_231477DC8();

          sub_2313F09B4(v48);
          return;
        }
      }

      return;
    }

    v34 = sub_2313F3038(v33);
    if (!v34)
    {

      v37 = MEMORY[0x277D84F90];
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
      v54 = swift_initStackObject();
      OUTLINED_FUNCTION_7_4(v54, xmmword_231479580)[3].n128_u64[0] = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
      goto LABEL_34;
    }

    v35 = v34;
    v1 = v61;
    v67 = MEMORY[0x277D84F90];
    sub_2313FA208(0, v34 & ~(v34 >> 63), 0);
    if (v35 < 0)
    {
      break;
    }

    v36 = 0;
    v37 = v67;
    v62 = v33 & 0xC000000000000001;
    v60 = v33 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v62)
      {
        v39 = MEMORY[0x23192E5D0](v36, v33);
      }

      else
      {
        if (v36 >= *(v60 + 16))
        {
          goto LABEL_37;
        }

        v39 = *(v33 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = v39;
      v42 = [v10 mediaSearch];
      sub_2314312B4(v40, v42, v65);
      if (v1)
      {

        v61 = v1;
        return;
      }

      v67 = v37;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2313FA208(v43 > 1, v44 + 1, 1);
        v37 = v67;
      }

      *(v37 + 16) = v44 + 1;
      sub_2313F0804(v65, v37 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v44);
      ++v36;
      v10 = v64;
      if (v38 == v35)
      {

        v61 = 0;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  __break(1u);
}

uint64_t sub_2314312B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v6 = 0xE900000000000065;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDB8, &qword_23147BA68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v93 - v9;
  v11 = sub_231477D88();
  v99 = *(v11 - 8);
  v12 = *(v99 + 64);
  MEMORY[0x28223BE20](v11);
  v98 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Entity();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v18[4] = MEMORY[0x277D84F98];
  v19 = v18 + *(v16 + 36);
  sub_231476C98();
  v18[2] = 0x657449616964654DLL;
  v18[3] = 0xE90000000000006DLL;
  if (a1)
  {
    v95 = v3;
    v96 = v7;
    v94 = a1;
    v20 = a1;
    sub_231414BC8(v20, &selRef_title);
    if (v21)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v22 = OUTLINED_FUNCTION_1_11();
      sub_2313F1184(v22, v23, v24, v25, 0xE500000000000000);
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    sub_231414BC8(v20, &selRef_artist);
    if (v26)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v27 = OUTLINED_FUNCTION_1_11();
      sub_2313F1184(v27, v28, v29, v30, 0xE600000000000000);
      OUTLINED_FUNCTION_5_8();
    }

    if ([v20 type] && (objc_msgSend(v20, sel_type), (v31 = INMediaItemTypeGetName()) != 0))
    {
      v32 = v31;
      sub_231477E68();
      v33 = v10;
      v34 = v11;
      v35 = a2;
      v37 = v36;

      v38 = v18[4];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_2_7();
      v39 = OUTLINED_FUNCTION_8_10();
      v40 = v37;
      a2 = v35;
      v11 = v34;
      v10 = v33;
      OUTLINED_FUNCTION_13_7(v39, v40, 3, v41);

      OUTLINED_FUNCTION_5_8();
      if (!a2)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (!a2)
      {
LABEL_29:
        v100 = v6;
        v101 = 0;
        v102 = 5;

        v70 = sub_231402B08(0, 0xE000000000000000);
        v72 = v71;
        sub_231403090(v100, v101, v102);
        v73 = v98;
        sub_231477D78();
        v74 = sub_231401D64(v70, v72);
        v76 = v75;
        sub_2314027B0(v74, v75);
        sub_2313EB8A4(v74, v76);
        sub_231477D68();
        *&v10[*(v96 + 36)] = 16;
        v77 = sub_231431AB4(v10);
        v79 = v78;
        sub_23140224C(v10, &qword_27DD4DDB8, &qword_23147BA68);
        (*(v99 + 8))(v73, v11);
        *v18 = v77;
        v18[1] = v79;
        sub_2313F0868(v18, v97);
        return sub_2313F09B4(v18);
      }
    }

LABEL_14:
    v42 = a2;
    sub_231414BC8(v42, &selRef_mediaName);
    if (v43)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v44 = OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_13_7(v44, v45, v46, v47);
      OUTLINED_FUNCTION_5_8();
    }

    sub_231414BC8(v42, &selRef_artistName);
    if (v48)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v49 = OUTLINED_FUNCTION_1_11();
      sub_2313F1184(v49, v50, v51, v52, 0xEA0000000000656DLL);
      OUTLINED_FUNCTION_5_8();
    }

    sub_231414BC8(v42, &selRef_albumName);
    if (v53)
    {
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2_7();
      v54 = OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_13_7(v54, v55, v56, v57);
      OUTLINED_FUNCTION_5_8();
    }

    v58 = sub_231432334(v42, &selRef_genreNames);
    if (v58)
    {
      if (*(v58 + 16))
      {
        sub_2314319C4(v58, &v100);

        v59 = v18[4];
        swift_isUniquelyReferenced_nonNull_native();
        v103 = v18[4];
        v60 = OUTLINED_FUNCTION_12_10();
        sub_2313F1184(v60, v61, v62, v63, 0xE500000000000000);
        v6 = v103;
        v18[4] = v103;
      }

      else
      {
      }
    }

    v64 = sub_231432334(v42, &selRef_moodNames);
    v65 = v94;
    if (v64)
    {
      if (!*(v64 + 16))
      {

        if (v65)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      sub_2314319C4(v64, &v100);

      v66 = v18[4];
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v18[4];
      v67 = OUTLINED_FUNCTION_12_10();
      sub_2313F1184(v67, v68, v69, 1685024621, 0xE400000000000000);
      v6 = v103;
      v18[4] = v103;
    }

    if (v65)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_32:
    if ([v42 mediaType])
    {
      [v42 mediaType];
      v81 = INMediaItemTypeGetName();
      if (v81)
      {
        v82 = v81;
        sub_231477E68();
        v84 = v83;

        v85 = v18[4];
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_7();
        v86 = OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_13_7(v86, v84, 3, v87);

        OUTLINED_FUNCTION_5_8();
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  if (a2)
  {
    v94 = 0;
    v95 = v3;
    v96 = v7;
    v6 = MEMORY[0x277D84F98];
    goto LABEL_14;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v88 = sub_231477B68();
  __swift_project_value_buffer(v88, qword_280C3D970);
  v89 = sub_231477B58();
  v90 = sub_2314782B8();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_2313E1000, v89, v90, "Cannot convert MediaItem to Entity", v91, 2u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  sub_2313F17E0();
  swift_allocError();
  *v92 = 1;
  swift_willThrow();
  return sub_2313F09B4(v18);
}

uint64_t sub_2314319C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = result;
    v11 = a2;
    v12 = MEMORY[0x277D84F90];
    sub_231412578(0, v2, 0);
    v3 = v12;
    v5 = (v4 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v9 >= v8 >> 1)
      {
        result = sub_231412578(v8 > 1, v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      *(v10 + 48) = 3;
      v5 += 2;
      --v2;
    }

    while (v2);
    a2 = v11;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

uint64_t sub_231431AB4(uint64_t a1)
{
  v2 = sub_231477D58();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v20 = 0;
  v21 = 0xE000000000000000;
  (*(v5 + 16))(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_23140292C(&unk_280C3C170, MEMORY[0x277CC5290]);
  sub_2314780A8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDB8, &qword_23147BA68);
  v7 = *(a1 + *(result + 36));
  v8 = v19[0];
  for (i = v19[1]; v7; ++i)
  {
    v10 = *(v8 + 16);
    if (i == v10)
    {
      break;
    }

    if (i >= v10)
    {
      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v11 = *(v8 + i + 32);
    if (qword_280C3BE98 != -1)
    {
      result = swift_once();
    }

    v12 = off_280C3BEA0;
    if (*(off_280C3BEA0 + 2) <= v11 >> 4)
    {
      goto LABEL_11;
    }

    v13 = (off_280C3BEA0 + 16 * (v11 >> 4) + 32);
    v14 = *v13;
    v15 = v13[1];

    MEMORY[0x23192E050](v14, v15);

    if (v12[2] <= (v11 & 0xF))
    {
      goto LABEL_12;
    }

    v16 = &v12[2 * (v11 & 0xF) + 4];
    v17 = *v16;
    v18 = v16[1];

    MEMORY[0x23192E050](v17, v18);

    --v7;
  }

  return v20;
}

uint64_t sub_231431CE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_231478038();
    OUTLINED_FUNCTION_10_9(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x23192E0D0](15, a1 >> 16);
    OUTLINED_FUNCTION_10_9(v3);
    return v4 | 8;
  }
}

void *sub_231431D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_23143221C(sub_23143247C, v5, a1, a2);
}

uint64_t sub_231431D98(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2313EB8A4(v6, v5);
      *v4 = xmmword_23147BA30;
      sub_2313EB8A4(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_231476848() && __OFSUB__(v6, sub_231476868()))
      {
        goto LABEL_24;
      }

      v13 = sub_231476878();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_231476828();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_231432280(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_2313EB8A4(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_23147BA30;
      sub_2313EB8A4(0, 0xC000000000000000);
      sub_231476B18();
      v6 = v20;
      v9 = sub_231432280(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_2313EB8A4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_23143215C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_231476B08();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23192CBE0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23192CC00]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2314321D4(uint64_t result)
{
  if (result)
  {
    result = sub_2314784F8();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23143221C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_231432280(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_231476848();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_231476868();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_231476858();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_231432334(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231478128();

  return v4;
}

uint64_t sub_231432388(void *a1)
{
  v1 = [a1 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_23143249C();
  v3 = sub_231478128();

  return v3;
}

void *sub_2314323E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_231431D44(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_23143243C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_2314321D4(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

unint64_t sub_23143249C()
{
  result = qword_280C3BC08;
  if (!qword_280C3BC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BC08);
  }

  return result;
}

uint64_t sub_2314324E0()
{
  v1 = [v0 privateSearchForMediaIntentData];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 appInferred];

  if (!v3)
  {
    return 1;
  }

  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return 1;
  }

  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v5 = sub_231477B68();
  __swift_project_value_buffer(v5, qword_280C3D970);
  v6 = sub_231477B58();
  v7 = sub_2314782A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2313E1000, v6, v7, "INSearchForMediaIntent with appInferred; donation will be skipped", v8, 2u);
    MEMORY[0x23192F1F0](v8, -1, -1);
  }

  return 0;
}

void sub_231432620()
{
  v2 = v0;
  v3 = type metadata accessor for Entity();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_231432388(v2);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (!sub_2313F3038(v12))
  {
    v24 = [v2 mediaSearch];

    if (v24)
    {

      v25 = [v2 mediaSearch];
      sub_2314312B4(0, v25, v9);

      if (!v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
        inited = swift_initStackObject();
        v35 = xmmword_231479580;
        OUTLINED_FUNCTION_7_4(inited, xmmword_231479580);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
        v27 = *(v36 + 72);
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v35;
        sub_2313F0868(v9, v29 + v28);
        inited[3].n128_u64[0] = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
        sub_231477DC8();
        sub_2313F09B4(v9);
      }

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
LABEL_26:
    sub_231477DC8();
    return;
  }

  v13 = sub_2313F3038(v12);
  if (!v13)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
    v30 = swift_initStackObject();
    OUTLINED_FUNCTION_7_4(v30, xmmword_231479580)[3].n128_u64[0] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    goto LABEL_26;
  }

  v14 = v13;
  v37 = v11;
  sub_2313FA208(0, v13 & ~(v13 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v37;
    v34 = v2;
    *&v35 = v12 & 0xC000000000000001;
    v32 = v12 & 0xFFFFFFFFFFFFFF8;
    v33 = v14;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v35)
      {
        v18 = MEMORY[0x23192E5D0](v15, v12);
      }

      else
      {
        if (v15 >= *(v32 + 16))
        {
          goto LABEL_28;
        }

        v18 = *(v12 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v18;
      v21 = [v34 mediaSearch];
      sub_2314312B4(v19, v21, v7);
      if (v1)
      {

        return;
      }

      v37 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2313FA208(v22 > 1, v23 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v23 + 1;
      sub_2313F0804(v7, v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23);
      ++v15;
      if (v17 == v33)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_231432AB8()
{
  v1 = sub_231433338(v0);
  if (v1)
  {
    v2 = sub_2313F3038(v1);

    v3 = v2 > 1;
  }

  else
  {
    v3 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D668, qword_23147BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479580;
  v5 = MEMORY[0x277D839B0];
  *(inited + 32) = 0x70756F72477369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D830, &qword_231479A60);
  return sub_231477DC8();
}

uint64_t sub_231432BA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 spokenPhrase];
  sub_231477E68();

  v4 = sub_231477EC8();
  v6 = v5;

  *(a2 + 32) = MEMORY[0x277D84F98];
  v7 = a2 + *(type metadata accessor for Entity() + 28);
  sub_231476C98();
  strcpy((a2 + 16), "MessageGroup");
  *(a2 + 29) = 0;
  *(a2 + 30) = -5120;
  *a2 = v4;
  *(a2 + 8) = v6;

  v8 = *(a2 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 32);
  result = OUTLINED_FUNCTION_2_8(v4, v6);
  *(a2 + 32) = v10;
  return result;
}

void sub_231432CA4()
{
  v1 = sub_231433338(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2313F3038(v1);
    v4 = 0;
    v60 = MEMORY[0x277D84F90];
    while (v3 != v4)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23192E5D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        return;
      }

      v8 = sub_231433F8C(v5);

      ++v4;
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v60 + 16);
          OUTLINED_FUNCTION_3_0();
          sub_23141D070();
          v60 = v11;
        }

        v9 = *(v60 + 16);
        if (v9 >= *(v60 + 24) >> 1)
        {
          sub_23141D070();
          v60 = v12;
        }

        *(v60 + 16) = v9 + 1;
        *(v60 + 8 * v9 + 32) = v8;
        v4 = v7;
      }
    }

    v13 = 0;
    v14 = v60;
    v64 = *(v60 + 16);
    v15 = MEMORY[0x277D84F90];
    v63 = v60 + 32;
    while (1)
    {
      if (v13 == v64)
      {

        goto LABEL_54;
      }

      if (v13 >= *(v14 + 16))
      {
        goto LABEL_78;
      }

      v16 = *(v63 + 8 * v13);
      if (v16 >> 62)
      {
        if (v16 < 0)
        {
          v39 = *(v63 + 8 * v13);
        }

        v17 = sub_231478618();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v15 >> 62;
      if (v15 >> 62)
      {
        v19 = sub_231478618();
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_79;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_30;
      }

      v21 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v20 > *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }

LABEL_32:
      v67 = v13 + 1;
      v23 = *(v21 + 16);
      v24 = (*(v21 + 24) >> 1) - v23;
      v25 = v21 + 8 * v23;
      v65 = v21;
      if (v16 >> 62)
      {
        v28 = sub_231478618();
        if (!v28)
        {
          goto LABEL_46;
        }

        v29 = v28;
        v30 = sub_231478618();
        if (v24 < v30)
        {
          goto LABEL_84;
        }

        if (v29 < 1)
        {
          goto LABEL_85;
        }

        v61 = v30;
        v62 = v15;
        v31 = v25 + 32;
        sub_2314333DC();
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
          v33 = sub_23142EE10(v66, i, v16);
          v35 = *v34;
          (v33)(v66, 0);
          *(v31 + 8 * i) = v35;
        }

        v14 = v60;
        v27 = v61;
        v15 = v62;
LABEL_42:

        v13 = v67;
        if (v27 < v17)
        {
          goto LABEL_80;
        }

        if (v27 > 0)
        {
          v36 = *(v65 + 16);
          v37 = __OFADD__(v36, v27);
          v38 = v36 + v27;
          if (v37)
          {
            goto LABEL_82;
          }

          *(v65 + 16) = v38;
        }
      }

      else
      {
        v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          if (v24 < v26)
          {
            goto LABEL_83;
          }

          v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_231433398();
          swift_arrayInitWithCopy();
          goto LABEL_42;
        }

LABEL_46:

        v13 = v67;
        if (v17 > 0)
        {
          goto LABEL_80;
        }
      }
    }

    if (v18)
    {
LABEL_30:
      sub_231478618();
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
      v22 = *(v21 + 16);
    }

    v15 = sub_231478528();
    v21 = v15 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_32;
  }

  v15 = 0;
LABEL_54:
  v40 = sub_23143028C(v15, 0);

  if (!v59)
  {
    v41 = v40 + 64;
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v40 + 64);
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    v67 = v40;
    while (v44)
    {
LABEL_63:
      v49 = *(*(v40 + 56) + ((v46 << 9) | (8 * __clz(__rbit64(v44)))));
      v50 = *(v49 + 16);
      v51 = *(v47 + 16);
      if (__OFADD__(v51, v50))
      {
        goto LABEL_86;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v51 + v50 > *(v47 + 24) >> 1)
      {
        sub_23141CB80();
        v47 = v52;
      }

      v44 &= v44 - 1;
      if (*(v49 + 16))
      {
        v53 = (*(v47 + 24) >> 1) - *(v47 + 16);
        v54 = *(type metadata accessor for Entity() - 8);
        if (v53 < v50)
        {
          goto LABEL_87;
        }

        v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v56 = *(v54 + 72);
        swift_arrayInitWithCopy();

        v40 = v67;
        if (v50)
        {
          v57 = *(v47 + 16);
          v37 = __OFADD__(v57, v50);
          v58 = v57 + v50;
          if (v37)
          {
            goto LABEL_88;
          }

          *(v47 + 16) = v58;
        }
      }

      else
      {

        v40 = v67;
        if (v50)
        {
          __break(1u);
LABEL_74:

          return;
        }
      }
    }

    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_81;
      }

      if (v48 >= v45)
      {
        goto LABEL_74;
      }

      v44 = *(v41 + 8 * v48);
      ++v46;
      if (v44)
      {
        v46 = v48;
        goto LABEL_63;
      }
    }
  }
}

uint64_t sub_231433260()
{
  result = sub_231433338(v0);
  if (result)
  {
    v2 = sub_2313F3038(result);

    return v2 > 0;
  }

  return result;
}

uint64_t sub_231433338(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231433398();
  v3 = sub_231478128();

  return v3;
}

unint64_t sub_231433398()
{
  result = qword_280C3BBC8;
  if (!qword_280C3BBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BBC8);
  }

  return result;
}

unint64_t sub_2314333DC()
{
  result = qword_27DD4DDD8;
  if (!qword_27DD4DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D828, &qword_23147A1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DDD8);
  }

  return result;
}

uint64_t sub_231433440(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
  v4[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479580;
  *(inited + 32) = 0x6E65697069636572;
  *(inited + 40) = 0xEA00000000007374;

  sub_23144E1B4(v4, inited);
  swift_setDeallocating();
  sub_231414B24();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

void sub_231433500()
{
  v2 = type metadata accessor for Entity();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_231433338(v0);
  if (v5)
  {
    v6 = v5;
    v7 = sub_2313F3038(v5);
    if (v7)
    {
      v8 = v7;
      v23 = MEMORY[0x277D84F90];
      sub_2313FA208(0, v7 & ~(v7 >> 63), 0);
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v10 = v23;
        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        v20 = v6 & 0xC000000000000001;
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v20)
          {
            v12 = MEMORY[0x23192E5D0](v9, v6);
          }

          else
          {
            if (v9 >= *(v19 + 16))
            {
              goto LABEL_20;
            }

            v12 = *(v6 + 8 * v9 + 32);
          }

          v13 = v12;
          sub_2313EF700(1, v22);
          if (v1)
          {

            return;
          }

          v23 = v10;
          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_2313FA208(v14 > 1, v15 + 1, 1);
            v10 = v23;
          }

          *(v10 + 16) = v15 + 1;
          sub_2313F0804(v22, v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15);
          ++v9;
          if (v11 == v8)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }

      __break(1u);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231479580;
      *(inited + 32) = 0x6E65697069636572;
      *(inited + 40) = 0xEA00000000007374;
      *(inited + 48) = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
      sub_231477DC8();
    }
  }

  else
  {
    sub_2313F17E0();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }
}

uint64_t sub_2314337EC(unint64_t a1)
{
  if (a1)
  {
    v1 = sub_2313F303C(a1) > 1;
  }

  else
  {
    v1 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D668, qword_23147BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479580;
  v3 = MEMORY[0x277D839B0];
  *(inited + 32) = 0x70756F72477369;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = v3;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D830, &qword_231479A60);
  return sub_231477DC8();
}

uint64_t sub_2314338B4()
{
  v1 = sub_231433F98(v0, &selRef_contacts);
  v2 = sub_2314337EC(v1);

  return v2;
}

uint64_t sub_231433908()
{
  v1 = sub_231433F98(v0, &selRef_contacts);
  v2 = sub_23143028C(v1, 1);

  return v2;
}

void sub_231433968()
{
  v1 = sub_231433F98(v0, &selRef_contacts);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2313F3038(v1);
    v4 = 0;
    v60 = MEMORY[0x277D84F90];
    while (v3 != v4)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23192E5D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        return;
      }

      v8 = sub_231433F98(v5, &selRef_siriMatches);

      ++v4;
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v60 + 16);
          sub_23141D070();
          v60 = v11;
        }

        v9 = *(v60 + 16);
        if (v9 >= *(v60 + 24) >> 1)
        {
          sub_23141D070();
          v60 = v12;
        }

        *(v60 + 16) = v9 + 1;
        *(v60 + 8 * v9 + 32) = v8;
        v4 = v7;
      }
    }

    v13 = 0;
    v14 = v60;
    v64 = *(v60 + 16);
    v15 = MEMORY[0x277D84F90];
    v63 = v60 + 32;
    while (1)
    {
      if (v13 == v64)
      {

        goto LABEL_54;
      }

      if (v13 >= *(v14 + 16))
      {
        goto LABEL_78;
      }

      v16 = *(v63 + 8 * v13);
      if (v16 >> 62)
      {
        if (v16 < 0)
        {
          v39 = *(v63 + 8 * v13);
        }

        v17 = sub_231478618();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v15 >> 62;
      if (v15 >> 62)
      {
        v19 = sub_231478618();
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_79;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_30;
      }

      v21 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v20 > *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }

LABEL_32:
      v67 = v13 + 1;
      v23 = *(v21 + 16);
      v24 = (*(v21 + 24) >> 1) - v23;
      v25 = v21 + 8 * v23;
      v65 = v21;
      if (v16 >> 62)
      {
        v28 = sub_231478618();
        if (!v28)
        {
          goto LABEL_46;
        }

        v29 = v28;
        v30 = sub_231478618();
        if (v24 < v30)
        {
          goto LABEL_84;
        }

        if (v29 < 1)
        {
          goto LABEL_85;
        }

        v61 = v30;
        v62 = v15;
        v31 = v25 + 32;
        sub_2314333DC();
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
          v33 = sub_23142EE10(v66, i, v16);
          v35 = *v34;
          (v33)(v66, 0);
          *(v31 + 8 * i) = v35;
        }

        v14 = v60;
        v27 = v61;
        v15 = v62;
LABEL_42:

        v13 = v67;
        if (v27 < v17)
        {
          goto LABEL_80;
        }

        if (v27 > 0)
        {
          v36 = *(v65 + 16);
          v37 = __OFADD__(v36, v27);
          v38 = v36 + v27;
          if (v37)
          {
            goto LABEL_82;
          }

          *(v65 + 16) = v38;
        }
      }

      else
      {
        v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          if (v24 < v26)
          {
            goto LABEL_83;
          }

          v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_231433398();
          swift_arrayInitWithCopy();
          goto LABEL_42;
        }

LABEL_46:

        v13 = v67;
        if (v17 > 0)
        {
          goto LABEL_80;
        }
      }
    }

    if (v18)
    {
LABEL_30:
      sub_231478618();
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
      v22 = *(v21 + 16);
    }

    v15 = sub_231478528();
    v21 = v15 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_32;
  }

  v15 = 0;
LABEL_54:
  v40 = sub_23143028C(v15, 0);

  if (!v59)
  {
    v41 = v40 + 64;
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v40 + 64);
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    v67 = v40;
    while (v44)
    {
LABEL_63:
      v49 = *(*(v40 + 56) + ((v46 << 9) | (8 * __clz(__rbit64(v44)))));
      v50 = *(v49 + 16);
      v51 = *(v47 + 16);
      if (__OFADD__(v51, v50))
      {
        goto LABEL_86;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v51 + v50 > *(v47 + 24) >> 1)
      {
        sub_23141CB80();
        v47 = v52;
      }

      v44 &= v44 - 1;
      if (*(v49 + 16))
      {
        v53 = (*(v47 + 24) >> 1) - *(v47 + 16);
        v54 = *(type metadata accessor for Entity() - 8);
        if (v53 < v50)
        {
          goto LABEL_87;
        }

        v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v56 = *(v54 + 72);
        swift_arrayInitWithCopy();

        v40 = v67;
        if (v50)
        {
          v57 = *(v47 + 16);
          v37 = __OFADD__(v57, v50);
          v58 = v57 + v50;
          if (v37)
          {
            goto LABEL_88;
          }

          *(v47 + 16) = v58;
        }
      }

      else
      {

        v40 = v67;
        if (v50)
        {
          __break(1u);
LABEL_74:

          return;
        }
      }
    }

    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_81;
      }

      if (v48 >= v45)
      {
        goto LABEL_74;
      }

      v44 = *(v41 + 8 * v48);
      ++v46;
      if (v44)
      {
        v46 = v48;
        goto LABEL_63;
      }
    }
  }
}

unint64_t sub_231433F40()
{
  result = sub_231433F98(v0, &selRef_contacts);
  if (result)
  {
    v2 = sub_2313F303C(result);

    return v2 > 0;
  }

  return result;
}

uint64_t sub_231433F98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_231433398();
  v4 = sub_231478128();

  return v4;
}

uint64_t IntelligenceEngineInteractionStore.CandidateInteraction.init(candidateId:userAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231477A58();
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 32))(a3, a1);
  v8 = *(type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(0) + 20);
  v9 = sub_231477A88();
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 32);

  return v11(a3 + v8, a2);
}

uint64_t sub_231434110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEB00000000644965;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67696C4172657375 && a2 == 0xED0000746E656D6ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2314341E4(char a1)
{
  if (a1)
  {
    return 0x67696C4172657375;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

uint64_t sub_231434238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231434110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231434260(uint64_t a1)
{
  v2 = sub_231434470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143429C(uint64_t a1)
{
  v2 = sub_231434470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceEngineInteractionStore.CandidateInteraction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDE0, &qword_23147BC40);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_2();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231434470();
  OUTLINED_FUNCTION_30_1();
  sub_231477A58();
  OUTLINED_FUNCTION_5_10();
  sub_2314385D4(v11, v12);
  OUTLINED_FUNCTION_10_10();
  if (!v1)
  {
    v13 = *(type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(0) + 20);
    sub_231477A88();
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v14, v15);
    OUTLINED_FUNCTION_10_10();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_231434470()
{
  result = qword_27DD4DDE8;
  if (!qword_27DD4DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DDE8);
  }

  return result;
}

void IntelligenceEngineInteractionStore.CandidateInteraction.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v37 = v3;
  v39 = sub_231477A88();
  v4 = OUTLINED_FUNCTION_4(v39);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v41 = sub_231477A58();
  v11 = OUTLINED_FUNCTION_4(v41);
  v38 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v40 = v16 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE00, &qword_23147BC48);
  OUTLINED_FUNCTION_4(v42);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_22_2();
  v21 = type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(v20);
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  v28 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_231434470();
  sub_231478948();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    sub_2314385D4(v29, v30);
    sub_2314786B8();
    (*(v38 + 32))(v27, v40, v41);
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v31, v32);
    sub_2314786B8();
    v33 = OUTLINED_FUNCTION_14_6();
    v34(v33);
    (*(v36 + 32))(v27 + *(v21 + 20), v10, v39);
    OUTLINED_FUNCTION_8_12();
    sub_231435358(v27, v37);
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_7_5();
    sub_2314353B4(v27, v35);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t IntelligenceEngineInteractionStore.TupleInteraction.init(tuple:userAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0) + 20);
  v6 = sub_231477A88();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 32);

  return v8(&a3[v5], a2);
}

uint64_t sub_231434914()
{
  v1 = sub_231477A58();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v25 = v0;
    v28 = MEMORY[0x277D84F90];
    sub_231478598();
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v26 = *(v13 + 56);
    v27 = v14;
    do
    {
      v27(v9, v15, v1);
      sub_231477A28();
      v16 = sub_231477A48();
      v18 = v17;
      v19 = objc_allocWithZone(MEMORY[0x277CF11C8]);
      v20 = OUTLINED_FUNCTION_13_8();
      sub_231437540(v20, v21, v16, v18);
      (*(v13 - 8))(v9, v1);
      sub_231478568();
      v22 = *(v28 + 16);
      sub_2314785A8();
      sub_2314785B8();
      sub_231478578();
      v15 += v26;
      --v11;
    }

    while (v11);
    v12 = v28;
    v0 = v25;
  }

  sub_2313E4AFC(0, &qword_27DD4DFB8, 0x277CF1220);
  v23 = v0 + *(type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0) + 20);
  result = sub_231477A78();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return sub_231434C2C(v12, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_231434B20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C707574 && a2 == 0xE500000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67696C4172657375 && a2 == 0xED0000746E656D6ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231434BEC(char a1)
{
  if (a1)
  {
    return 0x67696C4172657375;
  }

  else
  {
    return 0x656C707574;
  }
}

id sub_231434C2C(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2313E4AFC(0, &qword_27DD4DFC0, 0x277CF11C8);
  v4 = sub_231478118();

  v5 = [v3 initWithCandidateIds:v4 userAlignment:a2];

  return v5;
}

uint64_t sub_231434CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231434B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231434CEC(uint64_t a1)
{
  v2 = sub_231434F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231434D28(uint64_t a1)
{
  v2 = sub_231434F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceEngineInteractionStore.TupleInteraction.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE18, &qword_23147BC50);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_2();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231434F28();
  OUTLINED_FUNCTION_30_1();
  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE28, &qword_23147BC58);
  sub_2314352CC(&qword_27DD4DE30, &qword_27DD4DDF0);
  OUTLINED_FUNCTION_10_10();
  if (!v2)
  {
    v13 = *(type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0) + 20);
    sub_231477A88();
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v14, v15);
    OUTLINED_FUNCTION_10_10();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_231434F28()
{
  result = qword_27DD4DE20;
  if (!qword_27DD4DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE20);
  }

  return result;
}

void IntelligenceEngineInteractionStore.TupleInteraction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64();
  v12 = v11;
  v48 = v13;
  v50 = sub_231477A88();
  v14 = OUTLINED_FUNCTION_4(v50);
  v47 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE38, &qword_23147BC60);
  OUTLINED_FUNCTION_4(v51);
  v49 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  v27 = type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction(0);
  v28 = OUTLINED_FUNCTION_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v33 = (v32 - v31);
  v34 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_231434F28();
  sub_231478948();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v46 = v12;
    v35 = v33;
    v37 = v49;
    v36 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE28, &qword_23147BC58);
    v53 = 0;
    sub_2314352CC(&qword_27DD4DE40, &qword_27DD4DE08);
    v38 = v51;
    sub_2314786B8();
    v44 = v35;
    v45 = a10;
    *v35 = a10;
    v52 = 1;
    OUTLINED_FUNCTION_2_9();
    sub_2314385D4(v39, v40);
    sub_2314786B8();
    (*(v37 + 8))(v26, v38);
    v41 = *(v27 + 20);
    v42 = v44;
    (*(v47 + 32))(&v44[v41], v20, v36);
    sub_231435358(v42, v48);
    __swift_destroy_boxed_opaque_existential_0(v46);
    sub_2314353B4(v42, type metadata accessor for IntelligenceEngineInteractionStore.TupleInteraction);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_2314352CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DE28, &qword_23147BC58);
    OUTLINED_FUNCTION_5_10();
    sub_2314385D4(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231435358(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_97();
  v6 = v5(v4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2314353B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23143541C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000231482A90 == a2;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000231482AB0 == a2;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x8000000231482AD0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_231435540(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000015;
}

uint64_t sub_231435594(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2314787C8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23143560C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6574617473 && a2 == 0xEE007865646E4974)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2314356E4(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_231435760(uint64_t a1)
{
  v2 = sub_2314360EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143579C(uint64_t a1)
{
  v2 = sub_2314360EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314357E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23143541C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231435808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231435538();
  *a1 = result;
  return result;
}

uint64_t sub_231435830(uint64_t a1)
{
  v2 = sub_231435FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143586C(uint64_t a1)
{
  v2 = sub_231435FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314358A8(uint64_t a1)
{
  v2 = sub_231436098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314358E4(uint64_t a1)
{
  v2 = sub_231436098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231435928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23143560C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231435950(uint64_t a1)
{
  v2 = sub_231436044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143598C(uint64_t a1)
{
  v2 = sub_231436044();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceEngineInteractionStore.EventId.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v89 = v0;
  v90 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE48, &qword_23147BC68);
  v7 = OUTLINED_FUNCTION_4(v6);
  v86 = v8;
  v87 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  v85 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE50, &qword_23147BC70);
  v14 = OUTLINED_FUNCTION_4(v13);
  v83 = v15;
  v84 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  v82 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE58, &qword_23147BC78);
  v21 = OUTLINED_FUNCTION_4(v20);
  v80 = v22;
  v81 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  v28 = sub_231476CE8();
  v29 = OUTLINED_FUNCTION_4(v28);
  v93 = v30;
  v94 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_34();
  v88 = v33 - v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x28223BE20](v36);
  v38 = &v79 - v37;
  v39 = type metadata accessor for IntelligenceEngineInteractionStore.EventId(0);
  v40 = OUTLINED_FUNCTION_3(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE60, &qword_23147BC80);
  v47 = OUTLINED_FUNCTION_4(v46);
  v91 = v48;
  v92 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_2();
  v52 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_231435FF0();
  sub_231478968();
  OUTLINED_FUNCTION_9_12();
  sub_231435358(v89, v45);
  OUTLINED_FUNCTION_16_5();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v65 = v93;
    v64 = v94;
    (*(v93 + 32))(v38, v45, v94);
    sub_2314360EC();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_0_11();
    sub_2314385D4(v66, v67);
    v68 = v81;
    sub_231478748();
    (*(v80 + 8))(v27, v68);
    (*(v65 + 8))(v38, v64);
LABEL_8:
    OUTLINED_FUNCTION_26_2();
    v62 = v2;
    v63 = v3;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v89 = *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE70, &qword_23147BC88) + 48));
    v70 = v93;
    v69 = v94;
    v71 = v88;
    (*(v93 + 32))(v88, v45, v94);
    sub_231436044();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_0_11();
    sub_2314385D4(v72, v73);
    v74 = v90;
    sub_231478748();
    if (v74)
    {
      v75 = OUTLINED_FUNCTION_21_2();
      v76(v75);
      (*(v70 + 8))(v71, v69);
    }

    else
    {
      sub_231478738();
      v77 = OUTLINED_FUNCTION_21_2();
      v78(v77);
      (*(v70 + 8))(v88, v69);
    }

    goto LABEL_8;
  }

  v55 = v93;
  v54 = v94;
  (*(v93 + 32))(v3, v45, v94);
  sub_231436098();
  v56 = v92;
  sub_2314786F8();
  OUTLINED_FUNCTION_0_11();
  sub_2314385D4(v57, v58);
  sub_231478748();
  v59 = OUTLINED_FUNCTION_21_2();
  v60(v59);
  (*(v55 + 8))(v3, v54);
  OUTLINED_FUNCTION_26_2();
  v62 = v2;
  v63 = v56;
LABEL_9:
  v61(v62, v63);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_231435FF0()
{
  result = qword_27DD4DE68;
  if (!qword_27DD4DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE68);
  }

  return result;
}

unint64_t sub_231436044()
{
  result = qword_27DD4DE78;
  if (!qword_27DD4DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE78);
  }

  return result;
}

unint64_t sub_231436098()
{
  result = qword_27DD4DE88;
  if (!qword_27DD4DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE88);
  }

  return result;
}

unint64_t sub_2314360EC()
{
  result = qword_27DD4DE90;
  if (!qword_27DD4DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DE90);
  }

  return result;
}

void IntelligenceEngineInteractionStore.EventId.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v111 = v0;
  v3 = v2;
  v98 = v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE98, &qword_23147BC90);
  OUTLINED_FUNCTION_4(v103);
  v99 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v106 = v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEA0, &qword_23147BC98);
  OUTLINED_FUNCTION_4(v102);
  v107 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13();
  v105 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEA8, &qword_23147BCA0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v100 = v17;
  v101 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13();
  v104 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEB0, &qword_23147BCA8);
  v23 = OUTLINED_FUNCTION_4(v22);
  v108 = v24;
  v109 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v27);
  v28 = type metadata accessor for IntelligenceEngineInteractionStore.EventId(0);
  v29 = OUTLINED_FUNCTION_3(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_34();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_12();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v93 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = v93 - v40;
  v42 = v3[3];
  v43 = v3[4];
  v110 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v42);
  sub_231435FF0();
  v44 = v111;
  sub_231478948();
  if (v44)
  {
    goto LABEL_9;
  }

  v94 = v1;
  v95 = v39;
  v96 = v34;
  v97 = v41;
  v111 = v28;
  v45 = sub_2314786D8();
  sub_2313F8D60(v45, 0);
  if (v47 == v48 >> 1)
  {
LABEL_8:
    v61 = v111;
    v62 = sub_231478548();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870) + 48);
    *v64 = v61;
    sub_231478658();
    sub_231478538();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_2();
    v66 = OUTLINED_FUNCTION_13_8();
    v67(v66);
LABEL_9:
    v68 = v110;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_62();
    return;
  }

  v93[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    sub_2313F8D58(v47 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    v54 = v107;
    if (v51 == v53 >> 1)
    {
      if (v49)
      {
        if (v49 != 1)
        {
          sub_231436044();
          OUTLINED_FUNCTION_15_5();
          v72 = v97;
          sub_231476CE8();
          OUTLINED_FUNCTION_0_11();
          sub_2314385D4(v73, v74);
          sub_2314786B8();
          v75 = v108;
          v107 = sub_2314786A8();
          swift_unknownObjectRelease();
          v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE70, &qword_23147BC88) + 48);
          v86 = OUTLINED_FUNCTION_11_12();
          v87(v86);
          v88 = *(v75 + 8);
          v89 = OUTLINED_FUNCTION_13_8();
          v90(v89);
          v78 = v96;
          *(v96 + v85) = v107;
          swift_storeEnumTagMultiPayload();
          v91 = v110;
          v92 = v98;
LABEL_14:
          sub_23143786C(v78, v72);
          sub_23143786C(v72, v92);
          v68 = v91;
          goto LABEL_10;
        }

        sub_231436098();
        v55 = v105;
        OUTLINED_FUNCTION_15_5();
        sub_231476CE8();
        OUTLINED_FUNCTION_0_11();
        sub_2314385D4(v56, v57);
        v58 = v94;
        v59 = v55;
        v60 = v102;
        sub_2314786B8();
        swift_unknownObjectRelease();
        (*(v54 + 8))(v59, v60);
        OUTLINED_FUNCTION_26_2();
        v76 = OUTLINED_FUNCTION_13_8();
        v77(v76);
        swift_storeEnumTagMultiPayload();
        v78 = v58;
      }

      else
      {
        sub_2314360EC();
        OUTLINED_FUNCTION_15_5();
        sub_231476CE8();
        OUTLINED_FUNCTION_0_11();
        sub_2314385D4(v69, v70);
        v78 = v95;
        sub_2314786B8();
        v71 = v108;
        swift_unknownObjectRelease();
        v79 = *(v100 + 8);
        v80 = OUTLINED_FUNCTION_16_5();
        v81(v80);
        v82 = *(v71 + 8);
        v83 = OUTLINED_FUNCTION_13_8();
        v84(v83);
        swift_storeEnumTagMultiPayload();
      }

      v91 = v110;
      v72 = v97;
      v92 = v98;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t IntelligenceEngineInteractionStore.Donator.__allocating_init(biomeStream:)(uint64_t a1)
{
  OUTLINED_FUNCTION_18_4();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t IntelligenceEngineInteractionStore.Donator.__allocating_init()()
{
  OUTLINED_FUNCTION_18_4();
  v0 = swift_allocObject();
  IntelligenceEngineInteractionStore.Donator.init()();
  return v0;
}

uint64_t IntelligenceEngineInteractionStore.Donator.init()()
{
  v1 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v2 = [v1 Interaction];
  swift_unknownObjectRelease();
  v3 = [v2 Donation];
  swift_unknownObjectRelease();
  *(v0 + 16) = v3;
  return v0;
}

void sub_231436AB8()
{
  OUTLINED_FUNCTION_64();
  v92 = v0;
  LODWORD(v91) = v4;
  v88 = v5;
  v89 = v6;
  v97 = v7;
  v90 = v8;
  v98 = type metadata accessor for IntelligenceEngineInteractionStore.CandidateInteraction(0);
  v9 = OUTLINED_FUNCTION_4(v98);
  v87 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580) - 8) + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13();
  v94 = v18;
  v19 = sub_231476CE8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v25 = OUTLINED_FUNCTION_22_2();
  v26 = type metadata accessor for IntelligenceEngineInteractionStore.EventId(v25);
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC8, &qword_23147BCB0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_34();
  v93 = v35 - v36;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v86 - v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x28223BE20](v41);
  v95 = v86 - v42;
  __swift_storeEnumTagSinglePayload(v86 - v42, 1, 1, v19);
  v96 = v3;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  OUTLINED_FUNCTION_9_12();
  sub_231435358(v90, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v96;
      sub_231437940(v96);
      v45 = v32;
      v46 = v44;
      (*(v22 + 32))(v44, v45, v19);
      OUTLINED_FUNCTION_4_9(v44);
      v47 = 0;
    }

    else
    {
      v49 = *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DE70, &qword_23147BC88) + 48));
      (*(v22 + 32))(v2, v32, v19);
      (*(v22 + 16))(v40, v2, v19);
      OUTLINED_FUNCTION_4_9(v40);
      v50 = sub_231478218();
      v51 = objc_allocWithZone(MEMORY[0x277CF1218]);
      v47 = sub_2314375E0(v40, v50);
      v52 = *(v22 + 8);
      v53 = OUTLINED_FUNCTION_16_5();
      v54(v53);
      v46 = v96;
    }

    v48 = v95;
  }

  else
  {
    v48 = v95;
    sub_231437940(v95);
    (*(v22 + 32))(v48, v32, v19);
    OUTLINED_FUNCTION_4_9(v48);
    v47 = 0;
    v46 = v96;
  }

  if (v91)
  {
    sub_231437144();
    if (v1)
    {
      sub_231437940(v48);

LABEL_19:
      sub_231437940(v46);
      OUTLINED_FUNCTION_62();
      return;
    }
  }

  v91 = v47;
  v55 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v55);
  v57 = v94;
  (*(v56 + 16))(v94, v88, v55);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
  sub_2314378D0(v48, v93);
  v58 = 0;
  v59 = 0;
  if (!__swift_getEnumTagSinglePayload(v46, 1, v19))
  {
    (*(v22 + 16))(v2, v46, v19);
    v58 = sub_231476CB8();
    v59 = v60;
    v61 = *(v22 + 8);
    v62 = OUTLINED_FUNCTION_16_5();
    v63(v62);
  }

  v88 = v59;
  v90 = v58;
  v97 = sub_231434914();
  v64 = v89;
  v65 = *(v89 + 16);
  v66 = v92;
  if (!v65)
  {
LABEL_18:
    v81 = objc_allocWithZone(MEMORY[0x277CF11B8]);
    v82 = v91;
    v83 = v91;
    v84 = sub_2314376A0(v94, v82, v93, v90, v88, 3u, v97);
    v85 = [*(v66 + 16) source];
    [v85 sendEvent_];

    sub_231437940(v48);
    goto LABEL_19;
  }

  v86[1] = v1;
  v99 = MEMORY[0x277D84F90];
  sub_231478598();
  v67 = v64 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v68 = *(v87 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_8_12();
    sub_231435358(v67, v15);
    v69 = sub_231477A28();
    v71 = v70;
    v72 = sub_231477A48();
    v74 = v73;
    v75 = objc_allocWithZone(MEMORY[0x277CF11C8]);
    v76 = sub_231437540(v69, v71, v72, v74);
    v77 = v15 + *(v98 + 20);
    v78 = sub_231477A78();
    if (v78 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v78 > 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    [objc_allocWithZone(MEMORY[0x277CF11D0]) initWithCandidateId:v76 userAlignment:v78];

    OUTLINED_FUNCTION_7_5();
    sub_2314353B4(v15, v79);
    sub_231478568();
    v80 = *(v99 + 16);
    sub_2314785A8();
    sub_2314785B8();
    sub_231478578();
    v67 += v68;
    if (!--v65)
    {
      v66 = v92;
      v48 = v95;
      v46 = v96;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_231437144()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_97();
  v1 = sub_231477A68();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_2();
  v7 = sub_231477A58();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (*(*v0 + 16))
  {
    (*(v10 + 16))(v15, *v0 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v7);
    sub_231477A38();
    v16 = *(v4 + 88);
    v17 = OUTLINED_FUNCTION_16_5();
    v19 = v18(v17);
    if (v19 != *MEMORY[0x277D1F288])
    {
      if (v19 == *MEMORY[0x277D1F290])
      {
        (*(v10 + 8))(v15, v7);
        goto LABEL_7;
      }

      sub_2314784E8();
      MEMORY[0x23192E060](0xD000000000000033, 0x8000000231482AF0);
      v20 = sub_231477A28();
      MEMORY[0x23192E060](v20);

      sub_231477AF8();
      sub_2314385D4(&qword_27DD4DFA8, MEMORY[0x277CEEA40]);
      swift_allocError();
      sub_231477B08();
      swift_willThrow();
    }

    (*(v10 + 8))(v15, v7);
    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_16_5();
    v23(v22);
  }

LABEL_7:
  OUTLINED_FUNCTION_62();
}

uint64_t IntelligenceEngineInteractionStore.Donator.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_18_4();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void ViewService.DefaultResolverInteractionsView.CandidateID.init(person:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 personHandle];
  if (v4)
  {
    v5 = v4;
    INPersonHandle.entityIdentifier()();

    if (v6)
    {

      return;
    }
  }

  else
  {
    sub_231430174(a1);
    if (!v7)
    {
      sub_231430180(a1);
      if (!v8)
      {

        v9 = sub_231477A58();
        v10 = a2;
        v11 = 1;
        goto LABEL_7;
      }
    }
  }

  sub_231477A18();

  v9 = sub_231477A58();
  v10 = a2;
  v11 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

id sub_231437540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_231477E58();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_231477E58();

LABEL_6:
  v8 = [v4 initWithIdentifier:v6 bundleId:v7];

  return v8;
}

id sub_2314375E0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_231476CE8();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_231476CC8();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithSessionId:v7 statementIndex:a2];

  return v8;
}

id sub_2314376A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  v8 = v7;
  v14 = sub_231476CA8();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) != 1)
  {
    v15 = sub_231476BF8();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  v16 = sub_231476CE8();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v16) != 1)
  {
    v17 = sub_231476CC8();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  if (a5)
  {
    v18 = sub_231477E58();
  }

  else
  {
    v18 = 0;
  }

  sub_2313E4AFC(0, &qword_27DD4DFB0, 0x277CF11D0);
  v19 = sub_231478118();

  v20 = [v8 initWithAbsoluteTimestamp:v15 transcriptStatementId:a2 appIntentInvocationUUID:v17 sirikitIntentItemId:v18 trigger:a6 tupleInteraction:a7 candidateInteractions:v19];

  return v20;
}

uint64_t sub_23143786C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceEngineInteractionStore.EventId(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314378D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC8, &qword_23147BCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231437940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC8, &qword_23147BCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231437A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_231477A88();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_231437AEC()
{
  if (!qword_27DD4DEF0)
  {
    sub_231477A58();
    v0 = sub_231478198();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD4DEF0);
    }
  }
}

void sub_231437B4C()
{
  sub_231437BC0();
  if (v0 <= 0x3F)
  {
    sub_231437C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_231437BC0()
{
  if (!qword_27DD4DF08)
  {
    v0 = sub_231476CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD4DF08);
    }
  }
}

void sub_231437C08()
{
  if (!qword_27DD4DF10)
  {
    sub_231476CE8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DD4DF10);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IntelligenceEngineInteractionStore.EventId.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_231437DFC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_231437EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231437FA8()
{
  result = qword_27DD4DF18;
  if (!qword_27DD4DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF18);
  }

  return result;
}

unint64_t sub_231438000()
{
  result = qword_27DD4DF20;
  if (!qword_27DD4DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF20);
  }

  return result;
}

unint64_t sub_231438058()
{
  result = qword_27DD4DF28;
  if (!qword_27DD4DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF28);
  }

  return result;
}

unint64_t sub_2314380B0()
{
  result = qword_27DD4DF30;
  if (!qword_27DD4DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF30);
  }

  return result;
}

unint64_t sub_231438108()
{
  result = qword_27DD4DF38;
  if (!qword_27DD4DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF38);
  }

  return result;
}

unint64_t sub_231438160()
{
  result = qword_27DD4DF40;
  if (!qword_27DD4DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF40);
  }

  return result;
}

unint64_t sub_2314381B8()
{
  result = qword_27DD4DF48;
  if (!qword_27DD4DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF48);
  }

  return result;
}

unint64_t sub_231438210()
{
  result = qword_27DD4DF50;
  if (!qword_27DD4DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF50);
  }

  return result;
}

unint64_t sub_231438268()
{
  result = qword_27DD4DF58;
  if (!qword_27DD4DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF58);
  }

  return result;
}

unint64_t sub_2314382C0()
{
  result = qword_27DD4DF60;
  if (!qword_27DD4DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF60);
  }

  return result;
}

unint64_t sub_231438318()
{
  result = qword_27DD4DF68;
  if (!qword_27DD4DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF68);
  }

  return result;
}

unint64_t sub_231438370()
{
  result = qword_27DD4DF70;
  if (!qword_27DD4DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF70);
  }

  return result;
}

unint64_t sub_2314383C8()
{
  result = qword_27DD4DF78;
  if (!qword_27DD4DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF78);
  }

  return result;
}

unint64_t sub_231438420()
{
  result = qword_27DD4DF80;
  if (!qword_27DD4DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF80);
  }

  return result;
}

unint64_t sub_231438478()
{
  result = qword_27DD4DF88;
  if (!qword_27DD4DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF88);
  }

  return result;
}

unint64_t sub_2314384D0()
{
  result = qword_27DD4DF90;
  if (!qword_27DD4DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF90);
  }

  return result;
}

unint64_t sub_231438528()
{
  result = qword_27DD4DF98;
  if (!qword_27DD4DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DF98);
  }

  return result;
}

unint64_t sub_231438580()
{
  result = qword_27DD4DFA0;
  if (!qword_27DD4DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFA0);
  }

  return result;
}

uint64_t sub_2314385D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_29_1()
{
  v2 = *(v0 - 104);

  return sub_2314786F8();
}

BOOL sub_231438658(uint64_t a1)
{
  if ((sub_2314397BC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 16) == *(a1 + 16) && *(v1 + 24) == *(a1 + 24);
  if (!v3 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 32) == *(a1 + 32) && *(v1 + 40) == *(a1 + 40);
  if (!v4 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 48) == *(a1 + 64) && *(v1 + 56) == *(a1 + 72);
  if (!v5 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 64) == *(a1 + 48) && *(v1 + 72) == *(a1 + 56);
  if (!v6 && (sub_2314787C8() & 1) == 0 || *(v1 + 80) != *(a1 + 81) || *(a1 + 88) != *(v1 + 82) || *(a1 + 96) != *(v1 + 81))
  {
    return 0;
  }

  v7 = *(v1 + *(type metadata accessor for Interaction(0) + 52));
  return v7 == *(a1 + *(type metadata accessor for _NewInteraction(0) + 56));
}

void static Interaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_2314787C8() & 1) != 0)
  {
    v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v5 || (sub_2314787C8() & 1) != 0)
    {
      v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
      if (v6 || (sub_2314787C8() & 1) != 0)
      {
        v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
        if (v7 || (sub_2314787C8() & 1) != 0)
        {
          v8 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
          if (v8 || (sub_2314787C8()) && *(a1 + 80) == *(a2 + 80) && *(a1 + 81) == *(a2 + 81) && *(a1 + 82) == *(a2 + 82))
          {
            v9 = type metadata accessor for Interaction(0);
            v10 = v9[12];
            if ((sub_231476C68() & 1) != 0 && *(a1 + v9[13]) == *(a2 + v9[13]))
            {
              OUTLINED_FUNCTION_76(v9[14]);
              if (v4)
              {
                OUTLINED_FUNCTION_76(v9[15]);
                if (v4)
                {
                  OUTLINED_FUNCTION_76(v9[16]);
                  if (v4)
                  {
                    OUTLINED_FUNCTION_19_5(v9[17]);
                    v13 = v4 && v11 == v12;
                    if (v13 || (sub_2314787C8() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_19_5(v9[18]);
                      v16 = v4 && v14 == v15;
                      if (v16 || (sub_2314787C8() & 1) != 0)
                      {
                        v17 = v9[19];
                        v18 = *(a1 + v17);
                        v19 = *(a2 + v17);

                        sub_23141AB28(v18, v19);
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
  }
}

uint64_t Interaction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 82) = 2;
  v2 = type metadata accessor for Interaction(0);
  v3 = a1 + v2[12];
  result = sub_231476C98();
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 1;
  *(a1 + v2[16]) = 3;
  v5 = (a1 + v2[17]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (a1 + v2[18]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(a1 + v2[19]) = MEMORY[0x277D84F98];
  return result;
}

uint64_t Interaction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.id.setter()
{
  OUTLINED_FUNCTION_18_5();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Interaction.deviceId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.deviceId.setter()
{
  OUTLINED_FUNCTION_18_5();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Interaction.domain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.domain.setter()
{
  OUTLINED_FUNCTION_18_5();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Interaction.bundleId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.bundleId.setter()
{
  OUTLINED_FUNCTION_18_5();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Interaction.type.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.type.setter()
{
  OUTLINED_FUNCTION_18_5();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Interaction.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Interaction(0) + 48);
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Interaction.startDate.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for Interaction(v2) + 48);
  v4 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Interaction.startDate.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  v1 = *(type metadata accessor for Interaction(v0) + 48);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t Interaction.durationSeconds.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  result = type metadata accessor for Interaction(v2);
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t Interaction.durationSeconds.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  v1 = *(type metadata accessor for Interaction(v0) + 52);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t Interaction.devicePlatform.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Interaction(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t Interaction.userDonatorType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Interaction(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t Interaction.groupIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Interaction(0) + 68));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.appIntentInteractionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Interaction(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_17();
}

uint64_t Interaction.fields.getter()
{
  v1 = *(v0 + *(type metadata accessor for Interaction(0) + 76));
}

uint64_t Interaction.fields.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for Interaction(v2) + 76);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Interaction.fields.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  v1 = *(type metadata accessor for Interaction(v0) + 76);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t sub_23143905C()
{
  v0 = sub_231476788();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_231476778();
  qword_280C3CB40 = result;
  return result;
}

uint64_t sub_23143909C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 81) = 512;
  v4 = type metadata accessor for Interaction(0);
  v38 = v4[12];
  sub_231476C98();
  v5 = v4[14];
  *(a2 + v5) = 0;
  v39 = v5;
  v40 = v4[16];
  *(a2 + v40) = 3;
  v6 = (a2 + v4[17]);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (a2 + v4[18]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v41 = v4[19];
  *(a2 + v41) = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v8;
  v9 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 24);
  *(a2 + 24) = v9;
  v10 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 40) = v10;
  v11 = *(a1 + 80);
  *(a2 + 48) = *(a1 + 72);
  *(a2 + 56) = v11;
  *(a2 + 80) = *(a1 + 88);
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v13 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(a1 + 64);
  *(a2 + 64) = *(a1 + 56);
  *(a2 + 72) = v15;
  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  *(a2 + 82) = v16;
  InteractionHandlingStatus.init(rawValue:)(v12);
  v17 = v45;
  if (v45 == 7)
  {
    v17 = 0;
  }

  v36 = v4[13];
  v37 = v4[15];
  *(a2 + 81) = v17;
  v18 = type metadata accessor for _Interaction(0);
  v19 = v18[14];
  v20 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 24);

  v22(a2 + v38, a1 + v19, v20);
  *(a2 + v36) = *(a1 + v18[15]);
  *(a2 + v37) = *(a1 + v18[18]);
  InteractionDevicePlatform.init(rawValue:)(*(a1 + v18[19]));
  v23 = v44;
  if (v44 == 9)
  {
    v23 = 0;
  }

  *(a2 + v39) = v23;
  v24 = *(a1 + v18[21]);
  if (v24 >= 4)
  {
    LOBYTE(v24) = 0;
  }

  *(a2 + v40) = v24;
  v25 = (a1 + v18[16]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    v28 = v25[1];

    v29 = sub_231401D64(v27, v26);
    v31 = v30;
    if (qword_280C3CE00 != -1)
    {
      OUTLINED_FUNCTION_14_7();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v32, v33);
    sub_231476768();
    sub_2313EB8A4(v29, v31);
    result = OUTLINED_FUNCTION_13_9();
    if (v42)
    {
      OUTLINED_FUNCTION_0_12();
      return sub_2313FC214();
    }

    else
    {
      *(a2 + v41) = v43;
    }
  }

  else
  {
    v35 = sub_231477DC8();
    result = OUTLINED_FUNCTION_13_9();
    *(a2 + v41) = v35;
  }

  return result;
}

uint64_t sub_2314393C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231476CA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  *(a2 + 81) = 512;
  v13 = type metadata accessor for Interaction(0);
  v14 = v13[12];
  sub_231476C98();
  v45 = v13[14];
  *(a2 + v45) = 0;
  v46 = v13[16];
  *(a2 + v46) = 3;
  v15 = (a2 + v13[17]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (a2 + v13[18]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v44 = v13[19];
  *(a2 + v44) = MEMORY[0x277D84F98];
  *a2 = sub_2314778A8();
  *(a2 + 8) = v17;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = sub_2314778D8();
  *(a2 + 40) = v18;
  *(a2 + 48) = sub_231477908();
  *(a2 + 56) = v19;
  *(a2 + 64) = sub_2314778B8();
  *(a2 + 72) = v20;
  *(a2 + 80) = sub_231477848() & 1;
  v21 = sub_231477928();
  v22 = 0x2010002u >> (8 * v21);
  if (v21 >= 4)
  {
    LOBYTE(v22) = 2;
  }

  *(a2 + 82) = v22;
  v23 = sub_231477878();
  v24 = 0x605040302010000uLL >> (8 * v23);
  if (v23 >= 8)
  {
    LOBYTE(v24) = 0;
  }

  v25 = v13[13];
  v26 = v13[15];
  *(a2 + 81) = v24;
  sub_231477938();
  v28 = *(v7 + 40);
  v27 = v7 + 40;
  v28(a2 + v14, v12, v4);
  sub_231477888();
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_14_7();
    goto LABEL_13;
  }

  *(a2 + v25) = v29;
  *(a2 + v26) = sub_2314778F8() & 1;
  v30 = sub_231477858();
  sub_23145EFF8(v30, &v49);
  *(a2 + v45) = v49;
  v31 = sub_231477898();
  if (v31 >= 4)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *(a2 + v46) = v32;
  v33 = sub_2314778E8();
  if (!v34)
  {
    v41 = sub_231477DC8();
    v42 = sub_231477948();
    OUTLINED_FUNCTION_3(v42);
    result = (*(v43 + 8))(a1);
    *(a2 + v44) = v41;
    return result;
  }

  v12 = sub_231401D64(v33, v34);
  v4 = v35;
  v27 = v47;
  if (qword_280C3CE00 != -1)
  {
    goto LABEL_20;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
  OUTLINED_FUNCTION_1_4();
  sub_2313F6580(v36, v37);
  sub_231476768();
  v38 = sub_231477948();
  OUTLINED_FUNCTION_3(v38);
  (*(v39 + 8))(a1);
  if (v27)
  {
    sub_2313EB8A4(v12, v4);
    OUTLINED_FUNCTION_0_12();
    return sub_2313FC214();
  }

  else
  {
    result = sub_2313EB8A4(v12, v4);
    *(a2 + v44) = v48;
  }

  return result;
}

uint64_t sub_2314397BC()
{
  v3 = OUTLINED_FUNCTION_91();
  v4 = v1 + *(type metadata accessor for Interaction(v3) + 48);
  sub_231476BC8();
  v6 = round(v5 * 1000.0);
  if (v6 < 0.0 || v6 > 9.22337204e18)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v8 = sub_231477B68();
    __swift_project_value_buffer(v8, qword_280C3D970);
    v9 = sub_231477B58();
    v10 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_23_4(v10))
    {
      goto LABEL_19;
    }

    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v6;
    v12 = "The startDate: %f is invalid";
    goto LABEL_17;
  }

  v13 = v0 + *(type metadata accessor for _NewInteraction(0) + 52);
  sub_231476BC8();
  v15 = round(v14 * 1000.0);
  if (v15 < 0.0 || v15 > 9.22337204e18)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v17 = sub_231477B68();
    __swift_project_value_buffer(v17, qword_280C3D970);
    v9 = sub_231477B58();
    v18 = sub_2314782B8();
    if (!OUTLINED_FUNCTION_23_4(v18))
    {
      goto LABEL_19;
    }

    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v15;
    v12 = "The donatedTime: %f is invalid";
LABEL_17:
    v19 = v2;
    v20 = v9;
    v21 = v11;
    v22 = 12;
    goto LABEL_18;
  }

  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*&v6 != *&v15)
  {
    if (qword_280C3CF50 == -1)
    {
LABEL_29:
      v24 = sub_231477B68();
      __swift_project_value_buffer(v24, qword_280C3D970);
      v9 = sub_231477B58();
      v25 = sub_2314782A8();
      if (!OUTLINED_FUNCTION_23_4(v25))
      {
        goto LABEL_19;
      }

      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v6;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v15;
      v12 = "startDate: %f is not equal to donatedTime: %f";
      v19 = v2;
      v20 = v9;
      v21 = v11;
      v22 = 22;
LABEL_18:
      _os_log_impl(&dword_2313E1000, v20, v19, v12, v21, v22);
      MEMORY[0x23192F1F0](v11, -1, -1);
LABEL_19:

      return 0;
    }

LABEL_36:
    OUTLINED_FUNCTION_5();
    goto LABEL_29;
  }

  return 1;
}

uint64_t sub_231439AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_2314787C8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                  if (v13 || (sub_2314787C8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                    if (v14 || (sub_2314787C8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                        if (v16 || (sub_2314787C8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74;
                          if (v17 || (sub_2314787C8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL;
                            if (v18 || (sub_2314787C8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001ELL && 0x8000000231482B30 == a2;
                              if (v19 || (sub_2314787C8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_2314787C8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231439F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231439AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231439FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231439F8C();
  *a1 = result;
  return result;
}

uint64_t sub_231439FE4(uint64_t a1)
{
  v2 = sub_2313F74D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143A020(uint64_t a1)
{
  v2 = sub_2313F74D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DFC8, &unk_23147C520);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F74D8();
  sub_231478968();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v38) = 0;
  sub_231478718();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_6_8(1);
    v18 = v3[4];
    v19 = v3[5];
    OUTLINED_FUNCTION_6_8(2);
    v20 = v3[6];
    v21 = v3[7];
    OUTLINED_FUNCTION_6_8(3);
    v22 = v3[8];
    v23 = v3[9];
    OUTLINED_FUNCTION_6_8(4);
    v24 = *(v3 + 80);
    LOBYTE(v38) = 5;
    OUTLINED_FUNCTION_7_6();
    sub_231478728();
    LOBYTE(v38) = *(v3 + 81);
    v39 = 6;
    sub_23143AE74();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    LOBYTE(v38) = *(v3 + 82);
    v39 = 7;
    sub_23143AEC8();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    v25 = type metadata accessor for Interaction(0);
    v26 = v25[12];
    LOBYTE(v38) = 8;
    sub_231476CA8();
    OUTLINED_FUNCTION_12_13();
    sub_2313F81DC(v27, v28);
    OUTLINED_FUNCTION_26_3();
    sub_231478748();
    v29 = *(v3 + v25[13]);
    LOBYTE(v38) = 9;
    OUTLINED_FUNCTION_7_6();
    sub_231478738();
    LOBYTE(v38) = *(v3 + v25[14]);
    v39 = 10;
    sub_23141EF10();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    v30 = *(v3 + v25[15]);
    LOBYTE(v38) = 11;
    OUTLINED_FUNCTION_7_6();
    sub_231478728();
    LOBYTE(v38) = *(v3 + v25[16]);
    v39 = 12;
    sub_23143AF1C();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    v31 = (v3 + v25[17]);
    v32 = *v31;
    v33 = v31[1];
    OUTLINED_FUNCTION_6_8(13);
    v34 = (v3 + v25[18]);
    v35 = *v34;
    v36 = v34[1];
    OUTLINED_FUNCTION_6_8(14);
    v38 = *(v3 + v25[19]);
    v39 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    sub_2313F6580(&qword_280C3C158, sub_23140518C);
    OUTLINED_FUNCTION_26_3();
    sub_231478748();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t InteractionWithParameters.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for InteractionWithParameters(0) + 20));
}

uint64_t InteractionWithParameters.parameters.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  v3 = *(type metadata accessor for InteractionWithParameters(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t InteractionWithParameters.parameters.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  v1 = *(type metadata accessor for InteractionWithParameters(v0) + 20);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t InteractionWithParameters.contentHash.setter()
{
  v2 = OUTLINED_FUNCTION_91();
  result = type metadata accessor for InteractionWithParameters(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t InteractionWithParameters.contentHash.modify()
{
  v0 = OUTLINED_FUNCTION_91();
  v1 = *(type metadata accessor for InteractionWithParameters(v0) + 24);
  return OUTLINED_FUNCTION_21_3();
}

uint64_t sub_23143A600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23143A720(char a1)
{
  if (!a1)
  {
    return 0x7463617265746E69;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x48746E65746E6F63;
}

uint64_t sub_23143A794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23143A600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23143A7BC(uint64_t a1)
{
  v2 = sub_23143AFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23143A7F8(uint64_t a1)
{
  v2 = sub_23143AFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InteractionWithParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E010, &qword_23147C538);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23143AFE4();
  sub_231478968();
  v21 = 0;
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_11_13();
  sub_2313F81DC(v14, v15);
  OUTLINED_FUNCTION_26_3();
  sub_231478748();
  if (!v2)
  {
    v16 = type metadata accessor for InteractionWithParameters(0);
    v20 = *(v3 + *(v16 + 20));
    v19[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141ED50();
    OUTLINED_FUNCTION_26_3();
    sub_231478748();
    v17 = *(v3 + *(v16 + 24));
    v19[14] = 2;
    sub_231478738();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t InteractionWithParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Interaction(0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v29 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E020, &qword_23147C550);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for InteractionWithParameters(0);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23143AFE4();
  sub_231478948();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_11_13();
  sub_2313F81DC(v22, v23);
  sub_2314786B8();
  sub_23143B038(v29, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6E0, &unk_23147C540);
  sub_23141EF64();
  sub_2314786B8();
  *(v20 + *(v14 + 20)) = v30;
  v24 = sub_2314786A8();
  v25 = OUTLINED_FUNCTION_15_6();
  v26(v25);
  *(v20 + *(v14 + 24)) = v24;
  sub_231405434(v20, a2, type metadata accessor for InteractionWithParameters);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2313FC214();
}

unint64_t sub_23143AE74()
{
  result = qword_27DD4DFD8;
  if (!qword_27DD4DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFD8);
  }

  return result;
}

unint64_t sub_23143AEC8()
{
  result = qword_27DD4DFE0;
  if (!qword_27DD4DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFE0);
  }

  return result;
}

unint64_t sub_23143AF1C()
{
  result = qword_27DD4DFE8;
  if (!qword_27DD4DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DFE8);
  }

  return result;
}

unint64_t sub_23143AF70()
{
  result = qword_27DD4E008;
  if (!qword_27DD4E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E008);
  }

  return result;
}

unint64_t sub_23143AFE4()
{
  result = qword_27DD4E018;
  if (!qword_27DD4E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E018);
  }

  return result;
}

uint64_t sub_23143B038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Interaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23143B0A0()
{
  result = qword_27DD4E028;
  if (!qword_27DD4E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E028);
  }

  return result;
}

unint64_t sub_23143B0F8()
{
  result = qword_27DD4E030;
  if (!qword_27DD4E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E030);
  }

  return result;
}

unint64_t sub_23143B150()
{
  result = qword_27DD4E038;
  if (!qword_27DD4E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E038);
  }

  return result;
}

void sub_23143B1A4()
{
  sub_231476CA8();
  if (v0 <= 0x3F)
  {
    sub_231421584();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23143B2BC()
{
  type metadata accessor for Interaction(319);
  if (v0 <= 0x3F)
  {
    sub_23141F374();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InteractionHandlingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InteractionDevicePlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23143B504()
{
  result = qword_27DD4E040;
  if (!qword_27DD4E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E040);
  }

  return result;
}

unint64_t sub_23143B55C()
{
  result = qword_27DD4E048;
  if (!qword_27DD4E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E048);
  }

  return result;
}