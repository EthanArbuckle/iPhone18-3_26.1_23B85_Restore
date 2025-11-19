BOOL sub_1BF92BA24(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1BF9B4558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770]);
  v30 = a2;
  v11 = sub_1BF9B4A48();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1BF92E600(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_1BF932264(&qword_1EDBF3F68, 255, MEMORY[0x1E6969770]);
    v17 = sub_1BF9B4A88();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_1BF92BCF4(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1BF9B57A8();
  v6 = a2[14];
  __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
  v7 = *(v6 + 32);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  v8 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1BF9B4A58();
  v9 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v9);
  v10 = sub_1BF9B57E8();
  v11 = -1 << *(v4 + 32);
  v12 = v10 & ~v11;
  if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_12:
    v29 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF932458(a2, __src);
    v38[0] = *v32;
    sub_1BF92E894(__src, v12, isUniquelyReferenced_nonNull_native);
    *v32 = v38[0];
    memcpy(a1, a2, 0x78uLL);
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    sub_1BF932458(*(v4 + 48) + 120 * v12, __src);
    v14 = v36;
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v16 = (*(v15 + 40))(v14, v15);
    v18 = v17;
    v19 = a2[13];
    v20 = a2[14];
    __swift_project_boxed_opaque_existential_1(a2 + 10, v19);
    if (v16 == (*(v20 + 40))(v19, v20) && v18 == v21)
    {
      break;
    }

    v23 = sub_1BF9B56D8();

    if (v23)
    {
      goto LABEL_10;
    }

    sub_1BF9324B4(__src);
LABEL_11:
    v12 = (v12 + 1) & v13;
    if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_10:
  v24 = __src[8];
  v25 = a2[3];
  v26 = __swift_project_boxed_opaque_existential_1(a2, v25);
  v38[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1Tm, v26, v25);
  v28 = v24(v38);
  __swift_destroy_boxed_opaque_existential_1(v38);
  sub_1BF9324B4(__src);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1BF9324B4(a2);
  sub_1BF932458(*(v4 + 48) + 120 * v12, a1);
  return 0;
}

void sub_1BF92BFD4()
{
  OUTLINED_FUNCTION_32_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF9B57E8();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_21_8();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (sub_1BF9B56D8() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;

      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;

  sub_1BF92EB9C(v4, v2, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v20;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_31_6();
}

uint64_t sub_1BF92C104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9910, &qword_1BF9C0738);
  result = sub_1BF9B5248();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1BF95D270(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
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
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
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

uint64_t sub_1BF92C430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9908, &qword_1BF9C0730);
  result = sub_1BF9B5248();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1BF95D270(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
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
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
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

uint64_t sub_1BF92C71C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D8, &qword_1BF9C06F8);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
    if (v11)
    {
LABEL_8:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      goto LABEL_14;
    }

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
        v29 = 1 << *(v3 + 32);
        if (v29 >= 64)
        {
          sub_1BF95D270(0, (v29 + 63) >> 6, v3 + 56);
        }

        else
        {
          *v8 = -1 << v29;
        }

        v2 = v30;
        *(v3 + 16) = 0;
        goto LABEL_43;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
LABEL_14:
        v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1BF9B57A8();
        switch(v17 >> 8)
        {
          case 2u:
            v19 = 0;
            goto LABEL_20;
          case 3u:
            v19 = 1;
            goto LABEL_20;
          case 4u:
            v19 = 2;
            goto LABEL_20;
          case 5u:
            v19 = 4;
            goto LABEL_20;
          case 6u:
            v19 = 5;
LABEL_20:
            MEMORY[0x1BFB5EAC0](v19);
            goto LABEL_21;
          default:
            MEMORY[0x1BFB5EAC0](3);
            if (v17 == 2)
            {
              v28 = 0;
              goto LABEL_36;
            }

            if (v17 == 3)
            {
              v28 = 1;
LABEL_36:
              MEMORY[0x1BFB5EAC0](v28);
              goto LABEL_38;
            }

            MEMORY[0x1BFB5EAC0](2);
            sub_1BF9B4B48();

LABEL_38:
            sub_1BF9B4B48();

LABEL_21:
            result = sub_1BF9B57E8();
            v20 = -1 << *(v6 + 32);
            v21 = result & ~v20;
            v22 = v21 >> 6;
            if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) != 0)
            {
              v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v24 = 0;
              v25 = (63 - v20) >> 6;
              do
              {
                if (++v22 == v25 && (v24 & 1) != 0)
                {
                  goto LABEL_45;
                }

                v26 = v22 == v25;
                if (v22 == v25)
                {
                  v22 = 0;
                }

                v24 |= v26;
                v27 = *(v13 + 8 * v22);
              }

              while (v27 == -1);
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            }

            *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
            *(*(v6 + 48) + 2 * v23) = v17;
            ++*(v6 + 16);
            if (v11)
            {
              goto LABEL_8;
            }

            break;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {
LABEL_43:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BF92CA88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  result = sub_1BF9B5248();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:
    v36 = v6;

    *v2 = v36;
    return result;
  }

  v37 = v2;
  v38 = v3;
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
        v39 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v6;
      sub_1BF95D270(0, (v34 + 63) >> 6, v8);
      v6 = v35;
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v39 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v19 = *v17;
    v18 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = *(v6 + 40);
    v24 = v6;
    sub_1BF9B57A8();
    DeliveryVehicle.rawValue.getter();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v6 = v24;
    v25 = -1 << *(v24 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v24 + 48) + 40 * v28;
    *v33 = v19;
    *(v33 + 8) = v18;
    *(v33 + 16) = v21;
    *(v33 + 24) = v20;
    *(v33 + 32) = v22;
    ++*(v24 + 16);
    v3 = v38;
    v11 = v39;
    if (!v39)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v13 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BF92CD5C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BF9B4558();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C8, &qword_1BF9C06E8);
  result = sub_1BF9B5248();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1BF95D270(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770]);
    result = sub_1BF9B4A48();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BF92D0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98E0, &unk_1BF9C0700);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1BF92D494(__dst, v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      memcpy(__dst, (*(v3 + 48) + 120 * (v13 | (v7 << 6))), sizeof(__dst));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      sub_1BF95D270(0, (v16 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BF92D238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C0, &qword_1BF9C06E0);
  result = sub_1BF9B5248();
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
      sub_1BF95D270(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1BF9B57A8();
    sub_1BF9B4B48();
    result = sub_1BF9B57E8();
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

void *sub_1BF92D494(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1BF9B57A8();
  v5 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
  v6 = *(v5 + 32);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  v7 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B4A58();
  v8 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v8);
  sub_1BF9B57E8();
  v9 = -1 << *(a2 + 32);
  v10 = sub_1BF9B51F8();
  *(a2 + 56 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
  result = memcpy((*(a2 + 48) + 120 * v10), a1, 0x78uLL);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BF92D5AC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    sub_1BF92C104(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1BF92ED04(&qword_1EBDE9910, &qword_1BF9C0738);
      goto LABEL_34;
    }

    sub_1BF92F5DC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1BF9B57A8();
  sub_1BF8CD2C0();
  result = sub_1BF9B57E8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE600000000000000;
      v14 = 0x656E6F685069;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0x72506E6F69736976;
          v13 = 0xE90000000000006FLL;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1684099177;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x79616C50726163;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x6863746177;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x5654656C707061;
          break;
        case 6:
          v13 = 0xE700000000000000;
          v14 = 0x646F70656D6F68;
          break;
        case 7:
          v13 = 0xE300000000000000;
          v14 = 6513005;
          break;
        case 8:
          v13 = 0xE300000000000000;
          v14 = 6582128;
          break;
        default:
          break;
      }

      v15 = 0xE600000000000000;
      v16 = 0x656E6F685069;
      switch(v6)
      {
        case 1:
          v16 = 0x72506E6F69736976;
          v15 = 0xE90000000000006FLL;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1684099177;
          break;
        case 3:
          v15 = 0xE700000000000000;
          v16 = 0x79616C50726163;
          break;
        case 4:
          v15 = 0xE500000000000000;
          v16 = 0x6863746177;
          break;
        case 5:
          v15 = 0xE700000000000000;
          v16 = 0x5654656C707061;
          break;
        case 6:
          v15 = 0xE700000000000000;
          v16 = 0x646F70656D6F68;
          break;
        case 7:
          v15 = 0xE300000000000000;
          v16 = 6513005;
          break;
        case 8:
          v15 = 0xE300000000000000;
          v16 = 6582128;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_37;
      }

      v18 = sub_1BF9B56D8();

      if (v18)
      {
        goto LABEL_38;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_34:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_37:

LABEL_38:
  result = sub_1BF9B5748();
  __break(1u);
  return result;
}

uint64_t sub_1BF92D900(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1BF92C430(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1BF92ED04(&qword_1EBDE9908, &qword_1BF9C0730);
      goto LABEL_28;
    }

    sub_1BF92F8D8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1BF9B57A8();
  sub_1BF8CD538(v23, v6);
  result = sub_1BF9B57E8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE300000000000000;
      v14 = 5459817;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x534F63616DLL;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1397716596;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x534F6863746177;
          break;
        case 4:
          v13 = 0xE800000000000000;
          v14 = 0x534F6E6F69736976;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v15 = 0xE300000000000000;
      v16 = 5459817;
      switch(v6)
      {
        case 1:
          v15 = 0xE500000000000000;
          v16 = 0x534F63616DLL;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1397716596;
          break;
        case 3:
          v15 = 0xE700000000000000;
          v16 = 0x534F6863746177;
          break;
        case 4:
          v15 = 0xE800000000000000;
          v16 = 0x534F6E6F69736976;
          break;
        case 5:
          v15 = 0xE700000000000000;
          v16 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_31;
      }

      v18 = sub_1BF9B56D8();

      if (v18)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1BF9B5748();
  __break(1u);
  return result;
}

uint64_t sub_1BF92DBD4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92C71C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1BF92EE34();
        goto LABEL_55;
      }

      sub_1BF92FB94(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_1BF9B57A8();
    InvocationType.hash(into:)();
    result = sub_1BF9B57E8();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      if (v6)
      {
        v13 = 0x6E61747369737361;
      }

      else
      {
        v13 = 1919251317;
      }

      v29 = v13;
      v14 = 0xE400000000000000;
      if (v6)
      {
        v14 = 0xE900000000000074;
      }

      v30 = v14;
      if ((v6 >> 8))
      {
        v15 = 0x6465707974;
      }

      else
      {
        v15 = 0x6563696F76;
      }

      while (1)
      {
        v16 = *(*(v9 + 48) + 2 * a2);
        switch(v16 >> 8)
        {
          case 2u:
            if ((v6 & 0xFF00) == 0x200)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 3u:
            if ((v6 & 0xFF00) == 0x300)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 4u:
            if ((v6 & 0xFF00) == 0x400)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 5u:
            if ((v6 & 0xFF00) == 0x500)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          case 6u:
            if ((v6 & 0xFF00) == 0x600)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          default:
            if (BYTE1(v6) - 2 < 5)
            {
              goto LABEL_54;
            }

            if (*(*(v9 + 48) + 2 * a2) == 2)
            {
              if (v6 != 2)
              {
                goto LABEL_54;
              }
            }

            else if (*(*(v9 + 48) + 2 * a2) == 3)
            {
              if (v6 != 3)
              {
                goto LABEL_54;
              }
            }

            else
            {
              if ((v6 & 0xFE) == 2)
              {
                goto LABEL_54;
              }

              v28 = v15;
              if (v16)
              {
                v17 = 0x6E61747369737361;
              }

              else
              {
                v17 = 1919251317;
              }

              if (v16)
              {
                v18 = 0xE900000000000074;
              }

              else
              {
                v18 = 0xE400000000000000;
              }

              if (v17 == v29 && v18 == v30)
              {

                v15 = v28;
              }

              else
              {
                v27 = sub_1BF9B56D8();

                v15 = v28;
                if ((v27 & 1) == 0)
                {
                  goto LABEL_54;
                }
              }
            }

            if ((v16 >> 8))
            {
              v20 = 0x6465707974;
            }

            else
            {
              v20 = 0x6563696F76;
            }

            if (v20 == v15)
            {
              goto LABEL_58;
            }

            v21 = v15;
            v22 = sub_1BF9B56D8();
            result = swift_bridgeObjectRelease_n();
            v15 = v21;
            if (v22)
            {
              goto LABEL_59;
            }

LABEL_54:
            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_55;
            }

            break;
        }
      }
    }
  }

LABEL_55:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 2 * a2) = v6;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_58:
    swift_bridgeObjectRelease_n();
LABEL_59:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
  }

  return result;
}

