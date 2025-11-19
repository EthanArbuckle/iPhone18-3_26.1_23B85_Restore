uint64_t sub_1D9AE96C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53140);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDD34678 = result;
  return result;
}

id sub_1D9AE9710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 16) && (v9 = sub_1D99ED894(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    *a4 = v11;
    return v11;
  }

  else
  {
    sub_1D9A3E8F8();

    v13 = sub_1D9C7E25C();

    v14 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_1D9C11DE8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v16;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_1D9AE9814()
{
  sub_1D9AE99D0(v0 + OBJC_IVAR____TtC12VisualLookUp13SignpostEvent_signpostID);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostEvent()
{
  result = qword_1EDD34660;
  if (!qword_1EDD34660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9AE98DC()
{
  sub_1D9AE9978();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D9AE9978()
{
  if (!qword_1EDD2C6B0)
  {
    sub_1D9C7D8AC();
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C6B0);
    }
  }
}

uint64_t sub_1D9AE99D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9AE9A38()
{
  v63[1] = *MEMORY[0x1E69E9840];
  v2 = [v0 results];
  if (v2)
  {
    v3 = v2;
    sub_1D9A0835C(0, &qword_1ECB52488);
    v4 = sub_1D9C7DF2C();

    v5 = sub_1D9B8050C(v4);

    if (v5)
    {
      v53 = v5 >> 62;
      if (v5 >> 62)
      {
        v6 = sub_1D9C7E50C();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v52 = v1;
      v62 = v5;
      if (v6)
      {
        v7 = 0;
        v55 = v5 & 0xFFFFFFFFFFFFFF8;
        v56 = v5 & 0xC000000000000001;
        v8 = MEMORY[0x1E69E7CC8];
        v54 = v6;
        while (1)
        {
          if (v56)
          {
            v11 = MEMORY[0x1DA73E610](v7, v5);
          }

          else
          {
            if (v7 >= *(v55 + 16))
            {
              goto LABEL_47;
            }

            v11 = *(v5 + 8 * v7 + 32);
          }

          v12 = v11;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v60 = v8;
          v13 = [v11 featureName];
          v14 = sub_1D9C7DC7C();
          v16 = v15;

          v17 = [v12 featureValue];
          v18 = [v17 multiArrayValue];

          if (!v18)
          {
            v19 = v16;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_1D9C88F90;
            sub_1D9A0835C(0, &qword_1EDD2C390);
            *(v20 + 32) = sub_1D9C7E22C();
            v21 = objc_allocWithZone(MEMORY[0x1E695FED0]);
            v22 = sub_1D9C7DF1C();

            v63[0] = 0;
            v18 = [v21 initWithShape:v22 dataType:65568 error:v63];

            if (!v18)
            {
              v51 = v63[0];

              sub_1D9C7B70C();

              swift_willThrow();

              return;
            }

            v23 = v63[0];
            v16 = v19;
          }

          v57 = v7;
          v58 = v7 + 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63[0] = v60;
          v25 = v14;
          v26 = v16;
          v28 = sub_1D99ED894(v14, v16);
          v29 = v60[2];
          v30 = (v27 & 1) == 0;
          v31 = v29 + v30;
          if (__OFADD__(v29, v30))
          {
            goto LABEL_48;
          }

          v32 = v27;
          if (v60[3] >= v31)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v27)
              {
                goto LABEL_7;
              }
            }

            else
            {
              sub_1D9C13480();
              if (v32)
              {
                goto LABEL_7;
              }
            }
          }

          else
          {
            sub_1D9C07D98(v31, isUniquelyReferenced_nonNull_native);
            v33 = sub_1D99ED894(v25, v26);
            if ((v32 & 1) != (v34 & 1))
            {
              sub_1D9C7E84C();
              __break(1u);
              return;
            }

            v28 = v33;
            if (v32)
            {
LABEL_7:

              v8 = v63[0];
              v9 = *(v63[0] + 7);
              v10 = *(v9 + 8 * v28);
              *(v9 + 8 * v28) = v18;

              goto LABEL_8;
            }
          }

          v8 = v63[0];
          *(v63[0] + (v28 >> 6) + 8) |= 1 << v28;
          v35 = (v8[6] + 16 * v28);
          *v35 = v25;
          v35[1] = v26;
          *(v8[7] + 8 * v28) = v18;

          v36 = v8[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_49;
          }

          v8[2] = v38;
LABEL_8:
          v7 = v57 + 1;
          v5 = v62;
          if (v58 == v54)
          {
            goto LABEL_31;
          }
        }
      }

      v8 = MEMORY[0x1E69E7CC8];
LABEL_31:
      if (v53)
      {
        v39 = sub_1D9C7E50C();
        v61 = v8;
        if (v39)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v39 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v61 = v8;
        if (v39)
        {
LABEL_33:
          v63[0] = MEMORY[0x1E69E7CC0];
          sub_1D99FE164(0, v39 & ~(v39 >> 63), 0);
          if (v39 < 0)
          {
            __break(1u);
          }

          v40 = 0;
          v41 = v63[0];
          v59 = v5 & 0xC000000000000001;
          do
          {
            if (v59)
            {
              v42 = MEMORY[0x1DA73E610](v40, v5);
            }

            else
            {
              v42 = *(v5 + 8 * v40 + 32);
            }

            v43 = v42;
            v44 = [v42 featureName];
            v45 = sub_1D9C7DC7C();
            v47 = v46;

            v63[0] = v41;
            v49 = v41[2];
            v48 = v41[3];
            if (v49 >= v48 >> 1)
            {
              sub_1D99FE164((v48 > 1), v49 + 1, 1);
              v41 = v63[0];
            }

            ++v40;
            v41[2] = v49 + 1;
            v50 = &v41[2 * v49];
            v50[4] = v45;
            v50[5] = v47;
            v5 = v62;
          }

          while (v39 != v40);

          goto LABEL_44;
        }
      }

      v41 = MEMORY[0x1E69E7CC0];
LABEL_44:
      type metadata accessor for EngineResult();
      swift_allocObject();
      sub_1D9BDC864(v41, v61);
      return;
    }
  }

  if (qword_1EDD349F0 != -1)
  {
LABEL_50:
    swift_once();
  }
}

uint64_t sub_1D9AEA038()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52410);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9C85660;
  *(v2 + 56) = sub_1D9A0835C(0, &qword_1EDD2A610);
  *(v2 + 64) = &off_1F5530540;
  *(v2 + 32) = v1;
  v3 = v1;
  return v2;
}

id sub_1D9AEA0B8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_1D99A17C8(v2, v11);
      sub_1D9979B9C(v11, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51140);
      sub_1D9A0835C(0, &qword_1EDD2A610);
      if ((swift_dynamicCast() & 1) != 0 && v10)
      {
        MEMORY[0x1DA73E0E0]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  sub_1D9A0835C(0, &qword_1EDD2A610);
  v3 = sub_1D9C7DF1C();

  *&v11[0] = 0;
  v4 = [v7 performRequests:v3 error:v11];

  if (v4)
  {
    return *&v11[0];
  }

  v6 = *&v11[0];
  sub_1D9C7B70C();

  return swift_willThrow();
}

uint64_t sub_1D9AEA328()
{
  sub_1D9AEA370();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_1D9AEA370()
{
  result = qword_1ECB53148;
  if (!qword_1ECB53148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53148);
  }

  return result;
}

unint64_t sub_1D9AEA3D8()
{
  result = qword_1ECB53150;
  if (!qword_1ECB53150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53150);
  }

  return result;
}

BOOL sub_1D9AEA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9B6848C(a3);
  v6 = (v5 + 48);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 3;
  }

  while ((sub_1D9C7E7DC() & 1) == 0);

  return v7 != 0;
}

BOOL sub_1D9AEA4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9B6834C(a3);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 3;
  }

  while ((sub_1D9C7E7DC() & 1) == 0);

  return v7 != 0;
}

BOOL sub_1D9AEA594(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D9AEA5C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D9AEA5F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D9AEA6C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D9B77374();

  *a1 = v2;
  return result;
}

uint64_t sub_1D9AEA708()
{
  sub_1D9AEA780();
  swift_allocError();
  *v0 = xmmword_1D9C84A30;
  return swift_willThrow();
}

unint64_t sub_1D9AEA780()
{
  result = qword_1ECB53158;
  if (!qword_1ECB53158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53158);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp25DomainModelRequestFactoryC14BaseClassErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1D9AEA7F8(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9AEA854(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1D9AEA8B0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D9AEA924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1D9AEA96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9AEAA04()
{
  result = qword_1ECB53160;
  if (!qword_1ECB53160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53160);
  }

  return result;
}

unint64_t sub_1D9AEAA5C()
{
  result = qword_1ECB53168;
  if (!qword_1ECB53168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53168);
  }

  return result;
}

unint64_t sub_1D9AEAAB4()
{
  result = qword_1ECB53170;
  if (!qword_1ECB53170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53170);
  }

  return result;
}

unint64_t sub_1D9AEAB0C()
{
  result = qword_1ECB53178;
  if (!qword_1ECB53178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53178);
  }

  return result;
}

uint64_t sub_1D9AEAB9C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1D9AEABDC(char *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v12 = sub_1D9C7BB1C();
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = *&a1[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v18 + 4);
  v19 = a1[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v18 + 4);
  if (v19 == 1)
  {
    sub_1D9AECC00();
    v21 = swift_allocError();
    *v22 = 1;
    a2(v21, 1);
  }

  else
  {
    v26 = a3;
    MEMORY[0x1EEE9AC00](v20);
    *(&v26 - 4) = a4;
    *(&v26 - 3) = a5;
    *(&v26 - 2) = v27;
    sub_1D9AECEA4(&qword_1ECB531D8, MEMORY[0x1E69BCC18]);
    sub_1D9C7D6BC();
    v23 = *(a4 + 160);
    if (v23)
    {
      [*(a4 + 160) queryID];
      sub_1D9C7BB0C();
    }

    v24 = v29;
    (*(v29 + 32))(v17, v14, v12);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (v23)
      {
        v25 = [v23 queryID];
      }

      else
      {
        v25 = 0;
      }

      sub_1D9AEAEC8(v17, v25, v23 == 0, a1, a2, v26);
    }

    (*(v24 + 8))(v17, v12);
  }
}

uint64_t sub_1D9AEAEC8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = a3;
  v59 = a1;
  v60 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB531C8);
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = v56 - v12;
  v13 = sub_1D9C7D8DC();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9C7DA7C();
  v17 = *(v16 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v7 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v56[1] = v21;
  v22 = sub_1D9C7DA9C();
  (*(v17 + 8))(v20, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v16 = sub_1D9AFAC84(0, v16[2] + 1, 1, v16);
    *(v20 + v11) = v16;
    goto LABEL_5;
  }

  v66[0] = 0xD000000000000011;
  v66[1] = 0x80000001D9CA9790;
  v66[2] = "Text Lookup On Server";
  v66[3] = 21;
  v67 = 2;
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v24 = sub_1D9AFD4B8(v66, 0);
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = sub_1D9AECD6C;
  v25[4] = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D9AECDA0;
  *(v26 + 24) = v25;
  static Logger.argos.getter(v15);
  v27 = a4;
  v28 = sub_1D9C7D8BC();
  v29 = sub_1D9C7E09C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56[0] = v11;
    v32 = v31;
    v65[0] = v31;
    *v30 = 136315138;
    sub_1D9C7B93C();
    sub_1D9AECEA4(&qword_1ECB53100, MEMORY[0x1E69695A8]);
    v33 = sub_1D9C7E7AC();
    v35 = sub_1D9A0E224(v33, v34, v65);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1D9962000, v28, v29, "Network fetch for task: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    v36 = v32;
    v11 = v56[0];
    MEMORY[0x1DA7405F0](v36, -1, -1);
    MEMORY[0x1DA7405F0](v30, -1, -1);
  }

  (*(v57 + 8))(v15, v58);
  v37 = v62;
  sub_1D9C7D0DC();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v27;
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v42 = v60;
  *(v41 + 16) = v40;
  *(v41 + 24) = v42;
  *(v41 + 32) = v61 & 1;
  *(v41 + 40) = v27;
  sub_1D99C7C60(&qword_1ECB531D0, &qword_1ECB531C8);
  v20 = v27;
  v43 = sub_1D9C7D94C();

  (*(v63 + 8))(v37, v11);
  v44 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1D9AECDFC;
  *(v45 + 24) = v26;
  v46 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_completions;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v7 + v46);
  *(v7 + v46) = 0x8000000000000000;
  sub_1D9C11F84(sub_1D9AECD6C, v45, v20 + v44, isUniquelyReferenced_nonNull_native);
  *(v7 + v46) = v64;
  swift_endAccess();
  v48 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_searchFetches;
  swift_beginAccess();

  v49 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v7 + v48);
  *(v7 + v48) = 0x8000000000000000;
  sub_1D9C11BE0(v43, v20 + v44, v49);
  *(v7 + v48) = v64;
  swift_endAccess();
  v50 = swift_allocObject();
  swift_weakInit();
  v22 = *(v20 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);

  os_unfair_lock_lock((v22 + 16));
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D9AECE54;
  *(v7 + 24) = v50;
  v11 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_onCancels;
  swift_beginAccess();
  v16 = *(v20 + v11);

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + v11) = v16;
  if ((v51 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v53 = v16[2];
  v52 = v16[3];
  if (v53 >= v52 >> 1)
  {
    v16 = sub_1D9AFAC84((v52 > 1), v53 + 1, 1, v16);
  }

  v16[2] = v53 + 1;
  v54 = &v16[2 * v53];
  v54[4] = sub_1D9AECE5C;
  v54[5] = v7;
  *(v20 + v11) = v16;
  swift_endAccess();
  os_unfair_lock_unlock((v22 + 16));
}

uint64_t sub_1D9AEB6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9AEB84C(a1, a3 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier);
  }

  return result;
}

uint64_t sub_1D9AEB754(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9AEBB74(a1, a3, a4 & 1, a5 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier);
  }

  return result;
}

uint64_t sub_1D9AEB7EC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9AEC4EC(a1);
  }

  return result;
}

void sub_1D9AEB84C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v4 = sub_1D9C7D0EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB531C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1D9C7DA7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 24);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1D9C7DA9C();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    sub_1D99AB100(a1, v10, &qword_1ECB531C0);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_1D9AECC00();
      v18 = swift_allocError();
      *v19 = 0;
      sub_1D9AEBF80(v23, v18, 1);
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_1D9AECEA4(&qword_1ECB531B8, MEMORY[0x1E69BDB40]);
      v20 = swift_allocError();
      (*(v5 + 16))(v21, v7, v4);
      sub_1D9AEBF80(v23, v20, 1);

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9AEBB74(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v37 = a1;
  v38 = a4;
  v32 = a3;
  v33 = a2;
  v5 = sub_1D9C7D0EC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D9C7BB3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB531B0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31[-v15];
  v17 = sub_1D9C7DA7C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v31[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = v4;
  v22 = *(v4 + 24);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1D9C7DA9C();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    sub_1D99AB100(v37, v16, &qword_1ECB531B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v34;
      v25 = v35;
      v27 = v36;
      (*(v35 + 32))(v34, v16, v36);
      sub_1D9AECEA4(&qword_1ECB531B8, MEMORY[0x1E69BDB40]);
      v28 = swift_allocError();
      (*(v25 + 16))(v29, v26, v27);
      sub_1D9AEBF80(v38, v28, 1);

      return (*(v25 + 8))(v26, v27);
    }

    else
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);
      v30 = sub_1D9A974BC(v10);
      sub_1D9B8598C(v33, v32 & 1, v30);
      sub_1D9AEBF80(v38, v30, 0);

      return (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9AEBF80(uint64_t a1, uint64_t a2, int a3)
{
  v46 = a3;
  v45 = a2;
  v5 = sub_1D9C7B93C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1D9C7D8DC();
  v50 = *(v11 - 8);
  *&v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9C7DA7C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v3;
  v19 = *(v3 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1D9C7DA9C();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  static Logger.argos.getter(v13);
  v22 = *(v6 + 16);
  v48 = v6 + 16;
  v49 = a1;
  v47 = v22;
  v22(v10, a1, v5);
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E09C();
  v25 = v5;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v54[0] = v27;
    *v26 = 136315138;
    sub_1D9AECEA4(&qword_1ECB53100, MEMORY[0x1E69695A8]);
    v28 = sub_1D9C7E7AC();
    v30 = v29;
    v31 = v10;
    v32 = v25;
    (*(v6 + 8))(v31, v25);
    v33 = sub_1D9A0E224(v28, v30, v54);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_1D9962000, v23, v24, "completing task: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x1DA7405F0](v27, -1, -1);
    MEMORY[0x1DA7405F0](v26, -1, -1);
  }

  else
  {

    v34 = v10;
    v32 = v5;
    (*(v6 + 8))(v34, v5);
  }

  (*(v50 + 8))(v13, v51);
  v35 = v53;
  v36 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_completions;
  swift_beginAccess();
  v37 = *(v35 + v36);
  v38 = v49;
  if (*(v37 + 16))
  {

    v39 = sub_1D99EE518(v38);
    if (v40)
    {
      v51 = *(*(v37 + 56) + 16 * v39);

      v41 = swift_allocObject();
      LODWORD(v53) = 0;
      *(v41 + 16) = v51;
      v42 = sub_1D9AECCD0;
      goto LABEL_10;
    }
  }

  v42 = 0;
  LODWORD(v53) = 1;
LABEL_10:
  v43 = v52;
  v44 = v47;
  v47(v52, v38, v32);
  swift_beginAccess();
  sub_1D9AC8060(0, v43);
  swift_endAccess();
  v44(v43, v38, v32);
  swift_beginAccess();
  sub_1D9AC8220(0, 0, v43);
  result = swift_endAccess();
  if ((v53 & 1) == 0)
  {

    v42(v45, v46 & 1);
    sub_1D9979BF4(v42);
    return sub_1D9979BF4(v42);
  }

  return result;
}

uint64_t sub_1D9AEC4EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9C7DA2C();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7DA4C();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7B93C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v18[1] = *(v2 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1D9AECC54;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);

  sub_1D9C7DA3C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D9AECEA4(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_1D9AEC8B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9AEC914(a2);
  }

  return result;
}

void sub_1D9AEC914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_searchFetches;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {

    sub_1D99EE518(a1);
    if (v4)
    {

      sub_1D9C7D93C();
    }

    else
    {
    }
  }

  sub_1D9AECC00();
  v5 = swift_allocError();
  *v6 = 1;
  sub_1D9AEBF80(a1, v5, 1);
}

