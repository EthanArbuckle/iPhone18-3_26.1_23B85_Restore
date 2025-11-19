uint64_t sub_26497195C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26498CAE0;
  *(inited + 32) = 0xA0E2A8A0E280A0E2;
  *(inited + 40) = 0xAC00000080A0E285;
  result = nullsub_1(61);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 48) = result;
  *(inited + 56) = v2;
  *(inited + 64) = 0xA0E2A8A0E280A0E2;
  *(inited + 72) = 0xAC00000080A0E282;
  result = nullsub_1(62);
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 80) = result;
  *(inited + 88) = v3;
  *(inited + 96) = 0xA0E290A0E280A0E2;
  *(inited + 104) = 0xAC00000080A0E285;
  result = nullsub_1(60);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 112) = result;
  *(inited + 120) = v4;
  *(inited + 128) = 0xA0E290A0E280A0E2;
  *(inited + 136) = 0xAC00000080A0E282;
  result = nullsub_1(58);
  if (v5)
  {
    *(inited + 144) = result;
    *(inited + 152) = v5;
    v6 = sub_264972178(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    result = swift_arrayDestroy();
    qword_27FF87588 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_264971AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26498CB10;
  *(inited + 32) = 0xA0E290A0E280A0E2;
  *(inited + 40) = 0xAF80A0E2B1A0E285;
  result = sub_26497D994();
  if (v2)
  {
    *(inited + 48) = result;
    *(inited + 56) = v2;
    *(inited + 64) = 0xA0E2A8A0E280A0E2;
    *(inited + 72) = 0xAF80A0E2B1A0E282;
    result = sub_26497D994();
    if (v3)
    {
      *(inited + 80) = result;
      *(inited + 88) = v3;
      v4 = sub_264972178(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
      result = swift_arrayDestroy();
      qword_27FF87598 = v4;
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

char *sub_264971BAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D60, &unk_26498CC50);
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

void *sub_264971CB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D30, &qword_26498CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D38, &qword_26498CC28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_264971E00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18ScreenReaderOutput21BRUINemethParserStackC11ElementTypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
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

uint64_t sub_264971F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264971F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_264971FB0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_264972020(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_264972114(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2649720B0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_264972114(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264972114(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_264982A44();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

unint64_t sub_264972178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D58, &qword_26498CC48);
    v3 = sub_264982A84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26496A734(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26497228C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264972514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BRUIUEBMathParser();
  v4 = swift_allocObject();
  sub_264972700(a1, a2);
  v5 = *(*v4 + 288);

  if ((v5(v6) & 1) == 0)
  {
    v7 = *(*v4 + 304);
    do
    {
      v8 = v7();
    }

    while ((v5(v8) & 1) == 0);
  }

  (*(*v4 + 296))();
}

uint64_t sub_264972630(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_264972700(a1, a2);
  return v4;
}

uint64_t sub_2649726C0()
{
  sub_2649768C8(v0 + 16);
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_264972700(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 15;
  *(v2 + 40) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26498CAD0;
  type metadata accessor for BRUIUEBMathParser.Element();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 56) = 3;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 64) = MEMORY[0x277D84F90];
  *(v3 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 56) = v3;
  *(v2 + 42) = 1;
  return v2;
}

BOOL sub_2649727C4()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v0[4] >> 14 >= (4 * v2);
}

uint64_t sub_2649727EC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  while (1)
  {
    v4 = *(v1 + 56);
    if (v4 >> 62)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_8;
    }

LABEL_4:
    sub_264974D98();
  }

  if (v4 < 0)
  {
    v5 = *(v1 + 56);
  }

  if (sub_264982A44() >= 2)
  {
    goto LABEL_4;
  }

LABEL_8:
  v6 = *(v1 + 56);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_264982A44();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_18:
    __break(1u);
LABEL_19:

    v8 = MEMORY[0x266745520](v2, v6);

LABEL_15:
    swift_beginAccess();
    v9 = *(v8 + 64);

    result = nullsub_1(v9);
    a1[3] = &type metadata for BRUILinearMathString;
    a1[4] = &off_28763D190;
    *a1 = result;
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 8 * v2 + 32);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_264972948()
{
  v3 = v0;
  v4 = (*v0 + 288);
  v5 = *v4;
  result = (*v4)();
  if (result)
  {
    return result;
  }

  v7 = v0[3];
  v8 = sub_2649747A0(v0[4], v0[2], v7);
  v9 = MEMORY[0x2667452B0](v8);
  v11 = v10;

  if (sub_264982834())
  {

    *(v3 + 40) = 1;
    goto LABEL_12;
  }

  if (sub_264982834())
  {

    *(v3 + 40) = 3;
    goto LABEL_12;
  }

  if (sub_264982834())
  {

    *(v3 + 41) = 2;
    goto LABEL_10;
  }

  if (sub_264982834())
  {

    *(v3 + 41) = 0;
LABEL_10:
    if (*(v3 + 40) != 2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  swift_beginAccess();
  v16 = *(v3 + 56);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v16 < 0)
  {
    v40 = *(v3 + 56);
  }

  v17 = sub_264982A44();
  if (!v17)
  {
    goto LABEL_122;
  }

LABEL_20:
  v1 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_124:

    v18 = MEMORY[0x266745520](v1, v16);

    goto LABEL_25;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_126;
  }

  if (v1 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_126:
    __break(1u);
LABEL_127:
    v41 = sub_264982AA4();

    if (v41)
    {
      goto LABEL_128;
    }

LABEL_56:
  }

  v18 = *(v16 + 8 * v1 + 32);

LABEL_25:
  sub_264976890(v18 + 16, v161);

  if (v162 == 4 && (v19 = vorrq_s8(*&v161[8], *&v161[24]), !(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v161)))
  {
    sub_2649768C8(v161);
    if (sub_264982834())
    {

      sub_264974D98();
LABEL_11:
      *(v3 + 40) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2649768C8(v161);
  }

  if (*(v3 + 40) != 3 && (sub_264982834() & 1) != 0)
  {

    *v161 = 4;
    memset(&v161[8], 0, 32);
    v162 = 4;
    sub_264974CB4(v161);
    sub_2649768C8(v161);
LABEL_12:
    sub_264974834();
    swift_beginAccess();
    v12 = *(v3 + 48);
    *(v3 + 48) = MEMORY[0x277D84F90];

    if (((v5)(v13) & 1) == 0)
    {
      v14 = *(v3 + 32);
      *(v3 + 32) = sub_2649827E4();
    }

    result = v5();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    return result;
  }

  v20 = sub_2649747EC(v9, v11);
  if (!v21)
  {
    goto LABEL_364;
  }

  v18 = v20;
  v16 = v21;
  v2 = 10264802;
  if (v20 == 12361954 && v21 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
  {

    *(v3 + 40) = 2;
    goto LABEL_36;
  }

  if (v18 == 11575522 && v16 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
  {

    if (*(v3 + 40) == 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  if (v18 == 9478370 && v16 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
  {
    v24 = *(v3 + 40);
    if (v24 == 3)
    {
      v25 = 0;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_53;
      }

      v25 = 1;
    }

    *(v3 + 40) = v25;
LABEL_53:
    sub_264974834();
    swift_beginAccess();
    v26 = *(v3 + 48);
    *(v3 + 48) = MEMORY[0x277D84F90];

    if (((v5)(v27) & 1) == 0)
    {
      v28 = *(v3 + 32);
      *(v3 + 32) = sub_2649827E4();
    }

    if (v5())
    {
      goto LABEL_56;
    }

    v29 = *(v3 + 32);
    if (sub_264982844() == 10723554 && v30 == 0xA300000000000000)
    {

LABEL_67:
      result = nullsub_1(40);
      if (v31)
      {
        goto LABEL_129;
      }

      __break(1u);
      goto LABEL_410;
    }

    v18 = sub_264982AA4();

    if (v18)
    {
      goto LABEL_67;
    }

    v32 = *(v3 + 32);
    if (sub_264982844() == 10264802 && v33 == 0xA300000000000000)
    {

LABEL_107:
      result = nullsub_1(41);
      if (v31)
      {
        goto LABEL_129;
      }

      __break(1u);
      goto LABEL_109;
    }

    v36 = sub_264982AA4();

    if (v36)
    {
      goto LABEL_107;
    }

    v37 = *(v3 + 32);
    if (sub_264982844() == 9871586 && v38 == 0xA300000000000000)
    {

LABEL_128:
      result = nullsub_1(43);
      if (v31)
      {
LABEL_129:
        v42 = result;
        v43 = v31;

        sub_2649766D8(v42, v43, v3);

        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_412;
    }

    goto LABEL_127;
  }

  if ((v18 != 10526946 || v16 != 0xA300000000000000) && (sub_264982AA4() & 1) == 0)
  {
    if (v18 == 12034274 && v16 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
    {
LABEL_109:

      memset(v161, 0, sizeof(v161));
LABEL_167:
      v162 = 4;
      sub_264974CB4(v161);
      sub_2649768C8(v161);
      goto LABEL_36;
    }

    v9 = *(v3 + 56);
    if (v9 >> 62)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        v152 = *(v3 + 56);
      }

      v34 = sub_264982A44();
      if (v34)
      {
LABEL_78:
        v7 = v34 - 1;
        if (!__OFSUB__(v34, 1))
        {
          if ((v9 & 0xC000000000000001) == 0)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v7 = *(v9 + 8 * v7 + 32);

              goto LABEL_83;
            }

            __break(1u);
LABEL_364:
            __break(1u);
            goto LABEL_365;
          }

LABEL_361:

          v7 = MEMORY[0x266745520](v7, v9);

LABEL_83:
          sub_264976890(v7 + 16, v161);

          if (v162)
          {
            sub_2649768C8(v161);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v161);
            if (v18 == 12493026 && v16 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
            {
              goto LABEL_117;
            }
          }

          if (v18 == 9740514 && v16 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
          {

            v39 = 2;
            goto LABEL_166;
          }

          if (v18 == 10723554 && v16 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
          {

            v161[0] = 1;
            v162 = 3;
            sub_264974CB4(v161);
            sub_2649768C8(v161);
            *(v3 + 40) = 3;
            *(v3 + 42) = 1;
            goto LABEL_36;
          }

          v9 = *(v3 + 56);
          if (!(v9 >> 62))
          {
            v35 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v35)
            {
              goto LABEL_95;
            }

            goto LABEL_366;
          }

LABEL_365:
          v35 = sub_264982A44();
          if (v35)
          {
LABEL_95:
            v7 = v35 - 1;
            if (!__OFSUB__(v35, 1))
            {
              if ((v9 & 0xC000000000000001) == 0)
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v7 = *(v9 + 8 * v7 + 32);

LABEL_100:
                  sub_264976890(v7 + 16, v161);

                  if (v162 == 3)
                  {
                    if (v161[0] == 1 && (v18 == v2 && v16 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0))
                    {

                      sub_264974D98();
                      *(v3 + 40) = 3;
                      *(v3 + 42) = 1;
                      goto LABEL_36;
                    }
                  }

                  else
                  {
                    sub_2649768C8(v161);
                  }

                  if ((v18 != v2 + 851968 || v16 != 0xA300000000000000) && (sub_264982AA4() & 1) == 0 || *(v3 + 40) == 3)
                  {
                    v9 = *(v3 + 56);
                    if (!(v9 >> 62))
                    {
                      v44 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v44)
                      {
                        goto LABEL_138;
                      }

                      goto LABEL_380;
                    }

LABEL_379:
                    v44 = sub_264982A44();
                    if (v44)
                    {
LABEL_138:
                      v7 = v44 - 1;
                      if (!__OFSUB__(v44, 1))
                      {
                        if ((v9 & 0xC000000000000001) == 0)
                        {
                          if ((v7 & 0x8000000000000000) != 0)
                          {
                            __break(1u);
                          }

                          else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > v7)
                          {
                            v7 = *(v9 + 8 * v7 + 32);

LABEL_143:
                            sub_264976890(v7 + 16, v161);

                            if (v162 == 4 && *v161 == 3 && (v45 = vorrq_s8(*&v161[8], *&v161[24]), !*&vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL))))
                            {
                              sub_2649768C8(v161);
                              if (v18 == v2 + 0x100000 && v16 == 0xA300000000000000 || (sub_264982AA4()) && *(v3 + 40) != 3)
                              {
                                goto LABEL_117;
                              }
                            }

                            else
                            {
                              sub_2649768C8(v161);
                            }

                            v9 = *(v3 + 56);
                            if (!(v9 >> 62))
                            {
                              v46 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                              if (v46)
                              {
                                goto LABEL_154;
                              }

                              goto LABEL_390;
                            }

LABEL_389:
                            v46 = sub_264982A44();
                            if (v46)
                            {
LABEL_154:
                              v7 = v46 - 1;
                              if (!__OFSUB__(v46, 1))
                              {
                                if ((v9 & 0xC000000000000001) == 0)
                                {
                                  if ((v7 & 0x8000000000000000) != 0)
                                  {
                                    __break(1u);
                                  }

                                  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > v7)
                                  {
                                    v7 = *(v9 + 8 * v7 + 32);

                                    goto LABEL_159;
                                  }

                                  __break(1u);
LABEL_395:
                                  __break(1u);
LABEL_396:
                                  __break(1u);
LABEL_397:
                                  __break(1u);
LABEL_398:
                                  __break(1u);
LABEL_399:
                                  __break(1u);
LABEL_400:
                                  __break(1u);
LABEL_401:
                                  __break(1u);
LABEL_402:
                                  __break(1u);
                                  goto LABEL_403;
                                }

LABEL_392:

                                v7 = MEMORY[0x266745520](v7, v9);

LABEL_159:
                                sub_264976890(v7 + 16, v161);

                                if (v162 == 2)
                                {
                                  __swift_destroy_boxed_opaque_existential_0(v161);
                                  if (v18 == v2 + 0x100000 && v16 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
                                  {
                                    if (*(v3 + 40) == 3)
                                    {
                                      goto LABEL_183;
                                    }

LABEL_117:

                                    sub_264974D98();
                                    goto LABEL_36;
                                  }
                                }

                                else
                                {
                                  sub_2649768C8(v161);
                                }

                                v47 = *(v3 + 40);
                                if (v47 < 2)
                                {
                                  if (v18 == v2 + 786432 && v16 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
                                  {
                                    if ((v5() & 1) == 0)
                                    {
                                      v48 = *(v3 + 32);
                                      *(v3 + 32) = sub_2649827E4();
                                    }

                                    if (v5())
                                    {
                                      goto LABEL_56;
                                    }

                                    v49 = *(v3 + 32);
                                    if (sub_264982844() == v2 - 851968 && v50 == 0xA300000000000000)
                                    {
                                    }

                                    else
                                    {
LABEL_340:
                                      v141 = sub_264982AA4();

                                      if ((v141 & 1) == 0)
                                      {
                                        goto LABEL_56;
                                      }
                                    }

                                    if (((v5)(v51) & 1) == 0)
                                    {
                                      v142 = *(v3 + 32);
                                      *(v3 + 32) = sub_2649827E4();
                                    }

                                    result = sub_26497D994();
                                    if (v143)
                                    {
                                      v144 = result;
                                      v145 = v143;

                                      sub_2649766D8(v144, v145, v3);
                                    }

                                    goto LABEL_417;
                                  }

                                  goto LABEL_285;
                                }

                                if (v47 == 2)
                                {
                                  if (qword_27FF875A0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v52 = &qword_27FF875A8;
                                  goto LABEL_291;
                                }

LABEL_183:
                                if (qword_27FF875D0 == -1)
                                {
LABEL_184:
                                  v53 = qword_27FF875D8;
                                  if (*(qword_27FF875D8 + 16))
                                  {
                                    v54 = sub_26496A734(v18, v16);
                                    if (v55)
                                    {
                                      v56 = (*(v53 + 56) + 16 * v54);
                                      v57 = *v56;
                                      v56[1];
                                      swift_bridgeObjectRetain_n();
                                      v58 = sub_264982814();
                                      if (v59)
                                      {
                                        v9 = v58;
                                        v2 = v59;
                                        while (1)
                                        {

                                          result = nullsub_1(v9);
                                          *&v157 = result;
                                          *(&v157 + 1) = v60;
                                          if (!v60)
                                          {
                                            break;
                                          }

                                          v18 = *(v3 + 56);
                                          if (v18 >> 62)
                                          {
                                            if (v18 < 0)
                                            {
                                              v67 = *(v3 + 56);
                                            }

                                            v61 = sub_264982A44();
                                            if (!v61)
                                            {
                                              goto LABEL_371;
                                            }
                                          }

                                          else
                                          {
                                            v61 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                            if (!v61)
                                            {
                                              goto LABEL_371;
                                            }
                                          }

                                          v2 = v61 - 1;
                                          if (__OFSUB__(v61, 1))
                                          {
                                            goto LABEL_372;
                                          }

                                          if ((v18 & 0xC000000000000001) != 0)
                                          {

                                            v62 = MEMORY[0x266745520](v2, v18);
                                          }

                                          else
                                          {
                                            if ((v2 & 0x8000000000000000) != 0)
                                            {
                                              goto LABEL_373;
                                            }

                                            if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                            {
                                              goto LABEL_374;
                                            }

                                            v62 = *(v18 + 8 * v2 + 32);
                                          }

                                          swift_beginAccess();
                                          v7 = *(v62 + 64);
                                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                          *(v62 + 64) = v7;
                                          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                          {
                                            v7 = sub_264971CB8(0, *(v7 + 16) + 1, 1, v7);
                                            *(v62 + 64) = v7;
                                          }

                                          v65 = *(v7 + 16);
                                          v64 = *(v7 + 24);
                                          v153 = v65 + 1;
                                          if (v65 >= v64 >> 1)
                                          {
                                            v7 = sub_264971CB8((v64 > 1), v153, 1, v7);
                                          }

                                          *&v161[24] = &type metadata for BRUIMathCharacter;
                                          *&v161[32] = &off_28763D170;
                                          *v161 = v157;
                                          *(v7 + 16) = v153;
                                          sub_264971E00(v161, v7 + 40 * v65 + 32);
                                          *(v62 + 64) = v7;
                                          swift_endAccess();

                                          v9 = sub_264982814();
                                          v2 = v66;
                                          if (!v66)
                                          {
                                            goto LABEL_233;
                                          }
                                        }

LABEL_412:
                                        __break(1u);
LABEL_413:
                                        __break(1u);
LABEL_414:
                                        __break(1u);
LABEL_415:
                                        __break(1u);
LABEL_416:
                                        __break(1u);
LABEL_417:
                                        __break(1u);
                                        return result;
                                      }

LABEL_233:

                                      *(v3 + 42) = 0;
                                      goto LABEL_351;
                                    }
                                  }

                                  if (*(v3 + 42) != 1)
                                  {
                                    goto LABEL_235;
                                  }

                                  if (qword_27FF875E0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v68 = qword_27FF875E8;
                                  if (*(qword_27FF875E8 + 16))
                                  {
                                    v69 = sub_26496A734(v18, v16);
                                    if (v70)
                                    {
                                      v71 = (*(v68 + 56) + 16 * v69);
                                      v72 = *v71;
                                      v71[1];
                                      swift_bridgeObjectRetain_n();
                                      v73 = sub_264982814();
                                      if (v74)
                                      {
                                        v75 = v73;
                                        v2 = v74;
                                        while (1)
                                        {

                                          result = nullsub_1(v75);
                                          *&v158 = result;
                                          *(&v158 + 1) = v76;
                                          if (!v76)
                                          {
                                            goto LABEL_414;
                                          }

                                          v18 = *(v3 + 56);
                                          if (v18 >> 62)
                                          {
                                            if (v18 < 0)
                                            {
                                              v83 = *(v3 + 56);
                                            }

                                            v77 = sub_264982A44();
                                            if (!v77)
                                            {
                                              goto LABEL_399;
                                            }
                                          }

                                          else
                                          {
                                            v77 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                            if (!v77)
                                            {
                                              goto LABEL_399;
                                            }
                                          }

                                          v2 = v77 - 1;
                                          if (__OFSUB__(v77, 1))
                                          {
                                            goto LABEL_400;
                                          }

                                          if ((v18 & 0xC000000000000001) != 0)
                                          {

                                            v78 = MEMORY[0x266745520](v2, v18);
                                          }

                                          else
                                          {
                                            if ((v2 & 0x8000000000000000) != 0)
                                            {
                                              goto LABEL_401;
                                            }

                                            if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                            {
                                              goto LABEL_402;
                                            }

                                            v78 = *(v18 + 8 * v2 + 32);
                                          }

                                          swift_beginAccess();
                                          v7 = *(v78 + 64);
                                          v79 = swift_isUniquelyReferenced_nonNull_native();
                                          *(v78 + 64) = v7;
                                          if ((v79 & 1) == 0)
                                          {
                                            v7 = sub_264971CB8(0, *(v7 + 16) + 1, 1, v7);
                                            *(v78 + 64) = v7;
                                          }

                                          v81 = *(v7 + 16);
                                          v80 = *(v7 + 24);
                                          v154 = v81 + 1;
                                          if (v81 >= v80 >> 1)
                                          {
                                            v7 = sub_264971CB8((v80 > 1), v154, 1, v7);
                                          }

                                          *&v161[24] = &type metadata for BRUIMathCharacter;
                                          *&v161[32] = &off_28763D170;
                                          *v161 = v158;
                                          *(v7 + 16) = v154;
                                          sub_264971E00(v161, v7 + 40 * v81 + 32);
                                          *(v78 + 64) = v7;
                                          swift_endAccess();

                                          v75 = sub_264982814();
                                          v2 = v82;
                                          if (!v82)
                                          {
                                            goto LABEL_233;
                                          }
                                        }
                                      }

                                      goto LABEL_233;
                                    }
                                  }

                                  if ((*(v3 + 42) & 1) == 0)
                                  {
LABEL_235:
                                    if (qword_27FF875F0 != -1)
                                    {
LABEL_408:
                                      swift_once();
                                    }

                                    v85 = qword_27FF875F8;
                                    if (*(qword_27FF875F8 + 16))
                                    {
                                      v86 = sub_26496A734(v18, v16);
                                      if (v87)
                                      {
                                        v88 = (*(v85 + 56) + 16 * v86);
                                        v89 = *v88;
                                        v88[1];
                                        swift_bridgeObjectRetain_n();
                                        v90 = sub_264982814();
                                        if (v91)
                                        {
                                          v92 = v90;
                                          v2 = v91;
                                          do
                                          {

                                            result = nullsub_1(v92);
                                            *&v159 = result;
                                            *(&v159 + 1) = v93;
                                            if (!v93)
                                            {
                                              goto LABEL_413;
                                            }

                                            v18 = *(v3 + 56);
                                            if (v18 >> 62)
                                            {
                                              if (v18 < 0)
                                              {
                                                v100 = *(v3 + 56);
                                              }

                                              v94 = sub_264982A44();
                                              if (!v94)
                                              {
                                                goto LABEL_395;
                                              }
                                            }

                                            else
                                            {
                                              v94 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                              if (!v94)
                                              {
                                                goto LABEL_395;
                                              }
                                            }

                                            v2 = v94 - 1;
                                            if (__OFSUB__(v94, 1))
                                            {
                                              goto LABEL_396;
                                            }

                                            if ((v18 & 0xC000000000000001) != 0)
                                            {

                                              v95 = MEMORY[0x266745520](v2, v18);
                                            }

                                            else
                                            {
                                              if ((v2 & 0x8000000000000000) != 0)
                                              {
                                                goto LABEL_397;
                                              }

                                              if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                              {
                                                goto LABEL_398;
                                              }

                                              v95 = *(v18 + 8 * v2 + 32);
                                            }

                                            swift_beginAccess();
                                            v7 = *(v95 + 64);
                                            v96 = swift_isUniquelyReferenced_nonNull_native();
                                            *(v95 + 64) = v7;
                                            if ((v96 & 1) == 0)
                                            {
                                              v7 = sub_264971CB8(0, *(v7 + 16) + 1, 1, v7);
                                              *(v95 + 64) = v7;
                                            }

                                            v98 = *(v7 + 16);
                                            v97 = *(v7 + 24);
                                            v155 = v98 + 1;
                                            if (v98 >= v97 >> 1)
                                            {
                                              v7 = sub_264971CB8((v97 > 1), v155, 1, v7);
                                            }

                                            *&v161[24] = &type metadata for BRUIMathCharacter;
                                            *&v161[32] = &off_28763D170;
                                            *v161 = v159;
                                            *(v7 + 16) = v155;
                                            sub_264971E00(v161, v7 + 40 * v98 + 32);
                                            *(v95 + 64) = v7;
                                            swift_endAccess();

                                            v92 = sub_264982814();
                                            v2 = v99;
                                          }

                                          while (v99);
                                        }

LABEL_302:

                                        goto LABEL_351;
                                      }
                                    }

                                    if ((*(v3 + 42) & 1) == 0)
                                    {
                                      if (qword_27FF87600 != -1)
                                      {
                                        swift_once();
                                      }

                                      v101 = qword_27FF87608;
                                      if (*(qword_27FF87608 + 16))
                                      {
                                        v102 = sub_26496A734(v18, v16);
                                        if (v103)
                                        {
                                          v104 = (*(v101 + 56) + 16 * v102);
                                          v105 = *v104;
                                          v104[1];
                                          swift_bridgeObjectRetain_n();
                                          v106 = sub_264982814();
                                          if (v107)
                                          {
                                            v108 = v106;
                                            v2 = v107;
                                            while (1)
                                            {

                                              result = nullsub_1(v108);
                                              *&v160 = result;
                                              *(&v160 + 1) = v109;
                                              if (!v109)
                                              {
                                                goto LABEL_415;
                                              }

                                              v18 = *(v3 + 56);
                                              if (v18 >> 62)
                                              {
                                                if (v18 < 0)
                                                {
                                                  v116 = *(v3 + 56);
                                                }

                                                v110 = sub_264982A44();
                                                if (!v110)
                                                {
LABEL_404:
                                                  __break(1u);
LABEL_405:
                                                  __break(1u);
LABEL_406:
                                                  __break(1u);
LABEL_407:
                                                  __break(1u);
                                                  goto LABEL_408;
                                                }
                                              }

                                              else
                                              {
                                                v110 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                                if (!v110)
                                                {
                                                  goto LABEL_404;
                                                }
                                              }

                                              v2 = v110 - 1;
                                              if (__OFSUB__(v110, 1))
                                              {
                                                goto LABEL_405;
                                              }

                                              if ((v18 & 0xC000000000000001) != 0)
                                              {

                                                v111 = MEMORY[0x266745520](v2, v18);
                                              }

                                              else
                                              {
                                                if ((v2 & 0x8000000000000000) != 0)
                                                {
                                                  goto LABEL_406;
                                                }

                                                if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                                {
                                                  goto LABEL_407;
                                                }

                                                v111 = *(v18 + 8 * v2 + 32);
                                              }

                                              swift_beginAccess();
                                              v7 = *(v111 + 64);
                                              v112 = swift_isUniquelyReferenced_nonNull_native();
                                              *(v111 + 64) = v7;
                                              if ((v112 & 1) == 0)
                                              {
                                                v7 = sub_264971CB8(0, *(v7 + 16) + 1, 1, v7);
                                                *(v111 + 64) = v7;
                                              }

                                              v114 = *(v7 + 16);
                                              v113 = *(v7 + 24);
                                              v156 = v114 + 1;
                                              if (v114 >= v113 >> 1)
                                              {
                                                v7 = sub_264971CB8((v113 > 1), v156, 1, v7);
                                              }

                                              *&v161[24] = &type metadata for BRUIMathCharacter;
                                              *&v161[32] = &off_28763D170;
                                              *v161 = v160;
                                              *(v7 + 16) = v156;
                                              sub_264971E00(v161, v7 + 40 * v114 + 32);
                                              *(v111 + 64) = v7;
                                              swift_endAccess();

                                              v108 = sub_264982814();
                                              v2 = v115;
                                              if (!v115)
                                              {
                                                goto LABEL_302;
                                              }
                                            }
                                          }

                                          goto LABEL_302;
                                        }
                                      }
                                    }
                                  }

LABEL_285:
                                  if (*(v3 + 41))
                                  {
                                    if (qword_27FF875C0 != -1)
                                    {
                                      swift_once();
                                    }

                                    v52 = &qword_27FF875C8;
                                    goto LABEL_291;
                                  }

                                  if (qword_27FF875B0 == -1)
                                  {
LABEL_290:
                                    v52 = &qword_27FF875B8;
LABEL_291:
                                    v117 = *v52;
                                    if (*(*v52 + 16))
                                    {

                                      v118 = sub_26496A734(v18, v16);
                                      if (v119)
                                      {
                                        v120 = v118;

                                        v121 = (*(v117 + 56) + 16 * v120);
                                        v123 = *v121;
                                        v122 = v121[1];
                                        swift_bridgeObjectRetain_n();

                                        sub_2649766D8(v123, v122, v3);

                                        if (*(v3 + 40) == 2)
                                        {
                                          swift_beginAccess();
                                          sub_264976634();
                                          v124 = *(*(v3 + 48) + 16);
                                          sub_264976680(v124);
                                          *&v161[24] = &type metadata for BRUIMathCharacter;
                                          *&v161[32] = &off_28763D170;
                                          *v161 = v123;
                                          *&v161[8] = v122;
                                          v125 = *(v3 + 48);
                                          *(v125 + 16) = v124 + 1;
                                          sub_264971E00(v161, v125 + 40 * v124 + 32);
                                          v84 = swift_endAccess();
                                        }

                                        else
                                        {
                                        }

                                        if (!*(v3 + 40))
                                        {
                                          *(v3 + 40) = 3;
                                        }

                                        v130 = 0;
                                        if (*(v3 + 41) == 1)
                                        {
                                          *(v3 + 41) = 0;
                                        }

                                        goto LABEL_350;
                                      }
                                    }

                                    if (*(v3 + 40) == 2)
                                    {

                                      if (v18 == v2 - 0x100000 && v16 == 0xA300000000000000)
                                      {
                                      }

                                      else
                                      {
                                        v131 = sub_264982AA4();

                                        if ((v131 & 1) == 0)
                                        {
                                          sub_264974834();
                                          swift_beginAccess();
                                          v151 = *(v3 + 48);
                                          *(v3 + 48) = MEMORY[0x277D84F90];

                                          *(v3 + 40) = 1;
                                          return result;
                                        }
                                      }

                                      swift_beginAccess();
                                      v2 = *(*(v3 + 48) + 16);
                                      if (v2)
                                      {
                                        v9 = &qword_27FF86D68;
                                        v7 = 40;
                                        do
                                        {
                                          v16 = *(v3 + 56);
                                          if (v16 >> 62)
                                          {
                                            if (v16 < 0)
                                            {
                                              v139 = *(v3 + 56);
                                            }

                                            v132 = sub_264982A44();
                                            if (!v132)
                                            {
                                              goto LABEL_375;
                                            }
                                          }

                                          else
                                          {
                                            v132 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                            if (!v132)
                                            {
                                              goto LABEL_375;
                                            }
                                          }

                                          v18 = v132 - 1;
                                          if (__OFSUB__(v132, 1))
                                          {
                                            goto LABEL_376;
                                          }

                                          if ((v16 & 0xC000000000000001) != 0)
                                          {

                                            v133 = MEMORY[0x266745520](v18, v16);
                                          }

                                          else
                                          {
                                            if (v18 < 0)
                                            {
                                              goto LABEL_377;
                                            }

                                            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                            {
                                              goto LABEL_378;
                                            }

                                            v133 = *(v16 + 8 * v18 + 32);
                                          }

                                          swift_beginAccess();
                                          v16 = *(v133 + 64);

                                          v18 = *(v16 + 16);

                                          if (v18)
                                          {
                                            v18 = *(v3 + 56);
                                            if (v18 >> 62)
                                            {
                                              if (v18 < 0)
                                              {
                                                v140 = *(v3 + 56);
                                              }

                                              v134 = sub_264982A44();
                                              if (!v134)
                                              {
                                                goto LABEL_385;
                                              }
                                            }

                                            else
                                            {
                                              v134 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                              if (!v134)
                                              {
                                                goto LABEL_385;
                                              }
                                            }

                                            v16 = v134 - 1;
                                            if (__OFSUB__(v134, 1))
                                            {
                                              goto LABEL_386;
                                            }

                                            if ((v18 & 0xC000000000000001) != 0)
                                            {

                                              v135 = MEMORY[0x266745520](v16, v18);
                                            }

                                            else
                                            {
                                              if (v16 < 0)
                                              {
                                                goto LABEL_387;
                                              }

                                              if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                              {
                                                goto LABEL_388;
                                              }

                                              v135 = *(v18 + 8 * v16 + 32);
                                            }

                                            swift_beginAccess();
                                            v18 = *(v135 + 64);
                                            if (*(v18 + 16))
                                            {
                                              v136 = *(v135 + 64);
                                              v137 = swift_isUniquelyReferenced_nonNull_native();
                                              *(v135 + 64) = v18;
                                              if (v137)
                                              {
                                                v138 = *(v18 + 16);
                                                if (!v138)
                                                {
                                                  goto LABEL_339;
                                                }
                                              }

                                              else
                                              {
                                                v18 = sub_2649766C4(v18);
                                                v138 = *(v18 + 16);
                                                if (!v138)
                                                {
LABEL_339:
                                                  __break(1u);
                                                  goto LABEL_340;
                                                }
                                              }

                                              *(v18 + 16) = v138 - 1;
                                              *(v135 + 64) = v18;
                                              sub_264971E00((v18 + 40 * v138 - 8), v161);
                                            }

                                            else
                                            {
                                              memset(v161, 0, sizeof(v161));
                                            }

                                            sub_264976E40(v161, &qword_27FF86D68, &qword_26498D000);
                                            swift_endAccess();
                                          }

                                          --v2;
                                        }

                                        while (v2);
                                        v147 = *(v3 + 48);
                                      }

                                      v149 = nullsub_1(v148);
                                      *&v161[24] = &type metadata for BRUILinearMathString;
                                      *&v161[32] = &off_28763D190;
                                      *v161 = v149;
                                      v162 = 1;
                                      sub_264974CB4(v161);
                                      sub_2649768C8(v161);
                                      v150 = *(v3 + 48);
                                      *(v3 + 48) = MEMORY[0x277D84F90];

LABEL_351:
                                      result = (v5)(v84);
                                      if ((result & 1) == 0)
                                      {
                                        v146 = *(v3 + 32);
                                        goto LABEL_16;
                                      }

                                      return result;
                                    }

                                    sub_264974834();
                                    swift_beginAccess();
                                    v126 = *(v3 + 48);
                                    *(v3 + 48) = MEMORY[0x277D84F90];

                                    *(v3 + 40) = 3;
                                    result = nullsub_1(32);
                                    if (v127)
                                    {
                                      v128 = result;
                                      v129 = v127;

                                      sub_2649766D8(v128, v129, v3);

                                      v130 = 1;
LABEL_350:
                                      *(v3 + 42) = v130;
                                      goto LABEL_351;
                                    }

                                    goto LABEL_416;
                                  }

LABEL_410:
                                  swift_once();
                                  goto LABEL_290;
                                }

LABEL_403:
                                swift_once();
                                goto LABEL_184;
                              }

LABEL_391:
                              __break(1u);
                              goto LABEL_392;
                            }

LABEL_390:
                            __break(1u);
                            goto LABEL_391;
                          }

                          __break(1u);
LABEL_385:
                          __break(1u);
LABEL_386:
                          __break(1u);
LABEL_387:
                          __break(1u);
LABEL_388:
                          __break(1u);
                          goto LABEL_389;
                        }

LABEL_382:

                        v7 = MEMORY[0x266745520](v7, v9);

                        goto LABEL_143;
                      }

LABEL_381:
                      __break(1u);
                      goto LABEL_382;
                    }

LABEL_380:
                    __break(1u);
                    goto LABEL_381;
                  }

                  v39 = 3;
LABEL_166:
                  *v161 = v39;
                  memset(&v161[8], 0, 32);
                  goto LABEL_167;
                }

                __break(1u);
LABEL_371:
                __break(1u);
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
LABEL_376:
                __break(1u);
LABEL_377:
                __break(1u);
LABEL_378:
                __break(1u);
                goto LABEL_379;
              }

LABEL_368:

              v7 = MEMORY[0x266745520](v7, v9);

              goto LABEL_100;
            }

LABEL_367:
            __break(1u);
            goto LABEL_368;
          }

LABEL_366:
          __break(1u);
          goto LABEL_367;
        }

LABEL_360:
        __break(1u);
        goto LABEL_361;
      }
    }

    else
    {
      v34 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_78;
      }
    }

    __break(1u);
    goto LABEL_360;
  }

  if (*(v3 + 41) != 2)
  {
    *(v3 + 41) = 1;
    if (*(v3 + 40) == 2)
    {
LABEL_44:
      *(v3 + 40) = 0;
    }
  }

LABEL_36:
  sub_264974834();
  swift_beginAccess();
  v22 = *(v3 + 48);
  *(v3 + 48) = MEMORY[0x277D84F90];

  result = (v5)(v23);
  if ((result & 1) == 0)
  {
LABEL_15:
    v15 = *(v3 + 32);
LABEL_16:
    result = sub_2649827E4();
    *(v3 + 32) = result;
  }

  return result;
}

unint64_t sub_2649747A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_264982854();
  }

  __break(1u);
  return result;
}

uint64_t sub_2649747EC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_264982844();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264974834()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    v15 = *(v0 + 56);
  }

  v3 = sub_264982A44();
  if (!v3)
  {
    goto LABEL_54;
  }

