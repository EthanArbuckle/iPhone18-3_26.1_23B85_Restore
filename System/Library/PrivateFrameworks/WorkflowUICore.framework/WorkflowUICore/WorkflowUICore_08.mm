id sub_274B9E610()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_9_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_274B9E68C(char a1)
{
  type metadata accessor for LogStreamManager(0);
  sub_274B9E7C0(&qword_28098B890, type metadata accessor for LogStreamManager);
  sub_274BF2CE4();
  sub_274BF2D04();

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_9_0();
  [v2 setBool:a1 & 1 forKey:v3];

  if (a1)
  {

    sub_274B9E87C();
  }

  else
  {

    sub_274B9F068();
  }
}

uint64_t sub_274B9E7C0(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_274B9E808(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274B9E610() & 1;
  return sub_274B9E854;
}

void sub_274B9E87C()
{
  if (sub_274B9E610())
  {
    LOBYTE(v4) = 3;
    sub_274B9CB3C();
    v1 = [objc_opt_self() liveLocalStore];
    v7 = sub_274B9F1CC;
    v8 = v0;
    v3 = MEMORY[0x277D85DD0];
    v4 = 1107296256;
    v5 = sub_274B34890;
    v6 = &block_descriptor_14;
    v2 = _Block_copy(&v3);

    [v1 prepareWithCompletionHandler_];
    _Block_release(v2);
  }
}

void sub_274B9E984(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v5 = objc_allocWithZone(MEMORY[0x277D24420]);
    v6 = a1;
    v7 = [v5 initWithLiveSource_];
    [v7 setFlags_];
    sub_274AD8430(0, &qword_28098DA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_274BF8D80;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_274B12CA0();
    *(v8 + 32) = 0xD000000000000013;
    *(v8 + 40) = 0x8000000274C0C370;
    v9 = sub_274BF5464();
    [v7 setFilterPredicate_];

    v18 = sub_274BA0800;
    v19 = a3;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_274B9EC50;
    v17 = &block_descriptor_65;
    v10 = _Block_copy(&v14);

    [v7 setEventHandler_];
    _Block_release(v10);
    v18 = sub_274BA0804;
    v19 = a3;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_274B9EFF0;
    v17 = &block_descriptor_68;
    v11 = _Block_copy(&v14);

    [v7 setInvalidationHandler_];
    _Block_release(v11);

    v14 = v7;
    LOBYTE(v15) = 2;
    v12 = v7;
    sub_274B9CB3C();
    [v12 activate];
  }

  else
  {
    v13 = a2;
    sub_274B9CB3C();
  }
}

void sub_274B9EC50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_274B9ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274BF4C94();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_274BF4CD4();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274AD8430(0, &qword_280989F80);
  v11 = sub_274BF5504();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_274BA080C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_74_1;
  v13 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B9E7C0(&qword_280989F88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274AFA930(&qword_280989F98, &qword_280989F90);
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_274B9EFF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_274B9F068()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  v0 = v5;
  v1 = v6;
  if (v6 == 2)
  {
    v9 = CGSizeMake;
    v10 = 0;
    v5 = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v7 = sub_274B9EFF0;
    v8 = &block_descriptor_23;
    v2 = _Block_copy(&v5);
    v3 = v0;
    [v3 setInvalidationHandler_];
    _Block_release(v2);
    sub_274B03D34(v0, 2);
    [v3 invalidate];
    sub_274B9D5F4();
    sub_274B9DB14(0);
    sub_274B9DF94(0);
    v5 = 0;
    LOBYTE(v6) = 3;
    sub_274B9CB3C();
    v4 = v0;
    v1 = 2;
  }

  else
  {
    v4 = v5;
  }

  sub_274B03D34(v4, v1);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B9F1EC()
{
  OUTLINED_FUNCTION_14_3();
  swift_unknownObjectRetain();
  sub_274BF52E4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_274B9F274()
{
  OUTLINED_FUNCTION_14_3();
  sub_274BF52F4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_274B9F2E8(void *a1)
{
  v3 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 logType] != 17)
  {
    if ([a1 logType] != 16)
    {
      goto LABEL_7;
    }

    v19 = sub_274B9DF14();
    v17 = __OFADD__(v19, 1);
    result = v19 + 1;
    if (!v17)
    {
      sub_274B9DF94(result);
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v16 = sub_274B9DB00();
  v17 = __OFADD__(v16, 1);
  result = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_274B9DB14(result);
LABEL_7:
  v27 = v11;
  v28 = v9;
  type metadata accessor for LogStreamManager.LogEvent(0);
  swift_allocObject();
  v20 = sub_274B9CE0C(a1);
  v31 = sub_274B9D580();

  MEMORY[0x277C649C0](v21);
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_274BF5154();
  }

  sub_274BF5184();
  v22 = v31;
  v23 = sub_274B22B94(v31);
  v29 = v5;
  if (v23 >= 501)
  {
    v22 = sub_274B9F6EC(200, v22);
  }

  sub_274AD8430(0, &qword_280989F80);
  v24 = sub_274BF5504();
  v25 = swift_allocObject();
  v25[2] = v1;
  v25[3] = v22;
  v25[4] = v20;
  aBlock[4] = sub_274BA06C0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_62;
  v26 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B9E7C0(&qword_280989F88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274AFA930(&qword_280989F98, &qword_280989F90);
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v15, v8, v26);
  _Block_release(v26);

  (*(v29 + 8))(v8, v3);
  return (*(v27 + 8))(v15, v28);
}

uint64_t sub_274B9F6EC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {

      return MEMORY[0x277D84F90];
    }

    v14 = MEMORY[0x277D84F90];
    sub_274B22B94(a2);
    sub_274BF59F4();
    result = sub_274B22B94(a2);
    v4 = result;
    v5 = 0;
    v6 = 0;
    while (v4 != v6)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x277C65230](v6, a2);
        v7 = result;
      }

      else
      {
        if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v7 = *(a2 + 8 * v6 + 32);
      }

      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v8 = v14;
      if (*(v14 + 16) >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_274BC1A58(v14);
          v8 = result;
          v14 = result;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v5 >= *(v8 + 16))
        {
          goto LABEL_35;
        }

        *(v8 + 8 * v5 + 32) = v7;

        result = sub_274BF59D4();
        if ((v5 + 1) < v3)
        {
          ++v5;
        }

        else
        {
          v5 = 0;
        }

        ++v6;
      }

      else
      {
        sub_274BF59C4();
        sub_274BF5A14();
        sub_274BF5A24();
        result = sub_274BF59D4();
        ++v6;
      }
    }

    if (!v5)
    {
      return v14;
    }

    v13 = MEMORY[0x277D84F90];
    v9 = *(v14 + 16);
    result = sub_274BF59F4();
    if (v9 < v5)
    {
      goto LABEL_36;
    }

    v10 = *(v14 + 16);
    if (v10 >= v5 && v10 >= v9)
    {

      sub_274BA06CC(v12, v14 + 32, v5, (2 * v9) | 1);
      sub_274BA06CC(v14, v14 + 32, 0, (2 * v5) | 1);
      return v13;
    }
  }

  __break(1u);
  return result;
}

void sub_274B9F924(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_274B9D5F4();
  v4 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_274B04B04(*(v5 + 48) + 40 * (v13 | (v10 << 6)), &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30);
    if (swift_dynamicCast() && v28)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAF58();
        v11 = v17;
      }

      v14 = v11[2];
      v15 = v14 + 1;
      v16 = v28;
      if (v14 >= v11[3] >> 1)
      {
        v26 = v14 + 1;
        v18 = v11[2];
        sub_274BBAF58();
        v14 = v18;
        v16 = v28;
        v15 = v26;
        v11 = v19;
      }

      v11[2] = v15;
      *&v11[2 * v14 + 4] = v16;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v20 = 0;
      v21 = v11[2];
      v22 = v11 + 5;
      while (v21 != v20)
      {
        if (v20 >= v11[2])
        {
          goto LABEL_22;
        }

        ++v20;
        v23 = *v22;
        ObjectType = swift_getObjectType();
        v25 = *(v23 + 32);
        swift_unknownObjectRetain();
        v25(a1, a3, ObjectType, v23);
        swift_unknownObjectRelease();
        v22 += 2;
      }

      return;
    }

    v8 = *(v5 + 56 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t LogStreamManager.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F0);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__logs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F8);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__faultCount;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00);
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v8(v0 + OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__errorCount, v6);
  return v0;
}

uint64_t sub_274B9FCF4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

unint64_t sub_274B9FD54()
{
  result = qword_28098DA08;
  if (!qword_28098DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DA08);
  }

  return result;
}

uint64_t sub_274B9FE9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LogStreamManager(0);
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

void sub_274B9FF34()
{
  sub_274B8BF10(319, &qword_2815A3138);
  if (v0 <= 0x3F)
  {
    sub_274BA02E8();
    if (v1 <= 0x3F)
    {
      sub_274B8BF10(319, &qword_2815A3120);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_274BA02E8()
{
  if (!qword_2815A3130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DA28);
    v0 = sub_274BF2D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2815A3130);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore16LogStreamManagerC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_274BA0368(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274BA03A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_274BA03EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_274BA041C()
{
  result = sub_274BF2164();
  if (v1 <= 0x3F)
  {
    result = sub_274BF2114();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogStreamManager.LogEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LogStreamManager.LogEvent.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_274BA06CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    sub_274BF5A04();
    v7 = *v4;
    v11 = *(*v4 + 24) >> 1;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v11 - *(v7 + 16) < v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for LogStreamManager.LogEvent(0);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    v12 = *(v7 + 16);
    v13 = __OFADD__(v12, v6);
    v14 = v12 + v6;
    if (!v13)
    {
      *(v7 + 16) = v14;
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  swift_unknownObjectRelease();

  sub_274BF59D4();
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_274BF2D44();
}

uint64_t static LockedAppKey.defaultValue.setter(char a1)
{
  result = OUTLINED_FUNCTION_2_28();
  byte_28098DA58 = a1;
  return result;
}

uint64_t sub_274BA0910@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28098DA58;
  return result;
}

uint64_t sub_274BA095C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28098DA58 = v1;
  return result;
}

uint64_t sub_274BA09A4@<X0>(_BYTE *a1@<X8>)
{
  result = static LockedAppKey.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.isLockedByAppProtection.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274AE4740();
  sub_274BF3784();
  *(a1 + 16) = *(a1 + 17);
  return sub_274BA0A74;
}

char *sub_274BA0AAC()
{
  if (qword_2815A3878 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  return &byte_28098DA59;
}

uint64_t static LockedAppTrait.defaultValue.setter(char a1)
{
  if (qword_2815A3878 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  result = OUTLINED_FUNCTION_2_28();
  byte_28098DA59 = a1 & 1;
  return result;
}

uint64_t (*static LockedAppTrait.defaultValue.modify())()
{
  if (qword_2815A3878 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  OUTLINED_FUNCTION_3_23();
  return j_j__swift_endAccess_0;
}

uint64_t sub_274BA0BB0@<X0>(_BYTE *a1@<X8>)
{
  sub_274BA0AAC();
  result = swift_beginAccess();
  *a1 = byte_28098DA59;
  return result;
}

uint64_t sub_274BA0C00(char *a1)
{
  v1 = *a1;
  sub_274BA0AAC();
  result = swift_beginAccess();
  byte_28098DA59 = v1;
  return result;
}

uint64_t UITraitCollection.isLockedByAppProtection.getter()
{
  sub_274AE4854();

  return sub_274BF5564();
}

uint64_t UIMutableTraits.isLockedByAppProtection.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_274AE4854();

  return MEMORY[0x2821DCE10](&type metadata for LockedAppTrait, &type metadata for LockedAppTrait, v4, a1, a2);
}

uint64_t sub_274BA0CDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.isLockedByAppProtection.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t UIMutableTraits.isLockedByAppProtection.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274AE4854();

  return MEMORY[0x2821DCE18](a1, &type metadata for LockedAppTrait, &type metadata for LockedAppTrait, v6, a2, a3);
}

uint64_t (*UIMutableTraits.isLockedByAppProtection.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = UIMutableTraits.isLockedByAppProtection.getter(a2, a3) & 1;
  return sub_274BA0DFC;
}

uint64_t static LockedAppKey.write(to:value:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return UIMutableTraits.isLockedByAppProtection.setter(a2, v3, v4);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

_BYTE *sub_274BA0EDC(_BYTE *result, int a2, int a3)
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

void sub_274BA0F94()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_10_8();
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, 0x58uLL);
  v3 = v1[1];
  memcpy(v19, v3, 0x72uLL);
  memcpy(&__src[88], v3, 0x72uLL);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v4;
  v16 = *(v4 + 8);
  v7 = v16;
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v15 = *(v5 + 33);
  v12 = v15;
  v13 = *(v5 + 32);
  memcpy(v0, __src, 0xD0uLL);
  *(v0 + 208) = v6;
  *(v0 + 216) = v7;
  *(v0 + 224) = v8;
  *(v0 + 232) = v9;
  *(v0 + 240) = v10;
  *(v0 + 248) = v11;
  *(v0 + 256) = v13;
  *(v0 + 257) = v12;
  sub_274BA5CC0(__dst, v14, &qword_28098AED8);
  sub_274BA5CC0(v19, v14, &qword_28098AED0);
  sub_274AFA1E0(v8, v9, v10, v11, v13, v12);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BA10B4()
{
  OUTLINED_FUNCTION_10_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA08);
  OUTLINED_FUNCTION_2();
  (*(v3 + 16))(v0, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA00);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_13_11();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F8);
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_13_11();
  v8(v7);
  v9 = v4[20];
  v10 = v1[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F0);
  OUTLINED_FUNCTION_0_2();
  v28 = *(v12 + 16);
  v28(v0 + v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E8);
  OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_12_7();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E0);
  OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_12_7();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D8);
  OUTLINED_FUNCTION_2();
  v17 = OUTLINED_FUNCTION_12_7();
  v18(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D0);
  OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_12_7();
  v20(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C8);
  OUTLINED_FUNCTION_2();
  v21 = OUTLINED_FUNCTION_12_7();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C0);
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_12_7();
  v24(v23);
  v28(v0 + v4[48], v1[10], v11);
  v25 = v1[11];
  v26 = v0 + v4[52];

  return (v28)(v26, v25, v11);
}

uint64_t sub_274BA13E0()
{
  OUTLINED_FUNCTION_10_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBC0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 16))(v0, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB8);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_13_11();
  v6(v5);
  v7 = (v0 + v4[16]);
  v8 = v1[2];
  v10 = v8[3];
  v9 = v8[1];
  v57 = v8[2];
  v58 = v8[4];
  *v7 = *v8;
  v7[1] = v9;
  v7[2] = v57;
  v7[3] = v10;
  v7[4] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB0);
  OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_13_11();
  v12(v11);
  v13 = (v0 + v4[24]);
  v14 = v1[4];
  v15 = v1[5];
  v16 = v14[1];
  v17 = v14[3];
  v54 = v14[2];
  v56 = v14[4];
  *v13 = *v14;
  v13[1] = v16;
  v13[2] = v54;
  v13[3] = v17;
  v13[4] = v56;
  v18 = (v0 + v4[28]);
  v19 = v15[1];
  v20 = v15[3];
  v53 = v15[2];
  v55 = v15[4];
  *v18 = *v15;
  v18[1] = v19;
  v18[2] = v53;
  v18[3] = v20;
  v18[4] = v55;
  v21 = (v0 + v4[32]);
  v22 = v1[6];
  v23 = v1[7];
  v24 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v52 = v22[4];
  *v21 = *v22;
  v21[1] = v24;
  v21[2] = v26;
  v21[3] = v25;
  v21[4] = v52;
  v27 = (v0 + v4[36]);
  v28 = v23[1];
  v29 = v23[3];
  v49 = v23[2];
  v50 = v26;
  v51 = v23[4];
  *v27 = *v23;
  v27[1] = v28;
  v27[2] = v49;
  v27[3] = v29;
  v27[4] = v51;
  v30 = (v0 + v4[40]);
  v31 = v1[8];
  v32 = v1[9];
  v33 = v31[1];
  v35 = v31[2];
  v34 = v31[3];
  v36 = v31[4];
  *v30 = *v31;
  v30[1] = v33;
  v30[2] = v35;
  v30[3] = v34;
  v30[4] = v36;
  v37 = v4[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBA8);
  OUTLINED_FUNCTION_2();
  (*(v38 + 16))(v0 + v37, v32);
  sub_274BA5CC0(v1[10], v0 + v4[48], &qword_28098BBA0);
  v39 = v4[52];
  v40 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB98);
  OUTLINED_FUNCTION_2();
  (*(v41 + 16))(v0 + v39, v40);

  v42 = v57;

  v43 = v54;

  v44 = v53;

  v45 = v50;

  v46 = v49;

  v47 = v35;
}

uint64_t sub_274BA172C@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *v13;
  v16 = v13[1];
  v18 = v13[2];
  v17 = v13[3];
  v19 = v13[4];
  v20 = *v14;
  v21 = v14[1];
  v23 = v14[2];
  v22 = v14[3];
  v24 = v14[4];
  v25 = a1[4];
  v26 = *v25;
  v34 = v23;
  v35 = v25[1];
  v27 = v25[3];
  v36 = v25[4];
  v37 = v25[2];
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v11;
  a2[8] = v10;
  a2[9] = v12;
  a2[10] = v15;
  a2[11] = v16;
  a2[12] = v18;
  a2[13] = v17;
  a2[14] = v19;
  a2[15] = v20;
  a2[16] = v21;
  a2[17] = v23;
  a2[18] = v22;
  a2[19] = v24;
  a2[20] = v26;
  a2[21] = v35;
  a2[22] = v37;
  a2[23] = v27;
  a2[24] = v36;

  v28 = v6;

  v29 = v11;

  v30 = v18;

  v31 = v34;

  v32 = v37;
}