uint64_t sub_1D9AEC9FC()
{

  v1 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_timeoutSeconds;
  v2 = sub_1D9C7DA1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextLookupServerFlow()
{
  result = qword_1ECB53198;
  if (!qword_1ECB53198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AECB1C()
{
  result = sub_1D9C7DA1C();
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

unint64_t sub_1D9AECC00()
{
  result = qword_1ECB531A8;
  if (!qword_1ECB531A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB531A8);
  }

  return result;
}

uint64_t sub_1D9AECC54()
{
  v1 = *(sub_1D9C7B93C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D9AEC8B4(v2, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9AECCD0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1D9AECD10(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  sub_1D9AFCCA4();
  return a3(&v6);
}

uint64_t sub_1D9AECDA0(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_1D9AFCCA4();
  return v2(&v5);
}

uint64_t sub_1D9AECDFC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1D9AECEA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9AECF00()
{
  result = qword_1ECB531E0;
  if (!qword_1ECB531E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB531E0);
  }

  return result;
}

VisualLookUp::S2Point __swiftcall S2Point.init(x:y:z:)(Swift::Double x, Swift::Double y, Swift::Double z)
{
  *v3 = x;
  v3[1] = y;
  v3[2] = z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

uint64_t S2Point.largestAbsComponent.getter()
{
  v1 = fabs(*v0);
  v2 = fabs(v0[1]);
  v3 = fabs(v0[2]);
  v4 = 2;
  if (v3 < v2)
  {
    v4 = 1;
  }

  if (v2 >= v1)
  {
    return v4;
  }

  else
  {
    return 2 * (v3 >= v1);
  }
}

Swift::Double __swiftcall S2Point.get(axis:)(Swift::Int axis)
{
  v2 = v1 + 1;
  if (axis != 1)
  {
    v2 = v1 + 2;
  }

  if (!axis)
  {
    v2 = v1;
  }

  return *v2;
}

double static S2Point.normalize(point:)@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = a1[1].f64[0];
  v3 = *a1;
  v4 = sqrt(vaddvq_f64(vmulq_f64(v3, v3)) + v2 * v2);
  if (v4 != 0.0)
  {
    v4 = 1.0 / v4;
  }

  result = v2 * v4;
  *a2 = vmulq_n_f64(v3, v4);
  a2[1].f64[0] = result;
  return result;
}

float64_t - prefix(_:)@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = -a1[1].f64[0];
  *a2 = vnegq_f64(*a1);
  a2[1].f64[0] = result;
  return result;
}

VisualLookUp::S2Point __swiftcall S2Point.crossProd(_:)(VisualLookUp::S2Point a1)
{
  v4 = *(v1 + 8);
  v5 = *(v3 + 8);
  *&v6.f64[0] = vdupq_laneq_s64(v4, 1).u64[0];
  v6.f64[1] = *v1;
  *&v7.f64[0] = vdupq_laneq_s64(v5, 1).u64[0];
  v7.f64[1] = *v3;
  v8 = *v3 * v4.f64[0];
  v9 = v8 - *v1 * v5.f64[0];
  *v2 = vsubq_f64(vmulq_f64(v6, v5), vmulq_f64(v4, v7));
  v2[1].f64[0] = v9;
  result.z = v4.f64[0];
  result.y = v8;
  result.x = v9;
  return result;
}

float64_t + infix(_:_:)@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = a1[1].f64[0] + a2[1].f64[0];
  *a3 = vaddq_f64(*a1, *a2);
  a3[1].f64[0] = result;
  return result;
}

float64_t - infix(_:_:)@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = a1[1].f64[0] - a2[1].f64[0];
  *a3 = vsubq_f64(*a1, *a2);
  a3[1].f64[0] = result;
  return result;
}

double S2Point.ortho.getter@<D0>(double *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = fabs(*v1);
  v6 = fabs(v3);
  v7 = fabs(v4);
  if (v6 < v5)
  {
    if (v7 < v5)
    {
      v8 = 1.0;
      v9 = 0.0;
      v10 = 0.0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v7 >= v6)
  {
LABEL_6:
    v10 = 1.0;
    v9 = 0.0;
    goto LABEL_7;
  }

  v10 = 0.0;
  v9 = 1.0;
LABEL_7:
  v8 = 0.0;
LABEL_8:
  v11 = v3 * v8 - v4 * v10;
  v12 = v4 * v9 - v2 * v8;
  v13 = v2 * v10 - v3 * v9;
  v14 = sqrt(v13 * v13 + v11 * v11 + v12 * v12);
  if (v14 != 0.0)
  {
    v14 = 1.0 / v14;
  }

  result = v13 * v14;
  *a1 = v11 * v14;
  a1[1] = v12 * v14;
  a1[2] = result;
  return result;
}

Swift::Double __swiftcall S2Point.angle(to:)(VisualLookUp::S2Point to)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v2[1];
  v6 = v2[2];
  v7 = *v1 * v6 - v4 * *v2;
  v8 = v3 * *v2 - *v1 * v5;
  return atan2(sqrt(v8 * v8 + (v4 * v5 - v3 * v6) * (v4 * v5 - v3 * v6) + v7 * v7), *v1 * *v2 + v3 * v5 + v4 * v6);
}

double × infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *&v5.f64[0] = vdupq_laneq_s64(v4, 1).u64[0];
  v5.f64[1] = *a2;
  *&v6.f64[0] = vdupq_laneq_s64(v3, 1).u64[0];
  v6.f64[1] = *a1;
  result = *a1 * v4.f64[0] - *a2 * v3.f64[0];
  *a3 = vsubq_f64(vmulq_f64(v3, v5), vmulq_f64(v6, v4));
  a3[1].f64[0] = result;
  return result;
}

uint64_t S2Point.hash(into:)()
{
  v1 = *v0 & 0x7FFFFFFFFFFFFFFFLL;
  v2 = 37 * v1 + 646 + 37 * (37 * v1 + 646 + v1) + 37 * (37 * v1 + 646 + 37 * (37 * v1 + 646 + v1) + v1);
  return MEMORY[0x1DA73EB00](v2 ^ HIDWORD(v2));
}

uint64_t S2Point.hashValue.getter()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  v2 = 37 * (v1 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (v1 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (v1 & 0x7FFFFFFFFFFFFFFFLL));
  MEMORY[0x1DA73EB00]((v2 + 37 * (v2 + (v1 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v2 + 37 * (v2 + (v1 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
  return sub_1D9C7E93C();
}

BOOL sub_1D9AED460(double *a1, double *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v4 < v3)
  {
    return 0;
  }

  if (v3 < v4)
  {
    return 1;
  }

  return a2[2] >= a1[2];
}

BOOL sub_1D9AED4BC(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0;
  }

  if (v4 < v3)
  {
    return 1;
  }

  return a1[2] >= a2[2];
}

BOOL sub_1D9AED518(double *a1, double *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v4 < v3)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return 0;
  }

  return a2[2] < a1[2];
}

uint64_t sub_1D9AED57C()
{
  sub_1D9C7E8DC();
  S2Point.hash(into:)();
  return sub_1D9C7E93C();
}

VisualLookUp::S2Point __swiftcall abs(x:)(VisualLookUp::S2Point x)
{
  v3 = fabs(v1[1].f64[0]);
  v4 = vabsq_f64(*v1);
  *v2 = v4;
  v2[1].f64[0] = v3;
  x.y = v4.f64[0];
  x.x = v3;
  return x;
}

float64x2_t / infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, uint64_t a3@<D0>)
{
  v3 = a1[1].f64[0] / *&a3;
  result = vdivq_f64(*a1, vdupq_lane_s64(a3, 0));
  *a2 = result;
  a2[1].f64[0] = v3;
  return result;
}

unint64_t sub_1D9AED638()
{
  result = qword_1ECB531E8;
  if (!qword_1ECB531E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB531E8);
  }

  return result;
}

uint64_t sub_1D9AED6A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1D99FE518(0, v6, 0);
  v29 = v5;
  v30 = v4;
  v27 = a1;
  v28 = v6;
  v26 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v31 = *(v9 - 1);
      v11 = *v8;
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);

      if (v13 >= v12 >> 1)
      {
        result = sub_1D99FE518((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 24 * v13;
      --v5;
      *(v14 + 32) = v31;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v29;
    v15 = v30;
    if (v30 <= v29)
    {
      return v32;
    }

    v17 = v28;
    v18 = (v27 + 16 * v28 + 40);
    while (v17 < v15)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        if (v17 >= v16)
        {
          goto LABEL_25;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = *(v26 + 32 + 4 * v17);
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_1D99FE518((v23 > 1), v24 + 1, 1);
        }

        *(v32 + 16) = v24 + 1;
        v25 = v32 + 24 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v20;
        *(v25 + 48) = v22;
        ++v17;
        v18 += 2;
        v16 = v29;
        v15 = v30;
        if (v19 != v30)
        {
          continue;
        }
      }

      return v32;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1D9AED8B8(double a1@<X0>, void *a2@<X1>, void *a3@<X2>, const float *a4@<X3>, void *a5@<X8>)
{
  v173 = a4;
  v174 = a1;
  v179 = a3;
  v171 = a5;
  v7 = _s14DetectedResultVMa();
  v172 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v149 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v149 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v149 - v17;
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v21 = (*(v20 + 8))(v19, v20);
  if (v5)
  {
    return;
  }

  v22 = v21;
  v23 = v174;
  v168 = v12;
  v169 = v9;
  v165 = v18;
  v166 = v15;
  v170 = v7;
  v167 = 0;
  v24 = *(v21 + 24);
  v25 = v179;
  if (!*(v24 + 16) || (v26 = sub_1D99ED894(v179[1], v179[2]), (v27 & 1) == 0) || (v28 = *(v22 + 24), !*(v28 + 16)))
  {
LABEL_11:
    sub_1D99A182C();
    swift_allocError();
    *v45 = 0xD000000000000019;
    *(v45 + 8) = 0x80000001D9CA99C0;
    *(v45 + 16) = 4;
    swift_willThrow();

    return;
  }

  v164 = v22;
  v29 = *(*(v24 + 56) + 8 * v26);
  v31 = v25[4];
  v30 = v25[5];
  v32 = v29;
  v33 = sub_1D99ED894(v31, v30);
  if ((v34 & 1) == 0)
  {

    goto LABEL_11;
  }

  v156 = v32;
  v35 = *(*(v28 + 56) + 8 * v33);
  v36 = v25[13];
  if (!v36)
  {
    v44 = 0;
    v39 = v35;
    v43 = v35;
    goto LABEL_14;
  }

  v37 = *(v164 + 24);
  if (!*(v37 + 16))
  {
    v39 = v35;
    v65 = v35;
    goto LABEL_20;
  }

  v38 = v25[12];
  v39 = v35;
  v40 = v35;
  v41 = sub_1D99ED894(v38, v36);
  if ((v42 & 1) == 0)
  {
LABEL_20:
    sub_1D99A182C();
    swift_allocError();
    *v66 = 0xD00000000000002FLL;
    *(v66 + 8) = 0x80000001D9CA9A10;
    *(v66 + 16) = 4;
    swift_willThrow();

    return;
  }

  v43 = *(*(v37 + 56) + 8 * v41);
  v44 = v43;
LABEL_14:
  v46 = v43;
  v47 = *(*&v23 + 24);
  v48 = *(*&v23 + 32);
  __swift_project_boxed_opaque_existential_1(*&v23, v47);
  v49 = (*(v48 + 16))(v47, v48);
  v51 = v50;
  v52 = *(*&v23 + 24);
  v53 = *(*&v23 + 32);
  __swift_project_boxed_opaque_existential_1(*&v23, v52);
  v54 = (*(v53 + 8))(v52, v53);
  if (v54 >= 5)
  {
    v174 = v51;
    v55 = v156;
    if (v54 - 5 >= 4)
    {
      v148 = v54;
      type metadata accessor for CGImagePropertyOrientation(0);
      LODWORD(v175) = v148;
      sub_1D9C7E82C();
      __break(1u);
      return;
    }
  }

  else
  {
    v174 = v49;
    v49 = v51;
    v55 = v156;
  }

  v56 = *(*&v23 + 40);
  v57 = *(*&v23 + 48);
  v59 = *(*&v23 + 56);
  v58 = *(*&v23 + 64);
  v180.origin.x = v56;
  v180.origin.y = v57;
  v180.size.width = v59;
  v180.size.height = v58;
  MinX = CGRectGetMinX(v180);
  v181.origin.x = v56;
  v181.origin.y = v57;
  v181.size.width = v59;
  v181.size.height = v58;
  MaxY = CGRectGetMaxY(v181);
  v182.origin.x = v56;
  v182.origin.y = v57;
  v182.size.width = v59;
  v182.size.height = v58;
  Width = CGRectGetWidth(v182);
  v183.origin.x = v56;
  v183.origin.y = v57;
  v183.size.width = v59;
  v183.size.height = v58;
  Height = CGRectGetHeight(v183);
  v64 = v167;
  sub_1D9A71AD4(v55, *(*&v23 + 72), v25, v173, v39, &v175);
  v167 = v64;
  if (v64)
  {

    return;
  }

  v155 = v44;
  v160 = Height;
  v163 = Width;
  v153 = v39;
  v159 = 1.0 - MaxY;
  v154 = *(&v175 + 1);
  v67 = v175;
  v152 = v176;
  v151 = v177;
  v150 = v178;
  v158 = VIvnCropScaleToVi(v25[9]);
  v68 = *(v67 + 16);
  v162 = v49;
  v161 = MinX;
  if (v68)
  {
    v69 = 0;
    v70 = MEMORY[0x1E69E7CC0];
    v71 = v170;
    v72 = v163;
    v157 = v67;
    do
    {
      v73 = *(v67 + v69 + 32);
      v74 = *(v67 + v69 + 40);
      v75 = *(v67 + v69 + 48);
      v76 = *(v67 + v69 + 56);
      v77 = *(v67 + v69 + 64);
      v78 = *(v67 + v69 + 72);
      sub_1D9A978B0(*(v67 + v69 + 80), 0, 0, &v175);
      v79 = *(&v175 + 1);
      if (*(&v175 + 1))
      {
        v80 = v176;
        v179 = v177;
        v81 = v175;
        v184.origin.x = VIPredictionInNormalizedImageCoordinates(v158, v76, v75, v78 - v76, v77 - v75, v174, v49, 512.0, 512.0, MinX, v159, v72, v160);
        x = v184.origin.x;
        y = v184.origin.y;
        v84 = v184.size.width;
        v85 = v184.size.height;
        v86 = CGRectGetMinX(v184);
        v185.origin.x = x;
        v185.origin.y = y;
        v185.size.width = v84;
        v185.size.height = v85;
        v87 = 1.0 - CGRectGetMaxY(v185);
        v186.origin.x = x;
        v186.origin.y = y;
        v186.size.width = v84;
        v186.size.height = v85;
        v88 = CGRectGetWidth(v186);
        v187.origin.x = x;
        v187.origin.y = y;
        v187.size.width = v84;
        v187.size.height = v85;
        v89 = CGRectGetHeight(v187);
        v90 = v169;
        *v169 = v73;
        v91 = v71[5];
        v92 = sub_1D9C7B93C();
        (*(*(v92 - 8) + 56))(&v90[v91], 1, 1, v92);
        v93 = &v90[v71[6]];
        *v93 = v86;
        v93[1] = v87;
        v93[2] = v88;
        v93[3] = v89;
        v94 = &v90[v71[7]];
        *v94 = v81;
        *(v94 + 1) = v79;
        v95 = v90;
        v96 = v168;
        v97 = v179;
        *(v94 + 2) = v80;
        *(v94 + 3) = v97;
        *(v95 + v71[8]) = v74;
        sub_1D99D3A28(v95, v96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1D9AF9018(0, v70[2] + 1, 1, v70);
        }

        v98 = v172;
        v100 = v70[2];
        v99 = v70[3];
        v49 = v162;
        MinX = v161;
        v72 = v163;
        if (v100 >= v99 >> 1)
        {
          v101 = sub_1D9AF9018(v99 > 1, v100 + 1, 1, v70);
          v98 = v172;
          v70 = v101;
        }

        v70[2] = v100 + 1;
        sub_1D99D3A28(v96, v70 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v100);
        v71 = v170;
        v67 = v157;
      }

      v69 += 56;
      --v68;
    }

    while (v68);

    v55 = v156;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
    v72 = v163;
  }

  v102 = v171;
  v179 = v70;
  if (v155)
  {
    v103 = v155;
    v104 = v167;
    v105 = sub_1D9C7DC3C();
    if (v104)
    {

      sub_1D99A182C();
      swift_allocError();
      *v107 = 0xD00000000000002CLL;
      *(v107 + 8) = 0x80000001D9CA99E0;
      *(v107 + 16) = 4;
      swift_willThrow();

      sub_1D9AEE4F4(v154, v152, v151, v150);
      return;
    }

    if (v106)
    {
      v108 = v105;
      v109 = v106;
      v110 = sub_1D9B8E088(v106, 0);
      v111 = 4 * v109;
      v102 = v171;
      v112 = v108;
      v55 = v156;
      memcpy(v110 + 4, v112, v111);
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC0];
    }

    v169 = sub_1D9AED6A4(&unk_1F5529EA8, v110);
    v167 = 0;

    v70 = v179;
  }

  else
  {
    v169 = 0;
  }

  if (v154)
  {
    v113 = *(v154 + 16);
    if (v113)
    {
      v114 = (v154 + 80);
      v115 = MEMORY[0x1E69E7CC0];
      do
      {
        v116 = *(v114 - 6);
        v117 = *(v114 - 10);
        v118 = *(v114 - 4);
        v119 = *(v114 - 3);
        v120 = *(v114 - 2);
        v121 = *(v114 - 1);
        sub_1D9A978B0(*v114, 0, 0, &v175);
        v122 = *(&v175 + 1);
        if (*(&v175 + 1))
        {
          v124 = v176;
          v123 = v177;
          v125 = v175;
          v188.origin.x = VIPredictionInNormalizedImageCoordinates(v158, v119, v118, v121 - v119, v120 - v118, v174, v49, 512.0, 512.0, MinX, v159, v72, v160);
          v126 = v188.origin.x;
          v127 = v188.origin.y;
          v128 = v188.size.width;
          v129 = v188.size.height;
          v130 = CGRectGetMinX(v188);
          v189.origin.x = v126;
          v189.origin.y = v127;
          v189.size.width = v128;
          v189.size.height = v129;
          v131 = 1.0 - CGRectGetMaxY(v189);
          v190.origin.x = v126;
          v190.origin.y = v127;
          v190.size.width = v128;
          v190.size.height = v129;
          v132 = CGRectGetWidth(v190);
          v191.origin.x = v126;
          v191.origin.y = v127;
          v191.size.width = v128;
          v191.size.height = v129;
          v133 = CGRectGetHeight(v191);
          v134 = v166;
          *v166 = v116;
          v135 = v170[5];
          v136 = sub_1D9C7B93C();
          (*(*(v136 - 8) + 56))(v134 + v135, 1, 1, v136);
          v137 = (v134 + v170[6]);
          *v137 = v130;
          v137[1] = v131;
          v137[2] = v132;
          v137[3] = v133;
          v138 = (v134 + v170[7]);
          *v138 = v125;
          v138[1] = v122;
          v139 = v165;
          v138[2] = v124;
          v138[3] = v123;
          *(v134 + v170[8]) = v117;
          sub_1D99D3A28(v134, v139);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_1D9AF9018(0, v115[2] + 1, 1, v115);
          }

          v140 = v172;
          v142 = v115[2];
          v141 = v115[3];
          v49 = v162;
          MinX = v161;
          v70 = v179;
          v72 = v163;
          if (v142 >= v141 >> 1)
          {
            v143 = sub_1D9AF9018(v141 > 1, v142 + 1, 1, v115);
            v140 = v172;
            v115 = v143;
          }

          v115[2] = v142 + 1;
          sub_1D99D3A28(v139, v115 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v142);
        }

        v114 += 7;
        --v113;
      }

      while (v113);
    }

    else
    {
      v115 = MEMORY[0x1E69E7CC0];
    }

    v102 = v171;
    v146 = v155;
    v144 = v152;
    v145 = v151;
  }

  else
  {

    v115 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
  }

  v147 = v169;
  *v102 = v70;
  v102[1] = v147;
  v102[2] = v115;
  v102[3] = v144;
  v102[4] = v145;
  v102[5] = v146;
}

