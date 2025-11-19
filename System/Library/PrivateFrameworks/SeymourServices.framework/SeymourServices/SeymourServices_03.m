unint64_t sub_226EE00B4()
{
  result = qword_28139B1E0;
  if (!qword_28139B1E0)
  {
    sub_227669C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B1E0);
  }

  return result;
}

char *sub_226EE010C(uint64_t a1)
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
  v13 = sub_2272412A0(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_2272764F8(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227264934(MEMORY[0x277D84FA0], sub_226EDEE20, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725C498(v12, MEMORY[0x277D84FA0], sub_226EDEE20, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC490, &qword_22767DB28);
  }

  return v1;
}

void sub_226EE0434(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52790], sub_226F1F948, sub_226ED88C8);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226EE0534(v7);

    sub_226EB707C(v8, MEMORY[0x277D52790], sub_226EE06D0);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_226EE0534(uint64_t a1)
{
  v2 = sub_227666A40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B600, MEMORY[0x277D52790]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226EE06D0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226EE06D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666A40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139B5F8, MEMORY[0x277D52790]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_226EE09B0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_226EE09B0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_227666A40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226EE0F94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52790], &qword_27D7BAA50, &qword_227679148);
      goto LABEL_12;
    }

    sub_226EE0C78(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790]);
  v15 = sub_22766BF50();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_226EB99C8(&qword_28139B5F8, MEMORY[0x277D52790]);
      v23 = sub_22766BFB0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EE0C78(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227666A40();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA50, &qword_227679148);
  v10 = sub_22766CDC0();
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790]);
      result = sub_22766BF50();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_226EE0F94(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227666A40();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA50, &qword_227679148);
  result = sub_22766CDC0();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790]);
      result = sub_22766BF50();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

char *sub_226EE12F0(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC608, &qword_22767E0E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_227240DA0(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_2272768A0(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227264B18(MEMORY[0x277D84FA0], sub_226EE0434, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725C684(v12, MEMORY[0x277D84FA0], sub_226EE0434, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC608, &qword_22767E0E8);
  }

  return v1;
}

void sub_226EE162C(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-1] - v16;
  if (a2)
  {
    v25[0] = a1;
    v25[1] = 0;
    v26 = 1;
    v18 = a1;
    a5(v25);
    v19 = MEMORY[0x277D84FB8];
    v20 = a1;
    v21 = 1;
  }

  else
  {
    v25[0] = a1;

    a3(v25);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(v24, v23);

    (*(v14 + 8))(v17, v13);
    v19 = MEMORY[0x277D84FB8];
    v20 = a1;
    v21 = 0;
  }

  sub_226EB4668(v20, v21, v19);
}

uint64_t sub_226EE18AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);

  return sub_227669270();
}

uint64_t sub_226EE1970@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227666A40();
  v5 = MEMORY[0x277D52790];
  sub_226EE1A34(&qword_28139B5E8, MEMORY[0x277D52790]);
  sub_226EE1A34(&unk_28139B600, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226EE1A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_38Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_38Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void *sub_226EE1BC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_226EE1BF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22766C000();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_226EE1CA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE1D14()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE1D78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE1DB0()
{
  v1 = type metadata accessor for MetricRecordingContext();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = v0 + v4;
  v7 = *(v1 + 20);
  v8 = sub_227666C80();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v2 + 32);
  v10 = sub_2276666A0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = *(v2 + 36);
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_227665AD0();
    (*(*(v13 - 8) + 8))(v6 + v11, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE1F40()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE1FF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE2030()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE2068()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE20CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE210C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EE21B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2298()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE22D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2318()
{
  v1 = sub_227664E20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2498()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2514()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE25C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE260C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE2644()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE277C()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2848()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2880(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_226EE2898(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_226EE28B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_226EE28C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE2908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SyncEncryptionKey();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_226EE2A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SyncEncryptionKey();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226EE2B20()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2BE4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EE2C34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2C80()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2D08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2D48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2DB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE2E14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2E4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2E84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE2ED0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE2F94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE31F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE3228()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE3260()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE32AC()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 240) & ~v23;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v22 = *(v5 + 80);
  v6 = (v4 + v22) & ~v22;
  v7 = *(v5 + 64);
  v21 = sub_227667A70();
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v20 = *(v12 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  (*(v2 + 8))(v0 + v3, v1);
  v15 = sub_2276638D0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v6, 1, v15))
  {
    (*(v16 + 8))(v0 + v6, v15);
  }

  (*(v8 + 8))(v0 + v10, v21);
  v17 = sub_22766A4C0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v14, 1, v17))
  {
    (*(v18 + 8))(v0 + v14, v17);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | v9 | v13 | 7);
}

uint64_t sub_226EE35FC()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE36C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE370C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE3754()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE3840@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276645A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EE386C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276692B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EE3898()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE38E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE3A00()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE3AC4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE3B1C()
{
  v1 = sub_227667E50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EE3BC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE3C08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE3C58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE3C90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE3CD0()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EE3D6C()
{
  v1 = sub_22766B780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v14 = v3 | v8;
  v10 = (*(v7 + 64) + v3 + v9) & ~v3;
  v11 = *(v0 + 16);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12(v0 + v10, v1);

  return MEMORY[0x2821FE8E8](v0, v10 + v5, v14 | 7);
}

uint64_t sub_226EE3EF4()
{
  v1 = sub_22766B780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v16 = v1;
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v17 = v5;
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v2 + 8);
  v15(v0 + v4, v16);
  (*(v7 + 8))(v0 + v9, v6);

  v12 = *(v0 + v11 + 8);
  if (v12 >> 60 != 15)
  {
    sub_226EDC420(*(v0 + v11), v12);
  }

  v13 = (v3 + v11 + 16) & ~v3;
  v15(v0 + v13, v16);

  return MEMORY[0x2821FE8E8](v0, v13 + v17, v3 | v8 | 7);
}

uint64_t sub_226EE40C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EE417C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276624A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EE4234()
{
  v1 = sub_227667A70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE42BC()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v18 = *(v2 + 80);
  v3 = (v18 + 24) & ~v18;
  v4 = *(v2 + 64);
  v5 = sub_227667A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v17 = *(v10 + 64);
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v14 = sub_22766A4C0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v12, 1, v14))
  {
    (*(v15 + 8))(v0 + v12, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v17, v18 | v7 | v11 | 7);
}