uint64_t sub_274BA186C()
{
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_21_3();
  memcpy(v2, v3, v4);
  OUTLINED_FUNCTION_21_3();
  memmove(v5, v6, v7);
  v8 = v1[1];
  memcpy(__dst, v8, 0x69uLL);
  memmove((v0 + 104), v8, 0x69uLL);
  v9 = v1[2];
  memcpy(v35, v9, 0x6AuLL);
  memmove((v0 + 216), v9, 0x6AuLL);
  v10 = v1[3];
  memcpy(v36, v10, sizeof(v36));
  memmove((v0 + 328), v10, 0x50uLL);
  OUTLINED_FUNCTION_21_3();
  memcpy(v11, v12, v13);
  OUTLINED_FUNCTION_21_3();
  memmove(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAF8);
  OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_13_11();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40);
  OUTLINED_FUNCTION_2();
  v20 = OUTLINED_FUNCTION_13_11();
  v21(v20);
  sub_274BA5CC0(v1[7], v0 + *(v17 + 144), &qword_28098BAF0);
  sub_274BA5CC0(v1[8], v0 + *(v17 + 160), &qword_28098BAE0);
  OUTLINED_FUNCTION_24_4();
  memcpy(v22, v23, v24);
  OUTLINED_FUNCTION_24_4();
  memmove(v25, v26, v27);
  OUTLINED_FUNCTION_11_12(v33, v28);
  sub_274BA5CC0(__dst, v32, &qword_28098BB20);
  sub_274BA5CC0(v35, v32, &qword_28098BB28);
  sub_274BA5CC0(v36, v32, &qword_28098BB30);
  OUTLINED_FUNCTION_11_12(v37, v29);
  return OUTLINED_FUNCTION_11_12(v38, v30);
}

uint64_t sub_274BA1AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40);
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_22_3();
  v5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB20);
  v7 = OUTLINED_FUNCTION_16_6(v6[12]);
  (v5)(v7);
  v8 = OUTLINED_FUNCTION_16_6(v6[16]);
  (v5)(v8);
  v9 = OUTLINED_FUNCTION_16_6(v6[20]);
  (v5)(v9);
  v10 = OUTLINED_FUNCTION_16_6(v6[24]);
  (v5)(v10);
  sub_274BA5CC0(*(a1 + 40), a2 + v6[28], &qword_28098BAC0);
  v11 = OUTLINED_FUNCTION_16_6(v6[32]);
  (v5)(v11);
  OUTLINED_FUNCTION_24_4();
  memcpy(v12, v13, v14);
  OUTLINED_FUNCTION_24_4();
  memmove(v15, v16, v17);
  return sub_274BA5CC0(v20, &v19, &qword_28098BAC8);
}

uint64_t sub_274BA1C2C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[3];
  v5 = *(*a1 + 16);
  v20 = v2[1];
  v21 = *v2;
  v7 = v2[3];
  v19 = v2[2];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v15 = *v9;
  v14 = v9[1];
  v16 = v9[2];
  v17 = v9[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  *(a2 + 56) = v7;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v14;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  sub_274AF396C(v4, v3, v5);

  sub_274B7ABEC(v21, v20, v19, v7);
  sub_274B7ABEC(v10, v11, v12, v13);

  return sub_274B7ABEC(v15, v14, v16, v17);
}

uint64_t sub_274BA1D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x58uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v5;
  v22 = *(v5 + 8);
  v8 = v22;
  v9 = v6[1];
  v18 = *v6;
  v19 = v7;
  v10 = v6[2];
  v11 = v6[3];
  v12 = *(a1 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  v16 = *(v12 + 24);
  v21 = *(v12 + 16);
  v15 = v21;
  memcpy(a2, v4, 0x58uLL);
  *(a2 + 88) = v19;
  *(a2 + 96) = v8;
  *(a2 + 104) = v18;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  *(a2 + 128) = v11;
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  sub_274BA5CC0(__dst, v20, &qword_28098BAA8);
  sub_274B7ABEC(v18, v9, v10, v11);
  sub_274AF396C(v13, v14, v15);
}

uint64_t sub_274BA1E28@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v22 = v14[3];
  v24 = a1[4];
  v23 = a1[5];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v29 = *v23;
  v30 = v23[1];
  v31 = v23[2];
  v33 = v23[3];
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v15;
  a2[9] = v16;
  a2[10] = v17;
  a2[11] = v18;
  a2[12] = v19;
  a2[13] = v20;
  a2[14] = v21;
  a2[15] = v22;
  a2[16] = v25;
  a2[17] = v26;
  a2[18] = v27;
  a2[19] = v28;
  a2[20] = v29;
  a2[21] = v30;
  a2[22] = v31;
  a2[23] = v33;
}

uint64_t sub_274BA1F48@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  *(v37 + 9) = *(*a1 + 41);
  v36[1] = v7;
  v37[0] = v6;
  v36[0] = v8;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  *(v43 + 9) = *(v4 + 41);
  v42 = v10;
  v43[0] = v11;
  v41 = v9;
  v12 = *v5;
  v35 = *(v5 + 8);
  v13 = a1[2];
  memcpy(__dst, v13, 0xBCuLL);
  memcpy(&__src[7], v13, 0xBCuLL);
  v14 = a1[3];
  v15 = a1[4];
  v16 = *v14;
  v33 = *(v14 + 8);
  v17 = *(v15 + 41);
  v18 = v15[2];
  v19 = *v15;
  v39[1] = v15[1];
  v40[0] = v18;
  *(v40 + 9) = v17;
  v39[0] = v19;
  v20 = *v15;
  v21 = v15[1];
  v22 = v15[2];
  *&v32[48] = *(v15 + 41);
  *&v32[39] = v22;
  *&v32[23] = v21;
  *&v32[7] = v20;
  LOBYTE(v14) = v35;
  LOBYTE(v13) = v33;
  v23 = v41;
  v24 = v42;
  v25 = v43[1];
  *(a2 + 32) = v43[0];
  *(a2 + 48) = v25;
  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  memcpy((a2 + 73), __src, 0xC3uLL);
  *(a2 + 272) = v16;
  *(a2 + 280) = v13;
  v26 = *&v32[16];
  *(a2 + 281) = *v32;
  *(a2 + 297) = v26;
  v27 = *&v32[48];
  *(a2 + 313) = *&v32[32];
  *(a2 + 329) = v27;
  OUTLINED_FUNCTION_11_12(v36, v28);
  sub_274BA5CC0(__dst, v31, &qword_28098DB08);
  return OUTLINED_FUNCTION_11_12(v39, v29);
}

uint64_t EnvironmentValues.debugStatistics.getter()
{
  sub_274B294FC();
  sub_274BF37A4();
  return v1;
}

uint64_t sub_274BA2110(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BA5224();
    v2 = v5;
  }

  v3 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v3;
  result = sub_274BA5238(v6);
  *a1 = v2;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_274BA21F0()
{
  OUTLINED_FUNCTION_58();
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v25 = v6;
  v8 = v7;
  v10 = v9;
  sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v29 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_7();
  sub_274B0F2B4();
  v28 = sub_274BF5504();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v10;
  v15[4] = v8;
  v15[5] = v25;
  v15[6] = v5;
  v30[4] = v26;
  v30[5] = v15;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  v30[2] = v16;
  v30[3] = v27;
  v17 = _Block_copy(v30);

  sub_274BF4CB4();
  v30[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_17();
  sub_274BA5128(v18, 255, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  OUTLINED_FUNCTION_3_24();
  sub_274AFA930(v20, v21);
  OUTLINED_FUNCTION_23_4();
  sub_274BF57F4();
  v22 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v22);
  _Block_release(v17);

  v23 = OUTLINED_FUNCTION_20_4();
  v24(v23);
  (*(v13 + 8))(v1, v29);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BA2454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v11, type metadata accessor for DebugStatistics);
  sub_274BF2CE4();
  sub_274BF2D04();

  sub_274BA35F0(a2, a3);
  sub_274BA2FEC(a4, a5, a6);
}

void sub_274BA253C()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v31 = v3;
  v7 = v6;
  v8 = v5;
  v9 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v33 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v32 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  sub_274B0F2B4();
  v29 = sub_274BF5504();
  v21 = swift_allocObject();
  v28 = v2;
  v21[2] = v0;
  v21[3] = v8;
  v21[4] = v7;
  v21[5] = v4;
  v21[6] = v2;
  v34[4] = sub_274BA5D2C;
  v34[5] = v21;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  v34[2] = v22;
  v34[3] = &block_descriptor_12_0;
  v23 = _Block_copy(v34);

  sub_274BF4CB4();
  v34[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_17();
  sub_274BA5128(v24, 255, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  OUTLINED_FUNCTION_3_24();
  sub_274AFA930(v26, v27);
  OUTLINED_FUNCTION_23_4();
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v20, v14, v23);
  _Block_release(v23);

  (*(v33 + 8))(v14, v9);
  (*(v16 + 8))(v20, v32);
  type metadata accessor for DebugStatistics.Handle();
  swift_allocObject();

  sub_274BA2C1C(v0, v30, v7, v31, v28);
  OUTLINED_FUNCTION_55();
}

uint64_t objectdestroyTm_12()
{

  return swift_deallocObject();
}

void sub_274BA28B0()
{
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v8;
  v10 = v9;
  v12 = v11;
  sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v28 = v15;
  v29 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_7();
  sub_274B0F2B4();
  v27 = sub_274BF5504();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v12;
  v16[4] = v10;
  v16[5] = v5;
  v16[6] = v3;
  v16[7] = v26;
  v16[8] = v7;
  v30[4] = sub_274BA2C4C;
  v30[5] = v16;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  v30[2] = v17;
  v30[3] = &block_descriptor_18_0;
  v18 = _Block_copy(v30);

  sub_274BF4CB4();
  v30[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_17();
  sub_274BA5128(v19, 255, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  OUTLINED_FUNCTION_3_24();
  sub_274AFA930(v21, v22);
  OUTLINED_FUNCTION_23_4();
  sub_274BF57F4();
  v23 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v23);
  _Block_release(v18);

  v24 = OUTLINED_FUNCTION_20_4();
  v25(v24);
  (*(v28 + 8))(v1, v29);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BA2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v13, type metadata accessor for DebugStatistics);
  sub_274BF2CE4();
  sub_274BF2D04();

  sub_274BA35F0(a2, a3);
  sub_274BA3280(a4, a5, a6, a7);
}

uint64_t sub_274BA2C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = CFAbsoluteTimeGetCurrent();
  return v5;
}

uint64_t DebugStatistics.Handle.deinit()
{
  sub_274BA2CC8();

  return v0;
}

uint64_t DebugStatistics.Handle.__deallocating_deinit()
{
  DebugStatistics.Handle.deinit();

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

void sub_274BA2CC8()
{
  OUTLINED_FUNCTION_58();
  v2 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_7();
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  if ((*(v0 + 64) & 1) == 0)
  {
    v19 = v8;
    v20 = v7;
    sub_274B0F2B4();
    v18 = sub_274BF5504();
    v21[4] = sub_274BA2FE4;
    v21[5] = v0;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
    v21[2] = v12;
    v21[3] = &block_descriptor_21_0;
    v13 = _Block_copy(v21);

    sub_274BF4CB4();
    v21[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_17();
    sub_274BA5128(v14, 255, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
    OUTLINED_FUNCTION_3_24();
    sub_274AFA930(v16, v17);
    OUTLINED_FUNCTION_23_4();
    sub_274BF57F4();
    MEMORY[0x277C64DC0](0, v11, v1, v13);
    _Block_release(v13);

    (*(v4 + 8))(v1, v2);
    (*(v19 + 8))(v11, v20);
    *(v0 + 64) = 1;
  }

  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BA2F18(uint64_t a1)
{
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v2, type metadata accessor for DebugStatistics);
  sub_274BF2CE4();
  sub_274BF2D04();

  v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
  sub_274BA35F0(*(a1 + 24), *(a1 + 32));
  sub_274BA3134(*(a1 + 40), *(a1 + 48), v3);
}

uint64_t sub_274BA2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);

  v9 = sub_274B06AFC(a1, a2, v8);
  v11 = v10;

  if (v11)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + 24);
    sub_274B31D94();
    *(v4 + 24) = v13;
    swift_endAccess();
    return sub_274BA33E4(a1, a2);
  }

  else if (__OFADD__(v9, a3))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 24);
    sub_274B31D94();
    *(v4 + 24) = v14;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_274BA3134(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 40);

  v9 = sub_274B06B50(a1, a2, v8);

  if (!v9)
  {
    v9 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBB9C4(0, *(v9 + 16) + 1, 1, v9);
    v9 = v13;
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_274BBB9C4(v10 > 1, v11 + 1, 1, v9);
    v9 = v14;
  }

  *(v9 + 16) = v11 + 1;
  *(v9 + 8 * v11 + 32) = a3;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 40);
  sub_274B31F84();
  *(v4 + 40) = v15;
  return swift_endAccess();
}

uint64_t sub_274BA3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (a2)
  {

    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 32);
    sub_274B31E58();
    *(v4 + 32) = v10;
    swift_endAccess();
    return sub_274BA33E4(a3, a4);
  }

  else
  {
    sub_274BDA830(a3, a4);
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v4 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B690);
      sub_274BF5A74();

      sub_274BF5A84();
      *(v4 + 32) = v11;
    }

    return swift_endAccess();
  }
}

uint64_t sub_274BA33E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v13[0] = a1;
  v13[1] = a2;
  v12[2] = v13;

  v7 = sub_274BD7A58(sub_274BA5B04, v12, v6);

  if (!v7)
  {
    swift_beginAccess();

    sub_274B478A0();
    v9 = *(*(v3 + 16) + 16);
    sub_274B03ED8(v9);
    v10 = *(v3 + 16);
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v3 + 16) = v10;
    sub_274BA2110((v3 + 16));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_274BA34E4()
{

  return v0;
}

uint64_t sub_274BA351C()
{
  v0 = sub_274BA34E4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_274BA354C()
{
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = sub_274BF4E14();
  v0[4] = sub_274BF4E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB10);
  v0[5] = sub_274BF4E14();
  return v0;
}

void *sub_274BA35F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_274BDA830(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for DebugStatistics.StatisticTable();
    swift_allocObject();
    v9 = sub_274BA354C();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 24);
    OUTLINED_FUNCTION_22_3();
    sub_274B31CBC();
    *(v3 + 24) = v14;
    swift_endAccess();
    swift_beginAccess();

    sub_274B478A0();
    v10 = *(*(v3 + 16) + 16);
    sub_274B03ED8(v10);
    v11 = *(v3 + 16);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 16 * v10;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v3 + 16) = v11;
    sub_274BA2110((v3 + 16));
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t DebugStatistics.deinit()
{

  return v0;
}

uint64_t DebugStatistics.__deallocating_deinit()
{
  DebugStatistics.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_274BA37C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugStatistics();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

void View.debugStatisticsOverlay(enabled:)()
{
  OUTLINED_FUNCTION_58();
  v45 = v0;
  v2 = v1;
  v4 = v3;
  v44 = v5;
  v48 = v6;
  v7 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-v11];
  v13 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v43[-v18];
  OUTLINED_FUNCTION_11_0();
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v46 = v21;
  v47 = v20;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43[-v23];
  if (v44)
  {
    v51[0] = sub_274BA3D00;
    v51[1] = 0;
    v52 = 0;
    MEMORY[0x277C63D20](v51, v4, &type metadata for DebugStatisticsOverlayModifier, v2, v22);
    v25 = sub_274BA3B7C();
    v49 = v2;
    v50 = v25;
    OUTLINED_FUNCTION_11_10();
    WitnessTable = swift_getWitnessTable();
    v27 = OUTLINED_FUNCTION_19_7();
    sub_274ADB48C(v27, v28, WitnessTable);
    v29 = *(v15 + 8);
    v30 = OUTLINED_FUNCTION_19_7();
    v29(v30);
    sub_274ADB48C(v19, v13, WitnessTable);
    OUTLINED_FUNCTION_19_7();
    sub_274ADB9A0();
    v31 = OUTLINED_FUNCTION_19_7();
    v29(v31);
    (v29)(v19, v13);
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    sub_274ADB48C(v32, v33, v34);
    OUTLINED_FUNCTION_22_3();
    sub_274ADB48C(v35, v36, v37);
    v38 = sub_274BA3B7C();
    v57 = v2;
    v58 = v38;
    OUTLINED_FUNCTION_11_10();
    swift_getWitnessTable();
    sub_274B2CC88();
    v39 = *(v7 + 8);
    v39(v9, v4);
    v39(v12, v4);
  }

  v40 = sub_274BA3B7C();
  v55 = v2;
  v56 = v40;
  OUTLINED_FUNCTION_11_10();
  v53 = swift_getWitnessTable();
  v54 = v2;
  OUTLINED_FUNCTION_3_0();
  v41 = v47;
  v42 = swift_getWitnessTable();
  sub_274ADB48C(v24, v41, v42);
  (*(v46 + 8))(v24, v41);
  OUTLINED_FUNCTION_55();
}

unint64_t sub_274BA3B7C()
{
  result = qword_28098DA60;
  if (!qword_28098DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DA60);
  }

  return result;
}

uint64_t (*EnvironmentValues.debugStatistics.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_274B294FC();
  sub_274BF37A4();
  return sub_274BA3C6C;
}

uint64_t sub_274BA3C6C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_274BF37B4();
  }

  sub_274BF37B4();
}

uint64_t sub_274BA3D00()
{
  type metadata accessor for DebugStatistics();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for DebugStatistics.StatisticTable();
  *(v0 + 24) = sub_274BF4E14();
  return v0;
}

uint64_t sub_274BA3EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274BA3EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_274BA3F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a5;
  v9 = sub_274BF3904();
  v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA68) + 36);
  *v10 = v9;
  *(v10 + 8) = 0x4014000000000000;
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA70);
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v11, type metadata accessor for DebugStatistics);
  sub_274BF2F94();
  swift_beginAccess();

  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  sub_274BA517C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA80);
  sub_274AFA930(&qword_28098DA88, &qword_280989650);
  sub_274AFA930(&qword_28098DA90, &qword_28098DA80);
  sub_274BF4944();
  LOBYTE(v8) = sub_274BF3E44();
  sub_274BF2E54();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA98) + 36);
  *v21 = v8;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  sub_274BF4644();
  v22 = sub_274BF4634();

  LOBYTE(v8) = sub_274BF3E44();
  v23 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAA0) + 36);
  *v23 = v22;
  *(v23 + 8) = v8;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAA8) + 36)) = 0;
  v24 = sub_274BF4A74();
  v26 = v25;
  v27 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAB0) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAB8);
  (*(*(v28 - 8) + 16))(a5, a1, v28);
  KeyPath = swift_getKeyPath();
  v30 = sub_274BF2F94();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAC0);
  v32 = (a5 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  return result;
}

uint64_t sub_274BA432C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = sub_274BF3904();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAC8);
  return sub_274BA43AC(v3, v4, a2 + *(v5 + 44));
}