LABEL_3:
  v1 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v2 + 8 * v1 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_56:

  v1 = MEMORY[0x266745520](v1, v2);

LABEL_8:
  sub_264976890(v1 + 16, &v16);

  if (v19 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(&v16);
    return sub_264974D98();
  }

  sub_2649768C8(&v16);
  v2 = *(v0 + 56);
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_59:
  v5 = sub_264982A44();
  if (!v5)
  {
    goto LABEL_60;
  }

LABEL_13:
  v1 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v2 + 8 * v1 + 32);

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_62:

  v1 = MEMORY[0x266745520](v1, v2);

LABEL_18:
  sub_264976890(v1 + 16, &v16);

  if (v19 != 4 || v16 != 2 || (v6 = vorrq_s8(v17, v18), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL))))
  {
    sub_2649768C8(&v16);
    goto LABEL_31;
  }

  sub_2649768C8(&v16);
  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    goto LABEL_71;
  }

  v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_72;
  }

LABEL_23:
  v1 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    while (1)
    {
      __break(1u);
LABEL_74:

      v8 = MEMORY[0x266745520](v1, v2);

LABEL_28:
      swift_beginAccess();
      v1 = *(v8 + 64);

      v9 = *(v1 + 16);

      if (v9)
      {
        return sub_264974D98();
      }

LABEL_31:
      v2 = *(v0 + 56);
      if (v2 >> 62)
      {
LABEL_65:
        v10 = sub_264982A44();
        if (!v10)
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:

          v1 = MEMORY[0x266745520](v1, v2);

LABEL_38:
          sub_264976890(v1 + 16, &v16);

          if (v19 != 4)
          {
            return sub_2649768C8(&v16);
          }

          if (v16 != 4)
          {
            return sub_2649768C8(&v16);
          }

          v11 = vorrq_s8(v17, v18);
          if (vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))
          {
            return sub_2649768C8(&v16);
          }

          sub_2649768C8(&v16);
          v2 = *(v0 + 56);
          if (v2 >> 62)
          {
            goto LABEL_77;
          }

          result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_78;
          }

          goto LABEL_43;
        }
      }

      else
      {
        v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_66;
        }
      }

      v1 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_67;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_68;
      }

      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v1 = *(v2 + 8 * v1 + 32);

        goto LABEL_38;
      }

      __break(1u);