uint64_t sub_226EE44F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4530()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE4568()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE45A0()
{
  v1 = sub_227664F30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE4664()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE46B8()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE4740()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4784()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE47D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE4874()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE48AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE48E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EE4994()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE49E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4A84()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EE4AD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4B08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4B40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE4B80()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4BC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4BF8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE4C44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE4C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EE4D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EE4D78()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EE4DC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4E38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4E88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4EC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE4F40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4F90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE4FC8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE5064()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE50C4()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2276631F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EE523C()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_226EDC420(*(v0 + v6), *(v0 + v6 + 8));
  v9 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_226EE532C()
{
  v14 = sub_2276624A0();
  v1 = *(v14 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_227666130();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v15 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3, v14);

  (*(v6 + 8))(v0 + v8, v5);
  sub_226EDC420(*(v0 + v9), *(v0 + v9 + 8));

  v12 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v15 | 7);
}

uint64_t sub_226EE54D4()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227666130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE5670()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE5704()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE5740()
{
  MEMORY[0x22AA9A540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE5790()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE57D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE5808()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE5850()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE5898()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE58D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE5908()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE5950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE5A80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_226EB2DFC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_226EE5ACC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE5B54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE5BBC()
{
  v1 = sub_227667830();
  v2 = *(v1 - 8);
  v31 = *(v2 + 80);
  v3 = (v31 + 24) & ~v31;
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v29 = *(v5 + 80);
  v6 = (v4 + v3 + v29 + 1) & ~v29;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext();
  v9 = *(*(v8 - 1) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v28 = *(*(v8 - 1) + 64);
  v30 = sub_22766BA80();
  v11 = *(v30 - 8);
  v12 = *(v11 + 80);
  v27 = *(v11 + 64);
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6, 1, v14))
  {
    (*(v15 + 8))(v0 + v6, v14);
  }

  v16 = v0 + v10;
  v17 = v8[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v10 + v17, v18);
  v19 = v8[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v10 + v19, v20);
  v21 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v10 + v28 + v12) & ~v12;
  v24 = (v23 + v27) & 0xFFFFFFFFFFFFFFF8;
  (*(v11 + 8))(v0 + v23, v30);
  v25 = *(v0 + v24 + 8);

  return MEMORY[0x2821FE8E8](v0, v24 + 16, v31 | v29 | v9 | v12 | 7);
}

uint64_t sub_226EE5F64()
{
  v1 = sub_227667830();
  v2 = *(v1 - 8);
  v32 = *(v2 + 80);
  v3 = (v32 + 25) & ~v32;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v31 = *(v5 + 80);
  v6 = (v4 + v31 + 8) & ~v31;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext();
  v9 = *(*(v8 - 1) + 80);
  v27 = (v6 + v7 + v9) & ~v9;
  v29 = *(*(v8 - 1) + 64);
  v30 = sub_22766BA80();
  v10 = *(v30 - 8);
  v11 = *(v10 + 80);
  v28 = *(v10 + 64);
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = *(v0 + v4);

  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6, 1, v14))
  {
    (*(v15 + 8))(v0 + v6, v14);
  }

  v16 = v0 + v27;
  v17 = v8[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v27 + v17, v18);
  v19 = v8[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v27 + v19, v20);
  v21 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v27 + v29 + v11) & ~v11;
  v24 = (v23 + v28) & 0xFFFFFFFFFFFFFFF8;
  (*(v10 + 8))(v0 + v23, v30);
  v25 = *(v0 + v24 + 8);

  return MEMORY[0x2821FE8E8](v0, v24 + 16, v32 | v31 | v9 | v11 | 7);
}

uint64_t sub_226EE633C()
{
  v30 = sub_227664350();
  v1 = *(v30 - 8);
  v40 = *(v1 + 80);
  v2 = *(v1 + 64);
  v29 = sub_227664DB0();
  v3 = *(v29 - 8);
  v39 = *(v3 + 80);
  v4 = (((v40 + 16) & ~v40) + v2 + v39) & ~v39;
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = sub_22766B7F0();
  v6 = *(v28 - 8);
  v38 = *(v6 + 80);
  v7 = (v5 + v38 + 8) & ~v38;
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v37 = *(v9 + 80);
  v10 = (v8 + v37 + v7 + 2) & ~v37;
  v11 = *(v9 + 64);
  v12 = type metadata accessor for MetricRecordingContext();
  v35 = *(*(v12 - 1) + 80);
  v31 = (v10 + v11 + v35) & ~v35;
  v34 = *(*(v12 - 1) + 64);
  v36 = sub_22766BA80();
  v13 = *(v36 - 8);
  v33 = *(v13 + 80);
  v32 = *(v13 + 64);
  (*(v1 + 8))(v0 + ((v40 + 16) & ~v40), v30);
  (*(v3 + 8))(v0 + v4, v29);
  v14 = *(v0 + v5);

  (*(v6 + 8))(v0 + v7, v28);
  v15 = sub_227665AD0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v10, 1, v15))
  {
    (*(v16 + 8))(v0 + v10, v15);
  }

  v17 = v0 + v31;
  v18 = v12[5];
  v19 = sub_227666C80();
  (*(*(v19 - 8) + 8))(v0 + v31 + v18, v19);
  v20 = v12[6];
  v21 = sub_2276666A0();
  (*(*(v21 - 8) + 8))(v0 + v31 + v20, v21);
  v22 = v12[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v16 + 8))(v17 + v22, v15);
  }

  v24 = (v31 + v34 + v33) & ~v33;
  v25 = (v32 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v13 + 8))(v0 + v24, v36);
  v26 = *(v0 + v25);

  return MEMORY[0x2821FE8E8](v0, v25 + 8, v40 | v39 | v38 | v37 | v35 | v33 | 7);
}

