uint64_t sub_2619D38AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v14 = sub_2619D154C(v17, v11, a1, a2, a3, a4);
      MEMORY[0x266714FB0](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v13);
  bzero(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_2619D3730(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2, a3, a4);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_2619D3A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_2619D3AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Metrics.EntityTree(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Metrics.EntityTree(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
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

uint64_t sub_2619D3C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_2619D3C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2619D3D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_2619D3D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
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

uint64_t sub_2619D3DEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2619D3E0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2619D3E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 69))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_2619D3ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_2619D3F54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2619D3FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
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

uint64_t sub_2619D401C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2619D4078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2619D40DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2619D4138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2619D41BC()
{
  result = qword_27FEC91F0;
  if (!qword_27FEC91F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC8F70, &unk_2619DB1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC91F0);
  }

  return result;
}

uint64_t sub_2619D424C(uint64_t a1, const void *a2)
{
  sub_2619B624C(a2, v19);
  v3 = sub_2619CEF60();
  swift_beginAccess();
  v4 = *v3;
  memcpy(__dst, a2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v16, __dst, sizeof(v16));
  sub_2619B3420(v16);
  sub_2619B624C(a2, v19);
  v5 = sub_2619CF0A8();
  swift_beginAccess();
  v6 = *v5;
  memcpy(__src, a2, sizeof(__src));

  swift_getAtKeyPath();

  memcpy(v17, __src, sizeof(v17));
  sub_2619B3420(v17);
  sub_2619B624C(a2, v19);
  v7 = sub_2619CF1F0();
  swift_beginAccess();
  v8 = *v7;
  memcpy(v13, a2, sizeof(v13));

  swift_getAtKeyPath();

  memcpy(v18, v13, sizeof(v18));
  sub_2619B3420(v18);
  v9 = sub_2619CF338();
  swift_beginAccess();
  v10 = *v9;
  memcpy(v12, a2, sizeof(v12));

  swift_getAtKeyPath();

  memcpy(v19, v12, 0x128uLL);
  sub_2619B3420(v19);
  sub_2619D95F8();
}

uint64_t sub_2619D44A4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  sub_2619D49A8(v1);
  sub_2619B624C(v2, v35);
  v3 = sub_2619CF480();
  swift_beginAccess();
  v4 = *v3;
  memcpy(__dst, v2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v28, __dst, sizeof(v28));
  sub_2619B3420(v28);
  sub_2619B624C(v2, v35);
  v5 = sub_2619CF5C8();
  swift_beginAccess();
  v6 = *v5;
  memcpy(__src, v2, sizeof(__src));

  swift_getAtKeyPath();

  memcpy(v29, __src, sizeof(v29));
  sub_2619B3420(v29);
  sub_2619B624C(v2, v35);
  v7 = sub_2619CF710();
  swift_beginAccess();
  v8 = *v7;
  memcpy(v25, v2, sizeof(v25));

  swift_getAtKeyPath();

  memcpy(v30, v25, sizeof(v30));
  sub_2619B3420(v30);
  sub_2619B624C(v2, v35);
  v9 = sub_2619CF858();
  swift_beginAccess();
  v10 = *v9;
  memcpy(v24, v2, sizeof(v24));

  swift_getAtKeyPath();

  memcpy(v31, v24, sizeof(v31));
  sub_2619B3420(v31);
  sub_2619B624C(v2, v35);
  v11 = sub_2619CF9A0();
  swift_beginAccess();
  v12 = *v11;
  memcpy(v23, v2, sizeof(v23));

  swift_getAtKeyPath();

  memcpy(v32, v23, sizeof(v32));
  sub_2619B3420(v32);
  sub_2619B624C(v2, v35);
  v13 = sub_2619CFDA8();
  swift_beginAccess();
  v14 = *v13;
  memcpy(v22, v2, sizeof(v22));

  swift_getAtKeyPath();

  memcpy(v33, v22, sizeof(v33));
  sub_2619B3420(v33);
  sub_2619B624C(v2, v35);
  v15 = sub_2619CFEF0();
  swift_beginAccess();
  v16 = *v15;
  memcpy(v21, v2, sizeof(v21));

  swift_getAtKeyPath();

  memcpy(v34, v21, sizeof(v34));
  sub_2619B3420(v34);
  v17 = sub_2619D0038();
  swift_beginAccess();
  v18 = *v17;
  memcpy(v20, v2, sizeof(v20));

  swift_getAtKeyPath();

  memcpy(v35, v20, 0x128uLL);
  sub_2619B3420(v35);
  sub_2619D9618();
}