LABEL_71:
      v7 = sub_264982A44();
      if (v7)
      {
        goto LABEL_23;
      }

LABEL_72:
      __break(1u);
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_74;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v2 + 8 * v1 + 32);

    goto LABEL_28;
  }

  __break(1u);
LABEL_77:
  result = sub_264982A44();
  if (!result)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_43:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v2 + 8 * v1 + 32);

      goto LABEL_48;
    }

    __break(1u);
    return result;
  }

LABEL_80:

  v12 = MEMORY[0x266745520](v1, v2);

LABEL_48:
  swift_beginAccess();
  v13 = *(v12 + 64);

  v14 = *(v13 + 16);

  if (v14)
  {
    return sub_264974D98();
  }

  return result;
}

uint64_t sub_264974CB4(uint64_t a1)
{
  sub_264976890(a1, &v7);
  type metadata accessor for BRUIUEBMathParser.Element();
  v2 = swift_allocObject();
  v3 = v8[0];
  *(v2 + 16) = v7;
  *(v2 + 32) = v3;
  *(v2 + 41) = *(v8 + 9);
  *(v2 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();

  MEMORY[0x266745370](v4);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_264982884();
  }

  sub_264982894();
  swift_endAccess();
}

uint64_t sub_264974D98()
{
  v2 = v0;
  swift_beginAccess();
  v3 = v0[7];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v38 = v0[7];
    }

    result = sub_264982A44();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v5 = v0[7];
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v5 < 0)
  {
    v39 = v0[7];
  }

  if (!sub_264982A44())
  {
    goto LABEL_91;
  }

LABEL_5:
  v0 += 7;
  v6 = sub_2649720B0();
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 56);
  if (v7 >> 62)
  {
    goto LABEL_99;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    v25 = sub_264982A44();
    if (v25)
    {
LABEL_39:
      v2 = v25 - 1;
      if (!__OFSUB__(v25, 1))
      {
        if ((v1 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) == 0)
          {
            if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v2 = *(v1 + 8 * v2 + 32);

              goto LABEL_44;
            }

            __break(1u);
            goto LABEL_114;
          }

          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

LABEL_108:

        v2 = MEMORY[0x266745520](v2, v1);

LABEL_44:
        *(&v44 + 1) = &type metadata for BRUILinearMathString;
        v45 = &off_28763D190;
        *&v43 = v0;
        sub_26497228C(&v55, v42);
        sub_26497F604(&v43, v42, &v46);
        swift_beginAccess();
        v0 = *(v2 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 64) = v0;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_45:
          v28 = v0[2];
          v27 = v0[3];
          if (v28 >= v27 >> 1)
          {
            v0 = sub_264971CB8((v27 > 1), v28 + 1, 1, v0);
            *(v2 + 64) = v0;
          }

          *(&v44 + 1) = &type metadata for BRUIRadicalMathString;
          v45 = &off_28763D210;
          *&v43 = swift_allocObject();
          sub_2649722F0(&v46, v43 + 16);
          v0[2] = v28 + 1;
          sub_264971E00(&v43, &v0[5 * v28 + 4]);
          sub_26497234C(&v46);
          *(v2 + 64) = v0;
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_0(&v55);
        }

LABEL_112:
        v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
        *(v2 + 64) = v0;
        goto LABEL_45;
      }

      goto LABEL_106;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    v18 = sub_264982A44();
    if (!v18)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

LABEL_26:
    v2 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      if ((v1 & 0xC000000000000001) != 0)
      {

        v19 = MEMORY[0x266745520](v2, v1);
      }

      else
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }

        if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v19 = *(v1 + 8 * v2 + 32);
      }

      swift_beginAccess();
      v20 = *(v19 + 64);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 64) = v20;
      if ((v21 & 1) == 0)
      {
        v20 = sub_264971CB8(0, v20[2] + 1, 1, v20);
        *(v19 + 64) = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v41 = sub_264971CB8((v22 > 1), v23 + 1, 1, v20);
        v24 = v23 + 1;
        v20 = v41;
      }

      v47 = &type metadata for BRUILinearMathString;
      v48 = &off_28763D190;
      *&v46 = v0;
      v20[2] = v24;
      sub_264971E00(&v46, &v20[5 * v23 + 4]);
      *(v19 + 64) = v20;
      goto LABEL_36;
    }

    goto LABEL_107;
  }

  while (1)
  {
    v6 = sub_264972020(v10);
LABEL_9:
    v11 = v6;
    swift_endAccess();
    swift_beginAccess();
    v12 = *(v11 + 64);

    v0 = nullsub_1(v13);
    sub_264976890(v11 + 16, &v50);
    if (v54 > 2u)
    {
      if (v54 != 3)
      {
        if (v52 | v53 | v50 | v51 | *(&v50 + 1))
        {
          v29 = v52 | v53 | v51 | *(&v50 + 1);
          if (v50 != 1 || v29)
          {
            if (v50 == 2 && !v29)
            {
              v1 = *(v2 + 56);
              if (!(v1 >> 62))
              {
                v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v31)
                {
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }

                goto LABEL_61;
              }

LABEL_115:
              v31 = sub_264982A44();
              if (!v31)
              {
                goto LABEL_116;
              }

LABEL_61:
              v2 = v31 - 1;
              if (__OFSUB__(v31, 1))
              {
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              if ((v1 & 0xC000000000000001) != 0)
              {
LABEL_118:

                v2 = MEMORY[0x266745520](v2, v1);

LABEL_66:
                v56 = &type metadata for BRUILinearMathString;
                v57 = &off_28763D190;
                *&v55 = v0;
                sub_26497FA30(&v55, &v46);
                swift_beginAccess();
                v0 = *(v2 + 64);
                v32 = swift_isUniquelyReferenced_nonNull_native();
                *(v2 + 64) = v0;
                if (v32)
                {
LABEL_67:
                  v34 = v0[2];
                  v33 = v0[3];
                  if (v34 >= v33 >> 1)
                  {
                    v0 = sub_264971CB8((v33 > 1), v34 + 1, 1, v0);
                    *(v2 + 64) = v0;
                  }

                  v56 = &type metadata for BRUISuperScriptMathString;
                  v57 = &off_28763D1D0;
                  *&v55 = swift_allocObject();
                  sub_2649723A0(&v46, v55 + 16);
                  v0[2] = v34 + 1;
                  sub_264971E00(&v55, &v0[5 * v34 + 4]);
                  sub_2649723FC(&v46);
                  goto LABEL_22;
                }

LABEL_120:
                v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                *(v2 + 64) = v0;
                goto LABEL_67;
              }

              if ((v2 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_120;
              }

              if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v2 = *(v1 + 8 * v2 + 32);

                goto LABEL_66;
              }

              __break(1u);
              goto LABEL_122;
            }

            if (v50 == 3 && !v29)
            {
              v1 = *(v2 + 56);
              if (!(v1 >> 62))
              {
                result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!result)
                {
LABEL_123:
                  __break(1u);
                  goto LABEL_124;
                }

LABEL_74:
                v2 = result - 1;
                if (!__OFSUB__(result, 1))
                {
                  if ((v1 & 0xC000000000000001) == 0)
                  {
                    if ((v2 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                      goto LABEL_127;
                    }

                    if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      return result;
                    }

                    v2 = *(v1 + 8 * v2 + 32);

LABEL_79:
                    v56 = &type metadata for BRUILinearMathString;
                    v57 = &off_28763D190;
                    *&v55 = v0;
                    v45 = 0;
                    v43 = 0u;
                    v44 = 0u;
                    sub_26497F604(&v55, &v43, &v46);
                    swift_beginAccess();
                    v0 = *(v2 + 64);
                    v35 = swift_isUniquelyReferenced_nonNull_native();
                    *(v2 + 64) = v0;
                    if (v35)
                    {
LABEL_80:
                      v37 = v0[2];
                      v36 = v0[3];
                      if (v37 >= v36 >> 1)
                      {
                        v0 = sub_264971CB8((v36 > 1), v37 + 1, 1, v0);
                        *(v2 + 64) = v0;
                      }

                      v56 = &type metadata for BRUIRadicalMathString;
                      v57 = &off_28763D210;
                      *&v55 = swift_allocObject();
                      sub_2649722F0(&v46, v55 + 16);
                      v0[2] = v37 + 1;
                      sub_264971E00(&v55, &v0[5 * v37 + 4]);
                      sub_26497234C(&v46);
                      goto LABEL_22;
                    }

LABEL_127:
                    v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                    *(v2 + 64) = v0;
                    goto LABEL_80;
                  }

LABEL_125:

                  v2 = MEMORY[0x266745520](v2, v1);

                  goto LABEL_79;
                }

LABEL_124:
                __break(1u);
                goto LABEL_125;
              }

LABEL_122:
              result = sub_264982A44();
              if (!result)
              {
                goto LABEL_123;
              }

              goto LABEL_74;
            }

            v47 = &type metadata for BRUILinearMathString;
            v48 = &off_28763D190;
            *&v46 = v0;
            v30 = 2;
          }

          else
          {
            v47 = &type metadata for BRUILinearMathString;
            v48 = &off_28763D190;
            *&v46 = v0;
            v30 = 1;
          }

          v49 = v30;
        }

        else
        {
          v47 = &type metadata for BRUILinearMathString;
          v48 = &off_28763D190;
          *&v46 = v0;
          v49 = 0;
        }

        sub_264974CB4(&v46);

        return sub_2649768C8(&v46);
      }

      v1 = *(v2 + 56);
      if (v1 >> 62)
      {
        goto LABEL_104;
      }

      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_105;
      }

      goto LABEL_26;
    }

    if (v54 >= 2u)
    {
      sub_264971E00(&v50, &v55);
      v1 = *(v2 + 56);
      if (v1 >> 62)
      {
        goto LABEL_102;
      }

      v25 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_39;
      }

      goto LABEL_103;
    }

    sub_264971E00(&v50, &v55);
    v1 = *(v2 + 56);
    if (v1 >> 62)
    {
LABEL_92:
      v14 = sub_264982A44();
      if (!v14)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:

        v2 = MEMORY[0x266745520](v2, v1);

LABEL_18:
        v52 = &type metadata for BRUILinearMathString;
        v53 = &off_28763D190;
        *&v50 = v0;
        sub_26497EDD4(&v55, &v50, &v46);
        swift_beginAccess();
        v0 = *(v2 + 64);
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 64) = v0;
        if ((v15 & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_93;
      }
    }

    v2 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_94;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_95;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 8 * v2 + 32);

      goto LABEL_18;
    }

    __break(1u);