void sub_1D9AEE4F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

VisualLookUp::S2::Metric __swiftcall S2.Metric.init(dim:deriv:)(Swift::Int dim, Swift::Double deriv)
{
  *v2 = deriv;
  *(v2 + 8) = dim;
  result.deriv = deriv;
  result.dim = dim;
  return result;
}

BOOL static S2.simpleCrossing(a:b:c:d:)(double *a1, double *a2, double *a3, double *a4)
{
  result = 0;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a3[1];
  v11 = a3[2];
  v12 = a4[1];
  v13 = a4[2];
  v14 = v6 * v9 - v7 * v8;
  v15 = v7 * *a2 - *a1 * v9;
  v16 = *a1 * v8 - v6 * *a2;
  v17 = v10 * v13 - v11 * v12;
  v18 = v11 * *a4 - *a3 * v13;
  v19 = *a3 * v12 - v10 * *a4;
  v20 = v9 * v19 + *a2 * v17 + v8 * v18;
  if ((*a3 * v14 + v15 * v10 + v16 * v11) * v20 > 0.0)
  {
    v21 = v14 * *a4 + v15 * v12 + v16 * v13;
    if (-(v20 * v21) > 0.0)
    {
      return v21 * (v7 * v19 + *a1 * v17 + v6 * v18) > 0.0;
    }
  }

  return result;
}

void static S2.robustCrossProd(a:b:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  v7 = *a1 + *a2;
  v8 = v3 + v5;
  v9 = *a2 - *a1;
  v10 = v5 - v3;
  v11 = (v3 + v5) * (v6 - v4) - (v5 - v3) * (v4 + v6);
  v12 = v9 * (v4 + v6) - v7 * (v6 - v4);
  v13 = v7 * v10 - v9 * v8;
  if (v11 == 0.0 && v12 == 0.0 && v13 == 0.0)
  {
    S2Point.ortho.getter(a3);
  }

  else
  {
    *a3 = v11;
    a3[1] = v12;
    a3[2] = v13;
  }
}

uint64_t static S2.robustCCW(a:b:c:aCrossB:)(__int128 *a1, __int128 *a2, double *a3, double *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = *a3 * *a4 + v7 * a4[1] + v8 * a4[2];
  if (v9 > 1.6e-15)
  {
    return 1;
  }

  if (v9 < -1.6e-15)
  {
    return -1;
  }

  v19 = v4;
  v20 = v5;
  v11 = *(a1 + 2);
  v12 = *a2;
  v13 = *(a2 + 2);
  v17 = *a1;
  v18 = v11;
  v15 = v12;
  v16 = v13;
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  return sub_1D9AEF300(&v17, &v15, v14);
}

BOOL static S2.orderedCCW(a:b:c:o:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v19 = a1[1];
  v21 = a1[2];
  v22 = *a1;
  v20 = v22;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v28 = *a2;
  v18 = v28;
  v29 = v4;
  v30 = v5;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v23 = v19;
  v24 = v21;
  v12 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v28, &v25, &v22);
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v22 = v18;
  v23 = v4;
  v24 = v5;
  v13 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v28, &v25, &v22);
  v14 = 1;
  v28 = v20;
  v29 = v19;
  if (v12 >= 0)
  {
    v14 = 2;
  }

  v30 = v21;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12 >= 0;
  }

  v25 = v9;
  v26 = v10;
  v27 = v11;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v28, &v25, &v22) <= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  return v16 > 1;
}

BOOL static S2.simpleCCW(a:b:c:)(uint64_t a1, float64x2_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *&v4.f64[0] = vdupq_laneq_s64(v3, 1).u64[0];
  v4.f64[1] = *a1;
  v5 = *(a3 + 8);
  *&v6.f64[0] = vdupq_laneq_s64(v5, 1).u64[0];
  v6.f64[1] = *a3;
  return a2[1].f64[0] * (*a3 * v3.f64[0] - *a1 * v5.f64[0]) + vaddvq_f64(vmulq_f64(*a2, vsubq_f64(vmulq_f64(v4, v5), vmulq_f64(v3, v6)))) > 0.0;
}

unint64_t static S2.posToOrientation(position:)(unint64_t result)
{
  if (result <= 3)
  {
    return qword_1F5528348[result + 4];
  }

  __break(1u);
  return result;
}