uint64_t sub_274BA43AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAD0);
  MEMORY[0x28223BE20](v47);
  v7 = v37 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAD8);
  MEMORY[0x28223BE20](v44);
  v46 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v37 - v12;
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v14, type metadata accessor for DebugStatistics);
  sub_274BF2F94();
  v15 = sub_274BA35F0(a1, a2);

  swift_beginAccess();
  if (*(v15[2] + 16))
  {
    v42 = sub_274BF3EF4();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v42);

    sub_274BF3F44();
    sub_274AFA708(v13, &qword_280989DC0);
    v16 = sub_274BF40D4();
    v43 = a3;
    v18 = v17;
    v20 = v19;

    sub_274BF3F04();
    v21 = sub_274BF4074();
    v38 = v22;
    v39 = v21;
    v40 = v23;
    v41 = v24;
    sub_274AFA1D0(v16, v18, v20 & 1);

    v48 = v15[2];
    v37[1] = swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAE0);
    v25 = v7;
    sub_274AFA930(&qword_28098DA88, &qword_280989650);
    sub_274AFA930(&qword_28098DAE8, &qword_28098DAE0);
    v26 = v45;
    sub_274BF4944();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v42);
    v27 = sub_274BF3F44();
    sub_274AFA708(v13, &qword_280989DC0);
    KeyPath = swift_getKeyPath();
    v29 = (v26 + *(v44 + 36));
    *v29 = KeyPath;
    v29[1] = v27;
    v30 = v46;
    sub_274BA5CC0(v26, v46, &qword_28098DAD8);
    v31 = v38;
    v32 = v39;
    *v25 = v39;
    *(v25 + 8) = v31;
    LOBYTE(v18) = v40 & 1;
    *(v25 + 16) = v40 & 1;
    *(v25 + 24) = v41;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAF0);
    sub_274BA5CC0(v30, v25 + *(v33 + 48), &qword_28098DAD8);
    sub_274AF396C(v32, v31, v18);

    sub_274AFA708(v26, &qword_28098DAD8);
    sub_274AFA708(v30, &qword_28098DAD8);
    v34 = v18;
    a3 = v43;
    sub_274AFA1D0(v32, v31, v34);

    sub_274BA518C(v25, a3);
    v35 = 0;
  }

  else
  {

    v35 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v35, 1, v47);
}

void *sub_274BA48FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_274BF3804();
  v13 = 0;
  sub_274BA49E4(v5, v6, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_274BA5CC0(__dst, &v10, &qword_28098DAF8);
  sub_274AFA708(v15, &qword_28098DAF8);
  memcpy(&v12[7], __dst, 0x80uLL);
  v8 = v13;
  *a3 = v7;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = v8;
  return memcpy((a3 + 17), v12, 0x87uLL);
}

uint64_t sub_274BA49E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_274BF3894();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  sub_274BF3884();
  sub_274BF3874();
  sub_274BF3864();
  sub_274BF3874();
  sub_274BF38B4();
  v9 = sub_274BF40E4();
  v11 = v10;
  v13 = v12;
  sub_274BF3F34();
  v63 = sub_274BF4074();
  v62 = v14;
  v61 = v15;
  v64 = v16;
  sub_274AFA1D0(v9, v11, v13 & 1);

  swift_beginAccess();
  v17 = a3[4];

  v60 = sub_274B06B9C(a1, a2, v17);
  v19 = v18;

  swift_beginAccess();
  v20 = a3[3];
  v65 = v19;

  v21 = sub_274B06AFC(a1, a2, v20);
  v23 = v22;

  v24 = 0;
  v25 = 0;
  v67 = 0;
  v26 = 0;
  if ((v23 & 1) == 0)
  {
    sub_274BF3884();
    sub_274BF3874();
    v84[0] = v21;
    sub_274BF3854();
    sub_274BF3874();
    sub_274BF38B4();
    v24 = sub_274BF40E4();
    v25 = v27;
    v26 = v28;
    v67 = v29 & 1;
    sub_274AF396C(v24, v27, v29 & 1);
  }

  v30 = v26;
  swift_beginAccess();
  v31 = a3[5];

  v32 = sub_274B06B50(a1, a2, v31);

  v33 = v25;
  if (v32)
  {
    v34 = *(v32 + 16);
    v35 = 0.0;
    if (v34)
    {
      v36 = (v32 + 32);
      v37 = *(v32 + 16);
      do
      {
        v38 = *v36++;
        v35 = v35 + v38;
        --v37;
      }

      while (v37);
    }

    v39 = v24;
    v40 = v35 / v34;
    sub_274BF3884();
    sub_274BF3874();
    v84[0] = *&v40;
    sub_274BF3854();
    sub_274BF3874();
    v41 = COERCE_DOUBLE(sub_274BA5094(v32));
    if (v42)
    {
      v41 = 0.0;
    }

    v84[0] = *&v41;
    sub_274BF3854();
    sub_274BF3874();
    *&v43 = COERCE_DOUBLE(sub_274BA50D8(v32));
    v45 = v44;

    v46 = *&v43;
    if (v45)
    {
      v46 = 0.0;
    }

    v84[0] = *&v46;
    sub_274BF3854();
    sub_274BF3874();
    sub_274BF38B4();
    v47 = sub_274BF40E4();
    v49 = v48;
    v51 = v47;
    v53 = v52;
    v54 = v50 & 1;
    sub_274AF396C(v47, v52, v50 & 1);
    v55 = v49;
  }

  else
  {
    v39 = v24;
    v51 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  if (v65)
  {
    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = 0;
  }

  v59 = v56;
  if (v65)
  {
    v57 = v60;
  }

  else
  {
    v57 = 0;
  }

  v80 = v63;
  v81 = v62;
  v82 = v61 & 1;
  v83 = v64;
  v76 = v57;
  v77 = v65;
  v78 = 0;
  v79 = v56;
  v84[0] = &v80;
  v84[1] = &v76;
  v72 = v39;
  v73 = v33;
  v74 = v67;
  v75 = v30;
  v68 = v51;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v84[2] = &v72;
  v84[3] = &v68;
  sub_274BA1C2C(v84, a4);
  sub_274B7AD64(v39, v33, v67, v30);
  sub_274B7AD64(v57, v65, 0, v59);
  sub_274B7AD64(v51, v53, v54, v55);
  sub_274B7AD64(v68, v69, v70, v71);
  sub_274B7AD64(v72, v73, v74, v75);
  sub_274B7AD64(v76, v77, v78, v79);
  sub_274AFA1D0(v80, v81, v82);
}

uint64_t sub_274BA5094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_274BA50D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_274BA5128(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_274BA518C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274BA5238(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274BA532C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274B6503C(0, v2, 1, a1);
  }

  return result;
}

void sub_274BA532C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_274BF5C24();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_274BF5C24()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_274BF5C24() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_274BBB338(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_274BA5960((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_274BA5834(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_274BA5834(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274BA5960((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274BA5960(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_274AEF52C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_274BF5C24() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_274AEF52C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_274BF5C24() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

unint64_t sub_274BA5B24()
{
  result = qword_28098DB38;
  if (!qword_28098DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DAC0);
    sub_274BA5BDC();
    sub_274AFA930(&qword_28098DB58, qword_28098DB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DB38);
  }

  return result;
}

unint64_t sub_274BA5BDC()
{
  result = qword_28098DB40;
  if (!qword_28098DB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DA68);
    sub_274AFA930(&qword_28098DB48, &qword_28098DAB8);
    sub_274AFA930(&qword_28098DB50, &qword_28098DAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DB40);
  }

  return result;
}

uint64_t sub_274BA5CC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274BA5D58()
{
  v1 = sub_274BF3774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_274BF54A4();
    v6 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void *AttributedTextField.placeholder.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_274BA5F10()
{
  type metadata accessor for AttributedTextFieldTransitionCoordinator();
  sub_274BA8F90();

  return sub_274BF3264();
}

uint64_t AttributedTextField.init(editingSession:placeholder:isSecure:keyboardType:autocapitalizationType:isBorderless:isRinglessOnFocus:isClear:padding:focusImmediatelyWhenPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 73) = a7;
  *(a9 + 57) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;

  result = sub_274BA5F10();
  *(a9 + 80) = result;
  *(a9 + 88) = v22;
  return result;
}

uint64_t AttributedTextField.body.getter()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 88);

  v8 = sub_274B4738C();

  if (v8)
  {
    *__src = *v1;
    *&__src[16] = v3;
    *&__src[24] = v2;
    __src[32] = v4;
    *&__src[33] = *(v1 + 33);
    *&__src[36] = *(v1 + 36);
    *&__src[40] = v6;
    *&__src[48] = v5;
    *&__src[56] = *(v1 + 56);
    *&__src[72] = *(v1 + 72);
    v50 = v7;

    v9 = sub_274BA5D58();
    v10 = v2;
    v11 = v6;
    v12 = WFAutocapitalizationTypeFromString(v5);
    sub_274B234F0((v9 & 1) == 0, v2, 0, v11, v12, __src, 1.0, 10.0, 0.0, 10.0, 0.0);
    OUTLINED_FUNCTION_3_25();
    v13 = type metadata accessor for UIKitTextEditor();
    OUTLINED_FUNCTION_1_26();
    WitnessTable = swift_getWitnessTable();
    v15 = OUTLINED_FUNCTION_4_20();
    sub_274ADB48C(v15, v16, v17);
    v18 = *(*(v13 - 8) + 8);
    v18(__src, v13);
    sub_274ADB48C(v38, v13, WitnessTable);
    OUTLINED_FUNCTION_3_25();
    type metadata accessor for UIKitTextFieldHost();
    OUTLINED_FUNCTION_0_28();
    swift_getWitnessTable();
    sub_274ADB9A0();
    v18(v37, v13);
    v18(v38, v13);
  }

  else
  {
    v19 = v2;
    v20 = v6;

    v21 = WFAutocapitalizationTypeFromString(v5);
    sub_274BA64B0(v2, v4 & 1, v20, v21, __src);
    OUTLINED_FUNCTION_3_25();
    v22 = type metadata accessor for UIKitTextFieldHost();
    OUTLINED_FUNCTION_0_28();
    swift_getWitnessTable();
    v23 = OUTLINED_FUNCTION_4_20();
    sub_274ADB48C(v23, v24, v25);
    memcpy(__dst, __src, 0x49uLL);
    v26 = *(v22 - 8);
    v27 = *(v26 + 8);
    v27(__dst, v22);
    memcpy(v45, v43, 0x49uLL);
    memcpy(__src, v43, 0x49uLL);
    v28 = OUTLINED_FUNCTION_4_20();
    sub_274ADB48C(v28, v29, v30);
    memcpy(v46, __src, 0x49uLL);
    v31 = *(v26 + 16);
    v31(v38, v45, v22);
    v27(v46, v22);
    memcpy(v47, v42, 0x49uLL);
    memcpy(v41, v42, sizeof(v41));
    v31(__src, v47, v22);
    OUTLINED_FUNCTION_3_25();
    type metadata accessor for UIKitTextEditor();
    OUTLINED_FUNCTION_1_26();
    swift_getWitnessTable();
    sub_274B2CC88();
    memcpy(v48, v41, 0x49uLL);
    v27(v48, v22);
    memcpy(v37, v42, 0x49uLL);
    v27(v37, v22);
    memcpy(v38, v43, 0x49uLL);
    v27(v38, v22);
  }

  type metadata accessor for UIKitTextEditor();
  type metadata accessor for UIKitTextFieldHost();
  v32 = sub_274BF3A74();
  OUTLINED_FUNCTION_1_26();
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_28();
  v34 = swift_getWitnessTable();
  v39 = v33;
  v40 = v34;
  OUTLINED_FUNCTION_3_0();
  v35 = swift_getWitnessTable();
  sub_274ADB48C(__src, v32, v35);
  return (*(*(v32 - 8) + 8))(__src, v32);
}

void sub_274BA64B0(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v24 = 0;
  v9 = swift_getKeyPath();
  v23 = 0;

  v10 = sub_274BA6640();
  v12 = v11;
  sub_274B44B6C(&v22);
  v13 = *(&v22 + 1);
  if (*(&v22 + 1) == 2)
  {
    v14 = sub_274B44AE4();
    v15 = [v14 length];

    v16 = 100;
    if (v15 < 101)
    {
      v16 = 0;
    }

    *&v22 = v16;
    *(&v22 + 1) = v15 < 101;
    sub_274B44B78(&v22);
  }

  else
  {
    v17 = v22;

    sub_274B295B0(v17, v13);
  }

  v18 = v24;
  v19 = v23;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = KeyPath;
  *(a5 + 56) = v18;
  *(a5 + 64) = v9;
  *(a5 + 72) = v19;
}

uint64_t sub_274BA6640()
{
  type metadata accessor for AttributedTextEditingSession();
  swift_getWitnessTable();

  return sub_274BF3264();
}

uint64_t sub_274BA66D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_274BA6798()
{
  type metadata accessor for UIKitTextField();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_getWitnessTable();
  sub_274BF3CF4();
  sub_274BF3CD4();
  [v0 setDelegate_];

  sub_274BF3CD4();
  v1 = v0;
  sub_274BA7618(v0);

  sub_274BF3CD4();
  [v1 addTarget:v3 action:sel_textChanged_ forControlEvents:0x20000];

  return v1;
}

void sub_274BA68C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a1;
  v6 = sub_274BF33A4();
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF3774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  swift_getWitnessTable();
  sub_274BF3CF4();
  sub_274BF3CD4();
  v14 = v92;
  (*(*(a3 - 8) + 16))(&v90, v4, a3);
  sub_274BA738C(v4);

  sub_274BF3CD4();
  v15 = v90;
  sub_274BF3CE4();
  v83 = sub_274B29550();
  sub_274BF37A4();
  v84 = v9;
  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_274BA752C(v92);

  sub_274BF3CD4();
  v17 = v90;
  sub_274BF3CE4();
  v18 = sub_274B82DD8();
  v20 = v19;
  v16(v13, v8);
  sub_274BA7588(v18, v20);

  sub_274BF3CD4();
  v21 = v90;
  sub_274BF3CE4();
  v22 = sub_274BE454C();
  v24 = v23;
  v86 = v9 + 8;
  v16(v13, v8);
  v25 = v8;
  v26 = v82;
  sub_274BA75E8(v22, v24);

  sub_274BF3CE4();
  v27 = v4[1];

  v28 = sub_274B45030();
  [v26 setFont_];

  v29 = sub_274B451DC();
  [v26 setTextColor_];

  v87 = v4;
  [v26 setAttributedPlaceholder_];
  v88 = v27;
  v30 = sub_274B44AB0();
  sub_274BF3CD4();
  v31 = v90;
  v32 = sub_274BA7424();

  if ((v32 & 0x100000000) != 0 || v30 != v32)
  {
    v80 = v16;
    v81 = v25;
    sub_274B44B6C(&v90);
    v33 = v90;
    v34 = v91;
    v78 = v90;
    if (v91 == 2)
    {
      v33 = 0;
    }

    v79 = v91;
    if (v91 == 2)
    {
      v34 = 1;
    }

    v90 = v33;
    v91 = v34;
    v35 = sub_274B44AE4();
    v36.super.isa = TextEditorContentDisplayStyle.style(_:)(v35).super.isa;

    v37 = [v26 attributedText];
    if (v37)
    {
      v38 = v37;
      isa = v36.super.isa;
      v40 = [v37 string];

      v41 = sub_274BF4F44();
      v43 = v42;

      v36.super.isa = isa;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = v36.super.isa;
    v45 = [(objc_class *)v36.super.isa string];
    v46 = sub_274BF4F44();
    v48 = v47;

    if (v43)
    {
      if (v41 == v46 && v43 == v48)
      {

        goto LABEL_20;
      }

      v50 = sub_274BF5C24();

      if (v50)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    [v26 setAttributedText_];
LABEL_20:
    sub_274BF3CD4();
    sub_274B295B0(v78, v79);

    v51 = v90;
    v52 = sub_274B44AB0();
    v53 = &v51[qword_28098DBF8];
    *v53 = v52;
    v53[4] = 0;

    v25 = v81;
    v16 = v80;
  }

  v54 = v87;
  LOBYTE(v91) = *(v87 + 56);
  v55 = v87[6];
  v90 = v55;
  if (v91 != 1)
  {

    sub_274BF54A4();
    v57 = sub_274BF3DF4();
    sub_274BF2BC4();

    v54 = v87;
    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274B0671C(&v90, &qword_28098DE18);
    v16(v13, v25);
    LOBYTE(v55) = v92;
  }

  v56 = v89;
  [v26 setEnabled_];
  (*(v84 + 16))(v13, v56, v25);
  v58 = sub_274BF3684();
  v59 = v85;
  sub_274BF3564();
  v60 = NSTextAlignment.init(alignment:layoutDirection:)(v58, v59);
  v16(v13, v25);
  [v26 setTextAlignment_];
  [v26 setKeyboardType_];
  [v26 setSecureTextEntry_];
  [v26 setReturnKeyType_];
  sub_274BF37A4();
  v61 = v16;
  if (v92)
  {

    v62 = 1;
  }

  else
  {
    v63 = sub_274BF3664();
    if (v63 == 2)
    {
      v62 = 0;
    }

    else
    {
      v62 = v63 & 1;
    }
  }

  [v26 setAutocorrectionType_];
  [v26 setAutocapitalizationType_];
  sub_274B295D0();
  sub_274BF37A4();
  [v26 setSmartQuotesType_];
  sub_274B29624();
  sub_274BF37A4();
  [v26 setSmartDashesType_];

  sub_274BA85A0();
  v64 = sub_274B45BCC();
  if (v66)
  {

    v67 = sub_274B475AC(0);
    v69 = v68;
    v71 = v70;

    if (v71)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v67 = v64;
    v69 = v65;
  }

  v72 = [v26 beginningOfDocument];
  v73 = [v26 positionFromPosition:v72 offset:v67];

  if (v73)
  {
    v74 = [v26 positionFromPosition:v73 offset:v69];
    if (!v74)
    {
      v61(v56, v25);
      goto LABEL_37;
    }

    v75 = v74;
    v76 = [v26 textRangeFromPosition:v73 toPosition:v74];
    [v26 setSelectedTextRange_];

    if ([v26 isFirstResponder])
    {
      v61(v56, v25);

LABEL_37:
      return;
    }

    [v26 becomeFirstResponder];
  }

LABEL_39:
  v61(v56, v25);
}

id sub_274BA720C(uint64_t a1)
{
  type metadata accessor for UIKitTextFieldHost.Coordinator();
  (*(*(a1 - 8) + 16))(&v4, v1, a1);
  return sub_274BA728C(v1);
}

void *sub_274BA72C0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + qword_28098DBF0), 0x49uLL);
  v3 = type metadata accessor for UIKitTextFieldHost();
  (*(*(v3 - 8) + 16))(&v5, __dst, v3);
  return memcpy(a1, __dst, 0x49uLL);
}

uint64_t sub_274BA738C(void *__src)
{
  v3 = v1 + qword_28098DBF0;
  v4 = *(v1 + qword_28098DBF0 + 16);
  v5 = *(v1 + qword_28098DBF0 + 32);
  v6 = *(v1 + qword_28098DBF0 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  memcpy(v3, __src, 0x49uLL);

  sub_274AEF5C0(v6, v7);

  return sub_274AEF5C0(v8, v9);
}

uint64_t sub_274BA7450(uint64_t result)
{
  v2 = v1 + qword_28098DBF8;
  *v2 = result;
  *(v2 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_274BA746C()
{
  v1 = *(v0 + qword_28098DC00);
  v2 = v1;
  return v1;
}

void sub_274BA749C(uint64_t a1)
{
  v2 = *(v1 + qword_28098DC00);
  *(v1 + qword_28098DC00) = a1;
}

void sub_274BA74B0()
{
  v0 = sub_274BA746C();
  if (v0)
  {
    v2 = v0;

    sub_274B70F90(v1);
  }
}

uint64_t sub_274BA752C(uint64_t a1)
{
  *(v1 + qword_28098DC08) = a1;

  sub_274BA74B0();
}

uint64_t sub_274BA7588(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_28098DC10);
  v4 = *(v2 + qword_28098DC10);
  *v3 = a1;
  v3[1] = a2;
  return sub_274AD81C4(v4);
}

uint64_t sub_274BA75A8()
{
  v1 = *(v0 + qword_28098DC18);
  sub_274B2A090(v1, *(v0 + qword_28098DC18 + 8));
  return v1;
}

uint64_t sub_274BA75E8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_28098DC18);
  v4 = *(v2 + qword_28098DC18);
  *v3 = a1;
  v3[1] = a2;
  return sub_274AD81C4(v4);
}

void sub_274BA7618(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_274BA7660(const void *a1)
{
  v3 = &v1[qword_28098DBF8];
  *v3 = 0;
  v3[4] = 1;
  *&v1[qword_28098DC00] = 0;
  *&v1[qword_28098DC08] = 0;
  v4 = &v1[qword_28098DC10];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[qword_28098DC18];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  memcpy(&v1[qword_28098DBF0], a1, 0x49uLL);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UIKitTextFieldHost.Coordinator();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_274BA7760()
{
  sub_274BA72C0(v6);
  v0 = type metadata accessor for UIKitTextFieldHost();
  v1 = *(*(v0 - 8) + 8);

  v1(v6, v0);
  v2 = sub_274BA7608();
  if (!v2 || (v3 = v2, v4 = [v2 attributedText], v3, !v4) || (v5 = objc_msgSend(v4, sel_mutableCopy), v4, !v5))
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  }

  sub_274B45BE4(v5);
}

void sub_274BA78A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA7760();
}

uint64_t sub_274BA792C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_274BA7908(v4);

  return a1 & 1;
}

uint64_t sub_274BA797C(void *a1)
{
  v2 = sub_274BA746C();
  if (v2)
  {

    sub_274BA72C0(v18);
    v3 = type metadata accessor for UIKitTextFieldHost();
    v4 = *(*(v3 - 8) + 8);

    v4(v18, v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
    sub_274BA8F2C();
    sub_274BF2D14();
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for UIKitAutocompleteCoordinator()) init];
    v6 = a1;
    sub_274B70C4C(a1);
    v7 = &v5[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate];
    swift_beginAccess();
    *(v7 + 1) = &off_2883CDBF0;
    swift_unknownObjectWeakAssign();
    v8 = sub_274BA751C();
    sub_274B70F90(v8);
    v9 = v5;
    sub_274BA749C(v5);
  }

  sub_274BA72C0(v19);
  v10 = type metadata accessor for UIKitTextFieldHost();
  v11 = *(*(v10 - 8) + 8);

  v11(v19, v10);
  v12 = sub_274B44BEC(v17);
  v14 = v13;
  v15 = v13[1];
  if (v15 != 1 && v15 != 2)
  {
    sub_274B295C0(*v14, v15);
    *v14 = xmmword_274BFBC10;
  }

  v12(v17, 0);
}