LABEL_99:
    v40 = sub_264982A44();
    v9 = __OFSUB__(v40, 1);
    v10 = v40 - 1;
    if (v9)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_97:
  v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
  *(v2 + 64) = v0;
LABEL_19:
  v17 = v0[2];
  v16 = v0[3];
  if (v17 >= v16 >> 1)
  {
    v0 = sub_264971CB8((v16 > 1), v17 + 1, 1, v0);
    *(v2 + 64) = v0;
  }

  v52 = &type metadata for BRUIFractionMathString;
  v53 = &off_28763D1B0;
  *&v50 = swift_allocObject();
  sub_264972450(&v46, v50 + 16);
  v0[2] = v17 + 1;
  sub_264971E00(&v50, &v0[5 * v17 + 4]);
  sub_2649724AC(&v46);
LABEL_22:
  *(v2 + 64) = v0;
LABEL_36:
  swift_endAccess();
}

void *sub_2649757EC()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t sub_26497581C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_264975864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26498CC60;
  *(inited + 32) = 8495330;
  *(inited + 40) = 0xA300000000000000;
  result = nullsub_1(49);
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 48) = result;
  *(inited + 56) = v2;
  *(inited + 64) = 8626402;
  *(inited + 72) = 0xA300000000000000;
  result = nullsub_1(50);
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = result;
  *(inited + 88) = v3;
  *(inited + 96) = 9019618;
  *(inited + 104) = 0xA300000000000000;
  result = nullsub_1(51);
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 112) = result;
  *(inited + 120) = v4;
  *(inited + 128) = 10068194;
  *(inited + 136) = 0xA300000000000000;
  result = nullsub_1(52);
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 144) = result;
  *(inited + 152) = v5;
  *(inited + 160) = 9543906;
  *(inited + 168) = 0xA300000000000000;
  result = nullsub_1(53);
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 176) = result;
  *(inited + 184) = v6;
  *(inited + 192) = 9150690;
  *(inited + 200) = 0xA300000000000000;
  result = nullsub_1(54);
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 208) = result;
  *(inited + 216) = v7;
  *(inited + 224) = 10199266;
  *(inited + 232) = 0xA300000000000000;
  result = nullsub_1(55);
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 240) = result;
  *(inited + 248) = v8;
  *(inited + 256) = 9674978;
  *(inited + 264) = 0xA300000000000000;
  result = nullsub_1(56);
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 272) = result;
  *(inited + 280) = v9;
  *(inited + 288) = 9085154;
  *(inited + 296) = 0xA300000000000000;
  result = nullsub_1(57);
  if (!v10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(inited + 304) = result;
  *(inited + 312) = v10;
  *(inited + 320) = 10133730;
  *(inited + 328) = 0xA300000000000000;
  result = nullsub_1(48);
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 336) = result;
  *(inited + 344) = v11;
  *(inited + 352) = 8560866;
  *(inited + 360) = 0xA300000000000000;
  result = nullsub_1(44);
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(inited + 368) = result;
  *(inited + 376) = v12;
  *(inited + 384) = 11706594;
  *(inited + 392) = 0xA300000000000000;
  result = nullsub_1(46);
  if (v13)
  {
    *(inited + 400) = result;
    *(inited + 408) = v13;
    v14 = sub_264972178(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    result = swift_arrayDestroy();
    qword_27FF875A8 = v14;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_264975A94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CC70;
  *(v0 + 32) = 10789090;
  *(v0 + 40) = 0xA300000000000000;
  result = nullsub_1(45);
  if (!v2)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = v2;
  *(v0 + 64) = 11968738;
  *(v0 + 72) = 0xA300000000000000;
  result = nullsub_1(61);
  if (!v3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v0 + 80) = result;
  *(v0 + 88) = v3;
  *(v0 + 96) = 10920162;
  *(v0 + 104) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 112) = result;
  *(v0 + 120) = v4;
  *(v0 + 128) = 11706594;
  *(v0 + 136) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v5)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 144) = result;
  *(v0 + 152) = v5;
  *(v0 + 160) = 9216226;
  *(v0 + 168) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 176) = result;
  *(v0 + 184) = v6;
  *(v0 + 192) = 9871586;
  *(v0 + 200) = 0xA300000000000000;
  result = nullsub_1(33);
  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 208) = result;
  *(v0 + 216) = v7;
  *(v0 + 224) = 8495330;
  *(v0 + 232) = 0xA300000000000000;
  result = nullsub_1(97);
  if (!v8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v0 + 240) = result;
  *(v0 + 248) = v8;
  *(v0 + 256) = 8626402;
  *(v0 + 264) = 0xA300000000000000;
  result = nullsub_1(98);
  if (!v9)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 272) = result;
  *(v0 + 280) = v9;
  *(v0 + 288) = 9019618;
  *(v0 + 296) = 0xA300000000000000;
  result = nullsub_1(99);
  if (!v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v0 + 304) = result;
  *(v0 + 312) = v10;
  *(v0 + 320) = 10068194;
  *(v0 + 328) = 0xA300000000000000;
  result = nullsub_1(100);
  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 336) = result;
  *(v0 + 344) = v11;
  *(v0 + 352) = 9543906;
  *(v0 + 360) = 0xA300000000000000;
  result = nullsub_1(101);
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v0 + 368) = result;
  *(v0 + 376) = v12;
  *(v0 + 384) = 9150690;
  *(v0 + 392) = 0xA300000000000000;
  result = nullsub_1(102);
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v0 + 400) = result;
  *(v0 + 408) = v13;
  *(v0 + 416) = 10199266;
  *(v0 + 424) = 0xA300000000000000;
  result = nullsub_1(103);
  if (!v14)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v0 + 432) = result;
  *(v0 + 440) = v14;
  *(v0 + 448) = 9674978;
  *(v0 + 456) = 0xA300000000000000;
  result = nullsub_1(104);
  if (!v15)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 464) = result;
  *(v0 + 472) = v15;
  *(v0 + 480) = 9085154;
  *(v0 + 488) = 0xA300000000000000;
  result = nullsub_1(105);
  if (!v16)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v0 + 496) = result;
  *(v0 + 504) = v16;
  *(v0 + 512) = 10133730;
  *(v0 + 520) = 0xA300000000000000;
  result = nullsub_1(106);
  if (!v17)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 528) = result;
  *(v0 + 536) = v17;
  *(v0 + 544) = 8757474;
  *(v0 + 552) = 0xA300000000000000;
  result = nullsub_1(107);
  if (!v18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 560) = result;
  *(v0 + 568) = v18;
  *(v0 + 576) = 8888546;
  *(v0 + 584) = 0xA300000000000000;
  result = nullsub_1(108);
  if (!v19)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 592) = result;
  *(v0 + 600) = v19;
  *(v0 + 608) = 9281762;
  *(v0 + 616) = 0xA300000000000000;
  result = nullsub_1(109);
  if (!v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v0 + 624) = result;
  *(v0 + 632) = v20;
  *(v0 + 640) = 10330338;
  *(v0 + 648) = 0xA300000000000000;
  result = nullsub_1(110);
  if (!v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v0 + 656) = result;
  *(v0 + 664) = v21;
  *(v0 + 672) = 9806050;
  *(v0 + 680) = 0xA300000000000000;
  result = nullsub_1(111);
  if (!v22)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v0 + 688) = result;
  *(v0 + 696) = v22;
  *(v0 + 704) = 9412834;
  *(v0 + 712) = 0xA300000000000000;
  result = nullsub_1(112);
  if (!v23)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 720) = result;
  *(v0 + 728) = v23;
  *(v0 + 736) = 10461410;
  *(v0 + 744) = 0xA300000000000000;
  result = nullsub_1(113);
  if (!v24)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v0 + 752) = result;
  *(v0 + 760) = v24;
  *(v0 + 768) = 9937122;
  *(v0 + 776) = 0xA300000000000000;
  result = nullsub_1(114);
  if (!v25)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v0 + 784) = result;
  *(v0 + 792) = v25;
  *(v0 + 800) = 9347298;
  *(v0 + 808) = 0xA300000000000000;
  result = nullsub_1(115);
  if (!v26)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v0 + 816) = result;
  *(v0 + 824) = v26;
  *(v0 + 832) = 10395874;
  *(v0 + 840) = 0xA300000000000000;
  result = nullsub_1(116);
  if (!v27)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 848) = result;
  *(v0 + 856) = v27;
  *(v0 + 864) = 10854626;
  *(v0 + 872) = 0xA300000000000000;
  result = nullsub_1(117);
  if (!v28)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v0 + 880) = result;
  *(v0 + 888) = v28;
  *(v0 + 896) = 10985698;
  *(v0 + 904) = 0xA300000000000000;
  result = nullsub_1(118);
  if (!v29)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v0 + 912) = result;
  *(v0 + 920) = v29;
  *(v0 + 928) = 12230882;
  *(v0 + 936) = 0xA300000000000000;
  result = nullsub_1(119);
  if (!v30)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v0 + 944) = result;
  *(v0 + 952) = v30;
  *(v0 + 960) = 11378914;
  *(v0 + 968) = 0xA300000000000000;
  result = nullsub_1(120);
  if (!v31)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v0 + 976) = result;
  *(v0 + 984) = v31;
  *(v0 + 992) = 12427490;
  *(v0 + 1000) = 0xA300000000000000;
  result = nullsub_1(121);
  if (!v32)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v0 + 1008) = result;
  *(v0 + 1016) = v32;
  *(v0 + 1024) = 11903202;
  *(v0 + 1032) = 0xA300000000000000;
  result = nullsub_1(122);
  if (v33)
  {
    *(v0 + 1040) = result;
    *(v0 + 1048) = v33;
    v34 = sub_264972178(v0);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    qword_27FF875B8 = v34;
    return result;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_264975FE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CC70;
  *(v0 + 32) = 10789090;
  *(v0 + 40) = 0xA300000000000000;
  result = nullsub_1(45);
  if (!v2)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = v2;
  *(v0 + 64) = 11968738;
  *(v0 + 72) = 0xA300000000000000;
  result = nullsub_1(61);
  if (!v3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v0 + 80) = result;
  *(v0 + 88) = v3;
  *(v0 + 96) = 10920162;
  *(v0 + 104) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 112) = result;
  *(v0 + 120) = v4;
  *(v0 + 128) = 11706594;
  *(v0 + 136) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v5)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 144) = result;
  *(v0 + 152) = v5;
  *(v0 + 160) = 9216226;
  *(v0 + 168) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 176) = result;
  *(v0 + 184) = v6;
  *(v0 + 192) = 9871586;
  *(v0 + 200) = 0xA300000000000000;
  result = nullsub_1(33);
  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 208) = result;
  *(v0 + 216) = v7;
  *(v0 + 224) = 8495330;
  *(v0 + 232) = 0xA300000000000000;
  result = nullsub_1(65);
  if (!v8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v0 + 240) = result;
  *(v0 + 248) = v8;
  *(v0 + 256) = 8626402;
  *(v0 + 264) = 0xA300000000000000;
  result = nullsub_1(66);
  if (!v9)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 272) = result;
  *(v0 + 280) = v9;
  *(v0 + 288) = 9019618;
  *(v0 + 296) = 0xA300000000000000;
  result = nullsub_1(67);
  if (!v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v0 + 304) = result;
  *(v0 + 312) = v10;
  *(v0 + 320) = 10068194;
  *(v0 + 328) = 0xA300000000000000;
  result = nullsub_1(68);
  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 336) = result;
  *(v0 + 344) = v11;
  *(v0 + 352) = 9543906;
  *(v0 + 360) = 0xA300000000000000;
  result = nullsub_1(69);
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v0 + 368) = result;
  *(v0 + 376) = v12;
  *(v0 + 384) = 9150690;
  *(v0 + 392) = 0xA300000000000000;
  result = nullsub_1(70);
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v0 + 400) = result;
  *(v0 + 408) = v13;
  *(v0 + 416) = 10199266;
  *(v0 + 424) = 0xA300000000000000;
  result = nullsub_1(71);
  if (!v14)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v0 + 432) = result;
  *(v0 + 440) = v14;
  *(v0 + 448) = 9674978;
  *(v0 + 456) = 0xA300000000000000;
  result = nullsub_1(72);
  if (!v15)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 464) = result;
  *(v0 + 472) = v15;
  *(v0 + 480) = 9085154;
  *(v0 + 488) = 0xA300000000000000;
  result = nullsub_1(73);
  if (!v16)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v0 + 496) = result;
  *(v0 + 504) = v16;
  *(v0 + 512) = 10133730;
  *(v0 + 520) = 0xA300000000000000;
  result = nullsub_1(74);
  if (!v17)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 528) = result;
  *(v0 + 536) = v17;
  *(v0 + 544) = 8757474;
  *(v0 + 552) = 0xA300000000000000;
  result = nullsub_1(75);
  if (!v18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 560) = result;
  *(v0 + 568) = v18;
  *(v0 + 576) = 8888546;
  *(v0 + 584) = 0xA300000000000000;
  result = nullsub_1(76);
  if (!v19)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 592) = result;
  *(v0 + 600) = v19;
  *(v0 + 608) = 9281762;
  *(v0 + 616) = 0xA300000000000000;
  result = nullsub_1(77);
  if (!v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v0 + 624) = result;
  *(v0 + 632) = v20;
  *(v0 + 640) = 10330338;
  *(v0 + 648) = 0xA300000000000000;
  result = nullsub_1(78);
  if (!v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v0 + 656) = result;
  *(v0 + 664) = v21;
  *(v0 + 672) = 9806050;
  *(v0 + 680) = 0xA300000000000000;
  result = nullsub_1(79);
  if (!v22)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v0 + 688) = result;
  *(v0 + 696) = v22;
  *(v0 + 704) = 9412834;
  *(v0 + 712) = 0xA300000000000000;
  result = nullsub_1(80);
  if (!v23)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 720) = result;
  *(v0 + 728) = v23;
  *(v0 + 736) = 10461410;
  *(v0 + 744) = 0xA300000000000000;
  result = nullsub_1(81);
  if (!v24)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v0 + 752) = result;
  *(v0 + 760) = v24;
  *(v0 + 768) = 9937122;
  *(v0 + 776) = 0xA300000000000000;
  result = nullsub_1(82);
  if (!v25)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v0 + 784) = result;
  *(v0 + 792) = v25;
  *(v0 + 800) = 9347298;
  *(v0 + 808) = 0xA300000000000000;
  result = nullsub_1(83);
  if (!v26)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v0 + 816) = result;
  *(v0 + 824) = v26;
  *(v0 + 832) = 10395874;
  *(v0 + 840) = 0xA300000000000000;
  result = nullsub_1(84);
  if (!v27)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 848) = result;
  *(v0 + 856) = v27;
  *(v0 + 864) = 10854626;
  *(v0 + 872) = 0xA300000000000000;
  result = nullsub_1(85);
  if (!v28)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v0 + 880) = result;
  *(v0 + 888) = v28;
  *(v0 + 896) = 10985698;
  *(v0 + 904) = 0xA300000000000000;
  result = nullsub_1(86);
  if (!v29)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v0 + 912) = result;
  *(v0 + 920) = v29;
  *(v0 + 928) = 12230882;
  *(v0 + 936) = 0xA300000000000000;
  result = nullsub_1(87);
  if (!v30)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v0 + 944) = result;
  *(v0 + 952) = v30;
  *(v0 + 960) = 11378914;
  *(v0 + 968) = 0xA300000000000000;
  result = nullsub_1(88);
  if (!v31)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v0 + 976) = result;
  *(v0 + 984) = v31;
  *(v0 + 992) = 12427490;
  *(v0 + 1000) = 0xA300000000000000;
  result = nullsub_1(89);
  if (!v32)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v0 + 1008) = result;
  *(v0 + 1016) = v32;
  *(v0 + 1024) = 11903202;
  *(v0 + 1032) = 0xA300000000000000;
  result = nullsub_1(90);
  if (v33)
  {
    *(v0 + 1040) = result;
    *(v0 + 1048) = v33;
    v34 = sub_264972178(v0);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    qword_27FF875C8 = v34;
    return result;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_264976580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_264976D2C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D70, &qword_26498CEA0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_2649765E4()
{
  v0 = sub_264976D2C(&unk_28763CCB8);
  result = sub_264976E40(&unk_28763CCD8, &qword_27FF86D70, &qword_26498CEA0);
  qword_27FF87608 = v0;
  return result;
}

void *sub_264976634()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_264971CB8(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_264976680(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_264971CB8((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2649766D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v11 = *(a3 + 56);
  }

  result = sub_264982A44();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  a3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_17:

    a3 = MEMORY[0x266745520](a3, v6);

    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  a3 = *(v6 + 8 * a3 + 32);

LABEL_8:
  swift_beginAccess();
  v6 = *(a3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 64) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    v6 = sub_264971CB8(0, *(v6 + 16) + 1, 1, v6);
    *(a3 + 64) = v6;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_264971CB8((v9 > 1), v10 + 1, 1, v6);
  }

  v13 = &type metadata for BRUIMathCharacter;
  v14 = &off_28763D170;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *(v6 + 16) = v10 + 1;
  sub_264971E00(&v12, v6 + 40 * v10 + 32);
  *(a3 + 64) = v6;
  swift_endAccess();
}

uint64_t getEnumTagSinglePayload for BRUIUEBMathParser.Case(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BRUIUEBMathParser.Case(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BRUIUEBMathParser.Grade(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BRUIUEBMathParser.Grade(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18ScreenReaderOutput17BRUIUEBMathParserC11ElementType33_481702DCE820C31CD7877D4A0F664DC6LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_264976BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264976BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_264976C44(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_264976C80()
{
  result = qword_27FF87610[0];
  if (!qword_27FF87610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF87610);
  }

  return result;
}

unint64_t sub_264976CD8()
{
  result = qword_27FF87720[0];
  if (!qword_27FF87720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF87720);
  }

  return result;
}

unint64_t sub_264976D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D78, &qword_26498CEA8);
    v3 = sub_264982A84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26496A734(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_264976E40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SCROBrailleUILiveCaptionsManager.isSourceAudio.getter()
{
  v1 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  swift_beginAccess();
  return *(v0 + v1);
}

id SCROBrailleUILiveCaptionsManager.isSourceAudio.setter(char a1)
{
  v3 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  result = swift_beginAccess();
  v1[v3] = a1;
  if (v1[OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing] == 1)
  {
    [v1 stop];
    return [v1 startWithCompletionHandler_];
  }

  return result;
}

id sub_2649770E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSourceAudio];
  *a2 = result;
  return result;
}

uint64_t SCROBrailleUILiveCaptionsManager.start()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_264982664();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D98, &qword_26498CEC0);
  v1[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DA0, &qword_26498CEC8) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_2649823E4();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DA8, &qword_26498CED0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = sub_264982434();
  v1[16] = v12;
  v13 = *(v12 - 8);
  v1[17] = v13;
  v14 = *(v13 + 64) + 15;
  v1[18] = swift_task_alloc();
  v15 = sub_2649823B4();
  v1[19] = v15;
  v16 = *(v15 - 8);
  v1[20] = v16;
  v17 = *(v16 + 64) + 15;
  v1[21] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DB0, &qword_26498CED8) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v19 = sub_264982454();
  v1[26] = v19;
  v20 = *(v19 - 8);
  v1[27] = v20;
  v21 = *(v20 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264977544, 0, 0);
}