uint64_t sub_226EE6854()
{
  v1 = sub_227666C40();
  v2 = *(v1 - 8);
  v31 = *(v2 + 80);
  v3 = (v31 + 24) & ~v31;
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v29 = *(v5 + 80);
  v6 = (v4 + v3 + v29 + 1) & ~v29;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext();
  v9 = *(*(v8 - 1) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v28 = *(*(v8 - 1) + 64);
  v30 = sub_22766BA80();
  v11 = *(v30 - 8);
  v12 = *(v11 + 80);
  v27 = *(v11 + 64);
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6, 1, v14))
  {
    (*(v15 + 8))(v0 + v6, v14);
  }

  v16 = v0 + v10;
  v17 = v8[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v10 + v17, v18);
  v19 = v8[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v10 + v19, v20);
  v21 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v10 + v28 + v12) & ~v12;
  v24 = (v27 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v11 + 8))(v0 + v23, v30);
  v25 = *(v0 + v24);

  return MEMORY[0x2821FE8E8](v0, v24 + 8, v31 | v29 | v9 | v12 | 7);
}

uint64_t sub_226EE6BFC()
{
  v1 = sub_227666C40();
  v2 = *(v1 - 8);
  v32 = *(v2 + 80);
  v3 = (v32 + 25) & ~v32;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v31 = *(v5 + 80);
  v6 = (v4 + v31 + 8) & ~v31;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for MetricRecordingContext();
  v9 = *(*(v8 - 1) + 80);
  v27 = (v6 + v7 + v9) & ~v9;
  v29 = *(*(v8 - 1) + 64);
  v30 = sub_22766BA80();
  v10 = *(v30 - 8);
  v11 = *(v10 + 80);
  v28 = *(v10 + 64);
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = *(v0 + v4);

  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v6, 1, v14))
  {
    (*(v15 + 8))(v0 + v6, v14);
  }

  v16 = v0 + v27;
  v17 = v8[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v27 + v17, v18);
  v19 = v8[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v27 + v19, v20);
  v21 = v8[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v27 + v29 + v11) & ~v11;
  v24 = (v28 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v10 + 8))(v0 + v23, v30);
  v25 = *(v0 + v24);

  return MEMORY[0x2821FE8E8](v0, v24 + 8, v32 | v31 | v9 | v11 | 7);
}

uint64_t sub_226EE6FE8()
{
  v1 = sub_2276651A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for MetricRecordingContext();
  v11 = *(*(v10 - 1) + 80);
  v27 = *(*(v10 - 1) + 64);
  v12 = (v9 + v11 + v8 + 1) & ~v11;
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v8, 1, v14))
  {
    (*(v15 + 8))(v0 + v8, v14);
  }

  v16 = v0 + v12;
  v17 = v10[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v12 + v17, v18);
  v19 = v10[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v12 + v19, v20);
  v21 = v10[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v12 + v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v0 + ((v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));

  v25 = *(v0 + v23);

  return MEMORY[0x2821FE8E8](v0, v23 + 8, v3 | v7 | v11 | 7);
}

uint64_t sub_226EE72F8()
{
  v1 = sub_2276651A0();
  v2 = *(v1 - 8);
  v28 = *(v2 + 80);
  v3 = (v28 + 25) & ~v28;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MetricRecordingContext();
  v10 = *(*(v9 - 1) + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v27 = *(*(v9 - 1) + 64);
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = *(v0 + v4);

  v14 = sub_227665AD0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  v16 = v0 + v11;
  v17 = v9[5];
  v18 = sub_227666C80();
  (*(*(v18 - 8) + 8))(v0 + v11 + v17, v18);
  v19 = v9[6];
  v20 = sub_2276666A0();
  (*(*(v20 - 8) + 8))(v0 + v11 + v19, v20);
  v21 = v9[7];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(v15 + 8))(v16 + v21, v14);
  }

  v23 = (v11 + v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v0 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));

  v25 = *(v0 + v23);

  return MEMORY[0x2821FE8E8](v0, v23 + 8, v28 | v6 | v10 | 7);
}