void sub_274BA7C10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA797C(v4);
}

uint64_t sub_274BA7C78()
{
  sub_274BA72C0(&v3);
  v0 = type metadata accessor for UIKitTextFieldHost();
  v1 = *(*(v0 - 8) + 8);

  v1(&v3, v0);

  sub_274B47624(0, 0, 1, 0);
}

void sub_274BA7D60(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA7C78();
}

uint64_t sub_274BA7DC8()
{
  sub_274BA72C0(&v10);
  v0 = type metadata accessor for UIKitTextFieldHost();
  v1 = *(*(v0 - 8) + 8);

  v1(&v10, v0);

  v2 = sub_274BA7608();
  if (v2)
  {
    v3 = v2;
    v4 = sub_274BA869C();
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v8 = 1;
  }

  sub_274B47624(v4, v6, v8 & 1, 0);
}

void sub_274BA7EEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA7DC8();
}

void (*sub_274BA7F54(uint64_t a1, uint64_t a2))(uint64_t, char *, uint64_t)
{
  sub_274BA72C0(v16);
  v3 = type metadata accessor for UIKitTextFieldHost();
  v4 = *(*(v3 - 8) + 8);
  v4(v16, v3);
  if (v16[24])
  {
    sub_274BA72C0(v17);

    v4(v17, v3);
    v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    sub_274B45BE4(v5);

    result = sub_274BA75A8();
    if (!result)
    {
      return result;
    }

    v7 = result;
    result(a2, 0, 0);
    return sub_274AD81C4(v7);
  }

  v8 = sub_274BA7608();
  if (!v8 || (v9 = v8, v10 = sub_274BA869C(), v12 = v11, v14 = v13, v9, (v14 & 1) != 0))
  {
    v10 = 0;
    v12 = 0;
  }

  sub_274BA72C0(v17);

  v4(v17, v3);

  v15 = &v10[v12];
  if (__OFADD__(v10, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v15 + 1);
  if (__OFADD__(v15, 1))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_274B47624(result, 0, 0, 0);

  result = sub_274BA75A8();
  if (!result)
  {
    return result;
  }

  v7 = result;
  result(a2, v10, v12);
  return sub_274AD81C4(v7);
}

void sub_274BA8180()
{
  v0 = sub_274BA7608();
  [v0 resignFirstResponder];
}

void sub_274BA8200(uint64_t a1)
{
  v2 = *(a1 + qword_28098DBF0 + 16);
  v3 = *(a1 + qword_28098DBF0 + 48);
  v4 = *(a1 + qword_28098DBF0 + 56);
  v5 = *(a1 + qword_28098DBF0 + 64);
  v6 = *(a1 + qword_28098DBF0 + 72);

  sub_274AEF5C0(v3, v4);
  sub_274AEF5C0(v5, v6);

  sub_274AD81C4(*(a1 + qword_28098DC10));
  sub_274AD81C4(*(a1 + qword_28098DC18));

  JUMPOUT(0x277C665A0);
}

id sub_274BA8404@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(v6, v2, sizeof(v6));
  result = sub_274BA720C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_274BA8458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_274BA84D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_274BA8550()
{
  swift_getWitnessTable();
  sub_274BF3A24();
  __break(1u);
}

uint64_t sub_274BA85A0()
{
  swift_weakAssign();
}

double sub_274BA85E8(void *a1)
{
  v1 = a1;
  v2 = sub_274BA862C();

  return v2;
}

double sub_274BA862C()
{
  v1 = [v0 font];
  if (v1)
  {
    v2 = v1;
    [v1 wf_lineHeight];
  }

  return *MEMORY[0x277D77260];
}

id sub_274BA869C()
{
  v1 = [v0 selectedTextRange];
  if (!v1)
  {
    return 0;
  }

  v2 = [v0 beginningOfDocument];
  v3 = [v1 start];
  v4 = [v0 offsetFromPosition:v2 toPosition:v3];

  v5 = [v1 start];
  v6 = [v1 end];
  [v0 offsetFromPosition:v5 toPosition:v6];

  return v4;
}

uint64_t sub_274BA8800(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), SEL *a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_274BF57C4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  sub_274BA8898(v11, a4, a5);

  return sub_274B0671C(v11, &qword_28098B300);
}

uint64_t sub_274BA8898(uint64_t a1, uint64_t (*a2)(id), SEL *a3)
{
  v6 = v3;
  if (sub_274BA8590())
  {
    v8 = sub_274BA869C();
    if (v9)
    {
    }

    else
    {
      v10 = a2(v8);

      if (v10)
      {
        return result;
      }
    }
  }

  sub_274B489B0(a1, v21);
  v12 = v22;
  if (v22)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = *(v12 - 8);
    v15 = MEMORY[0x28223BE20](v13);
    v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    v18 = sub_274BF5C04();
    (*(v14 + 8))(v17, v12);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v18 = 0;
  }

  v19 = type metadata accessor for UIKitTextField();
  v20.receiver = v6;
  v20.super_class = v19;
  objc_msgSendSuper2(&v20, *a3, v18);
  return swift_unknownObjectRelease();
}

id sub_274BA8A90()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UIKitTextField();
  v1 = objc_msgSendSuper2(&v3, sel_resignFirstResponder);
  if (v1 && sub_274BA8590())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
    sub_274BA8F2C();
    sub_274BF2D14();
  }

  return v1;
}

uint64_t sub_274BA8B84(void *a1)
{
  v1 = a1;
  v2 = sub_274BA8A90();

  return v2 & 1;
}

id sub_274BA8BB8(double a1, double a2, double a3, double a4)
{
  swift_weakInit();
  v10.receiver = v4;
  v10.super_class = type metadata accessor for UIKitTextField();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_274BA8CA0(void *a1)
{
  swift_weakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIKitTextField();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_274BA8D98(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_274BA8E38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274BA8E7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_274BA8EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274BA8F2C()
{
  result = qword_28098B360[0];
  if (!qword_28098B360[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DE20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098B360);
  }

  return result;
}

unint64_t sub_274BA8F90()
{
  result = qword_28098DE28;
  if (!qword_28098DE28)
  {
    type metadata accessor for AttributedTextFieldTransitionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE28);
  }

  return result;
}

uint64_t ToolExecutionOutputViewModel.ToolExecutionOutputViewModelError.hashValue.getter()
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](0);
  return sub_274BF5D44();
}

uint64_t sub_274BA9060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_18();

  return v1;
}

uint64_t sub_274BA90C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_7_20();
}

uint64_t sub_274BA9150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_18();

  return v1;
}

uint64_t sub_274BA91B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_7_20();
}

uint64_t sub_274BA9210()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

uint64_t sub_274BA9288()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274BA9308(uint64_t a1, void *a2, uint64_t *a3)
{
  v32 = a1;
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE70);
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE58);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27[-v14];
  v16 = *a3;
  v29 = a3[1];
  v30 = v16;
  v28 = *(a3 + 16);
  v17 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__contentCollection;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DED0);
  sub_274BF2D24();
  (*(v13 + 32))(v3 + v17, v15, v12);
  v18 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__visibleItemIndex;
  v34 = 0;
  sub_274BF2D24();
  (*(v9 + 32))(v3 + v18, v11, v8);
  v19 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__state;
  v34 = 0;
  v35 = 0;
  v36 = 2;
  sub_274BF2D24();
  (*(v5 + 32))(v3 + v19, v7, v31);
  v20 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel_identifier;
  v21 = sub_274BF2164();
  v22 = *(v21 - 8);
  v23 = v3 + v20;
  v24 = v32;
  (*(v22 + 16))(v23, v32, v21);
  v25 = v33;
  sub_274BA90C0();
  v34 = v30;
  v35 = v29;
  v36 = v28;
  sub_274BA9288();

  (*(v22 + 8))(v24, v21);
  return v3;
}

uint64_t static ToolExecutionOutputViewModel.makeViewModel(reference:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_274BF2BE4();
  v3[22] = v4;
  OUTLINED_FUNCTION_3_26(v4);
  v3[23] = v5;
  v3[24] = OUTLINED_FUNCTION_4_21();
  v6 = sub_274BF2164();
  OUTLINED_FUNCTION_7_1(v6);
  v3[25] = OUTLINED_FUNCTION_4_21();
  v7 = sub_274BF4BF4();
  v3[26] = v7;
  OUTLINED_FUNCTION_3_26(v7);
  v3[27] = v8;
  v3[28] = OUTLINED_FUNCTION_4_21();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  OUTLINED_FUNCTION_7_1(v9);
  v3[29] = OUTLINED_FUNCTION_4_21();
  v10 = sub_274BF4C84();
  OUTLINED_FUNCTION_7_1(v10);
  v3[30] = OUTLINED_FUNCTION_4_21();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE30);
  OUTLINED_FUNCTION_7_1(v11);
  v3[31] = OUTLINED_FUNCTION_4_21();
  v12 = sub_274BF4C64();
  v3[32] = v12;
  OUTLINED_FUNCTION_3_26(v12);
  v3[33] = v13;
  v3[34] = OUTLINED_FUNCTION_4_21();

  return MEMORY[0x2822009F8](sub_274BA9840, 0, 0);
}

uint64_t sub_274BA9840()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = sub_274BF4C04();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_274BF4C74();
  v4 = sub_274BF1F54();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  sub_274BF4C54();
  ObjectType = swift_getObjectType();
  v0[35] = ObjectType;
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_274BA996C;
  v7 = v0[34];
  v8 = v0[28];
  v9 = v0[21];
  v10 = v0[19];

  return MEMORY[0x2821DAA60](v8, v10, v7, ObjectType, v9);
}

uint64_t sub_274BA996C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_274BAA120;
  }

  else
  {
    v2 = sub_274BA9A80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274BA9A80()
{
  v1 = v0[37];
  sub_274AD8430(0, &qword_28098DE38);
  v2 = sub_274BF55B4();
  v0[38] = v2;
  if (v1)
  {
    v4 = v0[33];
    v3 = v0[34];
    v5 = v0[32];
    (*(v0[27] + 8))(v0[28], v0[26]);
    (*(v4 + 8))(v3, v5);
LABEL_12:
    OUTLINED_FUNCTION_2_29();

    v22 = v0[1];

    return v22();
  }

  v6 = v2;
  v7 = sub_274BF4BD4();
  v0[39] = v7;
  if (!v7)
  {
LABEL_9:
    sub_274BF2A54();
    v12 = sub_274BF2BD4();
    v13 = sub_274BF5494();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_274AD4000, v12, v13, "ActionResultView: Unsupported client type for resolving variable content", v14, 2u);
      MEMORY[0x277C664A0](v14, -1, -1);
    }

    v15 = v0[33];
    v24 = v0[32];
    v25 = v0[34];
    v16 = v0[27];
    v17 = v0[28];
    v18 = v0[26];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[22];

    (*(v20 + 8))(v19, v21);
    sub_274BAA2E8();
    swift_allocError();
    swift_willThrow();

    (*(v16 + 8))(v17, v18);
    (*(v15 + 8))(v25, v24);
    goto LABEL_12;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_274BA9DF0;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274BAA33C;
  v0[13] = &block_descriptor_16;
  v0[14] = v11;
  [v10 resolveContent:v6 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_274BA9DF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_274BAA1E0;
  }

  else
  {
    v2 = sub_274BA9F00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274BA9F00()
{
  v22 = v0;
  v1 = *(v0 + 144);

  sub_274BF4BE4();
  v2 = v1;
  v3 = [v1 items];
  sub_274AD8430(0, &qword_28098A118);
  v4 = sub_274BF5144();

  if (sub_274B22B94(v4))
  {
    sub_274B17EC8(0, (v4 & 0xC000000000000001) == 0);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C65230](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  v7 = *(v0 + 312);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v18 = *(v0 + 304);
  v19 = *(v0 + 256);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v17 = *(v0 + 208);
  v20[0] = v6;
  v20[1] = 0;
  v21 = 2;
  type metadata accessor for ToolExecutionOutputViewModel();
  swift_allocObject();
  v13 = v2;
  v14 = sub_274BA9308(v12, v2, v20);

  (*(v10 + 8))(v11, v17);
  (*(v8 + 8))(v9, v19);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_274BAA120()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  OUTLINED_FUNCTION_2_29();

  v1 = v0[1];

  return v1();
}

uint64_t sub_274BAA1E0()
{
  v1 = v0[39];
  v2 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_2_29();

  v9 = v0[1];

  return v9();
}

unint64_t sub_274BAA2E8()
{
  result = qword_28098DE40;
  if (!qword_28098DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE40);
  }

  return result;
}

uint64_t *sub_274BAA33C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_274BAA3CC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_274BAA438(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274BAA3CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989630);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t ToolExecutionOutputViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel_identifier;
  sub_274BF2164();
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__contentCollection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE58);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__visibleItemIndex;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00);
  OUTLINED_FUNCTION_1_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE70);
  OUTLINED_FUNCTION_1_0();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t ToolExecutionOutputViewModel.__deallocating_deinit()
{
  ToolExecutionOutputViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274BAA5D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ToolExecutionOutputViewModel();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t ToolExecutionOutputView.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ToolExecutionOutputViewModel();
  sub_274BAAE00();
  result = sub_274BF3264();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ToolExecutionOutputView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE80);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  v2 = &v11[-v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE88);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-v4];

  v6 = sub_274BA9060();

  if (v6)
  {
    v7 = sub_274BF38F4();
    v12 = 0;
    sub_274BAA9B0(v6, __src);
    memcpy(v13, __src, sizeof(v13));
    memcpy(v14, __src, sizeof(v14));
    sub_274BAAEAC(v13, v11);
    sub_274BAAF08(v14);
    memcpy(&v11[7], v13, 0x80uLL);
    __src[0] = v7;
    __src[1] = 0;
    LOBYTE(__src[2]) = v12;
    memcpy(&__src[2] + 1, v11, 0x87uLL);
    memcpy(v5, __src, 0x98uLL);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_8_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE98);
    sub_274BAAE58(&qword_28098DEA0, &qword_28098DE98);
    sub_274BAAE58(&qword_28098DEA8, &qword_28098DE80);
    sub_274BF3A64();

    sub_274B12D7C(__src, &qword_28098DE98);
    v8 = __src;
    v9 = &qword_28098DE98;
  }

  else
  {
    *v2 = sub_274BF38F4();
    *(v2 + 1) = 0;
    v2[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE90);
    sub_274BF3054();
    sub_274AFA6A8(v2, v5, &qword_28098DE80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE98);
    sub_274BAAE58(&qword_28098DEA0, &qword_28098DE98);
    sub_274BAAE58(&qword_28098DEA8, &qword_28098DE80);
    sub_274BF3A64();
    v8 = v2;
    v9 = &qword_28098DE80;
  }

  return sub_274B12D7C(v8, v9);
}