uint64_t sub_2619D49A8(const void *a1)
{
  v55 = sub_2619D9838();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619B624C(a1, v58);
  v5 = sub_2619CFC60();
  swift_beginAccess();
  v6 = *v5;
  memcpy(v57, a1, sizeof(v57));

  swift_getAtKeyPath();

  memcpy(v58, v57, 0x128uLL);
  sub_2619B3420(v58);
  v7 = v56;
  if (v56)
  {
    v8 = 0;
    v9 = v56 + 64;
    v10 = 1 << *(v56 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v56 + 64);
    v13 = (v10 + 63) >> 6;
    v54 = v2 + 32;
    v14 = MEMORY[0x277D84F98];
LABEL_5:
    v15 = MEMORY[0x277D84F90];
    while (v12)
    {
LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v8 << 6);
      v19 = *(*(v7 + 48) + 4 * v18);
      v20 = *(*(v7 + 56) + 8 * v18);
      if (v20 >> 62)
      {
        v48 = v7;
        v49 = v19;
        v22 = sub_2619D9CA8();
        v7 = v48;
        if (v22)
        {
          v21 = sub_2619D9CA8();
          if (!v21)
          {
            v46 = v9;
            v47 = v14;
            v45 = v13;
            v52 = v2;
LABEL_26:
            v29 = v47;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57[0] = v29;
            v31 = sub_2619D0ED4(v49);
            v33 = v29[2];
            v34 = (v32 & 1) == 0;
            v35 = __OFADD__(v33, v34);
            v36 = v33 + v34;
            if (v35)
            {
              goto LABEL_42;
            }

            v37 = v32;
            if (v29[3] >= v36)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v43 = v31;
                sub_2619D7940();
                v31 = v43;
              }
            }

            else
            {
              sub_2619D64EC(v36, isUniquelyReferenced_nonNull_native);
              v31 = sub_2619D0ED4(v49);
              if ((v37 & 1) != (v38 & 1))
              {
                goto LABEL_44;
              }
            }

            v14 = v57[0];
            if (v37)
            {
              v39 = *(v57[0] + 56);
              v40 = *(v39 + 8 * v31);
              *(v39 + 8 * v31) = v15;
            }

            else
            {
              *(v57[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
              *(v14[6] + 4 * v31) = v49;
              *(v14[7] + 8 * v31) = v15;
              v41 = v14[2];
              v35 = __OFADD__(v41, 1);
              v42 = v41 + 1;
              if (v35)
              {
                goto LABEL_43;
              }

              v14[2] = v42;
            }

            v7 = v48;
            v2 = v52;
            v13 = v45;
            v9 = v46;
            goto LABEL_5;
          }

LABEL_17:
          v52 = v2;
          v53 = v21;
          v46 = v9;
          v47 = v14;
          v45 = v13;
          v57[0] = v15;
          v23 = v21 & ~(v21 >> 63);

          sub_2619D8368(0, v23, 0);
          if (v53 < 0)
          {
            goto LABEL_41;
          }

          v24 = 0;
          v15 = v57[0];
          v51 = v20 & 0xC000000000000001;
          v25 = v50;
          do
          {
            if (v51)
            {
              MEMORY[0x2667148E0](v24, v20);
            }

            else
            {
              v26 = *(v20 + 8 * v24 + 32);
            }

            sub_2619D9448();
            sub_2619D9828();

            v57[0] = v15;
            v28 = *(v15 + 16);
            v27 = *(v15 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_2619D8368(v27 > 1, v28 + 1, 1);
              v15 = v57[0];
            }

            ++v24;
            *(v15 + 16) = v28 + 1;
            (*(v52 + 32))(v15 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v28, v25, v55);
          }

          while (v53 != v24);

          goto LABEL_26;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          v49 = v19;
          v48 = v7;
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        return v14;
      }

      v12 = *(v9 + 8 * v16);
      ++v8;
      if (v12)
      {
        v8 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_2619D9D78();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2619D4E1C(uint64_t a1, const void *a2)
{
  sub_2619D4EF4(a2);
  v3 = sub_2619CE638();
  swift_beginAccess();
  v4 = *v3;
  memcpy(__dst, a2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v7, __dst, sizeof(v7));
  sub_2619B3420(v7);
  sub_2619D9638();
}

uint64_t sub_2619D4EF4(const void *a1)
{
  sub_2619B624C(a1, v29);
  v2 = sub_2619CE780();
  swift_beginAccess();
  v3 = *v2;
  memcpy(__dst, a1, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v29, __dst, 0x128uLL);
  sub_2619B3420(v29);
  if (v27)
  {
    v4 = 0;
    v5 = 1 << *(v27 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v27 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = MEMORY[0x277D84F98];
    if (v7)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_8:
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v10 >= v8)
      {

        return v9;
      }

      v7 = *(v27 + 64 + 8 * v10);
      ++v4;
    }

    while (!v7);
    while (1)
    {
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = *(*(v27 + 48) + 8 * v11);
      v13 = *(*(v27 + 56) + 4 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v9;
      v15 = sub_2619C5F4C(v12);
      v17 = v9[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        break;
      }

      v21 = v16;
      if (v9[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v15;
          sub_2619D7A9C();
          v15 = v25;
        }
      }

      else
      {
        sub_2619D6760(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_2619C5F4C(v12);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_27;
        }
      }

      v7 &= v7 - 1;
      v9 = __dst[0];
      if (v21)
      {
        *(*(__dst[0] + 56) + 4 * v15) = v13;
        v4 = v10;
        if (!v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        *(__dst[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
        *(v9[6] + 8 * v15) = v12;
        *(v9[7] + 4 * v15) = v13;
        v23 = v9[2];
        v19 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v19)
        {
          goto LABEL_26;
        }

        v9[2] = v24;
        v4 = v10;
        if (!v7)
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      v10 = v4;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_2619D9D78();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2619D514C(uint64_t a1, const void *a2)
{
  sub_2619B624C(a2, v24);
  v3 = sub_2619CEE18();
  swift_beginAccess();
  v4 = *v3;
  memcpy(__dst, a2, sizeof(__dst));

  swift_getAtKeyPath();

  memcpy(v24, __dst, sizeof(v24));
  sub_2619B3420(v24);
  v5 = v22;
  if (!v22)
  {
    goto LABEL_5;
  }

  sub_2619B624C(a2, __src);
  v6 = sub_2619CEB88();
  swift_beginAccess();
  v7 = *v6;
  memcpy(__src, a2, sizeof(__src));

  swift_getAtKeyPath();

  memcpy(v21, __src, sizeof(v21));
  sub_2619B3420(v21);
  if (!v19)
  {

LABEL_5:
    sub_2619B3420(a2);
    __dst[0] = 0;
    sub_2619D95D8();
  }

  v8 = MEMORY[0x277D84F98];
  v16 = MEMORY[0x277D84F98];

  sub_2619D87DC(v8, v19, v5, &v16);

  swift_bridgeObjectRelease_n();
  sub_2619B624C(a2, v18);
  v9 = sub_2619CEA40();
  swift_beginAccess();
  v10 = *v9;
  memcpy(v15, a2, sizeof(v15));

  swift_getAtKeyPath();

  memcpy(v17, v15, sizeof(v17));
  sub_2619B3420(v17);
  v11 = sub_2619CECD0();
  swift_beginAccess();
  v12 = *v11;
  memcpy(v14, a2, sizeof(v14));

  swift_getAtKeyPath();

  memcpy(v18, v14, sizeof(v18));
  sub_2619B3420(v18);

  sub_2619D95D8();
}

uint64_t sub_2619D5430(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v86 = a4;
  v88 = sub_2619D95C8();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v88);
  v87 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = v73 - v11;
  v12 = sub_2619D9838();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[1];
  if (!*(v18 + 16))
  {
    return result;
  }

  if (!*(a3 + 16))
  {
    return result;
  }

  v19 = *a2;
  result = sub_2619B0D08(v19);
  if ((v20 & 1) == 0)
  {
    return result;
  }

  v73[1] = v19;
  v74 = v17;
  v75 = v13;
  v76 = v12;
  v77 = a1;
  v21 = *(*(a3 + 56) + 8 * result);
  v22 = v18 + 64;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v18 + 64);
  v26 = (v23 + 63) >> 6;
  v81 = v21;
  v82 = (v7 + 32);
  v78 = v7 + 40;

  v27 = 0;
  v89 = MEMORY[0x277D84F90];
  v79 = v18;
  v80 = v7;
  while (v25)
  {
LABEL_14:
    v32 = __clz(__rbit64(v25)) | (v27 << 6);
    v33 = (*(v18 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v18 + 56) + 24 * v32;
    v37 = *(v36 + 8);
    v38 = *(v36 + 16);
    v39 = *(v36 + 20);
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v39;
    v84 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v89 = sub_2619D86D0(0, *(v89 + 2) + 1, 1, v89);
    }

    v42 = *(v89 + 2);
    v41 = *(v89 + 3);
    v43 = v81;
    if (v42 >= v41 >> 1)
    {
      v67 = sub_2619D86D0((v41 > 1), v42 + 1, 1, v89);
      v43 = v81;
      v89 = v67;
    }

    v44 = v89;
    *(v89 + 2) = v42 + 1;
    v45 = &v44[16 * v42];
    *(v45 + 4) = v35;
    *(v45 + 5) = v34;
    if (*(v43 + 16))
    {
      v46 = sub_2619B0DB4(v35, v34);
      if (v47)
      {
        v48 = *(*(v43 + 56) + 24 * v46 + 16);
      }
    }

    v49 = v85;
    sub_2619D95B8();

    v50 = *v82;
    (*v82)(v87, v49, v88);
    v51 = v86;
    v52 = *v86;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v90 = *v51;
    v54 = v90;
    *v51 = 0x8000000000000000;
    v55 = sub_2619B0DB4(v35, v34);
    v57 = v54[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_34;
    }

    v61 = v56;
    if (v54[3] < v60)
    {
      sub_2619D69C4(v60, v53);
      v55 = sub_2619B0DB4(v35, v34);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_36;
      }

LABEL_26:
      v63 = v80;
      if (v61)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

    if (v53)
    {
      goto LABEL_26;
    }

    v68 = v55;
    sub_2619D7BE8();
    v55 = v68;
    v63 = v80;
    if (v61)
    {
LABEL_7:
      v28 = v55;

      v29 = v90;
      (*(v63 + 40))(v90[7] + *(v63 + 72) * v28, v87, v88);
      goto LABEL_8;
    }

LABEL_27:
    v29 = v90;
    v90[(v55 >> 6) + 8] |= 1 << v55;
    v64 = (v29[6] + 16 * v55);
    *v64 = v35;
    v64[1] = v34;
    v50((v29[7] + *(v63 + 72) * v55), v87, v88);
    v65 = v29[2];
    v59 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v59)
    {
      goto LABEL_35;
    }

    v29[2] = v66;
LABEL_8:
    v25 &= v25 - 1;
    v30 = *v86;
    *v86 = v29;

    v18 = v79;
  }

  while (1)
  {
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v31 >= v26)
    {

      sub_2619D9448();
      v69 = v74;
      sub_2619D9828();

      v70 = v77;
      v71 = *v77;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v90 = *v70;
      sub_2619D74FC(v89, v69, v72);
      result = (*(v75 + 8))(v69, v76);
      *v70 = v90;
      return result;
    }

    v25 = *(v22 + 8 * v31);
    ++v27;
    if (v25)
    {
      v27 = v31;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619D5984(uint64_t a1, _BYTE *a2)
{
  v2 = sub_2619D893C(a1, a2);

  return v2;
}

uint64_t sub_2619D59B8(void (**a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v4 = sub_2619D9838();
  v5 = *(v4 - 8);
  v90 = v4;
  v91 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();

  v9 = sub_2619B8194(v8);
  v104 = a1;
  v105 = v9;
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_113;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2619D9CA8())
  {
    v12 = MEMORY[0x277D84F90];
    v93 = v2;
    if (!i)
    {
      v2 = MEMORY[0x277D84F90];
      v22 = *(MEMORY[0x277D84F90] + 16);
      if (!v22)
      {
        break;
      }

      goto LABEL_19;
    }

    v108 = MEMORY[0x277D84F90];
    sub_2619D8388(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_117;
    }

    v103 = v10;
    v13 = 0;
    v2 = v108;
    v14 = *(*v105 + 96);
    v15 = v104 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v16 = MEMORY[0x2667148E0](v13, v104);
      }

      else
      {
        v16 = v104[v13 + 4];
      }

      v17 = v14();
      if (*(v17 + 16))
      {
        v18 = sub_2619B0D08(v16);
        if (v19)
        {
          memcpy(v106, (*(v17 + 56) + 296 * v18), sizeof(v106));
          sub_2619B624C(v106, v109);

          memcpy(v107, v106, sizeof(v107));
          nullsub_1(v107);
        }

        else
        {

          sub_2619B638C(v107);
        }

        memcpy(v109, v107, 0x128uLL);
      }

      else
      {

        sub_2619B638C(v109);
      }

      v108 = v2;
      v21 = v2[2];
      v20 = v2[3];
      if (v21 >= v20 >> 1)
      {
        sub_2619D8388((v20 > 1), v21 + 1, 1);
        v2 = v108;
      }

      ++v13;
      v2[2] = v21 + 1;
      memcpy(&v2[37 * v21 + 4], v109, 0x128uLL);
    }

    while (i != v13);
    v10 = v103;
    v12 = MEMORY[0x277D84F90];
    v22 = v2[2];
    if (!v22)
    {
      break;
    }

LABEL_19:
    v23 = 0;
    v24 = (v2 + 4);
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      memmove(v109, v24, 0x128uLL);
      v26 = sub_2619B62AC(v109) == 1;
      if ((v26 | LOBYTE(v109[1])))
      {
        v27 = 0;
      }

      else
      {
        v27 = v109[0];
      }

      v28 = __OFADD__(v25, v27);
      v23 = v25 + v27;
      if (v28)
      {
        goto LABEL_103;
      }

      v24 += 296;
      if (!--v22)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    ;
  }

  v23 = 0;
LABEL_29:
  v92 = v23;

  v107[0] = v12;
  if (v10)
  {
    v29 = sub_2619D9CA8();
    if (!v29)
    {
      goto LABEL_75;
    }

LABEL_31:
    v30 = 0;
    v100 = v104 & 0xFFFFFFFFFFFFFF8;
    v101 = v104 & 0xC000000000000001;
    v98 = v29;
    v99 = v104 + 4;
    while (1)
    {
      if (v101)
      {
        v2 = MEMORY[0x2667148E0](v30, v104);
        v28 = __OFADD__(v30++, 1);
        if (v28)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v30 >= *(v100 + 16))
        {
          goto LABEL_105;
        }

        v2 = v99[v30];

        v28 = __OFADD__(v30++, 1);
        if (v28)
        {
          goto LABEL_104;
        }
      }

      MEMORY[0x266714720](v33);
      if (*((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v60 = v2;
        v61 = *((v107[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2619D9A28();
        v2 = v60;
      }

      v34 = sub_2619D9A38();
      v35 = v107[0];
      v36 = sub_2619C691C(v34);
      v37 = v36 >> 62;
      v38 = v36;
      if (v36 >> 62)
      {
        v39 = sub_2619D9CA8();
      }

      else
      {
        v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v35 >> 62;
      if (v35 >> 62)
      {
        v62 = sub_2619D9CA8();
        v41 = v62 + v39;
        if (__OFADD__(v62, v39))
        {
          goto LABEL_106;
        }
      }

      else
      {
        v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v41 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          goto LABEL_106;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject == 1 && (v43 = v35 & 0xFFFFFFFFFFFFFF8, v41 <= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v44 = v39;
      }

      else
      {
        if (v10)
        {
          sub_2619D9CA8();
        }

        else
        {
          v45 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v44 = v39;
        v35 = sub_2619D9BD8();
        v43 = v35 & 0xFFFFFFFFFFFFFF8;
      }

      v46 = *(v43 + 16);
      v47 = *(v43 + 24);
      v48 = v38;
      if (v37)
      {
        v49 = v43;
        v50 = sub_2619D9CA8();
        v43 = v49;
        v10 = v50;
        v48 = v38;
        if (!v10)
        {
LABEL_32:

          v31 = v44 <= 0;
          v32 = v98;
          if (!v31)
          {
            goto LABEL_107;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_32;
        }
      }

      if (((v47 >> 1) - v46) < v44)
      {
        goto LABEL_110;
      }

      v51 = v44;
      v102 = v43;
      v103 = v35;
      v52 = v43 + 8 * v46 + 32;
      if (v37)
      {
        if (v10 < 1)
        {
          goto LABEL_112;
        }

        v95 = v44;
        v96 = v2;
        v97 = v30;
        v53 = v48;
        sub_2619B63E4();
        v54 = 0;
        v2 = &unk_2619DB1E0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F70, &unk_2619DB1E0);
          v55 = sub_2619B3098(v109, v54, v53);
          v57 = *v56;

          (v55)(v109, 0);
          *(v52 + 8 * v54++) = v57;
        }

        while (v10 != v54);

        v30 = v97;
        v32 = v98;
        v51 = v95;
      }

      else
      {
        sub_2619D94A8();
        swift_arrayInitWithCopy();

        v32 = v98;
      }

      v35 = v103;
      if (v51 > 0)
      {
        v58 = *(v102 + 16);
        v28 = __OFADD__(v58, v51);
        v59 = v58 + v51;
        if (v28)
        {
          goto LABEL_111;
        }

        *(v102 + 16) = v59;
      }

LABEL_34:
      v107[0] = v35;
      if (v30 == v32)
      {
        goto LABEL_76;
      }
    }
  }

  v29 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    goto LABEL_31;
  }

LABEL_75:
  v35 = MEMORY[0x277D84F90];
LABEL_76:

  v63 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    v2 = sub_2619D9CA8();
    if (v2)
    {
      goto LABEL_78;
    }

    goto LABEL_115;
  }

  v2 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_115:

    v87 = sub_2619D9668();

    return v87;
  }

LABEL_78:
  v64 = 0;
  v65 = v35 & 0xC000000000000001;
  v102 = v91 + 16;
  v104 = (v91 + 8);
  v66 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = v64;
    while (1)
    {
      if (v65)
      {
        v67 = MEMORY[0x2667148E0](v10, v35);
        v64 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v10 >= *(v63 + 16))
        {
          goto LABEL_109;
        }

        v67 = *(v35 + 8 * v10 + 32);

        v64 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_108;
        }
      }

      v68 = (*(*v105 + 96))();
      if (*(v68 + 16))
      {
        v69 = sub_2619B0D08(v67);
        if (v70)
        {
          break;
        }
      }

      ++v10;
      if (v64 == v2)
      {
        goto LABEL_115;
      }
    }

    v103 = v35;
    memcpy(v109, (*(v68 + 56) + 296 * v69), 0x128uLL);
    sub_2619B624C(v109, v107);

    sub_2619D9448();
    v71 = v94;
    sub_2619D9828();

    sub_2619D9698();

    v101 = sub_2619D893C(v72, v109);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v66;
    v74 = sub_2619D6454(v71);
    v76 = v66[2];
    v77 = (v75 & 1) == 0;
    v28 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v28)
    {
      break;
    }

    v79 = v75;
    if (v66[3] >= v78)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v74;
        sub_2619D80E8();
        v74 = v86;
      }
    }

    else
    {
      sub_2619D7120(v78, isUniquelyReferenced_nonNull_native);
      v74 = sub_2619D6454(v94);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_119;
      }
    }

    v35 = v103;
    v66 = v107[0];
    if (v79)
    {
      v81 = *(v107[0] + 56);
      v82 = *(v81 + 8 * v74);
      *(v81 + 8 * v74) = v101;
    }

    else
    {
      *(v107[0] + 8 * (v74 >> 6) + 64) |= 1 << v74;
      v83 = v74;
      (*(v91 + 16))(v66[6] + *(v91 + 72) * v74, v94, v90);
      *(v66[7] + 8 * v83) = v101;
      v84 = v66[2];
      v28 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v28)
      {
        goto LABEL_118;
      }

      v66[2] = v85;
    }

    (*v104)(v94, v90);
    if (v64 == v2)
    {
      goto LABEL_115;
    }
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  result = sub_2619D9D78();
  __break(1u);
  return result;
}

uint64_t sub_2619D63A0()
{
  sub_2619D9678();

  sub_2619D59B8(v0);
  v1 = sub_2619D9658();

  return v1;
}

unint64_t sub_2619D6454(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2619D9838();
  sub_2619D8ED0(&qword_27FEC9200, MEMORY[0x277D65348]);
  v5 = sub_2619D9918();

  return sub_2619D7780(a1, v5);
}

uint64_t sub_2619D64EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9238, &qword_2619DB2A0);
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x266714AA0](*(v8 + 40), v22, 4);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2619D6760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9230, &qword_2619DB298);
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      v23 = *(v8 + 40);
      result = sub_2619D9D98();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2619D69C4(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_2619D95C8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9220, &qword_2619DB288);
  v46 = a2;
  result = sub_2619D9CC8();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2619D6D44(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2619D9838();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9218, &qword_2619DB280);
  v43 = a2;
  result = sub_2619D9CC8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2619D8ED0(&qword_27FEC9200, MEMORY[0x277D65348]);
      result = sub_2619D9918();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2619D7120(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2619D9838();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91F8, ":\a");
  v43 = a2;
  result = sub_2619D9CC8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2619D8ED0(&qword_27FEC9200, MEMORY[0x277D65348]);
      result = sub_2619D9918();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2619D74FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2619D9838();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2619D6454(a2);
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
      sub_2619D7E68();
      goto LABEL_7;
    }

    sub_2619D6D44(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2619D6454(a2);
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
      return sub_2619D76C8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2619D9D78();
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

uint64_t sub_2619D76C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2619D9838();
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

unint64_t sub_2619D7780(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2619D9838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2619D8ED0(&qword_27FEC9208, MEMORY[0x277D65348]);
      v16 = sub_2619D9938();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_2619D7940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9238, &qword_2619DB2A0);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_2619D7A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9230, &qword_2619DB298);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_2619D7BE8()
{
  v1 = v0;
  v36 = sub_2619D95C8();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9220, &qword_2619DB288);
  v4 = *v0;
  v5 = sub_2619D9CB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2619D7E68()
{
  v1 = v0;
  v34 = sub_2619D9838();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9218, &qword_2619DB280);
  v4 = *v0;
  v5 = sub_2619D9CB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2619D80E8()
{
  v1 = v0;
  v34 = sub_2619D9838();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC91F8, ":\a");
  v4 = *v0;
  v5 = sub_2619D9CB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