uint64_t sub_226EE7620()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE7670()
{
  v1 = sub_227665E10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = sub_227663260();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8, 1, v11))
  {
    (*(v12 + 8))(v0 + v8, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_226EE7840()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = sub_227663260();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EE7998()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE7A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2276694E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226EE7B2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2276694E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226EE7BD4()
{
  v1 = sub_227667370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE7CB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE7D00()
{
  v1 = sub_227664CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227665C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE7E74()
{
  v1 = sub_227667370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE7FD8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE8014()
{
  v1 = sub_227667500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE817C()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE8248()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8298()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE82E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE8320()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8358(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226EE83C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2276624A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_226EE8448()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8544()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE85A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE8688()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE8720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227663CD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226EE8810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227663CD0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226EE890C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227667100();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227665C20();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226EE89FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227667100();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227665C20();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226EE8AF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8B30()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE8BA8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226EE8BC0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE8BF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE8C48()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE8CA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226EE8CF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8D3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE8D7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE8DC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EE8EF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE8F38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE8FC8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE9018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE90AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE90EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE914C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE938C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v21 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v13 = *(v7 + 48) + 24 * v11;
      v25 = *v13;
      v27 = *(v13 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v17 = *(v7 + 48) + 24 * v11;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    sub_226EB396C(v18, v19, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v22;
    sub_226EB396C(a2, a3, v21);
    sub_226EE983C(a2, a3, v21, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v21;
    return 1;
  }
}

uint64_t sub_226EE9590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
  result = sub_22766CDC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v6 + 40);
      v33 = *(v19 + 16);
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v21;
      *(v15 + 8) = v20;
      *(v15 + 16) = v33;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v8, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_226EE983C(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_226EE9590(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7B8AA0, &unk_227671720, sub_226EB396C);
      goto LABEL_12;
    }

    sub_226EE9A74(v8 + 1);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  result = sub_22766D3F0();
  v12 = -1 << *(v10 + 32);
  a4 = result & ~v12;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    sub_226F48150();
    sub_226EC1E18();
    do
    {
      v14 = *(v10 + 48) + 24 * a4;
      v23 = *v14;
      v24 = *(v14 + 16);
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v15 = *v20;
  *(*v20 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v16 = *(v15 + 48) + 24 * a4;
  *v16 = v7;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EE9A74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
  result = sub_22766CDC0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_22766D370();
      sub_226EB396C(v20, v21, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
      v11 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_226EE9D00()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE9D38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9D70()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9DAC()
{
  v1 = sub_2276691E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EE9EFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9F34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE9F7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9FB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE9FEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226EEA02C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEA064()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEA09C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F0, &qword_22767A288);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB2F0, &qword_22767A288);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_2272A8A58(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_226EEA2D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B8E00, &qword_227672198);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226EA9990(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_226EEA504@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B8E00, &qword_227672198);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226EA9990(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t sub_226EEA894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_226EEA964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276624A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_226EEAA2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEAA6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEAAA4()
{
  v1 = sub_227665350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EEAB88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEABD4()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EEAD28()
{
  v1 = sub_227665350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_226EEAE30()
{
  v1 = sub_22766AAF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227665350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EEAFB8()
{
  v1 = sub_227668BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_226EEB090()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB148()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB180()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB244()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB2A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB2DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EEB330()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEB380()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEB3CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB42C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9F8, &unk_22767B6A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEB5AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB60C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB64C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEB6C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227667DF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_226EEB7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_227667DF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_226EEB880()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEB8E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEB91C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEB9B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEB9E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEBA7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEBB48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEBBAC()
{
  v1 = sub_227668700();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEBC38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEBC78()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_226EEBCC8()
{
  v1 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEBD10()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEBD48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EEBD88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_226EEBDC8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226EEBE00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEBE38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEBE70()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_226EEBEB8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EEBEF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEBF28()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_226EEBF80()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEBFC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC12C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC050, &unk_22767C398);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226EEC1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC050, &unk_22767C398);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226EEC298()
{
  v1 = sub_227665680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEC364()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC39C()
{
  v1 = sub_2276682A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EEC438()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEC480()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEC4B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EEC4F8()
{
  v1 = sub_227668390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEC5BC()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 240) & ~v23;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v22 = *(v5 + 80);
  v6 = (v4 + v22) & ~v22;
  v7 = *(v5 + 64);
  v21 = sub_227667A70();
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v20 = *(v12 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  (*(v2 + 8))(v0 + v3, v1);
  v15 = sub_2276638D0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v6, 1, v15))
  {
    (*(v16 + 8))(v0 + v6, v15);
  }

  (*(v8 + 8))(v0 + v10, v21);
  v17 = sub_22766A4C0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v14, 1, v17))
  {
    (*(v18 + 8))(v0 + v14, v17);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | v9 | v13 | 7);
}

uint64_t sub_226EEC90C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC958()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEC9AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEC9EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EECA24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EECA64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EECB60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EECB98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EECBEC()
{
  v1 = sub_227668E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EECCC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EECD04()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EECD68()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EECDF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EECE2C()
{
  v1 = sub_227667100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EECF3C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EECFD4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EED0C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC248, &qword_22767D368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EED198()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EED1E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EED220()
{
  v1 = sub_227665DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EED460(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EED4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EED53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227662750();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_226EED62C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227662750();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_226EED728()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEDC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667760();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EEDD00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EEEED4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEEF10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEEF4C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EEEF94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEEFCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEF010()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEF048()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEF080()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEF0D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EEF11C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EEF17C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEF1B4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EEF200()
{
  v1 = sub_227664900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EEF41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EEF4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EEF5B4()
{
  v1 = sub_227668F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for InferenceProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[10]));
  v12 = *(v0 + v8 + v6[11]);

  v13 = *(v0 + v8 + v6[12]);

  v14 = *(v0 + v8 + v6[13]);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_226EEF774()
{
  v1 = sub_227668F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TransportSerializableJournalRecorder() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = (type metadata accessor for InferenceProvider() - 8);
  v11 = *(*v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v3 | v7 | v11;
  v14 = (*(*v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 8))(v0 + v8, v15);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v16 - 8) + 8))(v0 + v12, v16);
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v12 + v10[10]));
  v17 = *(v0 + v12 + v10[11]);

  v18 = *(v0 + v12 + v10[12]);

  v19 = *(v0 + v12 + v10[13]);

  v20 = *(v0 + v14);

  v21 = *(v0 + v14 + 8);

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v13 | 7);
}

uint64_t sub_226EEFA10()
{
  v1 = sub_227668F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for InferenceProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[10]));
  v12 = *(v0 + v8 + v6[11]);

  v13 = *(v0 + v8 + v6[12]);

  v14 = *(v0 + v8 + v6[13]);

  v15 = *(v0 + v10);

  v16 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_226EEFBF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EEFC28()
{
  v1 = sub_227667100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EEFD08()
{
  v1 = sub_227663010();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for InferenceProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v8 + v6[10]));
  v14 = *(v0 + v8 + v6[11]);

  v15 = *(v0 + v8 + v6[12]);

  v16 = *(v0 + v8 + v6[13]);

  v17 = *(v0 + v10);

  v18 = *(v0 + v11);

  v19 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v9 | 7);
}

uint64_t sub_226EEFF10()
{
  v1 = (type metadata accessor for InferenceProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_227663FA0();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_227667370();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[10]));
  v15 = *(v0 + v3 + v1[11]);

  v16 = *(v0 + v3 + v1[12]);

  v17 = *(v0 + v3 + v1[13]);

  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v19, v13 | 7);
}

uint64_t sub_226EF01BC()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_226EF02BC()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v3(v0 + v5, v1);
  v9 = *(v0 + v7);

  v3(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v6, v4 | 7);
}

uint64_t sub_226EF038C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_226EF043C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = *(type metadata accessor for AssetLoaderResponse() - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9 + v7) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v14 = *(v0 + v6);

  v13(v0 + v7, v1);
  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 8))(v0 + v10, v15);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_226EF05E4()
{
  v1 = *(type metadata accessor for AssetLoaderResponse() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2276624A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF06B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF06F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF079C()
{
  v16 = sub_2276624A0();
  v1 = *(v16 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v15 = *(v5 + 64);
  v17 = sub_2276639B0();
  v8 = *(v17 - 8);
  v9 = *(v8 + 80);
  v14 = *(v8 + 64);
  v10 = *(v0 + 16);

  v11 = *(v1 + 8);
  v11(v0 + v3, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v11(v0 + v7, v16);
  }

  v12 = (v7 + v15 + v9) & ~v9;
  (*(v8 + 8))(v0 + v12, v17);

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v2 | v6 | v9 | 7);
}

uint64_t sub_226EF09AC()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 16) & ~v17;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v15 = *(v5 + 64);
  v16 = sub_2276624A0();
  v8 = *(v16 - 8);
  v9 = *(v8 + 80);
  v14 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v11 = sub_227663CF0();
    (*(*(v11 - 8) + 8))(v0 + v7, v11);
  }

  v12 = (v7 + v15 + v9) & ~v9;
  (*(v8 + 8))(v0 + v12, v16);

  return MEMORY[0x2821FE8E8](v0, v12 + v14, v17 | v6 | v9 | 7);
}

uint64_t sub_226EF0C40()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_226EF0CF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF0D3C()
{
  v1 = sub_227665490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF0EE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF0F38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF0F84()
{
  v1 = sub_2276668A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EF110C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF1144()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226EF11D4()
{
  v1 = sub_2276668A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);

  sub_226EDC420(*(v0 + 3), *(v0 + 4));
  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF135C()
{
  v1 = sub_227666230();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_226EF1490()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF14C8()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  sub_226EDC420(*(v0 + v5), *(v0 + v5 + 8));

  sub_226EDC420(*(v0 + v7), *(v0 + v7 + 8));

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_226EF15D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF1624()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF16F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF17BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1814()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF18F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF1930()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1968()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF19E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1A74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF1AB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF1B04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1CB8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF1DD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_226EF1E18@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

__n128 sub_226EF1E8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_226EF1EB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF1EE8()
{
  v1 = (type metadata accessor for SyncZoneChangeset() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 32);

  v6 = sub_2276694E0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_226EDC420(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  v7 = (v0 + v3 + v1[8]);
  v8 = *v7;

  v9 = v7[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF2004()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF2068()
{
  v1 = (type metadata accessor for KeyCertificate() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_2276624A0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_226EDC420(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF215C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF21B4()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF2250()
{
  v1 = sub_227666130();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF22D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2318()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227666230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_226EF2490()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF24E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2570()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF261C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF276C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF27D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276646D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF2848(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF28B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF2924@<X0>(void *a1@<X8>)
{
  result = sub_227664000();
  *a1 = v3;
  return result;
}

uint64_t sub_226EF2950()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF29B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF2A0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF2A5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2AEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2B30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2B68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2BA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2BF4()
{
  v1 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF2C3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF2D54()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF2DA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF2DF0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF2E28()
{
  v1 = sub_227668AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF3008()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF306C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF310C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3144()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF31A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF31F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF332C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_226EF3388()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

__n128 sub_226EF36EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_226EF3718()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF37EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF385C(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_227666C80();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_2276666A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for MetricServiceSubscriptionState();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

_BYTE *sub_226EF39C0(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
    return result;
  }

  v8 = sub_227666C80();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2276666A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for MetricServiceSubscriptionState();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_226EF3B40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3C60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_226EF3EB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3EE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3F20()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF3F60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3F98()
{
  MEMORY[0x22AA9A540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF3FDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4028()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF409C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF40D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF410C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF416C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_226EF41B4()
{
  v1 = sub_227666600();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF4284()
{
  v1 = sub_227667900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF4320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF4404()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF443C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF447C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF44BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF44F4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF45A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22766B4C0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_2276627D0();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_226EF4720(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_22766B4C0();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_2276627D0();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_226EF48A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF48EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4938()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF4974()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF4A4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4A84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF4ABC()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF4B24()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF4B84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4C1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4CA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4CDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4D28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF4D60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF4D98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF4E44()
{
  v1 = v0[3];

  sub_226EDC420(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF4E84()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EF5900()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF5938()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF5970()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF59B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF59E8()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_226EB2DFC(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EF5A40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF5A8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF5C7C()
{
  v1 = sub_2276678C0();
  v2 = *(v1 - 8);
  v48 = *(v2 + 80) & 0xF8;
  v3 = (*(v2 + 64) + 263) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[2];

  v11 = v0[3];

  v12 = v0[4];

  v13 = v0[5];

  v14 = v0[6];

  v15 = v0[7];

  v16 = v0[8];

  v17 = v0[9];

  v18 = v0[10];

  v19 = v0[11];

  v20 = v0[12];

  v21 = v0[13];

  v22 = v0[14];

  v23 = v0[15];

  v24 = v0[16];

  v25 = v0[17];

  v26 = v0[18];

  v27 = v0[19];

  v28 = v0[20];

  v29 = v0[21];

  v30 = v0[22];

  v31 = v0[23];

  v32 = v0[24];

  v33 = v0[25];

  v34 = v0[26];

  v35 = v0[27];

  v36 = v0[28];

  v37 = v0[29];

  v38 = v0[30];

  v39 = v0[31];

  (*(v2 + 8))(v0 + 32, v1);
  v40 = *(v0 + v3);

  v41 = *(v0 + v4);

  v42 = *(v0 + v5);

  v43 = *(v0 + v6);

  v44 = *(v0 + v7);

  v45 = *(v0 + v8);

  v46 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v48 | 7);
}

uint64_t sub_226EF5EC8()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF5FF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF6048()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF6134()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF623C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF6364()
{
  v1 = sub_227663FA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF64FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EF655C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF660C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF666C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF66DC()
{
  v1 = sub_227665630();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF6764()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF67A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF6848()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF6D40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF6DDC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF6E48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF6EA4()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF6F40()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF7048()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF70B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF70F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF7218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276627D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_227667370();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226EF733C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276627D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_227667370();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226EF7460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EF751C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276694E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EF75D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF7618()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF7650()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_226EF76A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF76DC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF7724()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF7770()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF77A8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF77E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF7898()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF78F0()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_226EF79C0()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2276685B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EF7B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227666F40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EF7B4C()
{
  v1 = sub_2276654E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF7BE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF7C24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7C98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF7CD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7E10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF7E78()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_226EB4548(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EF7F68()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  sub_226EB4548(*(v0 + 16), *(v0 + 24));
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF8038()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  sub_226EB4548(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_226EF8118()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF8150()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF82C8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF8330()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF8398()
{
  v1 = (type metadata accessor for AssetBundleHandler.DownloadedAssetBundle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = sub_2276624A0();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = *(v0 + v3 + v1[7] + 8);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_226EF8518()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF8564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EF8624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276624A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EF887C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF88B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EF88F4()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  v9 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_226EF89EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF8A3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF8A88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF8AC8()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_226EF8BF0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF8CBC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF8CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_226EF8DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276694E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_226EF8F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EF8F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664EC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EF8FFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9038()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EF9080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF90B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EF9128()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9160()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9198()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF91D4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF9360()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF93A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF93F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9428()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF94DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EF9524()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF955C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF9990()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF9A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF9AB8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF9AF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EF9B9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9BD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EF9C0C()
{
  v1 = sub_2276640A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EF9E08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EF9ECC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9F90()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EF9FE8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EFA020()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFA06C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFA0B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFA118()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFA360()
{
  v1 = sub_227665350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EFA5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2276624A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226EFA668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2276624A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226EFA70C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EFA870()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 9, v10 | 7);
}

uint64_t sub_226EFA9D0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AssetMediaStreamLoader.TaskResult() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v8 + 24);

  v14 = v6[8];
  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);
  v16 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_226EFAB6C()
{
  v1 = sub_227665490();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFABF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFAC40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EFAC80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFACC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFAD34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFAD6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFADA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFADDC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFAE2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFAEA8()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFAF6C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_226EFB04C()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AssetMediaStreamLoader.TaskResult() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v8 + 8);

  v12 = *(v0 + v8 + 24);

  v13 = v6[8];
  v14 = sub_2276624A0();
  (*(*(v14 - 8) + 8))(v0 + v8 + v13, v14);
  v15 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_226EFB35C()
{
  v1 = (type metadata accessor for MetricRecordingContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = v1[7];
  v8 = sub_227666C80();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[8];
  v10 = sub_2276666A0();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[9];
  type metadata accessor for MetricServiceSubscriptionState();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_227665AD0();
    (*(*(v13 - 8) + 8))(v6 + v11, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EFB4F0()
{
  v1 = *(type metadata accessor for MetricServiceSubscriptionState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = sub_227665AD0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EFB610()
{
  v1 = *(type metadata accessor for AssetLoaderResponse() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_2276624A0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_226EFB890(void *a1)
{
  [a1 setQualityOfService_];

  return [a1 setPreferAnonymousRequests_];
}

uint64_t sub_226EFB8F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFB9A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFBA50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFBA88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFBAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_227662750();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_226EFBBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_227662750();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_226EFBD3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EFBD74()
{
  v1 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v19 = sub_227668BB0();
  v3 = *(v19 - 8);
  v4 = *(v3 + 80);
  v17 = *(v3 + 64);
  v20 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = *(v5 + 8);

  __swift_destroy_boxed_opaque_existential_0((v5 + 16));
  v7 = v1[6];
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = v1[8];
  if (!(*(v9 + 48))(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (((v2 + 16) & ~v2) + v18 + v4) & ~v4;
  v13 = (v17 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + v1[9] + 8);

  (*(v3 + 8))(v20 + v12, v19);
  v15 = *(v20 + v13);

  return MEMORY[0x2821FE8E8](v20, v13 + 8, v2 | v4 | 7);
}

uint64_t sub_226EFBF88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFBFD8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC02C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFC06C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC0E4()
{
  v1 = sub_227668BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_227665350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_226EFC2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662010();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_226EFC30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662010();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226EFC37C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC3FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_226EFC43C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC48C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC4C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC4FC()
{
  v1 = sub_227665AD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFC5C0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFC60C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC658()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC698()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC6D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC70C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFC744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFC7D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFC824()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC85C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFC8D4()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EFC984()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFC9BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFCB18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFCB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226EFCC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226EFCCDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EFCD14()
{
  v1 = sub_2276655F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EFCDB8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EFCDF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EFCE9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFCED4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFCF0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EFCF44()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226EFCFF4()
{
  v1 = (type metadata accessor for AssetRequestProvider.CatalogURLs() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_227663480();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + v4 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = sub_2276642E0();
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  v15 = *(v0 + v3 + v1[7]);

  v16 = v1[8];
  v17 = sub_2276624A0();
  (*(*(v17 - 8) + 8))(v0 + v3 + v16, v17);
  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v19, v13 | 7);
}

uint64_t sub_226EFD260()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFD298()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFD2D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EFD324()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EFD3C0()
{
  v1 = (type metadata accessor for AssetRequestProvider.CatalogURLs() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2276642E0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  v7 = v1[8];
  v8 = sub_2276624A0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226EFD4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276642E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2276624A0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_226EFD608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2276642E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2276624A0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_226EFDA80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EFDAB8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EFDAF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFDB28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EFDB60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_226EFDDB4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 longestWeeklyStreak];
  *a2 = result;
  return result;
}

id sub_226EFDDFC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 numberOfWorkoutsOver5Minutes];
  *a2 = result;
  return result;
}

id sub_226EFDE44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentBestEnergyBurnedPerModality];
  *a2 = result;
  return result;
}

id sub_226EFDE94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentStreak];
  *a2 = result;
  return result;
}

id sub_226EFDEE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfGuidedWorkoutsOver5MinutesPerModality];
  *a2 = result;
  return result;
}

id sub_226EFDF34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfWorkoutsOver5MinutesPerModality];
  *a2 = result;
  return result;
}

id sub_226EFDF9C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 length];
  *a2 = result;
  return result;
}

id sub_226EFDFE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226EFE03C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityReference];
  *a2 = result;
  return result;
}

id sub_226EFE08C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id sub_226EFE0D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226EFE11C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 percentageCompleted];
  *a2 = v4;
  return result;
}

id sub_226EFE1EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeZoneOffset];
  *a2 = result;
  return result;
}

id sub_226EFE2BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scoreSummary];
  *a2 = result;
  return result;
}

id sub_226EFE31C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reference];
  *a2 = result;
  return result;
}

id sub_226EFE3F4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 loadStatus];
  *a2 = result;
  return result;
}

id sub_226EFE43C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 reason];
  *a2 = result;
  return result;
}

id sub_226EFE58C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 loadStatus];
  *a2 = result;
  return result;
}

id sub_226EFE654@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 size];
  *a2 = result;
  return result;
}

id sub_226EFE724@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canFreeDeviceSlot];
  *a2 = result;
  return result;
}

id sub_226EFE874@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_226EFE9FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 expirationTime];
  *a2 = v4;
  return result;
}

id sub_226EFEA84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_226EFEB0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestTime];
  *a2 = v4;
  return result;
}

id sub_226EFEB94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 downloadToken];
  *a2 = result;
  return result;
}

id sub_226EFEC5C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226EFECAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 machTimestamp];
  *a2 = v4;
  return result;
}