uint64_t sub_274BAA9B0@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for ToolExecutionOutputViewModel();
  sub_274BAAE00();
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  v4 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48);
  sub_274BF4904();
  v17 = v18;
  v5 = a1;
  v6 = [v5 items];
  sub_274AD8430(0, &qword_28098A118);
  v7 = sub_274BF5144();

  v8 = sub_274B22B94(v7);
  if (!v8)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_10:
    type metadata accessor for __ContentCollectionPageView.PageMetrics();
    swift_allocObject();
    v15 = __ContentCollectionPageView.PageMetrics.init()();
    type metadata accessor for PreviewableContentCollection();
    swift_allocObject();
    sub_274B809B0(v5);
    v16 = v5;
    result = sub_274BF4774();
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = v26;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v20;
    *(a2 + 48) = v16;
    *(a2 + 56) = v4;
    *(a2 + 64) = v22;
    *(a2 + 72) = v23;
    *(a2 + 80) = v15;
    *(a2 + 88) = 1;
    *(a2 + 96) = v14;
    *(a2 + 104) = 0;
    *(a2 + 112) = v18;
    *(a2 + 120) = v19;
    return result;
  }

  v9 = v8;
  v18 = MEMORY[0x277D84F90];
  result = sub_274BF59F4();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x277C65230](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      type metadata accessor for ContentItemDataSource();
      swift_allocObject();
      ContentItemDataSource.init(_:)(v13);
      sub_274BF59C4();
      sub_274BF5A14();
      sub_274BF5A24();
      sub_274BF59D4();
    }

    while (v9 != v11);

    v14 = v18;
    v4 = v21;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

double sub_274BAAD0C@<D0>(uint64_t a1@<X8>)
{
  sub_274BA9210();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t type metadata accessor for ToolExecutionOutputViewModel()
{
  result = qword_28098DEB8;
  if (!qword_28098DEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274BAAE00()
{
  result = qword_28098DE78;
  if (!qword_28098DE78)
  {
    type metadata accessor for ToolExecutionOutputViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE78);
  }

  return result;
}

uint64_t sub_274BAAE58(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274BAAF60()
{
  result = qword_28098DEB0;
  if (!qword_28098DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DEB0);
  }

  return result;
}

void sub_274BAAFD8()
{
  sub_274BF2164();
  if (v0 <= 0x3F)
  {
    sub_274BAB150();
    if (v1 <= 0x3F)
    {
      sub_274B8BF10(319, &qword_2815A3120);
      if (v2 <= 0x3F)
      {
        sub_274B8BF10(319, &qword_28098DED8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_274BAB150()
{
  if (!qword_28098DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DED0);
    v0 = sub_274BF2D94();
    if (!v1)
    {
      atomic_store(v0, &qword_28098DEC8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolExecutionOutputViewModel.ToolExecutionOutputViewModelError(_BYTE *result, int a2, int a3)
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

unint64_t sub_274BAB270()
{
  result = qword_28098DEE0;
  if (!qword_28098DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DEE8);
    sub_274BAAE58(&qword_28098DEA0, &qword_28098DE98);
    sub_274BAAE58(&qword_28098DEA8, &qword_28098DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DEE0);
  }

  return result;
}

uint64_t sub_274BAB32C(uint64_t a1, int a2)
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

uint64_t sub_274BAB36C(uint64_t result, int a2, int a3)
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

uint64_t sub_274BAB3D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DEF8);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);
  *v3 = sub_274BF38F4();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF00);
  sub_274BAB538(v4, v5, v7, v6, &v3[*(v8 + 44)]);
  sub_274BF38A4();
  OUTLINED_FUNCTION_3_2();
  sub_274AFA930(v9, &qword_28098DEF8);
  sub_274BF42B4();

  return sub_274AED334(v3);
}

uint64_t sub_274BAB538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v47 = a2;
  v63 = a5;
  v61 = sub_274BF32B4();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF10);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v47 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF18);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v47 - v13;
  v50 = sub_274BF3B04();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF20);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF28);
  v66 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v64 = &v47 - v22;
  v48 = a3;
  LOBYTE(v75) = a3;
  v49 = a4;
  v76 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF30);
  sub_274BF47A4();
  v79 = v82[0];
  v80 = v82[1];
  v81 = v83;
  sub_274BF38A4();
  v75 = sub_274BF40E4();
  v76 = v23;
  v77 = v24 & 1;
  v78 = v25;
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF38);
  sub_274BAC418();
  sub_274AFA930(&qword_28098DF50, &qword_28098DF38);
  sub_274BF4854();
  sub_274BF3AF4();
  sub_274AFA930(&qword_28098DF58, &qword_28098DF20);
  v26 = v64;
  v27 = v50;
  sub_274BF4224();
  (*(v51 + 8))(v15, v27);
  (*(v17 + 8))(v19, v16);
  v75 = a1;
  v76 = v47;
  v77 = v48;
  v78 = v49;
  v28 = sub_274BAC284();
  KeyPath = swift_getKeyPath();
  v82[0] = v28;
  v67 = v82;
  v68 = KeyPath;
  v69 = sub_274B12404;
  v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF60);
  sub_274BAD36C();
  v30 = v54;
  sub_274BF4034();

  v31 = v56;
  sub_274BF32A4();
  sub_274AFA930(&qword_28098DF78, &qword_28098DF10);
  v32 = v65;
  v33 = v58;
  v34 = v61;
  sub_274BF44E4();
  (*(v62 + 8))(v31, v34);
  (*(v60 + 8))(v30, v33);
  v35 = *(v66 + 16);
  v36 = v52;
  v37 = v53;
  v35(v52, v26, v53);
  v38 = v57;
  v39 = *(v57 + 16);
  v40 = v55;
  v41 = v59;
  v39(v55, v32, v59);
  v42 = v63;
  v35(v63, v36, v37);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF80);
  v39(&v42[*(v43 + 48)], v40, v41);
  v44 = *(v38 + 8);
  v44(v65, v41);
  v45 = *(v66 + 8);
  v45(v64, v37);
  v44(v40, v41);
  return (v45)(v36, v37);
}

uint64_t sub_274BABDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF88);
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF90);
  v42 = *(v12 - 8);
  v13 = v42;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_274BF38A4();
  *v18 = sub_274BF40E4();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 261;
  v41 = v18;
  v53 = &unk_2883C6A88;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA18);
  sub_274AFA930(&qword_28098DF98, &qword_28098DA18);
  sub_274BAC49C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BCE8);
  v24 = sub_274BAC418();
  v49 = MEMORY[0x277CE0BD8];
  v50 = v23;
  v51 = MEMORY[0x277CE0BC8];
  v52 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v45;
  v39 = v12;
  sub_274BF4944();
  v26 = *(v13 + 16);
  v27 = v15;
  v40 = v15;
  v26(v15, v18, v12);
  v28 = v44;
  v29 = *(v44 + 16);
  v30 = v46;
  v31 = v47;
  v29(v46, v25, v47);
  v32 = v48;
  v33 = v27;
  v34 = v39;
  v26(v48, v33, v39);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DFA0);
  v29(&v32[*(v35 + 48)], v30, v31);
  v36 = *(v28 + 8);
  v36(v25, v31);
  v37 = *(v42 + 8);
  v37(v41, v34);
  v36(v30, v31);
  return (v37)(v40, v34);
}

uint64_t sub_274BAC208@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LogStreamManager.LogEvent.EventType.displayName(with:)();
  sub_274ADDF6C();
  result = sub_274BF4104();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_274BAC284()
{

  v0 = sub_274B9D580();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF30);
  sub_274BF4784();
  if (v6 == 5)
  {
    return v0;
  }

  v5 = MEMORY[0x277D84F90];
  result = sub_274B22B94(v0);
  v2 = result;
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return v5;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x277C65230](i, v0);
      v4 = result;
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v0 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v4 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_type) == v6)
    {
      sub_274BF59C4();
      sub_274BF5A14();
      sub_274BF5A24();
      result = sub_274BF59D4();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_274BAC418()
{
  result = qword_28098DF40;
  if (!qword_28098DF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BCE8);
    sub_274BAC49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF40);
  }

  return result;
}

unint64_t sub_274BAC49C()
{
  result = qword_28098DF48;
  if (!qword_28098DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF48);
  }

  return result;
}

void sub_274BAC4F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_274B80628(0xD000000000000017, 0x8000000274C0C5C0, v0);
  qword_28098DEF0 = v0;
}

void *sub_274BAC550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3904();
  v10 = 1;
  sub_274BAC62C(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_274AFA6A8(__dst, v7, &qword_28098DFA8);
  sub_274AFA708(v12, &qword_28098DFA8);
  memcpy(&v9[7], __dst, 0xD8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0xDFuLL);
}

uint64_t sub_274BAC62C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v33 = sub_274BF3804();
  LOBYTE(v50[0]) = 1;
  sub_274BACB34(a1, &v51);
  v34 = v51;
  v6 = v52;
  v7 = v53[0];
  v8 = v53[1];
  v38 = LOBYTE(v53[1]);
  v40 = v52;
  v41 = v53[2];
  v39 = v53[0];
  sub_274AF396C(v52, v53[0], v53[1]);

  sub_274AFA1D0(v6, v7, v8);

  LOBYTE(v51) = v8;
  v37 = LOBYTE(v50[0]);
  v9 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v36 = sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0);
  KeyPath = swift_getKeyPath();
  v31 = sub_274BF3804();
  LOBYTE(v51) = 1;
  sub_274BACCD8(v48);
  *&v44[7] = v48[0];
  *&v44[23] = v48[1];
  *&v44[39] = v48[2];
  *&v44[55] = v48[3];
  v30 = v51;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v29 = sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0);
  v28 = swift_getKeyPath();
  v10 = *(a1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_message + 8);
  v51 = *(a1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_message);
  v52 = v10;
  sub_274ADDF6C();

  v11 = sub_274BF4104();
  v13 = v12;
  v15 = v14;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0);
  v16 = sub_274BF40D4();
  v18 = v17;
  HIDWORD(v27) = v19;
  v21 = v20;

  sub_274AFA1D0(v11, v13, v15 & 1);

  v49[0] = v33;
  v49[1] = 0;
  LOBYTE(v49[2]) = v37;
  *(&v49[2] + 1) = *v47;
  HIDWORD(v49[2]) = *&v47[3];
  LOBYTE(v49[3]) = v34;
  *(&v49[3] + 1) = *v46;
  HIDWORD(v49[3]) = *&v46[3];
  v49[4] = v40;
  v49[5] = v39;
  LOBYTE(v49[6]) = v38;
  *(&v49[6] + 1) = *v45;
  HIDWORD(v49[6]) = *&v45[3];
  v49[7] = v41;
  v49[8] = KeyPath;
  v49[9] = v36;
  memcpy(v43, v49, 0x50uLL);
  v22 = v31;
  v50[0] = v31;
  v50[1] = 0;
  LOBYTE(v10) = v30;
  LOBYTE(v50[2]) = v30;
  memcpy(&v50[2] + 1, v44, 0x47uLL);
  v24 = v28;
  v23 = v29;
  v50[11] = v28;
  v50[12] = v29;
  memcpy(&v43[80], v50, 0x68uLL);
  LOBYTE(v11) = BYTE4(v27) & 1;
  v42 = BYTE4(v27) & 1;
  v25 = v32;
  memcpy(v32, v43, 0xB8uLL);
  v25[23] = v16;
  v25[24] = v18;
  *(v25 + 200) = v11;
  v25[26] = v21;
  sub_274AFA6A8(v49, &v51, &qword_28098DFB0);
  sub_274AFA6A8(v50, &v51, &qword_28098DFB8);
  sub_274AF396C(v16, v18, v11);

  sub_274AFA1D0(v16, v18, v11);

  v51 = v22;
  v52 = 0;
  LOBYTE(v53[0]) = v10;
  memcpy(v53 + 1, v44, 0x47uLL);
  v53[9] = v24;
  v53[10] = v23;
  sub_274AFA708(&v51, &qword_28098DFB8);
  v54[0] = v33;
  v54[1] = 0;
  v55 = v37;
  *v56 = *v47;
  *&v56[3] = *&v47[3];
  v57 = v34;
  *v58 = *v46;
  *&v58[3] = *&v46[3];
  v59 = v40;
  v60 = v39;
  v61 = v38;
  *v62 = *v45;
  *&v62[3] = *&v45[3];
  v63 = v41;
  v64 = KeyPath;
  v65 = v36;
  return sub_274AFA708(v54, &qword_28098DFB0);
}

uint64_t sub_274BACB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3894();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(a1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_type);
  sub_274BF3884();
  sub_274BF3874();
  if (qword_2809893D0 != -1)
  {
    swift_once();
  }

  sub_274BF2114();
  sub_274BAD480();
  sub_274BF3844();
  sub_274BF3874();
  sub_274BF38B4();
  v6 = sub_274BF40E4();
  v8 = v7;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v10 = v9 & 1;
  *(a2 + 24) = v9 & 1;
  *(a2 + 32) = v11;
  sub_274AF396C(v6, v7, v9 & 1);

  sub_274AFA1D0(v6, v8, v10);
}

uint64_t sub_274BACCD8@<X0>(uint64_t a1@<X8>)
{
  sub_274ADDF6C();

  v2 = sub_274BF4104();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = sub_274BF4104();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v13 & 1;
  *(a1 + 56) = v15;
  sub_274AF396C(v2, v4, v12);

  sub_274AF396C(v9, v11, v14);

  sub_274AFA1D0(v9, v11, v14);

  sub_274AFA1D0(v2, v4, v17);
}

double sub_274BACE38@<D0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 3:
      sub_274BF38A4();
      v8 = sub_274BF40E4();
      v10 = v9;
      v12 = v11;
      sub_274BF45A4();
      v13 = sub_274BF4094();
      v15 = v14;
      v17 = v16;

      sub_274AFA1D0(v8, v10, v12 & 1);

      v18 = v17 & 1;
      sub_274AF396C(v13, v15, v17 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      goto LABEL_5;
    case 4:
      sub_274BF38A4();
      v3 = sub_274BF40E4();
      v5 = v4;
      v7 = v6;
      sub_274BF4624();
      sub_274BF4094();

      sub_274AFA1D0(v3, v5, v7 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18);
      sub_274B424D0();
      sub_274BF3A64();
      break;
    default:
      sub_274BF38A4();
      v13 = sub_274BF40E4();
      v15 = v19;
      v18 = v20 & 1;
      sub_274AF396C(v13, v19, v20 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18);
      sub_274B424D0();
      sub_274BF3A64();
      sub_274AFA1D0(v13, v15, v18);

      break;
  }

  result = *&v22;
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 34) = v25;
  return result;
}

unint64_t sub_274BAD36C()
{
  result = qword_28098DF68;
  if (!qword_28098DF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DF60);
    sub_274BAD3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF68);
  }

  return result;
}

unint64_t sub_274BAD3F0()
{
  result = qword_28098DF70;
  if (!qword_28098DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF70);
  }

  return result;
}

unint64_t sub_274BAD480()
{
  result = qword_28098DFC0;
  if (!qword_28098DFC0)
  {
    sub_274BF2114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogColorIndicator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274BAD5D0()
{
  result = qword_28098DFD8;
  if (!qword_28098DFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098DFE0);
    sub_274B424D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFD8);
  }

  return result;
}

uint64_t sub_274BAD65C@<X0>(uint64_t *a1@<X8>)
{
  result = WFDatabaseObjectDescriptor.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnvironmentValues.userInterface.getter()
{
  sub_274BAD6C4();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274BAD6C4()
{
  result = qword_28098DFF0;
  if (!qword_28098DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFF0);
  }

  return result;
}

uint64_t (*EnvironmentValues.userInterface.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_274BAD6C4();
  sub_274BF37A4();
  return sub_274BAD7E0;
}

uint64_t sub_274BAD7E0(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_274BF37B4();
  }

  swift_unknownObjectRetain();
  sub_274BF37B4();

  return swift_unknownObjectRelease();
}

uint64_t View.foregroundColor(isSelected:activeColor:inactiveColor:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3;
  return MEMORY[0x277C63D20](v6, a4, &type metadata for SelectedForegroundColorModifier, a5);
}

WorkflowUICore::SelectedBackgroundStyle __swiftcall SelectedBackgroundStyle.init(isSelected:environmentFocus:)(Swift::Bool isSelected, Swift::Bool environmentFocus)
{
  *v2 = isSelected;
  v2[1] = environmentFocus;
  result.isSelected = isSelected;
  return result;
}

uint64_t SelectedBackgroundStyle.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == 1)
  {
    result = sub_274BF4574();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for SelectedBackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_274BADA04()
{
  result = qword_28098DFF8;
  if (!qword_28098DFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFF8);
  }

  return result;
}

unint64_t sub_274BADA80()
{
  result = qword_28098E008;
  if (!qword_28098E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E008);
  }

  return result;
}

uint64_t sub_274BADB00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E010);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  if (a2)
  {
    a4 = a3;
  }

  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E018);
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  v16 = &v13[*(v11 + 44)];
  *v16 = KeyPath;
  v16[1] = a4;
  sub_274BADC28(v13, a5);
}

uint64_t sub_274BADC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274BADC98()
{
  result = qword_28098E020;
  if (!qword_28098E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E010);
    sub_274AFA930(&qword_28098E028, &qword_28098E018);
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E020);
  }

  return result;
}

uint64_t sub_274BADD7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.debugStatistics.getter();
  *a1 = result;
  return result;
}

uint64_t View.accessibilityEnabledDebugStatistics()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  v7 = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x277C63D20](&KeyPath, a1, &type metadata for AccessibilityEnabledModifier, a2);
}

uint64_t sub_274BADE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v11 = a3 & 1;
  v12 = sub_274BF3774();
  v26 = *(v12 - 8);
  v27 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E038);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v11;
  *(v18 + 32) = a4;
  v28 = a5;
  *(v18 + 40) = a5 & 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E040);
  (*(*(v19 - 8) + 16))(v17, a1, v19);
  v20 = &v17[*(v15 + 36)];
  *v20 = sub_274BAE778;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  if (a3)
  {
    j__swift_retain();
    v21 = a2;
  }

  else
  {
    sub_274AFC7D4(a2, 0);
    j__swift_retain();
    sub_274AFC7D4(a2, 0);
    sub_274BF54A4();
    v22 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(a2, 0);
    (*(v26 + 8))(v14, v27);
    v21 = v31;
  }

  v30 = v21 & 1;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3 & 1;
  *(v23 + 32) = a4;
  *(v23 + 40) = v28 & 1;
  j__swift_retain();
  sub_274AFC7D4(a2, a3 & 1);
  sub_274BAE804();
  sub_274BF4494();

  return sub_274BAE8F4(v17);
}