uint64_t sub_1BF92DF64(uint64_t result, unint64_t a2, char a3)
{
  v50 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92CA88(v7 + 1);
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      sub_1BF92FED0(v7 + 1);
LABEL_8:
      v46 = v3;
      v9 = *v3;
      v10 = *(*v3 + 40);
      result = sub_1BF8C0DC8();
      v47 = v9;
      v48 = ~(-1 << *(v9 + 32));
      v49 = v9 + 56;
      while (1)
      {
        a2 = result & v48;
        if (((*(v49 + (((result & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v48)) & 1) == 0)
        {
          break;
        }

        v11 = *(v47 + 48) + 40 * a2;
        v4 = *v11;
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v5 = *(v11 + 24);
        v14 = *(v11 + 32);
        v52 = v13;
        v53 = v12;
        v51 = *(v11 + 32);
        if (v14 == 2)
        {
          if (v13 | v12 | v4 | v5)
          {
            v17 = v13 | v12 | v5;
            if (v4 == 1 && v17 == 0)
            {
              sub_1BF8C0D00(1, 0, 0, 0, 2);
              v15 = 0xD000000000000010;
              v16 = 0x80000001BF9CBC20;
            }

            else if (v4 == 2 && v17 == 0)
            {
              sub_1BF8C0D00(2, 0, 0, 0, 2);
              v15 = 0x696669746F4E736FLL;
              v16 = 0xEE006E6F69746163;
            }

            else if (v4 == 3 && v17 == 0)
            {
              sub_1BF8C0D00(3, 0, 0, 0, 2);
              v16 = 0xE800000000000000;
              v15 = 0x706C654869726973;
            }

            else if (v4 == 4 && v17 == 0)
            {
              sub_1BF8C0D00(4, 0, 0, 0, 2);
              v15 = 0xD000000000000014;
              v16 = 0x80000001BF9CBC00;
            }

            else
            {
              sub_1BF8C0D00(5, 0, 0, 0, 2);
              v15 = 0xD000000000000010;
              v16 = 0x80000001BF9CBBE0;
            }
          }

          else
          {
            sub_1BF8C0D00(0, 0, 0, 0, 2);
            v15 = 0xD000000000000010;
            v16 = 0x80000001BF9CBC40;
          }
        }

        else if (v14 == 1)
        {
          sub_1BF8C0D00(v4, v12, v13, v5, 1);
          if (v4)
          {
            if (v4 == 1)
            {
              v15 = 0x746E694869726973;
              v16 = 0xEF6E656B6F705373;
            }

            else
            {
              v16 = 0xE700000000000000;
              v15 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v15 = 0x746E694869726973;
            v16 = 0xE900000000000073;
          }
        }

        else
        {
          sub_1BF8C0D00(v4, v12, v13, v5, 0);
          MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
          MEMORY[0x1BFB5DE90](v4, v12);
          if (v5)
          {
            MEMORY[0x1BFB5DE90](v13, v5);
            v23 = 95;
            v22 = 0xE100000000000000;
          }

          else
          {
            v23 = 0;
            v22 = 0xE000000000000000;
          }

          MEMORY[0x1BFB5DE90](v23, v22);

          v15 = 0x7070416E69;
          v16 = 0xE500000000000000;
        }

        v24 = *v50;
        v25 = *(v50 + 16);
        v26 = *(v50 + 24);
        if (*(v50 + 32))
        {
          if (*(v50 + 32) == 1)
          {
            v27 = *v50;
            if (*v50)
            {
              if (v27 == 1)
              {
                v28 = 0x746E694869726973;
              }

              else
              {
                v28 = 0x6E776F6E6B6E75;
              }

              if (v27 == 1)
              {
                v29 = 0xEF6E656B6F705373;
              }

              else
              {
                v29 = 0xE700000000000000;
              }
            }

            else
            {
              v28 = 0x746E694869726973;
              v29 = 0xE900000000000073;
            }
          }

          else
          {
            v32 = *(v50 + 8);
            if (v26 | v25 | v24 | v32)
            {
              v33 = v26 | v25 | v32;
              if (v24 != 1 || (v28 = 0xD000000000000010, v29 = 0x80000001BF9CBC20, v33))
              {
                if (v24 != 2 || (v28 = 0x696669746F4E736FLL, v29 = 0xEE006E6F69746163, v33))
                {
                  if (v24 != 3 || v33)
                  {
                    v36 = v33 == 0;
                    v37 = v24 == 4;
                    v38 = !v37 || !v36;
                    if (v37 && v36)
                    {
                      v28 = 0xD000000000000014;
                    }

                    else
                    {
                      v28 = 0xD000000000000010;
                    }

                    v39 = "actionWillExecute";
                    if (!v38)
                    {
                      v39 = "siriAutoComplete";
                    }

                    v29 = v39 | 0x8000000000000000;
                  }

                  else
                  {
                    v29 = 0xE800000000000000;
                    v28 = 0x706C654869726973;
                  }
                }
              }
            }

            else
            {
              v28 = 0xD000000000000010;
              v29 = 0x80000001BF9CBC40;
            }
          }
        }

        else
        {
          v30 = *(v50 + 8);
          MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
          MEMORY[0x1BFB5DE90](v24, v30);
          if (v26)
          {
            MEMORY[0x1BFB5DE90](v25, v26);
            v26 = 95;
            v31 = 0xE100000000000000;
          }

          else
          {
            v31 = 0xE000000000000000;
          }

          MEMORY[0x1BFB5DE90](v26, v31);

          v28 = 0x7070416E69;
          v29 = 0xE500000000000000;
        }

        if (v15 == v28 && v16 == v29)
        {
          goto LABEL_83;
        }

        v35 = sub_1BF9B56D8();
        sub_1BF8C0CB8(v4, v53, v52, v5, v51);

        if (v35)
        {
          goto LABEL_84;
        }

        result = a2 + 1;
      }

      v3 = v46;
      goto LABEL_80;
    }

    result = sub_1BF92EF74();
  }

LABEL_80:
  v40 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v41 = *(v40 + 48) + 40 * a2;
  v42 = *(v50 + 16);
  *v41 = *v50;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(v50 + 32);
  v43 = *(v40 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_83:
    sub_1BF8C0CB8(v4, v53, v52, v5, v51);

LABEL_84:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v45;
  }

  return result;
}

uint64_t sub_1BF92E600(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1BF9B4558();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92CD5C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1BF93016C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770]);
      v15 = sub_1BF9B4A48();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1BF932264(&qword_1EDBF3F68, 255, MEMORY[0x1E6969770]);
        v17 = sub_1BF9B4A88();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1BF92F0E0();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1BF92E894(void *__src, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF92D0B8(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1BF92F314();
        goto LABEL_19;
      }

      sub_1BF930488(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1BF9B57A8();
    v10 = __src[14];
    __swift_project_boxed_opaque_existential_1(__src + 10, __src[13]);
    v11 = *(v10 + 32);
    sub_1BF9B4A58();
    sub_1BF9B57A8();
    v12 = __src[7];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    sub_1BF9B4A58();
    v13 = sub_1BF9B57E8();
    MEMORY[0x1BFB5EAC0](v13);
    v14 = sub_1BF9B57E8();
    v15 = -1 << *(v8 + 32);
    a2 = v14 & ~v15;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      while (1)
      {
        sub_1BF932458(*(v8 + 48) + 120 * a2, v38);
        v17 = v41;
        v18 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v19 = (*(v18 + 40))(v17, v18);
        v21 = v20;
        v22 = __src[13];
        v23 = __src[14];
        __swift_project_boxed_opaque_existential_1(__src + 10, v22);
        if (v19 == (*(v23 + 40))(v22, v23) && v21 == v24)
        {
          break;
        }

        v26 = sub_1BF9B56D8();

        if (v26)
        {
          goto LABEL_17;
        }

        sub_1BF9324B4(v38);
LABEL_18:
        a2 = (a2 + 1) & v16;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_17:
      v27 = v39;
      v28 = __src[3];
      v29 = __swift_project_boxed_opaque_existential_1(__src, v28);
      v43[3] = v28;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v43);
      (*(*(v28 - 8) + 16))(boxed_opaque_existential_1Tm, v29, v28);
      v31 = v27(v43);
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_1BF9324B4(v38);
      if (v31)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v32 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v32 + 48) + 120 * a2), __src, 0x78uLL);
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_22:
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

uint64_t sub_1BF92EB9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BF92D238(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BF9305C8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1BF9B57A8();
      sub_1BF9B4B48();
      result = sub_1BF9B57E8();
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
        if (v19 || (sub_1BF9B56D8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1BF92F484();
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
    result = sub_1BF9B5748();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1BF92ED04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BF9B5238();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1BF92EE34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D8, &qword_1BF9C06F8);
  v2 = *v0;
  v3 = sub_1BF9B5238();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void *sub_1BF92EF74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  v2 = *v0;
  v3 = sub_1BF9B5238();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + 8 * v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        result = sub_1BF8C0D00(v19, v20, v21, v22, v24);
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

void *sub_1BF92F0E0()
{
  v1 = v0;
  v2 = sub_1BF9B4558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C8, &qword_1BF9C06E8);
  v7 = *v0;
  v8 = sub_1BF9B5238();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_1BF92F314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98E0, &unk_1BF9C0700);
  v2 = *v0;
  v3 = sub_1BF9B5238();
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
        v17 = 120 * (v14 | (v8 << 6));
        sub_1BF932458(*(v2 + 48) + v17, __src);
        result = memcpy((*(v4 + 48) + v17), __src, 0x78uLL);
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

void *sub_1BF92F484()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C0, &qword_1BF9C06E0);
  v2 = *v0;
  v3 = sub_1BF9B5238();
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

uint64_t sub_1BF92F5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9910, &qword_1BF9C0738);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1BF9B57A8();
        sub_1BF9B4B48();

        result = sub_1BF9B57E8();
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
        *(*(v6 + 48) + v21) = v16;
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

          v2 = v26;
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

uint64_t sub_1BF92F8D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9908, &qword_1BF9C0730);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1BF9B57A8();
        sub_1BF9B4B48();

        result = sub_1BF9B57E8();
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
        *(*(v6 + 48) + v21) = v16;
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

          v2 = v26;
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

uint64_t sub_1BF92FB94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D8, &qword_1BF9C06F8);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
LABEL_8:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      goto LABEL_14;
    }

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

        v2 = v28;
        goto LABEL_41;
      }

      v15 = *(v3 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
LABEL_14:
        v16 = *(*(v3 + 48) + 2 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1BF9B57A8();
        switch(v16 >> 8)
        {
          case 2u:
            v18 = 0;
            goto LABEL_20;
          case 3u:
            v18 = 1;
            goto LABEL_20;
          case 4u:
            v18 = 2;
            goto LABEL_20;
          case 5u:
            v18 = 4;
            goto LABEL_20;
          case 6u:
            v18 = 5;
LABEL_20:
            MEMORY[0x1BFB5EAC0](v18);
            goto LABEL_21;
          default:
            MEMORY[0x1BFB5EAC0](3);
            if (v16 == 2)
            {
              v27 = 0;
              goto LABEL_36;
            }

            if (v16 == 3)
            {
              v27 = 1;
LABEL_36:
              MEMORY[0x1BFB5EAC0](v27);
              goto LABEL_38;
            }

            MEMORY[0x1BFB5EAC0](2);
            sub_1BF9B4B48();

LABEL_38:
            sub_1BF9B4B48();

LABEL_21:
            result = sub_1BF9B57E8();
            v19 = -1 << *(v6 + 32);
            v20 = result & ~v19;
            v21 = v20 >> 6;
            if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) != 0)
            {
              v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v23 = 0;
              v24 = (63 - v19) >> 6;
              do
              {
                if (++v21 == v24 && (v23 & 1) != 0)
                {
                  goto LABEL_43;
                }

                v25 = v21 == v24;
                if (v21 == v24)
                {
                  v21 = 0;
                }

                v23 |= v25;
                v26 = *(v12 + 8 * v21);
              }

              while (v26 == -1);
              v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            }

            *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            *(*(v6 + 48) + 2 * v22) = v16;
            ++*(v6 + 16);
            if (v10)
            {
              goto LABEL_8;
            }

            break;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {

LABEL_41:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BF92FED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
        v36 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v6 + 40);
        sub_1BF9B57A8();
        v35 = v18;
        sub_1BF8C0D00(v18, v19, v20, v21, v22);
        DeliveryVehicle.rawValue.getter();
        sub_1BF9B4B48();

        result = sub_1BF9B57E8();
        v24 = -1 << *(v6 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = *(v6 + 48) + 40 * v27;
        v3 = v34;
        *v32 = v35;
        *(v32 + 8) = v19;
        *(v32 + 16) = v20;
        *(v32 + 24) = v21;
        *(v32 + 32) = v22;
        ++*(v6 + 16);
        v11 = v36;
        if (!v36)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v13 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
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

          v2 = v33;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v36 = (v16 - 1) & v16;
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

uint64_t sub_1BF93016C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BF9B4558();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C8, &qword_1BF9C06E8);
  v10 = sub_1BF9B5248();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770]);
        result = sub_1BF9B4A48();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1BF930488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98E0, &unk_1BF9C0700);
  result = sub_1BF9B5248();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1BF92D494(v15, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      sub_1BF932458(*(v3 + 48) + 120 * (v12 | (v7 << 6)), v15);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BF9305C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98C0, &qword_1BF9C06E0);
  result = sub_1BF9B5248();
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
        sub_1BF9B57A8();

        sub_1BF9B4B48();
        result = sub_1BF9B57E8();
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