id sub_226EFECFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226EFEDD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutBodyFocuses];
  *a2 = result;
  return result;
}

id sub_226EFEF34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMetadata];
  *a2 = result;
  return result;
}

id sub_226EFEF84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226EFEFD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 languageDisclaimer];
  *a2 = result;
  return result;
}

id sub_226EFF02C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogModalityReference];
  *a2 = result;
  return result;
}

id sub_226EFF084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id sub_226EFF0D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogModalityReference];
  *a2 = result;
  return result;
}

id sub_226EFF22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226EFF33C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alternativeActivityTypes];
  *a2 = result;
  return result;
}

id sub_226EFF38C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 features];
  *a2 = result;
  return result;
}

id sub_226EFF3DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 filterPropertyTypes];
  *a2 = result;
  return result;
}

id sub_226EFF42C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 healthKitActivityTypes];
  *a2 = result;
  return result;
}

id sub_226EFF53C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogModalityMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF58C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF5DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF62C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerMetadata];
  *a2 = result;
  return result;
}

id sub_226EFF804@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessibilityFeatures];
  *a2 = result;
  return result;
}

id sub_226EFF854@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributors];
  *a2 = result;
  return result;
}

id sub_226EFF8A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226EFF9B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributorIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFA04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 equipmentIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFA54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFAA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 musicGenreIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFAF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themeIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFB44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFB94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 workoutIdentifierss];
  *a2 = result;
  return result;
}