uint64_t sub_274BAE194(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_274BF3774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v12 = a1;
  }

  else
  {

    sub_274BF54A4();
    v13 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(a1, 0);
    (*(v9 + 8))(v11, v8);
    v12 = v15[15];
  }

  v15[8] = a2 & 1;
  v15[0] = a4 & 1;
  return sub_274BAE314(v12 & 1, a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_274BAE314(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_274BF3774();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274BF2BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2A54();
  v15 = sub_274BF2BD4();
  v16 = sub_274BF54B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v10;
    v18 = a5;
    v19 = v8;
    v20 = a1;
    v21 = v17;
    *v17 = 67109120;
    *(v17 + 4) = v20 & 1;
    _os_log_impl(&dword_274AD4000, v15, v16, "Accessibility enabled: %{BOOL}d", v17, 8u);
    v8 = v19;
    a5 = v18;
    v10 = v25;
    MEMORY[0x277C664A0](v21, -1, -1);
  }

  (*(v12 + 8))(v14, v11);

  if ((a5 & 1) == 0)
  {
    sub_274BF54A4();
    v23 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    j__swift_release();
    result = (*(v26 + 8))(v10, v8);
    a4 = v27;
  }

  if (a4)
  {
    sub_274BA28B0();
  }

  return result;
}

unint64_t sub_274BAE66C()
{
  result = qword_28098E030;
  if (!qword_28098E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E030);
  }

  return result;
}

uint64_t sub_274BAE6C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274BAE700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  sub_274AEF5C0(*(v0 + 16), *(v0 + 24));
  j__swift_release();

  return swift_deallocObject();
}

unint64_t sub_274BAE804()
{
  result = qword_28098E048;
  if (!qword_28098E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E038);
    sub_274BAE890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E048);
  }

  return result;
}

unint64_t sub_274BAE890()
{
  result = qword_28098E050;
  if (!qword_28098E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E050);
  }

  return result;
}

uint64_t sub_274BAE8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_274BAE960()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_274BAE9DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_274BF57C4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  return sub_274B48948(v7);
}

id CommonResponderCommands.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274BAEAC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_274BAEB08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_274BAEB90@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_274BF2514();
  OUTLINED_FUNCTION_16_7();
  sub_274BC0910(v6);
  v7 = sub_274BF3264();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E1E0);
  sub_274BF4774();
  sub_274BF4774();
  result = 0u;
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 64) = v13;
  *(a3 + 80) = v14;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  return result;
}

uint64_t sub_274BAEC94(uint64_t a1)
{
  result = MEMORY[0x277C64B60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_274B913A4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_274BAEDB0(uint64_t *a1)
{
  v2 = *(sub_274BF2394() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFDD0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_274BBCABC(v6);
  *a1 = v3;
}

uint64_t sub_274BAEE58(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_274BAEEDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_274BF3AE4();
  v4 = OUTLINED_FUNCTION_28_2(v3, &v44);
  v33 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E080);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E088);
  v13 = OUTLINED_FUNCTION_28_2(v12, &v43);
  v36 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E090);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v17);
  v32 = &v31 - v18;
  sub_274BAF39C(v1);
  v41 = *(v1 + 96);
  v42 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E098);
  sub_274BF47A4();
  sub_274BF3AD4();
  v30 = sub_274BB73D0();
  sub_274BF41C4();

  (*(v33 + 8))(v7, v35);
  sub_274B17578(v11, &qword_28098E080);
  sub_274BF38A4();
  v40[0] = v8;
  v40[1] = v30;
  swift_getOpaqueTypeConformance2();
  v19 = v32;
  v20 = v34;
  sub_274BF42B4();

  (*(v36 + 8))(v16, v20);
  sub_274BF2514();
  OUTLINED_FUNCTION_16_7();
  sub_274BC0910(v21);
  v22 = sub_274BF2CE4();
  v23 = swift_allocObject();
  memcpy((v23 + 16), v2, 0x78uLL);
  v24 = v37;
  *(v19 + *(v37 + 52)) = v22;
  v25 = (v19 + *(v24 + 56));
  *v25 = sub_274BB76CC;
  v25[1] = v23;
  v39 = v2;
  sub_274BB76F8(v2, v40);
  v26 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26);
  OUTLINED_FUNCTION_14_8();
  sub_274BC19D4(v27);
  OUTLINED_FUNCTION_17();
  sub_274BC19D4(v28);
  sub_274BF4474();
  return sub_274B17578(v19, &qword_28098E090);
}

uint64_t sub_274BAF39C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0E0);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E178);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - v6);
  v35 = *(a1 + 96);
  v36 = *(a1 + 112);
  v22 = *(a1 + 96);
  *&v23 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E098);
  sub_274BF4784();
  v9 = v25;
  v8 = v26;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v22 = v35;
    *&v23 = v36;

    sub_274BF4784();
    v12 = v25;
    v11 = v26;
    sub_274BF2514();
    sub_274BC0910(&unk_28098E0F8);
    v13 = sub_274BF3264();
    v32 = 0;
    v25 = v13;
    v26 = v14;
    v27 = v12;
    v28 = v11;
    v29 = v33;
    v30 = v34;
    v31 = 0;
    sub_274BB756C();
    sub_274BB75C0();

    sub_274BF3A64();
    v15 = v23;
    *v7 = v22;
    v7[1] = v15;
    v7[2] = v24[0];
    *(v7 + 41) = *(v24 + 9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0C0);
    sub_274BB74E0();
    sub_274BB7614();
    sub_274BF3A64();
  }

  else
  {
    v17 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = v17;
    v18 = *(a1 + 80);
    v24[0] = *(a1 + 64);
    v24[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E108);
    sub_274BF4784();
    if (v25)
    {
      LOBYTE(v33) = 1;
      v31 = 1;
      sub_274BB756C();
      sub_274BB75C0();
      sub_274BF3A64();
      v19 = v23;
      *v7 = v22;
      v7[1] = v19;
      v7[2] = v24[0];
      *(v7 + 41) = *(v24 + 9);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0C0);
      sub_274BB74E0();
      sub_274BB7614();
      return sub_274BF3A64();
    }

    else
    {
      sub_274BF3054();
      v20 = swift_allocObject();
      memcpy((v20 + 16), a1, 0x78uLL);
      v21 = &v4[*(v2 + 36)];
      *v21 = sub_274BB76CC;
      v21[1] = v20;
      v21[2] = 0;
      v21[3] = 0;
      sub_274AD8D30(v4, v7, &qword_28098E0E0);
      swift_storeEnumTagMultiPayload();
      sub_274BB76F8(a1, &v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0C0);
      sub_274BB74E0();
      sub_274BB7614();
      sub_274BF3A64();
      return sub_274B17578(v4, &qword_28098E0E0);
    }
  }
}

uint64_t sub_274BAF834()
{
  sub_274BB01C8(*(v0 + 8), v8);
  v1 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v13[1] = v1;
  v13[2] = v4;
  v5 = *(v0 + 64);
  v13[3] = *(v0 + 80);
  v9 = v2;
  v10 = v3;
  v6 = *(v0 + 80);
  v11 = v5;
  v12 = v6;
  sub_274AD8D30(v13, v14, &qword_28098E108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E108);
  sub_274BF4794();
  v14[0] = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  return sub_274B17578(v14, &qword_28098E108);
}

uint64_t sub_274BAF900(const void *a1)
{
  sub_274BF38A4();
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x78uLL);
  sub_274BB76F8(a1, v4);
  return sub_274BF47E4();
}

void sub_274BAF9CC(uint64_t a1)
{
  v2 = sub_274BF2BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_274BF1E84();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF1F54();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v39 - v12;
  v13 = sub_274BF1AC4();
  MEMORY[0x28223BE20](v13);
  v14 = *(a1 + 16);
  if (v14)
  {
    v45 = v8;
    v55 = v14;
    v50 = v5;
    v15 = *(a1 + 24);
    v16 = *(a1 + 48);
    v62 = *(a1 + 32);
    v63 = v16;
    v17 = *(a1 + 80);
    v64 = *(a1 + 64);
    v65 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E108);
    sub_274BF4784();
    v18 = v56;
    if (v56)
    {
      v41 = v10;
      v42 = v7;
      v49 = v15;
      v43 = v3;
      v44 = v2;
      v19 = v57;
      v48 = v58;
      v47 = v59;
      v20 = v60;
      v46 = v61;
      sub_274BF1B04();
      swift_allocObject();
      v21 = sub_274BF1AF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E110);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_274BFA880;
      sub_274BF1AB4();
      sub_274BF1AA4();
      *&v62 = v22;
      sub_274BC0910(&unk_28098E118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E120);
      v23 = v46;
      sub_274BC19D4(&unk_28098E128);
      v24 = v47;
      sub_274BF57F4();
      sub_274BF1AD4();
      *&v62 = v18;
      *(&v62 + 1) = v19;
      v63 = v48;
      *&v64 = v24;
      *(&v64 + 1) = v20;
      *&v65 = v23;
      sub_274BB737C();
      v40 = sub_274BF1AE4();
      v26 = v25;
      v39 = v21;
      sub_274BB7738(v18);
      v27 = v26;
      v28 = NSTemporaryDirectory();
      sub_274BF4F44();

      v29 = v41;
      sub_274BF1EA4();

      strcpy(&v62, "actions.json");
      BYTE13(v62) = 0;
      HIWORD(v62) = -5120;
      v30 = v51;
      v31 = v42;
      v32 = v52;
      (*(v51 + 104))(v42, *MEMORY[0x277CC91D8], v52);
      sub_274ADDF6C();
      v33 = v53;
      sub_274BF1F44();
      (*(v30 + 8))(v31, v32);
      v34 = *(v54 + 8);
      v35 = v45;
      v34(v29, v45);
      v36 = v40;
      sub_274BF1F94();
      v37 = v27;
      v38 = v55;
      v55(v33);
      sub_274AD81C4(v38);
      sub_274AF58B0(v36, v37);

      v34(v33, v35);
    }

    else
    {
      sub_274AD81C4(v55);
    }
  }
}