uint64_t sub_1BF9307FC(unint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1BF95D270(0, v6, v8);
    v9 = sub_1BF930A54(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1BF9309C4(v12, v6, a2, a1);

    MEMORY[0x1BFB5F320](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *sub_1BF9309C4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1BF930A54(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1BF930A54(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v53 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_44:
    v28 = 0;
    v29 = v5 + 56;
    v30 = 1 << *(v5 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v55 = v31 & *(v5 + 56);
    v57 = 0;
    v32 = (v30 + 63) >> 6;
    v59 = v4 + 56;
LABEL_48:
    while (v55)
    {
      v33 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
LABEL_55:
      v52 = v33 | (v28 << 6);
      v36 = *(*(v5 + 48) + v52);
      v37 = *(v4 + 40);
      sub_1BF9B57A8();
      sub_1BF9B4B48();

      result = sub_1BF9B57E8();
      v38 = -1 << *(v4 + 32);
      v39 = result & ~v38;
      if ((*(v59 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        v41 = v36;
        while (1)
        {
          v42 = 0xE600000000000000;
          v43 = 0x656E6F685069;
          switch(*(*(a4 + 48) + v39))
          {
            case 1:
              v43 = 0x72506E6F69736976;
              v42 = 0xE90000000000006FLL;
              break;
            case 2:
              v42 = 0xE400000000000000;
              v43 = 1684099177;
              break;
            case 3:
              v42 = 0xE700000000000000;
              v43 = 0x79616C50726163;
              break;
            case 4:
              v42 = 0xE500000000000000;
              v43 = 0x6863746177;
              break;
            case 5:
              v42 = 0xE700000000000000;
              v43 = 0x5654656C707061;
              break;
            case 6:
              v42 = 0xE700000000000000;
              v43 = 0x646F70656D6F68;
              break;
            case 7:
              v42 = 0xE300000000000000;
              v43 = 6513005;
              break;
            case 8:
              v42 = 0xE300000000000000;
              v43 = 6582128;
              break;
            default:
              break;
          }

          v44 = 0xE600000000000000;
          v45 = 0x656E6F685069;
          switch(v41)
          {
            case 1:
              v45 = 0x72506E6F69736976;
              v44 = 0xE90000000000006FLL;
              break;
            case 2:
              v44 = 0xE400000000000000;
              v45 = 1684099177;
              break;
            case 3:
              v44 = 0xE700000000000000;
              v45 = 0x79616C50726163;
              break;
            case 4:
              v44 = 0xE500000000000000;
              v45 = 0x6863746177;
              break;
            case 5:
              v44 = 0xE700000000000000;
              v45 = 0x5654656C707061;
              break;
            case 6:
              v44 = 0xE700000000000000;
              v45 = 0x646F70656D6F68;
              break;
            case 7:
              v44 = 0xE300000000000000;
              v45 = 6513005;
              break;
            case 8:
              v44 = 0xE300000000000000;
              v45 = 6582128;
              break;
            default:
              break;
          }

          if (v43 == v45 && v42 == v44)
          {
            break;
          }

          v47 = sub_1BF9B56D8();

          if (v47)
          {
            goto LABEL_83;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v59 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            v5 = a3;
            v4 = a4;
            goto LABEL_48;
          }
        }

LABEL_83:
        *(v53 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        v48 = __OFADD__(v57++, 1);
        v5 = a3;
        v4 = a4;
        if (v48)
        {
          __break(1u);
LABEL_86:
          v6 = v57;
          goto LABEL_87;
        }
      }
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
        goto LABEL_86;
      }

      v35 = *(v29 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v55 = (v35 - 1) & v35;
        goto LABEL_55;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v51 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v54 = v9 & *(a4 + 56);
    v49 = (v8 + 63) >> 6;
    v58 = a3 + 56;
LABEL_6:
    while (v54)
    {
      v10 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v11 = v10 | (v7 << 6);
      v12 = a4;
LABEL_13:
      v15 = *(*(v12 + 48) + v11);
      v16 = *(v5 + 40);
      sub_1BF9B57A8();
      sub_1BF9B4B48();

      result = sub_1BF9B57E8();
      v17 = -1 << *(v5 + 32);
      v4 = result & ~v17;
      v18 = v4 >> 6;
      v19 = 1 << v4;
      if (((1 << v4) & *(v58 + 8 * (v4 >> 6))) != 0)
      {
        v56 = v6;
        v20 = ~v17;
        v21 = v15;
        while (1)
        {
          v22 = 0xE600000000000000;
          v23 = 0x656E6F685069;
          switch(*(*(v5 + 48) + v4))
          {
            case 1:
              v23 = 0x72506E6F69736976;
              v22 = 0xE90000000000006FLL;
              break;
            case 2:
              v22 = 0xE400000000000000;
              v23 = 1684099177;
              break;
            case 3:
              v22 = 0xE700000000000000;
              v23 = 0x79616C50726163;
              break;
            case 4:
              v22 = 0xE500000000000000;
              v23 = 0x6863746177;
              break;
            case 5:
              v22 = 0xE700000000000000;
              v23 = 0x5654656C707061;
              break;
            case 6:
              v22 = 0xE700000000000000;
              v23 = 0x646F70656D6F68;
              break;
            case 7:
              v22 = 0xE300000000000000;
              v23 = 6513005;
              break;
            case 8:
              v22 = 0xE300000000000000;
              v23 = 6582128;
              break;
            default:
              break;
          }

          v24 = 0xE600000000000000;
          v25 = 0x656E6F685069;
          switch(v21)
          {
            case 1:
              v25 = 0x72506E6F69736976;
              v24 = 0xE90000000000006FLL;
              break;
            case 2:
              v24 = 0xE400000000000000;
              v25 = 1684099177;
              break;
            case 3:
              v24 = 0xE700000000000000;
              v25 = 0x79616C50726163;
              break;
            case 4:
              v24 = 0xE500000000000000;
              v25 = 0x6863746177;
              break;
            case 5:
              v24 = 0xE700000000000000;
              v25 = 0x5654656C707061;
              break;
            case 6:
              v24 = 0xE700000000000000;
              v25 = 0x646F70656D6F68;
              break;
            case 7:
              v24 = 0xE300000000000000;
              v25 = 6513005;
              break;
            case 8:
              v24 = 0xE300000000000000;
              v25 = 6582128;
              break;
            default:
              break;
          }

          if (v23 == v25 && v22 == v24)
          {
            break;
          }

          v27 = sub_1BF9B56D8();

          if (v27)
          {
            goto LABEL_41;
          }

          v4 = (v4 + 1) & v20;
          v18 = v4 >> 6;
          v5 = a3;
          v19 = 1 << v4;
          if ((*(v58 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
          {
            v6 = v56;
            goto LABEL_6;
          }
        }

LABEL_41:
        v53[v18] |= v19;
        v6 = v56 + 1;
        v5 = a3;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    v13 = v7;
    v12 = a4;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v49)
      {
LABEL_87:

        return sub_1BF931360(v53, a2, v6, v5);
      }

      v14 = *(v51 + 8 * v7);
      ++v13;
      if (v14)
      {
        v54 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF931360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9910, &qword_1BF9C0738);
  result = sub_1BF9B5258();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    result = sub_1BF9B57E8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void (*sub_1BF931640(void *a1, char a2))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1BF931918(v5);
  v5[9] = sub_1BF931730((v5 + 4), a2);
  return sub_1BF9316D0;
}

void sub_1BF9316D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_1BF931730(uint64_t a1, char a2))(unint64_t result)
{
  v3 = v2;
  *(a1 + 8) = v2;
  *(a1 + 24) = a2;
  v6 = *v2;
  v7 = sub_1BF9B2AE4(a2);
  *(a1 + 25) = v8 & 1;
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F8, &qword_1BF9C0720);
  if (sub_1BF9B53A8())
  {
    v11 = *v3;
    v12 = sub_1BF9B2AE4(a2);
    if ((v10 & 1) == (v13 & 1))
    {
      v9 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v9;
  if (v10)
  {
    v14 = *(*(*v3 + 56) + 8 * v9);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1BF931848;
}

unint64_t sub_1BF931848(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(*(v3 + 56) + 8 * *(result + 16)) = v1;
    }

    else
    {
      v6 = *(result + 24);
      v7 = *(result + 16);

      return sub_1BF964038(v7, v6, v1, v3);
    }
  }

  else if (*(result + 25))
  {
    v4 = *(result + 16);
    v5 = **(result + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F0, &unk_1BF9C0710);
    sub_1BF932578();

    return sub_1BF9B53C8();
  }

  return result;
}

uint64_t (*sub_1BF931918(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BF931940;
}

uint64_t sub_1BF93194C(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_21_8();
  result = sub_1BF9B51D8();
  v4 = *(a1 + 36);
  return result;
}

void sub_1BF931988()
{
  OUTLINED_FUNCTION_65_0();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  (*(v9 + 16))(v15, v2, v7);
  sub_1BF931A94(v3, v15, v1, v0, v16, v7, v5);
  (*(v9 + 8))(v2, v7);
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF931A94(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a6);
  *(a5 + 56) = a1;
  sub_1BF8D2004(v20, a5 + 64);
  *(a5 + 104) = a3;
  sub_1BF8D2004(a4, a5 + 112);
  if (qword_1EDBF1D10 != -1)
  {
    swift_once();
  }

  *(a5 + 152) = byte_1EDC03418;
  *(a5 + 160) = unk_1EDC03420;
  v14 = type metadata accessor for OSFeatureFlagProvider();
  v15 = swift_allocObject();
  v15[2] = sub_1BF905224;
  v15[3] = 0;
  v15[4] = sub_1BF905228;
  v15[5] = 0;
  v18 = v14;
  v19 = &protocol witness table for OSFeatureFlagProvider;
  *&v17 = v15;
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1BF8C2C9C(&v17, a5 + 16);
  return a5;
}

uint64_t sub_1BF931BF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = a6;
  return a4;
}

uint64_t sub_1BF931C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98B8, &qword_1BF9C0298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF931C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_1BF911DC8(a4, a5);
  }
}

uint64_t sub_1BF931CD4(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF30A8, a2, type metadata accessor for NoOpPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931D50(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&qword_1EDBF2F20, a2, type metadata accessor for UnionPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931DCC(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF2C08, a2, type metadata accessor for LocalePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931E48(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF2B00, a2, type metadata accessor for NetworkPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931EC4(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(qword_1EDBF2D78, a2, type metadata accessor for DevicePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931F40(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(&unk_1EDBF1D00, a2, type metadata accessor for InvocationTypePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF931FBC(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(qword_1EDBF1C20, a2, type metadata accessor for DeliveryVehiclePrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF932038(uint64_t a1, uint64_t a2)
{
  result = sub_1BF932264(qword_1EDBF0D88, a2, type metadata accessor for ShouldBeEnabledFromConfigPrerequisite);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF932264(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1BF9322AC()
{
  result = qword_1EDBF32E8;
  if (!qword_1EDBF32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32E8);
  }

  return result;
}

unint64_t sub_1BF9323B0()
{
  result = qword_1EDBF3508;
  if (!qword_1EDBF3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3508);
  }

  return result;
}

unint64_t sub_1BF932404()
{
  result = qword_1EDBF32B8;
  if (!qword_1EDBF32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32B8);
  }

  return result;
}

uint64_t sub_1BF932508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF932578()
{
  result = qword_1EBDE98E8;
  if (!qword_1EBDE98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE98E8);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1BF932600()
{
  result = qword_1EDBF3940;
  if (!qword_1EDBF3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3940);
  }

  return result;
}

void OUTLINED_FUNCTION_36_4()
{

  JUMPOUT(0x1BFB5DE90);
}

uint64_t sub_1BF9326D8()
{
  OUTLINED_FUNCTION_24_6();
  if (*(v1 + 24))
  {
    sub_1BF8C192C(v1, &v17);
    v2 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_15();
    sub_1BF9363E4(v3, v4, v5);

    *v0 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_17_11();
    sub_1BF8E8118(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_12();
    sub_1BF935E2C(v10, v11, v12);

    OUTLINED_FUNCTION_17_11();
    return sub_1BF8E8118(v13, v14, v15);
  }

  return result;
}

void sub_1BF932778()
{
  OUTLINED_FUNCTION_28_6();
  if (*(v3 + 24))
  {
    sub_1BF8C2C9C(v3, v15);
    v4 = v16;
    v5 = v17;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    v7 = *(*(v4 - 8) + 64);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    sub_1BF93790C(v9, v2, v0, v1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    OUTLINED_FUNCTION_41_2(v3);
    v11 = OUTLINED_FUNCTION_88();
    sub_1BF935FF8(v11, v12, v13);

    OUTLINED_FUNCTION_41_2(v15);
  }

  OUTLINED_FUNCTION_42_4();
}

uint64_t sub_1BF9328C4()
{
  OUTLINED_FUNCTION_24_6();
  if (*(v1 + 24))
  {
    sub_1BF8DFCB8(v1, v17);
    v2 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_15();
    sub_1BF9368A4(v3, v4, v5);

    *v0 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_17_11();
    sub_1BF8E8118(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_12();
    sub_1BF9360F4(v10, v11, v12);

    OUTLINED_FUNCTION_17_11();
    return sub_1BF8E8118(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1BF932964(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1BF8C2C9C(a1, v7);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1BF936B10(v7, a2);
    *v2 = v6;
    return sub_1BF9324B4(a2);
  }

  else
  {
    OUTLINED_FUNCTION_41_2(a1);
    sub_1BF9361F0(a2, v7);
    sub_1BF9324B4(a2);
    return OUTLINED_FUNCTION_41_2(v7);
  }
}

uint64_t sub_1BF932A1C()
{
  OUTLINED_FUNCTION_24_6();
  if (*(v1 + 5))
  {
    v17 = *v1;
    v18 = v1[1];
    v19 = v1[2];
    v2 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_15();
    sub_1BF936D38(v3, v4, v5);

    *v0 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_17_11();
    sub_1BF8E8118(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_11_12();
    sub_1BF9362F0(v10, v11, v12);

    OUTLINED_FUNCTION_17_11();
    return sub_1BF8E8118(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1BF932AC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BF932B18(v4);
}

uint64_t sub_1BF932AF0()
{
  OUTLINED_FUNCTION_39_5();
  v1 = *(v0 + 112);
}

uint64_t sub_1BF932B18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t ContextContainer.storedGenerationContext.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BF932BD8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 128);
    v0 = *(v0 + 120);
  }

  else
  {
    OUTLINED_FUNCTION_1_15();
    sub_1BF936FCC(v2, v3, v4);
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  return v0;
}

void *static ContextContainer.createContext(targetOwner:suggestionEnablementState:generationContext:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = sub_1BF9B4988();
  sub_1BF932E4C(a1, &v20);
  if (v21)
  {
    sub_1BF8C2C9C(&v20, v22);
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v21 = v9;
    __swift_allocate_boxed_opaque_existential_1Tm(&v20);
    OUTLINED_FUNCTION_11(v9);
    (*(v10 + 16))();
    sub_1BF8C192C(&v20, &v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_6(isUniquelyReferenced_nonNull_native, 0x7465677261745F5FLL, v12, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_1BF8E8118(&v20, &qword_1EBDE9918, &qword_1BF9C0750);
  }

  v23 = &type metadata for SuggestionEnablementState;
  LOBYTE(v22[0]) = v7;
  sub_1BF8C192C(v22, &v20);
  swift_isUniquelyReferenced_nonNull_native();
  *&v19 = v8;
  sub_1BF9363E4(&v20, 0xD00000000000001BLL, 0x80000001BF9CC260);
  v13 = v19;
  type metadata accessor for ContextContainer();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v14[14] = v13;
  v14[15] = a3;
  v14[16] = a4;
  OUTLINED_FUNCTION_1_15();
  sub_1BF936FCC(v15, v16, v17);
  return v14;
}

uint64_t sub_1BF932E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9918, &qword_1BF9C0750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ContextContainer.__allocating_init(params:generationContext:)()
{
  OUTLINED_FUNCTION_28_6();
  v3 = v2;
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[14] = v3;
  v4[15] = v1;
  v4[16] = v0;
  return v4;
}

void *static ContextContainer.createGenerationContext(generationId:sourceOwner:invocationType:)(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v4 = *a3;
  v5 = sub_1BF9B4988();
  v6 = sub_1BF9B4518();
  v23 = v6;
  __swift_allocate_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_11(v6);
  (*(v7 + 16))();
  sub_1BF8C192C(v22, &v20);
  swift_isUniquelyReferenced_nonNull_native();
  *&v19 = v5;
  sub_1BF9363E4(&v20, 0x6172656E65675F5FLL, 0xEF64695F6E6F6974);
  v8 = v5;
  sub_1BF932E4C(a2, &v20);
  if (v21)
  {
    sub_1BF8C2C9C(&v20, v22);
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v21 = v9;
    __swift_allocate_boxed_opaque_existential_1Tm(&v20);
    OUTLINED_FUNCTION_11(v9);
    (*(v10 + 16))();
    sub_1BF8C192C(&v20, &v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_6(isUniquelyReferenced_nonNull_native, 0x656372756F735F5FLL, v12, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_1BF8E8118(&v20, &qword_1EBDE9918, &qword_1BF9C0750);
  }

  v23 = &type metadata for InvocationType;
  LOWORD(v22[0]) = v4;
  sub_1BF8C192C(v22, &v20);
  swift_isUniquelyReferenced_nonNull_native();
  *&v19 = v8;
  sub_1BF9363E4(&v20, 0xD000000000000011, 0x80000001BF9CC280);
  v13 = v19;
  type metadata accessor for ContextContainer();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v14[14] = v13;
  OUTLINED_FUNCTION_1_15();
  sub_1BF936FCC(v15, v16, v17);
  v14[15] = 0;
  v14[16] = 0;
  return v14;
}

void *ContextContainer.init(params:generationContext:)()
{
  OUTLINED_FUNCTION_28_6();
  v4 = v3;
  swift_defaultActor_initialize();
  v1[14] = v4;
  v1[15] = v2;
  v1[16] = v0;
  return v1;
}

uint64_t sub_1BF9331AC()
{
  OUTLINED_FUNCTION_39_5();
  v1 = *(v0 + 112);

  v2 = sub_1BF9B4978();

  return v2;
}

uint64_t ContextContainer.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ContextContainer.__deallocating_deinit()
{
  ContextContainer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF933314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6472696874 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BF933460(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x646E6F636573;
      break;
    case 2:
      result = 0x6472696874;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF9334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF933314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF933504(uint64_t a1)
{
  v2 = sub_1BF936500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF933540(uint64_t a1)
{
  v2 = sub_1BF936500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF93357C(uint64_t a1)
{
  v2 = sub_1BF936650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9335B8(uint64_t a1)
{
  v2 = sub_1BF936650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9335F4(uint64_t a1)
{
  v2 = sub_1BF9365FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF933630(uint64_t a1)
{
  v2 = sub_1BF9365FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF93366C(uint64_t a1)
{
  v2 = sub_1BF9365A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9336A8(uint64_t a1)
{
  v2 = sub_1BF9365A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9336E4(uint64_t a1)
{
  v2 = sub_1BF936554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF933720(uint64_t a1)
{
  v2 = sub_1BF936554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Party.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9920, &qword_1BF9C0758);
  v4 = OUTLINED_FUNCTION_1(v3);
  v54 = v5;
  v55 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v53 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9928, &qword_1BF9C0760);
  v11 = OUTLINED_FUNCTION_1(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v50 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9930, &qword_1BF9C0768);
  v18 = OUTLINED_FUNCTION_1(v17);
  v48 = v19;
  v49 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v47 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9938, &qword_1BF9C0770);
  v25 = OUTLINED_FUNCTION_1(v24);
  v45 = v26;
  v46 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9940, &qword_1BF9C0778);
  OUTLINED_FUNCTION_1(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v45 - v38;
  v40 = *v0;
  v41 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF936500();
  sub_1BF9B5898();
  switch(v40)
  {
    case 1:
      OUTLINED_FUNCTION_33_4();
      sub_1BF9365FC();
      v42 = v47;
      OUTLINED_FUNCTION_3_10();
      v44 = v48;
      v43 = v49;
      goto LABEL_6;
    case 2:
      sub_1BF9365A8();
      v42 = v50;
      OUTLINED_FUNCTION_3_10();
      v44 = v51;
      v43 = v52;
      goto LABEL_6;
    case 3:
      sub_1BF936554();
      v42 = v53;
      OUTLINED_FUNCTION_3_10();
      v44 = v54;
      v43 = v55;
LABEL_6:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      sub_1BF936650();
      sub_1BF9B5598();
      (*(v45 + 8))(v31, v46);
      break;
  }

  (*(v34 + 8))(v39, v32);
  OUTLINED_FUNCTION_37();
}

uint64_t Party.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

void Party.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v85 = v0;
  v2 = v1;
  v81 = v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9960, &qword_1BF9C0780);
  OUTLINED_FUNCTION_1(v84);
  v80 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9968, &qword_1BF9C0788);
  v10 = OUTLINED_FUNCTION_1(v9);
  v77 = v11;
  v78 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v79 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9970, &qword_1BF9C0790);
  v17 = OUTLINED_FUNCTION_1(v16);
  v75 = v18;
  v76 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9978, &qword_1BF9C0798);
  OUTLINED_FUNCTION_1(v24);
  v74 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9980, &unk_1BF9C07A0);
  OUTLINED_FUNCTION_1(v31);
  v82 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v68 - v36;
  v38 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF936500();
  v39 = v85;
  sub_1BF9B5868();
  if (v39)
  {
    goto LABEL_9;
  }

  v71 = v24;
  v72 = v30;
  v73 = v23;
  v40 = v83;
  v41 = v84;
  v85 = v2;
  v42 = v37;
  v43 = sub_1BF9B5568();
  sub_1BF8D21BC(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_8:
    v57 = v82;
    v58 = sub_1BF9B5308();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v60 = &type metadata for Party;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    v62 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11(v58);
    (*(v63 + 104))(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v42, v31);
    v2 = v85;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
    OUTLINED_FUNCTION_37();
    return;
  }

  v70 = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    sub_1BF8D21AC(v45 + 1);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    if (v49 == v51 >> 1)
    {
      v52 = v81;
      v53 = v82;
      v69 = v47;
      v54 = v47;
      v55 = v80;
      switch(v54)
      {
        case 1:
          OUTLINED_FUNCTION_33_4();
          sub_1BF9365FC();
          v64 = v73;
          OUTLINED_FUNCTION_2_14();
          swift_unknownObjectRelease();
          v66 = v75;
          v65 = v76;
          goto LABEL_18;
        case 2:
          sub_1BF9365A8();
          v64 = v79;
          OUTLINED_FUNCTION_2_14();
          swift_unknownObjectRelease();
          v66 = v77;
          v65 = v78;
LABEL_18:
          (*(v66 + 8))(v64, v65);
          goto LABEL_19;
        case 3:
          sub_1BF936554();
          v67 = v70;
          sub_1BF9B54A8();
          if (v67)
          {
            (*(v53 + 8))(v42, v31);
            swift_unknownObjectRelease();
            v2 = v85;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v55 + 8))(v40, v41);
LABEL_19:
          (*(v53 + 8))(v42, v31);
          *v52 = v69;
          __swift_destroy_boxed_opaque_existential_1(v85);
          break;
        default:
          sub_1BF936650();
          v56 = v72;
          OUTLINED_FUNCTION_2_14();
          swift_unknownObjectRelease();
          (*(v74 + 8))(v56, v71);
          goto LABEL_19;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t AppIdDetails.appId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static AppIdDetails.create(from:party:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  if (v7 == 3)
  {
    OUTLINED_FUNCTION_10();
    if (sub_1BF9B4C08())
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = 2;
    }
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
}

BOOL static AppIdDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1BF9B56D8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t AppIdDetails.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BF9B4B48();
}

uint64_t sub_1BF9342B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974726170 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF93437C(char a1)
{
  if (a1)
  {
    return 0x7974726170;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_1BF9343AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9342B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9343D4(uint64_t a1)
{
  v2 = sub_1BF936E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF934410(uint64_t a1)
{
  v2 = sub_1BF936E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppIdDetails.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9988, &qword_1BF9C07B0);
  OUTLINED_FUNCTION_1(v4);
  v15 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF936E78();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    OUTLINED_FUNCTION_33_4();
    sub_1BF936ECC();
    sub_1BF9B5638();
  }

  (*(v15 + 8))(v10, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t AppIdDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

void AppIdDetails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_39();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9990, &qword_1BF9C07B8);
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1BF936E78();
  sub_1BF9B5868();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v22 = sub_1BF9B5518();
    v24 = v23;
    OUTLINED_FUNCTION_33_4();
    sub_1BF936F20();
    sub_1BF9B5558();
    v25 = OUTLINED_FUNCTION_60();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9347F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

uint64_t GenerationContext.getGenerationId()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9998, &qword_1BF9C07C0) - 8) + 64);
  OUTLINED_FUNCTION_9();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  OUTLINED_FUNCTION_16_8(v6, *(a2 + 8));
  v10 = v9(a1);
  sub_1BF925088(0x6172656E65675F5FLL, 0xEF64695F6E6F6974, v10, &v18);

  if (v19)
  {
    v11 = sub_1BF9B4518();
    v12 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v8, v12 ^ 1u, 1, v11);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) != 1)
    {
      OUTLINED_FUNCTION_11(v11);
      v14 = *(v13 + 32);
      v15 = OUTLINED_FUNCTION_88();
      return v16(v15);
    }
  }

  else
  {
    sub_1BF8E8118(&v18, &qword_1EBDE9208, &unk_1BF9C2A50);
    v11 = sub_1BF9B4518();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  }

  sub_1BF9B4508();
  sub_1BF9B4518();
  result = __swift_getEnumTagSinglePayload(v8, 1, v11);
  if (result != 1)
  {
    return sub_1BF8E8118(v8, &qword_1EBDE9998, &qword_1BF9C07C0);
  }

  return result;
}

uint64_t GenerationContext.getInvocationType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  OUTLINED_FUNCTION_16_8(a1, *(a2 + 8));
  v5 = v4();
  sub_1BF925088(0xD000000000000011, 0x80000001BF9CC280, v5, &v9);

  if (!v10)
  {
    result = sub_1BF8E8118(&v9, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_5:
    v7 = 1536;
    goto LABEL_6;
  }

  v7 = v8;
LABEL_6:
  *a3 = v7;
  return result;
}

uint64_t Context.getGenerationId()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_10(v0, v1, v2);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF934B60()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_12_11();
  v2 = v1(v0);
  v4 = OUTLINED_FUNCTION_31_7(v2, v3);
  OUTLINED_FUNCTION_32_5(v4);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF934BD0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_23_9();
  GenerationContext.getGenerationId()(v0, v1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t Context.getSourceOwner()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_10(v0, v1, v2);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF934C8C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_12_11();
  v2 = v1(v0);
  v4 = OUTLINED_FUNCTION_31_7(v2, v3);
  OUTLINED_FUNCTION_32_5(v4);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF934CFC()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_23_9();
  GenerationContext.getSourceOwner()(v0, v1, v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t Context.getInvocationType()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_10(v0, v1, v2);
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF934DB8()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_12_11();
  v2 = v1(v0);
  v4 = OUTLINED_FUNCTION_31_7(v2, v3);
  OUTLINED_FUNCTION_32_5(v4);
  OUTLINED_FUNCTION_15_4();
  v5 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF934E28()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_23_9();
  GenerationContext.getInvocationType()(v0, v1, v2);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_77();

  return v3();
}

uint64_t sub_1BF934E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_16_8(a1, *(a2 + 8));
  v7 = v6();
  sub_1BF925088(a3, 0xEE0072656E776F5FLL, v7, &v16);

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    if (swift_dynamicCast())
    {
      if (*(&v19 + 1))
      {
        return sub_1BF8C2C9C(&v18, a4);
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    sub_1BF8E8118(&v16, &qword_1EBDE9208, &unk_1BF9C2A50);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  if (qword_1EDBF4B40 == -1)
  {
    v9 = qword_1EDBF4B48;
    a4[3] = type metadata accessor for DefaultOwner();
    OUTLINED_FUNCTION_9_9();
    a4[4] = sub_1BF936FCC(v10, 255, v11);
    *a4 = v9;
  }

  else
  {
    swift_once();
    v12 = *(&v19 + 1);
    v13 = qword_1EDBF4B48;
    a4[3] = type metadata accessor for DefaultOwner();
    OUTLINED_FUNCTION_9_9();
    a4[4] = sub_1BF936FCC(v14, 255, v15);
    *a4 = v13;

    if (v12)
    {
      return sub_1BF8E8118(&v18, &qword_1EBDE9918, &qword_1BF9C0750);
    }
  }

  return result;
}

SiriSuggestionsKit::SuggestionEnablementState __swiftcall Context.getSuggestionEnablementState()()
{
  v3 = v2;
  OUTLINED_FUNCTION_16_8(v0, *(v1 + 8));
  v5 = v4();
  sub_1BF925088(0xD00000000000001BLL, 0x80000001BF9CC260, v5, &v14);

  if (v15)
  {
    v6 = swift_dynamicCast();
    if (v6)
    {
      v7 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BF8E8118(&v14, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v8 = sub_1BF9B47C8();
  __swift_project_value_buffer(v8, qword_1EDBF5570);
  v9 = sub_1BF9B47A8();
  v10 = sub_1BF9B5048();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BF8B8000, v9, v10, "error retrieving suggestionEnablementState from params in Context", v11, 2u);
    MEMORY[0x1BFB5F320](v11, -1, -1);
  }

  v7 = 0;
LABEL_10:
  *v3 = v7;
  return v6;
}

uint64_t sub_1BF935204@<X0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_10();
  result = sub_1BF9B4C08();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

uint64_t Context.setParam(for:key:value:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_1BF935604(a1, a2, a3);
  v8 = a4[3];
  __swift_project_boxed_opaque_existential_1(a4, v8);
  v16[3] = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_11(v8);
  v10 = (*(v9 + 16))();
  OUTLINED_FUNCTION_36_5(v10, v11, *(a6 + 8));
  v13 = v12();
  OUTLINED_FUNCTION_17_11();
  sub_1BF9326D8();
  return v13(&v15, 0);
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall Context.getAppId()()
{
  v3 = v1;
  v4 = v0;
  v5 = v2;
  Context.getTargetOwner()(v0, v1, v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v15[3] = v6;
  v15[4] = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_11(v6);
  (*(v8 + 16))();
  OUTLINED_FUNCTION_14_7();
  Context.getParam(for:key:)(v15, v9, v10, v4, v3, &v19);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v20)
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = sub_1BF8E8118(&v19, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
LABEL_6:
  result.value.appId._object = v12;
  result.value.appId._countAndFlagsBits = v11;
  result.is_nil = v14;
  result.value.party = v13;
  return result;
}

uint64_t Context.getParam(for:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v9 = sub_1BF935604(a1, a2, a3);
  v11 = v10;
  OUTLINED_FUNCTION_16_8(v9, *(a5 + 8));
  v13 = v12(a4);
  sub_1BF925088(v9, v11, v13, a6);
}

uint64_t sub_1BF935604(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v13, v5, v6);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v11 = (*(v8 + 48))(v7, v8);
  v12 = v9;

  MEMORY[0x1BFB5DE90](58, 0xE100000000000000);

  __swift_destroy_boxed_opaque_existential_1(v13);
  v13[0] = v11;
  v13[1] = v12;

  MEMORY[0x1BFB5DE90](a2, a3);

  return v13[0];
}

uint64_t Context.setSourceDialogCallback(_:)()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_28_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_26_8(v5);

  return Context.getSourceOwner()();
}

uint64_t sub_1BF935798()
{
  OUTLINED_FUNCTION_65();
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v10 = *v0;

  v5 = *(*(v3 + 8) + 8);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v6 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF9358E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[10] = v5;
  v0[11] = *(v6 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_11(v5);
  (*(v7 + 16))();
  v8 = v4[3];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  v0[15] = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_17_11();
  v11();
  Context.setParam(for:key:value:)(v0 + 7, 0xD00000000000001FLL, 0x80000001BF9CC2A0, v0 + 12, v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_77();

  return v12();
}

uint64_t Context.getSourceDialogCallbacksProvider()()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_28_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_26_8(v5);

  return Context.getSourceOwner()();
}

uint64_t sub_1BF935B60()
{
  OUTLINED_FUNCTION_65();
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v10 = *v0;

  v5 = *(*(v3 + 8) + 8);
  sub_1BF9B4E28();
  OUTLINED_FUNCTION_15_4();
  v6 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF935CA8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 80) = v4;
  *(v0 + 88) = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_11(v4);
  (*(v6 + 16))();
  Context.getParam(for:key:)((v0 + 56), 0xD00000000000001FLL, 0x80000001BF9CC2A0, v3, v1, (v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v7 = *(v0 + 128);
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99A0, &qword_1BF9C07F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = *(v0 + 128);
      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }
  }

  else
  {
    sub_1BF8E8118(v0 + 96, &qword_1EBDE9208, &unk_1BF9C2A50);
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0;
  }

  OUTLINED_FUNCTION_77();

  return v9();
}

double sub_1BF935E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF8C2E64(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A10, &unk_1BF9C3A80);
    sub_1BF9B53A8();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1BF8C192C((*(v14 + 56) + 32 * v9), a3);
    sub_1BF9B53C8();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF935F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1BF8C2E64(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A08, &unk_1BF9C1040);
  sub_1BF9B53A8();
  v10 = *(*(v13 + 48) + 16 * v7 + 8);

  v11 = *(*(v13 + 56) + 8 * v7);
  sub_1BF9B53C8();
  *v3 = v13;
  return v11;
}

double sub_1BF935FF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF8C2E64(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99E8, &unk_1BF9C1000);
    sub_1BF9B53A8();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1BF8C2C9C((*(v14 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    sub_1BF9B53C8();
    *v4 = v14;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1BF9360F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF8C2E64(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95D0, &unk_1BF9C1030);
    sub_1BF9B53A8();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1BF8DFCB8((*(v14 + 56) + 48 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
    sub_1BF9B53C8();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_1BF9361F0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BF9B2C5C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99D0, &unk_1BF9C0FE0);
    sub_1BF9B53A8();
    sub_1BF9324B4(*(v12 + 48) + 120 * v8);
    sub_1BF8C2C9C((*(v12 + 56) + 40 * v8), a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
    sub_1BF932404();
    sub_1BF9B53C8();
    *v3 = v12;
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

double sub_1BF9362F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BF8C2E64(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99F8, &qword_1BF9C1018);
    sub_1BF9B53A8();
    v12 = *(*(v16 + 48) + 16 * v9 + 8);

    v13 = (*(v16 + 56) + 48 * v9);
    v14 = v13[1];
    *a3 = *v13;
    a3[1] = v14;
    a3[2] = v13[2];
    sub_1BF9B53C8();
    *v4 = v16;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

_OWORD *sub_1BF9363E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF8C2E64(a2, a3);
  OUTLINED_FUNCTION_3_15(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A10, &unk_1BF9C3A80);
  if (OUTLINED_FUNCTION_20_9())
  {
    v16 = *v4;
    sub_1BF8C2E64(a2, a3);
    OUTLINED_FUNCTION_10_10();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v19 + 56) + 32 * v14));
    OUTLINED_FUNCTION_42_4();

    return sub_1BF8C192C(v20, v21);
  }

  else
  {
    sub_1BF963FCC(v14, a2, a3, a1, v19);
    OUTLINED_FUNCTION_42_4();
  }
}

unint64_t sub_1BF936500()
{
  result = qword_1EDBF4BA0;
  if (!qword_1EDBF4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BA0);
  }

  return result;
}

unint64_t sub_1BF936554()
{
  result = qword_1EBDE9948;
  if (!qword_1EBDE9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9948);
  }

  return result;
}

unint64_t sub_1BF9365A8()
{
  result = qword_1EBDE9950;
  if (!qword_1EBDE9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9950);
  }

  return result;
}

unint64_t sub_1BF9365FC()
{
  result = qword_1EBDE9958;
  if (!qword_1EBDE9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9958);
  }

  return result;
}

unint64_t sub_1BF936650()
{
  result = qword_1EDBF4B88;
  if (!qword_1EDBF4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B88);
  }

  return result;
}

void sub_1BF9366A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_18_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_15(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_1BF9B5758();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A18, &unk_1BF9C1050);
  if (OUTLINED_FUNCTION_20_9())
  {
    v14 = *v6;
    sub_1BF8C2E64(v5, v3);
    OUTLINED_FUNCTION_10_10();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v6 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v4;
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_34_4();
    sub_1BF96400C(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_42_4();
  }
}

uint64_t sub_1BF936788(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF8C2E64(a1, a2);
  OUTLINED_FUNCTION_3_15(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A08, &unk_1BF9C1040);
  result = sub_1BF9B53A8();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  v18 = OUTLINED_FUNCTION_88();
  result = sub_1BF8C2E64(v18, v19);
  if ((v15 & 1) != (v20 & 1))
  {
LABEL_11:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v21 = *v4;
  if (v15)
  {
    *(*(v21 + 56) + 8 * v14) = a3;
  }

  else
  {
    sub_1BF964070(v14, a1, a2, v21);
  }

  return result;
}

_OWORD *sub_1BF9368A4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF8C2E64(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95D0, &unk_1BF9C1030);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1BF8C2E64(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (*(v16 + 56) + 48 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1BF8DFCB8(a1, v17);
  }

  else
  {
    sub_1BF9640AC(v11, a2, a3, a1, v16);
  }
}

void sub_1BF9369F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BF9B2C5C(a2);
  OUTLINED_FUNCTION_3_15(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1BF9B5758();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
  if (sub_1BF9B53A8())
  {
    v14 = *v3;
    sub_1BF9B2C5C(a2);
    OUTLINED_FUNCTION_10_10();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = *(v17 + 56);
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
  }

  else
  {
    sub_1BF932458(a2, v20);
    sub_1BF9640F0(v12, v20, a1, v17);
  }
}

void sub_1BF936B10(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BF9B2C5C(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99D0, &unk_1BF9C0FE0);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_1BF9B2C5C(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1BF9B5758();
    __break(1u);
    return;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = (*(v14 + 56) + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v15);

    sub_1BF8C2C9C(a1, v15);
  }

  else
  {
    sub_1BF932458(a2, v16);
    sub_1BF96414C(v9, v16, a1, v14);
  }
}

uint64_t sub_1BF936C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_18_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_15(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99D8, &unk_1BF9C0FF0);
  if (OUTLINED_FUNCTION_20_9())
  {
    v14 = *v6;
    sub_1BF8C2E64(v5, v3);
    OUTLINED_FUNCTION_10_10();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v6 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v4;
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_34_4();
    sub_1BF96400C(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_42_4();
  }
}

uint64_t sub_1BF936D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF8C2E64(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99F8, &qword_1BF9C1018);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1BF8C2E64(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56) + 48 * v11;

    return sub_1BF937D48(a1, v17);
  }

  else
  {
    sub_1BF9641B4(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_1BF936E78()
{
  result = qword_1EDBF51E8[0];
  if (!qword_1EDBF51E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF51E8);
  }

  return result;
}

unint64_t sub_1BF936ECC()
{
  result = qword_1EDBF47D8;
  if (!qword_1EDBF47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47D8);
  }

  return result;
}

unint64_t sub_1BF936F20()
{
  result = qword_1EDBF4E78;
  if (!qword_1EDBF4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E78);
  }

  return result;
}

uint64_t sub_1BF936F74(uint64_t a1, uint64_t a2)
{
  result = sub_1BF936FCC(&qword_1EDBF31C8, a2, type metadata accessor for ContextContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF936FCC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1BF937018()
{
  result = qword_1EBDE99A8;
  if (!qword_1EBDE99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99A8);
  }

  return result;
}

unint64_t sub_1BF937070()
{
  result = qword_1EBDE99B0;
  if (!qword_1EBDE99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIdDetails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF937320(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF937440()
{
  result = qword_1EBDE99B8;
  if (!qword_1EBDE99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99B8);
  }

  return result;
}

unint64_t sub_1BF937498()
{
  result = qword_1EBDE99C0;
  if (!qword_1EBDE99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE99C0);
  }

  return result;
}

unint64_t sub_1BF9374F0()
{
  result = qword_1EDBF51E0;
  if (!qword_1EDBF51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51E0);
  }

  return result;
}

unint64_t sub_1BF937548()
{
  result = qword_1EDBF4CF8;
  if (!qword_1EDBF4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4CF8);
  }

  return result;
}

unint64_t sub_1BF9375A0()
{
  result = qword_1EDBF4B78;
  if (!qword_1EDBF4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B78);
  }

  return result;
}

unint64_t sub_1BF9375F8()
{
  result = qword_1EDBF4B80;
  if (!qword_1EDBF4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B80);
  }

  return result;
}

unint64_t sub_1BF937650()
{
  result = qword_1EDBF4B58;
  if (!qword_1EDBF4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B58);
  }

  return result;
}

unint64_t sub_1BF9376A8()
{
  result = qword_1EDBF4B60;
  if (!qword_1EDBF4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B60);
  }

  return result;
}

unint64_t sub_1BF937700()
{
  result = qword_1EDBF4B68;
  if (!qword_1EDBF4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B68);
  }

  return result;
}

unint64_t sub_1BF937758()
{
  result = qword_1EDBF4B70;
  if (!qword_1EDBF4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B70);
  }

  return result;
}

unint64_t sub_1BF9377B0()
{
  result = qword_1EDBF4E80;
  if (!qword_1EDBF4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E80);
  }

  return result;
}

unint64_t sub_1BF937808()
{
  result = qword_1EDBF4B50;
  if (!qword_1EDBF4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B50);
  }

  return result;
}

unint64_t sub_1BF937860()
{
  result = qword_1EDBF4B90;
  if (!qword_1EDBF4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B90);
  }

  return result;
}

unint64_t sub_1BF9378B8()
{
  result = qword_1EDBF4B98;
  if (!qword_1EDBF4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B98);
  }

  return result;
}

uint64_t sub_1BF93790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a4;
  (*(v12 + 16))(v15, a1, a5);
  sub_1BF937A48(v15, a2, a3, isUniquelyReferenced_nonNull_native, &v21, a5, a6);
  result = (*(v12 + 8))(a1, a5);
  *a4 = v21;
  return result;
}

uint64_t sub_1BF937A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v32);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  v14 = *a5;
  v15 = sub_1BF8C2E64(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE99E8, &unk_1BF9C1000);
  if ((sub_1BF9B53A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *a5;
  v20 = sub_1BF8C2E64(a2, a3);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_10:
    result = sub_1BF9B5758();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *a5;
  if (v18)
  {
    v23 = (v22[7] + 40 * v17);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_1BF8C2C9C(&v32, v23);
  }

  else
  {
    v25 = v33;
    v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
    v27 = *(*(v25 - 8) + 64);
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_1BF937C70(v17, a2, a3, v29, v22, a6, a7);
    __swift_destroy_boxed_opaque_existential_1(&v32);
  }
}

uint64_t sub_1BF937C70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1BF8C2C9C(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

_OWORD *OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1BF9363E4(va, a2, 0xEE0072656E776F5FLL);
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return swift_getObjectType();
}

uint64_t BridgeOwner.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static BridgeOwner.create(intentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD000000000000011;
  v4 = *(a1 + 16);
  strcpy(v10, "intentBridge_");
  HIWORD(v10[1]) = -4864;
  v5 = "IntentType.action";
  if (v4 == 1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v5 = "tionsKit11ContextKeys";
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = "IntentType.inIntent";
  }

  MEMORY[0x1BFB5DE90](v6, v7 | 0x8000000000000000);

  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 8) = v9;
  *(a2 + 16) = 1;
  return result;
}

unint64_t BridgeOwner.getSuggestionGroup()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(a1 + 32) = result;
  *a1 = 1;
  return result;
}

unint64_t sub_1BF937F68()
{
  result = qword_1EDBF4BA8;
  if (!qword_1EDBF4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BA8);
  }

  return result;
}

uint64_t sub_1BF937FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567646972427369 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF93808C(char a1)
{
  if (a1)
  {
    return 0x6567646972427369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1BF9380D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF937FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9380F8(uint64_t a1)
{
  v2 = sub_1BF9382DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF938134(uint64_t a1)
{
  v2 = sub_1BF9382DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BridgeOwner.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A20, &qword_1BF9C1060);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9382DC();
  sub_1BF9B5898();
  v19 = 0;
  v14 = v16[1];
  sub_1BF9B55F8();
  if (!v14)
  {
    v18 = 1;
    sub_1BF9B5608();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1BF9382DC()
{
  result = qword_1EBDE9A28;
  if (!qword_1EBDE9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A28);
  }

  return result;
}

uint64_t BridgeOwner.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A30, &qword_1BF9C1068);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9382DC();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1BF9B5518();
  v12 = v11;
  v13 = sub_1BF9B5528();
  v14 = OUTLINED_FUNCTION_60();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF93850C(void *a1)
{
  a1[2] = sub_1BF938544();
  a1[3] = sub_1BF938598();
  result = sub_1BF9385EC();
  a1[4] = result;
  return result;
}

unint64_t sub_1BF938544()
{
  result = qword_1EDBF3870;
  if (!qword_1EDBF3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3870);
  }

  return result;
}

unint64_t sub_1BF938598()
{
  result = qword_1EDBF3878;
  if (!qword_1EDBF3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3878);
  }

  return result;
}

unint64_t sub_1BF9385EC()
{
  result = qword_1EDBF3880;
  if (!qword_1EDBF3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3880);
  }

  return result;
}

uint64_t sub_1BF938640()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_1BF93864C(*v0);
}

_BYTE *storeEnumTagSinglePayload for BridgeOwner.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9387A0()
{
  result = qword_1EBDE9A38;
  if (!qword_1EBDE9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A38);
  }

  return result;
}

unint64_t sub_1BF9387F8()
{
  result = qword_1EBDE9A40;
  if (!qword_1EBDE9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A40);
  }

  return result;
}

unint64_t sub_1BF938850()
{
  result = qword_1EBDE9A48;
  if (!qword_1EBDE9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9A48);
  }

  return result;
}

uint64_t ChannelGeneratorConfidenceLogger.__allocating_init(coreAnalyticsClient:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_0();
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_17();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_0_13(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_3_16();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1BF938980(uint64_t a1, unint64_t a2)
{
  if (qword_1EDBF57F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF57F8);

  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5038();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1BF8DE810(a1, a2, &v14);
    *(v7 + 12) = 2080;
    sub_1BF938F64();
    v9 = sub_1BF9B4978();
    v11 = sub_1BF8DE810(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "Logging metricName=%s, payload=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v8, -1, -1);
    MEMORY[0x1BFB5F320](v7, -1, -1);
  }

  v12 = sub_1BF9B4A98();
  sub_1BF938F64();
  v13 = sub_1BF9B4958();
  AnalyticsSendEvent();
}

uint64_t CoreAnalyticsLogger.__allocating_init(coreAnalyticsClient:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0();
  v2 = swift_allocObject();
  sub_1BF8D5C74(a1, v2 + 16);
  return v2;
}

uint64_t sub_1BF938C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t CoreAnalyticsLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BF938CF0()
{
  v1 = v0;
  v2 = sub_1BF9B4A98();
  v3 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1BF9366A4(v2, 0x4E6C656E6E616863, 0xEB00000000656D61);
  v4 = sub_1BF9B4F48();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1BF9366A4(v4, 0xD000000000000011, 0x80000001BF9CC470);
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  (*(v6 + 8))(0xD000000000000030, 0x80000001BF9CC490, v3, v5, v6);
}

uint64_t ChannelGeneratorConfidenceLogger.init(coreAnalyticsClient:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_17();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_0_13(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_3_16();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1BF938EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF8D5C74(&v9, a2 + 16);
  return a2;
}

unint64_t sub_1BF938F64()
{
  result = qword_1EDBF0550;
  if (!qword_1EDBF0550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBF0550);
  }

  return result;
}

uint64_t AppUsageTimestampBiomeFetcher.__allocating_init(streamProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AppUsageTimestampBiomeFetcher.init(streamProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF939168()
{
  v1 = v0[8];
  v2 = *(v1 + 24);
  v3 = (*(v1 + 16))();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BF9B4988();
  v5 = [v3 publisherWithOptions_];
  v0[6] = nullsub_1;
  v0[7] = 0;
  v6 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BF939C44;
  v0[5] = &block_descriptor_0;
  v7 = _Block_copy(v0 + 2);
  v0[6] = sub_1BF93969C;
  v0[7] = v4;
  v0[2] = v6;
  v0[3] = 1107296256;
  v0[4] = sub_1BF939C44;
  v0[5] = &block_descriptor_3;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  v10 = [v5 sinkWithCompletion:v7 receiveInput:v8];

  _Block_release(v8);
  _Block_release(v7);

  swift_beginAccess();
  v11 = *(v4 + 16);

  v12 = v0[1];

  return v12(v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BF939398(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = [a1 eventBody];
  if (v14)
  {
    v32 = v14;
    v15 = sub_1BF939A8C(v14);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = [v32 absoluteTimestamp];
      if (v19)
      {
        v20 = v19;
        sub_1BF9B44A8();

        v21 = sub_1BF9B44C8();
        v22 = 0;
      }

      else
      {
        v21 = sub_1BF9B44C8();
        v22 = 1;
      }

      __swift_storeEnumTagSinglePayload(v11, v22, 1, v21);
      sub_1BF939AF0(v11, v13);
      swift_beginAccess();
      if (*(*(a2 + 16) + 16) && (v24 = *(a2 + 16), , sub_1BF8C2E64(v17, v18), v26 = v25, , (v26 & 1) != 0))
      {
        sub_1BF939BD0(v13);
      }

      else
      {
        sub_1BF939B60(v13, v8);
        v27 = sub_1BF9B44C8();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v27);
        if (EnumTagSinglePayload == 1)
        {
          sub_1BF939BD0(v8);
          v29 = 0.0;
        }

        else
        {
          sub_1BF9B4478();
          v29 = v30;
          (*(*(v27 - 8) + 8))(v8, v27);
        }

        swift_beginAccess();
        if (EnumTagSinglePayload == 1)
        {
          sub_1BF935F14(v17, v18);
        }

        else
        {
          v31 = *(a2 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v33 = *(a2 + 16);
          sub_1BF936788(v17, v18, v29);
          *(a2 + 16) = v33;
        }

        swift_endAccess();

        sub_1BF939BD0(v13);
      }
    }

    else
    {
      v23 = v32;
    }
  }
}

void sub_1BF9396A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t AppUsageTimestampBiomeFetcher.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AppUsageTimestampBiomeFetcher.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF939764()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9090B8;

  return sub_1BF939148();
}

uint64_t dispatch thunk of AppUsageTimestampFetcher.getAppUsageTimestamps(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BF9090B8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AppUsageTimestampBiomeFetcher.getAppUsageTimestamps(options:)(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BF939C3C;

  return v8(a1);
}

uint64_t sub_1BF939A8C(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF9B4AA8();

  return v3;
}

uint64_t sub_1BF939AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF939B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF939BD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF939C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v25 - v10;
  sub_1BF93A2F8(a3, v25 - v10);
  v12 = sub_1BF9B4EB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF8BA5D8(v11);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BF9B4E28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BF9B4B18() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BF8BA5D8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF8BA5D8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall SuggestionsServiceRefreshable.refresh()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1BF9B4EB8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = *(v3 + 8);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = v4;
  v11[5] = v3;
  v11[6] = v2;
  swift_unknownObjectRetain_n();
  sub_1BF939C48(0, 0, v8, &unk_1BF9C1490, v11);
}

uint64_t sub_1BF939FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1BF8BC564;

  return v13(a5, a6);
}

uint64_t sub_1BF93A10C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0(v8);
  *v9 = v10;
  v9[1] = sub_1BF8BC644;

  return sub_1BF939FF0(a1, v5, v6, v7, v3, v4);
}

uint64_t dispatch thunk of SuggestionsServiceRefreshable.refreshAsync()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BF8BC564;

  return v9(a1, a2);
}

uint64_t sub_1BF93A2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF93A368()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_16(v4);

  return v7(v6);
}

Swift::String_optional __swiftcall SiriSuggestions.Intent.getSiriHelpMentionedAppId()()
{
  v1 = type metadata accessor for SiriSuggestions.Intent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF93A558(v0, v4);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1BF90DBB4(v4);
LABEL_9:
    v13 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[4];
  v9 = v4[6];
  v10 = v5 == 0x4874736567677573 && v6 == 0xEB00000000706C65;
  if (!v10 && (sub_1BF9B56D8() & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_0_14();
  v13 = sub_1BF925194(v11, v12, v7);
  v15 = v14;

LABEL_10:
  v16 = v13;
  v17 = v15;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1BF93A558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SiriHelpConstants(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF93A6A0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBF4B48;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = sub_1BF93A93C();
  *a1 = v2;
}

uint64_t SuggestionsRepository.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBF4B48;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = sub_1BF93A93C();
  *a1 = v2;
}

unint64_t NoOpSuggestionsRepository.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultOwner();
  v3 = swift_allocObject();
  *(v3 + 40) = &type metadata for CoreSuggestionGroups;
  v4 = sub_1BF937F68();
  *(v3 + 16) = 4;
  *(v3 + 48) = v4;
  *(v3 + 56) = 1884254030;
  *(v3 + 64) = 0xE400000000000000;
  *(v3 + 72) = 1884254030;
  *(v3 + 80) = 0xE400000000000000;
  a1[3] = v2;
  result = sub_1BF93A93C();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t DefaultSuggestionsRepository.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DefaultSuggestionsRepository.__deallocating_deinit()
{
  DefaultSuggestionsRepository.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF93A93C()
{
  result = qword_1EDBF36D0;
  if (!qword_1EDBF36D0)
  {
    type metadata accessor for DefaultOwner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF36D0);
  }

  return result;
}

uint64_t sub_1BF93AA0C()
{
  v1 = type metadata accessor for ActionIdentifier();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF93F640(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier, v4, type metadata accessor for ActionIdentifier);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BF93E89C(v4, type metadata accessor for ActionIdentifier);
    return 0;
  }

  else
  {
    result = *v4;
    v6 = v4[1];
  }

  return result;
}

uint64_t sub_1BF93AAE4()
{
  v1 = type metadata accessor for ActionIdentifier();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
  sub_1BF93F640(v0 + *(v5 + 20), v4, type metadata accessor for ActionIdentifier);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BF93E89C(v4, type metadata accessor for ActionIdentifier);
    return 0;
  }

  else
  {
    result = *v4;
    v7 = v4[1];
  }

  return result;
}

uint64_t sub_1BF93ABC0()
{
  v1 = type metadata accessor for ActionIdentifier();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[4];
  v6 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v5);
  (*(v6 + 24))(v5, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BF93E89C(v4, type metadata accessor for ActionIdentifier);
    return 0;
  }

  else
  {
    result = *v4;
    v8 = v4[1];
  }

  return result;
}

uint64_t CandidateSuggestionConfigurator.suggestionId.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionIdentifier();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v10 = (v9 - v8);
  (*(a2 + 24))(a1, a2);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_15();
    sub_1BF93E89C(v10, v11);
    return 0;
  }

  else
  {
    result = *v10;
    v13 = v10[1];
  }

  return result;
}

uint64_t sub_1BF93AD70@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for ActionIdentifier();
  swift_storeEnumTagMultiPayload();
}

uint64_t CandidateSuggestionConfigurator.actionIdentifier.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = (*(a1 + 16))();
  a2[1] = v3;
  type metadata accessor for ActionIdentifier();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF93AE20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF93F6AC;

  return CandidateSuggestionConfigurator.isValid(signal:)();
}