id sub_226EFFD2C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_226EFFD74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 category];
  *a2 = result;
  return result;
}

id sub_226EFFE44@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_226EFFE8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themes];
  *a2 = result;
  return result;
}

id sub_226EFFEE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogTipReferenceCategories];
  *a2 = result;
  return result;
}

id sub_226EFFFBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 elapsedTime];
  *a2 = v4;
  return result;
}

id sub_226F00084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalTime];
  *a2 = v4;
  return result;
}

id sub_226F0014C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 categoryIdentifiers];
  *a2 = result;
  return result;
}

id sub_226F00424@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessibilityFeatures];
  *a2 = result;
  return result;
}

id sub_226F00474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 availableAudioLanguages];
  *a2 = result;
  return result;
}

id sub_226F004C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 coachingEvents];
  *a2 = result;
  return result;
}

id sub_226F00514@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 commentaryEvents];
  *a2 = result;
  return result;
}

id sub_226F00564@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributors];
  *a2 = result;
  return result;
}

id sub_226F005B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 languageDisclaimers];
  *a2 = result;
  return result;
}

id sub_226F00604@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaMoments];
  *a2 = result;
  return result;
}

id sub_226F00654@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 musicTracks];
  *a2 = result;
  return result;
}

id sub_226F006A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226F006F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerEvents];
  *a2 = result;
  return result;
}