unint64_t static S2.posToIJ(orientation:position:)(unint64_t result, unint64_t a2)
{
  if ((a2 | result) > 3)
  {
    __break(1u);
  }

  else
  {
    v2 = qword_1F5528308[result + 4];
    if (*(v2 + 16) > a2)
    {
      return *(v2 + 8 * a2 + 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t static S2.toPos(orientation:ijIndex:)(unint64_t result, unint64_t a2)
{
  if ((a2 | result) > 3)
  {
    __break(1u);
  }

  else
  {
    v2 = qword_1F552A528[result + 4];
    if (*(v2 + 16) > a2)
    {
      return *(v2 + 8 * a2 + 32);
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall S2.Metric.getMinLevel(value:)(Swift::Double value)
{
  if (value <= 0.0)
  {
    return 30;
  }

  v2 = *(v1 + 8);
  v3 = 1 << v2;
  if (v2 >= 0x40)
  {
    v3 = 0;
  }

  if (v2 > 0x40)
  {
    v3 = 0;
  }

  v6 = exp(value / (*v1 * v3));
  v7 = *&v6;
  if ((*&v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 < -64)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_18;
  }

  v7 = *&v6 - 1;
  if (v5 >= 65)
  {
    goto LABEL_12;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v2 != 65)
    {
      v9 = v7 >> v5;
      v10 = __OFSUB__(0, v9);
      v8 = -v9;
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_12:
    v8 = -(v7 >> 63);
    if (!__OFSUB__(0, v7 >> 63))
    {
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_23:
  if (v5 == -64)
  {
    goto LABEL_9;
  }

  v12 = v7 << -v5;
  v10 = __OFSUB__(0, v12);
  v8 = -v12;
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_18:
  v11 = v8 & ~(v8 >> 63);
  if (v11 >= 30)
  {
    return 30;
  }

  else
  {
    return v11;
  }
}

Swift::Int __swiftcall S2.Metric.getMaxLevel(value:)(Swift::Double value)
{
  if (value <= 0.0)
  {
    return 30;
  }

  v2 = *(v1 + 8);
  v3 = 1 << v2;
  if (v2 >= 0x40)
  {
    v3 = 0;
  }

  if (v2 > 0x40)
  {
    v3 = 0;
  }

  v5 = exp(*v1 * v3 / value);
  v6 = *&v5 - 1;
  if (v5 == 0.0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < -64 || v4 > 64)
  {
    return 0;
  }

  if (v4 < 0)
  {
LABEL_19:
    if (v4 != -64)
    {
      v8 = v6 << -v4;
      if (v8 <= 29)
      {
        return v8 & ~(v8 >> 63);
      }

      return 30;
    }

    return 0;
  }

  if (v2 == 65)
  {
    return 0;
  }

  v8 = v6 >> v4;
  if (v8 <= 29)
  {
    return v8 & ~(v8 >> 63);
  }

  return 30;
}

double sub_1D9AEEC18()
{
  result = 0.0;
  xmmword_1ECB531F0 = xmmword_1D9C86360;
  qword_1ECB53200 = 0;
  return result;
}

double static S2.origin.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECB50C28 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1ECB53200;
  *a1 = xmmword_1ECB531F0;
  *(a1 + 16) = result;
  return result;
}

double static S2.signedArea(a:b:c:)(uint64_t *a1, uint64_t *a2, double *a3, double a4, double a5, double a6)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v13 = *a3;
  v12 = *(a3 + 1);
  v16 = a3[2];
  v23 = *a1;
  v6 = v23;
  v24 = v7;
  v25 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v16;
  sub_1D9AEF860(&v23, &v20, &v17, v16, a5, a6);
  v17 = v13;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v18 = v12;
  v19 = v16;
  return v14 * _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v23, &v20, &v17);
}

float64_t static S2.planarCentroid(a:b:c:)@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>)
{
  result = (a1[1].f64[0] + a2[1].f64[0] + a3[1].f64[0]) / 3.0;
  __asm { FMOV            V2.2D, #3.0 }

  *a4 = vdivq_f64(vaddq_f64(vaddq_f64(*a1, *a2), *a3), _Q2);
  a4[1].f64[0] = result;
  return result;
}

double static S2.trueCentroid(a:b:c:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>)
{
  v5 = a3[1].f64[0];
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v8 = vmuld_n_f64(v7.f64[0], a3->f64[0]);
  v9 = vzip2q_s64(v7, v6);
  *&v10.f64[0] = vdupq_laneq_s64(v7, 1).u64[0];
  *&v11.f64[0] = vdupq_laneq_s64(v6, 1).u64[0];
  v11.f64[1] = *a1;
  v12 = vmulq_f64(v11, v7);
  v13 = *a1 * v7.f64[0];
  v7.f64[1] = *a1;
  v14 = vsubq_f64(vmulq_n_f64(v7, v5), vmulq_f64(v9, vextq_s8(*a3, *a3, 8uLL)));
  v7.f64[0] = vmuld_n_f64(v6.f64[0], a3->f64[0]);
  v10.f64[1] = *a2;
  v15 = vmulq_f64(v6, v10);
  v10.f64[0] = *a2 * v6.f64[0];
  v6.f64[1] = *a2;
  v16 = vmulq_n_f64(v6, v5);
  v17 = vmulq_f64(v9, *a3);
  v18 = vsubq_f64(vextq_s8(v17, v17, 8uLL), v16);
  v16.f64[0] = v14.f64[0];
  v16.f64[1] = v18.f64[1];
  v19 = vmuld_lane_f64(*a2, *a3, 1) - v8;
  v20 = sqrt(v19 * v19 + vaddvq_f64(vmulq_f64(v16, v16)));
  v21 = v7.f64[0] - vmuld_lane_f64(*a1, *a3, 1);
  v22 = sqrt(v21 * v21 + vaddq_f64(vmulq_f64(v18, v18), vdupq_laneq_s64(vmulq_f64(v14, v14), 1)).f64[0]);
  v23 = vsubq_f64(v15, v12);
  v24 = v13 - v10.f64[0];
  v25 = sqrt(v24 * v24 + vaddvq_f64(vmulq_f64(v23, v23)));
  v42 = v18;
  v43 = v14;
  v41 = v23;
  if (v20 == 0.0)
  {
    if (v22 == 0.0)
    {
      __asm { FMOV            V6.2D, #1.0 }

      v30 = 1.0;
      if (v25 != 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v31 = 1.0;
  }

  else
  {
    v31 = asin(v20) / v20;
    if (v22 == 0.0)
    {
      __asm { FMOV            V1.2D, #1.0 }

      _Q1.f64[0] = v31;
      v30 = 1.0;
      _ZF = v25 == 0.0;
      _Q6 = _Q1;
      goto LABEL_9;
    }
  }

  v39 = v31;
  v34 = asin(v22);
  _Q6.f64[0] = v39;
  _Q6.f64[1] = v34 / v22;
  v30 = 1.0;
  _ZF = v25 == 0.0;
LABEL_9:
  v18 = v42;
  v14 = v43;
  v23 = v41;
  if (!_ZF)
  {
LABEL_10:
    v40 = _Q6;
    v35 = asin(v25);
    _Q6 = v40;
    v23 = v41;
    v18 = v42;
    v14 = v43;
    v30 = v35 / v25;
  }

LABEL_11:
  v36 = vmulq_n_f64(v23, v30);
  result = (v24 * v30 + vmuld_lane_f64(v21, _Q6, 1) + v19 * _Q6.f64[0]) * 0.5;
  __asm { FMOV            V2.2D, #0.5 }

  *a4 = vmulq_f64(vaddq_f64(v36, vaddq_f64(vmulq_f64(v14, _Q6), vmulq_f64(v18, vextq_s8(_Q6, _Q6, 8uLL)))), _Q2);
  a4[1].f64[0] = result;
  return result;
}

Swift::Double static S2.angle(a:b:c:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *&v4.f64[0] = vdupq_laneq_s64(v3, 1).u64[0];
  v4.f64[1] = *a2;
  v5 = *(a3 + 8);
  *&v6.f64[0] = vdupq_laneq_s64(v5, 1).u64[0];
  v6.f64[1] = *a3;
  *&v8.z = *&vsubq_f64(vmulq_f64(v4, v5), vmulq_f64(v3, v6));
  v8.y = *a2 * v5.f64[0];
  v8.x = *a3 * v3.f64[0] - v8.y;
  return S2Point.angle(to:)(v8);
}

uint64_t static S2.turnAngle(a:b:c:)(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v16.x = v8 * v11 - v7 * v12;
  v16.y = *a2 * v12 - v8 * *a3;
  v16.z = v7 * *a3 - *a2 * v11;
  S2Point.angle(to:)(v16);
  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v5;
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  v13[0] = v9;
  v13[1] = v11;
  v13[2] = v12;
  return _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(v15, v14, v13);
}

BOOL static S2.approxEquals(_:_:maxError:)(Swift::Double *a1, Swift::Double *a2, Swift::Double a3)
{
  v5.y = a2[2];
  v5.z = *a1;
  v5.x = *a2;
  return S2Point.angle(to:)(v5) <= a3;
}

uint64_t _s12VisualLookUp2S2V9planarCCW1a1bSiAA8R2VectorV_AHtFZ_0(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = 1.0;
  if (*a1 * *a2 + v3 * v5 > 0.0)
  {
    v6 = -1.0;
  }

  v7 = v2 + v4 * v6;
  v8 = v3 + v5 * v6;
  v9 = v2 * v2 + v3 * v3;
  v10 = v4 * v4 + v5 * v5;
  if (v9 < v10 || v9 == v10 && (v2 < v4 || (v4 >= v2 ? (v11 = v3 < v5) : (v11 = 0), v11)))
  {
    v12 = v6 * (v2 * v8 - v3 * v7);
  }

  else
  {
    v12 = v5 * v7 - v4 * v8;
  }

  if (v12 >= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v12 > 0.0)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

uint64_t _s12VisualLookUp2S2V16planarOrderedCCW1a1b1cSiAA8R2VectorV_A2ItFZ_0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = a3[1];
  v16 = *a1;
  v17 = v4;
  v14 = v5;
  v15 = v6;
  v9 = _s12VisualLookUp2S2V9planarCCW1a1bSiAA8R2VectorV_AHtFZ_0(&v16, &v14);
  v16 = v5;
  v17 = v6;
  v14 = v7;
  v15 = v8;
  result = _s12VisualLookUp2S2V9planarCCW1a1bSiAA8R2VectorV_AHtFZ_0(&v16, &v14);
  v11 = __OFADD__(v9, result);
  v12 = v9 + result;
  if (v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = v7;
  v17 = v8;
  v14 = v3;
  v15 = v4;
  result = _s12VisualLookUp2S2V9planarCCW1a1bSiAA8R2VectorV_AHtFZ_0(&v16, &v14);
  v13 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v13 >= 1)
  {
    return 1;
  }

  else
  {
    return v13 >> 63;
  }
}

uint64_t sub_1D9AEF300(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (*a1 == *a2 && v4 == v7 && v5 == v8)
  {
    return 0;
  }

  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = v6 == *a3 && v7 == v12;
  if (v14 && v8 == v13)
  {
    return 0;
  }

  v16 = v11 == v3 && v12 == v4;
  if (v16 && v13 == v5)
  {
    return 0;
  }

  v18 = 1.0;
  if (v3 * v6 + v4 * v7 + v5 * v8 <= 0.0)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = -1.0;
  }

  if (v6 * v11 + v7 * v12 + v8 * v13 <= 0.0)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = -1.0;
  }

  if (v3 * v11 + v4 * v12 + v5 * v13 > 0.0)
  {
    v18 = -1.0;
  }

  v21 = v3 + v6 * v19;
  v22 = v4 + v7 * v19;
  v23 = v5 + v8 * v19;
  v24 = v6 + v11 * v20;
  v25 = v7 + v12 * v20;
  v26 = v8 + v13 * v20;
  v27 = v11 + v3 * v18;
  v28 = v12 + v4 * v18;
  v29 = v13 + v5 * v18;
  v30 = v23 * v23 + v21 * v21 + v22 * v22;
  v31 = v26 * v26 + v24 * v24 + v25 * v25;
  v32 = v29 * v29 + v27 * v27 + v28 * v28;
  if (v32 < v31 || v32 == v31 && (v3 < v6 || v6 >= v3 && (v4 < v7 || v7 >= v4 && v5 < v8)))
  {
    if (v30 < v31 || v30 == v31 && (v3 < v11 || v11 >= v3 && (v4 < v12 || v12 >= v4 && v5 < v13)))
    {
      v33 = v19 * (v5 * (v21 * v28 - v22 * v27) + v3 * (v22 * v29 - v23 * v28) + v4 * (v23 * v27 - v21 * v29));
      v34 = v33 < 0.0;
      if (v33 <= 0.0)
      {
        goto LABEL_57;
      }

      return 1;
    }

LABEL_56:
    v37 = v18 * (v13 * (v27 * v25 - v28 * v24) + v11 * (v28 * v26 - v29 * v25) + v12 * (v29 * v24 - v27 * v26));
    v34 = v37 < 0.0;
    if (v37 <= 0.0)
    {
      goto LABEL_57;
    }

    return 1;
  }

  if (v30 >= v32 && (v30 != v32 || v6 >= v11 && (v11 < v6 || v7 >= v12 && (v12 < v7 || v8 >= v13))))
  {
    goto LABEL_56;
  }

  v36 = v20 * (v8 * (v22 * v24 - v21 * v25) + v6 * (v23 * v25 - v22 * v26) + v7 * (v21 * v26 - v23 * v24));
  v34 = v36 < 0.0;
  if (v36 > 0.0)
  {
    return 1;
  }

LABEL_57:
  if (v34)
  {
    return -1;
  }

  v43 = a1[1];
  v44 = v5;
  v41 = v7;
  v42 = v8;
  v39 = v12;
  v40 = v13;
  v38 = v12;
  result = _s12VisualLookUp2S2V16planarOrderedCCW1a1b1cSiAA8R2VectorV_A2ItFZ_0(&v43, &v41, &v39);
  if (!result)
  {
    v43 = v5;
    v44 = v3;
    v41 = v8;
    v42 = v6;
    v39 = v13;
    v40 = v11;
    result = _s12VisualLookUp2S2V16planarOrderedCCW1a1b1cSiAA8R2VectorV_A2ItFZ_0(&v43, &v41, &v39);
    if (!result)
    {
      v43 = v3;
      v44 = v4;
      v41 = v6;
      v42 = v7;
      v39 = v11;
      v40 = v38;
      return _s12VisualLookUp2S2V16planarOrderedCCW1a1b1cSiAA8R2VectorV_A2ItFZ_0(&v43, &v41, &v39);
    }
  }

  return result;
}

uint64_t _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(double *a1, double *a2, double *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a3 * (v6 * v10 - v7 * v9) + (v7 * *a2 - *a1 * v10) * v12 + (*a1 * v9 - v6 * *a2) * v13;
  if (v14 > 1.6e-15)
  {
    return 1;
  }

  if (v14 < -1.6e-15)
  {
    return -1;
  }

  v18[3] = v3;
  v18[4] = v4;
  v18[0] = v5;
  v18[1] = v6;
  v18[2] = v7;
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v10;
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = v13;
  return sub_1D9AEF300(v18, v17, v16);
}

void _s12VisualLookUp2S2V10girardArea1a1b1cSdAA0D5PointV_A2ItFZ_0(double *a1, uint64_t a2, double *a3)
{
  v3.z = a1[2] * *a3;
  v3.x = *a1 * a3[1];
  v3.y = a1[1] * *a3;
  v4.x = S2Point.angle(to:)(v3);
  v5.x = S2Point.angle(to:)(v4);
  S2Point.angle(to:)(v5);
}

void sub_1D9AEF860(uint64_t *a1, uint64_t *a2, double *a3, double a4, double a5, double a6)
{
  v6 = *a1;
  v7 = a1[1];
  v35 = *a1;
  v8 = a1[2];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v43.x = S2Point.angle(to:)(*(&a5 - 1));
  v32 = v12;
  x = v43.x;
  v31 = v14;
  v44.x = S2Point.angle(to:)(v43);
  v16 = v44.x;
  v40 = v35;
  v41 = v7;
  v33 = v11;
  v34 = v7;
  v42 = v8;
  v30 = v9;
  v37 = v9;
  v38 = v10;
  v17 = v10;
  v39 = v11;
  v18 = S2Point.angle(to:)(v44);
  v19 = x;
  v20 = x + v16;
  v21 = v16;
  v22 = (v20 + v18) * 0.5;
  if (v22 < 0.0003)
  {
    goto LABEL_9;
  }

  if (v16 > v18)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  if (v19 > v23)
  {
    v23 = v19;
  }

  if (v22 - v23 >= v22 * v22 * (v22 * 0.01 * (v22 * v22)) || (v40 = v35, v41 = v34, v42 = v8, v37 = v30, v38 = v17, v39 = v33, v36[0] = v32, v36[1] = v13, v36[2] = v31, v24 = v22 - v23, _s12VisualLookUp2S2V10girardArea1a1b1cSdAA0D5PointV_A2ItFZ_0(&v40, &v37, v36), v24 >= v22 * (v25 * 0.1)))
  {
LABEL_9:
    v26 = tan(v22 * 0.5);
    v27 = v26 * tan((v22 - v19) * 0.5);
    v28 = v27 * tan((v22 - v21) * 0.5);
    v29 = v28 * tan((v22 - v18) * 0.5);
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    atan(sqrt(v29));
  }
}

VisualLookUp::S2LatLng __swiftcall S2LatLng.init(lat:lng:)(VisualLookUp::S1Angle lat, VisualLookUp::S1Angle lng)
{
  v5 = *v2;
  v6 = *v3;
  *v4 = *v2;
  v4[1] = v6;
  result.lng = *&v6;
  result.lat = *&v5;
  return result;
}

double S2LatLng.point.getter@<D0>(double *a1@<X8>)
{
  v3 = v1[1];
  v4 = __sincos_stret(*v1);
  v5 = __sincos_stret(v3);
  result = v4.__cosval * v5.__sinval;
  *a1 = v4.__cosval * v5.__cosval;
  a1[1] = v4.__cosval * v5.__sinval;
  a1[2] = v4.__sinval;
  return result;
}

void S2LatLng.normalized.getter(double *a1@<X8>)
{
  v3 = fmax(fmin(*v1, 1.57079633), -1.57079633);
  v4 = remainder(*(v1 + 8), 6.28318531);
  *a1 = v3;
  a1[1] = v4;
}

VisualLookUp::S2LatLng __swiftcall S2LatLng.init(point:)(VisualLookUp::S2Point point)
{
  v3 = v2;
  v4 = *v1;
  v5 = v1[1];
  v6 = atan2(v1[2], sqrt(v4 * v4 + v5 * v5));
  v7 = atan2(v5, v4);
  *v3 = v6;
  *(v3 + 8) = v7;
  result.lng = *&v8;
  result.lat = *&v7;
  return result;
}

double S2LatLng.lat.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double S2LatLng.lng.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

float64x2_t static S2LatLng.fromDegrees(lat:lng:)@<Q0>(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  a2.f64[1] = a3;
  result = vmulq_f64(a2, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  *a1 = result;
  return result;
}

float64x2_t static S2LatLng.fromE5(lat:lng:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3.i64[0] = a1;
  v3.i64[1] = a2;
  result = vmulq_f64(vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3EE4F8B588E368F1uLL)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  *a3 = result;
  return result;
}

float64x2_t static S2LatLng.fromE6(lat:lng:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3.i64[0] = a1;
  v3.i64[1] = a2;
  result = vmulq_f64(vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  *a3 = result;
  return result;
}

float64x2_t static S2LatLng.fromE7(lat:lng:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3.i64[0] = a1;
  v3.i64[1] = a2;
  result = vmulq_f64(vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  *a3 = result;
  return result;
}

VisualLookUp::S1Angle __swiftcall S2LatLng.getDistance(to:)(VisualLookUp::S2LatLng to)
{
  v4 = v2;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = sin((*v1 - *v3) * 0.5);
  v10 = sin((v6 - v8) * 0.5);
  v11 = cos(v7) * (v10 * v10);
  v12 = v9 * v9 + cos(v5) * v11;
  if (1.0 - v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0 - v12;
  }

  v14 = sqrt(v12);
  v15 = atan2(v14, sqrt(v13));
  result.radians = v15 + v15;
  *v4 = result.radians;
  return result;
}

Swift::Double __swiftcall S2LatLng.getDistance(to:radius:)(VisualLookUp::S2LatLng to, Swift::Double radius)
{
  radians = to.lat.radians;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = sin((*v2 - *v3) * 0.5);
  v10 = sin((v6 - v8) * 0.5);
  v11 = cos(v7) * (v10 * v10);
  v12 = v9 * v9 + cos(v5) * v11;
  if (1.0 - v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0 - v12;
  }

  v14 = sqrt(v12);
  v15 = atan2(v14, sqrt(v13));
  return (v15 + v15) * radians;
}

uint64_t sub_1D9AEFF20(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = *a1;
  sub_1D9AF1B6C(a2, v3 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, type metadata accessor for MLModelInfo);
  v12 = *(v3 + 16);
  sub_1D9AF1B6C(a2, v8, type metadata accessor for MLModelInfo);
  type metadata accessor for CachedCoreMLModelProvider();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_coreMLModelProvider) = sub_1D9B7E678(&v12, v8, 16, 0, 0, 0);
  sub_1D9AF1B6C(a2, v8, type metadata accessor for MLModelInfo);
  type metadata accessor for UnifiedModelPostProcessor();
  swift_allocObject();
  v9 = sub_1D9B1A83C(v8);
  sub_1D99A19C0(a2, type metadata accessor for MLModelInfo);
  *(v3 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_postProcessor) = v9;
  return v3;
}

void *sub_1D9AF0090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v96 = a3;
  v5 = v4;
  v94 = a4;
  v95 = a2;
  v98 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v89 - v7;
  v8 = type metadata accessor for EspressoModel(0);
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v89 - v12;
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  static Logger.argos.getter(&v89 - v18);
  sub_1D9A3E0E0(v16);
  v20 = *(v14 + 8);
  v20(v19, v13);
  v21 = sub_1D9C7D8BC();
  v22 = sub_1D9C7E09C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v89 = v5;
    v24 = v10;
    v25 = v23;
    *v23 = 0;
    _os_log_impl(&dword_1D9962000, v21, v22, "Create model request for unified", v23, 2u);
    v26 = v25;
    v10 = v24;
    v5 = v89;
    MEMORY[0x1DA7405F0](v26, -1, -1);
  }

  v20(v16, v13);
  v27 = v97;
  v28 = v98;
  LOBYTE(v101[0]) = *(v98 + 104);
  result = sub_1D9AF0E50(v101, *(v98 + 128));
  if (!v27)
  {
    v30 = result;
    v89 = v10;
    v31 = *(v5 + 16);
    v97 = OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo;
    v32 = swift_allocObject();
    swift_weakInit();
    sub_1D99A170C(v28, v101);
    v33 = v5;
    v34 = swift_allocObject();
    v35 = v101[7];
    *(v34 + 136) = v101[6];
    *(v34 + 152) = v35;
    *(v34 + 168) = v101[8];
    v36 = v101[3];
    *(v34 + 72) = v101[2];
    *(v34 + 88) = v36;
    v37 = v101[5];
    *(v34 + 104) = v101[4];
    *(v34 + 120) = v37;
    v38 = v101[1];
    *(v34 + 40) = v101[0];
    *(v34 + 16) = v95;
    *(v34 + 24) = v96;
    *(v34 + 32) = v32;
    v39 = v102;
    *(v34 + 56) = v38;
    *(v34 + 184) = v39;
    *(v34 + 192) = v30;
    v40 = *(v28 + 120);

    sub_1D9B7E0E0(v40);
    sub_1D9C1947C(v100);
    v96 = 0;
    if (v31)
    {
      if (v31 == 1)
      {
        sub_1D99A17C8(v100, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        v42 = v92;
        v41 = v93;
        v43 = swift_dynamicCast();
        v44 = *(v91 + 56);
        if (v43)
        {
          v95 = v32;
          v44(v41, 0, 1, v42);
          v45 = v90;
          sub_1D99A18F0(v41, v90);
          v46 = v89;
          sub_1D9AF1B6C(v45, v89, type metadata accessor for EspressoModel);
          v47 = v28;
          v48 = *(v28 + 144);
          v49 = swift_allocObject();
          *(v49 + 16) = sub_1D9AF1B40;
          *(v49 + 24) = v34;
          type metadata accessor for EspressoRequest(0);
          v50 = swift_allocObject();
          sub_1D9AF1B6C(v46, v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model, type metadata accessor for EspressoModel);
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 2;
          v51 = v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
          *v51 = 0;
          *(v51 + 8) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v51 + 16) = _Q0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = 0;
          v57 = (v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
          *v57 = sub_1D99A19B8;
          v57[1] = v49;
          v58 = qword_1EDD349F0;

          if (v58 != -1)
          {
            swift_once();
          }

          v59 = qword_1EDD41F40;

          sub_1D99A19C0(v46, type metadata accessor for EspressoModel);
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v59;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v48;
          v107.origin.x = 0.0;
          v107.origin.y = 0.0;
          v107.size.width = 1.0;
          v107.size.height = 1.0;
          *(v50 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest) = CGRectIntersection(*(v47 + 40), v107);
          v60 = v94;
          v94[3] = &type metadata for EspressoModelRequest;
          v60[4] = &off_1F5533650;

          *v60 = v50;
          sub_1D99A19C0(v45, type metadata accessor for EspressoModel);
          goto LABEL_18;
        }

        v44(v41, 1, 1, v42);
        sub_1D99A1888(v41);
      }

      else
      {
        sub_1D99A17C8(v100, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
        type metadata accessor for E5Model();
        if (swift_dynamicCast())
        {
          v95 = v32;
          v78 = v104;
          v79 = *(v28 + 144);
          v80 = swift_allocObject();
          *(v80 + 16) = sub_1D9AF1B40;
          *(v80 + 24) = v34;
          type metadata accessor for E5Request();
          v81 = v28;
          v82 = swift_allocObject();
          *(v82 + 16) = v78;
          *(v82 + 24) = 2;
          *(v82 + 32) = *&v78[OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice];
          *(v82 + 40) = sub_1D99A1880;
          *(v82 + 48) = v80;
          *(v82 + 56) = 0;
          *(v82 + 64) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v82 + 72) = _Q0;
          *(v82 + 88) = 0;
          v84 = qword_1EDD349F0;
          swift_retain_n();

          swift_unknownObjectRetain();

          if (v84 != -1)
          {
            swift_once();
          }

          v85 = qword_1EDD41F40;

          *(v82 + 96) = v85;
          *(v82 + 104) = v79;
          v109.origin.x = 0.0;
          v109.origin.y = 0.0;
          v109.size.width = 1.0;
          v109.size.height = 1.0;
          *(v82 + 56) = CGRectIntersection(*(v81 + 40), v109);
          v86 = v94;
          v94[3] = &type metadata for E5ModelRequest;
          v86[4] = &off_1F552E318;

          *v86 = v82;
          goto LABEL_18;
        }
      }

      sub_1D99A182C();
      swift_allocError();
      *v87 = 0xD00000000000001BLL;
      *(v87 + 8) = 0x80000001D9CA3A70;
      *(v87 + 16) = 3;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v100);
    }

    else
    {
      v95 = v32;
      v61 = v33 + v97;
      v62 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7E00(*(v61 + *(v62 + 32)), v103);
      v63 = v28;
      v64 = *(v28 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      v65 = sub_1D9AFD4B8(v103, v64);

      sub_1D99A17C8(v100, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
      if (swift_dynamicCast())
      {
        v66 = v104;
        v67 = swift_allocObject();
        v67[2] = v65;
        v67[3] = sub_1D9AF1B40;
        v67[4] = v34;
        v68 = objc_allocWithZone(MEMORY[0x1E6984468]);
        v99[4] = sub_1D99A1A20;
        v99[5] = v67;
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 1107296256;
        v99[2] = sub_1D9BD99E0;
        v99[3] = &block_descriptor_7;
        v69 = _Block_copy(v99);
        v70 = v66;

        v71 = [v68 initWithModel:v70 completionHandler:v69];
        _Block_release(v69);

        [v71 setImageCropAndScaleOption_];
        v72 = v63[5];
        v73 = v63[6];
        v74 = v63[7];
        v75 = v63[8];
        v76 = v71;
        v108.origin.x = 0.0;
        v108.origin.y = 0.0;
        v108.size.width = 1.0;
        v108.size.height = 1.0;
        v105.origin.x = v72;
        v105.origin.y = v73;
        v105.size.width = v74;
        v105.size.height = v75;
        v106 = CGRectIntersection(v105, v108);
        [v76 setRegionOfInterest_];

        v77 = v94;
        v94[3] = &type metadata for VisionModelRequest;
        v77[4] = &off_1F55305B8;

        *v77 = v76;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
      }

      sub_1D99A182C();
      swift_allocError();
      *v88 = 0xD00000000000001BLL;
      *(v88 + 8) = 0x80000001D9CA3A70;
      *(v88 + 16) = 3;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v100);
    }
  }

  return result;
}

void sub_1D9AF0C04(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D99A1A44(a1, v27);
  if (v28 == 1)
  {
    v9 = *&v27[0];
    v20 = *&v27[0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 1;
    v10 = *&v27[0];
    a2(&v20);

    sub_1D99A1B04(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  }

  else
  {
    sub_1D9979B9C(v27, v26);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo;
      v13 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v12 + *(v13 + 32)), v29);
      v14 = *(a5 + 144);
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      sub_1D9AFD4B8(v29, v14);

      v15 = *(a5 + 88);
      v25[0] = *(a5 + 72);
      v25[1] = v15;
      sub_1D9B1AA20(v26, a6, v25, &v20);
      v16 = v20;
      v17 = v21;
      v19 = v22;
      v18 = v23;
      v24 = 0;
      sub_1D99A1AB4(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, 0);
      a2(&v20);
      sub_1D99A1B04(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
      sub_1D9AFCCA4();

      sub_1D99A1B04(v16, v17, *(&v17 + 1), v19, *(&v19 + 1), v18, 0);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }
}

void *sub_1D9AF0E50(char *a1, char a2)
{
  v4 = *a1;
  if (sub_1D9A15C94(*a1) == 7631457 && v5 == 0xE300000000000000)
  {
    goto LABEL_13;
  }

  v7 = sub_1D9C7E7DC();

  if (v7)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x616964656DLL && v8 == 0xE500000000000000)
  {
LABEL_13:

    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  v10 = sub_1D9C7E7DC();

  if (v10)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 1802465122 && v11 == 0xE400000000000000)
  {
    goto LABEL_13;
  }

  v13 = sub_1D9C7E7DC();

  if (v13)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6D75626C61 && v14 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v15 = sub_1D9C7E7DC();

  if (v15)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x44327463656A626FLL && v16 == 0xE800000000000000)
  {
    goto LABEL_13;
  }

  v17 = sub_1D9C7E7DC();

  if (v17)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6B72616D646E616CLL && v18 == 0xE800000000000000)
  {
    goto LABEL_13;
  }

  v19 = sub_1D9C7E7DC();

  if (v19)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x727574706C756373 && v20 == 0xE900000000000065)
  {
    goto LABEL_13;
  }

  v21 = sub_1D9C7E7DC();

  if (v21)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x4C6C61727574616ELL && v22 == 0xEF6B72616D646E61)
  {
    goto LABEL_13;
  }

  v23 = sub_1D9C7E7DC();

  if (v23)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6F726665726F7473 && v24 == 0xEA0000000000746ELL)
  {
    goto LABEL_13;
  }

  v25 = sub_1D9C7E7DC();

  if (v25)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000016, 0x80000001D9CA3B00, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x656E696C796B73 && v26 == 0xE700000000000000)
  {

    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000012, 0x80000001D9CA27D0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  v27 = sub_1D9C7E7DC();

  if (v27)
  {
    return sub_1D9C1B898(a2, v2 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, 0xD000000000000012, 0x80000001D9CA27D0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  return 0;
}

uint64_t sub_1D9AF12D4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v61 = sub_1D9C7D8DC();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v12 = 0;
    return v12 & 1;
  }

  LOBYTE(v64) = *a1;
  v11 = sub_1D9AF0E50(&v64, a3);
  if (v4)
  {
    return v12 & 1;
  }

  if (!v11)
  {
    v12 = 0;
    return v12 & 1;
  }

  v54 = 0;
  v13 = v11;
  result = sub_1D9BDBB08(v11);
  v16 = result;
  v63 = *(result + 16);
  if (!v63)
  {
LABEL_44:

    v12 = 1;
    return v12 & 1;
  }

  v66 = v13;
  v17 = 0;
  v56 = v3 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo;
  v57 = a2;
  v55 = 0x80000001D9CA3A40;
  v59 = (v8 + 8);
  v60 = (v8 + 16);
  v18 = (result + 40);
  *&v15 = 136315138;
  v58 = v15;
  v19 = v61;
  v62 = result;
  while (v17 < *(v16 + 16))
  {
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = v66;
    v23 = v66[2];

    if (!v23 || (v24 = sub_1D99ED894(v20, v21), (v25 & 1) == 0))
    {
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_36;
      }

      v33 = [objc_opt_self() mainBundle];
      v34 = [v33 bundleIdentifier];

      if (v34)
      {
        v35 = sub_1D9C7DC7C();
        v37 = v36;

        if (v35 == 0xD00000000000002BLL && v55 == v37)
        {
        }

        else
        {
          v39 = sub_1D9C7E7DC();

          if ((v39 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v40 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v40 = &off_1ECB51BA8;
        }
      }

      else
      {
LABEL_26:
        v40 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v40 = &qword_1EDD355A8;
        }
      }

      v43 = *(*v40 + 32);

      v44 = sub_1D9C7DC4C();
      LODWORD(v43) = [v43 BOOLForKey_];

      if (v43)
      {
        v45 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v45 = qword_1EDD2C990;
        }
      }

      else
      {
LABEL_36:
        v45 = qword_1EDD354D8;
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
          v45 = qword_1EDD354D8;
        }
      }

      v46 = __swift_project_value_buffer(v19, v45);
      (*v60)(v10, v46, v19);

      v47 = sub_1D9C7D8BC();
      v48 = sub_1D9C7E09C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v64 = v50;
        *v49 = v58;
        v51 = sub_1D9A0E224(v20, v21, &v64);

        *(v49 + 4) = v51;
        _os_log_impl(&dword_1D9962000, v47, v48, "No model urn suffix for %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        v52 = v50;
        v19 = v61;
        MEMORY[0x1DA7405F0](v52, -1, -1);
        MEMORY[0x1DA7405F0](v49, -1, -1);
      }

      else
      {
      }

      result = (*v59)(v10, v19);
      v16 = v62;
      goto LABEL_10;
    }

    v26 = (v22[7] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = (v56 + *(type metadata accessor for MLModelInfo(0) + 24));
    v30 = v29[1];
    v64 = *v29;
    v65 = v30;

    MEMORY[0x1DA73DF90](v27, v28);
    v32 = v64;
    v31 = v65;
    if (v20 == 0x6E69646465626D65 && v21 == 0xE900000000000067)
    {

LABEL_29:
      v42 = sub_1D9AEA42C(v32, v31, v57);
      goto LABEL_41;
    }

    v41 = sub_1D9C7E7DC();

    if (v41)
    {
      goto LABEL_29;
    }

    v42 = sub_1D9AEA4B8(v32, v31, v57);
LABEL_41:
    v53 = v42;

    v16 = v62;
    if (!v53)
    {

      v12 = 0;
      return v12 & 1;
    }

LABEL_10:
    ++v17;
    v18 += 2;
    if (v63 == v17)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9AF1928()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo, type metadata accessor for MLModelInfo);
}

uint64_t sub_1D9AF198C()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp19UnifiedModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnifiedModelFactory()
{
  result = qword_1EDD33528;
  if (!qword_1EDD33528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AF1A94()
{
  result = type metadata accessor for MLModelInfo(319);
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

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9AF1B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D9AF1BD4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v210 = a7;
  v189 = a6;
  v203 = a5;
  v207 = a4;
  v191 = a3;
  v190 = a9;
  v217 = sub_1D9C7D8DC();
  v12 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v170 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v167 = &v166 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v197 = &v166 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v202 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v213 = &v166 - v21;
  v22 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v187 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v196 = (&v166 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v201 = (&v166 - v28);
  v188 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v215 = (&v166 - v31);
  v32 = *a2;
  v186 = a2[1];
  v185 = v32;
  v33 = sub_1D9A19EFC(a1);
  v35 = v34;
  v37 = v36;
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E7CC0];
  v40 = sub_1D9A465D0(MEMORY[0x1E69E7CC0]);
  v193 = v38;
  *(v38 + 16) = v40;
  v168 = (v38 + 16);
  v41 = swift_allocObject();
  v194 = v41;
  *(v41 + 16) = 0;
  v166 = (v41 + 16);
  v42 = sub_1D9A46708(v39);
  v222 = v39;
  v223 = v42;
  v200 = *(a1 + 16);
  v169 = a1;
  v171 = v12;
  if (!v200)
  {
    sub_1D99F2604(v33, v35);
    v45 = MEMORY[0x1E69E7CC0];
    v48 = v195;
LABEL_91:
    v147 = sub_1D9BDBF78(v45);
    v148 = v171;
    if (v147[2])
    {
      v149 = v191[3];
      v150 = v191[4];
      __swift_project_boxed_opaque_existential_1(v191, v149);
      v151 = v209;
      sub_1D9B7DE80(v149, v150, &v219);
      if (v151)
      {

LABEL_94:

        goto LABEL_101;
      }

      v159 = *(&v220 + 1);
      v160 = v221;
      __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
      (*(v160 + 8))(v147, v159, v160);
      v209 = 0;

      __swift_destroy_boxed_opaque_existential_0Tm(&v219);
      v162 = v166;
      swift_beginAccess();
      v163 = *v162;
      if (v163)
      {
        v164 = v163;

        swift_willThrow();
        goto LABEL_94;
      }
    }

    else
    {

      v152 = v167;
      static Logger.argos.getter(v167);
      sub_1D9A3E0E0(v170);
      v153 = *(v148 + 8);
      v153(v152, v217);
      v154 = sub_1D9C7D8BC();
      v155 = sub_1D9C7E09C();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&dword_1D9962000, v154, v155, "No requested search domains.", v156, 2u);
        MEMORY[0x1DA7405F0](v156, -1, -1);
      }

      v153(v170, v217);
    }

    v224[0] = 0x6C46206573726150;
    v224[1] = 0xEA0000000000776FLL;
    v224[2] = "VI: Domain Selection Region Updating";
    v224[3] = 36;
    v225 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();
    v157 = v190;

    sub_1D9AFD4B8(v224, v157);

    v158 = v207;

    v147 = sub_1D9AF58E4(v169, v168, v48, v158, &v222);

    sub_1D9AFCCA4();

    return v147;
  }

  v204 = v33;
  v205 = v35;
  v206 = v37;
  v184 = *(v23 + 80);
  v183 = (v184 + 32) & ~v184;
  v199 = a1 + v183;
  v192 = 0x80000001D9CA3A40;
  v211 = (v12 + 16);
  v214 = (v12 + 8);
  v175 = (v12 + 32);
  v179 = "NSFW Model Postprocess Results";
  v173 = 0x80000001D9CA2950;
  v172 = 0x80000001D9CA2910;
  v198 = *(v23 + 72);
  *&v43 = 136315138;
  v178 = v43;
  *(&v44 + 1) = 10;
  v177 = xmmword_1D9C86430;
  *&v44 = 136315394;
  v174 = v44;
  v182 = a8 & 1;
  v45 = v39;
  v46 = 0;
  v47 = v215;
  v48 = v195;
  while (1)
  {
    sub_1D9AF69C8(v199 + v198 * v46, v47, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v212 = v46;
    v49 = byte_1EDD354C0;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_23;
    }

    v50 = [objc_opt_self() mainBundle];
    v51 = [v50 bundleIdentifier];

    if (!v51)
    {
LABEL_14:
      v57 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v57 = &qword_1EDD355A8;
      }

      goto LABEL_19;
    }

    v52 = sub_1D9C7DC7C();
    v54 = v53;

    if (v52 == 0xD00000000000002BLL && v192 == v54)
    {
    }

    else
    {
      v56 = sub_1D9C7E7DC();

      if ((v56 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v57 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v57 = &off_1ECB51BA8;
    }

LABEL_19:
    v58 = *(*v57 + 32);

    v59 = sub_1D9C7DC4C();
    LODWORD(v58) = [v58 BOOLForKey_];

    if (v58)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v60 = v217;
      v61 = __swift_project_value_buffer(v217, qword_1EDD2C990);
      v62 = *v211;
      (*v211)(v213, v61, v60);
      goto LABEL_26;
    }

LABEL_23:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v63 = v217;
    v64 = __swift_project_value_buffer(v217, qword_1EDD354D8);
    v62 = *v211;
    (*v211)(v213, v64, v63);
    if ((v49 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_26:
    v65 = [objc_opt_self() mainBundle];
    v66 = [v65 bundleIdentifier];

    if (v66)
    {
      v67 = sub_1D9C7DC7C();
      v69 = v68;

      if (v67 == 0xD00000000000002BLL && v192 == v69)
      {

LABEL_31:
        v71 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v71 = &off_1ECB51BA8;
        }

        goto LABEL_35;
      }

      v70 = sub_1D9C7E7DC();

      if (v70)
      {
        goto LABEL_31;
      }
    }

    v71 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v71 = &qword_1EDD355A8;
    }

LABEL_35:
    v72 = *(*v71 + 32);

    v73 = sub_1D9C7DC4C();
    LODWORD(v72) = [v72 BOOLForKey_];

    if (v72)
    {
      v74 = v202;
      (*v175)(v202, v213, v217);
      goto LABEL_40;
    }

LABEL_37:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v75 = v217;
    v76 = __swift_project_value_buffer(v217, qword_1EDD354D8);
    v74 = v202;
    v62(v202, v76, v75);
    (*v214)(v213, v75);
LABEL_40:
    v77 = v201;
    v47 = v215;
    sub_1D9AF69C8(v215, v201, type metadata accessor for VisualUnderstanding.ImageRegion);
    v78 = sub_1D9C7D8BC();
    v79 = sub_1D9C7E09C();
    v80 = os_log_type_enabled(v78, v79);
    v216 = v45;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v218[0] = v82;
      *v81 = v178;
      v83 = *v77;
      v84 = v77[1];
      v85 = v77[2];
      v86 = v77[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
      v87 = swift_allocObject();
      *(v87 + 16) = v177;
      v226.origin.x = v83;
      v226.origin.y = v84;
      v226.size.width = v85;
      v226.size.height = v86;
      MinX = CGRectGetMinX(v226);
      v89 = MEMORY[0x1E69E7DE0];
      *(v87 + 56) = MEMORY[0x1E69E7DE0];
      v90 = sub_1D99D2A0C();
      *(v87 + 64) = v90;
      *(v87 + 32) = MinX;
      v227.origin.x = v83;
      v227.origin.y = v84;
      v227.size.width = v85;
      v227.size.height = v86;
      MinY = CGRectGetMinY(v227);
      *(v87 + 96) = v89;
      *(v87 + 104) = v90;
      *(v87 + 72) = MinY;
      v228.origin.x = v83;
      v228.origin.y = v84;
      v228.size.width = v85;
      v228.size.height = v86;
      Width = CGRectGetWidth(v228);
      *(v87 + 136) = v89;
      *(v87 + 144) = v90;
      *(v87 + 112) = Width;
      v229.origin.x = v83;
      v229.origin.y = v84;
      v229.size.width = v85;
      v229.size.height = v86;
      Height = CGRectGetHeight(v229);
      *(v87 + 176) = v89;
      *(v87 + 184) = v90;
      *(v87 + 152) = Height;
      *&v219 = v83;
      *(&v219 + 1) = v84;
      *&v220 = v85;
      *(&v220 + 1) = v86;
      NormalizedRect.rectID.getter();
      v95 = v94;
      v97 = v96;
      *(v87 + 216) = MEMORY[0x1E69E6158];
      *(v87 + 224) = sub_1D99D2A60();
      *(v87 + 192) = v95;
      *(v87 + 200) = v97;
      v98 = v195;
      v99 = sub_1D9C7DCAC();
      v101 = v100;
      sub_1D9AF6AA0(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = sub_1D9A0E224(v99, v101, v218);
      v47 = v215;

      *(v81 + 4) = v102;
      _os_log_impl(&dword_1D9962000, v78, v79, "Process %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      v103 = v82;
      v48 = v98;
      v45 = v216;
      MEMORY[0x1DA7405F0](v103, -1, -1);
      MEMORY[0x1DA7405F0](v81, -1, -1);
    }

    else
    {

      sub_1D9AF6AA0(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    v104 = *v214;
    (*v214)(v74, v217);
    v105 = sub_1D9AF3610(v47, v45[2], v204, v205, v206, v210, v207, v203, &v223);
    v106 = v105;
    if (*(v105 + 16))
    {
      break;
    }

    v45 = v216;
LABEL_4:
    v46 = v212 + 1;
    sub_1D9AF6AA0(v47, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v46 == v200)
    {
      sub_1D99F2604(v204, v205);
      goto LABEL_91;
    }
  }

  MEMORY[0x1EEE9AC00](v105);
  v165[2] = v47;
  v107 = v209;
  v108 = sub_1D9BE8640(sub_1D9AF6B00, v165, v106);
  v209 = v107;
  sub_1D9A190A8(v108);
  v109 = v197;
  static Logger.argos.getter(v197);
  v110 = v196;
  sub_1D9AF69C8(v47, v196, type metadata accessor for VisualUnderstanding.ImageRegion);

  v111 = sub_1D9C7D8BC();
  v112 = sub_1D9C7E09C();

  v113 = os_log_type_enabled(v111, v112);
  v208 = v106;
  if (v113)
  {
    v180 = v112;
    v181 = v111;
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v218[0] = v115;
    *v114 = v174;
    v116 = *(v106 + 16);
    if (v116)
    {
      v176 = v104;
      *&v219 = MEMORY[0x1E69E7CC0];
      sub_1D99FE164(0, v116, 0);
      v117 = v219;
      v118 = (v106 + 32);
      do
      {
        v119 = *v118++;
        v120 = 0xE300000000000000;
        v121 = 7631457;
        switch(v119)
        {
          case 1:
            v120 = 0xE600000000000000;
            v121 = 0x65727574616ELL;
            break;
          case 2:
            v120 = 0xE800000000000000;
            v121 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v120 = 0xEF6B72616D646E61;
            v121 = 0x4C6C61727574616ELL;
            break;
          case 4:
            v120 = 0xE500000000000000;
            v121 = 0x616964656DLL;
            break;
          case 5:
            v120 = 0xE400000000000000;
            v121 = 1802465122;
            break;
          case 6:
            v120 = 0xE500000000000000;
            v121 = 0x6D75626C61;
            break;
          case 7:
            v120 = 0xE400000000000000;
            v121 = 1937006947;
            break;
          case 8:
            v120 = 0xE400000000000000;
            v121 = 1936158564;
            break;
          case 9:
            v120 = 0xE700000000000000;
            v122 = 1835626081;
            goto LABEL_66;
          case 10:
            v120 = 0xE500000000000000;
            v121 = 0x7364726962;
            break;
          case 11:
            v120 = 0xE700000000000000;
            v121 = 0x73746365736E69;
            break;
          case 12:
            v120 = 0xE800000000000000;
            v121 = 0x73656C6974706572;
            break;
          case 13:
            v120 = 0xE700000000000000;
            v122 = 1835884909;
LABEL_66:
            v121 = v122 | 0x736C6100000000;
            break;
          case 14:
            v121 = 0xD000000000000010;
            v120 = v172;
            break;
          case 15:
            v120 = 0xE700000000000000;
            v121 = 0x6C657261707061;
            break;
          case 16:
            v120 = 0xEB00000000736569;
            v121 = 0x726F737365636361;
            break;
          case 17:
            v120 = 0xE400000000000000;
            v121 = 1685024614;
            break;
          case 18:
            v120 = 0xEA0000000000746ELL;
            v121 = 0x6F726665726F7473;
            break;
          case 19:
            v123 = 1852270963;
            goto LABEL_73;
          case 20:
            v121 = 0xD000000000000011;
            v120 = v173;
            break;
          case 21:
            v123 = 1869903201;
LABEL_73:
            v121 = v123 | 0x626D795300000000;
            v120 = 0xEA00000000006C6FLL;
            break;
          case 22:
            v120 = 0xEF6C6F626D79536FLL;
            v121 = 0x676F4C646E617262;
            break;
          case 23:
            v120 = 0xE700000000000000;
            v121 = 0x65646F63726162;
            break;
          case 24:
            v120 = 0xE900000000000065;
            v121 = 0x727574706C756373;
            break;
          case 25:
            v120 = 0xE700000000000000;
            v121 = 0x656E696C796B73;
            break;
          case 26:
            v120 = 0xE800000000000000;
            v121 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        *&v219 = v117;
        v125 = *(v117 + 16);
        v124 = *(v117 + 24);
        if (v125 >= v124 >> 1)
        {
          sub_1D99FE164((v124 > 1), v125 + 1, 1);
          v117 = v219;
        }

        *(v117 + 16) = v125 + 1;
        v126 = v117 + 16 * v125;
        *(v126 + 32) = v121;
        *(v126 + 40) = v120;
        --v116;
      }

      while (v116);
      v47 = v215;
      v104 = v176;
    }

    else
    {
      v117 = MEMORY[0x1E69E7CC0];
    }

    v127 = MEMORY[0x1DA73E110](v117, MEMORY[0x1E69E6158]);
    v129 = v128;

    v130 = sub_1D9A0E224(v127, v129, v218);

    *(v114 + 4) = v130;
    *(v114 + 12) = 2080;
    v131 = v196;
    v132 = v196[1];
    v219 = *v196;
    v220 = v132;
    v133 = NormalizedRect.loggingDescription.getter();
    v135 = v134;
    sub_1D9AF6AA0(v131, type metadata accessor for VisualUnderstanding.ImageRegion);
    v136 = sub_1D9A0E224(v133, v135, v218);

    *(v114 + 14) = v136;
    v137 = v181;
    _os_log_impl(&dword_1D9962000, v181, v180, "Extract domain signals: %s from region %s", v114, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v115, -1, -1);
    MEMORY[0x1DA7405F0](v114, -1, -1);

    v104(v197, v217);
    v48 = v195;
  }

  else
  {

    sub_1D9AF6AA0(v110, type metadata accessor for VisualUnderstanding.ImageRegion);
    v104(v109, v217);
  }

  type metadata accessor for SignalsExtractionProcessor();
  v218[1] = v186;
  v218[0] = v185;
  v138 = *(v48 + 16);
  v139 = *(v48 + 24);
  v140 = v187;
  sub_1D9AF69C8(v47, v187, type metadata accessor for VisualUnderstanding.ImageRegion);
  v141 = v183;
  v142 = swift_allocObject();
  v143 = v193;
  *(v142 + 16) = v194;
  *(v142 + 24) = v143;
  sub_1D9AF6B1C(v140, v142 + v141, type metadata accessor for VisualUnderstanding.ImageRegion);
  v47 = v215;

  v144 = v209;
  sub_1D99B6358(v47, v208, v191, v218, v189, v138, v139, 0, &v219, 1u, v182, v210, 3, 1, v190, sub_1D9AF6B84, v142);
  if (!v144)
  {
    v209 = 0;

    sub_1D99A17C8(&v219, v218);
    v45 = v216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1D9AF916C(0, v45[2] + 1, 1, v45);
    }

    v146 = v45[2];
    v145 = v45[3];
    if (v146 >= v145 >> 1)
    {
      v45 = sub_1D9AF916C((v145 > 1), v146 + 1, 1, v45);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v219);
    v45[2] = v146 + 1;
    sub_1D99BB604(v218, &v45[5 * v146 + 4]);
    goto LABEL_4;
  }

  v147 = v144;

  sub_1D99F2604(v204, v205);

  sub_1D9AF6AA0(v47, type metadata accessor for VisualUnderstanding.ImageRegion);

LABEL_101:

  return v147;
}

void sub_1D9AF34FC(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = *a1;
  if (*(a1 + 48) == 1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v4;
    v7 = v4;
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 24);
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = v10;
    v21 = v9;
    v22 = v8;
    v11 = *a4;
    v12 = a4[1];
    v13 = a4[2];
    v14 = a4[3];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    sub_1D9C12180(&v18, isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
    *(a3 + 16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_1D9AF3610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v161 = a4;
  v162 = a5;
  v160 = a3;
  v148 = sub_1D9C7D8DC();
  v16 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v130 - v23;
  v158 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v24 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v142 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v130 - v28;
  v159 = a1;
  v30 = *(a1 + 48);
  v31 = *(v30 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v32 = 0;
  v153 = a9;
  v154 = 0;
  v152 = v24;
  v157 = (v24 + 56);
  v141 = 0x80000001D9CA3A40;
  v143 = (v16 + 8);
  v144 = (v16 + 16);
  v135 = (v16 + 32);
  v137 = a8;
  v145 = a8;
  v150 = a6;
  if ((a6 - 1) >= 5)
  {
    v33 = 0;
  }

  else
  {
    v33 = a6;
  }

  v156 = v33;
  v34 = (v30 + 156);
  v35 = MEMORY[0x1E69E7CC0];
  *&v27 = 67109120;
  v136 = v27;
  *&v27 = 136315394;
  v134 = v27;
  v149 = v10;
  v151 = a7;
  v155 = v31;
  while (v32 < *(v30 + 16))
  {
    if (*v34 != 1)
    {
      goto LABEL_9;
    }

    v36 = *(v34 - 124);
    v163[0] = *(v10 + 32);
    if (*(a7 + 16))
    {

      v37 = sub_1D99EE138(v36);
      if (v38)
      {
        v39 = v152;
        sub_1D9AF69C8(*(a7 + 56) + *(v152 + 72) * v37, v29, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
        (*(v39 + 56))(v29, 0, 1, v158);
      }

      else
      {
        (*v157)(v29, 1, 1, v158);
      }
    }

    else
    {
      (*v157)(v29, 1, 1, v158);
    }

    v40 = sub_1D9A121CC(v159, v160, v161, v162, v163, v156, 1, v29);
    sub_1D99A6AE0(v29, &qword_1ECB51B78);

    if (v40)
    {
      v41 = v152;
      if (v150 == 3 || v150 == 5)
      {
        goto LABEL_34;
      }

      if (*(a7 + 16))
      {
        v42 = sub_1D99EE138(v36);
        if (v43)
        {
          v44 = v142;
          sub_1D9AF69C8(*(a7 + 56) + *(v41 + 72) * v42, v142, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
          v45 = *(v44 + 24);
          sub_1D9AF6AA0(v44, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
          if (v45 >= 1)
          {
            v46 = *v153;
            if (*(*v153 + 16))
            {
              v47 = sub_1D99EE138(v36);
              if ((v48 & 1) != 0 && *(*(v46 + 56) + 8 * v47) >= v45)
              {
                v133 = v45;
                if (qword_1EDD354B8 != -1)
                {
                  swift_once();
                }

                v49 = byte_1EDD354C0;
                if (byte_1EDD354C0 != 1)
                {
                  goto LABEL_94;
                }

                v50 = [objc_opt_self() mainBundle];
                v51 = [v50 bundleIdentifier];

                if (v51)
                {
                  LODWORD(v140) = 1;
                  v52 = sub_1D9C7DC7C();
                  v54 = v53;

                  if (v52 == 0xD00000000000002BLL && v141 == v54)
                  {

                    v49 = v140;
LABEL_86:
                    v102 = &off_1ECB51BA8;
                    if (qword_1ECB50988 != -1)
                    {
                      swift_once();
                      v102 = &off_1ECB51BA8;
                    }

LABEL_90:
                    v140 = *(*v102 + 32);

                    v103 = sub_1D9C7DC4C();
                    LODWORD(v140) = [v140 BOOLForKey_];

                    a7 = v151;
                    if (v140)
                    {
                      if (qword_1EDD2C988 != -1)
                      {
                        swift_once();
                      }

                      v104 = v148;
                      v105 = __swift_project_value_buffer(v148, qword_1EDD2C990);
                      v140 = *v144;
                      (v140)(v139, v105, v104);
                      goto LABEL_97;
                    }

LABEL_94:
                    if (qword_1EDD354D0 != -1)
                    {
                      swift_once();
                    }

                    v106 = v148;
                    v107 = __swift_project_value_buffer(v148, qword_1EDD354D8);
                    v140 = *v144;
                    (v140)(v139, v107, v106);
                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_108;
                    }

LABEL_97:
                    v108 = [objc_opt_self() mainBundle];
                    v109 = [v108 bundleIdentifier];

                    if (v109)
                    {
                      v110 = sub_1D9C7DC7C();
                      v112 = v111;

                      if (v110 == 0xD00000000000002BLL && v141 == v112)
                      {

LABEL_102:
                        v114 = &off_1ECB51BA8;
                        if (qword_1ECB50988 != -1)
                        {
                          swift_once();
                          v114 = &off_1ECB51BA8;
                        }

LABEL_106:
                        v115 = *(*v114 + 32);

                        v116 = sub_1D9C7DC4C();
                        LODWORD(v115) = [v115 BOOLForKey_];

                        a7 = v151;
                        if (v115)
                        {
                          (*v135)(v138, v139, v148);
LABEL_111:
                          v10 = v149;
                          v119 = sub_1D9C7D8BC();
                          LODWORD(v140) = sub_1D9C7E09C();
                          if (os_log_type_enabled(v119, v140))
                          {
                            v120 = swift_slowAlloc();
                            v132 = swift_slowAlloc();
                            v163[0] = v132;
                            *v120 = v134;
                            v121 = sub_1D9A15C94(v36);
                            v123 = sub_1D9A0E224(v121, v122, v163);
                            v131 = v119;
                            v124 = v123;

                            *(v120 + 4) = v124;
                            *(v120 + 12) = 1024;
                            *(v120 + 14) = v133;
                            v125 = v131;
                            _os_log_impl(&dword_1D9962000, v131, v140, "Domain %s exceeds maxNumOfDomainModelRuns (%d)", v120, 0x12u);
                            v126 = v132;
                            __swift_destroy_boxed_opaque_existential_0Tm(v132);
                            MEMORY[0x1DA7405F0](v126, -1, -1);
                            v127 = v120;
                            a7 = v151;
                            MEMORY[0x1DA7405F0](v127, -1, -1);
                          }

                          else
                          {
                          }

                          (*v143)(v138, v148);
                          goto LABEL_8;
                        }

LABEL_108:
                        if (qword_1EDD354D0 != -1)
                        {
                          swift_once();
                        }

                        v117 = v148;
                        v118 = __swift_project_value_buffer(v148, qword_1EDD354D8);
                        (v140)(v138, v118, v117);
                        (*v143)(v139, v117);
                        goto LABEL_111;
                      }

                      v113 = sub_1D9C7E7DC();

                      if (v113)
                      {
                        goto LABEL_102;
                      }
                    }

                    v114 = &qword_1EDD355A8;
                    if (qword_1EDD355A0 != -1)
                    {
                      swift_once();
                      v114 = &qword_1EDD355A8;
                    }

                    goto LABEL_106;
                  }

                  v101 = sub_1D9C7E7DC();

                  v49 = v140;
                  if (v101)
                  {
                    goto LABEL_86;
                  }
                }

                v102 = &qword_1EDD355A8;
                if (qword_1EDD355A0 != -1)
                {
                  swift_once();
                  v102 = &qword_1EDD355A8;
                }

                goto LABEL_90;
              }
            }

LABEL_34:
            v55 = __OFADD__(a2++, 1);
            if (v55)
            {
              goto LABEL_119;
            }

            sub_1D9979BF4(v154);
            v56 = v153;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58 = *v56;
            v163[0] = v58;
            v59 = sub_1D99EE138(v36);
            v61 = v58[2];
            v62 = (v60 & 1) == 0;
            v55 = __OFADD__(v61, v62);
            v63 = v61 + v62;
            if (v55)
            {
              goto LABEL_120;
            }

            v64 = v60;
            if (v58[3] >= v63)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v128 = v59;
                sub_1D9C14DDC();
                v59 = v128;
                v58 = v163[0];
              }
            }

            else
            {
              sub_1D9C0AF58(v63, isUniquelyReferenced_nonNull_native);
              v58 = v163[0];
              v59 = sub_1D99EE138(v36);
              if ((v64 & 1) != (v65 & 1))
              {
                goto LABEL_123;
              }
            }

            *v153 = v58;
            if ((v64 & 1) == 0)
            {
              v58[(v59 >> 6) + 8] |= 1 << v59;
              *(v58[6] + v59) = v36;
              *(v58[7] + 8 * v59) = 0;
              v66 = v58[2];
              v55 = __OFADD__(v66, 1);
              v67 = v66 + 1;
              if (v55)
              {
                goto LABEL_122;
              }

              v58[2] = v67;
            }

            v68 = v58[7];
            v69 = *(v68 + 8 * v59);
            v55 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v55)
            {
              goto LABEL_121;
            }

            *(v68 + 8 * v59) = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1D9AF8AB8(0, *(v35 + 2) + 1, 1, v35);
            }

            v10 = v149;
            v72 = *(v35 + 2);
            v71 = *(v35 + 3);
            if (v72 >= v71 >> 1)
            {
              v35 = sub_1D9AF8AB8((v71 > 1), v72 + 1, 1, v35);
            }

            *(v35 + 2) = v72 + 1;
            v35[v72 + 32] = v36;
            v154 = sub_1D9AEA550;
LABEL_7:
            a7 = v151;
            goto LABEL_8;
          }
        }
      }

      if (a2 < v145)
      {
        goto LABEL_34;
      }

      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v73 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_66;
      }

      v74 = [objc_opt_self() mainBundle];
      v75 = [v74 bundleIdentifier];

      if (v75)
      {
        v76 = sub_1D9C7DC7C();
        v78 = v77;

        if (v76 == 0xD00000000000002BLL && v141 == v78)
        {

LABEL_58:
          v80 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v80 = &off_1ECB51BA8;
          }

LABEL_62:
          v81 = *(*v80 + 32);

          v82 = sub_1D9C7DC4C();
          LODWORD(v81) = [v81 BOOLForKey_];

          if (v81)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v83 = v148;
            v84 = __swift_project_value_buffer(v148, qword_1EDD2C990);
            v140 = *v144;
            (v140)(v146, v84, v83);
            goto LABEL_69;
          }

LABEL_66:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v85 = v148;
          v86 = __swift_project_value_buffer(v148, qword_1EDD354D8);
          v140 = *v144;
          (v140)(v146, v86, v85);
          if ((v73 & 1) == 0)
          {
            goto LABEL_80;
          }

LABEL_69:
          v87 = [objc_opt_self() mainBundle];
          v88 = [v87 bundleIdentifier];

          if (v88)
          {
            v89 = sub_1D9C7DC7C();
            v91 = v90;

            if (v89 == 0xD00000000000002BLL && v141 == v91)
            {

LABEL_74:
              v93 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v93 = &off_1ECB51BA8;
              }

LABEL_78:
              v94 = *(*v93 + 32);

              v95 = sub_1D9C7DC4C();
              LODWORD(v94) = [v94 BOOLForKey_];

              if (v94)
              {
                (*v135)(v147, v146, v148);
LABEL_83:
                v10 = v149;
                v98 = sub_1D9C7D8BC();
                v99 = sub_1D9C7E09C();
                if (os_log_type_enabled(v98, v99))
                {
                  v100 = swift_slowAlloc();
                  *v100 = v136;
                  *(v100 + 4) = v137;
                  _os_log_impl(&dword_1D9962000, v98, v99, "Request counts exceeds maxNumOfRegionsWithDomainSignals (%d)", v100, 8u);
                  MEMORY[0x1DA7405F0](v100, -1, -1);
                }

                (*v143)(v147, v148);
                goto LABEL_7;
              }

LABEL_80:
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
              }

              v96 = v148;
              v97 = __swift_project_value_buffer(v148, qword_1EDD354D8);
              (v140)(v147, v97, v96);
              (*v143)(v146, v96);
              goto LABEL_83;
            }

            v92 = sub_1D9C7E7DC();

            if (v92)
            {
              goto LABEL_74;
            }
          }

          v93 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v93 = &qword_1EDD355A8;
          }

          goto LABEL_78;
        }

        v79 = sub_1D9C7E7DC();

        if (v79)
        {
          goto LABEL_58;
        }
      }

      v80 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v80 = &qword_1EDD355A8;
      }

      goto LABEL_62;
    }

LABEL_8:
    v31 = v155;
LABEL_9:
    ++v32;
    v34 += 160;
    if (v31 == v32)
    {
      sub_1D9979BF4(v154);
      return v35;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9AF48C4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = *v6;
  v12 = *a2;
  v28 = a2[1];
  v29 = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = v11;
  isUniquelyReferenced_nonNull_native = sub_1D9AF69C8(a1, a5, type metadata accessor for VisualUnderstanding.ImageRegion);
  if (v13)
  {
    v27 = a3;
    v17 = *(a5 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1D9AF8CE0(0, *(v17 + 16) + 1, 1, v17);
      v17 = isUniquelyReferenced_nonNull_native;
    }

    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D9AF8CE0((v19 > 1), v20 + 1, 1, v17);
      v17 = isUniquelyReferenced_nonNull_native;
    }

    *(v17 + 16) = v20 + 1;
    v21 = v17 + 48 * v20;
    v22 = v28;
    *(v21 + 32) = v29;
    *(v21 + 48) = v22;
    *(v21 + 64) = v13;
    *(v21 + 72) = v14;
    *(a5 + 112) = v17;
    a4 = v18;
    a3 = v27;
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v26[2] = v6;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a1;
  v26[6] = a5;
  v26[7] = v15;
  v24 = sub_1D9BE77D4(sub_1D9AF58C0, v26, v23);

  *(a5 + 48) = v24;
  return result;
}

uint64_t sub_1D9AF4A70@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v132 = a2;
  v128 = a6;
  v129 = a7;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v130 = *(v13 - 8);
  v131 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v119 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v120 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v118 - v18;
  v19 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v121 = (&v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v122 = (&v118 - v22);
  v23 = sub_1D9C7D8DC();
  v126 = *(v23 - 8);
  v127 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v123 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v118 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v118 - v28;
  v30 = a1[7];
  v31 = a1[5];
  v168 = a1[6];
  v169 = v30;
  v32 = a1[7];
  v170[0] = a1[8];
  *(v170 + 13) = *(a1 + 141);
  v33 = a1[3];
  v34 = a1[1];
  v164 = a1[2];
  v165 = v33;
  v35 = a1[3];
  v36 = a1[5];
  v166 = a1[4];
  v167 = v36;
  v37 = a1[1];
  v163[0] = *a1;
  v163[1] = v37;
  v160 = v168;
  v161 = v32;
  v162[0] = a1[8];
  *(v162 + 13) = *(a1 + 141);
  v156 = v164;
  v157 = v35;
  v158 = v166;
  v159 = v31;
  v154 = v163[0];
  v155 = v34;
  v38 = LOBYTE(v163[0]);
  LOBYTE(v136) = v163[0];
  sub_1D99AE054(v163, &v145);
  v39 = sub_1D9AF66E8(&v136, a3);
  v134[2] = &v154;
  v134[3] = a5;
  v40 = a5;
  v41 = v133;
  if (sub_1D9BC18D0(sub_1D9AF69A8, v134, a4))
  {
    v133 = v41;
    v42 = v128;
    v43 = *(v128 + 112);
    LOBYTE(v136) = v38;
    v44 = *(a3 + 16);
    v118 = a8;
    if (v44)
    {

      v45 = sub_1D99EE138(v38);
      if (v46)
      {
        v47 = v130;
        sub_1D9AF69C8(*(a3 + 56) + *(v130 + 72) * v45, v29, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
        (*(v47 + 56))(v29, 0, 1, v131);
      }

      else
      {
        (*(v130 + 56))(v29, 1, 1, v131);
      }
    }

    else
    {
      (*(v130 + 56))(v29, 1, 1, v131);
    }

    v52 = sub_1D9A10DC0(&v145, v43, &v136, v29, *(v132 + 56));

    sub_1D99A6AE0(v29, &qword_1ECB51B78);
    if (v52)
    {
      if (v39)
      {
        v53 = *(v42 + 112);
        v54 = *(a3 + 16);

        if (v54 && (v55 = sub_1D99EE138(v38), (v56 & 1) != 0))
        {
          LODWORD(v129) = v38;
          v57 = v119;
          sub_1D9AF69C8(*(a3 + 56) + *(v130 + 72) * v55, v119, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
          v58 = v120;
          sub_1D9AF6A30(v57 + *(v131 + 40), v120);
          v59 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
          v38 = *(v59 - 8);
          v60 = *(v38 + 48);
          if (v60(v58, 1, v59) == 1)
          {
            v61 = v124;
            *v124 = 0;
            *(v61 + 1) = 0;
            *(v61 + 2) = 0xE000000000000000;
            *(v61 + 3) = MEMORY[0x1E69E7CC0];
            *(v61 + 8) = 0;
            sub_1D9C7D3BC();
            sub_1D9AF6AA0(v57, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
            if (v60(v58, 1, v59) != 1)
            {
              sub_1D99A6AE0(v58, &qword_1ECB51B70);
            }
          }

          else
          {
            sub_1D9AF6AA0(v57, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
            v61 = v124;
            sub_1D9AF6B1C(v58, v124, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
          }

          (*(v38 + 56))(v61, 0, 1, v59);
          LOBYTE(v38) = v129;
        }

        else
        {
          v95 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
          v61 = v124;
          (*(*(v95 - 8) + 56))(v124, 1, 1, v95);
        }

        LOBYTE(v145) = v38;
        v100 = sub_1D9A13C84(v53, v61, &v145, *(v132 + 48));
        v102 = v101;
        v104 = v103;

        sub_1D99A6AE0(v61, &qword_1ECB51B70);
        if (v102)
        {
          v105 = sub_1D9AC15CC(v100, v102);
          if (v106)
          {
            v107 = v105;
            v108 = v106;

            *(&v162[0] + 1) = v100;
            *&v162[1] = v102;
            DWORD2(v162[1]) = v104;

            *&v157 = v107;
            *(&v157 + 1) = v108;
            v109 = sub_1D9BFDD74(v107, v108);
            v111 = v110;

            *&v158 = v109;
            *(&v158 + 1) = v111;
          }

          else
          {
          }
        }
      }
    }

    else
    {
      LODWORD(v129) = v38;
      v62 = v145;
      if (v145 == 27)
      {
        BYTE12(v161) = 0;
        v63 = v123;
        static Logger.argos.getter(v123);
        v64 = v121;
        sub_1D9AF69C8(v40, v121, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99AE054(v163, &v145);
        v65 = sub_1D9C7D8BC();
        v66 = sub_1D9C7E09C();
        sub_1D99AE0B0(v163);
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *&v136 = v68;
          *v67 = 136315394;
          v69 = sub_1D9A15C94(v129);
          v71 = sub_1D9A0E224(v69, v70, &v136);

          *(v67 + 4) = v71;
          *(v67 + 12) = 2080;
          v72 = v64[1];
          v145 = *v64;
          v146 = v72;
          v73 = NormalizedRect.loggingDescription.getter();
          v75 = v74;
          sub_1D9AF6AA0(v64, type metadata accessor for VisualUnderstanding.ImageRegion);
          v76 = sub_1D9A0E224(v73, v75, &v136);

          *(v67 + 14) = v76;
          _os_log_impl(&dword_1D9962000, v65, v66, "Suppress domain %s for region %s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v68, -1, -1);
          MEMORY[0x1DA7405F0](v67, -1, -1);
        }

        else
        {

          sub_1D9AF6AA0(v64, type metadata accessor for VisualUnderstanding.ImageRegion);
        }

        (*(v126 + 8))(v63, v127);
        v96 = v160;
        v97 = v161;
        v142 = v160;
        v143 = v161;
        v98 = v162[0];
        v144[0] = v162[0];
        v99 = *(v162 + 13);
        goto LABEL_32;
      }

      v77 = v125;
      static Logger.argos.getter(v125);
      v78 = v122;
      sub_1D9AF69C8(v40, v122, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99AE054(v163, &v145);
      v79 = sub_1D9C7D8BC();
      v80 = sub_1D9C7E09C();
      sub_1D99AE0B0(v163);
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        LODWORD(v132) = v80;
        v82 = v81;
        v83 = swift_slowAlloc();
        *&v136 = v83;
        *v82 = 136315650;
        v84 = sub_1D9A15C94(v62);
        v86 = sub_1D9A0E224(v84, v85, &v136);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        v87 = sub_1D9A15C94(v129);
        v89 = sub_1D9A0E224(v87, v88, &v136);

        *(v82 + 14) = v89;
        *(v82 + 22) = 2080;
        v90 = v78[1];
        v145 = *v78;
        v146 = v90;
        v91 = NormalizedRect.loggingDescription.getter();
        v93 = v92;
        sub_1D9AF6AA0(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
        v94 = sub_1D9A0E224(v91, v93, &v136);

        *(v82 + 24) = v94;
        _os_log_impl(&dword_1D9962000, v79, v132, "Switch to domain %s from domain %s for region %s", v82, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v83, -1, -1);
        MEMORY[0x1DA7405F0](v82, -1, -1);

        (*(v126 + 8))(v125, v127);
      }

      else
      {

        sub_1D9AF6AA0(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
        (*(v126 + 8))(v77, v127);
      }

      LOBYTE(v154) = v62;
    }

    v96 = v160;
    v97 = v161;
    v142 = v160;
    v143 = v161;
    v98 = v162[0];
    v144[0] = v162[0];
    v99 = *(v162 + 13);
LABEL_32:
    *(v144 + 13) = v99;
    v138 = v156;
    v139 = v157;
    v140 = v158;
    v141 = v159;
    v136 = v154;
    v137 = v155;
    v151 = v96;
    v152 = v97;
    v153[0] = v98;
    *(v153 + 13) = *(v162 + 13);
    v147 = v156;
    v148 = v157;
    v149 = v158;
    v150 = v159;
    v145 = v154;
    v146 = v155;
    faiss::NormalizationTransform::~NormalizationTransform(&v145);
    v112 = v152;
    v113 = v118;
    v118[6] = v151;
    v113[7] = v112;
    v113[8] = v153[0];
    *(v113 + 141) = *(v153 + 13);
    v114 = v148;
    v113[2] = v147;
    v113[3] = v114;
    v115 = v150;
    v113[4] = v149;
    v113[5] = v115;
    v116 = v146;
    *v113 = v145;
    v113[1] = v116;
    sub_1D99AE054(&v136, v135);
    goto LABEL_33;
  }

  v142 = v160;
  v143 = v161;
  v144[0] = v162[0];
  *(v144 + 13) = *(v162 + 13);
  v138 = v156;
  v139 = v157;
  v140 = v158;
  v141 = v159;
  v136 = v154;
  v137 = v155;
  v151 = v160;
  v152 = v161;
  v153[0] = v162[0];
  *(v153 + 13) = *(v162 + 13);
  v147 = v156;
  v148 = v157;
  v149 = v158;
  v150 = v159;
  v145 = v154;
  v146 = v155;
  faiss::NormalizationTransform::~NormalizationTransform(&v145);
  v48 = v152;
  a8[6] = v151;
  a8[7] = v48;
  a8[8] = v153[0];
  *(a8 + 141) = *(v153 + 13);
  v49 = v148;
  a8[2] = v147;
  a8[3] = v49;
  v50 = v150;
  a8[4] = v149;
  a8[5] = v50;
  v51 = v146;
  *a8 = v145;
  a8[1] = v51;
  sub_1D99AE054(&v136, v135);
LABEL_33:
  v151 = v160;
  v152 = v161;
  v153[0] = v162[0];
  *(v153 + 13) = *(v162 + 13);
  v147 = v156;
  v148 = v157;
  v149 = v158;
  v150 = v159;
  v145 = v154;
  v146 = v155;
  return sub_1D99AE0B0(&v145);
}

BOOL sub_1D9AF575C(uint64_t a1, char *a2, CGRect *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = sub_1D9A15C94(*a1);
  v11 = v10;
  if (v9 == sub_1D9A15C94(v8) && v11 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_1D9C7E7DC();

  result = 0;
  if (v14)
  {
LABEL_8:
    v16.origin.x = v4;
    v16.origin.y = v5;
    v16.size.width = v6;
    v16.size.height = v7;
    return CGRectEqualToRect(v16, *a3);
  }

  return result;
}

uint64_t sub_1D9AF583C()
{

  return swift_deallocClassInstance();
}

void *sub_1D9AF58E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v137 = a4;
  v138 = a5;
  v135 = a2;
  v136 = a3;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v9);
  v127 = (&v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v109 - v19;
  v132 = *(a1 + 16);
  if (v132)
  {
    v20 = 0;
    v130 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v129 = a1 + v130;
    v21 = *(v17 + 72);
    v110 = 0x80000001D9CA3A40;
    v118 = (v7 + 16);
    v117 = (v7 + 8);
    v113 = "NSFW Model Postprocess Results";
    *&v18 = 136315394;
    v112 = v18;
    v111 = xmmword_1D9C86430;
    v121 = v6;
    v22 = MEMORY[0x1E69E7CC0];
    v128 = v21;
    v131 = v13;
    while (1)
    {
      v23 = (v129 + v21 * v20);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v28 = v135;
      swift_beginAccess();
      v29 = *v28;
      v30 = *(*v28 + 16);
      v140 = v23;
      v141 = v22;
      v139 = v20;
      if (v30)
      {
        v31 = sub_1D99EE1AC(v24, v25, v26, v27);
        if (v32)
        {
          break;
        }
      }

      swift_endAccess();
      v44 = 0;
      v45 = 0;
      *&v46 = 0.0;
      *&v47 = 0.0;
      v48 = 0;
      v49 = 0;
LABEL_13:
      *&v144 = v44;
      *(&v144 + 1) = v45;
      v145 = *&v46;
      v146 = *&v47;
      v147 = v48;
      v148 = v49;
      v50 = *v138;

      v51 = v134;
      sub_1D9AF48C4(v140, &v144, v137, v50, v134);

      sub_1D9AF6BF8(v44, v45, v46, v47, v48);
      v52 = v133;
      sub_1D9AF6B1C(v51, v133, type metadata accessor for VisualUnderstanding.ImageRegion);
      v53 = v131;
      sub_1D9AF6B1C(v52, v131, type metadata accessor for VisualUnderstanding.ImageRegion);
      v22 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D9AF8A90(0, v22[2] + 1, 1, v22);
      }

      v54 = v139;
      v56 = v22[2];
      v55 = v22[3];
      if (v56 >= v55 >> 1)
      {
        v22 = sub_1D9AF8A90(v55 > 1, v56 + 1, 1, v22);
      }

      v20 = v54 + 1;
      v22[2] = v56 + 1;
      v21 = v128;
      sub_1D9AF6B1C(v53, v22 + v130 + v56 * v128, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v20 == v132)
      {
        return v22;
      }
    }

    v33 = (*(v29 + 56) + 48 * v31);
    v34 = v33[1];
    v126 = *v33;
    v125 = v34;
    v35 = v33[3];
    v124 = v33[2];
    v123 = v35;
    v36 = v33[4];
    v37 = v33[5];
    swift_endAccess();
    v38 = qword_1EDD354B8;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    if (v38 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_27;
    }

    v39 = [objc_opt_self() mainBundle];
    v40 = [v39 bundleIdentifier];

    if (v40)
    {
      v41 = sub_1D9C7DC7C();
      v43 = v42;

      if (v41 == 0xD00000000000002BLL && v110 == v43)
      {

        goto LABEL_20;
      }

      v57 = sub_1D9C7E7DC();

      if (v57)
      {
LABEL_20:
        v58 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v58 = &off_1ECB51BA8;
        }

        goto LABEL_24;
      }
    }

    v58 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v58 = &qword_1EDD355A8;
    }

LABEL_24:
    v59 = *(*v58 + 32);

    v60 = sub_1D9C7DC4C();
    LODWORD(v59) = [v59 BOOLForKey_];

    if (v59)
    {
      v61 = qword_1EDD2C990;
      v62 = v122;
      v63 = v127;
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
        v61 = qword_1EDD2C990;
      }

LABEL_29:
      v64 = v121;
      v65 = __swift_project_value_buffer(v121, v61);
      (*v118)(v62, v65, v64);
      sub_1D9AF69C8(v23, v63, type metadata accessor for VisualUnderstanding.ImageRegion);

      v66 = sub_1D9C7D8BC();
      v67 = v37;
      v68 = sub_1D9C7E09C();

      v120 = v68;
      if (os_log_type_enabled(v66, v68))
      {
        v116 = v66;
        v69 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v143 = v115;
        *v69 = v112;
        v70 = *(v67 + 16);
        v119 = v36;
        if (v70)
        {
          v114 = v69;
          v142 = MEMORY[0x1E69E7CC0];
          sub_1D99FE164(0, v70, 0);
          v71 = v142;
          v72 = (v67 + 48);
          do
          {
            v73 = *(v72 - 1);
            v74 = *v72;
            *&v144 = *(v72 - 2);
            *(&v144 + 1) = v73;
            v145 = v74;

            v75 = sub_1D9C7DD0C();
            v77 = v76;
            v142 = v71;
            v79 = *(v71 + 16);
            v78 = *(v71 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_1D99FE164((v78 > 1), v79 + 1, 1);
              v71 = v142;
            }

            *(v71 + 16) = v79 + 1;
            v80 = v71 + 16 * v79;
            *(v80 + 32) = v75;
            *(v80 + 40) = v77;
            v72 += 3;
            --v70;
          }

          while (v70);
          v49 = v67;

          v69 = v114;
        }

        else
        {
          v49 = v67;

          v71 = MEMORY[0x1E69E7CC0];
        }

        v81 = MEMORY[0x1E69E6158];
        v82 = MEMORY[0x1DA73E110](v71, MEMORY[0x1E69E6158]);
        v84 = v83;

        v85 = sub_1D9A0E224(v82, v84, &v143);

        *(v69 + 4) = v85;
        *(v69 + 12) = 2080;
        v86 = v127;
        v87 = *v127;
        v88 = *(v127 + 1);
        v89 = *(v127 + 2);
        v90 = *(v127 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
        v91 = swift_allocObject();
        *(v91 + 16) = v111;
        v149.origin.x = v87;
        v149.origin.y = v88;
        v149.size.width = v89;
        v149.size.height = v90;
        MinX = CGRectGetMinX(v149);
        v93 = MEMORY[0x1E69E7DE0];
        *(v91 + 56) = MEMORY[0x1E69E7DE0];
        v94 = sub_1D99D2A0C();
        *(v91 + 64) = v94;
        *(v91 + 32) = MinX;
        v150.origin.x = v87;
        v150.origin.y = v88;
        v150.size.width = v89;
        v150.size.height = v90;
        MinY = CGRectGetMinY(v150);
        *(v91 + 96) = v93;
        *(v91 + 104) = v94;
        *(v91 + 72) = MinY;
        v151.origin.x = v87;
        v151.origin.y = v88;
        v151.size.width = v89;
        v151.size.height = v90;
        Width = CGRectGetWidth(v151);
        *(v91 + 136) = v93;
        *(v91 + 144) = v94;
        *(v91 + 112) = Width;
        v152.origin.x = v87;
        v152.origin.y = v88;
        v152.size.width = v89;
        v152.size.height = v90;
        Height = CGRectGetHeight(v152);
        *(v91 + 176) = v93;
        *(v91 + 184) = v94;
        *(v91 + 152) = Height;
        *&v144 = v87;
        *(&v144 + 1) = v88;
        v145 = v89;
        v146 = v90;
        NormalizedRect.rectID.getter();
        v99 = v98;
        v101 = v100;
        *(v91 + 216) = v81;
        *(v91 + 224) = sub_1D99D2A60();
        *(v91 + 192) = v99;
        *(v91 + 200) = v101;
        v102 = sub_1D9C7DCAC();
        v104 = v103;
        sub_1D9AF6AA0(v86, type metadata accessor for VisualUnderstanding.ImageRegion);
        v105 = sub_1D9A0E224(v102, v104, &v143);

        *(v69 + 14) = v105;
        v106 = v116;
        _os_log_impl(&dword_1D9962000, v116, v120, "Parse extracted classifications %s from %s", v69, 0x16u);
        v107 = v115;
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v107, -1, -1);
        MEMORY[0x1DA7405F0](v69, -1, -1);

        (*v117)(v122, v121);
        v44 = v126;
        v45 = v125;
        v46 = v124;
        v47 = v123;
        v48 = v119;
      }

      else
      {

        sub_1D9AF6AA0(v127, type metadata accessor for VisualUnderstanding.ImageRegion);
        (*v117)(v62, v64);
        v49 = v67;
        v48 = v36;
        v44 = v126;
        v45 = v125;
        v46 = v124;
        v47 = v123;
      }

      goto LABEL_13;
    }

LABEL_27:
    v61 = qword_1EDD354D8;
    v62 = v122;
    v63 = v127;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
      v61 = qword_1EDD354D8;
    }

    goto LABEL_29;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D9AF64E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9C7B98C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = v12;

  sub_1D9C7B97C();
  v13 = sub_1D9C7B96C();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  type metadata accessor for RichLabelMapper();
  swift_allocObject();
  v4[5] = sub_1D9AC0CF8(v13, v15);
  type metadata accessor for RichLabelThresholdMapper();
  swift_allocObject();
  v4[6] = sub_1D99AE800();
  type metadata accessor for DomainModelOutputMapper();
  v16 = swift_allocObject();
  v17 = sub_1D9C04AB0(71, 0, 1852797802, 0xE400000000000000);
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53208);
  swift_allocObject();
  *(v16 + 16) = sub_1D9C1B65C(4, sub_1D9AF6C3C, v20);
  v4[7] = v16;
  return v4;
}

uint64_t sub_1D9AF66E8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v15 = sub_1D99EE138(*a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1D9AF69C8(*(a2 + 56) + *(v12 + 72) * v15, v14, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  sub_1D9AF6A30(&v14[*(v11 + 40)], v6);
  v17 = *(v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0xE000000000000000;
    *(v10 + 3) = MEMORY[0x1E69E7CC0];
    *(v10 + 8) = 0;
    sub_1D9C7D3BC();
    if (v17(v6, 1, v7) != 1)
    {
      sub_1D99A6AE0(v6, &qword_1ECB51B70);
    }
  }

  else
  {
    sub_1D9AF6B1C(v6, v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  }

  sub_1D9AF6AA0(v14, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  v19 = *v10;
  sub_1D9AF6AA0(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  return v19;
}

uint64_t sub_1D9AF69C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AF6A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AF6AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1D9AF6B00@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *a1;
  result = *v3;
  v5 = *(v3 + 16);
  *(a2 + 8) = *v3;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1D9AF6B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D9AF6B84(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_1D9AF34FC(a1, v4, v5, v6);
}

uint64_t sub_1D9AF6BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D9AF6C58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE6 && a1[40])
  {
    return (*a1 + 230);
  }

  v3 = *a1;
  v4 = v3 >= 0x1B;
  v5 = v3 - 27;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D9AF6C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE5)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 230;
    if (a3 >= 0xE6)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE6)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 26;
    }
  }

  return result;
}

uint64_t sub_1D9AF6CF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AnyVIImageContent();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  a1[3] = v3;
  a1[4] = &off_1F5530218;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

void VIAnnotation.mappedAnnotation.getter(char **a1@<X8>)
{
  v2 = [v1 faceAnnotations];
  if (v2)
  {
    v3 = v2;
    sub_1D9A0835C(0, &qword_1EDD2A688);
    v4 = sub_1D9C7DF2C();

    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
    {
      v6 = 0;
      v129 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA73E610](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 label];
        v11 = sub_1D9C7DC7C();
        v13 = v12;

        [v8 confidence];
        v15 = v14;
        [v8 normalizedBoundingBox];
        v141.origin.x = 0.0;
        v141.origin.y = 0.0;
        v141.size.width = 1.0;
        v141.size.height = 1.0;
        v132 = CGRectIntersection(v131, v141);
        x = v132.origin.x;
        y = v132.origin.y;
        width = v132.size.width;
        height = v132.size.height;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1D9AF9E80(0, *(v129 + 2) + 1, 1, v129, &qword_1ECB51748);
        }

        v21 = *(v129 + 2);
        v20 = *(v129 + 3);
        if (v21 >= v20 >> 1)
        {
          v129 = sub_1D9AF9E80((v20 > 1), v21 + 1, 1, v129, &qword_1ECB51748);
        }

        *(v129 + 2) = v21 + 1;
        v22 = &v129[56 * v21];
        *(v22 + 4) = v11;
        *(v22 + 5) = v13;
        *(v22 + 12) = v15;
        *(v22 + 7) = x;
        *(v22 + 8) = y;
        *(v22 + 9) = width;
        *(v22 + 10) = height;
        ++v6;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v129 = MEMORY[0x1E69E7CC0];
LABEL_21:
  }

  else
  {
    v129 = 0;
  }

  v23 = [v123 humanAnnotations];
  if (v23)
  {
    v24 = v23;
    sub_1D9A0835C(0, &qword_1EDD2A688);
    v25 = sub_1D9C7DF2C();

    if (v25 >> 62)
    {
      goto LABEL_40;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D9C7E50C())
    {
      v27 = 0;
      v128 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1DA73E610](v27, v25);
        }

        else
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v31 = [v28 label];
        v32 = sub_1D9C7DC7C();
        v34 = v33;

        [v29 confidence];
        v36 = v35;
        [v29 normalizedBoundingBox];
        v142.origin.x = 0.0;
        v142.origin.y = 0.0;
        v142.size.width = 1.0;
        v142.size.height = 1.0;
        v134 = CGRectIntersection(v133, v142);
        v37 = v134.origin.x;
        v38 = v134.origin.y;
        v39 = v134.size.width;
        v40 = v134.size.height;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_1D9AF9E80(0, *(v128 + 2) + 1, 1, v128, &qword_1ECB51748);
        }

        v42 = *(v128 + 2);
        v41 = *(v128 + 3);
        if (v42 >= v41 >> 1)
        {
          v128 = sub_1D9AF9E80((v41 > 1), v42 + 1, 1, v128, &qword_1ECB51748);
        }

        *(v128 + 2) = v42 + 1;
        v43 = &v128[56 * v42];
        *(v43 + 4) = v32;
        *(v43 + 5) = v34;
        *(v43 + 12) = v36;
        *(v43 + 7) = v37;
        *(v43 + 8) = v38;
        *(v43 + 9) = v39;
        *(v43 + 10) = v40;
        ++v27;
        if (v30 == j)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v128 = MEMORY[0x1E69E7CC0];
LABEL_42:
  }

  else
  {
    v128 = 0;
  }

  v44 = [v123 nsfwAnnotations];
  if (v44)
  {
    v45 = v44;
    sub_1D9A0835C(0, &qword_1EDD2A688);
    v46 = sub_1D9C7DF2C();

    if (v46 >> 62)
    {
      goto LABEL_61;
    }

    for (k = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_1D9C7E50C())
    {
      v48 = 0;
      v49 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x1DA73E610](v48, v46);
        }

        else
        {
          if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v50 = *(v46 + 8 * v48 + 32);
        }

        v51 = v50;
        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v53 = [v50 label];
        v54 = sub_1D9C7DC7C();
        v56 = v55;

        [v51 confidence];
        v58 = v57;
        [v51 normalizedBoundingBox];
        v143.origin.x = 0.0;
        v143.origin.y = 0.0;
        v143.size.width = 1.0;
        v143.size.height = 1.0;
        v136 = CGRectIntersection(v135, v143);
        v59 = v136.origin.x;
        v60 = v136.origin.y;
        v61 = v136.size.width;
        v62 = v136.size.height;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1D9AF9E80(0, *(v49 + 2) + 1, 1, v49, &qword_1ECB51748);
        }

        v64 = *(v49 + 2);
        v63 = *(v49 + 3);
        if (v64 >= v63 >> 1)
        {
          v49 = sub_1D9AF9E80((v63 > 1), v64 + 1, 1, v49, &qword_1ECB51748);
        }

        *(v49 + 2) = v64 + 1;
        v65 = &v49[56 * v64];
        *(v65 + 4) = v54;
        *(v65 + 5) = v56;
        *(v65 + 12) = v58;
        *(v65 + 7) = v59;
        *(v65 + 8) = v60;
        *(v65 + 9) = v61;
        *(v65 + 10) = v62;
        ++v48;
        if (v52 == k)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v49 = MEMORY[0x1E69E7CC0];
LABEL_63:
  }

  else
  {
    v49 = 0;
  }

  v66 = [v123 textBlockAnnotation];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 textAnnotations];

    sub_1D9A0835C(0, &qword_1ECB53218);
    v69 = sub_1D9C7DF2C();

    if (v69 >> 62)
    {
      goto LABEL_82;
    }

    for (m = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_1D9C7E50C())
    {
      v71 = 0;
      v72 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v69 & 0xC000000000000001) != 0)
        {
          v73 = MEMORY[0x1DA73E610](v71, v69);
        }

        else
        {
          if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_81;
          }

          v73 = *(v69 + 8 * v71 + 32);
        }

        v74 = v73;
        v75 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        v76 = [v73 text];
        v77 = sub_1D9C7DC7C();
        v79 = v78;

        [v74 confidence];
        v81 = v80;
        [v74 normalizedBoundingBox];
        v144.origin.x = 0.0;
        v144.origin.y = 0.0;
        v144.size.width = 1.0;
        v144.size.height = 1.0;
        v138 = CGRectIntersection(v137, v144);
        v82 = v138.origin.x;
        v83 = v138.origin.y;
        v84 = v138.size.width;
        v85 = v138.size.height;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1D9AF9E80(0, *(v72 + 2) + 1, 1, v72, &qword_1ECB51708);
        }

        v87 = *(v72 + 2);
        v86 = *(v72 + 3);
        if (v87 >= v86 >> 1)
        {
          v72 = sub_1D9AF9E80((v86 > 1), v87 + 1, 1, v72, &qword_1ECB51708);
        }

        *(v72 + 2) = v87 + 1;
        v88 = &v72[56 * v87];
        *(v88 + 4) = v77;
        *(v88 + 5) = v79;
        *(v88 + 12) = v81;
        *(v88 + 7) = v82;
        *(v88 + 8) = v83;
        *(v88 + 9) = v84;
        *(v88 + 10) = v85;
        ++v71;
        if (v75 == m)
        {
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }

    v72 = MEMORY[0x1E69E7CC0];