uint64_t sub_264977544()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[2];
  v9 = sub_26496AB68();
  v0[34] = v9;
  v10 = *v9;
  sub_26496BBA4(v8);

  sub_264982404();
  sub_264982444();
  sub_264982414();
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v11 = v0[15];
    v12 = &unk_27FF86DA8;
    v13 = &unk_26498CED0;
LABEL_5:
    sub_264976E40(v11, v12, v13);
    v19 = 1;
    goto LABEL_7;
  }

  v14 = v0[33];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[11];
  (*(v0[20] + 32))(v0[21], v0[15], v0[19]);
  sub_2649823F4();
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v18 = v0[11];
    (*(v0[20] + 8))(v0[21], v0[19]);
    v12 = &unk_27FF86DA0;
    v13 = &unk_26498CEC8;
    v11 = v18;
    goto LABEL_5;
  }

  v20 = v0[25];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[19];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];
  (*(v25 + 32))(v24, v0[11], v26);
  sub_2649823A4();
  MEMORY[0x266745310](95, 0xE100000000000000);
  v27 = sub_2649823A4();
  MEMORY[0x266745310](v27);

  sub_264982394();
  (*(v25 + 8))(v24, v26);
  (*(v22 + 8))(v21, v23);
  v19 = 0;
LABEL_7:
  v28 = v0[26];
  v29 = v0[25];
  v30 = *(v0[27] + 56);
  v0[35] = v30;
  v30(v29, v19, 1, v28);
  v0[36] = sub_2649825D4();
  v31 = *(MEMORY[0x277D23DD0] + 4);
  v32 = swift_task_alloc();
  v0[37] = v32;
  *v32 = v0;
  v32[1] = sub_264977808;

  return MEMORY[0x282182950]();
}

uint64_t sub_264977808(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_264977908, 0, 0);
}

uint64_t sub_264977908()
{
  v148 = v0;
  result = *(v0 + 304);
  v126 = *(result + 16);
  if (!v126)
  {
LABEL_13:
    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v28 = *(v0 + 200);
    v29 = *(v0 + 176);

    sub_264979998(v28, v29, &qword_27FF86DB0, &qword_26498CED8);
    v30 = (*(v27 + 48))(v29, 1, v26);
    v31 = *(v0 + 208);
    v32 = *(v0 + 216);
    v33 = *(v0 + 176);
    v34 = *(v0 + 32);
    v35 = *(v0 + 40);
    if (v30 == 1)
    {
      v36 = *(v0 + 264);
      v37 = *(v0 + 224);
      v38 = *(v0 + 56);
      sub_264976E40(*(v0 + 176), &qword_27FF86DB0, &qword_26498CED8);
      v39 = sub_26497FAB8();
      (*(v35 + 16))(v38, v39, v34);
      (*(v32 + 16))(v37, v36, v31);
      v40 = sub_264982644();
      v41 = sub_264982924();
      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 216);
      v43 = *(v0 + 224);
      v45 = *(v0 + 208);
      v46 = *(v0 + 56);
      v48 = *(v0 + 32);
      v47 = *(v0 + 40);
      if (v42)
      {
        v143 = *(v0 + 32);
        v49 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v147[0] = v133;
        *v49 = 136315138;
        sub_264979684(&qword_27FF86DB8);
        v129 = v41;
        v50 = sub_264982A94();
        v138 = v46;
        v52 = v51;
        v53 = *(v44 + 8);
        v53(v43, v45);
        v54 = sub_26496D81C(v50, v52, v147);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_26490B000, v40, v129, "BrailleUI Live Captions: normalizedLocale for %s is nil", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x266746840](v133, -1, -1);
        MEMORY[0x266746840](v49, -1, -1);

        (*(v47 + 8))(v138, v143);
      }

      else
      {

        v53 = *(v44 + 8);
        v53(v43, v45);
        (*(v47 + 8))(v46, v48);
      }
    }

    else
    {
      v56 = *(v0 + 232);
      v55 = *(v0 + 240);
      v57 = *(v0 + 64);
      (*(v32 + 32))(v55, *(v0 + 176), *(v0 + 208));
      v58 = sub_26497FAB8();
      (*(v35 + 16))(v57, v58, v34);
      (*(v32 + 16))(v56, v55, v31);
      v59 = sub_264982644();
      v144 = sub_264982924();
      v60 = os_log_type_enabled(v59, v144);
      v62 = *(v0 + 232);
      v61 = *(v0 + 240);
      v63 = *(v0 + 208);
      v64 = *(v0 + 216);
      v65 = *(v0 + 64);
      v67 = *(v0 + 32);
      v66 = *(v0 + 40);
      if (v60)
      {
        v68 = swift_slowAlloc();
        v139 = v67;
        v69 = swift_slowAlloc();
        v147[0] = v69;
        *v68 = 136315138;
        sub_264979684(&qword_27FF86DB8);
        v130 = v65;
        v134 = v61;
        v70 = sub_264982A94();
        v72 = v71;
        v73 = *(v64 + 8);
        v73(v62, v63);
        v74 = sub_26496D81C(v70, v72, v147);

        *(v68 + 4) = v74;
        _os_log_impl(&dword_26490B000, v59, v144, "BrailleUI Live Captions: locale %s not supported", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x266746840](v69, -1, -1);
        v75 = v68;
        v53 = v73;
        MEMORY[0x266746840](v75, -1, -1);

        (*(v66 + 8))(v130, v139);
        v73(v134, v63);
      }

      else
      {

        v53 = *(v64 + 8);
        v53(v62, v63);
        (*(v66 + 8))(v65, v67);
        v53(v61, v63);
      }
    }

    v76 = *(v0 + 24);
    v77 = *(*(v0 + 16) + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v79 = [objc_opt_self() bundleForClass_];
    v80 = sub_264982774();
    v81 = sub_264982774();
    v82 = sub_264982774();
    v83 = [v79 localizedStringForKey:v80 value:v81 table:v82];

    if (!v83)
    {
      sub_264982784();
      v83 = sub_264982774();
    }

    v84 = *(v0 + 264);
    v85 = *(v0 + 208);
    v86 = *(v0 + 216);
    v87 = *(v0 + 200);
    [v77 handleTranscribedText:v83 isFinal:0];

    sub_264976E40(v87, &qword_27FF86DB0, &qword_26498CED8);
    v53(v84, v85);
    goto LABEL_24;
  }

  v2 = 0;
  v3 = *(v0 + 216);
  v124 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v121 = v3;
  v119 = *(v0 + 72);
  v117 = (v3 + 32);
  v118 = *(v0 + 304);
  v128 = (v3 + 8);
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v0 + 256);
    v8 = *(v0 + 208);
    v136 = *(v0 + 280);
    v141 = *(v0 + 200);
    v9 = *(v0 + 192);
    v10 = *(v0 + 80);
    v132 = v2;
    v11 = v121[2];
    v11(v7, v124 + v121[9] * v2, v8);
    v11(v9, v7, v8);
    v136(v9, 0, 1, v8);
    v12 = *(v119 + 48);
    sub_264979998(v9, v10, &qword_27FF86DB0, &qword_26498CED8);
    sub_264979998(v141, v10 + v12, &qword_27FF86DB0, &qword_26498CED8);
    v13 = v121[6];
    if (v13(v10, 1, v8) == 1)
    {
      break;
    }

    v14 = *(v0 + 208);
    sub_264979998(*(v0 + 80), *(v0 + 184), &qword_27FF86DB0, &qword_26498CED8);
    v15 = v13(v10 + v12, 1, v14);
    v16 = *(v0 + 256);
    if (v15 == 1)
    {
      v17 = *(v0 + 208);
      v18 = *(v0 + 184);
      sub_264976E40(*(v0 + 192), &qword_27FF86DB0, &qword_26498CED8);
      v19 = *v128;
      (*v128)(v16, v17);
      v19(v18, v17);
      goto LABEL_4;
    }

    v20 = *(v0 + 248);
    v21 = *(v0 + 208);
    v22 = *(v0 + 184);
    v137 = *(v0 + 192);
    v142 = *(v0 + 80);
    (*v117)(v20, v10 + v12, v21);
    sub_264979684(&qword_27FF86DC8);
    v23 = sub_264982764();
    v6 = *v128;
    (*v128)(v20, v21);
    sub_264976E40(v137, &qword_27FF86DB0, &qword_26498CED8);
    v6(v16, v21);
    v6(v22, v21);
    sub_264976E40(v142, &qword_27FF86DB0, &qword_26498CED8);
    if (v23)
    {
      v24 = *(v0 + 304);

      goto LABEL_28;
    }

LABEL_5:
    v2 = v132 + 1;
    result = v118;
    if (v126 == v132 + 1)
    {
      v25 = *(v0 + 304);
      goto LABEL_13;
    }
  }

  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  sub_264976E40(*(v0 + 192), &qword_27FF86DB0, &qword_26498CED8);
  v6 = *v128;
  (*v128)(v4, v5);
  if (v13(v10 + v12, 1, v5) != 1)
  {
LABEL_4:
    sub_264976E40(*(v0 + 80), &qword_27FF86D98, &qword_26498CEC0);
    goto LABEL_5;
  }

  v99 = *(v0 + 304);
  v100 = *(v0 + 80);

  sub_264976E40(v100, &qword_27FF86DB0, &qword_26498CED8);
LABEL_28:
  v101 = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_26498CAD0;
  v103 = sub_264982774();
  AXPidForLaunchLabel();

  *(v102 + 32) = sub_264982AD4();
  v104 = *v101;
  v105 = sub_26496C3A0();

  if (v105 || (v106 = **(v0 + 272), v107 = sub_26496C3C8(), v106, v107))
  {
    v108 = 2;
  }

  else
  {
    v108 = [*(v0 + 16) isSourceAudio];
  }

  v109 = *(v0 + 288);
  v110 = *(v0 + 264);
  v112 = *(v0 + 200);
  v111 = *(v0 + 208);
  v113 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_sourceType;
  v146 = *(v0 + 16);
  *(v146 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_sourceType) = v108;
  v114 = sub_2649825C4();
  v115 = *(v146 + v113);
  *(swift_allocObject() + 16) = v146;
  v116 = v146;
  sub_2649825B4();

  sub_264976E40(v112, &qword_27FF86DB0, &qword_26498CED8);
  v6(v110, v111);
  *(*(v0 + 16) + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) = 1;