size_t sub_2619D8368(size_t a1, int64_t a2, char a3)
{
  result = sub_2619D83A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2619D8388(void *a1, int64_t a2, char a3)
{
  result = sub_2619D8580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2619D83A8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9240, &qword_2619DB2A8);
  v10 = *(sub_2619D9838() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2619D9838() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2619D8580(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9210, &unk_2619DB270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[37 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 296 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F58, &unk_2619DA600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2619D86D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9228, &qword_2619DB290);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2619D87DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a1;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v10)));
      v16 = *(*(a2 + 56) + v15);
      v18[0] = *(*(a2 + 48) + v15);
      v18[1] = v16;

      sub_2619D5430(&v19, v18, a3, a4);
      if (v17)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v19;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2619D893C(uint64_t a1, _BYTE *a2)
{
  v4 = sub_2619D9838();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2619D95E8();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - v11;
  v53 = sub_2619D9648();
  v51 = *(v53 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x28223BE20](v53);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = sub_2619D9628();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v57 = sub_2619D9608();
  v23 = *(v57 - 8);
  v47 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v57);
  v48 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;

  sub_2619B624C(a2, v64);
  v46 = v28;
  sub_2619D424C(a1, a2);

  sub_2619B624C(a2, v64);
  v44 = v22;
  sub_2619D44A4(a1);

  sub_2619B624C(a2, v64);
  sub_2619D4EF4(a2);
  v29 = sub_2619CE638();
  swift_beginAccess();
  v30 = *v29;
  memcpy(v63, a2, sizeof(v63));

  swift_getAtKeyPath();

  memcpy(v64, v63, 0x128uLL);
  sub_2619B3420(v64);
  v61 = v62;
  v43 = v16;
  sub_2619D9638();

  v32 = v50;
  sub_2619D514C(v31, a2);
  v33 = *a2;
  if (a2[4])
  {
    v33 = 0;
  }

  v45 = v33;

  sub_2619D9448();
  sub_2619D9828();

  (*(v23 + 16))(v48, v28, v57);
  (*(v58 + 16))(v49, v22, v59);
  v34 = v51;
  v35 = v53;
  (*(v51 + 16))(v52, v16, v53);
  v36 = v55;
  v37 = v32;
  v38 = v32;
  v39 = v56;
  (*(v55 + 16))(v54, v37, v56);
  v40 = sub_2619D9688();
  (*(v36 + 8))(v38, v39);
  (*(v34 + 8))(v43, v35);
  (*(v58 + 8))(v44, v59);
  (*(v47 + 8))(v46, v57);
  return v40;
}

uint64_t sub_2619D8ED0(unint64_t *a1, void (*a2)(uint64_t))
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