LABEL_84:
  }

  else
  {
    v72 = 0;
  }

  v89 = [v123 barcodeAnnotation];
  if (v89)
  {
    v90 = v89;
    v91 = [v89 annotationItems];

    sub_1D9A0835C(0, &qword_1ECB53210);
    v92 = sub_1D9C7DF2C();

    if (v92 >> 62)
    {
      goto LABEL_105;
    }

    for (n = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_1D9C7E50C())
    {
      v94 = 0;
      v126 = v92 & 0xFFFFFFFFFFFFFF8;
      v127 = v92 & 0xC000000000000001;
      v95 = MEMORY[0x1E69E7CC0];
      v124 = n;
      v125 = v72;
      while (1)
      {
        if (v127)
        {
          v96 = MEMORY[0x1DA73E610](v94, v92);
        }

        else
        {
          if (v94 >= *(v126 + 16))
          {
            goto LABEL_104;
          }

          v96 = *(v92 + 8 * v94 + 32);
        }

        v97 = v96;
        v98 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        v99 = v49;
        v100 = v92;
        v101 = [v96 symbology];
        if (!v101)
        {
          sub_1D9C7DC7C();
          v101 = sub_1D9C7DC4C();
        }

        v102 = [v97 payloadStringValue];
        v103 = sub_1D9C7DC7C();
        v105 = v104;

        [v97 confidence];
        v107 = v106;
        [v97 normalizedBoundingBox];
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 1.0;
        v145.size.height = 1.0;
        v140 = CGRectIntersection(v139, v145);
        v108 = v140.origin.x;
        v109 = v140.origin.y;
        v110 = v140.size.width;
        v111 = v140.size.height;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1D9AF9D58(0, *(v95 + 2) + 1, 1, v95);
        }

        v113 = *(v95 + 2);
        v112 = *(v95 + 3);
        if (v113 >= v112 >> 1)
        {
          v95 = sub_1D9AF9D58((v112 > 1), v113 + 1, 1, v95);
        }

        *(v95 + 2) = v113 + 1;
        v114 = &v95[64 * v113];
        *(v114 + 4) = v101;
        *(v114 + 5) = v103;
        *(v114 + 6) = v105;
        *(v114 + 14) = v107;
        *(v114 + 8) = v108;
        *(v114 + 9) = v109;
        ++v94;
        *(v114 + 10) = v110;
        *(v114 + 11) = v111;
        v92 = v100;
        v49 = v99;
        v72 = v125;
        if (v98 == v124)
        {
          goto LABEL_107;
        }
      }

      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      ;
    }

    v95 = MEMORY[0x1E69E7CC0];