LABEL_24:
  v89 = *(v0 + 256);
  v88 = *(v0 + 264);
  v91 = *(v0 + 240);
  v90 = *(v0 + 248);
  v92 = *(v0 + 224);
  v93 = *(v0 + 232);
  v95 = *(v0 + 192);
  v94 = *(v0 + 200);
  v97 = *(v0 + 176);
  v96 = *(v0 + 184);
  v120 = *(v0 + 168);
  v122 = *(v0 + 144);
  v123 = *(v0 + 120);
  v125 = *(v0 + 112);
  v127 = *(v0 + 88);
  v131 = *(v0 + 80);
  v135 = *(v0 + 64);
  v140 = *(v0 + 56);
  v145 = *(v0 + 48);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_264978748(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2649787F0;

  return SCROBrailleUILiveCaptionsManager.start()();
}

uint64_t sub_2649787F0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

Swift::Void __swiftcall SCROBrailleUILiveCaptionsManager.stop()()
{
  v1 = v0;
  v2 = sub_264982664();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4, v5);
  sub_2649825D4();
  v6 = sub_2649825C4();
  v7 = *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_sourceType);
  sub_2649825A4();

  *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) = 0;
  v8 = *(v1 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);

  [v8 finalizeTranscription];
}

void __swiftcall SCROBrailleUILiveCaptionsManager.init()(SCROBrailleUILiveCaptionsManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_264978C04()
{
  [v0 stop];

  return [v0 startWithCompletionHandler_];
}

void sub_264978C4C(void *a1)
{
  v1 = a1;
  [v1 stop];
  [v1 startWithCompletionHandler_];
}

uint64_t sub_264978CA4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264979B70;

  return v7();
}

uint64_t sub_264978D8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_264978E74;

  return v8();
}

uint64_t sub_264978E74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264978F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11, v12);
  v14 = v27 - v13;
  sub_264979998(a3, v27 - v13, &qword_27FF86DD0, &qword_26498CEE0);
  v15 = sub_2649828E4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_264976E40(v14, &qword_27FF86DD0, &qword_26498CEE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2649828D4();
  (*(v16 + 8))(v14, v15);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v17 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = sub_2649828A4();
  v20 = v19;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v21 = sub_264982794() + 32;
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    if (v20 | v18)
    {
      v28[0] = 0;
      v28[1] = 0;
      v23 = v28;
      v28[2] = v18;
      v28[3] = v20;
    }

    else
    {
      v23 = 0;
    }

    v27[1] = 7;
    v27[2] = v23;
    v27[3] = v21;
    v25 = swift_task_create();

    sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);

    return v25;
  }

LABEL_8:
  sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_264979264(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26497935C;

  return v7(a1);
}

uint64_t sub_26497935C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_264979454()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_264982574();
  v3 = sub_2649825E4();
  if (v3 == sub_2649825E4())
  {
    if (sub_264982564() != -2 && sub_264982564() != -1)
    {
      sub_264982564();
    }

    v6 = *(v2 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_264982774();
    v10 = sub_264982774();

    v11 = sub_264982774();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    if (!v12)
    {
      sub_264982784();
      v12 = sub_264982774();
    }

    [v6 handleTranscribedText:v12 isFinal:0];
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client);
    sub_264982584();
    v12 = sub_264982774();

    sub_264982574();
    v5 = sub_2649825E4();
    [v4 handleTranscribedText:v12 isFinal:v5 == sub_2649825E4()];
  }
}

uint64_t sub_264979684(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_264982454();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for SCROBrailleUILiveCaptionsManager()
{
  result = qword_27FF87830;
  if (!qword_27FF87830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87830);
  }

  return result;
}

uint64_t sub_264979720()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264979B70;

  return sub_264978748(v2, v3);
}

uint64_t sub_2649797CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264979B70;

  return sub_264978CA4(v2, v3, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2649798CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264978E74;

  return sub_264978D8C(a1, v4, v5, v7);
}

uint64_t sub_264979998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264979A00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264979B70;

  return sub_264979264(a1, v5);
}

uint64_t sub_264979AB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264978E74;

  return sub_264979264(a1, v5);
}

uint64_t sub_264979B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4, v5);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager;
  if (*(v0 + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager))
  {
    v9 = *(v0 + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager);
  }

  else
  {
    v10 = sub_2649828E4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_2649828C4();
    v11 = sub_2649828B4();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    v9 = sub_264979E50(0, 0, v7, &unk_26498CF90, v12);
    v14 = *(v1 + v8);
    *(v1 + v8) = v9;
  }

  return v9;
}

uint64_t sub_264979CC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_264982454() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  sub_2649828C4();
  v1[4] = sub_2649828B4();
  v4 = sub_2649828A4();

  return MEMORY[0x2822009F8](sub_264979D8C, v4, v3);
}

uint64_t sub_264979D8C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_264982404();
  v4 = objc_allocWithZone(sub_264982634());
  *v3 = sub_264982604();

  v5 = v0[1];

  return v5();
}

uint64_t sub_264979E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10, v11);
  v13 = v26 - v12;
  sub_26497C2F0(a3, v26 - v12);
  v14 = sub_2649828E4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_264976E40(v13, &qword_27FF86DD0, &qword_26498CEE0);
  }

  else
  {
    sub_2649828D4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_2649828A4();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = sub_264982794() + 32;
      sub_264982634();

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264976E40(a3, &qword_27FF86DD0, &qword_26498CEE0);
  sub_264982634();
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t SCROBrailleUIIntelligenceManager.summarize(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_264982664();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_264982434();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_264982454();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_2649828C4();
  v3[21] = sub_2649828B4();
  v14 = sub_2649828A4();
  v3[22] = v14;
  v3[23] = v13;

  return MEMORY[0x2822009F8](sub_26497A2D8, v14, v13);
}

uint64_t sub_26497A2D8()
{
  v69 = v0;
  v1 = v0[5];
  v2 = v0[6];
  if (sub_2649827D4() <= 32)
  {
    v46 = v0[21];
    v47 = v0[6];

    v48 = v0[5];
    v50 = v0[19];
    v49 = v0[20];
    v51 = v0[16];
    v53 = v0[12];
    v52 = v0[13];
    v55 = v0[10];
    v54 = v0[11];

    v56 = v0[1];

    return v56(v48, v47);
  }

  else
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[17];
    v6 = v0[18];
    v7 = v0[15];
    v8 = v0[16];
    v61 = v0[14];
    v63 = v0[13];
    v9 = v0[9];
    v65 = v0[8];
    sub_264982394();
    sub_264982404();
    sub_264982444();
    v10 = *(v6 + 8);
    v0[24] = v10;
    v0[25] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v5);
    sub_264982424();
    (*(v7 + 8))(v8, v61);
    v11 = sub_2649823C4();
    v13 = v12;

    v10(v3, v5);
    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xD000000000000013;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0x8000000264992930;
    }

    v16 = sub_26497FAB8();
    v0[26] = v16;
    v17 = *(v9 + 16);
    v0[27] = v17;
    v0[28] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v63, v16, v65);

    v18 = sub_264982644();
    v19 = sub_264982904();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[13];
    v22 = v0[8];
    v23 = v0[9];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v67 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_26496D81C(v14, v15, &v67);
      _os_log_impl(&dword_26490B000, v18, v19, "User language = %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x266746840](v25, -1, -1);
      MEMORY[0x266746840](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    v64 = v0[6];
    v66 = v0[7];
    v62 = v0[5];
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_2649829F4();
    MEMORY[0x266745310](0xD00000000000013ALL, 0x8000000264992950);
    MEMORY[0x266745310](v14, v15);

    MEMORY[0x266745310](0xD000000000000080, 0x8000000264992A90);
    v59 = v68;
    v60 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD8, &qword_26498CF38);
    v26 = sub_2649825F4();
    v27 = *(v26 - 8);
    v58 = *(v27 + 72);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    v0[29] = v29;
    *(v29 + 16) = xmmword_26498CB10;
    v30 = v29 + v28;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DE0, &qword_26498CF40);
    v32 = (v30 + *(v31 + 48));
    v33 = *MEMORY[0x277D42E48];
    v34 = sub_264982724();
    v35 = *(*(v34 - 8) + 104);
    v35(v30, v33, v34);
    *v32 = v60;
    v32[1] = v59;
    v36 = *MEMORY[0x277CE7628];
    v37 = *(v27 + 104);
    v37(v30, v36, v26);
    v38 = v30 + v58;
    v39 = (v38 + *(v31 + 48));
    v35(v38, *MEMORY[0x277D42E40], v34);
    *v39 = v62;
    v39[1] = v64;
    v37(v38, v36, v26);

    v40 = sub_264979B7C();
    v0[30] = v40;
    v41 = *(MEMORY[0x277D857C8] + 4);
    v42 = swift_task_alloc();
    v0[31] = v42;
    v43 = sub_264982634();
    v0[32] = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DE8, &qword_26498CF48);
    v0[33] = v44;
    *v42 = v0;
    v42[1] = sub_26497A8A4;
    v45 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v40, v43, v44, v45);
  }
}

uint64_t sub_26497A8A4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = v2[29];

    v6 = v2[22];
    v7 = v2[23];
    v8 = sub_26497B41C;
  }

  else
  {
    v6 = v2[22];
    v7 = v2[23];
    v8 = sub_26497A9E4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_26497A9E4()
{
  v46 = v0;
  v1 = v0[2];
  v2 = sub_264982614();

  if (v2)
  {
    v3 = v0[7];
    v4 = OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager;
    v0[35] = OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager;
    v5 = *(v3 + v4);
    v0[36] = v5;
    v6 = *(MEMORY[0x277D857C8] + 4);

    v7 = swift_task_alloc();
    v0[37] = v7;
    *v7 = v0;
    v7[1] = sub_26497ACE0;
    v8 = v0[32];
    v9 = v0[33];
    v10 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 3, v5, v8, v9, v10);
  }

  else
  {
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[21];
    v16 = v0[12];
    v17 = v0[8];

    v14(v16, v13, v17);
    v18 = sub_264982644();
    v19 = sub_264982914();
    if (os_log_type_enabled(v18, v19))
    {
      v41 = v0[24];
      v42 = v0[25];
      v20 = v0[20];
      v21 = v0[17];
      v22 = v0[9];
      v43 = v0[8];
      v44 = v0[12];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315138;
      sub_264982404();
      sub_26497C198();
      v25 = sub_264982A94();
      v27 = v26;
      v41(v20, v21);
      v28 = sub_26496D81C(v25, v27, &v45);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26490B000, v18, v19, "LLM Unsupported; current locale: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x266746840](v24, -1, -1);
      MEMORY[0x266746840](v23, -1, -1);

      (*(v22 + 8))(v44, v43);
    }

    else
    {
      v29 = v0[12];
      v30 = v0[8];
      v31 = v0[9];

      (*(v31 + 8))(v29, v30);
    }

    v33 = v0[19];
    v32 = v0[20];
    v34 = v0[16];
    v36 = v0[12];
    v35 = v0[13];
    v38 = v0[10];
    v37 = v0[11];

    v39 = v0[1];

    return v39(0, 0);
  }
}

uint64_t sub_26497ACE0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v10 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v5 = v2[29];

    v6 = v2[22];
    v7 = v2[23];
    v8 = sub_26497B61C;
  }

  else
  {
    v6 = v2[22];
    v7 = v2[23];
    v8 = sub_26497AE20;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_26497AE20()
{
  v1 = v0[35];
  v2 = v0[7];
  v3 = v0[3];
  sub_264982624();

  v4 = *(v2 + v1);
  v0[39] = v4;
  v5 = *(MEMORY[0x277D857C8] + 4);

  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_26497AEF8;
  v7 = v0[32];
  v8 = v0[33];
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 4, v4, v7, v8, v9);
}

uint64_t sub_26497AEF8()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *v1;
  v4[41] = v0;

  if (v0)
  {
    v5 = v4[29];

    v6 = v4[22];
    v7 = v4[23];

    return MEMORY[0x2822009F8](sub_26497B81C, v6, v7);
  }

  else
  {
    v4[42] = v4[4];
    v8 = *(MEMORY[0x277CE7630] + 4);
    v12 = (*MEMORY[0x277CE7630] + MEMORY[0x277CE7630]);
    v9 = swift_task_alloc();
    v4[43] = v9;
    *v9 = v4;
    v9[1] = sub_26497B0B0;
    v10 = v4[29];

    return v12(v10);
  }
}

uint64_t sub_26497B0B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 344);
  v13 = *v3;
  *(v4 + 352) = a1;
  *(v4 + 360) = a2;
  *(v4 + 368) = v2;

  if (v2)
  {
    v6 = *(v4 + 232);

    v7 = *(v4 + 176);
    v8 = *(v4 + 184);
    v9 = sub_26497BA1C;
  }

  else
  {
    v10 = *(v4 + 336);
    v11 = *(v4 + 232);

    v7 = *(v4 + 176);
    v8 = *(v4 + 184);
    v9 = sub_26497B1EC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26497B1EC()
{
  v38 = v0;
  v1 = v0[45];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[11];
  v7 = v0[8];

  v3(v6, v4, v7);

  v8 = sub_264982644();
  v9 = sub_264982914();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[45];
  if (v10)
  {
    v12 = v0[44];
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = sub_26496D81C(v12, v11, &v37);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_26490B000, v8, v9, "Got response: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x266746840](v17, -1, -1);
    MEMORY[0x266746840](v16, -1, -1);

    (*(v15 + 8))(v13, v14);
  }

  else
  {
    v19 = v0[11];
    v20 = v0[8];
    v21 = v0[9];
    v22 = v0[45];

    (*(v21 + 8))(v19, v20);
  }

  v23 = v0[44];
  v24 = v0[45];
  v25 = sub_2649827B4();
  v27 = v26;

  v29 = v0[19];
  v28 = v0[20];
  v30 = v0[16];
  v32 = v0[12];
  v31 = v0[13];
  v34 = v0[10];
  v33 = v0[11];

  v35 = v0[1];

  return v35(v25, v27);
}

uint64_t sub_26497B41C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 272);
  v3 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v4 = v2;
  v5 = sub_264982644();
  v6 = sub_264982914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26490B000, v5, v6, "Response %@", v7, 0xCu);
    sub_264976E40(v8, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v8, -1, -1);
    MEMORY[0x266746840](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v11 = sub_2649827B4();
  v13 = v12;

  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(v11, v13);
}

uint64_t sub_26497B61C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 304);
  v3 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v4 = v2;
  v5 = sub_264982644();
  v6 = sub_264982914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26490B000, v5, v6, "Response %@", v7, 0xCu);
    sub_264976E40(v8, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v8, -1, -1);
    MEMORY[0x266746840](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v11 = sub_2649827B4();
  v13 = v12;

  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(v11, v13);
}

uint64_t sub_26497B81C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 328);
  v3 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v4 = v2;
  v5 = sub_264982644();
  v6 = sub_264982914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26490B000, v5, v6, "Response %@", v7, 0xCu);
    sub_264976E40(v8, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v8, -1, -1);
    MEMORY[0x266746840](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v11 = sub_2649827B4();
  v13 = v12;

  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(v11, v13);
}

uint64_t sub_26497BA1C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 368);
  v3 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 80), *(v0 + 208), *(v0 + 64));
  v4 = v2;
  v5 = sub_264982644();
  v6 = sub_264982914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26490B000, v5, v6, "Response %@", v7, 0xCu);
    sub_264976E40(v8, &qword_27FF86DF0, &qword_26498CF50);
    MEMORY[0x266746840](v8, -1, -1);
    MEMORY[0x266746840](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v11 = sub_2649827B4();
  v13 = v12;

  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(v11, v13);
}

uint64_t sub_26497BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2649828C4();
  v3[5] = sub_2649828B4();
  v5 = sub_2649828A4();

  return MEMORY[0x2822009F8](sub_26497BE40, v5, v4);
}

uint64_t sub_26497BE40()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_264982784();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26497BF1C;
  v10 = v0[4];

  return SCROBrailleUIIntelligenceManager.summarize(_:)(v5, v7);
}