id sub_226F007C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F0080C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 episode];
  *a2 = result;
  return result;
}

id sub_226F00954@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bodyFocusIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F009A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributorIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F009F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 equipmentIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00A44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 musicGenreIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00A94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skillLevelIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00AE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themeIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00B34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerIdentifierss];
  *a2 = result;
  return result;
}

id sub_226F00B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traits];
  *a2 = result;
  return result;
}

id sub_226F00BDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutReference];
  *a2 = result;
  return result;
}

id sub_226F00C2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F00CF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leadDuration];
  *a2 = v4;
  return result;
}

id sub_226F00D3C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rangeLowerBound];
  *a2 = result;
  return result;
}

id sub_226F00D84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rangeUpperBound];
  *a2 = result;
  return result;
}

id sub_226F00DCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldShowPlus];
  *a2 = result;
  return result;
}

id sub_226F00E14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F00E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F00EEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F00F34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F00FFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F01164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMetadata];
  *a2 = result;
  return result;
}

id sub_226F011B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F01204@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 socialMediaHandles];
  *a2 = result;
  return result;
}

id sub_226F0125C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramContributors];
  *a2 = result;
  return result;
}

id sub_226F012AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutContributors];
  *a2 = result;
  return result;
}

id sub_226F0130C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 energyBurned];
  *a2 = v4;
  return result;
}

id sub_226F0135C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226F014FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramEquipment];
  *a2 = result;
  return result;
}

id sub_226F0154C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutEquipment];
  *a2 = result;
  return result;
}

id sub_226F0159C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activeCalorieRate];
  *a2 = v4;
  return result;
}

id sub_226F015E4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id sub_226F0162C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 basalCalorieRate];
  *a2 = v4;
  return result;
}

id sub_226F01674@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 count];
  *a2 = result;
  return result;
}

id sub_226F016C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226F01714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

id sub_226F0175C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityReference];
  *a2 = result;
  return result;
}

id sub_226F017EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heartRate];
  *a2 = v4;
  return result;
}

id sub_226F01934@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 standaloneMindfulSessionJob];
  *a2 = result;
  return result;
}

id sub_226F01A04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 workout];
  *a2 = result;
  return result;
}

id sub_226F01B54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sessions];
  *a2 = result;
  return result;
}

id sub_226F01BE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F01D84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutActivityType];
  *a2 = result;
  return result;
}

id sub_226F01DCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F01E1C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isIndoorWorkout];
  *a2 = result;
  return result;
}

id sub_226F01E6C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutActivityType];
  *a2 = result;
  return result;
}

id sub_226F01EB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sessionReference];
  *a2 = result;
  return result;
}