LABEL_107:
  }

  else
  {
    v95 = 0;
  }

  v115 = [v123 scenenetAnnotation];
  if (v115)
  {
    v116 = v115;
    sub_1D9AF7C44(v130);

    v117 = v130[0];
    v118 = v130[1];
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v119 = [v123 reducePersonOverTriggerAnnotation];
  if (v119)
  {
    v120 = v119;
    sub_1D9AF7E90(v130);

    v121 = v130[0];
  }

  else
  {
    v121 = 0;
  }

  *a1 = v129;
  a1[1] = v128;
  a1[2] = v49;
  a1[3] = v72;
  a1[4] = v95;
  a1[5] = v117;
  a1[6] = v118;
  a1[7] = v121;
}

double sub_1D9AF794C@<D0>(uint64_t a1@<X8>)
{
  v2 = [v1 domainInfo];
  sub_1D9A0835C(0, &qword_1EDD2A680);
  v3 = sub_1D9C7DF2C();

  if (v3 >> 62)
  {
LABEL_24:
    v4 = sub_1D9C7E50C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v33 = v6;
      v7 = v5;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA73E610](v7, v3);
        }

        else
        {
          if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v10 = [v8 domainKey];
        v11 = sub_1D9C7DC7C();
        v13 = v12;

        String.mappedVisualDomain.getter(v11, v13, &v38);

        v14 = v38;
        if (v38 != 27)
        {
          break;
        }

        ++v7;
        if (v5 == v4)
        {
          v6 = v33;
          goto LABEL_21;
        }
      }

      v15 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D9AF8974(0, *(v33 + 2) + 1, 1, v33);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      v18 = v15;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_1D9AF8974((v16 > 1), v17 + 1, 1, v15);
      }

      *(v18 + 2) = v17 + 1;
      v6 = v18;
      v19 = &v18[160 * v17];
      v19[32] = v14;
      *(v19 + 33) = *v37;
      *(v19 + 9) = *&v37[3];
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      v19[72] = 0;
      *(v19 + 19) = *&v36[3];
      *(v19 + 73) = *v36;
      *(v19 + 5) = 0u;
      *(v19 + 6) = 0u;
      *(v19 + 7) = 0u;
      *(v19 + 8) = 0u;
      *(v19 + 9) = 0u;
      *(v19 + 80) = 0;
      *(v19 + 83) = v35;
      *(v19 + 162) = v34;
      *(v19 + 21) = 0;
      *(v19 + 22) = 0;
      *(v19 + 181) = 0;
    }

    while (v5 != v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:

  [v31 regionOfInterest];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for VisualUnderstanding.ImageRegion();
  sub_1D9C7B92C();
  *a1 = v21;
  *(a1 + 8) = v23;
  *(a1 + 16) = v25;
  *(a1 + 24) = v27;
  *(a1 + 32) = 1;
  v29 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = v6;
  *(a1 + 56) = v29;
  *(a1 + 64) = v29;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = v29;
  *(a1 + *(v28 + 64)) = 0;
  *(a1 + *(v28 + 68)) = v29;
  return result;
}