uint64_t sub_26497BF1C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *v2;

  if (v7)
  {
    if (a2)
    {
      v10 = sub_264982774();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v4 + 48);
    (v11)[2](v11, v10);
    _Block_release(v11);
  }

  else
  {
  }

  v12 = *(v9 + 8);

  return v12();
}

void __swiftcall SCROBrailleUIIntelligenceManager.init()(SCROBrailleUIIntelligenceManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SCROBrailleUIIntelligenceManager.init()()
{
  *(v0 + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager) = 0;
  v2.super_class = SCROBrailleUIIntelligenceManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_26497C198()
{
  result = qword_27FF86DB8;
  if (!qword_27FF86DB8)
  {
    sub_264982454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86DB8);
  }

  return result;
}

unint64_t type metadata accessor for SCROBrailleUIIntelligenceManager()
{
  result = qword_27FF87838;
  if (!qword_27FF87838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87838);
  }

  return result;
}

uint64_t sub_26497C23C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264979B70;

  return sub_26497BDA4(v2, v3, v4);
}

uint64_t sub_26497C2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26497C360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264978E74;

  return sub_264979CC8(a1);
}

uint64_t sub_26497C3F8(uint64_t a1, unint64_t a2)
{
  v27[0] = 10;
  v27[1] = 0xE100000000000000;
  v26 = v27;

  v5 = sub_26497C8B8(0x7FFFFFFFFFFFFFFFLL, 1, sub_26497CEB0, v25, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v27[0] = MEMORY[0x277D84F90];
    sub_26497CD84(0, v6, 0);
    v7 = v27[0];
    v8 = objc_opt_self();
    v9 = (v5 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      v12 = *v9;

      v14 = [v8 sharedManager];
      MEMORY[0x2667452B0](v10, v11, v13, v12);
      v15 = sub_264982774();

      v16 = [v14 printBrailleForText:v15 language:0 mode:1 textPositionsRange:sub_264982334() locations:0 textFormattingRanges:{0, 0}];

      if (v16)
      {
        v17 = sub_264982784();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v27[0] = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26497CD84((v20 > 1), v21 + 1, 1);
        v7 = v27[0];
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v27[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E00, qword_26498CFA0);
  sub_26497CECC();
  v23 = sub_264982754();

  return v23;
}

uint64_t sub_26497C660(uint64_t a1, unint64_t a2)
{
  v27[0] = 10;
  v27[1] = 0xE100000000000000;
  v26 = v27;

  v5 = sub_26497C8B8(0x7FFFFFFFFFFFFFFFLL, 1, sub_26497CF98, v25, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v27[0] = MEMORY[0x277D84F90];
    sub_26497CD84(0, v6, 0);
    v7 = v27[0];
    v8 = objc_opt_self();
    v9 = (v5 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      v12 = *v9;

      v14 = [v8 inputManager];
      MEMORY[0x2667452B0](v10, v11, v13, v12);
      v15 = sub_264982774();

      v16 = [v14 textForPrintBraille:v15 language:0 mode:1 locations:0];

      if (v16)
      {
        v17 = sub_264982784();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v27[0] = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26497CD84((v20 > 1), v21 + 1, 1);
        v7 = v27[0];
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v9 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v27[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E00, qword_26498CFA0);
  sub_26497CECC();
  v23 = sub_264982754();

  return v23;
}

unint64_t sub_26497C8B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_264982854();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26497CC78(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26497CC78((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_264982844();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2649827E4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2649827E4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_264982854();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26497CC78(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_264982854();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26497CC78(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26497CC78((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2649827E4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_26497CC78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E10, &unk_26498CFF0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_26497CD84(char *a1, int64_t a2, char a3)
{
  result = sub_26497CDA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26497CDA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D60, &unk_26498CC50);
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

unint64_t sub_26497CECC()
{
  result = qword_27FF86E08;
  if (!qword_27FF86E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF86E00, qword_26498CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E08);
  }

  return result;
}

uint64_t sub_26497CF30(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_264982AA4() & 1;
  }
}

id sub_26497CFFC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_264982774();

  v6 = [v4 *a3];

  return v6;
}

id sub_26497D088(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr))
{
  a3(v6);

  sub_264971E00(v6, v3 + OBJC_IVAR___SCROBrailleUIMathString_content);
  v5.receiver = v3;
  v5.super_class = SCROBrailleUIMathString;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_26497D10C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v6 = sub_264982784();
  a4(v9, v6);

  sub_264971E00(v9, a1 + OBJC_IVAR___SCROBrailleUIMathString_content);
  v8.receiver = a1;
  v8.super_class = SCROBrailleUIMathString;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_26497D2C8()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 24);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 32);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SCROBrailleUIMathString_content), v1);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3, v6);
  v8 = &v11 - v7;
  (*(v4 + 16))(&v11 - v7);
  v9 = (*(v2 + 8))(v1, v2);
  (*(v4 + 8))(v8, v1);
  return v9;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26497D558()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 24);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 32);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SCROBrailleUIMathString_content), v1);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3, v6);
  v8 = &v11 - v7;
  (*(v4 + 16))(&v11 - v7);
  v9 = (*(v2 + 16))(v1, v2);
  (*(v4 + 8))(v8, v1);
  return v9;
}

uint64_t sub_26497D7A4()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 24);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIMathString_content + 32);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SCROBrailleUIMathString_content), v1);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3, v6);
  v8 = &v11 - v7;
  (*(v4 + 16))(&v11 - v7);
  v9 = (*(v2 + 24))(v1, v2);
  (*(v4 + 8))(v8, v1);
  return v9;
}

void __swiftcall SCROBrailleUIMathString.init()(SCROBrailleUIMathString *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_26497D994()
{
  MEMORY[0x266745310]();

  return 92;
}

uint64_t sub_26497D9DC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 == 6910044 && a2 == 0xE300000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 32975;
  }

  if (v3 == 0x73656D69745CLL && a2 == 0xE600000000000000 || (sub_264982AA4() & 1) != 0 || v3 == 1953457244 && a2 == 0xE400000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 38851;
  }

  if (v3 == 1986618460 && a2 == 0xE400000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 47;
  }

  if (v3 == 9564 && a2 == 0xE200000000000000 || (sub_264982AA4() & 1) != 0)
  {
    return 37;
  }

  return v3;
}

uint64_t sub_26497DB60(uint64_t a1, uint64_t a2)
{
  v4 = 0x6465636E65666D3CLL;
  if ((a1 != 40 || a2 != 0xE100000000000000) && (sub_264982AA4() & 1) == 0)
  {
    if (a1 == 41 && a2 == 0xE100000000000000 || (sub_264982AA4() & 1) != 0)
    {
      return 0xD000000000000011;
    }

    else
    {
      v4 = 0x2F3C80CF3E6E6D3CLL;
      if ((a1 != 6910044 || a2 != 0xE300000000000000) && (sub_264982AA4() & 1) == 0)
      {
        v4 = 0x2F3C97C33E6F6D3CLL;
        if ((a1 != 0x73656D69745CLL || a2 != 0xE600000000000000) && (sub_264982AA4() & 1) == 0)
        {
          v4 = 0x2F3CB7C23E6F6D3CLL;
          if ((a1 != 1953457244 || a2 != 0xE400000000000000) && (sub_264982AA4() & 1) == 0)
          {
            v4 = 0x2F3CB7C33E6F6D3CLL;
            if ((a1 != 1986618460 || a2 != 0xE400000000000000) && (sub_264982AA4() & 1) == 0)
            {
              v4 = 0x6D2F3C253E6F6D3CLL;
              if ((a1 != 9564 || a2 != 0xE200000000000000) && (sub_264982AA4() & 1) == 0)
              {
                if (a1 == 43 && a2 == 0xE100000000000000 || ((v7 = sub_264982AA4(), a1 == 45) ? (v8 = a2 == 0xE100000000000000) : (v8 = 0), !v8 ? (v9 = 0) : (v9 = 1), (v7 & 1) != 0 || (v9 & 1) != 0 || ((v10 = sub_264982AA4(), a1 == 33) ? (v11 = a2 == 0xE100000000000000) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (v10 & 1) != 0 || (v12 & 1) != 0 || (sub_264982AA4() & 1) != 0)))
                {
                  v14 = 1047489852;
                  MEMORY[0x266745310](a1, a2);
                  v6 = 1869426492;
                }

                else
                {
                  if (a1 == 8284 && a2 == 0xE200000000000000 || (sub_264982AA4() & 1) != 0)
                  {
                    return 32;
                  }

                  v14 = 1047424316;
                  v13 = sub_26497D9DC(a1, a2);
                  MEMORY[0x266745310](v13);

                  v6 = 1852649276;
                }

                MEMORY[0x266745310](v6 & 0xFFFF0000FFFFFFFFLL | 0x3E00000000, 0xE500000000000000);
                return v14;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_26497DF40()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26497DF80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a3 && a4 == 0xE000000000000000 || (sub_264982AA4() & 1) != 0)
  {
    v8 = sub_2649747EC(a1, a2);
    if (v9)
    {
      if (v8 == 94 && v9 == 0xE100000000000000)
      {

LABEL_9:
        v17 = 32123;
LABEL_21:
        MEMORY[0x266745310](a1, a2);
        return v17;
      }

      v10 = sub_264982AA4();

      if (v10)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  if (sub_264982844() != 92 || v12 != 0xE100000000000000)
  {
    v13 = sub_264982AA4();

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_20:
    v17 = a3;

    goto LABEL_21;
  }

LABEL_17:
  sub_2649747EC(a1, a2);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = sub_264982744();

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = a3;

  MEMORY[0x266745310](32, 0xE100000000000000);

  MEMORY[0x266745310](a1, a2);

  return v17;
}

uint64_t sub_26497E14C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v34 = MEMORY[0x277D84F90];
    sub_26497CD84(0, v1, 0);
    v3 = v34;
    v4 = v2 + 32;
    do
    {
      sub_26497228C(v4, &v30);
      v5 = v32;
      v6 = v33;
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      result = __swift_destroy_boxed_opaque_existential_0(&v30);
      v34 = v3;
      v11 = v3[2];
      v10 = v3[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_26497CD84((v10 > 1), v11 + 1, 1);
        v3 = v34;
      }

      v3[2] = v12;
      v13 = &v3[2 * v11];
      v13[4] = v7;
      v13[5] = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
    goto LABEL_8;
  }

  v3 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
LABEL_8:
    v14 = 0;
    v15 = 0;
    v16 = v3 + 5;
    v17 = 0xE000000000000000;
    v29 = v12;
    while (1)
    {
      if (v15 >= v3[2])
      {
        __break(1u);
        return result;
      }

      v19 = *(v16 - 1);
      v18 = *v16;
      v20 = HIBYTE(*v16) & 0xF;
      if (!v14 && v17 == 0xE000000000000000 || (sub_264982AA4() & 1) != 0)
      {
        if ((v18 & 0x2000000000000000) != 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (sub_264982844() == 94 && v22 == 0xE100000000000000)
          {

LABEL_25:
            v30 = 32123;
            v31 = 0xE200000000000000;
            goto LABEL_10;
          }

          v23 = sub_264982AA4();

          if (v23)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
      }

      v24 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v24 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        if (sub_264982844() == 92 && v25 == 0xE100000000000000)
        {

LABEL_33:
          v27 = v19 & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v27 = v20;
          }

          if (v27)
          {
            sub_264982844();
            v28 = sub_264982744();

            if (v28)
            {
              v30 = v14;
              v31 = v17;

              MEMORY[0x266745310](32, 0xE100000000000000);

              MEMORY[0x266745310](v19, v18);

              goto LABEL_11;
            }
          }

          goto LABEL_9;
        }

        v26 = sub_264982AA4();

        if (v26)
        {
          goto LABEL_33;
        }
      }

LABEL_9:
      v30 = v14;
      v31 = v17;

LABEL_10:
      MEMORY[0x266745310](v19, v18);
LABEL_11:

      v14 = v30;
      v17 = v31;
      ++v15;
      v16 += 2;
      if (v29 == v15)
      {
        goto LABEL_39;
      }
    }
  }

  v14 = 0;
LABEL_39:

  return v14;
}

unint64_t sub_26497E49C(uint64_t a1)
{
  *&v48 = 0x3E776F726D3CLL;
  *(&v48 + 1) = 0xE600000000000000;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_23:
    MEMORY[0x266745310](0x3E776F726D2F3CLL, 0xE700000000000000);
    sub_26497F6C0(v46);
    return v48;
  }

  v2 = 0;
  v3 = a1 + 32;
  v37 = 0;
  v4 = v1 - 1;
  v5 = 0x3E776F726D3CLL;
  v6 = 0xE600000000000000;
  while (1)
  {
    v7 = v5;
    sub_26497228C(v3, v43);
    v8 = v44;
    v9 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v10 = *(v9 + 16);

    v11 = v10(v8, v9);
    v13 = v12;
    sub_26497F650(v46, &v38);
    if (!v39)
    {

      sub_26497F6C0(&v38);
      goto LABEL_15;
    }

    sub_264971E00(&v38, v40);
    if (!v2)
    {
      goto LABEL_14;
    }

    if ((sub_264982834() & 1) == 0)
    {

LABEL_14:
      __swift_destroy_boxed_opaque_existential_0(v40);
LABEL_15:
      MEMORY[0x266745310](v11, v13);

      sub_26497F6C0(v46);
      goto LABEL_16;
    }

    sub_2649827D4();
    result = sub_2649827F4();
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v15 < result >> 14)
    {
      break;
    }

    v35 = sub_264982854();
    v36 = v16;
    v18 = v17;
    v20 = v19;

    v21 = v41;
    v22 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if ((*(v22 + 16))(v21, v22) == 0xD000000000000011 && 0x8000000264992BB0 == v23)
    {
    }

    else
    {
      v24 = sub_264982AA4();

      if ((v24 & 1) == 0)
      {

        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        sub_2649829F4();

        *&v38 = v37;
        *(&v38 + 1) = v2;
        MEMORY[0x266745310](0x6D3C3E7075736D3CLL, 0xEC0000003E776F72);
        v28 = v41;
        v29 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v30 = (*(v29 + 16))(v28, v29);
        MEMORY[0x266745310](v30);

        MEMORY[0x266745310](0x3E776F726D2F3CLL, 0xE700000000000000);
        v25 = v35;
        v27 = v36;
        v26 = v18;
        goto LABEL_21;
      }
    }

    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_2649829F4();

    *&v38 = v7;
    *(&v38 + 1) = v6;
    MEMORY[0x266745310](0xD000000000000013, 0x8000000264992BD0);
    v25 = v35;
    v26 = v18;
    v27 = v36;
LABEL_21:
    v31 = MEMORY[0x2667452B0](v25, v26, v27, v20);
    v33 = v32;

    MEMORY[0x266745310](v31, v33);

    v34 = v38;
    sub_26497F6C0(v46);
    v48 = v34;
    __swift_destroy_boxed_opaque_existential_0(v40);
LABEL_16:
    sub_26497228C(v43, v46);
    __swift_destroy_boxed_opaque_existential_0(v43);
    if (!v4)
    {

      goto LABEL_23;
    }

    v2 = v6;
    v6 = *(&v48 + 1);
    v5 = v48;
    --v4;
    v3 += 40;
    v37 = v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26497E8EC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v24 = MEMORY[0x277D84F90];
    sub_26497CD84(0, v1, 0);
    v3 = v24;
    v4 = v2 + 32;
    do
    {
      sub_26497228C(v4, &v20);
      v5 = v22;
      v6 = v23;
      __swift_project_boxed_opaque_existential_1(&v20, v22);
      v7 = (*(v6 + 24))(v5, v6);
      v9 = v8;
      result = __swift_destroy_boxed_opaque_existential_0(&v20);
      v24 = v3;
      v11 = v3[2];
      v10 = v3[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_26497CD84((v10 > 1), v11 + 1, 1);
        v3 = v24;
      }

      v3[2] = v12;
      v13 = &v3[2 * v11];
      v13[4] = v7;
      v13[5] = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
LABEL_8:
    v14 = 0;
    v15 = 0;
    v16 = v3 + 5;
    v17 = 0xE000000000000000;
    while (v15 < v3[2])
    {
      ++v15;
      v19 = *(v16 - 1);
      v18 = *v16;
      v20 = v14;
      v21 = v17;

      MEMORY[0x266745310](v19, v18);

      v14 = v20;
      v17 = v21;
      v16 += 2;
      if (v12 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    goto LABEL_8;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

uint64_t sub_26497EAB4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](31613, 0xE200000000000000);
  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  v6 = (*(v5 + 8))(v4, v5);
  MEMORY[0x266745310](v6);

  MEMORY[0x266745310](125, 0xE100000000000000);
  return 0x7B636172665CLL;
}

uint64_t sub_26497EBA4()
{
  v1 = v0;
  sub_2649829F4();
  MEMORY[0x266745310](0xD000000000000029, 0x8000000264992C30);
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x266745310](v4);

  MEMORY[0x266745310](0x3C3E776F726D2F3CLL, 0xED00003E776F726DLL);
  v5 = v0[8];
  v6 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x266745310](v7);

  MEMORY[0x266745310](0xD000000000000018, 0x8000000264992C60);
  return 0;
}

uint64_t sub_26497ECE8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](2633513, 0xE300000000000000);
  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  v6 = (*(v5 + 24))(v4, v5);
  MEMORY[0x266745310](v6);

  MEMORY[0x266745310](10537, 0xE200000000000000);
  return 10280;
}

uint64_t sub_26497EDD4@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_264971E00(a1, a3);

  return sub_264971E00(a2, a3 + 40);
}

uint64_t sub_26497EE3C()
{
  result = 31582;
  sub_26497EFB8();
  return result;
}

unint64_t sub_26497EE48()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 16))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](0x3E7075736D2F3CLL, 0xE700000000000000);
  return 0xD000000000000013;
}