uint64_t sub_274BB01C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v400 = a2;
  v432 = sub_274BF22C4();
  v407 = *(v432 - 8);
  MEMORY[0x28223BE20](v432);
  v431 = &v396 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E130);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v404 = &v396 - v8;
  v420 = sub_274BF4BB4();
  MEMORY[0x28223BE20](v420);
  v419 = &v396 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E138);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v398 = &v396 - v14;
  MEMORY[0x28223BE20](v15);
  v412 = &v396 - v16;
  v411 = sub_274BF2404();
  v413 = *(v411 - 8);
  MEMORY[0x28223BE20](v411);
  v410 = &v396 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = sub_274BF4C44();
  v422 = *(v429 - 8);
  MEMORY[0x28223BE20](v429);
  v423 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v424 = &v396 - v20;
  v453 = sub_274BF2394();
  v443 = *(v453 - 1);
  MEMORY[0x28223BE20](v453);
  v409 = &v396 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v396 - v23;
  MEMORY[0x28223BE20](v25);
  v406 = &v396 - v26;
  MEMORY[0x28223BE20](v27);
  v399 = &v396 - v28;
  MEMORY[0x28223BE20](v29);
  v403 = &v396 - v30;
  MEMORY[0x28223BE20](v31);
  v421 = &v396 - v32;
  MEMORY[0x28223BE20](v33);
  v452 = (&v396 - v34);
  v35 = sub_274BF2434();
  v448 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v442 = &v396 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v444 = &v396 - v38;
  MEMORY[0x28223BE20](v39);
  v447 = &v396 - v40;
  MEMORY[0x28223BE20](v41);
  v440 = &v396 - v42;
  v418 = sub_274BF24D4();
  v43 = *(v418 - 1);
  MEMORY[0x28223BE20](v418);
  v427 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_274BF2484();
  v46 = MEMORY[0x277D84F90];
  if (!v45)
  {
    v452 = 0;
    v453 = 0;
    v449 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
LABEL_215:

    v393 = v400;
    v394 = v452;
    *v400 = v453;
    v393[1] = v394;
    v393[2] = v449;
    v393[3] = v118;
    v393[4] = v119;
    v393[5] = v120;
    v393[6] = v121;
    return result;
  }

  v47 = v45;
  v402 = v6;
  v408 = v12;
  v48 = sub_274BF24A4();
  v49 = 0;
  v50 = sub_274BB2B28(v48);
  v397 = 0;

  v405 = v47;
  v455 = sub_274BAEC94(v51);
  v425 = a1;
  v52 = sub_274BF2464();
  v53 = v52;
  v54 = *(v52 + 16);
  v401 = v24;
  v449 = v35;
  v417 = v54;
  if (v54)
  {
    v55 = 0;
    v416 = v52 + 32;
    v434 = v448 + 16;
    v433 = (v448 + 8);
    v450 = (v443 + 1);
    v451 = v443 + 2;
    v414 = (v43 + 8);
    v56 = v46;
    v57 = v440;
    v58 = v50;
    v441 = v50;
    v415 = v52;
    while (v55 < *(v53 + 16))
    {
      v430 = v56;
      v428 = v55;
      v426 = *(v416 + 8 * v55);
      sub_274BF2504();
      v59 = sub_274BF24C4();
      v437 = *(v59 + 16);
      if (v437)
      {
        v446 = 0;
        v60 = 0;
        v436 = (v59 + ((*(v448 + 80) + 32) & ~*(v448 + 80)));
        v61 = v46;
        v435 = v59;
        while (v60 < *(v59 + 16))
        {
          v62 = *(v448 + 72);
          v445 = v60;
          v63 = *(v448 + 16);
          v63(v57, v436 + v62 * v60, v35);
          v64 = v447;
          v63(v447, v57, v35);
          v65 = sub_274BB2F44(v64);
          v67 = v66;
          v69 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBBDDC();
            v46 = v90;
          }

          v49 = v46[2];
          if (v49 >= v46[3] >> 1)
          {
            sub_274BBBDDC();
            v46 = v91;
          }

          v46[2] = v49 + 1;
          v70 = &v46[3 * v49];
          v70[4] = v65;
          v70[5] = v67;
          v70[6] = v69;
          v71 = *(sub_274BF2424() + 16);

          if (__OFADD__(v446, v71))
          {
            goto LABEL_217;
          }

          v446 += v71;
          v72 = sub_274BF2424();
          (*v433)(v57, v35);
          v73 = *(v72 + 16);
          if (v73)
          {
            v439 = v46;
            v454 = v61;
            sub_274B63DF4();
            v74 = v454;
            v75 = *(v443 + 80);
            v438 = v72;
            v76 = v72 + ((v75 + 32) & ~v75);
            v77 = v443[9];
            v78 = v443[2];
            do
            {
              v79 = v452;
              v80 = v453;
              v78(v452, v76, v453);
              v81 = sub_274BF2364();
              v83 = v82;
              (*v450)(v79, v80);
              v454 = v74;
              v84 = *(v74 + 16);
              v49 = v84 + 1;
              if (v84 >= *(v74 + 24) >> 1)
              {
                sub_274B63DF4();
                v74 = v454;
              }

              *(v74 + 16) = v49;
              v85 = v74 + 16 * v84;
              *(v85 + 32) = v81;
              *(v85 + 40) = v83;
              v76 += v77;
              --v73;
            }

            while (v73);

            v61 = MEMORY[0x277D84F90];
            v57 = v440;
            v58 = v441;
            v46 = v439;
          }

          else
          {

            v74 = v61;
          }

          if (*(v455 + 16))
          {
            v86 = 0;
            v87 = *(v74 + 16);
            v88 = (v74 + 40);
            while (v87 != v86)
            {
              sub_274B17D84(v86++, 1, v74);
              v49 = *(v88 - 1);
              v89 = *v88;

              sub_274B94018(v49, v89);

              v88 += 2;
            }

            v57 = v440;
            v58 = v441;
          }

          else
          {
          }

          v60 = v445 + 1;
          v35 = v449;
          v59 = v435;
          if ((v445 + 1) == v437)
          {

            v92 = v61;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      v446 = 0;
      v92 = v46;
LABEL_29:
      v428 = (v428 + 1);
      v93 = WFLocalizedDisplayNameForContentCategory();
      v94 = sub_274BF4F44();
      v438 = v95;
      v439 = v94;

      v96 = sub_274BF4F44();
      v436 = v97;
      v437 = v96;

      v98 = sub_274BF24B4();
      v99 = 0;
      v100 = *(v98 + 16);
      v101 = v98 + 40;
      v445 = v98 + 40;
LABEL_30:
      v102 = (v101 + 16 * v99);
      while (v100 != v99)
      {
        if (v99 >= *(v98 + 16))
        {
          __break(1u);
          goto LABEL_135;
        }

        v103 = v46;
        v105 = *(v102 - 1);
        v104 = *v102;
        v106 = *(v58 + 16);

        if (!v106 || (sub_274BDA830(v105, v104), (v107 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v454 = v92;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_274B63DF4();
            v92 = v454;
          }

          v109 = v92[2];
          if (v109 >= v92[3] >> 1)
          {
            sub_274B63DF4();
            v92 = v454;
          }

          ++v99;
          v92[2] = v109 + 1;
          v110 = &v92[2 * v109];
          v110[4] = v105;
          v110[5] = v104;
          v58 = v441;
          v46 = v103;
          v101 = v445;
          goto LABEL_30;
        }

        v102 += 2;
        ++v99;
        v46 = v103;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v111 = v430;
      }

      else
      {
        v111 = sub_274BBBCD4(0, *(v430 + 16) + 1, 1, v430);
      }

      v35 = v449;
      v49 = v439;
      v57 = v440;
      v113 = *(v111 + 16);
      v112 = *(v111 + 24);
      if (v113 >= v112 >> 1)
      {
        v430 = sub_274BBBCD4(v112 > 1, v113 + 1, 1, v111);
      }

      else
      {
        v430 = v111;
      }

      (*v414)(v427, v418);
      v56 = v430;
      *(v430 + 16) = v113 + 1;
      v114 = (v56 + 56 * v113);
      v115 = v437;
      v116 = v438;
      v114[4] = v49;
      v114[5] = v116;
      v114[6] = v115;
      v117 = v446;
      v114[7] = v436;
      v114[8] = v117;
      v114[9] = v46;
      v114[10] = v92;
      v55 = v428;
      v53 = v415;
      v46 = MEMORY[0x277D84F90];
      if (v428 == v417)
      {

        goto LABEL_51;
      }
    }
  }

  else
  {

    v430 = MEMORY[0x277D84F90];
LABEL_51:
    v49 = v442;
    v122 = v444;
    v123 = sub_274BF2454();
    v428 = *(v123 + 16);
    if (v428)
    {
      v124 = 0;
      v427 = (v123 + ((*(v422 + 80) + 32) & ~*(v422 + 80)));
      v426 = (v422 + 16);
      v436 = (v448 + 16);
      v435 = v448 + 8;
      v450 = (v443 + 1);
      v451 = v443 + 2;
      v417 = (v422 + 8);
      v125 = v46;
      v418 = v123;
      while (v124 < *(v123 + 16))
      {
        v434 = v125;
        v126 = *(v422 + 72);
        v433 = v124;
        (*(v422 + 16))(v424, &v427[v126 * v124], v429);
        sub_274BF4C14();
        v127 = sub_274BF24F4();

        v439 = *(v127 + 16);
        if (v439)
        {
          v128 = 0;
          v129 = 0;
          v130 = *(v448 + 80);
          v437 = v127;
          v438 = (v127 + ((v130 + 32) & ~v130));
          v131 = v46;
          while (v129 < *(v127 + 16))
          {
            v132 = *(v448 + 72);
            v446 = v129;
            v133 = *(v448 + 16);
            v133(v122, v438 + v132 * v129, v35);
            v134 = v447;
            v133(v447, v122, v35);
            v135 = sub_274BB2F44(v134);
            v137 = v136;
            v139 = v138;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBBDDC();
              v131 = v163;
            }

            v49 = v131[2];
            if (v49 >= v131[3] >> 1)
            {
              sub_274BBBDDC();
              v131 = v164;
            }

            v131[2] = v49 + 1;
            v140 = &v131[3 * v49];
            v140[4] = v135;
            v140[5] = v137;
            v140[6] = v139;
            v141 = v444;
            v142 = *(sub_274BF2424() + 16);

            v143 = __OFADD__(v128, v142);
            v128 += v142;
            if (v143)
            {
              goto LABEL_219;
            }

            v144 = sub_274BF2424();
            (*v435)(v141, v35);
            v145 = *(v144 + 16);
            if (v145)
            {
              v441 = v131;
              v445 = v128;
              v454 = v46;
              sub_274B63DF4();
              v146 = v454;
              v147 = *(v443 + 80);
              v440 = v144;
              v148 = v144 + ((v147 + 32) & ~v147);
              v149 = v443[9];
              v150 = v443[2];
              do
              {
                v151 = v452;
                v152 = v453;
                v150(v452, v148, v453);
                v153 = sub_274BF2364();
                v49 = v154;
                (*v450)(v151, v152);
                v454 = v146;
                v155 = *(v146 + 16);
                if (v155 >= *(v146 + 24) >> 1)
                {
                  sub_274B63DF4();
                  v146 = v454;
                }

                *(v146 + 16) = v155 + 1;
                v156 = v146 + 16 * v155;
                *(v156 + 32) = v153;
                *(v156 + 40) = v49;
                v148 += v149;
                --v145;
              }

              while (v145);

              v46 = MEMORY[0x277D84F90];
              v128 = v445;
              v131 = v441;
            }

            else
            {

              v146 = v46;
            }

            v35 = v449;
            if (*(v455 + 16))
            {
              v157 = v46;
              v158 = v131;
              v159 = 0;
              v160 = *(v146 + 16);
              v161 = (v146 + 40);
              while (v160 != v159)
              {
                sub_274B17D84(v159++, 1, v146);
                v49 = *(v161 - 1);
                v162 = *v161;

                sub_274B94018(v49, v162);

                v161 += 2;
              }

              v131 = v158;
              v46 = v157;
              v35 = v449;
            }

            else
            {
            }

            v129 = v446 + 1;
            v122 = v444;
            v127 = v437;
            if ((v446 + 1) == v439)
            {

              goto LABEL_78;
            }
          }

          goto LABEL_218;
        }

        v128 = 0;
        v131 = v46;
LABEL_78:
        v165 = sub_274BF4C34();
        v446 = v166;
        v167 = sub_274BF4C14();
        v169 = v168;
        v170 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v171 = v434;
        }

        else
        {
          v171 = sub_274BBBCD4(0, *(v434 + 16) + 1, 1, v434);
        }

        v172 = v46;
        v174 = *(v171 + 16);
        v173 = *(v171 + 24);
        v175 = v131;
        if (v174 >= v173 >> 1)
        {
          v434 = sub_274BBBCD4(v173 > 1, v174 + 1, 1, v171);
        }

        else
        {
          v434 = v171;
        }

        v176 = (v433 + 1);
        (*v417)(v424, v429);
        v125 = v434;
        *(v434 + 16) = v174 + 1;
        v124 = v176;
        v177 = (v125 + 56 * v174);
        v178 = v446;
        v177[4] = v165;
        v177[5] = v178;
        v177[6] = v167;
        v177[7] = v169;
        v177[8] = v128;
        v177[9] = v175;
        v46 = v172;
        v177[10] = v172;
        v49 = v442;
        v122 = v444;
        v123 = v418;
        v35 = v170;
        if (v176 == v428)
        {

          goto LABEL_87;
        }
      }

      goto LABEL_225;
    }

    v434 = MEMORY[0x277D84F90];
LABEL_87:
    v179 = sub_274BF2494();
    v428 = *(v179 + 16);
    if (v428)
    {
      v180 = 0;
      v427 = (v179 + ((*(v422 + 80) + 32) & ~*(v422 + 80)));
      v426 = (v422 + 16);
      v436 = (v448 + 8);
      v437 = (v448 + 16);
      v450 = (v443 + 1);
      v451 = v443 + 2;
      v418 = (v422 + 8);
      v181 = v46;
      v424 = v179;
      while (v180 < *(v179 + 16))
      {
        v435 = v181;
        v182 = *(v422 + 72);
        v433 = v180;
        (*(v422 + 16))(v423, &v427[v182 * v180], v429);
        sub_274BF4C14();
        v183 = sub_274BF24F4();

        v440 = *(v183 + 16);
        if (v440)
        {
          v184 = 0;
          v185 = 0;
          v186 = *(v448 + 80);
          v438 = v183;
          v439 = (v183 + ((v186 + 32) & ~v186));
          v187 = v46;
          while (v185 < *(v183 + 16))
          {
            v188 = *(v448 + 72);
            v446 = v185;
            v189 = *(v448 + 16);
            v189(v49, v439 + v188 * v185, v35);
            v190 = v447;
            v189(v447, v49, v35);
            v191 = sub_274BB2F44(v190);
            v193 = v192;
            v195 = v194;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBBDDC();
              v187 = v219;
            }

            v49 = *(v187 + 2);
            if (v49 >= *(v187 + 3) >> 1)
            {
              sub_274BBBDDC();
              v187 = v220;
            }

            *(v187 + 2) = v49 + 1;
            v196 = &v187[24 * v49];
            *(v196 + 4) = v191;
            *(v196 + 5) = v193;
            *(v196 + 6) = v195;
            v197 = v442;
            v198 = *(sub_274BF2424() + 16);

            v143 = __OFADD__(v184, v198);
            v184 += v198;
            if (v143)
            {
              goto LABEL_221;
            }

            v199 = sub_274BF2424();
            (*v436)(v197, v35);
            v200 = *(v199 + 16);
            if (v200)
            {
              v444 = v187;
              v445 = v184;
              v454 = v46;
              sub_274B63DF4();
              v201 = v454;
              v202 = *(v443 + 80);
              v441 = v199;
              v203 = v199 + ((v202 + 32) & ~v202);
              v204 = v443[9];
              v205 = v443[2];
              do
              {
                v206 = v452;
                v207 = v453;
                v205(v452, v203, v453);
                v208 = sub_274BF2364();
                v210 = v209;
                (*v450)(v206, v207);
                v454 = v201;
                v211 = *(v201 + 16);
                if (v211 >= *(v201 + 24) >> 1)
                {
                  sub_274B63DF4();
                  v201 = v454;
                }

                *(v201 + 16) = v211 + 1;
                v212 = v201 + 16 * v211;
                *(v212 + 32) = v208;
                *(v212 + 40) = v210;
                v203 += v204;
                --v200;
              }

              while (v200);

              v46 = MEMORY[0x277D84F90];
              v35 = v449;
              v187 = v444;
              v184 = v445;
            }

            else
            {

              v201 = v46;
            }

            if (*(v455 + 16))
            {
              v213 = v187;
              v214 = 0;
              v215 = *(v201 + 16);
              v216 = (v201 + 40);
              while (v215 != v214)
              {
                sub_274B17D84(v214++, 1, v201);
                v218 = *(v216 - 1);
                v217 = *v216;

                sub_274B94018(v218, v217);

                v216 += 2;
              }

              v187 = v213;
              v46 = MEMORY[0x277D84F90];
            }

            else
            {
            }

            v185 = v446 + 1;
            v49 = v442;
            v183 = v438;
            if ((v446 + 1) == v440)
            {

              goto LABEL_114;
            }
          }

          goto LABEL_220;
        }

        v184 = 0;
        v187 = v46;
LABEL_114:
        v221 = sub_274BF4C34();
        v223 = v222;
        v224 = sub_274BF4C14();
        v226 = v225;
        v227 = swift_isUniquelyReferenced_nonNull_native();
        v446 = v226;
        v228 = v223;
        if (v227)
        {
          v229 = v435;
        }

        else
        {
          v229 = sub_274BBBCD4(0, *(v435 + 16) + 1, 1, v435);
        }

        v230 = v46;
        v232 = *(v229 + 16);
        v231 = *(v229 + 24);
        v233 = v187;
        if (v232 >= v231 >> 1)
        {
          v435 = sub_274BBBCD4(v231 > 1, v232 + 1, 1, v229);
        }

        else
        {
          v435 = v229;
        }

        v234 = (v433 + 1);
        (*v418)(v423, v429);
        v181 = v435;
        *(v435 + 16) = v232 + 1;
        v180 = v234;
        v235 = (v181 + 56 * v232);
        v235[4] = v221;
        v235[5] = v228;
        v236 = v446;
        v235[6] = v224;
        v235[7] = v236;
        v235[8] = v184;
        v235[9] = v233;
        v46 = v230;
        v235[10] = v230;
        v49 = v442;
        v179 = v424;
        if (v234 == v428)
        {

          goto LABEL_123;
        }
      }

      goto LABEL_227;
    }

    v435 = MEMORY[0x277D84F90];
LABEL_123:
    v237 = sub_274BF24A4();
    v238 = *(v237 + 16);
    v98 = v429;
    v46 = v453;
    v239 = v412;
    if (v238)
    {
      v240 = *(v413 + 16);
      v241 = *(v413 + 80);
      v437 = v237;
      v242 = v237 + ((v241 + 32) & ~v241);
      v441 = *(v413 + 72);
      v442 = v240;
      v413 += 16;
      v440 = (v413 - 8);
      v438 = (v422 + 8);
      v451 = MEMORY[0x277D84F90];
      v439 = v443 + 1;
      do
      {
        v243 = v410;
        v244 = v411;
        (v442)(v410, v242, v411);
        sub_274BF22A4();
        v245 = sub_274BF23F4();
        v247 = v246;
        (*v440)(v243, v244);
        v248 = sub_274BF2374();
        v250 = v249;
        v251 = sub_274BF2364();
        v446 = v252;
        v447 = v251;
        sub_274BF2354();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v239, 1, v98);
        v452 = v245;
        v449 = v248;
        v450 = v247;
        v448 = v250;
        if (EnumTagSinglePayload == 1)
        {
          sub_274B17578(v239, &qword_28098E138);
          v444 = 0;
          v445 = 0;
        }

        else
        {
          v254 = sub_274BF4C14();
          v444 = v255;
          v445 = v254;
          (*v438)(v239, v98);
        }

        v256 = v421;
        v257 = sub_274BF2324();
        sub_274BF2384();
        v258 = sub_274BF4FA4();
        v260 = v259;
        v261 = sub_274BF2344();
        v263 = v262;
        (*v439)(v256, v453);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v451 = sub_274BBBBCC(0, v451[2] + 1, 1, v451);
        }

        v265 = v451[2];
        v264 = v451[3];
        if (v265 >= v264 >> 1)
        {
          v451 = sub_274BBBBCC(v264 > 1, v265 + 1, 1, v451);
        }

        v266 = v451;
        v451[2] = v265 + 1;
        v267 = (v266 + 104 * v265);
        v268 = v448;
        v267[4] = v449;
        v267[5] = v268;
        v269 = v446;
        v267[6] = v447;
        v267[7] = v269;
        v270 = v450;
        v267[8] = v452;
        v267[9] = v270;
        v271 = v444;
        v267[10] = v445;
        v267[11] = v271;
        v267[12] = v257;
        v267[13] = v258;
        v267[14] = v260;
        v267[15] = v261;
        v242 += v441;
        v267[16] = v263;
        --v238;
        v98 = v429;
        v46 = v453;
        v239 = v412;
      }

      while (v238);

      v272 = v451;
    }

    else
    {
LABEL_135:

      v272 = MEMORY[0x277D84F90];
    }

    v451 = v272;
    v273 = v405;
    v274 = v405 + 64;
    v275 = 1 << *(v405 + 32);
    v276 = -1;
    if (v275 < 64)
    {
      v276 = ~(-1 << v275);
    }

    v277 = v276 & *(v405 + 64);
    v49 = (v275 + 63) >> 6;
    v444 = (v443 + 1);
    v445 = (v443 + 2);
    v441 = v422 + 8;
    swift_bridgeObjectRetain_n();
    v278 = 0;
    v279 = MEMORY[0x277D84F90];
LABEL_139:
    v280 = v278;
    if (!v277)
    {
      goto LABEL_141;
    }

    do
    {
      v278 = v280;
LABEL_144:
      v281 = __clz(__rbit64(v277));
      v277 &= v277 - 1;
      v282 = v443[2];
      v283 = v403;
      v282(v403, *(v273 + 56) + v443[9] * (v281 | (v278 << 6)), v46);
      if (sub_274BF2334())
      {
        v282(v399, v283, v46);
        v452 = sub_274BF2374();
        v450 = v284;
        v285 = sub_274BF2364();
        v448 = v286;
        v449 = v285;
        v287 = v398;
        sub_274BF2354();
        if (__swift_getEnumTagSinglePayload(v287, 1, v98) == 1)
        {
          sub_274B17578(v287, &qword_28098E138);
          v446 = 0;
          v447 = 0;
        }

        else
        {
          v288 = sub_274BF4C14();
          v446 = v289;
          v447 = v288;
          (*v441)(v287, v98);
        }

        v290 = v399;
        v442 = sub_274BF2324();
        sub_274BF2384();
        v291 = sub_274BF4FA4();
        v439 = v292;
        v440 = v291;
        v438 = sub_274BF2344();
        v294 = v293;
        v295 = *v444;
        v296 = v453;
        (*v444)(v290, v453);
        v295(v403, v296);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v279 = sub_274BBBBCC(0, *(v279 + 16) + 1, 1, v279);
        }

        v298 = *(v279 + 16);
        v297 = *(v279 + 24);
        if (v298 >= v297 >> 1)
        {
          v279 = sub_274BBBBCC(v297 > 1, v298 + 1, 1, v279);
        }

        *(v279 + 16) = v298 + 1;
        v299 = (v279 + 104 * v298);
        v300 = v449;
        v301 = v450;
        v299[4] = v452;
        v299[5] = v301;
        v299[6] = v300;
        v302 = v447;
        v299[7] = v448;
        v299[8] = 0;
        v299[9] = 0;
        v299[10] = v302;
        v303 = v442;
        v299[11] = v446;
        v299[12] = v303;
        v304 = v439;
        v299[13] = v440;
        v299[14] = v304;
        v299[15] = v438;
        v299[16] = v294;
        v98 = v429;
        v46 = v453;
        v273 = v405;
        goto LABEL_139;
      }

      (*v444)(v283, v46);
      v280 = v278;
      v273 = v405;
    }

    while (v277);