id sub_226F01F14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPrimary];
  *a2 = result;
  return result;
}

id sub_226F01FDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 capabilities];
  *a2 = result;
  return result;
}

id sub_226F0202C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F02084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F020D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F0211C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F021F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramModalities];
  *a2 = result;
  return result;
}

id sub_226F02244@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 onboardingSurveyResults];
  *a2 = result;
  return result;
}

id sub_226F02294@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 count];
  *a2 = result;
  return result;
}

id sub_226F022E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 achievementEnvironmentCache];
  *a2 = result;
  return result;
}

id sub_226F023BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramMusicGenres];
  *a2 = result;
  return result;
}

id sub_226F0240C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMusicGenres];
  *a2 = result;
  return result;
}

id sub_226F02524@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F025AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F02634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F02684@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F026EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 onboaringSurveyResults];
  *a2 = result;
  return result;
}

id sub_226F0274C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedModalityIdentifiers];
  *a2 = result;
  return result;
}

id sub_226F0279C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F027FC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F029D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 items];
  *a2 = result;
  return result;
}

id sub_226F02A24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F02A6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 healthKitActivityType];
  *a2 = result;
  return result;
}

id sub_226F02AF4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F02B7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playlist];
  *a2 = result;
  return result;
}

id sub_226F02D24@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 platform];
  *a2 = result;
  return result;
}

id sub_226F02D74@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F02F8C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityLowerMiddleScore];
  *a2 = v4;
  return result;
}

id sub_226F02FD4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityLowerScore];
  *a2 = v4;
  return result;
}

id sub_226F0301C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityUpperMiddleScore];
  *a2 = v4;
  return result;
}

id sub_226F03064@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 communityUpperScore];
  *a2 = v4;
  return result;
}

id sub_226F030AC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 elapsedSeconds];
  *a2 = result;
  return result;
}

id sub_226F030F4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 personalScore];
  *a2 = v4;
  return result;
}

id sub_226F0313C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 archivedSession];
  *a2 = result;
  return result;
}

id sub_226F03194@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activityType];
  *a2 = result;
  return result;
}

id sub_226F03224@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutDuration];
  *a2 = result;
  return result;
}

id sub_226F03374@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutSkillLevels];
  *a2 = result;
  return result;
}

id sub_226F03444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contributor];
  *a2 = result;
  return result;
}

id sub_226F03494@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainerMetadata];
  *a2 = result;
  return result;
}

id sub_226F03684@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 domain];
  *a2 = result;
  return result;
}

id sub_226F0370C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

id sub_226F037AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramThemes];
  *a2 = result;
  return result;
}

id sub_226F037FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutThemes];
  *a2 = result;
  return result;
}

id sub_226F0384C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F038D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leadDuration];
  *a2 = v4;
  return result;
}

id sub_226F0391C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

id sub_226F039A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutMetadata];
  *a2 = result;
  return result;
}

id sub_226F039FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramTrainers];
  *a2 = result;
  return result;
}

id sub_226F03A4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutTrainers];
  *a2 = result;
  return result;
}

id sub_226F03B9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preview];
  *a2 = result;
  return result;
}

id sub_226F03BEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 socialMediaHandles];
  *a2 = result;
  return result;
}

id sub_226F03D0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = v4;
  return result;
}

id sub_226F03D54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 healthKitActivityType];
  *a2 = result;
  return result;
}

id sub_226F03DDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F03E64@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 shownState];
  *a2 = result;
  return result;
}

id sub_226F03EB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogProgramWorkouts];
  *a2 = result;
  return result;
}

id sub_226F03FC0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_226F04070@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 variation];
  *a2 = result;
  return result;
}

id sub_226F040B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 schedule];
  *a2 = result;
  return result;
}

id sub_226F04110@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F04160@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F041B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 item];
  *a2 = result;
  return result;
}

id sub_226F04200@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plan];
  *a2 = result;
  return result;
}

id sub_226F04258@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredMusicGenres];
  *a2 = result;
  return result;
}

id sub_226F042A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredTrainers];
  *a2 = result;
  return result;
}

id sub_226F042F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

id sub_226F04350@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityPreference];
  *a2 = result;
  return result;
}

id sub_226F043A8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F043F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  *a2 = result;
  return result;
}

id sub_226F04440@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_226F04490@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 filterProperties];
  *a2 = result;
  return result;
}

id sub_226F044E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F04530@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_226F04580@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 item];
  *a2 = result;
  return result;
}

id sub_226F045D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

id sub_226F04720@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 item];
  *a2 = result;
  return result;
}

id sub_226F04818@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 workoutPlanLength];
  *a2 = result;
  return result;
}

id sub_226F04860@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityPreferences];
  *a2 = result;
  return result;
}

id sub_226F048B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 schedule];
  *a2 = result;
  return result;
}

id sub_226F04908@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 modalityPreference];
  *a2 = result;
  return result;
}

uint64_t sub_226F04958(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

_OWORD *sub_226F04970(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_226F04AAC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_226F04B18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226F04B38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_226F04B7C(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8330, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_226F04BE8(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8330, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_226F04C58(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_226F04CC4(uint64_t a1, id *a2)
{
  result = sub_22766BFE0();
  *a2 = 0;
  return result;
}

uint64_t sub_226F04D3C(uint64_t a1, id *a2)
{
  v3 = sub_22766BFF0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_226F04DBC@<X0>(uint64_t *a1@<X8>)
{
  sub_22766C000();
  v2 = sub_22766BFD0();

  *a1 = v2;
  return result;
}

uint64_t sub_226F04E24(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_226F04E90(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_226F04EFC(void *a1, uint64_t a2)
{
  v4 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_226F04FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_226F0502C()
{
  v2 = *v0;
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_226F0508C(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8370, type metadata accessor for FileProtectionType);
  v3 = sub_226F053F0(&qword_27D7B8378, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

_DWORD *sub_226F05148@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_226F05164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226F053F0(&qword_27D7B8328, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_226F051E8(uint64_t a1)
{
  v2 = sub_226F053F0(&qword_27D7B8380, type metadata accessor for URLResourceKey);
  v3 = sub_226F053F0(&qword_27D7B8388, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}