uint64_t sub_26497EEF4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](41, 0xE100000000000000);
  return 10334;
}

uint64_t sub_26497EF9C()
{
  result = 0x6E696C7265766F5CLL;
  sub_26497EFB8();
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26497EFB8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  MEMORY[0x266745310](v3);

  MEMORY[0x266745310](125, 0xE100000000000000);
}

uint64_t sub_26497F04C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_26497F0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  MEMORY[0x266745310](v6);

  MEMORY[0x266745310](125, 0xE100000000000000);
  return a3;
}

uint64_t sub_26497F158()
{
  sub_26497F650((v0 + 5), &v12);
  if (v13)
  {
    sub_264971E00(&v12, v14);
    *&v12 = 0x5B747271735CLL;
    *(&v12 + 1) = 0xE600000000000000;
    v1 = v15;
    v2 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v3 = (*(v2 + 8))(v1, v2);
    MEMORY[0x266745310](v3);

    MEMORY[0x266745310](31581, 0xE200000000000000);
    v4 = v0[3];
    v5 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v4);
    v6 = (*(v5 + 8))(v4, v5);
    MEMORY[0x266745310](v6);

    MEMORY[0x266745310](125, 0xE100000000000000);
    v7 = v12;
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_26497F6C0(&v12);
    v14[0] = 0x7B747271735CLL;
    v14[1] = 0xE600000000000000;
    v8 = v0[3];
    v9 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v8);
    v10 = (*(v9 + 8))(v8, v9);
    MEMORY[0x266745310](v10);

    MEMORY[0x266745310](125, 0xE100000000000000);
    return v14[0];
  }

  return v7;
}

uint64_t sub_26497F2F0()
{
  sub_26497F650((v0 + 5), &v12);
  if (v13)
  {
    sub_264971E00(&v12, &v14);
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_2649829F4();

    *&v12 = 0x3E746F6F726D3CLL;
    *(&v12 + 1) = 0xE700000000000000;
    v1 = v0[3];
    v2 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v1);
    v3 = (*(v2 + 16))(v1, v2);
    MEMORY[0x266745310](v3);

    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    v6 = (*(v5 + 16))(v4, v5);
    MEMORY[0x266745310](v6);

    MEMORY[0x266745310](0x3E746F6F726D2F3CLL, 0xE800000000000000);
    v7 = v12;
    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
    sub_26497F6C0(&v12);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2649829F4();

    v14 = 0x3E747271736D3CLL;
    v15 = 0xE700000000000000;
    v8 = v0[3];
    v9 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v8);
    v10 = (*(v9 + 16))(v8, v9);
    MEMORY[0x266745310](v10);

    MEMORY[0x266745310](0x3E747271736D2F3CLL, 0xE800000000000000);
    return v14;
  }

  return v7;
}

uint64_t sub_26497F4D0()
{
  sub_26497F650((v0 + 5), v10);
  v1 = v11;
  if (v11)
  {
    v2 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v3 = (*(v2 + 24))(v1, v2);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_26497F6C0(v10);
    v5 = 0xE100000000000000;
    v3 = 50;
  }

  v10[0] = 40;
  v10[1] = 0xE100000000000000;
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  v8 = (*(v7 + 24))(v6, v7);
  MEMORY[0x266745310](v8);

  MEMORY[0x266745310](0x2F31285E29, 0xE500000000000000);
  MEMORY[0x266745310](v3, v5);

  MEMORY[0x266745310](41, 0xE100000000000000);
  return v10[0];
}

__n128 sub_26497F604@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_264971E00(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t sub_26497F650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D68, &qword_26498D000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26497F6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D68, &qword_26498D000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for SCROBrailleUIMathString()
{
  result = qword_27FF87840;
  if (!qword_27FF87840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87840);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26497F7BC(uint64_t a1, int a2)
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

uint64_t sub_26497F804(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
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

uint64_t sub_26497F8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26497F900(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_18ScreenReaderOutput22BRUIMathStringProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26497F974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26497F9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26497FA3C()
{
  v0 = sub_264982664();
  __swift_allocate_value_buffer(v0, qword_27FF86E80);
  __swift_project_value_buffer(v0, qword_27FF86E80);
  return sub_264982654();
}

uint64_t sub_26497FAB8()
{
  if (qword_27FF87848 != -1)
  {
    swift_once();
  }

  v0 = sub_264982664();

  return __swift_project_value_buffer(v0, qword_27FF86E80);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

id sub_26497FBB8()
{
  v1 = OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth;
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth);
  }

  else
  {
    v4 = sub_26497FC18();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_26497FC18()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v0 = sub_264982664();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264982544();
  v7 = sub_264982534();
  v8 = [objc_opt_self() auxiliarySession];
  v9 = *MEMORY[0x277CB8058];
  v31[0] = 0;
  v10 = [v8 setCategory:v9 error:v31];
  v11 = v31[0];
  if (!v10)
  {
    goto LABEL_5;
  }

  v31[0] = 0;
  v12 = v11;
  v13 = [v8 setCategoryOptions:3 error:v31];
  v11 = v31[0];
  if (!v13)
  {
    goto LABEL_5;
  }

  v31[0] = 0;
  v14 = v11;
  v15 = [v8 setParticipatesInNowPlayingAppPolicy:0 error:v31];
  v11 = v31[0];
  if (v15)
  {
    v16 = v31[0];
  }

  else
  {
LABEL_5:
    v17 = v11;
    v18 = sub_264982384();

    swift_willThrow();
    v19 = sub_26497FAB8();
    (*(v1 + 16))(v6, v19, v0);
    v20 = v18;
    v21 = sub_264982644();
    v22 = sub_264982914();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_26490B000, v21, v22, "Failed to set audio session properties: %@", v23, 0xCu);
      sub_264976E40(v24, &qword_27FF86DF0, &qword_26498CF50);
      MEMORY[0x266746840](v24, -1, -1);
      MEMORY[0x266746840](v23, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v6, v0);
  }

  v27 = v8;
  sub_264982494();
  sub_2649824A4();

  v28 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t SCROBrailleUILiveSpeechManager.speak(_:)(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E20, &qword_26498D248);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_264982504();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = sub_264982474();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v13 = sub_264982464();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v16 = sub_2649824C4();
  v3[25] = v16;
  v17 = *(v16 - 8);
  v3[26] = v17;
  v18 = *(v17 + 64) + 15;
  v3[27] = swift_task_alloc();
  v19 = sub_264982524();
  v3[28] = v19;
  v20 = *(v19 - 8);
  v3[29] = v20;
  v21 = *(v20 + 64) + 15;
  v3[30] = swift_task_alloc();
  v22 = sub_264982664();
  v3[31] = v22;
  v23 = *(v22 - 8);
  v3[32] = v23;
  v24 = *(v23 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E28, &qword_26498D250) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2649802FC, 0, 0);
}

uint64_t sub_2649802FC()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  v2 = [objc_opt_self() currentLanguageCode];
  v3 = sub_264982784();
  v5 = v4;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 95;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 45;
  *(v0 + 56) = 0xE100000000000000;
  v27 = sub_264980D8C();
  v26 = MEMORY[0x277D837D0];
  sub_264982994();

  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  v8 = sub_264982774();
  v9 = [v7 liveSpeechVoiceIDForKeyboardID_];

  v10 = sub_264982784();
  v12 = v11;

  *(v0 + 296) = v10;
  *(v0 + 304) = v12;
  v13 = [v6 sharedInstance];
  v14 = sub_264982774();
  [v13 liveSpeechRateForKeyboardID_];
  *(v0 + 328) = v15;

  v16 = [v6 sharedInstance];
  v17 = sub_264982774();

  [v16 liveSpeechPitchForKeyboardID_];
  *(v0 + 332) = v18;

  *(v0 + 312) = sub_26497FBB8();
  v19 = MEMORY[0x277D70320];
  v20 = *(MEMORY[0x277D70320] + 4);
  v21 = *MEMORY[0x277D70320];
  v22 = swift_task_alloc();
  *(v0 + 320) = v22;
  *v22 = v0;
  v22[1] = sub_2649805BC;
  v23 = *(v0 + 288);
  v24 = *MEMORY[0x277D85DE8];

  return ((v21 + v19))(v23, v10, v12);
}

uint64_t sub_2649805BC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2649806FC, 0, 0);
}

uint64_t sub_2649806FC()
{
  v82 = v0;
  v81[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v66 = sub_26497FAB8();
  v65 = *(v3 + 16);
  v65(v2);

  v5 = sub_264982644();
  v6 = sub_264982924();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 332);
    v8 = *(v0 + 328);
    v10 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v81[0] = v15;
    *v14 = 136315650;
    v16 = sub_26496D81C(v10, v9, v81);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v8;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v7;
    _os_log_impl(&dword_26490B000, v5, v6, "Live Speech VoiceID = %s rate = %f pitch = %f", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266746840](v15, -1, -1);
    MEMORY[0x266746840](v14, -1, -1);
  }

  else
  {
    v17 = *(v0 + 304);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
  }

  v64 = *(v12 + 8);
  v64(v11, v13);
  v18 = *(v0 + 332);
  v19 = *(v0 + 328);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v68 = v28;
  v70 = *(v0 + 152);
  v30 = *(v0 + 136);
  v74 = *(v0 + 144);
  v76 = *(v0 + 128);
  v78 = *(v0 + 240);
  v31 = *(v0 + 88);
  v80 = *(v0 + 96);
  v32 = *(v0 + 80);
  LOBYTE(v81[0]) = 1;
  *v23 = v32;
  *(v23 + 8) = v31;
  *(v23 + 16) = v19;
  *(v23 + 20) = 0;
  *(v23 + 24) = v18;
  *(v23 + 28) = 0;
  *(v23 + 32) = 0;
  *(v23 + 36) = 1;
  (*(v22 + 104))(v23, *MEMORY[0x277D70338], v24);
  sub_264979998(v20, v21, &qword_27FF86E28, &qword_26498D250);
  (*(v27 + 104))(v25, *MEMORY[0x277D70198], v26);
  (*(v29 + 104))(v68, *MEMORY[0x277D701A0], v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E38, &qword_26498D258);
  v33 = *(v30 + 72);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26498D230;

  sub_2649824F4();
  sub_2649824E4();
  sub_2649824D4();
  *(v0 + 64) = v35;
  sub_264980DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86E48, &qword_26498D260);
  sub_264980E38();
  sub_2649829A4();
  sub_264982514();
  v79 = OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth;
  v36 = *(v80 + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth);
  v37 = sub_264982484();

  *(v0 + 72) = 0;
  LODWORD(v34) = [v37 setPreferredMicrophoneInjectionMode:1 error:v0 + 72];

  v38 = *(v0 + 72);
  if (v34)
  {
    v39 = v38;
  }

  else
  {
    v40 = *(v0 + 264);
    v41 = *(v0 + 248);
    v42 = v38;
    v43 = sub_264982384();

    swift_willThrow();
    (v65)(v40, v66, v41);
    v44 = v43;
    v45 = sub_264982644();
    v46 = sub_264982914();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v43;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_26490B000, v45, v46, "Failed to set microphone injection mode: %@", v47, 0xCu);
      sub_264976E40(v48, &qword_27FF86DF0, &qword_26498CF50);
      MEMORY[0x266746840](v48, -1, -1);
      MEMORY[0x266746840](v47, -1, -1);
    }

    else
    {
    }

    v51 = *(v0 + 256) + 8;
    v64(*(v0 + 264), *(v0 + 248));
  }

  v52 = *(v0 + 288);
  v67 = *(v0 + 280);
  v69 = *(v0 + 272);
  v54 = *(v0 + 232);
  v53 = *(v0 + 240);
  v55 = *(v0 + 224);
  v71 = *(v0 + 264);
  v72 = *(v0 + 216);
  v73 = *(v0 + 192);
  v75 = *(v0 + 168);
  v77 = *(v0 + 144);
  v57 = *(v0 + 112);
  v56 = *(v0 + 120);
  v58 = *(v0 + 96);
  v59 = *(v0 + 104);
  v60 = *(v80 + v79);
  sub_2649824B4();

  (*(v57 + 8))(v56, v59);
  [*(v58 + OBJC_IVAR___SCROBrailleUILiveSpeechManager_client) didSpeechEnd];
  (*(v54 + 8))(v53, v55);
  sub_264976E40(v52, &qword_27FF86E28, &qword_26498D250);

  v61 = *(v0 + 8);
  v62 = *MEMORY[0x277D85DE8];

  return v61();
}

unint64_t sub_264980D8C()
{
  result = qword_27FF86E30;
  if (!qword_27FF86E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E30);
  }

  return result;
}

unint64_t sub_264980DE0()
{
  result = qword_27FF86E40;
  if (!qword_27FF86E40)
  {
    sub_264982504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E40);
  }

  return result;
}

unint64_t sub_264980E38()
{
  result = qword_27FF86E50;
  if (!qword_27FF86E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF86E48, &qword_26498D260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86E50);
  }

  return result;
}

uint64_t sub_264981024(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_264982784();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2649810F8;

  return SCROBrailleUILiveSpeechManager.speak(_:)(v5, v7);
}

uint64_t sub_2649810F8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v4)
  {
    v7 = *(v1 + 24);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

void __swiftcall SCROBrailleUILiveSpeechManager.init()(SCROBrailleUILiveSpeechManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SCROBrailleUILiveSpeechManager()
{
  result = qword_27FF87850;
  if (!qword_27FF87850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87850);
  }

  return result;
}

uint64_t sub_26498138C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264979B70;

  return sub_264981024(v2, v3, v4);
}

void soft__AXSVoiceOverTouchSetTactileGraphicsDisplay_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplayAutoDetector.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

void libAccessibilityLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCROBrailleDisplayAutoDetector.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void libAccessibilityLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libAccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCROBrailleDisplayManager.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void _SCROXRegisterForCallback_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while registering for callback\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;
  objc_end_catch();
}

void _SCROXGetCallbacks_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while processing callback fetch\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;

  objc_end_catch();
}

void _SCROXGetValueForKey_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while getting value for key\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;
  objc_end_catch();
}

void _SCROXPerformAction_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  objc_begin_catch(a1);
  fwrite("Caught Exception while performing action\n", 0x29uLL, 1uLL, *MEMORY[0x277D85DF8]);
  *a3 = 1;
  objc_end_catch();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}