uint64_t sub_1BF93AEC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF93F6B0;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)();
}

uint64_t CandidateSuggestionConfigurator.isValidWithDebug(signal:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *(OUTLINED_FUNCTION_15(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_84();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_2(v8);

  return v11(v10);
}

uint64_t sub_1BF93B070()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  if (v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v2)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0x80000001BF9CC600;
  }

  v9 = *(v5 + 8);

  return v9(v2, v7, v8);
}

uint64_t CandidateSuggestionConfiguratorFactory.create(suggestionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionIdentifier();
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v14 = (v13 - v12);
  *v14 = a1;
  v14[1] = a2;
  swift_storeEnumTagMultiPayload();
  v15 = *(a4 + 8);

  v15(v14, a3, a4);
  OUTLINED_FUNCTION_0_15();
  return sub_1BF93E89C(v14, v16);
}

uint64_t sub_1BF93B258@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
  a1[4] = &off_1F3EFBD28;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1BF93F608(v1, v3 + 16);
}

uint64_t sub_1BF93B2BC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
  a1[4] = &off_1F3EFBD70;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_1BF93F640(v1, boxed_opaque_existential_1Tm, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
}

uint64_t CandidateSuggestionConfigurator.create(actionIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v3, a1);
}

unint64_t DefaultCandidateSuggestionConfigurator.description.getter()
{
  sub_1BF9B5288();

  v0 = ActionIdentifier.description.getter();
  MEMORY[0x1BFB5DE90](v0);

  MEMORY[0x1BFB5DE90](125, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t DefaultCandidateSuggestionConfigurator.deinit()
{
  OUTLINED_FUNCTION_0_15();
  sub_1BF93E89C(v0 + v1, v2);
  return v0;
}

uint64_t DefaultCandidateSuggestionConfigurator.__deallocating_deinit()
{
  OUTLINED_FUNCTION_0_15();
  sub_1BF93E89C(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1BF93B560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC644;

  return DefaultCandidateSuggestionConfigurator.updateContext(context:signal:)();
}

uint64_t sub_1BF93B5EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6AC;

  return j_j__OUTLINED_FUNCTION_11_13(a1);
}

uint64_t sub_1BF93B694(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93F6B0;

  return (sub_1BF93F6A0)(a1);
}

void static CandidateSuggestionConfigurators.merge(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A58, &qword_1BF9C1688);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v38 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A60, &unk_1BF9C1690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v38 - v9;
  v40 = type metadata accessor for ActionIdentifier();
  v10 = OUTLINED_FUNCTION_13(v40);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v38 = v14 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = a1 + 32;
    v42 = xmmword_1BF9B6370;
    while (1)
    {
      sub_1BF8D2004(v17, v44);
      sub_1BF8D2004(v44, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
      v18 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
        v19 = *v6;

        sub_1BF93E89C(v6, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
        sub_1BF8DFBF0(v6, &qword_1EBDE9A58, &qword_1BF9C1688);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
        v19 = swift_allocObject();
        *(v19 + 16) = v42;
        sub_1BF8D2004(v44, v19 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1(v44);
      v20 = *(v19 + 16);
      v21 = *(v16 + 16);
      if (__OFADD__(v21, v20))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v16 + 24) >> 1)
      {
        sub_1BF8DDF88();
        v16 = v22;
      }

      if (*(v19 + 16))
      {
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v20)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v23 = *(v16 + 16);
          v24 = __OFADD__(v23, v20);
          v25 = v23 + v20;
          if (v24)
          {
            goto LABEL_29;
          }

          *(v16 + 16) = v25;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_27;
        }
      }

      v17 += 40;
      if (!--v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_19:
  sub_1BF8F19D4(v16, v44);
  v26 = v45;
  if (!v45)
  {

    sub_1BF8DFBF0(v44, &qword_1EBDE99C8, &unk_1BF9C2D00);
    v28 = v41;
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v40);
    goto LABEL_23;
  }

  v27 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = v41;
  (*(v27 + 24))(v26, v27);
  v29 = v40;
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v40);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {

LABEL_23:
    sub_1BF8DFBF0(v28, &qword_1EBDE9A60, &unk_1BF9C1690);
    v30 = v39;
    *v39 = 0u;
    *(v30 + 1) = 0u;
    v30[4] = 0;
    return;
  }

  OUTLINED_FUNCTION_2_18();
  v31 = v28;
  v32 = v38;
  v34 = sub_1BF93F4D4(v31, v38, v33);
  MEMORY[0x1EEE9AC00](v34);
  *(&v38 - 2) = v32;
  if (sub_1BF9252F8(sub_1BF93E87C, (&v38 - 4), v16))
  {
    v35 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
    v36 = v39;
    v39[3] = v35;
    v36[4] = &off_1F3EFBD70;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v36);
    sub_1BF93F640(v32, boxed_opaque_existential_1Tm + *(v35 + 20), type metadata accessor for ActionIdentifier);
    *boxed_opaque_existential_1Tm = v16;
    sub_1BF93E89C(v32, type metadata accessor for ActionIdentifier);
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1BF93BC64(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionIdentifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(v8, v9);
  LOBYTE(a1) = static ActionIdentifier.== infix(_:_:)(v7, a2);
  sub_1BF93E89C(v7, type metadata accessor for ActionIdentifier);
  return a1 & 1;
}

uint64_t static CandidateSuggestionConfigurators.restrict(provider:for:complimentExistingRestrictions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  a4[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedConfiguratorProvider;
  a4[4] = &off_1F3EFBD60;
  v8 = swift_allocObject();
  *a4 = v8;
  sub_1BF8D2004(a1, v8 + 16);
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
}

uint64_t static CandidateSuggestionConfigurators.restrict(configurator:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
  a3[4] = &off_1F3EFBD28;
  v6 = swift_allocObject();
  *a3 = v6;
  sub_1BF8D2004(a1, v6 + 24);
  *(v6 + 16) = a2;
}

uint64_t sub_1BF93BE64(uint64_t a1)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v6 = (*(v5 + 8))(a1, v4, v5);
  v9[2] = v2;
  v7 = sub_1BF93F2FC(sub_1BF93F298, v9, v6);

  return v7;
}

uint64_t sub_1BF93BF0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  result = sub_1BF92457C(sub_1BF93F4B4, v6, v4);
  *a3 = result;
  return result;
}

