uint64_t sub_29EC4AF3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 33, 7);
}

uint64_t sub_29EC4AF78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

uint64_t objectdestroy_200Tm()
{
  v1 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

void sub_29EC4B04C(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else
  {
  }
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2A1C733A0](v1, 40, 7);
}

uint64_t sub_29EC4B1CC(uint64_t a1)
{
  v2 = sub_29EC5C004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29EC5BE84();
  sub_29EC45FB0();
  sub_29EC5C7D4();
  v7 = sub_29EC5C394();

  v8 = objc_opt_self();
  v35 = a1;
  v9 = [v8 valueWithNewErrorFromMessage:v7 inContext:a1];

  if (!v9)
  {
    *v6 = 0xD000000000000025;
    v6[1] = 0x800000029EC5F4D0;
    (*(v3 + 104))(v6, *MEMORY[0x29EDC5FE8], v2);
    swift_allocError();
    sub_29EC5BE34();
    (*(v3 + 8))(v6, v2);
    swift_willThrow();
    return v9;
  }

  v10 = sub_29EC5BE74();
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = [v8 valueWithInt32:v10 inContext:v35];
  if (!v11)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = sub_29EC5C394();
  [v9 setValue:v12 forProperty:v13];

  v14 = sub_29EC5BE64();
  if (v15)
  {
    v34[0] = v14;
    v34[1] = v15;

    v16 = [v8 valueWithObject:sub_29EC5C794() inContext:v35];
    swift_unknownObjectRelease();
    if (!v16)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = v16;
    v18 = sub_29EC5C394();
    [v9 setValue:v17 forProperty:v18];
  }

  v19 = MEMORY[0x29EDC99B0];
  v20 = sub_29EC5BE54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F360, &qword_29EC5D7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29EC5D6F0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000029EC5F500;
  v22 = sub_29EC5BE74();
  v23 = MEMORY[0x29EDC9BA8];
  *(inited + 48) = v22;
  *(inited + 72) = v23;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x800000029EC5F520;
  v24 = sub_29EC5BE44();
  *(inited + 120) = v19;
  *(inited + 96) = v24;
  *(inited + 104) = v25;
  v26 = sub_29EC2E454(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F288, &qword_29EC5D7E0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v20;
  v28 = v33[1];
  sub_29EC4C888(v26, sub_29EC4B6C4, 0, isUniquelyReferenced_nonNull_native, v34);
  if (!v28)
  {

    v34[0] = sub_29EC4BCA0(v34[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F370, &qword_29EC5D7E8);
    v29 = [v8 valueWithObject:sub_29EC5C794() inContext:v35];
    swift_unknownObjectRelease();
    if (v29)
    {

      v30 = v29;
      v31 = sub_29EC5C394();
      [v9 setValue:v30 forProperty:v31];

      return v9;
    }

    goto LABEL_16;
  }

LABEL_18:

  __break(1u);
  return result;
}

uint64_t sub_29EC4B6C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_29EC2D1D4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_29EC4B710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F280, "6&");
  v36 = a2;
  result = sub_29EC5C744();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_29EC2EBC8(v25, v37);
      }

      else
      {
        sub_29EC2D1D4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_29EC5C804();
      sub_29EC5C414();
      result = sub_29EC5C824();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_29EC2EBC8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_29EC4B9C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F300, qword_29EC5D6D0);
  v40 = a2;
  result = sub_29EC5C744();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v42 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_29EC5C804();
      sub_29EC5C414();
      sub_29EC5C414();
      result = sub_29EC5C824();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v13 = v41;
      v17[2] = v42;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
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
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_29EC4BCA0(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x2A1C7C4A8](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_29EC4BE00(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_29EC4C138(v9, v4, v2);
  result = MEMORY[0x29EDAE780](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29EC4BE00(unint64_t result, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = result;
  v30 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v31 = (v5 + 63) >> 6;
  v8 = &unk_2A188F4D8;
  while (1)
  {
    if (!v7)
    {
      v10 = v3;
      while (1)
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v3 >= v31)
        {
          return sub_29EC4C1B0(v29, v28, v30, a3);
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
        if (v11)
        {
          v9 = __clz(__rbit64(v11));
          v44 = (v11 - 1) & v11;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64(v7));
    v44 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v32 = v12;
    sub_29EC2D1D4(*(a3 + 56) + 32 * v12, v43);
    v41[0] = v15;
    v41[1] = v14;
    sub_29EC2D1D4(v43, &v42);
    sub_29EC2EFE8(v41, &v36, v8, qword_29EC5DC48);
    v39[0] = v36;
    v39[1] = v37;
    v16 = v8;
    sub_29EC2EFE8(v41, v34, v8, qword_29EC5DC48);
    swift_bridgeObjectRetain_n();

    sub_29EC2EBC8(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F280, "6&");
    v17 = sub_29EC5C754();
    sub_29EC2EFE8(v39, &v36, &qword_2A188F288, &qword_29EC5D7E0);
    v18 = v36;
    v19 = v37;
    result = sub_29EC4D564(v36, v37);
    if (v20)
    {
      goto LABEL_19;
    }

    v17[(result >> 6) + 8] |= 1 << result;
    v21 = (v17[6] + 16 * result);
    *v21 = v18;
    v21[1] = v19;
    result = sub_29EC2EBC8(v38, (v17[7] + 32 * result));
    v22 = v17[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v17[2] = v24;
    v25 = objc_opt_self();
    sub_29EC2EBD8(v39, &qword_2A188F288, &qword_29EC5D7E0);
    v26 = sub_29EC5C354();

    v27 = [v25 isValidJSONObject_];

    v8 = v16;
    sub_29EC2EBD8(v41, v16, qword_29EC5DC48);
    __swift_destroy_boxed_opaque_existential_1(v43);

    v7 = v44;
    if (v27)
    {
      *(v29 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v23 = __OFADD__(v30++, 1);
      if (v23)
      {
        break;
      }
    }
  }

  __break(1u);
  return sub_29EC4C1B0(v29, v28, v30, a3);
}

void *sub_29EC4C138(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_29EC4BE00(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_29EC4C1B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x29EDCA198];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F280, "6&");
  result = sub_29EC5C754();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_29EC2D1D4(v17 + 32 * v16, v34);
    sub_29EC2EBC8(v34, v33);
    v21 = *(v9 + 40);
    sub_29EC5C804();

    sub_29EC5C414();
    result = sub_29EC5C824();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_29EC2EBC8(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_29EC4C400()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F280, "6&");
  v2 = *v0;
  v3 = sub_29EC5C734();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_29EC2D1D4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29EC2EBC8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_29EC4C5A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F300, qword_29EC5D6D0);
  v2 = *v0;
  v3 = sub_29EC5C734();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

uint64_t sub_29EC4C728@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_29EC2D1D4(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_29EC2EBC8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_29EC2EBD8(v22, &qword_2A188F4D8, qword_29EC5DC48);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_29EC4C888(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_29EC4C728(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_29EC2EBC8(v46, v44);
  v14 = *a5;
  result = sub_29EC4D564(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_29EC4B710(v20, a4 & 1);
    v22 = *a5;
    result = sub_29EC4D564(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_29EC5C7A4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_29EC4C400();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_29EC2EBC8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_29EC2EBC8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_29EC4C728(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_29EC2EBC8(v46, v44);
        v33 = *a5;
        result = sub_29EC4D564(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_29EC4B710(v37, 1);
          v38 = *a5;
          result = sub_29EC4D564(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_29EC2EBC8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_29EC2EBC8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_29EC4C728(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_29EC4CB98();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_29EC4CBA0(uint64_t a1)
{
  if (qword_2A188F220 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_2A188F6C8 + 2);
  MEMORY[0x2A1C7C4A8](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_29EC2EE98((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_2A18909B8 = v2;
}

unint64_t sub_29EC4CC80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F280, "6&");
    v2 = sub_29EC5C754();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_29EC4E194(*(a1 + 48) + 40 * v14, v29);
        sub_29EC2D1D4(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_29EC4E194(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_29EC2D1D4(v27 + 8, v22);
        sub_29EC2EBD8(v26, &qword_2A188F4E0, &qword_29EC5DC98);
        v23 = v20;
        sub_29EC2EBC8(v22, v24);
        v15 = v23;
        sub_29EC2EBC8(v24, v25);
        sub_29EC2EBC8(v25, &v23);
        result = sub_29EC4D564(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_29EC2EBC8(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_29EC2EBC8(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_29EC2EBD8(v26, &qword_2A188F4E0, &qword_29EC5DC98);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_29EC4CF5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2E0, &qword_29EC5DCA0);
    v2 = sub_29EC5C754();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_29EC2D1D4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_29EC2EBC8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_29EC2EBC8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_29EC2EBC8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_29EC5C634();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_29EC2EBC8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_29EC4D224(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2F0, &qword_29EC5DCC0);
    v2 = sub_29EC5C754();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_29EC2D1D4(*(a1 + 56) + 32 * v14, v34);
        *&v33 = v16;
        *(&v33 + 1) = v17;
        v31 = v33;
        v32[0] = v34[0];
        v32[1] = v34[1];
        v18 = v33;
        sub_29EC2EBC8(v32, &v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A8, &qword_29EC5D9A0);
        swift_dynamicCast();
        v29 = v27;
        v30 = v28;
        v26 = v27;
        v27 = v28;
        result = sub_29EC4D564(v18, *(&v18 + 1));
        if (v19)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v18;
          v11 = result;

          result = sub_29EC2EC8C(&v26, v2[7] + 32 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 32 * result);
          v21 = v27;
          *v20 = v26;
          v20[1] = v21;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_29EC4D498()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_29EC4D4E4(uint64_t a1)
{
  v2 = sub_29EC4E490();

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_29EC4D520(uint64_t a1)
{
  v2 = sub_29EC4E490();

  return MEMORY[0x2A1C5B388](a1, v2);
}

unint64_t sub_29EC4D564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29EC5C804();
  sub_29EC5C414();
  v6 = sub_29EC5C824();

  return sub_29EC4D6C0(a1, a2, v6);
}

unint64_t sub_29EC4D5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_29EC5C804();
  sub_29EC5C414();
  sub_29EC5C414();
  v10 = sub_29EC5C824();

  return sub_29EC4D778(a1, a2, a3, a4, v10);
}

unint64_t sub_29EC4D67C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29EC5C634();

  return sub_29EC4D878(a1, v5);
}

unint64_t sub_29EC4D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29EC5C784())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29EC4D778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      if (v18 || (sub_29EC5C784() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_29EC5C784() & 1) != 0)
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

unint64_t sub_29EC4D878(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29EC4E194(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29EDADE20](v9, a1);
      sub_29EC4E1F0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_29EC4D940(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F4E8, &qword_29EC5DCA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = v20 - v6;
  v8 = sub_29EC5BE84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[16] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
  v14 = swift_dynamicCast();
  v15 = *(v9 + 56);
  if (v14)
  {
    v15(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v16 = sub_29EC4B1CC(a2);
LABEL_5:
    v18 = v16;
    (*(v9 + 8))(v12, v8);
    return v18;
  }

  v15(v7, 1, 1, v8);
  sub_29EC2EBD8(v7, &qword_2A188F4E8, &qword_29EC5DCA8);
  swift_getErrorValue();
  sub_29EC5C7D4();
  v17 = sub_29EC5C394();

  v18 = [objc_opt_self() valueWithNewErrorFromMessage:v17 inContext:a2];

  if (!v18)
  {
    __break(1u);
    goto LABEL_5;
  }

  return v18;
}

void sub_29EC4E058(void *a1)
{
  v2 = sub_29EC5C394();
  v3 = [a1 valueForProperty_];

  if (v3)
  {
    v4 = [v3 toDictionary];

    if (!v4 || (v5 = sub_29EC5C364(), v4, v6 = sub_29EC4CC80(v5), , !v6))
    {
      v6 = sub_29EC2E454(MEMORY[0x29EDCA190]);
    }

    v7 = [a1 description];
    sub_29EC5C3A4();

    sub_29EC4CF5C(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EC4E244(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29EC5C674();

  MEMORY[0x29EDADC00](a2, a3);

  MEMORY[0x29EDADC00](0x6720747562202C60, 0xEC0000006020746FLL);
  v6 = [a1 description];
  v7 = sub_29EC5C3A4();
  v9 = v8;

  MEMORY[0x29EDADC00](v7, v9);

  MEMORY[0x29EDADC00](96, 0xE100000000000000);
  sub_29EC2E6A8(MEMORY[0x29EDCA190]);
  return 0x6465746365707845;
}

uint64_t sub_29EC4E360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A8, &qword_29EC5D9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EC4E3F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29EC4E43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EC4E490()
{
  result = qword_2A188F4F0;
  if (!qword_2A188F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F4F0);
  }

  return result;
}

unint64_t sub_29EC4E4E4(uint64_t a1)
{
  v7[0] = 0xD000000000000015;
  v7[1] = 0x800000029EC5F500;
  sub_29EC5C654();
  if (*(a1 + 16) && (v2 = sub_29EC4D67C(v6), (v3 & 1) != 0))
  {
    sub_29EC2D1D4(*(a1 + 56) + 32 * v2, v7);
    sub_29EC4E1F0(v6);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EC4E1F0(v6);
  }

  return 0x8000000000000000;
}

void sub_29EC4E5B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v20 = sub_29EC5BE84();
  v18 = *(v20 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EC5C114();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29EC5C394();
  v12 = [a1 valueForProperty_];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19[3] = sub_29EC5C174();
  v19[4] = sub_29EC50434(&qword_2A188F4F8, MEMORY[0x29EDC6020]);
  __swift_allocate_boxed_opaque_existential_1(v19);
  v13 = sub_29EC5C394();
  v14 = [v12 valueForProperty_];

  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_29EC50A68(v14, v10);
  if (v2)
  {

    __swift_deallocate_boxed_opaque_existential_1(v19);
    return;
  }

  sub_29EC5C164();

  v15 = sub_29EC5C394();
  v16 = [a1 valueForProperty_];

  if (v16)
  {
    sub_29EC4E8CC(v16, v6);

    sub_29EC5BFE4();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_29EC4E8CC(void *a1, uint64_t a2)
{
  v5 = sub_29EC5C004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_29EC5BE84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 isNull] & 1) != 0 || (objc_msgSend(a1, sel_isUndefined) & 1) != 0 || (v15 = objc_msgSend(a1, sel_isArray), !v15))
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_29EC5C674();
    MEMORY[0x29EDADC00](0xD000000000000039, 0x800000029EC5F590);
    MEMORY[0x29EDADC00](0xD000000000000010, 0x800000029EC5F5D0);
    v17 = v19;
    v18 = v20;
    *v9 = 0x7365756C6176;
    v9[1] = 0xE600000000000000;
    v9[2] = v17;
    v9[3] = v18;
    (*(v6 + 104))(v9, *MEMORY[0x29EDC5FE0], v5);
    sub_29EC5BE34();
    (*(v6 + 8))(v9, v5);
    sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    return swift_willThrowTypedImpl();
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v15);
    *(&v19 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F390, &qword_29EC5D808);
    sub_29EC5BE24();
    if (v2)
    {
      return (*(v11 + 32))(a2, v14, v10);
    }

    else
    {
      return v19;
    }
  }
}

uint64_t sub_29EC4EBF0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_29EC5A214();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v20 = MEMORY[0x29EDCA190];
      result = sub_29EC38E28(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        break;
      }

      v8 = 0;
      v9 = v20;
      v16 = a1;
      while (1)
      {
        a1 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x29EDADE70](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v5 + 8 * v8 + 32);
        }

        v11 = v10;
        v18 = v10;
        sub_29EC4EDC4(&v18, &v17, &v19);
        if (v2)
        {
        }

        v2 = 0;
        v12 = v6;

        v13 = v19;
        v20 = v9;
        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_29EC38E28((v14 > 1), v15 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v15 + 1;
        *(v9 + 8 * v15 + 32) = v13;
        ++v8;
        v6 = v12;
        if (a1 == v12)
        {

          *v16 = v9;
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v6 = sub_29EC5C724();
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *a1 = MEMORY[0x29EDCA190];
  }

  return result;
}

void sub_29EC4EDC4(id *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v121 = a3;
  v132 = *MEMORY[0x29EDCA608];
  v5 = sub_29EC5C3E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v119 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EC5BE84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v120 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v118 = &v111 - v13;
  v14 = sub_29EC5C004();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (![*a1 isObject])
  {
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_29EC5C674();
    MEMORY[0x29EDADC00](0xD000000000000057, 0x800000029EC5F5F0);
    v22 = [v19 description];
    v23 = sub_29EC5C3A4();
    v25 = v24;

    MEMORY[0x29EDADC00](v23, v25);

    v26 = v130;
    sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    v20 = swift_allocError();
    *v18 = 0x695B7365756C6176;
    *(v18 + 1) = 0xE90000000000005DLL;
    *(v18 + 1) = v26;
    (v15[13])(v18, *MEMORY[0x29EDC5FE0], v14);
    sub_29EC5BE34();
    (v15[1])(v18, v14);
    goto LABEL_5;
  }

  v117 = v18;
  if ([v19 isArray])
  {
    sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    v20 = swift_allocError();
    v21 = v117;
    *v117 = 0x695B7365756C6176;
    *(v21 + 1) = 0xE90000000000005DLL;
    *(v21 + 2) = 0xD00000000000005CLL;
    *(v21 + 3) = 0x800000029EC5F6F0;
    (v15[13])(v21, *MEMORY[0x29EDC5FE0], v14);
    sub_29EC5BE34();
    (v15[1])(v21, v14);
LABEL_5:
    swift_willThrow();
    goto LABEL_6;
  }

  v116 = v9;
  v27 = sub_29EC2E454(MEMORY[0x29EDCA190]);
  v123 = v19;
  v28 = sub_29EC5A340();
  v125 = *(v28 + 16);
  if (!v125)
  {
LABEL_60:

    v92 = sub_29EC4D224(v27);

    *v121 = v92;
    goto LABEL_61;
  }

  v114 = v8;
  v112 = v15;
  v113 = v14;
  v115 = a2;
  v29 = 0;
  v30 = (v28 + 40);
  v31 = v123;
  v124 = v28;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_63:

      v94 = v117;
      *v117 = 0x7274534F53496F74;
      *(v94 + 1) = 0xEB00000000676E69;
      *(v94 + 2) = 0xD000000000000025;
      *(v94 + 3) = 0x800000029EC5F6C0;
      v95 = v112;
      v96 = v113;
      (v112[13])(v94, *MEMORY[0x29EDC5FE0], v113);
      v97 = v118;
      sub_29EC5BE34();
      (v95[1])(v94, v96);
      sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
      v98 = v114;
      swift_willThrowTypedImpl();

      v20 = swift_allocError();
      (*(v116 + 32))(v99, v97, v98);
LABEL_67:

      goto LABEL_72;
    }

    v33 = *(v30 - 1);
    v32 = *v30;

    v34 = sub_29EC5C394();
    v15 = [v31 valueForProperty_];

    if (!v15)
    {
      goto LABEL_76;
    }

    if (([v15 isString] & 1) != 0 || (objc_msgSend(v15, sel_isNumber) & 1) != 0 || (objc_msgSend(v15, sel_isBoolean) & 1) != 0 || (objc_msgSend(v15, sel_isNull) & 1) != 0 || objc_msgSend(v15, sel_isUndefined))
    {
      if (![v15 toObject])
      {
        v44 = sub_29EC4D564(v33, v32);
        v46 = v45;

        if (v46)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v127[0] = v27;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_29EC4C400();
            v27 = *&v127[0];
          }

          v48 = *(v27[6] + 16 * v44 + 8);

          sub_29EC2EBC8((v27[7] + 32 * v44), &v128);
          sub_29EC50498(v44, v27);
        }

        else
        {

          v128 = 0u;
          v129 = 0u;
        }

        sub_29EC50A00(&v128);
        goto LABEL_11;
      }

      sub_29EC5C5F4();
      swift_unknownObjectRelease();
      sub_29EC2EBC8(&v130, &v128);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *&v127[0] = v27;
      v36 = sub_29EC4D564(v33, v32);
      v38 = v27[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        __break(1u);
LABEL_66:

        sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
        v100 = v114;
        v20 = swift_allocError();
        (*(v116 + 32))(v101, v120, v100);
        goto LABEL_67;
      }

      v42 = v37;
      if (v27[3] < v41)
      {
        sub_29EC4B710(v41, v35);
        v36 = sub_29EC4D564(v33, v32);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_79;
        }

LABEL_29:
        v31 = v123;
        if ((v42 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_30;
      }

      if (v35)
      {
        goto LABEL_29;
      }

      v89 = v36;
      sub_29EC4C400();
      v36 = v89;
      v31 = v123;
      if (v42)
      {
LABEL_30:
        v49 = v36;

        v27 = *&v127[0];
        v50 = (*(*&v127[0] + 56) + 32 * v49);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(v50);
        sub_29EC2EBC8(&v128, v50);

        goto LABEL_11;
      }

LABEL_57:
      v27 = *&v127[0];
      *(*&v127[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v90 = (v27[6] + 16 * v36);
      *v90 = v33;
      v90[1] = v32;
      sub_29EC2EBC8(&v128, (v27[7] + 32 * v36));

      v91 = v27[2];
      v40 = __OFADD__(v91, 1);
      v69 = v91 + 1;
      if (v40)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
      }

LABEL_58:
      v27[2] = v69;
      goto LABEL_11;
    }

    if ([v15 isDate])
    {
      v51 = v122;
      v52 = sub_29EC5A014(0x7274534F53496F74, 0xEB00000000676E69);
      v122 = v51;
      if (v51)
      {
        goto LABEL_63;
      }

      v53 = v52;
      v54 = [v52 toString];

      if (!v54)
      {
        goto LABEL_78;
      }

      v55 = sub_29EC5C3A4();
      v57 = v56;

      v131 = MEMORY[0x29EDC99B0];
      *&v130 = v55;
      *(&v130 + 1) = v57;
      sub_29EC2EBC8(&v130, &v128);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *&v127[0] = v27;
      v60 = sub_29EC4D564(v33, v32);
      v61 = v27[2];
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_74;
      }

      if (v27[3] >= v63)
      {
        if (v58)
        {
          v31 = v123;
          if ((v59 & 1) == 0)
          {
LABEL_40:
            v27 = *&v127[0];
            *(*&v127[0] + 8 * (v60 >> 6) + 64) |= 1 << v60;
            v67 = (v27[6] + 16 * v60);
            *v67 = v33;
            v67[1] = v32;
            sub_29EC2EBC8(&v128, (v27[7] + 32 * v60));

            v68 = v27[2];
            v40 = __OFADD__(v68, 1);
            v69 = v68 + 1;
            if (v40)
            {
              goto LABEL_75;
            }

            goto LABEL_58;
          }

LABEL_55:

          v27 = *&v127[0];
          v50 = (*(*&v127[0] + 56) + 32 * v60);
          goto LABEL_31;
        }

        v64 = v59;
        sub_29EC4C400();
      }

      else
      {
        v64 = v59;
        sub_29EC4B710(v63, v58);
        v65 = sub_29EC4D564(v33, v32);
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_79;
        }

        v60 = v65;
      }

      v31 = v123;
      if ((v64 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_55;
    }

    v70 = [v15 context];
    if (!v70)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      sub_29EC5C7A4();
      __break(1u);
      return;
    }

    v71 = v70;
    v72 = sub_29EC5C394();
    v73 = [v71 objectForKeyedSubscript_];

    LODWORD(v71) = [v15 isInstanceOf_];
    if (v71)
    {
      v74 = v122;
      sub_29EC4FE8C(v120);
      v31 = v123;
      if (v74)
      {
        goto LABEL_66;
      }

      v122 = 0;
      v131 = MEMORY[0x29EDC99B0];
      *&v130 = v75;
      *(&v130 + 1) = v76;
      sub_29EC2EBC8(&v130, &v128);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v127[0] = v27;
      sub_29EC50648(&v128, v33, v32, v77);

      v27 = *&v127[0];
      goto LABEL_11;
    }

    if (![v15 isObject])
    {

      *&v130 = 0x695B7365756C6176;
      *(&v130 + 1) = 0xEA00000000005B5DLL;
      MEMORY[0x29EDADC00](v33, v32);

      MEMORY[0x29EDADC00](93, 0xE100000000000000);
      v102 = v130;
      sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
      v20 = swift_allocError();
      v103 = v117;
      *v117 = v102;
      *(v103 + 2) = 0xD00000000000002ALL;
      *(v103 + 3) = 0x800000029EC5F650;
      v104 = v112;
      v105 = v113;
      (v112[13])(v103, *MEMORY[0x29EDC5FE0], v113);
      sub_29EC5BE34();
      (v104[1])(v103, v105);
      swift_willThrow();

      goto LABEL_72;
    }

    if (![v15 toObject])
    {

      goto LABEL_70;
    }

    sub_29EC5C5F4();
    swift_unknownObjectRelease();
    sub_29EC2EBC8(&v128, &v130);
    v78 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v130, v131);
    v79 = [v78 isValidJSONObject_];
    swift_unknownObjectRelease();
    if ((v79 & 1) == 0)
    {
      goto LABEL_64;
    }

    __swift_project_boxed_opaque_existential_1(&v130, v131);
    v80 = sub_29EC5C774();
    *&v128 = 0;
    v81 = [v78 dataWithJSONObject:v80 options:4 error:&v128];
    swift_unknownObjectRelease();
    v82 = v128;
    if (!v81)
    {
      break;
    }

    v83 = sub_29EC5BDE4();
    v111 = v84;

    sub_29EC5C3D4();
    v85 = sub_29EC5C3B4();
    v87 = v86;
    sub_29EC509AC(v83, v111);
    if (!v87)
    {
LABEL_64:

      __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_70:
      a2 = v115;
      *&v130 = 0x695B7365756C6176;
      *(&v130 + 1) = 0xEA00000000005B5DLL;
      MEMORY[0x29EDADC00](v33, v32);

      MEMORY[0x29EDADC00](93, 0xE100000000000000);
      v106 = v130;
      sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
      v20 = swift_allocError();
      v107 = v117;
      *v117 = v106;
      *(v107 + 2) = 0xD00000000000003DLL;
      *(v107 + 3) = 0x800000029EC5F680;
      v108 = v112;
      v109 = v113;
      (v112[13])(v107, *MEMORY[0x29EDC5FE0], v113);
      sub_29EC5BE34();
      (v108[1])(v107, v109);
      swift_willThrow();

      goto LABEL_6;
    }

    *(&v129 + 1) = MEMORY[0x29EDC99B0];
    *&v128 = v85;
    *(&v128 + 1) = v87;
    sub_29EC2EBC8(&v128, v127);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v27;
    sub_29EC50648(v127, v33, v32, v88);

    v27 = v126;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v31 = v123;
LABEL_11:
    v28 = v124;
    ++v29;
    v30 += 2;
    if (v125 == v29)
    {
      goto LABEL_60;
    }
  }

  v110 = v82;

  v20 = sub_29EC5BD74();

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_72:
  a2 = v115;
LABEL_6:
  *a2 = v20;
LABEL_61:
  v93 = *MEMORY[0x29EDCA608];
}

void sub_29EC4FE8C(uint64_t a1)
{
  v3 = v1;
  v4 = sub_29EC5C004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v48 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_29EC5C394();
  v9 = [v1 valueForProperty_];

  if (v9)
  {
    if (![v9 isNumber])
    {

      v52 = 0;
      v53 = 0xE000000000000000;
      sub_29EC5C674();
      MEMORY[0x29EDADC00](0xD000000000000034, 0x800000029EC5F750);
      v22 = [v3 description];
      v23 = sub_29EC5C3A4();
      v24 = v5;
      v26 = v25;

      MEMORY[0x29EDADC00](v23, v26);

      v27 = v52;
      v28 = v53;
      v29 = v48;
      *v48 = 0x6874676E656CLL;
      v29[1] = 0xE600000000000000;
      v29[2] = v27;
      v29[3] = v28;
      (*(v24 + 104))(v29, *MEMORY[0x29EDC5FE0], v4);
      sub_29EC5BE34();
      (*(v24 + 8))(v29, v4);
      sub_29EC5BE84();
      sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
LABEL_14:
      swift_willThrowTypedImpl();
      return;
    }

    v10 = [v9 toUInt32];

    v11 = 0xE000000000000000;
    v52 = 0;
    v53 = 0xE000000000000000;
    if (v10)
    {
      v45 = v5;
      v46 = v4;
      v47 = a1;
      v12 = 0;
      v13 = v10;
      v49 = xmmword_29EC5D6A0;
      v14 = MEMORY[0x29EDC9CA8];
      v15 = MEMORY[0x29EDC9CD0];
      while (1)
      {
        v16 = [v3 valueAtIndex_];
        if (!v16)
        {
          __break(1u);
          goto LABEL_17;
        }

        v17 = v16;
        if (![v16 isNumber])
        {
          break;
        }

        ++v12;
        v18 = [v17 toUInt32];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2D0, &qword_29EC5DB60);
        v19 = swift_allocObject();
        *(v19 + 16) = v49;
        *(v19 + 56) = v14;
        *(v19 + 64) = v15;
        *(v19 + 32) = v18;
        v20 = sub_29EC5C3C4();
        MEMORY[0x29EDADC00](v20);

        if (v13 == v12)
        {
          v21 = v52;
          v11 = v53;
          goto LABEL_11;
        }
      }

      v50 = 0x5B7365747962;
      v51 = 0xE600000000000000;
      v54 = v12;
      v30 = sub_29EC5C764();
      MEMORY[0x29EDADC00](v30);

      MEMORY[0x29EDADC00](93, 0xE100000000000000);
      v31 = v50;
      v32 = v51;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_29EC5C674();
      MEMORY[0x29EDADC00](0xD000000000000033, 0x800000029EC5F790);
      v33 = [v3 valueAtIndex_];
      if (!v33)
      {
        goto LABEL_18;
      }

      v34 = v33;
      v35 = [v33 description];
      v36 = sub_29EC5C3A4();
      v38 = v37;

      MEMORY[0x29EDADC00](v36, v38);

      v39 = v50;
      v40 = v51;
      v41 = v48;
      *v48 = v31;
      v41[1] = v32;
      v41[2] = v39;
      v41[3] = v40;
      v43 = v45;
      v42 = v46;
      (*(v45 + 104))(v41, *MEMORY[0x29EDC5FE0], v46);
      sub_29EC5BE34();
      (*(v43 + 8))(v41, v42);
      sub_29EC5BE84();
      sub_29EC50434(&qword_2A188F318, MEMORY[0x29EDC5F60]);
      goto LABEL_14;
    }

    v21 = 0;
LABEL_11:
    v50 = 10104;
    v51 = 0xE200000000000000;
    MEMORY[0x29EDADC00](v21, v11);

    MEMORY[0x29EDADC00](39, 0xE100000000000000);
  }

  else
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x29EDAE780);
  }

  return result;
}

uint64_t sub_29EC50434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EC50498(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29EC5C624() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_29EC5C804();

      sub_29EC5C414();
      v14 = sub_29EC5C824();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_29EC50648(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29EC4D564(a2, a3);
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
      sub_29EC4C400();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29EC4B710(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_29EC4D564(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_29EC5C7A4();
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

    return sub_29EC2EBC8(a1, v23);
  }

  else
  {
    sub_29EC50940(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_29EC50798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_29EC4D5DC(a2, a3, a4, a5);
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
      sub_29EC4B9C8(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_29EC4D5DC(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_29EC5C7A4();
        __break(1u);
        return MEMORY[0x2A1C71028]();
      }
    }

    else
    {
      v23 = v15;
      sub_29EC4C5A4();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2A1C71028]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 32 * v15);
  *v29 = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
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

_OWORD *sub_29EC50940(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29EC2EBC8(a4, (a5[7] + 32 * a1));
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

uint64_t sub_29EC509AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EC50A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A8, &qword_29EC5D9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29EC50A68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F500, &qword_29EC5DDC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F508, &qword_29EC5DDD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F510, &qword_29EC5DDD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F518, &qword_29EC5DDE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v61 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F520, &qword_29EC5DDE8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v62 = &v56 - v21;
  v22 = sub_29EC5C054();
  v23 = *(v22 - 8);
  v63 = v22;
  v64 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v65 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29EC5C0F4();
  v26 = *(v66 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v66);
  v28 = sub_29EC5C394();
  v29 = [a1 valueForProperty_];

  if (!v29)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_29EC53D2C(0x74636E6974736964, 0xE800000000000000);
  if (v2)
  {

LABEL_5:
    return;
  }

  sub_29EC54150(0x736E6D756C6F63, 0xE700000000000000, v29);
  v59 = v26;
  sub_29EC5C0E4();

  v30 = sub_29EC5C394();
  v31 = [a1 valueForProperty_];

  if (!v31)
  {
    goto LABEL_35;
  }

  sub_29EC53A20(1701667182, 0xE400000000000000);
  sub_29EC53FA4(0x7361696C61, 0xE500000000000000);
  v57 = v32;
  v58 = v33;
  sub_29EC53FA4(0x6573616261746164, 0xE800000000000000);
  sub_29EC5C044();

  sub_29EC51B18(0x6E696F6AuLL, 0xE400000000000000, sub_29EC5172C, 0, &qword_2A188F550, &qword_29EC5DE18, MEMORY[0x29EDC6008], sub_29EC57868);
  v58 = v34;
  v35 = sub_29EC5C394();
  v36 = [a1 valueForProperty_];

  if (!v36)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (([v36 isNull] & 1) != 0 || objc_msgSend(v36, sel_isUndefined))
  {
    v37 = 1;
  }

  else
  {
    sub_29EC53A20(0x7470697263736564, 0xEB000000006E6F69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F528, &qword_29EC5DDF0);
    sub_29EC5BFF4();
    v37 = 0;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F530, &qword_29EC5DDF8);
  (*(*(v38 - 8) + 56))(v62, v37, 1, v38);
  v39 = sub_29EC5C394();
  v40 = [a1 valueForProperty_];

  if (!v40)
  {
    goto LABEL_37;
  }

  if (([v40 isNull] & 1) != 0 || objc_msgSend(v40, sel_isUndefined))
  {

    v41 = 1;
  }

  else
  {
    sub_29EC5218C(v40);
    v41 = 0;
  }

  v42 = sub_29EC5C084();
  (*(*(v42 - 8) + 56))(v61, v41, 1, v42);
  v43 = sub_29EC5C394();
  v44 = [a1 valueForProperty_];

  if (!v44)
  {
    goto LABEL_38;
  }

  if (([v44 isNull] & 1) != 0 || objc_msgSend(v44, sel_isUndefined))
  {
    v45 = 1;
  }

  else
  {
    sub_29EC54150(31074, 0xE200000000000000, v44);
    sub_29EC5C0B4();
    v45 = 0;
  }

  v46 = sub_29EC5C0C4();
  (*(*(v46 - 8) + 56))(v15, v45, 1, v46);
  v47 = sub_29EC5C394();
  v48 = [a1 valueForProperty_];

  if (!v48)
  {
    goto LABEL_39;
  }

  if (([v48 isNull] & 1) != 0 || objc_msgSend(v48, sel_isUndefined))
  {
    v49 = 1;
  }

  else
  {
    sub_29EC53264(0x6874676E656CLL, 0xE600000000000000);
    sub_29EC5407C(0x74657366666FLL, 0xE600000000000000);
    sub_29EC5C094();
    v49 = 0;
  }

  v50 = sub_29EC5C0A4();
  (*(*(v50 - 8) + 56))(v11, v49, 1, v50);
  sub_29EC51B18(0x6E6F696E75uLL, 0xE500000000000000, sub_29EC523DC, 0, &qword_2A188F548, &qword_29EC5DE10, MEMORY[0x29EDC6010], sub_29EC57840);
  v57 = v51;
  v52 = sub_29EC5C394();
  v53 = [a1 valueForProperty_];

  if (v53)
  {
    if ([v53 isNull] & 1) != 0 || (objc_msgSend(v53, sel_isUndefined))
    {
      v54 = 1;
    }

    else
    {
      sub_29EC53D2C(0x7669737275636572, 0xE900000000000065);
      sub_29EC51B18(0x73657375616C63uLL, 0xE700000000000000, sub_29EC52948, 0, &qword_2A188F538, &qword_29EC5DE00, MEMORY[0x29EDC6000], sub_29EC57A1C);
      sub_29EC5C024();
      v54 = 0;
    }

    v55 = sub_29EC5C034();
    (*(*(v55 - 8) + 56))(v7, v54, 1, v55);
    sub_29EC5C104();
    goto LABEL_5;
  }

LABEL_40:
  __break(1u);
}

void sub_29EC51760(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29EC5C114();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29EC5C204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29EC5C394();
  v13 = [a1 valueForProperty_];

  if (!v13)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_29EC525F4(v13, v11);
  if (v2)
  {
LABEL_3:

    return;
  }

  v22[6] = v8;
  v20[1] = a2;
  v14 = sub_29EC5C394();
  v15 = [a1 valueForProperty_];

  if (!v15)
  {
    goto LABEL_9;
  }

  v22[3] = sub_29EC5C174();
  v22[4] = sub_29EC531B8(&qword_2A188F4F8, MEMORY[0x29EDC6020]);
  __swift_allocate_boxed_opaque_existential_1(v22);
  v16 = sub_29EC5C394();
  v17 = [v15 valueForProperty_];

  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_29EC50A68(v17);
  sub_29EC5C164();

  v18 = sub_29EC5C394();
  v19 = [a1 valueForProperty_];

  if (v19)
  {
    v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F558, &qword_29EC5DE20);
    v21[4] = sub_29EC53200();
    __swift_allocate_boxed_opaque_existential_1(v21);
    sub_29EC53A20(0x7470697263736564, 0xEB000000006E6F69);
    sub_29EC5BFF4();

    sub_29EC5C064();
    goto LABEL_3;
  }

LABEL_11:
  __break(1u);
}

void sub_29EC51B18(unint64_t a1, unint64_t a2, void (*a3)(unint64_t), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v58 = a8;
  v13 = v9;
  v72 = a3;
  v73 = a4;
  v74 = sub_29EC5C004();
  v70 = *(v74 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v74);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = a5;
  v67 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v22 = &v56 - v21;
  v77 = a7(0);
  v68 = *(v77 - 8);
  v23 = *(v68 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v77);
  v71 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v69 = &v56 - v27;
  MEMORY[0x2A1C7C4A8](v26);
  v64 = a1;
  v65 = &v56 - v28;
  v29 = a2;
  v30 = sub_29EC5C394();
  v31 = [v8 valueForProperty_];

  if (v31)
  {
    if (([v31 isNull] & 1) != 0 || objc_msgSend(v31, sel_isUndefined))
    {
    }

    else if ([v31 isArray])
    {
      sub_29EC5A214();
      if (v32 >> 62)
      {
        goto LABEL_30;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v34 = v69;
        v57 = v31;
        if (!v33)
        {
          break;
        }

        v35 = 0;
        v63 = v32 & 0xFFFFFFFFFFFFFF8;
        v64 = v32 & 0xC000000000000001;
        v70 = v68 + 32;
        v59 = (v68 + 48);
        v60 = (v68 + 56);
        v36 = MEMORY[0x29EDCA190];
        v61 = v33;
        v62 = v32;
        while (1)
        {
          if (v64)
          {
            v32 = MEMORY[0x29EDADE70](v35, v32);
          }

          else
          {
            if (v35 >= *(v63 + 16))
            {
              goto LABEL_29;
            }

            v32 = *(v32 + 8 * v35 + 32);
          }

          v37 = v32;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          v31 = v22;
          v39 = v34;
          v72(v32);
          if (v13)
          {

            v50 = v57;
            goto LABEL_27;
          }

          v74 = 0;
          v40 = *v70;
          v41 = v77;
          (*v70)(v31, v39, v77);
          (*v60)(v31, 0, 1, v41);

          v42 = v41;
          if ((*v59)(v31, 1, v41) == 1)
          {
            v34 = v39;
            sub_29EC2EBD8(v31, v66, v67);
            v22 = v31;
          }

          else
          {
            v43 = v65;
            v40(v65, v31, v42);
            v40(v71, v43, v42);
            v22 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = v58(0, *(v36 + 16) + 1, 1, v36);
            }

            v45 = *(v36 + 16);
            v44 = *(v36 + 24);
            if (v45 >= v44 >> 1)
            {
              v36 = v58(v44 > 1, v45 + 1, 1, v36);
            }

            *(v36 + 16) = v45 + 1;
            v40((v36 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v45), v71, v77);
            v34 = v69;
          }

          ++v35;
          v32 = v62;
          v13 = v74;
          if (v38 == v61)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v55 = v32;
        v33 = sub_29EC5C724();
        v32 = v55;
      }

LABEL_25:
    }

    else
    {
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_29EC5C674();

      v75 = 0xD00000000000001DLL;
      v76 = 0x800000029EC5F7D0;
      v46 = [v31 description];
      v47 = sub_29EC5C3A4();
      v49 = v48;

      MEMORY[0x29EDADC00](v47, v49);

      v50 = v31;
      v51 = v75;
      v52 = v76;
      sub_29EC5BE84();
      sub_29EC531B8(&qword_2A188F318, MEMORY[0x29EDC5F60]);
      swift_allocError();
      *v18 = v64;
      v18[1] = v29;
      v18[2] = v51;
      v18[3] = v52;
      v53 = v70;
      v54 = v74;
      (*(v70 + 104))(v18, *MEMORY[0x29EDC5FE0], v74);

      sub_29EC5BE34();
      (*(v53 + 8))(v18, v54);
      swift_willThrow();
LABEL_27:
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC5218C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F520, &qword_29EC5DDE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v11 - v5;
  sub_29EC54150(31074, 0xE200000000000000, a1);
  if (v1)
  {
  }

  else
  {
    v7 = sub_29EC5C394();
    v8 = [a1 valueForProperty_];

    if (v8)
    {
      if (([v8 isNull] & 1) != 0 || objc_msgSend(v8, sel_isUndefined))
      {

        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F530, &qword_29EC5DDF8);
        (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      }

      else
      {
        sub_29EC53A20(0x7470697263736564, 0xEB000000006E6F69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F528, &qword_29EC5DDF0);
        sub_29EC5BFF4();

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F530, &qword_29EC5DDF8);
        (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
      }

      sub_29EC5C074();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_29EC52410(void *a1)
{
  v3 = sub_29EC5C114();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  sub_29EC53D2C(7105633, 0xE300000000000000);
  if (v1)
  {
    goto LABEL_2;
  }

  v5 = sub_29EC5C394();
  v6 = [a1 valueForProperty_];

  if (v6)
  {
    v9[3] = sub_29EC5C174();
    v9[4] = sub_29EC531B8(&qword_2A188F4F8, MEMORY[0x29EDC6020]);
    __swift_allocate_boxed_opaque_existential_1(v9);
    v7 = sub_29EC5C394();
    v8 = [v6 valueForProperty_];

    if (v8)
    {
      sub_29EC50A68(v8);
      sub_29EC5C164();

      sub_29EC5C0D4();
LABEL_2:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29EC525F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29EC5C004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F568, &qword_29EC5DE28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v23 - v11;
  if (![a1 isString])
  {
    goto LABEL_5;
  }

  v13 = [a1 toString];
  if (!v13)
  {
    goto LABEL_5;
  }

  v25 = v4;
  v14 = v13;
  sub_29EC5C3A4();

  sub_29EC5C1F4();
  v15 = sub_29EC5C204();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_29EC2EBD8(v12, &qword_2A188F568, &qword_29EC5DE28);
    v4 = v25;
LABEL_5:
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_29EC5C674();

    v23 = 0xD000000000000030;
    v24 = 0x800000029EC5F830;
    v17 = [a1 description];
    v18 = sub_29EC5C3A4();
    v20 = v19;

    MEMORY[0x29EDADC00](v18, v20);

    v21 = v23;
    v22 = v24;
    sub_29EC5BE84();
    sub_29EC531B8(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    *v8 = 1953393000;
    v8[1] = 0xE400000000000000;
    v8[2] = v21;
    v8[3] = v22;
    (*(v5 + 104))(v8, *MEMORY[0x29EDC5FE0], v4);
    sub_29EC5BE34();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();

    return;
  }

  (*(v16 + 32))(a2, v12, v15);
}

void sub_29EC5297C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28[2] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F540, &qword_29EC5DE08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v29 = v28 - v6;
  v7 = sub_29EC5C114();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v28[3] = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = sub_29EC5C174();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = sub_29EC5C394();
  v14 = [a1 valueForProperty_];

  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = sub_29EC5C394();
  v16 = [v14 valueForProperty_];

  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_29EC50A68(v16);
  if (v2)
  {

LABEL_6:
    return;
  }

  sub_29EC5C164();

  sub_29EC54150(0x736E6D756C6F63, 0xE700000000000000, a1);
  v28[1] = v17;
  v18 = sub_29EC5C394();
  v19 = [a1 valueForProperty_];

  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = [v19 isNull];
  v21 = v29;
  if ((v20 & 1) != 0 || [v19 isUndefined])
  {

    v22 = 1;
  }

  else
  {
    sub_29EC52E64(v19, v21);
    v22 = 0;
  }

  v23 = sub_29EC5C134();
  (*(*(v23 - 8) + 56))(v21, v22, 1, v23);
  v24 = sub_29EC5C394();
  v25 = [a1 valueForProperty_];

  if (!v25)
  {
    goto LABEL_18;
  }

  v30[3] = v11;
  v30[4] = sub_29EC531B8(&qword_2A188F4F8, MEMORY[0x29EDC6020]);
  __swift_allocate_boxed_opaque_existential_1(v30);
  v26 = sub_29EC5C394();
  v27 = [v25 valueForProperty_];

  if (v27)
  {
    sub_29EC50A68(v27);
    sub_29EC5C164();

    sub_29EC5C014();
    goto LABEL_6;
  }

LABEL_19:
  __break(1u);
}

void sub_29EC52E64(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29EC5C004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F540, &qword_29EC5DE08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v23 - v11;
  if (![a1 isString])
  {
    goto LABEL_5;
  }

  v13 = [a1 toString];
  if (!v13)
  {
    goto LABEL_5;
  }

  v25 = v4;
  v14 = v13;
  sub_29EC5C3A4();

  sub_29EC5C124();
  v15 = sub_29EC5C134();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_29EC2EBD8(v12, &qword_2A188F540, &qword_29EC5DE08);
    v4 = v25;
LABEL_5:
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_29EC5C674();
    MEMORY[0x29EDADC00](0xD00000000000003BLL, 0x800000029EC5F7F0);
    v17 = [a1 description];
    v18 = sub_29EC5C3A4();
    v20 = v19;

    MEMORY[0x29EDADC00](v18, v20);

    v21 = v23;
    v22 = v24;
    sub_29EC5BE84();
    sub_29EC531B8(&qword_2A188F318, MEMORY[0x29EDC5F60]);
    swift_allocError();
    *v8 = 1953393000;
    v8[1] = 0xE400000000000000;
    v8[2] = v21;
    v8[3] = v22;
    (*(v5 + 104))(v8, *MEMORY[0x29EDC5FE0], v4);
    sub_29EC5BE34();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();

    return;
  }

  (*(v16 + 32))(a2, v12, v15);
}

uint64_t sub_29EC531B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29EC53200()
{
  result = qword_2A188F560;
  if (!qword_2A188F560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F558, &qword_29EC5DE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F560);
  }

  return result;
}

void sub_29EC53264(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EC5C004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_29EC5C394();
  v11 = [v2 valueForProperty_];

  if (v11)
  {
    if (([v11 isNull] & 1) != 0 || (objc_msgSend(v11, sel_isUndefined) & 1) != 0 || (objc_msgSend(v11, sel_isNumber) & 1) == 0)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_29EC5C674();

      v18 = 0xD000000000000020;
      v19 = 0x800000029EC5F870;
      v12 = [v11 description];
      v13 = sub_29EC5C3A4();
      v15 = v14;

      MEMORY[0x29EDADC00](v13, v15);

      v17 = v18;
      v16 = v19;
      sub_29EC5BE84();
      sub_29EC45FB0();
      swift_allocError();
      *v9 = a1;
      v9[1] = a2;
      v9[2] = v17;
      v9[3] = v16;
      (*(v6 + 104))(v9, *MEMORY[0x29EDC5FE0], v5);

      sub_29EC5BE34();
      (*(v6 + 8))(v9, v5);
      swift_willThrow();
    }

    else
    {
      [v11 toInt32];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC534F4(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F558, &qword_29EC5DE20);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v36 - v9;
  v11 = sub_29EC5C004();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v15 = sub_29EC5C394();
  v16 = [a3 valueForProperty_];

  if (v16)
  {
    if (([v16 isNull] & 1) != 0 || objc_msgSend(v16, sel_isUndefined))
    {
    }

    else if ([v16 isArray])
    {
      sub_29EC5A214();
      if (v17 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v17 = v35)
      {
        v19 = 0;
        v47 = v17 & 0xC000000000000001;
        v40 = v17 & 0xFFFFFFFFFFFFFF8;
        v38 = (v39 + 32);
        v20 = MEMORY[0x29EDCA190];
        v37 = v16;
        v39 = i;
        while (1)
        {
          if (v47)
          {
            v21 = v17;
            v17 = MEMORY[0x29EDADE70](v19);
          }

          else
          {
            if (v19 >= *(v40 + 16))
            {
              goto LABEL_26;
            }

            v21 = v17;
            v17 = *(v17 + 8 * v19 + 32);
          }

          v22 = v17;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          sub_29EC53A20(0x7470697263736564, 0xEB000000006E6F69);
          if (v3)
          {

            return;
          }

          sub_29EC5BFF4();
          v42 = v7;
          v43 = sub_29EC53200();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
          (*v38)(boxed_opaque_existential_1, v10, v7);
          sub_29EC3CD98(&v41, &v44);

          if (v45)
          {
            sub_29EC3CD98(&v44, v46);
            sub_29EC3CD98(v46, &v44);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_29EC576F8(0, v20[2] + 1, 1, v20);
            }

            v26 = v20[2];
            v25 = v20[3];
            if (v26 >= v25 >> 1)
            {
              v20 = sub_29EC576F8((v25 > 1), v26 + 1, 1, v20);
            }

            v20[2] = v26 + 1;
            sub_29EC3CD98(&v44, &v20[5 * v26 + 4]);
            v16 = v37;
          }

          else
          {
            sub_29EC53CC4(&v44);
          }

          v17 = v21;
          ++v19;
          if (v23 == v39)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v35 = v17;
        i = sub_29EC5C724();
      }

LABEL_28:
    }

    else
    {
      *&v46[0] = 0;
      *(&v46[0] + 1) = 0xE000000000000000;
      sub_29EC5C674();

      *&v46[0] = 0xD00000000000001DLL;
      *(&v46[0] + 1) = 0x800000029EC5F7D0;
      v27 = [v16 description];
      v28 = sub_29EC5C3A4();
      v30 = v29;

      MEMORY[0x29EDADC00](v28, v30);

      v31 = v16;
      v32 = v46[0];
      sub_29EC5BE84();
      sub_29EC45FB0();
      swift_allocError();
      v33 = v47;
      *v14 = a1;
      *(v14 + 1) = v33;
      *(v14 + 1) = v32;
      v34 = v40;
      (*(v40 + 104))(v14, *MEMORY[0x29EDC5FE0], v11);

      sub_29EC5BE34();
      (*(v34 + 8))(v14, v11);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC53A20(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EC5C004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_29EC5C394();
  v11 = [v2 valueForProperty_];

  if (v11)
  {
    if (([v11 isNull] & 1) != 0 || (objc_msgSend(v11, sel_isUndefined) & 1) != 0 || !objc_msgSend(v11, sel_isString) || (v12 = objc_msgSend(v11, sel_toString)) == 0)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_29EC5C674();

      v20 = 0xD00000000000001DLL;
      v21 = 0x800000029EC5F8A0;
      v14 = [v11 description];
      v15 = sub_29EC5C3A4();
      v17 = v16;

      MEMORY[0x29EDADC00](v15, v17);

      v22 = v11;
      v18 = v20;
      v19 = v21;
      sub_29EC5BE84();
      sub_29EC45FB0();
      swift_allocError();
      *v9 = a1;
      v9[1] = a2;
      v9[2] = v18;
      v9[3] = v19;
      (*(v6 + 104))(v9, *MEMORY[0x29EDC5FE0], v5);

      sub_29EC5BE34();
      (*(v6 + 8))(v9, v5);
      swift_willThrow();
    }

    else
    {
      v13 = v12;
      sub_29EC5C3A4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EC53CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F570, &unk_29EC5DE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29EC53D2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EC5C004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_29EC5C394();
  v11 = [v2 valueForProperty_];

  if (v11)
  {
    if (([v11 isNull] & 1) != 0 || (objc_msgSend(v11, sel_isUndefined) & 1) != 0 || (objc_msgSend(v11, sel_isBoolean) & 1) == 0)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_29EC5C674();

      v18 = 0xD00000000000001ELL;
      v19 = 0x800000029EC5F8C0;
      v12 = [v11 description];
      v13 = sub_29EC5C3A4();
      v15 = v14;

      MEMORY[0x29EDADC00](v13, v15);

      v17 = v18;
      v16 = v19;
      sub_29EC5BE84();
      sub_29EC45FB0();
      swift_allocError();
      *v9 = a1;
      v9[1] = a2;
      v9[2] = v17;
      v9[3] = v16;
      (*(v6 + 104))(v9, *MEMORY[0x29EDC5FE0], v5);

      sub_29EC5BE34();
      (*(v6 + 8))(v9, v5);
      swift_willThrow();
    }

    else
    {
      [v11 toBool];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC53FA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EC5C394();
  v6 = [v2 valueForProperty_];

  if (v6)
  {
    if ([v6 isNull] || objc_msgSend(v6, sel_isUndefined))
    {
    }

    else
    {
      sub_29EC53A20(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC5407C(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EC5C394();
  v6 = [v2 valueForProperty_];

  if (v6)
  {
    if ([v6 isNull] & 1) != 0 || (objc_msgSend(v6, sel_isUndefined))
    {
    }

    else
    {
      sub_29EC53264(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29EC54168(uint64_t a1)
{
  if (qword_2A188F220 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_2A188F6C8 + 2);
  MEMORY[0x2A1C7C4A8](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_29EC2EE98((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_2A18909C0 = v2;
}

uint64_t sub_29EC54254()
{
  v0 = sub_29EC5C274();
  __swift_allocate_value_buffer(v0, qword_2A18909C8);
  __swift_project_value_buffer(v0, qword_2A18909C8);
  return sub_29EC5C264();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_29EC54334@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_29EC5C244();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x2A1C7C4A8])();
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v28[-v16];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  sub_29EC5C234();
  v18 = sub_29EC5C254();
  v29 = sub_29EC5C584();
  result = sub_29EC5C5C4();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_29EC5C224();
      _os_signpost_emit_with_name_impl(&dword_29EC2B000, v18, v29, v21, a1, "", v20, 2u);
      MEMORY[0x29EDAE780](v20, -1, -1);
LABEL_10:

      (*(v11 + 16))(v15, v17, v10);
      v22 = sub_29EC5C2B4();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_29EC5C2A4();
      (*(v11 + 8))(v17, v10);
      *(a5 + 24) = v25;
      v26 = *(type metadata accessor for Signpost() + 24);
      v27 = sub_29EC5C274();
      return (*(*(v27 - 8) + 32))(a5 + v26, a4, v27);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v30;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_29EC545A4(int a1, uint64_t a2, unint64_t a3)
{
  v36 = a2;
  v35 = a1;
  v5 = sub_29EC5C284();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EC5C244();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for Signpost() + 24);
  v15 = *v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);

  v18 = sub_29EC5C254();
  sub_29EC5C294();
  v32 = sub_29EC5C574();
  result = sub_29EC5C5C4();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = v10;
  v31 = v9;
  if ((v16 & 1) == 0)
  {
    v20 = a3;

    if (!v15)
    {
      __break(1u);
LABEL_5:

      return (*(v10 + 8))(v13, v9);
    }

    goto LABEL_10;
  }

  if (v15 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) == 0xD800)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v15 >> 16 > 0x10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = a3;

  v15 = &v37;
LABEL_10:

  sub_29EC5C2C4();

  v22 = v33;
  v21 = v34;
  v23 = (*(v33 + 88))(v8, v34);
  v24 = v30;
  if (v23 == *MEMORY[0x29EDCA4A8])
  {
    v25 = 0;
    v26 = "[Error] Interval already ended";
  }

  else
  {
    (*(v22 + 8))(v8, v21);
    v26 = "success=%{BOOL}d;%s";
    v25 = 2;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v37 = v28;
  *v27 = v25;
  *(v27 + 1) = v25;
  *(v27 + 2) = 1024;
  *(v27 + 4) = v35 & 1;
  *(v27 + 8) = 2080;
  *(v27 + 10) = sub_29EC54954(v36, v20, &v37);
  v29 = sub_29EC5C224();
  _os_signpost_emit_with_name_impl(&dword_29EC2B000, v18, v32, v29, v15, v26, v27, 0x12u);
  __swift_destroy_boxed_opaque_existential_1(v28);
  MEMORY[0x29EDAE780](v28, -1, -1);
  MEMORY[0x29EDAE780](v27, -1, -1);

  return (*(v24 + 8))(v13, v31);
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_2A188F580;
  if (!qword_2A188F580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EC54954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EC54A20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29EC2D1D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_29EC54A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29EC54B2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29EC5C6A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_29EC54B2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_29EC54B78(a1, a2);
  sub_29EC54CA8(&unk_2A2552AE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29EC54B78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EC54D94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29EC5C6A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29EC5C434();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EC54D94(v10, 0);
        result = sub_29EC5C664();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29EC54CA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29EC54E08(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29EC54D94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F578, qword_29EC5DE40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EC54E08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F578, qword_29EC5DE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_29EC54F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29EC5C274();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29EC54FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_29EC5C274();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29EC55074()
{
  result = sub_29EC5C2B4();
  if (v1 <= 0x3F)
  {
    result = sub_29EC5C274();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_29EC55108()
{
  v0 = sub_29EC5C004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29EC5B14C();
  if (!result)
  {
    sub_29EC545A4(0, 0xD000000000000020, 0x800000029EC5F920);
    *v4 = 0xD00000000000003CLL;
    v4[1] = 0x800000029EC5F950;
    (*(v1 + 104))(v4, *MEMORY[0x29EDC5FE8], v0);
    sub_29EC5BE34();
    (*(v1 + 8))(v4, v0);
    sub_29EC5BE84();
    sub_29EC45FB0();
    return swift_willThrowTypedImpl();
  }

  return result;
}

_OnDeviceStorage_JetEngine::LogMessage __swiftcall LogMessage.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A0, &unk_29EC5DE80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29EC5D6A0;
  v7[3] = MEMORY[0x29EDC99B0];
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result.components._rawValue = sub_29EC2EC8C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *v4 = v5;
  return result;
}

_OnDeviceStorage_JetEngine::LogMessage::StringInterpolation __swiftcall LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)(_OnDeviceStorage_JetEngine::LogMessage::StringInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(literalCapacity.components._rawValue, interpolationCount))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x29EDCA190];
    v2->components._rawValue = MEMORY[0x29EDCA190];
    literalCapacity.components._rawValue = sub_29EC57388(0, (literalCapacity.components._rawValue + interpolationCount) & ~((literalCapacity.components._rawValue + interpolationCount) >> 63), 0, v4);
    v3->components._rawValue = literalCapacity.components._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall LogMessage.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v11 = MEMORY[0x29EDC99B0];
    v10 = a1;
    v12 = 0u;
    v13 = 0u;

    sub_29EC2EC8C(&v10, &v12);
    v14 = 0;
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_29EC57388(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_29EC57388((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v7 = &v3[40 * v6];
    v8 = v12;
    v9 = v13;
    v7[64] = v14;
    *(v7 + 2) = v8;
    *(v7 + 3) = v9;
    *v1 = v3;
  }
}

uint64_t LogMessage.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_29EC5C804();
  MEMORY[0x29EDADFF0](v1);
  return sub_29EC5C824();
}

uint64_t sub_29EC5550C()
{
  v1 = *v0;
  sub_29EC5C804();
  MEMORY[0x29EDADFF0](v1);
  return sub_29EC5C824();
}

uint64_t sub_29EC55580()
{
  v1 = *v0;
  sub_29EC5C804();
  MEMORY[0x29EDADFF0](v1);
  return sub_29EC5C824();
}

uint64_t sub_29EC555C4@<X0>(uint64_t a1@<X8>)
{
  sub_29EC5C384();
  sub_29EC57D60();
  v2 = sub_29EC5C484();
  v4 = v3;
  swift_getObjectType();
  v7[0] = sub_29EC5C834();
  v7[1] = v5;
  MEMORY[0x29EDADC00](7876666, 0xE300000000000000);
  MEMORY[0x29EDADC00](v2, v4);

  v7[3] = MEMORY[0x29EDC99B0];
  swift_unknownObjectRelease();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = sub_29EC2EC8C(v7, a1);
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_29EC556A4(char a1)
{
  v2 = v1;
  v4 = sub_29EC5C344();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EC5C334();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29EC5BD94();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v35 - v18;
  sub_29EC4E360(v2, &v40);
  if (!v41)
  {
    sub_29EC2EBD8(&v40, &qword_2A188F2A8, &qword_29EC5D9A0);
    return 0x296C6C756E28;
  }

  sub_29EC2EBC8(&v40, v42);
  v20 = *(v2 + 32);
  LOBYTE(v40) = a1 & 1;
  BYTE1(v40) = v20;
  sub_29EC2D1D4(v42, &v40 + 8);
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (BYTE1(v40))
  {
    if (BYTE1(v40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      __swift_destroy_boxed_opaque_existential_1(&v40 + 1);
      return 0x657461766972705BLL;
    }

    else
    {
      sub_29EC2EBC8((&v40 + 8), v39);
      sub_29EC2D1D4(v39, v38);
      v23 = sub_29EC5C3F4();
      v25 = sub_29EC5611C(v23, v24);
      v27 = v26;
      sub_29EC58CB4(&qword_2A188F668, MEMORY[0x29EDB97E0]);
      sub_29EC5C324();
      sub_29EC58B6C(v25, v27);
      sub_29EC5898C(v25, v27);
      sub_29EC509AC(v25, v27);
      sub_29EC5C314();
      (*(v36 + 8))(v7, v4);
      v38[0] = sub_29EC5663C(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F5A0, &qword_29EC5DE98);
      sub_29EC58BC0(&qword_2A188F670, &qword_2A188F5A0, &qword_29EC5DE98);
      v28 = sub_29EC5C374();
      sub_29EC509AC(v25, v27);

      (*(v37 + 8))(v11, v8);
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return v28;
    }
  }

  if (swift_dynamicCast())
  {
    (*(v13 + 32))(v17, v19, v12);
    v22 = sub_29EC5BD84();
    (*(v13 + 8))(v17, v12);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(&v40 + 1);
    return v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F348, &unk_29EC5DB10);
  if (!swift_dynamicCast())
  {
LABEL_13:
    sub_29EC2D1D4(v42, v39);
    v22 = sub_29EC5C3F4();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_29EC2EBD8(&v40, &qword_2A188F660, &qword_29EC5E1F8);
    return v22;
  }

  v29 = *&v39[0];
  if (os_variant_has_internal_content())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2D0, &qword_29EC5DB60);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_29EC5D6A0;
    v31 = sub_29EC5BD64();
    *(v30 + 56) = sub_29EC58C14();
    *(v30 + 64) = sub_29EC58CB4(&qword_2A188F680, sub_29EC58C14);
    *(v30 + 32) = v31;
    v32 = sub_29EC5C3C4();

    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(&v40 + 1);
    return v32;
  }

  else
  {
    v33 = sub_29EC5BD64();
    v34 = sub_29EC55CCC(v33);

    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(&v40 + 1);
    return v34;
  }
}

uint64_t sub_29EC55CCC(void *a1)
{
  v36 = 8315;
  v37 = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2D0, &qword_29EC5DB60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29EC5D6F0;
  v3 = [a1 domain];
  v4 = sub_29EC5C3A4();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x29EDC99B0];
  *(v2 + 64) = sub_29EC2EE44();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = [a1 code];
  v8 = MEMORY[0x29EDC9C10];
  *(v2 + 96) = MEMORY[0x29EDC9BA8];
  *(v2 + 104) = v8;
  *(v2 + 72) = v7;
  sub_29EC58C60();
  v9 = sub_29EC5C5E4();
  v11 = v10;

  v38 = v9;
  v39 = v11;
  v12 = [a1 userInfo];
  v13 = sub_29EC5C364();

  v14 = *MEMORY[0x29EDB9F18];
  v15 = sub_29EC5C3A4();
  if (*(v13 + 16))
  {
    v17 = sub_29EC4D564(v15, v16);
    v19 = v18;

    if (v19)
    {
      sub_29EC2D1D4(*(v13 + 56) + 32 * v17, &v36);

      sub_29EC58C14();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v36 = 0;
      v37 = 0xE000000000000000;
      sub_29EC5C674();

      v36 = 0xD000000000000014;
      v37 = 0x800000029EC5FA10;
      v20 = (sub_29EC55CCC)();
      MEMORY[0x29EDADC00](v20);

      MEMORY[0x29EDADC00](32032, 0xE200000000000000);
      MEMORY[0x29EDADC00](v36, v37);
    }
  }

  else
  {
  }

LABEL_7:
  v21 = [a1 userInfo];
  v22 = sub_29EC5C364();

  v23 = *MEMORY[0x29EDB9EE8];
  v24 = sub_29EC5C3A4();
  if (!*(v22 + 16))
  {

    goto LABEL_19;
  }

  v26 = sub_29EC4D564(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_29EC2D1D4(*(v22 + 56) + 32 * v26, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F690, &qword_29EC5E200);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    MEMORY[0x29EDADC00](32032, 0xE200000000000000);
    return v38;
  }

  result = MEMORY[0x29EDADC00](0xD00000000000001DLL, 0x800000029EC5F9F0);
  if (!(v35 >> 62))
  {
    v30 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_22:

    MEMORY[0x29EDADC00](23840, 0xE200000000000000);
    goto LABEL_20;
  }

  result = sub_29EC5C724();
  v30 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x29EDADE70](v31);
      }

      else
      {
        v32 = *(v35 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v36 = sub_29EC55CCC(v32);
      v37 = v34;
      MEMORY[0x29EDADC00](32, 0xE100000000000000);
      MEMORY[0x29EDADC00](v36, v37);
    }

    while (v30 != v31);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC5611C(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F6A0, &qword_29EC5E208);
  if (swift_dynamicCast())
  {
    sub_29EC3CD98(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_29EC5BD54();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_29EC2EBD8(__src, &qword_2A188F6A8, &unk_29EC5E210);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_29EC5C6A4();
  }

  sub_29EC5836C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_29EC58F60(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x2A1C7C4A8](*&__src[0]);
  v10 = sub_29EC58434(sub_29EC59000);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_29EC5BDC4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_29EC58DDC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_29EC5C434();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_29EC5C464();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_29EC5C6A4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_29EC58DDC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_29EC5C444();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_29EC5BDD4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_29EC5BDD4();
    sub_29EC59068(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_29EC59068(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_29EC58B6C(*&__src[0], *(&__src[0] + 1));

  sub_29EC509AC(v32, *(&v32 + 1));
  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

uint64_t sub_29EC5663C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29EC5C334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC58CB4(&qword_2A188F698, MEMORY[0x29EDB9778]);
  v9 = sub_29EC5C4A4();
  v39 = MEMORY[0x29EDCA190];
  sub_29EC38E48(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_29EC5C494();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_29EC5D6A0;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2D0, &qword_29EC5DB60);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = MEMORY[0x29EDCA018];
        *(v16 + 64) = MEMORY[0x29EDCA030];
        *(v16 + 32) = v15;
        result = sub_29EC5C3C4();
        v39 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_29EC38E48((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = result;
        *(v20 + 40) = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_29EC5D6A0;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2D0, &qword_29EC5DB60);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = MEMORY[0x29EDCA018];
        *(v26 + 64) = MEMORY[0x29EDCA030];
        *(v26 + 32) = v25;
        result = sub_29EC5C3C4();
        v39 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_29EC38E48((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = result;
        *(v30 + 40) = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC56A20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A0, &unk_29EC5DE80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29EC5D6A0;
  sub_29EC4E360(a1, v8);
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  result = sub_29EC2EC8C(v8, v6 + 32);
  *(v6 + 64) = a2;
  *a3 = v6;
  return result;
}

uint64_t static LogMessage.identity(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A0, &unk_29EC5DE80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29EC5D6A0;
  swift_unknownObjectRetain();
  result = sub_29EC555C4(v2 + 32);
  *a1 = v2;
  return result;
}

uint64_t static LogMessage.describe(contentsOf:withRedaction:separator:)(uint64_t a1, char a2)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2B0, &unk_29EC5DB50);
  sub_29EC2ED14();
  v2 = sub_29EC5C374();

  return v2;
}

uint64_t sub_29EC56BF8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F598, &qword_29EC5DE90);
  sub_29EC57DE8();

  v5 = sub_29EC5C374();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t static LogMessage.values(of:withRedaction:)(uint64_t result, char a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x29EDCA190];
LABEL_2:
  while (2)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      __break(1u);
    }

    else
    {
      v7 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v8 = *(v5 + 8 * v3);
        v9 = *(v8 + 16);
        ++v3;
        if (!v9)
        {
          continue;
        }

        v3 = v7;
        v10 = v8 + 32;

        while (1)
        {
          sub_29EC574B4(v10, v23);
          sub_29EC4E360(v23, &v19);
          if (v20)
          {
            sub_29EC2EBC8(&v19, &v21);
            if ((a2 & 1) == 0 || !v23[32])
            {
              sub_29EC2D1D4(&v21, &v19);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_29EC57C20(0, *(v6 + 2) + 1, 1, v6);
              }

              v18 = *(v6 + 2);
              v17 = *(v6 + 3);
              if (v18 >= v17 >> 1)
              {
                v6 = sub_29EC57C20((v17 > 1), v18 + 1, 1, v6);
              }

              __swift_destroy_boxed_opaque_existential_1(&v21);
              sub_29EC57D30(v23);
              *(v6 + 2) = v18 + 1;
              v11 = &v6[32 * v18];
              v12 = &v19;
              goto LABEL_8;
            }

            __swift_destroy_boxed_opaque_existential_1(&v21);
          }

          else
          {
            sub_29EC2EBD8(&v19, &qword_2A188F2A8, &qword_29EC5D9A0);
          }

          v13 = sub_29EC556A4(1);
          v22 = MEMORY[0x29EDC99B0];
          *&v21 = v13;
          *(&v21 + 1) = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_29EC57C20(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_29EC57C20((v15 > 1), v16 + 1, 1, v6);
          }

          sub_29EC57D30(v23);
          *(v6 + 2) = v16 + 1;
          v11 = &v6[32 * v16];
          v12 = &v21;
LABEL_8:
          sub_29EC2EBC8(v12, v11 + 2);
          v10 += 40;
          if (!--v9)
          {

            goto LABEL_2;
          }
        }
      }
    }

    break;
  }

  __break(1u);
  return result;
}

__n128 sub_29EC56F14(uint64_t a1, char a2)
{
  sub_29EC4E360(a1, v11);
  v12 = 0u;
  v13 = 0u;
  sub_29EC2EC8C(v11, &v12);
  v14 = a2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_29EC57388(0, *(v4 + 2) + 1, 1, v4);
    *v2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_29EC57388((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[40 * v7];
  result = v12;
  v10 = v13;
  v8[64] = v14;
  *(v8 + 2) = result;
  *(v8 + 3) = v10;
  *v2 = v4;
  return result;
}

__n128 LogMessage.StringInterpolation.appendInterpolation(identity:)()
{
  v1 = v0;
  swift_unknownObjectRetain();
  sub_29EC5C384();
  sub_29EC57D60();
  v2 = sub_29EC5C484();
  v4 = v3;
  swift_getObjectType();
  v15.n128_u64[0] = sub_29EC5C834();
  v15.n128_u64[1] = v5;
  MEMORY[0x29EDADC00](7876666, 0xE300000000000000);
  MEMORY[0x29EDADC00](v2, v4);

  v14 = MEMORY[0x29EDC99B0];
  swift_unknownObjectRelease();
  v13 = v15;
  v15 = 0u;
  v16 = 0u;
  sub_29EC2EC8C(&v13, &v15);
  v17 = 0;
  v6 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_29EC57388(0, *(v6 + 2) + 1, 1, v6);
    *v1 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_29EC57388((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[40 * v9];
  result = v15;
  v12 = v16;
  v10[64] = v17;
  *(v10 + 2) = result;
  *(v10 + 3) = v12;
  *v1 = v6;
  return result;
}

char *sub_29EC571A4@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x29EDCA190];
    *a3 = MEMORY[0x29EDCA190];
    result = sub_29EC57388(0, &result[a2] & ~(&result[a2] >> 63), 0, v4);
    *a3 = result;
  }

  return result;
}

uint64_t LogMessage.description.getter()
{
  v1 = *v0;
  v2 = os_variant_has_internal_content() ^ 1;
  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F598, &qword_29EC5DE90);
  sub_29EC57DE8();

  v3 = sub_29EC5C374();

  return v3;
}

uint64_t sub_29EC572F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A0, &unk_29EC5DE80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29EC5D6A0;
  v7[3] = MEMORY[0x29EDC99B0];
  v7[0] = v3;
  v7[1] = v4;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result = sub_29EC2EC8C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *a2 = v5;
  return result;
}

char *sub_29EC57388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F2A0, &unk_29EC5DE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29EC574EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F5E8, &qword_29EC5E148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F5F0, &qword_29EC5E150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29EC576F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F620, &qword_29EC5E1A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F628, &qword_29EC5E1A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29EC578D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 80);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[10 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 80 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_29EC57A44(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_29EC57C20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F278, &qword_29EC5D7C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_29EC57D60()
{
  result = qword_2A188F590;
  if (!qword_2A188F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F590);
  }

  return result;
}

uint64_t sub_29EC57DB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EC556A4(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_29EC57DE8()
{
  result = qword_2A188F5A8;
  if (!qword_2A188F5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F598, &qword_29EC5DE90);
    sub_29EC58BC0(&qword_2A188F5B0, &qword_2A188F5B8, &qword_29EC5DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F5A8);
  }

  return result;
}

unint64_t sub_29EC57E88()
{
  result = qword_2A188F5C0;
  if (!qword_2A188F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F5C0);
  }

  return result;
}

unint64_t sub_29EC57EEC()
{
  result = qword_2A188F5C8;
  if (!qword_2A188F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F5C8);
  }

  return result;
}

unint64_t sub_29EC57F44()
{
  result = qword_2A188F5D0;
  if (!qword_2A188F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F5D0);
  }

  return result;
}

unint64_t sub_29EC57F9C()
{
  result = qword_2A188F5D8;
  if (!qword_2A188F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F5D8);
  }

  return result;
}

unint64_t sub_29EC57FF4()
{
  result = qword_2A188F5E0;
  if (!qword_2A188F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F5E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogMessage.ValueTreatment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogMessage.ValueTreatment(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29EC581E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_29EC58230(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EC582A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_29EC58304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_29EC5836C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_29EC58EA8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_29EC5BD14();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_29EC5BCC4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_29EC5BDB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_29EC58434(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x29EDCA608];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_29EC509AC(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_29EC509AC(v6, v5);
    *v3 = xmmword_29EC5DE70;
    sub_29EC509AC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_29EC5BCD4() && __OFSUB__(v6, sub_29EC5BD04()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_29EC5BD14();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_29EC5BCB4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_29EC588D8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_29EC509AC(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_29EC5DE70;
    sub_29EC509AC(0, 0xC000000000000000);
    sub_29EC5BDA4();
    result = sub_29EC588D8(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *sub_29EC587D8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_29EC58EA8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_29EC5907C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_29EC590F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_29EC5886C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_29EC588D8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_29EC5BCD4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_29EC5BD04();
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

  v12 = sub_29EC5BCF4();
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

uint64_t sub_29EC5898C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_29EC5C344();
      sub_29EC58CB4(&qword_2A188F668, MEMORY[0x29EDB97E0]);
      result = sub_29EC5C304();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_29EC58CFC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EC58B6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EC58BC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_29EC58C14()
{
  result = qword_2A188F678;
  if (!qword_2A188F678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A188F678);
  }

  return result;
}

unint64_t sub_29EC58C60()
{
  result = qword_2A188F688;
  if (!qword_2A188F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F688);
  }

  return result;
}

uint64_t sub_29EC58CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EC58CFC(uint64_t a1, uint64_t a2)
{
  result = sub_29EC5BCD4();
  if (!result || (result = sub_29EC5BD04(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_29EC5BCF4();
      sub_29EC5C344();
      sub_29EC58CB4(&qword_2A188F668, MEMORY[0x29EDB97E0]);
      return sub_29EC5C304();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC58DDC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29EC5C474();
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
    v5 = MEMORY[0x29EDADC30](15, a1 >> 16);
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

uint64_t sub_29EC58E58@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_29EC5C684();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC58EA8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EC58F60(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_29EC5BD14();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_29EC5BCE4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_29EC5BDB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_29EC59000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_29EC5886C(sub_29EC5917C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_29EC59068(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EC509AC(a1, a2);
  }

  return a1;
}

uint64_t sub_29EC5907C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_29EC5BD14();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_29EC5BCC4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29EC5BDB4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_29EC590F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_29EC5BD14();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_29EC5BCC4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

_OnDeviceStorage_JetEngine::LogMessageLevel_optional __swiftcall LogMessageLevel.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1;
  v5 = name._countAndFlagsBits == 0x6775626564 && name._object == 0xE500000000000000;
  if (v5 || (sub_29EC5C784() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1868983913 && object == 0xE400000000000000 || (sub_29EC5C784() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x676E696E726177 && object == 0xE700000000000000 || (sub_29EC5C784() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F727265 && object == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_29EC5C784();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t LogMessageLevel.name.getter()
{
  v1 = 0x6775626564;
  if (*v0 == 2)
  {
    v1 = 1868983913;
  }

  v2 = 0x726F727265;
  if (*v0)
  {
    v2 = 0x676E696E726177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

_OnDeviceStorage_JetEngine::LogMessageLevel_optional __swiftcall LogMessageLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_29EC59444()
{
  result = qword_2A188F6B0;
  if (!qword_2A188F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F6B0);
  }

  return result;
}

unint64_t sub_29EC5949C()
{
  result = qword_2A188F6B8;
  if (!qword_2A188F6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F6C0, &qword_29EC5E308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F6B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogMessageLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogMessageLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t OSLogger.init(subsystem:category:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_2A188F220 != -1)
  {
    a1 = swift_once();
  }

  v5 = *(off_2A188F6C8 + 2);
  MEMORY[0x2A1C7C4A8](a1);
  os_unfair_lock_lock((v5 + 24));
  sub_29EC2EE98((v5 + 16), &v7);
  os_unfair_lock_unlock((v5 + 24));

  *a2 = v7;
  return result;
}

uint64_t sub_29EC59740()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_29EC5C804();
  sub_29EC5C414();
  sub_29EC5C414();
  return sub_29EC5C824();
}

uint64_t sub_29EC597A8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_29EC5C414();

  return sub_29EC5C414();
}

uint64_t sub_29EC597F8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_29EC5C804();
  sub_29EC5C414();
  sub_29EC5C414();
  return sub_29EC5C824();
}

uint64_t sub_29EC5985C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_29EC5C784(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_29EC5C784();
    }
  }

  return result;
}

uint64_t sub_29EC59900()
{
  type metadata accessor for OSLogRegistry();
  v0 = swift_allocObject();
  v1 = sub_29EC2E584(MEMORY[0x29EDCA190]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A188F6E8, &unk_29EC5E568);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_2A188F6C8 = v0;
  return result;
}

id sub_29EC59978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = *(*a1 + 16);

  if (v13 && (v14 = sub_29EC4D5DC(a2, a3, a4, a5), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(*(v12 + 56) + 8 * v16);
    *a6 = v17;
    return v17;
  }

  else
  {
    sub_29EC59FC4();

    v19 = sub_29EC5C5D4();
    v20 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_29EC50798(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *a1 = v22;
    *a6 = v19;
  }

  return result;
}

uint64_t sub_29EC59AB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C73398](v0, 24, 7);
}

uint64_t OSLogger.Subsystem.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_29EC59B1C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_29EC59B28@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_29EC59B34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EC5C804();
  sub_29EC5C414();
  return sub_29EC5C824();
}

uint64_t sub_29EC59B80()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_29EC5C414();
}

uint64_t sub_29EC59B88()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29EC5C804();
  sub_29EC5C414();
  return sub_29EC5C824();
}

uint64_t sub_29EC59BD0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EC5C784();
  }
}

unint64_t sub_29EC59D9C()
{
  result = qword_2A188F6D0;
  if (!qword_2A188F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F6D0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29EC59E34(uint64_t a1, int a2)
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

uint64_t sub_29EC59E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29EC59ED4(uint64_t a1, int a2)
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

uint64_t sub_29EC59F1C(uint64_t result, int a2, int a3)
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

unint64_t sub_29EC59F70()
{
  result = qword_2A188F6D8;
  if (!qword_2A188F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F6D8);
  }

  return result;
}

unint64_t sub_29EC59FC4()
{
  result = qword_2A188F6E0;
  if (!qword_2A188F6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A188F6E0);
  }

  return result;
}

id sub_29EC5A014(uint64_t a1, uint64_t a2)
{
  result = [v2 context];
  if (result)
  {
    v6 = result;
    v7 = sub_29EC5C394();
    v8 = sub_29EC5C4B4();
    v9 = [v2 invokeMethod:v7 withArguments:v8];

    if (v9)
    {
      v10 = [v6 exception];
      if (v10)
      {
        v11 = v10;
        [v6 setException_];
        v12 = v11;
        sub_29EC4E058(v12);
        v14 = v13;
        v16 = v15;
        v18 = v17;

        sub_29EC2D87C();
        swift_allocError();
        *v19 = v14;
        v19[1] = v16;
        v19[2] = v18;
        swift_willThrow();

        v6 = v9;
      }
    }

    else
    {
      sub_29EC5C674();

      MEMORY[0x29EDADC00](a1, a2);
      MEMORY[0x29EDADC00](96, 0xE100000000000000);
      v20 = sub_29EC2E6A8(MEMORY[0x29EDCA190]);
      sub_29EC2D87C();
      swift_allocError();
      *v21 = 0xD000000000000019;
      v21[1] = 0x800000029EC5FA90;
      v21[2] = v20;
      swift_willThrow();
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29EC5A214()
{
  v1 = v0;
  v2 = sub_29EC5C394();
  v3 = [v0 valueForProperty_];

  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = [v3 toUInt32];

  if (v4)
  {
    v7 = MEMORY[0x29EDCA190];
    sub_29EC5C6D4();
    v5 = 0;
    while ([v1 valueAtIndex_])
    {
      ++v5;
      sub_29EC5C6B4();
      v6 = *(v7 + 16);
      sub_29EC5C6E4();
      sub_29EC5C6F4();
      sub_29EC5C6C4();
      if (v4 == v5)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

int64_t sub_29EC5A340()
{
  if (![v0 isObject])
  {
    return MEMORY[0x29EDCA190];
  }

  result = [v0 context];
  if (result)
  {
    v2 = result;
    v3 = [result JSGlobalContextRef];

    v4 = JSObjectCopyPropertyNames(v3, [v0 JSValueRef]);
    result = JSPropertyNameArrayGetCount(v4);
    if (result < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v5 = result;
    v6 = MEMORY[0x29EDCA190];
    if (result)
    {
      v16 = MEMORY[0x29EDCA190];
      sub_29EC38E48(0, result, 0);
      v7 = 0;
      v6 = v16;
      v8 = *MEMORY[0x29EDB8ED8];
      do
      {
        result = JSPropertyNameArrayGetNameAtIndex(v4, v7);
        if (!result)
        {
          goto LABEL_16;
        }

        result = JSStringCopyCFString(v8, result);
        if (!result)
        {
          goto LABEL_17;
        }

        v9 = result;
        v10 = sub_29EC5C3A4();
        v12 = v11;

        v14 = *(v16 + 16);
        v13 = *(v16 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_29EC38E48((v13 > 1), v14 + 1, 1);
        }

        ++v7;
        *(v16 + 16) = v14 + 1;
        v15 = v16 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v5 != v7);
    }

    JSPropertyNameArrayRelease(v4);
    return v6;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t *sub_29EC5A530()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = *(v1 + 80);
  v4 = type metadata accessor for LazyPromise.State();
  (*(*(v4 - 8) + 8))(v0 + 3, v4);
  return v0;
}

uint64_t sub_29EC5A5A8()
{
  sub_29EC5A530();

  return MEMORY[0x2A1C73398](v0, 81, 7);
}

uint64_t sub_29EC5A5F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29EC5A664(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EC5A6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_29EC5A6F0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_29EC5A764(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Promise.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_29EC5A838()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Promise.State();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t sub_29EC5A8CC()
{
  sub_29EC5A838();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

unint64_t sub_29EC5A95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Promise.Observer();
  result = sub_29EC5C4D4();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      result = sub_29EC5ACE4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29EC5A9FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_29EC5AB14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
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

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
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

unint64_t sub_29EC5ACE4()
{
  result = qword_2A188F8F0[0];
  if (!qword_2A188F8F0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2A188F8F0);
  }

  return result;
}

uint64_t sub_29EC5AD48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29EC5ADB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EC5ADF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_29EC5AE40(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

id sub_29EC5AE6C(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  [v5 lock];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  v7 = v2[7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[7] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_29EC574EC(0, v7[2] + 1, 1, v7);
    v2[7] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_29EC574EC((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_29EC5B124;
  v11[5] = v6;
  v2[7] = v7;
  swift_endAccess();
  v12 = v2[5];
  if (v12)
  {
    v13 = v2[6];
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      CFRunLoopSourceSignal(v14);
      CFRunLoopWakeUp(v15);
    }
  }

  return [v5 unlock];
}

uint64_t sub_29EC5AFCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

unint64_t sub_29EC5B06C()
{
  v1 = *v0;
  sub_29EC5C674();

  MEMORY[0x29EDADC00](*(v1 + 16), *(v1 + 24));
  MEMORY[0x29EDADC00](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_29EC5B0EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC5B124()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_29EC5B14C()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];
  v2 = sub_29EC5C394();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    sub_29EC5C5F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {

    goto LABEL_15;
  }

  sub_29EC5B304();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  if ([v5 nonretainedObjectValue])
  {
    sub_29EC5C5F4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_15:
    sub_29EC50A00(&v8);
    return 0;
  }

  type metadata accessor for RunLoopWorkerThread();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29EC5B304()
{
  result = qword_2A188F978;
  if (!qword_2A188F978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A188F978);
  }

  return result;
}

uint64_t sub_29EC5B350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_29EC5B394(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EC5C2D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EC5C2F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EC5B350;
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  sub_29EC5C2E4();
  v16[1] = MEMORY[0x29EDCA190];
  sub_29EC5B704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188F988, &qword_29EC5E8D0);
  sub_29EC5B75C();
  sub_29EC5C604();
  MEMORY[0x29EDADD40](0, v13, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

void sub_29EC5B604(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1107296256;
  v7[2] = sub_29EC5B350;
  v7[3] = &block_descriptor_2;
  v4 = _Block_copy(v7);
  v5 = objc_opt_self();

  v6 = [v5 blockOperationWithBlock_];
  _Block_release(v4);

  [v3 addOperation_];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29EC5B704()
{
  result = qword_2A188F980;
  if (!qword_2A188F980)
  {
    sub_29EC5C2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188F980);
  }

  return result;
}

unint64_t sub_29EC5B75C()
{
  result = qword_2A188F990[0];
  if (!qword_2A188F990[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A188F988, &qword_29EC5E8D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A188F990);
  }

  return result;
}

unint64_t sub_29EC5B7C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_29EC5ACE4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EC5B840(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_29EC5B958(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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