char *sub_1D9AF7C44@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 annotations];
  sub_1D9A0835C(0, &qword_1EDD2A688);
  v5 = sub_1D9C7DF2C();

  if (v5 >> 62)
  {
    v6 = sub_1D9C7E50C();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1D99FE458(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_17;
  }

  v25 = v2;
  v8 = 0;
  v9 = v26;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA73E610](v8, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v11 label];
    v13 = sub_1D9C7DC7C();
    v15 = v14;

    [v11 confidence];
    v17 = v16;
    [v11 normalizedBoundingBox];
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 1.0;
    v29.size.height = 1.0;
    v28 = CGRectIntersection(v27, v29);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;

    v23 = *(v26 + 16);
    v22 = *(v26 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1D99FE458((v22 > 1), v23 + 1, 1);
    }

    ++v8;
    *(v26 + 16) = v23 + 1;
    v24 = v26 + 56 * v23;
    *(v24 + 32) = v13;
    *(v24 + 40) = v15;
    *(v24 + 48) = v17;
    *(v24 + 56) = x;
    *(v24 + 64) = y;
    *(v24 + 72) = width;
    *(v24 + 80) = height;
  }

  while (v6 != v8);

  v2 = v25;
LABEL_14:
  result = [v2 revision];
  if ((result & 0x8000000000000000) == 0)
  {
    *a1 = v9;
    a1[1] = result;
    return result;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D9AF7E90@<X0>(char **a1@<X8>)
{
  v2 = [v1 regions];
  sub_1D9A0835C(0, &qword_1ECB533B8);
  v3 = sub_1D9C7DF2C();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA73E610](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 label];
      v11 = sub_1D9C7DC7C();
      v13 = v12;

      [v8 confidence];
      v15 = v14;
      v16 = [v8 faceCount];
      [v8 boundingBox];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D9AF9C30(0, *(v6 + 2) + 1, 1, v6);
      }

      v26 = *(v6 + 2);
      v25 = *(v6 + 3);
      if (v26 >= v25 >> 1)
      {
        v6 = sub_1D9AF9C30((v25 > 1), v26 + 1, 1, v6);
      }

      *(v6 + 2) = v26 + 1;
      v27 = &v6[56 * v26];
      *(v27 + 4) = v11;
      *(v27 + 5) = v13;
      *(v27 + 12) = v15;
      *(v27 + 13) = v16;
      *(v27 + 7) = v18;
      *(v27 + 8) = v20;
      *(v27 + 9) = v22;
      *(v27 + 10) = v24;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *a1 = v6;
  return result;
}