uint64_t sub_1BF93BF5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 48) & 1) == 0 && (sub_1BF93C00C(a1))
  {
    return sub_1BF8D2004(a1, a3);
  }

  v7 = *(a2 + 40);
  a3[3] = &type metadata for CandidateSuggestionConfigurators.RestrictedSuggestionConfigurator;
  a3[4] = &off_1F3EFBD28;
  v8 = swift_allocObject();
  *a3 = v8;
  sub_1BF8D2004(a1, v8 + 24);
  *(v8 + 16) = v7;
}

uint64_t sub_1BF93C00C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A58, &qword_1BF9C1688);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22[-1] - v6;
  v8 = type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF8D2004(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
  if (!swift_dynamicCast())
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_1BF8DFBF0(&v24, &qword_1EBDE9240, &unk_1BF9C1A70);
    v27 = 0u;
    v28 = 0u;
    goto LABEL_8;
  }

  v12 = *(&v25 + 1);
  v13 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(v13 + 8))(&v27, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  if (!*(&v28 + 1))
  {
LABEL_8:
    sub_1BF8DFBF0(&v27, &qword_1EBDE9208, &unk_1BF9C2A50);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_9;
  }

  if (!*(&v30 + 1))
  {
LABEL_9:
    sub_1BF8DFBF0(&v29, &qword_1EBDE99C8, &unk_1BF9C2D00);
    goto LABEL_10;
  }

  sub_1BF8D5C74(&v29, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v14 = sub_1BF9B56C8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1BF9B56C8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14 != v15)
  {
    v16 = sub_1BF93C00C(v22);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_10:
  sub_1BF8D2004(a1, &v29);
  if (swift_dynamicCast())
  {
    sub_1BF93F564(v22);
    v16 = 1;
  }

  else
  {
    sub_1BF8D2004(a1, v22);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      v17 = sub_1BF93F4D4(v7, v11, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
      v18 = *v11;
      MEMORY[0x1EEE9AC00](v17);
      *(&v21 - 2) = v2;
      v16 = sub_1BF9063B4(sub_1BF93F534, (&v21 - 4), v19);
      sub_1BF93E89C(v11, type metadata accessor for CandidateSuggestionConfigurators.MergedCandidateSuggestionConfigurator);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      sub_1BF8DFBF0(v7, &qword_1EBDE9A58, &qword_1BF9C1688);
      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_1BF93C3E0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1BF93C43C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93C460, 0, 0);
}

uint64_t sub_1BF93C460()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[4];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  OUTLINED_FUNCTION_5_12();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1BF93C578;
  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8, v2, v3);
}