LABEL_141:
    while (1)
    {
      v278 = v280 + 1;
      if (__OFADD__(v280, 1))
      {
        break;
      }

      if (v278 >= v49)
      {

        v454 = v279;

        v305 = v397;
        sub_274BAEE58(&v454, sub_274BBFDE4, sub_274BBCBEC);
        v449 = v305;
        if (v305)
        {
          v395 = v449;
          goto LABEL_230;
        }

        v306 = MEMORY[0x277D84F90];

        v308 = v455 + 56;
        v307 = *(v455 + 56);
        v439 = v454;
        v440 = v455;
        v309 = 1 << *(v455 + 32);
        v310 = -1;
        if (v309 < 64)
        {
          v310 = ~(-1 << v309);
        }

        v311 = v310 & v307;
        v312 = (v309 + 63) >> 6;
        v452 = (v443 + 4);

        v313 = 0;
        v314 = v306;
        while (1)
        {
          v315 = v404;
          if (!v311)
          {
            break;
          }

          v49 = v452;
LABEL_166:
          v317 = (*(v440 + 6) + ((v313 << 10) | (16 * __clz(__rbit64(v311)))));
          v318 = v317[1];
          if (*(v273 + 16))
          {
            v319 = *v317;

            v320 = sub_274BDA830(v319, v318);
            if (v321)
            {
              v322 = *(v273 + 56) + v443[9] * v320;
              v315 = v404;
              v323 = v453;
              (v443[2])(v404, v322, v453);
              v324 = v315;
              v325 = 0;
            }

            else
            {
              v315 = v404;
              v324 = v404;
              v325 = 1;
              v323 = v453;
            }

            __swift_storeEnumTagSinglePayload(v324, v325, 1, v323);
            v49 = v452;
          }

          else
          {
            v323 = v453;
            __swift_storeEnumTagSinglePayload(v404, 1, 1, v453);
          }

          v326 = v402;
          sub_274BBF758(v315, v402);
          if (__swift_getEnumTagSinglePayload(v326, 1, v323) == 1)
          {
            [objc_allocWithZone(MEMORY[0x277D7C660]) init];
            v450 = v314;
            v327 = v49;
            v328 = v401;
            sub_274BF2314();

            sub_274B17578(v326, &qword_28098E130);
            v329 = *v327;
            v314 = v450;
          }

          else
          {

            v329 = *v49;
            v328 = v401;
            v329(v401, v326, v323);
          }

          v329(v406, v328, v323);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v314 = sub_274BBBABC(0, *(v314 + 16) + 1, 1, v314);
          }

          v331 = *(v314 + 16);
          v330 = *(v314 + 24);
          if (v331 >= v330 >> 1)
          {
            v314 = sub_274BBBABC(v330 > 1, v331 + 1, 1, v314);
          }

          v311 &= v311 - 1;
          *(v314 + 16) = v331 + 1;
          v329((v314 + ((*(v443 + 80) + 32) & ~*(v443 + 80)) + v443[9] * v331), v406, v453);
          v273 = v405;
        }

        v49 = v452;
        while (1)
        {
          v316 = v313 + 1;
          if (__OFADD__(v313, 1))
          {
            goto LABEL_223;
          }

          if (v316 >= v312)
          {

            v454 = v314;

            v49 = v449;
            sub_274BAEDB0(&v454);
            if (v49)
            {
              goto LABEL_228;
            }

            v332 = v454[2];
            v333 = v451;
            v334 = v408;
            if (v332)
            {
              v437 = v454;
              v438 = 0;
              v335 = v454 + ((*(v443 + 80) + 32) & ~*(v443 + 80));
              v442 = v443[9];
              v450 = MEMORY[0x277D84F90];
              v443 = v443[2];
              do
              {
                v336 = v409;
                v337 = v453;
                (v443)(v409, v335, v453);
                v338 = sub_274BF2374();
                v340 = v339;
                v341 = sub_274BF2364();
                v447 = v342;
                sub_274BF2354();
                v343 = v429;
                v344 = __swift_getEnumTagSinglePayload(v334, 1, v429);
                v452 = v338;
                v448 = v341;
                v449 = v340;
                if (v344 == 1)
                {
                  sub_274B17578(v334, &qword_28098E138);
                  v446 = 0;
                  v345 = 0;
                }

                else
                {
                  v446 = sub_274BF4C14();
                  v345 = v346;
                  (*v441)(v334, v343);
                }

                v347 = sub_274BF2324();
                sub_274BF2384();
                v348 = sub_274BF4FA4();
                v350 = v349;
                v351 = sub_274BF2344();
                v353 = v352;
                (*v444)(v336, v337);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v354 = v450;
                }

                else
                {
                  v354 = sub_274BBBBCC(0, *(v450 + 16) + 1, 1, v450);
                }

                v356 = *(v354 + 16);
                v355 = *(v354 + 24);
                if (v356 >= v355 >> 1)
                {
                  v354 = sub_274BBBBCC(v355 > 1, v356 + 1, 1, v354);
                }

                *(v354 + 16) = v356 + 1;
                v450 = v354;
                v357 = (v354 + 104 * v356);
                v358 = v448;
                v359 = v449;
                v357[4] = v452;
                v357[5] = v359;
                v357[6] = v358;
                v360 = v446;
                v357[7] = v447;
                v357[8] = 0;
                v357[9] = 0;
                v357[10] = v360;
                v357[11] = v345;
                v357[12] = v347;
                v357[13] = v348;
                v357[14] = v350;
                v357[15] = v351;
                v357[16] = v353;
                v335 += v442;
                --v332;
                v333 = v451;
                v334 = v408;
              }

              while (v332);

              v49 = v438;
            }

            else
            {

              v450 = MEMORY[0x277D84F90];
            }

            v361 = sub_274BF2444();
            if (!v361)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E140);
              v361 = sub_274BF4E14();
            }

            v454 = sub_274BBC8FC(v361);
            sub_274BAEE58(&v454, sub_274BBFDBC, sub_274BBC9B8);
            if (v49)
            {
              goto LABEL_228;
            }

            v362 = v454;
            v444 = v454[2];
            if (v444)
            {
              v363 = 0;
              v443 = v454 + 4;
              v452 = (v407 + 8);
              v453 = (v407 + 16);
              v364 = MEMORY[0x277D84F90];
              v442 = v454;
              while (v363 < v362[2])
              {
                v365 = &v443[3 * v363];
                v366 = *v365;
                v367 = v365[2];
                v368 = *(v367 + 16);
                v449 = v365[1];
                if (v368)
                {
                  v446 = v366;
                  v447 = v363;
                  v448 = v364;
                  v454 = MEMORY[0x277D84F90];

                  sub_274B63DF4();
                  v369 = v454;
                  v370 = *(v407 + 80);
                  v445 = v367;
                  v371 = v367 + ((v370 + 32) & ~v370);
                  v372 = *(v407 + 72);
                  v373 = *(v407 + 16);
                  do
                  {
                    v374 = v431;
                    v375 = v432;
                    v373(v431, v371, v432);
                    v376 = sub_274BF22B4();
                    v378 = v377;
                    (*v452)(v374, v375);
                    v454 = v369;
                    v379 = v369[2];
                    if (v379 >= v369[3] >> 1)
                    {
                      sub_274B63DF4();
                      v369 = v454;
                    }

                    v369[2] = v379 + 1;
                    v380 = &v369[2 * v379];
                    v380[4] = v376;
                    v380[5] = v378;
                    v371 += v372;
                    --v368;
                  }

                  while (v368);

                  v363 = v447;
                  v364 = v448;
                  v362 = v442;
                  v366 = v446;
                }

                else
                {

                  v369 = MEMORY[0x277D84F90];
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_274BBBDDC();
                  v364 = v384;
                }

                v49 = v451;
                v381 = *(v364 + 16);
                if (v381 >= *(v364 + 24) >> 1)
                {
                  sub_274BBBDDC();
                  v364 = v385;
                }

                ++v363;
                *(v364 + 16) = v381 + 1;
                v382 = (v364 + 24 * v381);
                v383 = v449;
                v382[4] = v366;
                v382[5] = v383;
                v382[6] = v369;
                if (v363 == v444)
                {
                  v386 = v49;

                  goto LABEL_214;
                }
              }

              goto LABEL_226;
            }

            v386 = v333;

            v364 = MEMORY[0x277D84F90];
LABEL_214:
            v387 = v430;

            v388 = v434;

            v389 = v435;

            v390 = v450;

            v452 = v388;
            v453 = v387;
            v449 = v389;
            v118 = v386;
            v119 = v390;
            v120 = v364;
            v121 = v391;
            goto LABEL_215;
          }

          v311 = *(v308 + 8 * v316);
          ++v313;
          if (v311)
          {
            v313 = v316;
            goto LABEL_166;
          }
        }
      }

      v277 = *(v274 + 8 * v278);
      ++v280;
      if (v277)
      {
        goto LABEL_144;
      }
    }

LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
  }

  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  v395 = v49;
LABEL_230:

  __break(1u);
  return result;
}

uint64_t sub_274BB2AFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF2364();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274BB2B28(uint64_t a1)
{
  v46 = sub_274BF2394();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_274BF2404();
  MEMORY[0x28223BE20](v50);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v37 - v6;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  v42 = (v2 + 8);
  v43 = v10 + 16;
  v44 = v10;
  v47 = v9;
  v48 = (v10 + 32);
  v38 = xmmword_274BF8D80;
  for (i = a1; ; a1 = i)
  {
    if (v47 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v11 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v12 = *(v44 + 72);
    (*(v44 + 16))(v49, a1 + v11 + v12 * v7, v50);
    v13 = v45;
    sub_274BF22A4();
    v14 = sub_274BF2364();
    v16 = v15;
    (*v42)(v13, v46);
    v18 = sub_274BDA830(v14, v16);
    v19 = v8[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_274BBC4EC(v21, 1);
      v8 = v51;
      v23 = sub_274BDA830(v14, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v8[7];
      v26 = *v48;
      (*v48)(v41, v49, v50);
      v27 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v27;
      v39 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_274BBBEA8(0, *(v27 + 16) + 1, 1, v27);
        *(v25 + 8 * v18) = v27;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_274BBBEA8(v29 > 1, v30 + 1, 1, v27);
        *(v25 + 8 * v18) = v27;
      }

      *(v27 + 16) = v30 + 1;
      v39((v27 + v11 + v30 * v12), v41, v50);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E168);
      v31 = swift_allocObject();
      *(v31 + 16) = v38;
      (*v48)((v31 + v11), v49, v50);
      v8[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v8[6] + 16 * v18);
      *v32 = v14;
      v32[1] = v16;
      *(v8[7] + 8 * v18) = v31;
      v33 = v8[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v8[2] = v35;
    }

    ++v7;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_274BF5C44();
  __break(1u);
  return result;
}

uint64_t sub_274BB2F44(uint64_t a1)
{
  v56 = sub_274BF4BB4();
  MEMORY[0x28223BE20](v56);
  v55 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E138);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v46 - v4;
  v6 = sub_274BF2394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = v46 - v11;
  v12 = sub_274BF2414();
  v14 = v13;
  v15 = sub_274BF2424();
  v16 = *(v15 + 16);
  if (v16)
  {
    v47 = v14;
    v48 = v12;
    v49 = a1;
    v67 = MEMORY[0x277D84F90];
    sub_274B63ECC();
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v52 = v18;
    v19 = v67;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v46[1] = v15;
    v21 = v15 + v20;
    v22 = *(v17 + 56);
    v50 = (v17 - 8);
    v51 = v22;
    v53 = v17;
    v54 = v5;
    do
    {
      v65 = v19;
      v23 = v66;
      v24 = v52;
      v52(v66, v21, v6);
      v24(v9, v23, v6);
      v25 = sub_274BF2374();
      v63 = v26;
      v64 = v25;
      v27 = sub_274BF2364();
      v61 = v28;
      v62 = v27;
      sub_274BF2354();
      v29 = sub_274BF4C44();
      if (__swift_getEnumTagSinglePayload(v5, 1, v29) == 1)
      {
        sub_274B17578(v5, &qword_28098E138);
        v59 = 0;
        v60 = 0;
      }

      else
      {
        v30 = sub_274BF4C14();
        v59 = v31;
        v60 = v30;
        (*(*(v29 - 8) + 8))(v5, v29);
      }

      v58 = sub_274BF2324();
      sub_274BF2384();
      v32 = sub_274BF4FA4();
      v34 = v33;
      v35 = sub_274BF2344();
      v57 = v36;
      v37 = *v50;
      (*v50)(v9, v6);
      v37(v66, v6);
      v19 = v65;
      v67 = v65;
      v38 = *(v65 + 16);
      if (v38 >= *(v65 + 24) >> 1)
      {
        sub_274B63ECC();
        v19 = v67;
      }

      *(v19 + 16) = v38 + 1;
      v39 = (v19 + 104 * v38);
      v40 = v63;
      v39[4] = v64;
      v39[5] = v40;
      v41 = v61;
      v39[6] = v62;
      v39[7] = v41;
      v39[8] = 0;
      v39[9] = 0;
      v42 = v59;
      v39[10] = v60;
      v39[11] = v42;
      v39[12] = v58;
      v39[13] = v32;
      v39[14] = v34;
      v39[15] = v35;
      v21 += v51;
      v39[16] = v57;
      --v16;
      v5 = v54;
    }

    while (v16);
    v43 = sub_274BF2434();
    (*(*(v43 - 8) + 8))(v49, v43);

    v14 = v47;
    v12 = v48;
  }

  else
  {

    v44 = sub_274BF2434();
    (*(*(v44 - 8) + 8))(a1, v44);
  }

  if (v14)
  {
    return v12;
  }

  else
  {
    return 0x65746163206F6E3CLL;
  }
}

uint64_t sub_274BB33D4()
{
  v0 = sub_274BF2364();
  v2 = v1;
  if (v0 == sub_274BF2364() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_274BF5C24();
  }

  return v5 & 1;
}

uint64_t sub_274BB34CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E300);
  sub_274BC19D4(&unk_28098E308);
  return sub_274BF4034();
}

uint64_t sub_274BB3570@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E310);
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v40 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E318);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E320);
  v52 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v58 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v40 - v11;
  MEMORY[0x28223BE20](v12);
  v48 = &v40 - v13;
  MEMORY[0x28223BE20](v14);
  v46 = &v40 - v15;
  MEMORY[0x28223BE20](v16);
  v49 = &v40 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  sub_274BF38A4();
  v64 = a1;
  sub_274BC0690();
  v43 = v20;
  sub_274BF4994();
  sub_274BF38A4();
  v63 = a1;
  sub_274BF4994();
  sub_274BF38A4();
  v62 = a1;
  sub_274BF4994();
  sub_274BF38A4();
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E330);
  sub_274BC19D4(&unk_28098E338);
  v21 = v47;
  sub_274BF4994();
  sub_274BF38A4();
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E340);
  sub_274BC0704();
  v22 = v51;
  sub_274BF4994();
  v23 = *(v52 + 16);
  v24 = v48;
  v25 = v20;
  v26 = v44;
  v23(v48, v25, v44);
  v27 = v50;
  v23(v50, v49, v26);
  v23(v58, v46, v26);
  v42 = *(v55 + 16);
  v42(v54, v21, v57);
  v41 = *(v59 + 16);
  v28 = v53;
  v41(v53, v22, v56);
  v29 = v45;
  v23(v45, v24, v26);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E360);
  v23(&v29[v30[12]], v27, v26);
  v23(&v29[v30[16]], v58, v26);
  v31 = v29;
  v32 = &v29[v30[20]];
  v33 = v54;
  v34 = v57;
  v42(v32, v54, v57);
  v35 = v56;
  v41(&v31[v30[24]], v28, v56);
  v36 = *(v59 + 8);
  v59 += 8;
  v36(v51, v35);
  v37 = *(v55 + 8);
  v37(v47, v34);
  v38 = *(v52 + 8);
  v38(v46, v26);
  v38(v49, v26);
  v38(v43, v26);
  v36(v53, v35);
  v37(v33, v34);
  v38(v58, v26);
  v38(v50, v26);
  return (v38)(v48, v26);
}

uint64_t sub_274BB3DB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[6];
  if (*(v4 + 16))
  {
    v6 = 0x8000000274C0C660;
    v7 = 0x8000000274C0C680;

    v8 = 0xD000000000000049;
    v9 = 0x1000000000000017;
  }

  else
  {
    v4 = 0;
    v9 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a2 = v3;
  a2[1] = 0xD000000000000010;
  a2[2] = 0x8000000274C0C610;
  a2[3] = 0xD000000000000025;
  a2[4] = 0x8000000274C0C630;
  a2[5] = v4;
  a2[6] = v9;
  a2[7] = v6;
  a2[8] = v8;
  a2[9] = v7;
  a2[10] = v5;
  a2[11] = 0x1000000000000017;
  a2[12] = 0x8000000274C0C6D0;
  a2[13] = 0xD000000000000033;
  a2[14] = 0x8000000274C0C6F0;
  swift_bridgeObjectRetain_n();

  sub_274BC0830(v4);
  sub_274BC0880(v4);
}

uint64_t sub_274BB3F54()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E358);
  sub_274BC19D4(&unk_28098E368);
  sub_274BC19D4(&unk_28098E350);
  return sub_274BF4944();
}

uint64_t sub_274BB4088(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E370);
  sub_274BC07CC(&unk_28098E378);
  return sub_274BF3354();
}

uint64_t sub_274BB4184()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274BC19D4(&qword_28098DA88);
  return sub_274BF4944();
}

uint64_t sub_274BB42B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_274BF5C24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F436E6F69746361 && a2 == 0xEB00000000746E75;
      if (v7 || (sub_274BF5C24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
        if (v8 || (sub_274BF5C24() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000274C0C790 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_274BF5C24();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_274BB4470(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6F436E6F69746361;
      break;
    case 3:
      result = 0x736E6F6974636573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274BB4514(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC09A8();
  sub_274BF5D84();
  LOBYTE(v11) = 0;
  sub_274BF5B84();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_274BF5B84();
    LOBYTE(v11) = 2;
    sub_274BF5BA4();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3A8);
    sub_274BC0B3C();
    sub_274BF5BB4();
    v11 = *(v3 + 48);
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    sub_274BC0AD4(&qword_280989848);
    sub_274BF5BB4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274BB476C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E398);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC09A8();
  sub_274BF5D74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v25) = 0;
  v9 = sub_274BF5B44();
  v11 = v10;
  v22 = v9;
  LOBYTE(v25) = 1;
  v12 = sub_274BF5B44();
  v23 = v13;
  v21 = v12;
  LOBYTE(v25) = 2;
  v20 = sub_274BF5B54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3A8);
  v24 = 3;
  sub_274BC09FC();
  sub_274BF5B64();
  v19 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  v24 = 4;
  sub_274BC0AD4(&unk_28098E3C0);
  sub_274BF5B64();
  (*(v6 + 8))(v8, v5);
  v14 = v25;

  v15 = v23;

  v16 = v19;

  __swift_destroy_boxed_opaque_existential_0(a1);

  v18 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v20;
  a2[5] = v16;
  a2[6] = v14;
  return result;
}

uint64_t sub_274BB4B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274BB42B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274BB4B34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BB4468();
  *a1 = result;
  return result;
}

uint64_t sub_274BB4B5C(uint64_t a1)
{
  v2 = sub_274BC09A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274BB4B98(uint64_t a1)
{
  v2 = sub_274BC09A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_274BB4BD4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_274BB476C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_274BB4C68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_274BF5C24();

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

uint64_t sub_274BB4D30(char a1)
{
  if (a1)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_274BB4D60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E390);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0954();
  sub_274BF5D84();
  v13 = 0;
  sub_274BF5B84();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E220);
    sub_274BC0408();
    sub_274BF5BB4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_274BB4F04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0954();
  sub_274BF5D74();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_274BF5B44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E220);
    v9[15] = 1;
    sub_274BC0180();
    sub_274BF5B64();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_274BB5110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274BB4C68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274BB5138(uint64_t a1)
{
  v2 = sub_274BC0954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274BB5174(uint64_t a1)
{
  v2 = sub_274BC0954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274BB51FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_274BF5C24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
      if (v7 || (sub_274BF5C24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746169636F737361 && a2 == 0xED00007070416465;
        if (v8 || (sub_274BF5C24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000;
          if (v9 || (sub_274BF5C24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_274BF5C24() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
            {

              return 6;
            }

            else
            {
              v12 = sub_274BF5C24();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_274BB5448(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x736C6961746564;
      break;
    case 3:
      result = 0x746169636F737361;
      break;
    case 4:
      result = 0x7364726F7779656BLL;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x696C696269736976;
      break;
    default:
      return result;
  }

  return result;
}