void sub_1D9AF80E4(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 imageRegions];
  sub_1D9A0835C(0, &qword_1EDD2A6B8);
  v10 = sub_1D9C7DF2C();

  if (v10 >> 62)
  {
    v11 = sub_1D9C7E50C();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  *&v31 = MEMORY[0x1E69E7CC0];
  sub_1D99FE2B8(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    return;
  }

  v29 = v2;
  v30 = a1;
  v12 = 0;
  v13 = v31;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1DA73E610](v12, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    sub_1D9AF794C(v8);

    *&v31 = v13;
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D99FE2B8(v16 > 1, v17 + 1, 1);
      v13 = v31;
    }

    ++v12;
    *(v13 + 16) = v17 + 1;
    sub_1D99B1CE4(v8, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
  }

  while (v11 != v12);

  v2 = v29;
  a1 = v30;
LABEL_14:
  v18 = [v2 annotation];
  if (v18)
  {
    v19 = v18;
    VIAnnotation.mappedAnnotation.getter(&v31);

    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
  }

  else
  {
    v20 = xmmword_1D9C86A60;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v24 = [v2 payload];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D9C7B87C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  VisualUnderstanding.init(_:annotation:payload:)(v13, &v31, v26, v28, a1);
}

char *sub_1D9AF83AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF84B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D9AF85EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF8728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51090);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AF8834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AF8974(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF8AB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB532B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D9AF8BAC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB532F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53128);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF8CE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF8E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF8F0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51730);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9AF9040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51780);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D9AF9324(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1D9AF94C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF95F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF9728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF9834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF9940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB516E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF9A74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D9AF9C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF9D58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AF9E80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[56 * v9])
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1D9AF9FBC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

void *sub_1D9AFA0B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9AFA230(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1D9AFA350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB532C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1D9AFA46C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D9AFA570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}