uint64_t sub_1BF93C578()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_77();

  return v5();
}

uint64_t sub_1BF93C658(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93C678, 0, 0);
}

uint64_t sub_1BF93C678()
{
  v31 = v0;
  v1 = *(v0 + 72);
  v2 = *(v1 + 88);
  if (v2 == 255)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1BF9B5288();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    MEMORY[0x1BFB5DE90](0xD000000000000023, 0x80000001BF9CC6D0);
    sub_1BF9B5378();
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
  }

  else
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = *(v1 + 80);
    v7 = **(v0 + 80);
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    *(v0 + 32) = v5;
    *(v0 + 40) = v6;
    *(v0 + 48) = v2;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 16;
    v9 = sub_1BF906310(sub_1BF93F594, v8, v7);

    if (v9)
    {
      v10 = *(v0 + 80);
      v11 = v10[5];
      __swift_project_boxed_opaque_existential_1(v10 + 1, v10[4]);
      v12 = *(v11 + 48);
      OUTLINED_FUNCTION_84();
      v24 = (v13 + *v13);
      v15 = *(v14 + 4);
      v16 = swift_task_alloc();
      *(v0 + 88) = v16;
      *v16 = v0;
      v16[1] = sub_1BF93C9B0;
      v17 = OUTLINED_FUNCTION_22_5(*(v0 + 72));

      return v24(v17);
    }

    sub_1BF9B5288();

    strcpy(v25, "Restricted: ");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    v21 = MEMORY[0x1BFB5E030](v7, &type metadata for DeliveryVehicle);
    MEMORY[0x1BFB5DE90](v21);

    MEMORY[0x1BFB5DE90](0x203A746F67202CLL, 0xE700000000000000);
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v30 = v2;
    v22 = DeliveryVehicle.rawValue.getter();
    MEMORY[0x1BFB5DE90](v22);

    MEMORY[0x1BFB5DE90](v25[0], v25[1]);

    v19 = 0xD00000000000001CLL;
    v20 = 0x80000001BF9CC700;
  }

  v23 = *(v0 + 8);

  return v23(0, v19, v20);
}

uint64_t sub_1BF93C9B0()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_9_10();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_17();

  return v6(v5);
}

uint64_t sub_1BF93CA98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B8;

  return sub_1BF93C658(a1);
}

uint64_t sub_1BF93CB34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8BC644;

  return sub_1BF93C43C(a1, a2);
}

uint64_t sub_1BF93CBD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6AC;

  return sub_1BF93CA98(a1);
}

uint64_t sub_1BF93CC6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B0;

  return sub_1BF93C658(a1);
}

uint64_t sub_1BF93CD04(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93CD28, 0, 0);
}

uint64_t sub_1BF93CD28()
{
  OUTLINED_FUNCTION_6();
  v1 = **(v0 + 72);
  *(v0 + 80) = v1;
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    *(v0 + 96) = 0;
    sub_1BF8D2004(v1 + 32, v0 + 16);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_5_12();
    v12 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_7_11(v7);

    return v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_77();

    return v11();
  }
}

uint64_t sub_1BF93CE64()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1BF93CF58, 0, 0);
}

uint64_t sub_1BF93CF58()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {
    OUTLINED_FUNCTION_77();

    return v2();
  }

  else
  {
    v0[12] = v1;
    sub_1BF8D2004(v0[10] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_5_12();
    v11 = v5 + *v5;
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_7_11();

    return v10(v9);
  }
}

uint64_t sub_1BF93D098(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF93D0B8, 0, 0);
}

uint64_t sub_1BF93D0B8()
{
  OUTLINED_FUNCTION_65();
  v1 = **(v0 + 120);
  sub_1BF93F1AC(*(v0 + 112), v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  memcpy((v2 + 16), (v0 + 16), 0x59uLL);
  OUTLINED_FUNCTION_8_9(&unk_1BF9B9AC8);
  v6 = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1BF93D1B4;

  return v6(v1, 0, 0, 0, &unk_1BF9C1A40, v2);
}

void sub_1BF93D1B4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  v4 = *(v2 + 136);
  v5 = *v1;
  *(v3 + 144) = v6;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 128);

    MEMORY[0x1EEE6DFA0](sub_1BF93D2EC, 0, 0);
  }
}

uint64_t sub_1BF93D2EC()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 48);
    do
    {
      if ((*(v3 - 2) & 1) == 0)
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        MEMORY[0x1BFB5DE90](v5, v4);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
    v6 = *(v0 + 144);
  }

  v7 = *(v0 + 8);

  return v7(1, 0, 0xE000000000000000);
}

uint64_t sub_1BF93D418(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF93D438, 0, 0);
}

uint64_t sub_1BF93D438()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8988, &qword_1BF9B8490);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1BF9B6370;
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v3 + 48);
  OUTLINED_FUNCTION_84();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1BF93D584;
  v9 = OUTLINED_FUNCTION_22_5(v0[3]);

  return v11(v9);
}

uint64_t sub_1BF93D584()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *(v1 + 40);
  v8 = *v0;
  *(v2 + 64) = v4;
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF93D680, 0, 0);
}

uint64_t sub_1BF93D680()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 64);
  *(v3 + 40) = v2;
  *(v3 + 48) = v1;
  return (*(v0 + 8))(*(v0 + 32));
}

uint64_t sub_1BF93D6B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B8;

  return sub_1BF93D098(a1);
}

uint64_t sub_1BF93D780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8BC644;

  return sub_1BF93CD04(a1, a2);
}

uint64_t sub_1BF93D824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6AC;

  return sub_1BF93D6B0(a1);
}

uint64_t sub_1BF93D8B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF93F6B0;

  return sub_1BF93D098(a1);
}

uint64_t FilterSignal.init(filter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FilterSignal.create(actionIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for ActionIdentifier();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_17();
  v11 = v10 - v9;
  v13 = *v3;
  v12 = v3[1];
  OUTLINED_FUNCTION_2_18();
  sub_1BF93F640(a1, v11, v14);
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  a3[3] = type metadata accessor for FilterSignal.FilterSignalConfigurator();
  a3[4] = &off_1F3EFBCF0;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  sub_1BF93DA60(v11, v13, v12, boxed_opaque_existential_1Tm);
}

uint64_t sub_1BF93DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BF93F4D4(a1, a4, type metadata accessor for ActionIdentifier);
  result = type metadata accessor for FilterSignal.FilterSignalConfigurator();
  v8 = (a4 + *(result + 60));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_1BF93DAFC(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = *(a2 + 16);
  v3[38] = v4;
  v5 = sub_1BF9B50F8();
  v3[39] = v5;
  v6 = *(v5 - 8);
  v3[40] = v6;
  v7 = *(v6 + 64) + 15;
  v3[41] = swift_task_alloc();
  v8 = *(v4 - 8);
  v3[42] = v8;
  v9 = *(v8 + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF93DC1C, 0, 0);
}

uint64_t sub_1BF93DC1C()
{
  v34 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  sub_1BF8DFE40(*(*(v0 + 280) + 40) + 56, v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 304);
  if (v3)
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, *(v0 + 304));
    (*(v6 + 32))(v5, v7, v4);
    v10 = v8 + *(v9 + 60);
    v11 = *(v10 + 8);
    (*v10)(v5);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 304));
  }

  else
  {
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 312);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, *(v0 + 304));
    (*(v13 + 8))(v12, v14);
    if (qword_1EDBF08C0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 280);
    v16 = sub_1BF9B47C8();
    __swift_project_value_buffer(v16, qword_1EDBF08C8);
    sub_1BF93F1AC(v15, v0 + 16);
    v17 = sub_1BF9B47A8();
    v18 = sub_1BF9B5038();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      sub_1BF8DFE40(*(v0 + 56) + 56, v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
      DynamicType = swift_getDynamicType();
      v31 = *(v0 + 224);
      v32 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      *(v0 + 240) = DynamicType;
      *(v0 + 248) = v32;
      *(v0 + 264) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A70, &qword_1BF9C1AA8);
      v22 = sub_1BF9B4B08();
      v24 = v23;
      sub_1BF93F5B4(v0 + 16);
      v25 = sub_1BF8DE810(v22, v24, &v33);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1BF8B8000, v17, v18, "subscribed signal value not as expected (got %s. by-passing filter", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB5F320](v20, -1, -1);
      MEMORY[0x1BFB5F320](v19, -1, -1);
    }

    else
    {

      sub_1BF93F5B4(v0 + 16);
    }
  }

  v26 = *(v0 + 344);
  v27 = *(v0 + 328);

  v28 = OUTLINED_FUNCTION_3_17();

  return v29(v28);
}

uint64_t sub_1BF93DF84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93E028;

  return sub_1BF93DAFC(a1, a2);
}

uint64_t sub_1BF93E028()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1BF93E154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BC564;

  return sub_1BF8BC550();
}

uint64_t sub_1BF93E200(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93E2A4;

  return sub_1BF93DF84(a1, a2);
}

uint64_t sub_1BF93E2A4()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1BF93E390(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF93E434;

  return sub_1BF93DAFC(a1, a2);
}

uint64_t sub_1BF93E434()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_9_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_17();

  return v6(v5);
}

uint64_t sub_1BF93E52C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AD0);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7(v1);
}

uint64_t sub_1BF93E5C0()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AC8);
  v9 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_17_0(v6);

  return v9(v2);
}

uint64_t sub_1BF93E688()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AF0);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_17_0(v4);

  return v7(v1);
}

uint64_t sub_1BF93E71C()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8_9(&unk_1BF9C1AE8);
  v9 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_17_0(v6);

  return v9(v2);
}

uint64_t sub_1BF93E89C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of CandidateSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  OUTLINED_FUNCTION_84();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_17_0(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CandidateSuggestionConfigurator.isValid(signal:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *(OUTLINED_FUNCTION_15(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_84();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of CandidateSuggestionConfigurator.isValidWithDebug(signal:)()
{
  OUTLINED_FUNCTION_6();
  v3 = *(OUTLINED_FUNCTION_15(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_84();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_2(v8);

  return v11(v10);
}

uint64_t sub_1BF93EC8C()
{
  result = type metadata accessor for ActionIdentifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CandidateSuggestionConfigurators(_BYTE *result, int a2, int a3)
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