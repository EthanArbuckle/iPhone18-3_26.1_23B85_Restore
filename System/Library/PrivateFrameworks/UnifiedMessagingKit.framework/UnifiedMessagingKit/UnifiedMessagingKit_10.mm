uint64_t MessageAction.hash(into:)()
{
  v1 = *(v0 + 40);
  sub_2705D7634();
  sub_270464040();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x2743A47E0](0);
      goto LABEL_7;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2743A47E0](v2);
  sub_2705D7634();
LABEL_7:
  v3 = type metadata accessor for MessageAction();
  type metadata accessor for MessageViewStyle(0);
  sub_2705D7634();
  return MEMORY[0x2743A47E0](*(v0 + *(v3 + 24)));
}

uint64_t MessageAction.hashValue.getter()
{
  v1 = v0;
  sub_2705D83B4();
  v2 = *(v0 + 40);
  sub_2705D7634();
  sub_270464040();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2743A47E0](0);
      goto LABEL_7;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2743A47E0](v3);
  sub_2705D7634();
LABEL_7:
  v4 = type metadata accessor for MessageAction();
  type metadata accessor for MessageViewStyle(0);
  sub_2705D7634();
  MEMORY[0x2743A47E0](*(v1 + *(v4 + 24)));
  return sub_2705D8414();
}

uint64_t sub_270481620(uint64_t a1, uint64_t a2)
{
  sub_2705D83B4();
  MessagePlacement.hash(into:)();
  type metadata accessor for MessageViewStyle(0);
  sub_2705D7634();
  MEMORY[0x2743A47E0](*(v2 + *(a2 + 24)));
  return sub_2705D8414();
}

unint64_t sub_2704816C8()
{
  result = qword_2807D3C38;
  if (!qword_2807D3C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C38);
  }

  return result;
}

uint64_t sub_27048171C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2704817D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_270481884(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2704818E8()
{
  result = qword_2807D3C40;
  if (!qword_2807D3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C40);
  }

  return result;
}

unint64_t sub_270481940()
{
  result = qword_2807D3C48;
  if (!qword_2807D3C48)
  {
    type metadata accessor for MessageAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C48);
  }

  return result;
}

uint64_t sub_2704819AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MessageViewStyle(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270481A48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessageViewStyle(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270481AC8()
{
  result = type metadata accessor for MessageViewStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageAction.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270481C18);
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

uint64_t OUTLINED_FUNCTION_0_41()
{

  return sub_2704817D8(v0, type metadata accessor for MessagePlacementActionObject);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_2704817D8(v0, type metadata accessor for MessageViewStyle);
}

uint64_t OUTLINED_FUNCTION_5_39()
{

  return sub_27046DCA4(v1, v0);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_270481CE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_270481D24(uint64_t result, int a2, int a3)
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

uint64_t sub_270481D74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000270612DC0 == a2;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002706143C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

unint64_t sub_270481E48(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_270481E80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C60);
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270482144();
  sub_2705D8484();
  if (!v1)
  {
    v4 = sub_2705D7F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C70);
    sub_270482198();
    sub_2705D7FA4();
    v6 = OUTLINED_FUNCTION_0_42();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_270482074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270481D74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27048209C(uint64_t a1)
{
  v2 = sub_270482144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704820D8(uint64_t a1)
{
  v2 = sub_270482144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270482114@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270481E80(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_270482144()
{
  result = qword_2807D3C68;
  if (!qword_2807D3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C68);
  }

  return result;
}

unint64_t sub_270482198()
{
  result = qword_2807D3C78;
  if (!qword_2807D3C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3C70);
    sub_27048221C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C78);
  }

  return result;
}

unint64_t sub_27048221C()
{
  result = qword_2807D3C80;
  if (!qword_2807D3C80)
  {
    type metadata accessor for MessagePlacementActionObject();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageActionObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270482340);
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

unint64_t sub_27048237C()
{
  result = qword_2807D3C88;
  if (!qword_2807D3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C88);
  }

  return result;
}

unint64_t sub_2704823D4()
{
  result = qword_2807D3C90;
  if (!qword_2807D3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C90);
  }

  return result;
}

unint64_t sub_27048242C()
{
  result = qword_2807D3C98;
  if (!qword_2807D3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3C98);
  }

  return result;
}

void sub_270482490()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  OUTLINED_FUNCTION_23_0(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_16_17();
  sub_27048A938(v11, v12, &qword_2807CEDD0);
  v13 = sub_2705D78D4();
  v14 = OUTLINED_FUNCTION_30_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_270474A7C(v0, &qword_2807CEDD0);
  }

  else
  {
    sub_2705D78C4();
    OUTLINED_FUNCTION_4_4();
    v17 = OUTLINED_FUNCTION_76_0();
    v18(v17);
  }

  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = v20;
    sub_2705D7844();
    OUTLINED_FUNCTION_42_4();
    if (v8)
    {
LABEL_6:
      sub_2705D75F4();
      OUTLINED_FUNCTION_42();
      v22 = swift_allocObject();
      *(v22 + 16) = v4;
      *(v22 + 24) = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D90);
      v23 = v19 | v21;
      if (v19 | v21)
      {
        OUTLINED_FUNCTION_37_5();
      }

      OUTLINED_FUNCTION_36_7(v23);
      swift_task_create();

      sub_270474A7C(v6, &qword_2807CEDD0);

      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  sub_270474A7C(v6, &qword_2807CEDD0);
  OUTLINED_FUNCTION_42();
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D90);
  if (v19 | v21)
  {
    OUTLINED_FUNCTION_35_7();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_25_1();
}

void sub_270482728()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_40_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_16_17();
  sub_27048A938(v12, v13, &qword_2807CEDD0);
  v14 = sub_2705D78D4();
  v15 = OUTLINED_FUNCTION_30_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_270474A7C(v0, &qword_2807CEDD0);
  }

  else
  {
    sub_2705D78C4();
    OUTLINED_FUNCTION_4_4();
    (*(v18 + 8))(v0, v14);
  }

  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = v20;
    sub_2705D7844();
    OUTLINED_FUNCTION_42_4();
    if (v8)
    {
LABEL_6:
      sub_2705D75F4();
      OUTLINED_FUNCTION_42();
      v22 = swift_allocObject();
      *(v22 + 16) = v4;
      *(v22 + 24) = v2;

      if (v19 | v21)
      {
        OUTLINED_FUNCTION_37_5();
      }

      else
      {
        v23 = 0;
      }

      OUTLINED_FUNCTION_36_7(v23);
      swift_task_create();

      sub_270474A7C(v6, &qword_2807CEDD0);

      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  sub_270474A7C(v6, &qword_2807CEDD0);
  OUTLINED_FUNCTION_42();
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = v2;
  if (v19 | v21)
  {
    OUTLINED_FUNCTION_35_7();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2704829AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2703E43D4(a1, &v11);
    v7 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(&v11, v12);
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_1_35();
    (*(v9 + 16))(v4);
    sub_270489A18(v4, a2, a3, v3, v7);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    sub_270474A7C(a1, &qword_2807D3D80);
    sub_270489230(a2, a3, &v11);

    return sub_270474A7C(&v11, &qword_2807D3D80);
  }
}

uint64_t sub_270482AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_270474A7C(a1, &qword_2807D3CD8);
    sub_270489324(a2, v8);
    v13 = sub_2705D45C4();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_270474A7C(v8, &qword_2807D3CD8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2703BC684(v12, a2);
    *v3 = v17;
    v15 = sub_2705D45C4();
    return (*(*(v15 - 8) + 8))(a2, v15);
  }
}

uint64_t sub_270483020(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v18[1] = v6 + 8;
  v18[2] = v6 + 16;
  v20 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v6 + 16))(v8, *(v20 + 56) + *(v6 + 72) * (v17 | (v16 << 6)), v5);
    v19(v8);
    result = (*(v6 + 8))(v8, v5);
    if (v3)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2704831F4()
{
  type metadata accessor for MessageCenter();
  v0 = swift_allocObject();
  result = sub_270483290();
  qword_2807D3CA0 = v0;
  return result;
}

uint64_t static MessageCenter.shared.getter()
{
  if (qword_2807CE880 != -1)
  {
    swift_once();
  }
}

uint64_t sub_270483290()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CF0);
  OUTLINED_FUNCTION_23_0(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v5 = (v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration);
  v6 = type metadata accessor for MessageCenterConfigurationObjects();
  OUTLINED_FUNCTION_43_4(v4, v7, v8, v6);
  *v5 = 0;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8) + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC8);
  OUTLINED_FUNCTION_23_0(v10);
  bzero(v5 + v9, *(v11 + 64));
  sub_27048AC10(v4, v5 + v9);
  v12 = v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_queuedEvents;
  *v12 = 0;
  *(v12 + 8) = MEMORY[0x277D84F90];
  v13 = v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter__coordinatorLock;
  *v13 = 0;
  *(v13 + 8) = 0;
  v14 = v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations;
  sub_2705D45C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
  sub_27048A80C();
  v15 = sub_2705D7494();
  *v14 = 0;
  *(v14 + 8) = v15;
  return v0;
}

void sub_2704833FC(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration);
  v4 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8) + 28);
  type metadata accessor for MessageCenterConfigurationObjects();
  v5 = OUTLINED_FUNCTION_53_2();
  if (__swift_getEnumTagSinglePayload(v5, 1, v2))
  {
    v6 = sub_2705D46F4();
    OUTLINED_FUNCTION_43_4(a1, v7, v8, v6);
  }

  else
  {
    sub_27048A938(&v4[*(v2 + 24)], a1, &qword_2807D3D78);
  }

  os_unfair_lock_unlock(v1);
}

void sub_2704834BC(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration);
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8) + 28);
  v4 = type metadata accessor for MessageCenterConfigurationObjects();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    *(a1 + 59) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    memcpy(__dst, (v3 + 40), 0x4BuLL);
    memcpy(a1, (v3 + 40), 0x4BuLL);
    sub_27048A938(__dst, &v5, &qword_2807D3DB0);
  }

  os_unfair_lock_unlock(v1);
}

void sub_270483588(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8) + 28);
  v4 = type metadata accessor for MessageCenterConfigurationObjects();
  if (__swift_getEnumTagSinglePayload(v1 + v3, 1, v4))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    sub_27048A8D8(v1 + v3, a1);
  }

  os_unfair_lock_unlock(v1);
}

void MessageCenter.configure(with:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = sub_2705D6524();
  v10 = OUTLINED_FUNCTION_23_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_35();
  memcpy(v60, v3, 0x4BuLL);
  v11 = (v1 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8);
  sub_270483CC8(v11 + *(v12 + 28), v60);
  os_unfair_lock_unlock(v11);
  v13 = v60[8];
  v14 = &unk_28081C000;
  if (v60[8])
  {
    v15 = qword_2807CE830;

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    v54 = qword_28081C4F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    OUTLINED_FUNCTION_21_3();
    v16 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v16);
    OUTLINED_FUNCTION_29_8();
    v53 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2705E6EB0;
    v59 = v4;
    v58[0] = v1;

    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      v21 = sub_2705D7564();
      v52 = v4;
      v22 = v21;
      v51 = v23;

      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_19_10();
      MetatypeMetadata = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_25_14(MetatypeMetadata);
      sub_270474A7C(&v55, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v57 = MEMORY[0x277D837D0];
      v55 = v22;
      v4 = v52;
      v56 = v51;
      sub_2705D64E4();
      v14 = &unk_28081C000;
    }

    else
    {
      sub_2705D6514();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      OUTLINED_FUNCTION_19_10();
      v25 = swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_25_14(v25);
    }

    sub_270474A7C(&v55, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_2705D64C4();
    sub_27047CF60(v18);

    v26 = sub_2705D78D4();
    OUTLINED_FUNCTION_43_4(v8, v27, v28, v26);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v1;
    v29[5] = v13;

    v30 = OUTLINED_FUNCTION_41_4();
    sub_270484CC4(v30, v31, v32, v33, v34);
  }

  v35 = v1 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_queuedEvents;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_queuedEvents));
  v36 = *(v35 + 1);
  *(v35 + 1) = MEMORY[0x277D84F90];
  os_unfair_lock_unlock(v35);
  if (qword_2807CE830 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v54 = v14[158];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  OUTLINED_FUNCTION_21_3();
  v37 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v37);
  OUTLINED_FUNCTION_29_8();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2705E10F0;
  v59 = v4;
  v58[0] = v1;

  v39 = AMSLogKey();
  if (v39)
  {
    v40 = v39;
    v41 = sub_2705D7564();
    v53 = v8;
    v42 = v41;
    v52 = v36;
    v44 = v43;

    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_19_10();
    v45 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_25_14(v45);
    sub_270474A7C(&v55, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v57 = MEMORY[0x277D837D0];
    v55 = v42;
    v56 = v44;
    v8 = v53;
    v36 = v52;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_19_10();
    v46 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_25_14(v46);
  }

  sub_270474A7C(&v55, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v58);
  sub_2705D64C4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
  v58[0] = v36;

  sub_2705D6544();
  sub_270474A7C(v58, &unk_2807D4890);
  sub_27047CF60(v38);

  v47 = sub_2705D78D4();
  OUTLINED_FUNCTION_43_4(v8, v48, v49, v47);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v36;
  v50[5] = v1;

  OUTLINED_FUNCTION_41_4();
  sub_270482728();

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270483CC8(uint64_t a1, const void *a2)
{
  v20 = a1;
  memcpy(__dst, a2, sizeof(__dst));
  v21 = sub_2705D46C4();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MessageCenterConfigurationObjects();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270474A7C(a1, &qword_2807D3CF0);
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 99) = 0u;
  *(v12 + 40) = 0u;
  v13 = *(v10 + 24);
  v19 = v13;
  v14 = sub_2705D46F4();
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v14);
  v15 = type metadata accessor for JavascriptService();
  v16 = swift_allocObject();
  *(v12 + 3) = v15;
  *(v12 + 4) = &off_288055510;
  *v12 = v16;
  memcpy(v24, v12 + 40, 0x4BuLL);
  sub_27048AAE4(a2, v22);
  sub_270474A7C(v24, &qword_2807D3DB0);
  memcpy(v12 + 40, __dst, 0x4BuLL);
  memcpy(v22, a2, 0x4BuLL);
  sub_27048B4B4();
  (*(v4 + 104))(v6, *MEMORY[0x277D7EAB8], v21);
  sub_2705D60D4();
  sub_2705D4DF4();
  sub_2705D46E4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  sub_27048AB48(v9, &v12[v19]);
  v17 = v20;
  sub_27048ABB8(v12, v20);
  return __swift_storeEnumTagSinglePayload(v17, 0, 1, v10);
}

uint64_t sub_270483FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_27048400C, 0, 0);
}

uint64_t sub_27048400C()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC0);
  v2 = OUTLINED_FUNCTION_64_2();
  *(v2 + 16) = xmmword_2705DC030;
  *(v2 + 32) = v1;

  v3 = sub_270484294(v2);
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2704840F4;

  return sub_270484404(v3);
}

uint64_t sub_2704840F4()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_5_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {

    *(v5 + 64) = v3;
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_270484208()
{
  **(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_1_4();
  return v1();
}

uint64_t sub_270484238()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270484294(uint64_t a1)
{
  sub_2704834BC(v7);
  v2 = *&v7[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98);
  if (v2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2705DC030;
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
    *(inited + 48) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v4 = sub_2705D7494();
    sub_270474A7C(v7, &qword_2807D3DB0);
  }

  else
  {
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_2705DC030;
    *(v5 + 32) = 0x73746E657665;
    *(v5 + 40) = 0xE600000000000000;
    *(v5 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
    *(v5 + 48) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    return sub_2705D7494();
  }

  return v4;
}

uint64_t sub_270484404(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v2[41] = *v1;
  sub_2705D6524();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2704844BC, 0, 0);
}

uint64_t sub_2704844BC()
{
  v41 = v0;
  sub_270483588((v0 + 2));
  v3 = v0[5];
  sub_270474A7C((v0 + 2), &qword_2807D3DA0);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v4 = MEMORY[0x277D837D0];
    v5 = sub_2705D7494();
    v6 = sub_27046C7B8(v5);
    sub_27046BE40(v6);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v39[0] = v14;
    v39[1] = v16;
    v40 = v18;
    sub_270488420(v39);
    sub_2703AE630(v14, v16, v18);
    if (qword_2807CE830 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    v19 = v0[40];
    v20 = v0[41];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v21 = OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_1_1(v21);
    OUTLINED_FUNCTION_29_8();
    v22 = OUTLINED_FUNCTION_50_3();
    *(v22 + 16) = xmmword_2705E6EB0;
    v0[26] = v20;
    v0[23] = v19;

    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      v25 = (v0 + 35);
      v26 = sub_2705D7564();
      v28 = v27;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v29 = OUTLINED_FUNCTION_66_2();
      v0[34] = swift_getMetatypeMetadata();
      v0[31] = v29;
      sub_2705D64E4();
      sub_270474A7C((v0 + 31), &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v0[38] = v4;
      v0[35] = v26;
      v0[36] = v28;
    }

    else
    {
      v25 = (v0 + 27);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v36 = OUTLINED_FUNCTION_66_2();
      v0[30] = swift_getMetatypeMetadata();
      v0[27] = v36;
    }

    sub_2705D64E4();
    sub_270474A7C(v25, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v0 + 23));
    sub_2705D64C4();
    sub_27047CF60(v22);
  }

  else
  {
    if (qword_2807CE830 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    v7 = v0[40];
    v8 = v0[41];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v9 = OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_1_1(v9);
    OUTLINED_FUNCTION_29_8();
    v10 = OUTLINED_FUNCTION_50_3();
    *(v10 + 16) = xmmword_2705E6EB0;
    v0[10] = v8;
    v0[7] = v7;

    if (AMSLogKey())
    {
      v11 = (v0 + 19);
      sub_2705D7564();
      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v12 = OUTLINED_FUNCTION_52_1(v0 + 7);
      v0[18] = swift_getMetatypeMetadata();
      v0[15] = v12;
      sub_2705D64E4();
      sub_270474A7C((v0 + 15), &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v0[22] = MEMORY[0x277D837D0];
      v0[19] = v1;
      v0[20] = v2;
    }

    else
    {
      v11 = (v0 + 11);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      DynamicType = swift_getDynamicType();
      v0[14] = swift_getMetatypeMetadata();
      v0[11] = DynamicType;
    }

    sub_2705D64E4();
    sub_270474A7C(v11, &unk_2807D4890);
    v31 = v0[39];
    v32 = v0[40];
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
    sub_2705D64C4();
    sub_27047CF78(v10);

    v33 = v32 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_queuedEvents;
    os_unfair_lock_lock((v32 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_queuedEvents));

    sub_2704E8CE4();
    v34 = *(*(v33 + 8) + 16);
    sub_2704E8D88(v34);
    v35 = *(v33 + 8);
    *(v35 + 16) = v34 + 1;
    *(v35 + 8 * v34 + 32) = v31;
    os_unfair_lock_unlock(v33);
    v5 = 0;
  }

  v37 = v0[1];

  return v37(v5);
}

void sub_270484A80()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_40_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_23_0(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_16_17();
  sub_27048A938(v10, v11, &qword_2807CEDD0);
  v12 = sub_2705D78D4();
  v13 = OUTLINED_FUNCTION_30_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_270474A7C(v0, &qword_2807CEDD0);
  }

  else
  {
    sub_2705D78C4();
    OUTLINED_FUNCTION_4_4();
    (*(v16 + 8))(v0, v12);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = v18;
    sub_2705D7844();
    OUTLINED_FUNCTION_42_4();
    if (v6)
    {
LABEL_6:
      sub_2705D75F4();
      type metadata accessor for JSEngineCore();

      if (v17 | v19)
      {
        OUTLINED_FUNCTION_37_5();
      }

      else
      {
        v20 = 0;
      }

      OUTLINED_FUNCTION_36_7(v20);
      swift_task_create();

      sub_270474A7C(v4, &qword_2807CEDD0);

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  sub_270474A7C(v4, &qword_2807CEDD0);
  type metadata accessor for JSEngineCore();
  if (v17 | v19)
  {
    OUTLINED_FUNCTION_35_7();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270484CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_27048A938(a3, v21 - v9, &qword_2807CEDD0);
  v11 = sub_2705D78D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_270474A7C(v10, &qword_2807CEDD0);
  }

  else
  {
    sub_2705D78C4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2705D7844();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2705D75F4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DB8);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_270474A7C(a3, &qword_2807CEDD0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270474A7C(a3, &qword_2807CEDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DB8);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_270484F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v5[48] = *a5;
  sub_2705D6524();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27048501C, 0, 0);
}

uint64_t sub_27048501C()
{
  v3 = v0[46];
  v4 = *(v3 + 16);
  v0[50] = v4;
  if (!v4)
  {

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_39_4();

    __asm { BRAA            X1, X16 }
  }

  v0[51] = 0;
  v5 = qword_2807CE830;
  v32 = *(v3 + 32);

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v31 = qword_28081C4F0;
  v0[52] = qword_28081C4F0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v7 = OUTLINED_FUNCTION_44_3(v6);
  OUTLINED_FUNCTION_1_1(v7);
  v0[54] = *(v8 + 72);
  OUTLINED_FUNCTION_28_10();
  v9 = OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_33_8(v9, xmmword_2705E10F0);
  if (AMSLogKey())
  {
    sub_2705D7564();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v10 = OUTLINED_FUNCTION_52_1(v0 + 2);
    v0[37] = swift_getMetatypeMetadata();
    v0[34] = v10;
    sub_2705D64E4();
    sub_270474A7C((v0 + 34), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v0[41] = MEMORY[0x277D837D0];
    v0[38] = v1;
    v0[39] = v2;
    v11 = 93;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v14 = OUTLINED_FUNCTION_26_12();
    v0[9] = swift_getMetatypeMetadata();
    v0[6] = v14;
    v11 = 58;
  }

  sub_2705D64E4();
  v15 = OUTLINED_FUNCTION_40_6();
  sub_270474A7C(v15, v16);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  OUTLINED_FUNCTION_62_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  OUTLINED_FUNCTION_45_4(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32);
  sub_2705D6544();
  sub_270474A7C(v11, &unk_2807D4890);
  sub_27047CF60(v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC0);
  v25 = OUTLINED_FUNCTION_64_2();
  *(v25 + 16) = xmmword_2705DC030;
  *(v25 + 32) = "Handling Message Action: ";
  v0[55] = sub_270484294(v25);

  v26 = swift_task_alloc();
  v0[56] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_1_44(v26);
  OUTLINED_FUNCTION_39_4();

  return sub_270484404(v27);
}

uint64_t sub_27048533C()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270485450()
{
  v3 = v0[51] + 1;
  if (v3 == v0[50])
  {

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_39_4();

    __asm { BRAA            X1, X16 }
  }

  v6 = OUTLINED_FUNCTION_56_1(v3);
  v7 = qword_2807CE830;
  v32 = v6;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v31 = qword_28081C4F0;
  v0[52] = qword_28081C4F0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v9 = OUTLINED_FUNCTION_44_3(v8);
  OUTLINED_FUNCTION_1_1(v9);
  v0[54] = *(v10 + 72);
  OUTLINED_FUNCTION_28_10();
  v11 = OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_33_8(v11, xmmword_2705E10F0);
  if (AMSLogKey())
  {
    sub_2705D7564();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v12 = OUTLINED_FUNCTION_52_1(v0 + 2);
    v0[37] = swift_getMetatypeMetadata();
    v0[34] = v12;
    sub_2705D64E4();
    sub_270474A7C((v0 + 34), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v0[41] = MEMORY[0x277D837D0];
    v0[38] = v1;
    v0[39] = v2;
    v13 = 93;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v14 = OUTLINED_FUNCTION_26_12();
    v0[9] = swift_getMetatypeMetadata();
    v0[6] = v14;
    v13 = 58;
  }

  sub_2705D64E4();
  v15 = OUTLINED_FUNCTION_40_6();
  sub_270474A7C(v15, v16);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  OUTLINED_FUNCTION_62_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  OUTLINED_FUNCTION_45_4(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32);
  sub_2705D6544();
  sub_270474A7C(v13, &unk_2807D4890);
  sub_27047CF60(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC0);
  v25 = OUTLINED_FUNCTION_64_2();
  *(v25 + 16) = xmmword_2705DC030;
  *(v25 + 32) = "Handling Message Action: ";
  v0[55] = sub_270484294(v25);

  v26 = swift_task_alloc();
  v0[56] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_39_4();

  return sub_270484404(v27);
}

uint64_t sub_27048576C()
{
  v1 = v0[47];
  v2 = v0[48];

  v3 = swift_allocObject();
  v0[14] = v1;
  *(v3 + 16) = xmmword_2705E10F0;
  v0[17] = v2;

  v4 = AMSLogKey();
  v5 = MEMORY[0x277D837D0];
  if (v4)
  {
    v6 = v4;
    v7 = sub_2705D7564();
    v9 = v8;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
    DynamicType = swift_getDynamicType();
    v0[29] = swift_getMetatypeMetadata();
    v0[26] = DynamicType;
    sub_2705D64E4();
    sub_270474A7C((v0 + 26), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v0[30] = v7;
    v11 = (v0 + 30);
    v0[33] = v5;
    v0[31] = v9;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v12 = OUTLINED_FUNCTION_32_4(v0 + 14);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v0[18] = v12;
    v11 = (v0 + 18);
    v0[21] = MetatypeMetadata;
  }

  sub_2705D64E4();
  sub_270474A7C(v11, &unk_2807D4890);
  v14 = v0[57];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 14));
  sub_2705D64C4();
  swift_getErrorValue();
  v0[25] = v0[43];
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_4_4();
  (*(v15 + 16))();
  sub_2705D6544();
  sub_270474A7C((v0 + 22), &unk_2807D4890);
  sub_27047CF78(v3);

  v16 = v0[51] + 1;
  if (v16 == v0[50])
  {

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_59_3();

    __asm { BRAA            X1, X16 }
  }

  v19 = OUTLINED_FUNCTION_56_1(v16);
  v20 = qword_2807CE830;
  v39 = v19;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v21 = v0[47];
  v22 = v0[48];
  v0[52] = qword_28081C4F0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v24 = OUTLINED_FUNCTION_44_3(v23);
  OUTLINED_FUNCTION_1_1(v24);
  v0[54] = *(v25 + 72);
  OUTLINED_FUNCTION_28_10();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2705E10F0;
  v0[5] = v22;
  v0[2] = v21;

  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    v29 = (v0 + 38);
    v40 = sub_2705D7564();
    v31 = v30;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v32 = swift_getDynamicType();
    v0[37] = swift_getMetatypeMetadata();
    v0[34] = v32;
    sub_2705D64E4();
    sub_270474A7C((v0 + 34), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v0[41] = MEMORY[0x277D837D0];
    v0[38] = v40;
    v0[39] = v31;
  }

  else
  {
    v29 = (v0 + 6);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v33 = swift_getDynamicType();
    v0[9] = swift_getMetatypeMetadata();
    v0[6] = v33;
  }

  sub_2705D64E4();
  sub_270474A7C(v29, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_2705D64C4();
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  v0[10] = v39;

  sub_2705D6544();
  sub_270474A7C((v0 + 10), &unk_2807D4890);
  sub_27047CF60(v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC0);
  v34 = OUTLINED_FUNCTION_64_2();
  *(v34 + 16) = xmmword_2705DC030;
  *(v34 + 32) = v39;
  v0[55] = sub_270484294(v34);

  v35 = swift_task_alloc();
  v0[56] = v35;
  *v35 = v0;
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_59_3();

  return sub_270484404(v36);
}

uint64_t sub_270485D74()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_8(v1);

  return sub_270484F64(v3, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_7(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_270485EA8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_8(v1);

  return sub_270483FE8(v3, v4, v5, v6, v7);
}

uint64_t MessageCenter.fetchMessage(messagePlacement:)()
{
  OUTLINED_FUNCTION_2_2();
  v3 = v2;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC8);
  OUTLINED_FUNCTION_23_0(v5);
  v6 = swift_task_alloc();
  v7 = *v3;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  v8 = *(v3 + 3);
  *(v1 + 128) = *(v3 + 1);
  *(v1 + 144) = v8;
  *(v1 + 176) = *(v3 + 40);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_270485FF4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 120);
  v4 = *(v0 + 136);
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  v5 = *(v0 + 176);
  *(v0 + 56) = v5;
  *(v0 + 64) = xmmword_2705E1BF0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;

  sub_2703B4984(v2, v1, v5);
  v6 = OUTLINED_FUNCTION_61_3();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_2704860F4;
  v7 = *(v0 + 112);

  return v9(v7, v0 + 16);
}

uint64_t sub_2704860F4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  *(v3 + 168) = v0;

  sub_2704866E4(v3 + 16);
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2704861F4()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 112);
  v2 = type metadata accessor for MessageAction();
  v3 = OUTLINED_FUNCTION_30_9();
  if (__swift_getEnumTagSinglePayload(v3, v4, v2) == 1)
  {
    sub_270474A7C(v1, &qword_2807D3CC8);
    v5 = 1;
  }

  else
  {
    sub_27048A864(v1 + *(v2 + 20), *(v0 + 96));
    sub_270486738(v1);
    v5 = 0;
  }

  v6 = *(v0 + 96);
  v7 = type metadata accessor for MessageViewStyle(0);
  __swift_storeEnumTagSinglePayload(v6, v5, 1, v7);

  OUTLINED_FUNCTION_1_4();

  return v8();
}

uint64_t sub_2704862F0()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_27048634C(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_270486370, 0, 0);
}

uint64_t sub_270486370()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD0);
  inited = swift_initStackObject();
  v0[24] = inited;
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 56) = &type metadata for MessagePlacementRequest;
  *(inited + 64) = &protocol witness table for MessagePlacementRequest;
  v3 = swift_allocObject();
  *(inited + 32) = v3;
  memcpy((v3 + 16), v1, 0x50uLL);
  sub_27048A9F8(v1, (v0 + 2));
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_270486480;
  OUTLINED_FUNCTION_53_2();

  return sub_270487664();
}

uint64_t sub_270486480()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    sub_270489160();
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_270486590()
{
  OUTLINED_FUNCTION_58_2();
  v17 = v0;
  if (*(v0 + 208))
  {
    v1 = *(v0 + 216);
    v2 = sub_27046C7B8(*(v0 + 208));

    sub_27046BE40(v2);
    if (v1)
    {

      OUTLINED_FUNCTION_1_4();
      goto LABEL_7;
    }

    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = *(v0 + 168);

    v15[0] = v10;
    v15[1] = v11;
    v16 = v12;
    MessageAction.init(object:)(v15, v13);
  }

  else
  {
    type metadata accessor for MessageAction();
    v7 = OUTLINED_FUNCTION_30_9();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  }

  OUTLINED_FUNCTION_1_4();
LABEL_7:

  return v6();
}

uint64_t sub_270486680()
{
  OUTLINED_FUNCTION_2_2();
  swift_setDeallocating();
  sub_270489160();
  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270486738(uint64_t a1)
{
  v2 = type metadata accessor for MessageAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageCenter.fetch<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  OUTLINED_FUNCTION_18_11();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2704867C8()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[13];
  v2 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD0);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_2705DC030;
  *(inited + 56) = v1;
  *(inited + 64) = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
  OUTLINED_FUNCTION_4_4();
  (*(v4 + 16))();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_2704868D4;
  OUTLINED_FUNCTION_53_2();

  return sub_270487664();
}

uint64_t sub_2704868D4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
    swift_setDeallocating();
    sub_270489160();
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2704869E4()
{
  v18 = v0;
  if (*(v0 + 144))
  {
    v1 = *(v0 + 152);
    v2 = sub_27046C7B8(*(v0 + 144));

    sub_27046BE40(v2);
    if (v1)
    {

      OUTLINED_FUNCTION_1_4();
      goto LABEL_7;
    }

    v10 = v3;
    v11 = v4;
    v12 = v5;

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16[0] = v10;
    v16[1] = v11;
    v17 = v12;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v7 = OUTLINED_FUNCTION_30_9();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  }

  OUTLINED_FUNCTION_1_4();
LABEL_7:

  return v6();
}

uint64_t sub_270486B60()
{
  OUTLINED_FUNCTION_2_2();
  swift_setDeallocating();
  sub_270489160();
  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t MessageCenter.record(event:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = OUTLINED_FUNCTION_61_3();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_270411828;

  return v8(v5, v1, v3, v4);
}

uint64_t MessageCenter.record(events:)()
{
  OUTLINED_FUNCTION_2_2();
  v1[62] = v2;
  v1[63] = v0;
  v1[64] = *v0;
  v3 = sub_2705D6524();
  OUTLINED_FUNCTION_23_0(v3);
  v1[65] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270486D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  v13 = *(v12[62] + 16);
  v12[66] = v13;
  if (v13)
  {
    v14 = swift_task_alloc();
    v12[67] = v14;
    *v14 = v12;
    v14[1] = sub_270486FF8;
    OUTLINED_FUNCTION_33_7();

    return sub_270487664();
  }

  else
  {
    if (qword_2807CE830 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    v17 = v12[63];
    v18 = v12[64];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v19 = OUTLINED_FUNCTION_49_4();
    OUTLINED_FUNCTION_1_1(v19);
    v21 = *(v20 + 72);
    OUTLINED_FUNCTION_29_8();
    v22 = OUTLINED_FUNCTION_50_3();
    *(v22 + 16) = xmmword_2705E6EB0;
    v12[45] = v18;
    v12[42] = v17;

    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      v25 = (v12 + 54);
      v26 = sub_2705D7564();
      a9 = v21;
      v28 = v27;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v29 = OUTLINED_FUNCTION_32_4(v12 + 42);
      v12[53] = swift_getMetatypeMetadata();
      v12[50] = v29;
      sub_2705D64E4();
      sub_270474A7C((v12 + 50), &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      v12[57] = MEMORY[0x277D837D0];
      v12[54] = v26;
      v12[55] = v28;
    }

    else
    {
      v25 = (v12 + 46);
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      v30 = OUTLINED_FUNCTION_32_4(v12 + 42);
      v12[49] = swift_getMetatypeMetadata();
      v12[46] = v30;
    }

    sub_2705D64E4();
    sub_270474A7C(v25, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1((v12 + 42));
    sub_2705D64C4();
    sub_27047CF78(v22);

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_33_7();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_270486FF8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v2 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;
  *(v4 + 544) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_270487104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  if (qword_2807CE830 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v15 = v12[63];
  v16 = v12[64];
  v32 = qword_28081C4F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v17 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_1_1(v17);
  OUTLINED_FUNCTION_29_8();
  v18 = OUTLINED_FUNCTION_50_3();
  *(v18 + 16) = xmmword_2705E6EB0;
  v12[25] = v16;
  v12[22] = v15;

  if (AMSLogKey())
  {
    v19 = (v12 + 38);
    sub_2705D7564();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v20 = OUTLINED_FUNCTION_32_4(v12 + 22);
    v12[37] = swift_getMetatypeMetadata();
    v12[34] = v20;
    sub_2705D64E4();
    sub_270474A7C((v12 + 34), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v12[41] = MEMORY[0x277D837D0];
    v12[38] = v13;
    v12[39] = v14;
  }

  else
  {
    v19 = (v12 + 26);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v21 = OUTLINED_FUNCTION_32_4(v12 + 22);
    v12[29] = swift_getMetatypeMetadata();
    v12[26] = v21;
  }

  sub_2705D64E4();
  OUTLINED_FUNCTION_63_2(v19);
  v22 = v12[66];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v12 + 22));
  sub_2705D6514();
  sub_2705D6504();
  v12[33] = MEMORY[0x277D83B88];
  v12[30] = v22;
  sub_2705D64E4();
  OUTLINED_FUNCTION_63_2((v12 + 30));
  sub_2705D6504();
  sub_2705D6534();
  sub_27047CF60(v18);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_33_7();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

uint64_t sub_27048739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_58_2();
  if (qword_2807CE830 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v15 = v12[63];
  v16 = v12[64];
  v33 = qword_28081C4F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v17 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_1_1(v17);
  OUTLINED_FUNCTION_29_8();
  v18 = OUTLINED_FUNCTION_50_3();
  *(v18 + 16) = xmmword_2705E6EB0;
  v12[5] = v16;
  v12[2] = v15;

  if (AMSLogKey())
  {
    v19 = (v12 + 18);
    sub_2705D7564();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v20 = OUTLINED_FUNCTION_32_4(v12 + 2);
    v12[17] = swift_getMetatypeMetadata();
    v12[14] = v20;
    sub_2705D64E4();
    sub_270474A7C((v12 + 14), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v12[21] = MEMORY[0x277D837D0];
    v12[18] = v13;
    v12[19] = v14;
  }

  else
  {
    v19 = (v12 + 6);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v21 = OUTLINED_FUNCTION_32_4(v12 + 2);
    v12[9] = swift_getMetatypeMetadata();
    v12[6] = v21;
  }

  sub_2705D64E4();
  OUTLINED_FUNCTION_63_2(v19);
  v22 = v12[68];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v12 + 2));
  sub_2705D6514();
  sub_2705D6504();
  swift_getErrorValue();
  v12[13] = v12[59];
  __swift_allocate_boxed_opaque_existential_1Tm(v12 + 10);
  OUTLINED_FUNCTION_4_4();
  (*(v23 + 16))();
  sub_2705D64E4();
  OUTLINED_FUNCTION_63_2((v12 + 10));
  OUTLINED_FUNCTION_9_7();
  sub_2705D6504();
  sub_2705D6534();
  sub_27047CF78(v18);

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_33_7();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_270487664()
{
  OUTLINED_FUNCTION_2_2();
  v1[22] = v2;
  v1[23] = v0;
  v1[24] = *v0;
  v3 = sub_2705D6524();
  OUTLINED_FUNCTION_23_0(v3);
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270487710()
{
  v28 = v0;
  v1 = v0[22];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    sub_2704ADD94(0, v2, 0);
    v3 = v26;
    v4 = (v1 + 32);
    do
    {
      sub_270487C78(v4, &v27);
      v5 = v27;
      v7 = *(v26 + 16);
      v6 = *(v26 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2704ADD94(v6 > 1, v7 + 1, 1);
      }

      *(v26 + 16) = v7 + 1;
      *(v26 + 8 * v7 + 32) = v5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  if (qword_2807CE830 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v8 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v8);
  OUTLINED_FUNCTION_29_8();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_33_8(v9, xmmword_2705E6EB0);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    v12 = sub_2705D7564();
    v14 = v13;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v15 = OUTLINED_FUNCTION_26_12();
    v0[17] = swift_getMetatypeMetadata();
    v0[14] = v15;
    sub_2705D64E4();
    sub_270474A7C((v0 + 14), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v0[21] = MEMORY[0x277D837D0];
    v0[18] = v12;
    v0[19] = v14;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    v16 = OUTLINED_FUNCTION_26_12();
    v0[9] = swift_getMetatypeMetadata();
    v0[6] = v16;
  }

  sub_2705D64E4();
  v17 = OUTLINED_FUNCTION_40_6();
  sub_270474A7C(v17, v18);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_2705D6514();
  sub_2705D6504();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  v20 = MEMORY[0x2743A3C10](v3, v19);
  v0[13] = MEMORY[0x277D837D0];
  v0[10] = v20;
  v0[11] = v21;
  sub_2705D64E4();
  sub_270474A7C((v0 + 10), &unk_2807D4890);
  OUTLINED_FUNCTION_9_7();
  sub_2705D6504();
  sub_2705D6534();
  sub_27047CF60(v9);

  v0[26] = sub_270484294(v3);

  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_270487AC4;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_59_3();

  return sub_270484404(v23);
}

uint64_t sub_270487AC4()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_5_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v8 = v7;
  *(v5 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_270487C04()
{
  OUTLINED_FUNCTION_23_14();

  swift_willThrow();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270487C78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v19, v5);
  v6 = v19;
  v7 = v20;
  v21 = v19;
  v22 = v20;
  sub_27046CD54();
  v9 = v8;
  sub_2703AE630(v6, *(&v6 + 1), v7);
  v23 = v9;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  *(&v20 + 1) = MEMORY[0x277D837D0];
  *&v19 = v12;
  *(&v19 + 1) = v13;
  sub_2704829AC(&v19, 0x707954746E657665, 0xE900000000000065);
  v19 = 0u;
  v20 = 0u;
  sub_2704829AC(&v19, 0x6449746E657665, 0xE700000000000000);
  v14 = [objc_opt_self() mainBundle];
  v15 = sub_2704897BC(v14);
  if (v16)
  {
    v17 = MEMORY[0x277D837D0];
  }

  else
  {
    v15 = 0;
    v17 = 0;
    *&v20 = 0;
  }

  *&v19 = v15;
  *(&v19 + 1) = v16;
  *(&v20 + 1) = v17;
  result = sub_2704829AC(&v19, 7368801, 0xE300000000000000);
  *a2 = v23;
  return result;
}

void *sub_270487E10()
{
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter__coordinatorLock);
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    type metadata accessor for MessageCoordinator(0);
    swift_allocObject();

    v1 = sub_27048C98C();
    *(v0 + 8) = v1;
  }

  os_unfair_lock_unlock(v0);
  return v1;
}

void MessageCenter.messageStream.getter()
{
  OUTLINED_FUNCTION_26_1();
  v41 = v0;
  v38 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD8);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CE0);
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
  OUTLINED_FUNCTION_1_14();
  v39 = v11;
  v40 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v37 = &v37 - v14;
  v15 = sub_2705D45C4();
  OUTLINED_FUNCTION_1_14();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  sub_2705D45B4();
  type metadata accessor for MessageAction();
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v5);
  sub_2705D78E4();
  (*(v7 + 8))(v10, v5);
  v25 = swift_allocObject();
  v26 = v41;
  swift_weakInit();
  v38 = *(v17 + 16);
  v27 = v24;
  v28 = v24;
  v29 = v15;
  v38(v22, v27, v15);
  v30 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  (*(v17 + 32))(v31 + v30, v22, v15);
  v32 = v39;
  v33 = v37;
  sub_2705D78F4();
  v34 = (v26 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations);
  os_unfair_lock_lock((v26 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations));
  v38(v22, v28, v29);
  v35 = v40;
  v36 = v42;
  (*(v40 + 16))(v42, v33, v32);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v32);
  sub_270482AF0(v36, v22);
  os_unfair_lock_unlock(v34);
  (*(v35 + 8))(v33, v32);
  (*(v17 + 8))(v28, v29);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27048827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_2705D45C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = (result + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations);
    os_unfair_lock_lock((result + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations));
    (*(v8 + 16))(v10, a3, v7);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
    sub_270482AF0(v6, v10);
    os_unfair_lock_unlock(v12);
  }

  return result;
}

uint64_t sub_270488420(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2705D6524();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = type metadata accessor for MessageAction();
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v11;
  v33 = v12;
  sub_2703AE9FC(v32[0], v11, v12);
  MessageAction.init(object:)(v32, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_270474A7C(v7, &qword_2807D3CC8);
  }

  sub_27048ABB8(v7, v10);
  if (qword_2807CE830 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v14 = *(sub_2705D6574() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2705E6EB0;
  v29[2] = v17 + v16;
  v34 = v3;
  v32[0] = v1;

  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    v20 = sub_2705D7564();
    v29[1] = v15;
    v22 = v21;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v32, v34);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v30[0] = DynamicType;
    sub_2705D64E4();
    sub_270474A7C(v30, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v30[0] = v20;
    v30[1] = v22;
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v32, v34);
    v24 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v30[0] = v24;
  }

  sub_2705D64E4();
  sub_270474A7C(v30, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_2705D6514();
  sub_2705D6504();
  v34 = v8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32);
  sub_27048A864(v10, boxed_opaque_existential_1Tm);
  sub_2705D64F4();
  sub_270474A7C(v32, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  sub_27047CF60(v17);

  v26 = v1 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations));
  v27 = *(v26 + 1);
  MEMORY[0x28223BE20](v28);
  v29[-2] = v10;

  sub_270483020(sub_27048A8BC, &v29[-4], v27);

  os_unfair_lock_unlock(v26);
  return sub_270486738(v10);
}

uint64_t sub_27048895C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MessageAction();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DA8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  sub_27048A864(a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
  sub_2705D7904();
  return (*(v7 + 8))(v9, v6);
}

uint64_t MessageCenter.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8);
  sub_270474A7C(v1 + *(v2 + 28), &qword_2807D3CF0);
  sub_270474A7C(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_queuedEvents + 8, &qword_2807D3CC0);
  sub_270474A7C(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter__coordinatorLock + 8, &qword_2807D3D00);
  sub_270474A7C(v0 + OBJC_IVAR____TtC19UnifiedMessagingKit13MessageCenter_messageContinuations + 8, &qword_2807D3D08);
  return v0;
}

uint64_t MessageCenter.__deallocating_deinit()
{
  MessageCenter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_270488BE4()
{
  if (qword_2807CE880 != -1)
  {
    swift_once();
  }

  qword_2807D3CA8 = qword_2807D3CA0;
}

uint64_t static MessageCenterKey.defaultValue.getter()
{
  if (qword_2807CE888 != -1)
  {
    swift_once();
  }
}

uint64_t sub_270488CA4@<X0>(uint64_t *a1@<X8>)
{
  result = static MessageCenterKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.messageCenter.getter()
{
  sub_27048A240();
  sub_2705D5264();
  return v1;
}

uint64_t sub_270488D0C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.messageCenter.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.messageCenter.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_27048A240();
  sub_2705D5264();
  return sub_270488E00;
}

uint64_t sub_270488E00(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_2705D5274();
  }

  sub_2705D5274();
}

uint64_t View.messageCenter(_:)()
{
  swift_getKeyPath();
  sub_2705D5AA4();
}

uint64_t sub_270488F08(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_270489000;

  return v6(a1);
}

uint64_t sub_270489000()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_2704890E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_14_25();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_270489160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D98);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_14_25();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2704891B8()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_14_25();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2704891F4()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_14_25();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_270489230@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_2703D7318(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
    sub_2705D7E04();

    sub_2703E43D4((*(v9 + 56) + 32 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    sub_2705D7E24();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_270489324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2703D7418(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF0);
    sub_2705D7E04();
    v7 = *(v15 + 48);
    v8 = sub_2705D45C4();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v15 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
    (*(*(v10 - 8) + 32))(a2, v9 + *(*(v10 - 8) + 72) * v6, v10);
    sub_27048A80C();
    sub_2705D7E24();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFF8);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_2704894BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2703D749C(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE0);
    sub_2705D7E04();
    v7 = *(v17 + 48) + 48 * v6;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = *(v7 + 40);

    sub_2703AF9AC(v8, v9, v10);
    v11 = *(v17 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
    (*(*(v12 - 8) + 32))(a2, v11 + *(*(v12 - 8) + 72) * v6, v12);
    sub_27048A6F8();
    sub_2705D7E24();
    *v2 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
    v13 = a2;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_270489648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2703D749C(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFB0);
    sub_2705D7E04();
    v7 = *(v17 + 48) + 48 * v6;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = *(v7 + 40);

    sub_2703AF9AC(v8, v9, v10);
    v11 = *(v17 + 56);
    v12 = type metadata accessor for MessageState(0);
    sub_27048ABB8(v11 + *(*(v12 - 8) + 72) * v6, a2);
    sub_27048A6F8();
    sub_2705D7E24();
    *v2 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = type metadata accessor for MessageState(0);
    v13 = a2;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_2704897BC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2705D7564();

  return v3;
}

uint64_t sub_27048982C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_270489920;

  return v5(v2 + 32);
}

uint64_t sub_270489920()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v2 = v1;
  OUTLINED_FUNCTION_5_40();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_1_4();

  return v8();
}

uint64_t sub_270489A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v9 + 32))(&v17 - v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a4;
  (*(v9 + 16))(v12, v14, a5);
  sub_270489B80(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v18, a5);
  result = (*(v9 + 8))(v14, a5);
  *a4 = v18;
  return result;
}

_OWORD *sub_270489B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v27 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  v12 = *a5;
  v13 = sub_2703D7318(a2, a3);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3BA8);
  if ((sub_2705D7E04() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_2703D7318(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_2705D82D4();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return sub_2703E43D4(v26, v20);
  }

  else
  {
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v22);
    v24 = v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24);
    sub_270489D94(v15, a2, a3, v24, v19, a6);

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }
}

_OWORD *sub_270489D94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_2703E43D4(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_270489E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v4[16] = a2;
  v4[14] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v4 + 11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);

  return MEMORY[0x2822009F8](sub_270489F10, 0, 0);
}

uint64_t sub_270489F10()
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD0);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 16) = xmmword_2705DC030;
  sub_27048A8D8(v0 + 88, inited + 32);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_270489FDC;

  return MessageCenter.record(events:)();
}

uint64_t sub_270489FDC()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v2 = v1;
  OUTLINED_FUNCTION_5_40();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  swift_setDeallocating();
  sub_270489160();
  __swift_destroy_boxed_opaque_existential_1(v2 + 88);
  OUTLINED_FUNCTION_1_4();

  return v6();
}

uint64_t sub_27048A0DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_27048A114()
{
  v1 = sub_2705D45C4();
  OUTLINED_FUNCTION_1_14();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_27048A1D0(uint64_t a1)
{
  v3 = sub_2705D45C4();
  OUTLINED_FUNCTION_23_0(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_27048827C(a1, v5, v6);
}

unint64_t sub_27048A240()
{
  result = qword_2807D3D10;
  if (!qword_2807D3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3D10);
  }

  return result;
}

uint64_t sub_27048A294@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.messageCenter.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MessageCenter()
{
  result = qword_2807D3D18;
  if (!qword_2807D3D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27048A318()
{
  sub_27048A3CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27048A3CC()
{
  if (!qword_2807D3D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3CF0);
    v0 = sub_2705D4644();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D3D28);
    }
  }
}

uint64_t sub_27048A430()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CB8);
  }

  else
  {
    return OUTLINED_FUNCTION_34_8(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_27048A45C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D30);
  }

  else
  {
    return OUTLINED_FUNCTION_34_8(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_27048A488()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D38);
  }

  else
  {
    return OUTLINED_FUNCTION_34_8(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_27048A4B4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D40);
  }

  else
  {
    return OUTLINED_FUNCTION_34_8(MEMORY[0x277D84F78]);
  }
}

_BYTE *storeEnumTagSinglePayload for MessageCenterKey(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27048A57CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27048A5F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3D58);
  sub_2705D5044();
  sub_2703AFBC8(&qword_2807D3D60, &qword_2807D3D58);
  return swift_getWitnessTable();
}

unint64_t sub_27048A6F8()
{
  result = qword_2807D3D70;
  if (!qword_2807D3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3D70);
  }

  return result;
}

uint64_t sub_27048A74C()
{

  OUTLINED_FUNCTION_14_25();

  return swift_deallocObject();
}

uint64_t sub_27048A77C()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_55_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_37(v1);

  return v4(v3);
}

unint64_t sub_27048A80C()
{
  result = qword_2807CFA40;
  if (!qword_2807CFA40)
  {
    sub_2705D45C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CFA40);
  }

  return result;
}

uint64_t sub_27048A864(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_0_32();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_27048A8D8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4_4();
  (*v3)(a2);
  return a2;
}

uint64_t sub_27048A938(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_32();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27048A994()
{

  sub_2703AF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 72) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_27048AA54()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_55_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_37(v1);

  return v4(v3);
}

uint64_t sub_27048AB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27048ABB8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_0_32();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_27048AC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_10()
{
  __swift_project_boxed_opaque_existential_1((v0 - 208), *(v0 - 184));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t a1)
{
  *(v2 - 216) = a1;
  *(v2 - 240) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_33_8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 40) = v4;
  *(v3 + 16) = v2;
}

void OUTLINED_FUNCTION_35_7()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_36_7(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

void OUTLINED_FUNCTION_37_5()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{
  *(v1 + 424) = a1;

  return sub_2705D6574();
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 104) = a1;
  *(v11 + 80) = a11;
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_2705D6574();
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_51_3()
{
}

uint64_t OUTLINED_FUNCTION_52_1(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_61_3()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_62_3()
{

  return sub_2705D64C4();
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t a1)
{

  return sub_270474A7C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_64_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_65_2(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));

  return swift_getDynamicType();
}

uint64_t MessageCenterConfiguration.init(bag:customerEngagementId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 74) = 1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;

  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t MessageCenterConfiguration.customerEngagementId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MessageCenterConfiguration.customerEngagementId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_27048B1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return sub_27047C6BC(v2);
}

uint64_t sub_27048B1B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 32);
  sub_27047C6BC(*a1);
  result = sub_2703B8280(v5);
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t MessageCenterConfiguration.metricsProvider.getter()
{
  v1 = *(v0 + 32);
  sub_27047C6BC(v1);
  return v1;
}

uint64_t MessageCenterConfiguration.metricsProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2703B8280(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MessageCenterConfiguration.asyncMessageProvider.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

uint64_t MessageCenterConfiguration.actionResultHandler.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t MessageCenterConfiguration.config.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t MessageCenterConfiguration.debugPort.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 74) = BYTE2(result) & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit16MessagePlacementVAA0D11ViewMetricsVIeghnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27048B40C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27048B44C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27048B4B4()
{
  v1 = sub_2705D6DE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  swift_unknownObjectRetain();
  sub_2705D6DC4();
  v6 = [objc_opt_self() currentProcess];
  sub_2704DCCCC(v5, v4, v6);

  (*(v2 + 8))(v4, v1);

  sub_2704DD1E8();
  sub_2704DD34C();
  v9[0] = xmmword_2705E1BF0;
  memset(&v9[1], 0, 48);
  sub_2704DD4A8();

  sub_2705D68F4();

  sub_2705D68F4();

  v7 = sub_2705D68F4();

  return v7;
}

uint64_t sub_27048B6B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D78);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_27048B75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D78);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MessageCenterConfigurationObjects()
{
  result = qword_2807D3DD0;
  if (!qword_2807D3DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27048B834()
{
  sub_27048B8D0();
  if (v0 <= 0x3F)
  {
    sub_27048B92C();
    if (v1 <= 0x3F)
    {
      sub_27048B97C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_27048B8D0()
{
  result = qword_2807D3DE0;
  if (!qword_2807D3DE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2807D3DE0);
  }

  return result;
}

void sub_27048B92C()
{
  if (!qword_2807D3DE8)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D3DE8);
    }
  }
}

void sub_27048B97C()
{
  if (!qword_2807D3DF0)
  {
    sub_2705D46F4();
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D3DF0);
    }
  }
}

void sub_27048B9D4()
{
  OUTLINED_FUNCTION_26_1();
  v1 = 7104878;
  v2 = OUTLINED_FUNCTION_15_18();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_23_0(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  v7 = OUTLINED_FUNCTION_45_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_23_0(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_2705D7D04();
  MEMORY[0x2743A3A90](0xD000000000000019, 0x8000000270614900);
  if (*v0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*v0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x2743A3A90](v12, v13);

  MEMORY[0x2743A3A90](0x67617373656D202CLL, 0xEB00000000203A65);
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  v14 = type metadata accessor for MessageViewStyle(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v14);
  sub_2703C2EFC(v11, &qword_2807D3C28);
  if (EnumTagSinglePayload == 1)
  {
    v16 = 7104878;
  }

  else
  {
    v16 = 0x746E6573657270;
  }

  if (EnumTagSinglePayload == 1)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x2743A3A90](v16, v17);

  MEMORY[0x2743A3A90](0xD000000000000017, 0x8000000270614920);
  OUTLINED_FUNCTION_37_6();
  sub_27049A26C();
  v18 = sub_2705D4594();
  OUTLINED_FUNCTION_59_4(v6, 1, v18);
  if (v19)
  {
    sub_2703C2EFC(v6, &qword_2807D3E10);
    v21 = 0xE300000000000000;
  }

  else
  {
    v1 = sub_2705D4514();
    v21 = v20;
    OUTLINED_FUNCTION_4_4();
    v22 = OUTLINED_FUNCTION_92_0();
    v23(v22);
  }

  MEMORY[0x2743A3A90](v1, v21);

  MEMORY[0x2743A3A90](41, 0xE100000000000000);
  OUTLINED_FUNCTION_25_1();
}

void sub_27048BC90()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2705D4594();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  OUTLINED_FUNCTION_23_0(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E70);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  v20 = OUTLINED_FUNCTION_23_0(v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  if (*v3 != *v1)
  {
    goto LABEL_30;
  }

  v44 = v14;
  v45 = v6;
  v42 = v10;
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  v26 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_59_4(v25, 1, v26);
  if (v34)
  {
    sub_2703C2EFC(v25, &qword_2807D3C28);
    v43 = 0;
    v28 = 0;
  }

  else
  {
    v27 = &v25[*(v26 + 24)];
    v28 = *(v27 + 1);
    v43 = *v27;

    OUTLINED_FUNCTION_2_38();
    sub_2704986F8(v25, v29);
  }

  sub_27049A26C();
  OUTLINED_FUNCTION_59_4(v23, 1, v26);
  if (v34)
  {
    sub_2703C2EFC(v23, &qword_2807D3C28);
    if (v28)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v30 = &v23[*(v26 + 24)];
    v32 = *v30;
    v31 = *(v30 + 1);

    OUTLINED_FUNCTION_2_38();
    sub_2704986F8(v23, v33);
    if (v28)
    {
      if (v31)
      {
        v34 = v43 == v32 && v28 == v31;
        if (v34)
        {
        }

        else
        {
          v35 = sub_2705D8134();

          if ((v35 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_21;
      }

LABEL_19:

      goto LABEL_30;
    }

    if (v31)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v36 = *(v15 + 48);
  sub_27049A26C();
  sub_27049A26C();
  OUTLINED_FUNCTION_13_19(v18);
  if (!v34)
  {
    v37 = v44;
    sub_27049A26C();
    OUTLINED_FUNCTION_13_19(&v18[v36]);
    if (!v38)
    {
      v39 = v45;
      v40 = v42;
      (*(v45 + 32))(v42, &v18[v36], v4);
      sub_27049A354(&qword_2807D3E78, MEMORY[0x277CC9578]);
      sub_2705D7514();
      v41 = *(v39 + 8);
      v41(v40, v4);
      v41(v37, v4);
      sub_2703C2EFC(v18, &qword_2807D3E10);
      goto LABEL_30;
    }

    (*(v45 + 8))(v37, v4);
LABEL_29:
    sub_2703C2EFC(v18, &qword_2807D3E70);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_13_19(&v18[v36]);
  if (!v34)
  {
    goto LABEL_29;
  }

  sub_2703C2EFC(v18, &qword_2807D3E10);
LABEL_30:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27048C154()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  OUTLINED_FUNCTION_23_0(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  if (*v0 != 1)
  {
    return 0;
  }

  type metadata accessor for MessageState(0);
  OUTLINED_FUNCTION_74_2();
  sub_27049A26C();
  v5 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_59_4(v4, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_2703C2EFC(v4, &qword_2807D3C28);
  return v7;
}

uint64_t sub_27048C238()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_24();
  sub_27049A354(v0, v1);
  sub_2705D45F4();

  swift_beginAccess();
}

uint64_t sub_27048C30C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_270498904(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27048C4B0();
  }
}

BOOL sub_27048C3F4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v2 = sub_2705D7954();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_27048C448(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_27048C4B0()
{
  OUTLINED_FUNCTION_10_24();
  sub_27049A354(v0, v1);
  return sub_2705D45E4();
}

uint64_t sub_27048C558()
{
  swift_getKeyPath();
  sub_27049A354(&qword_2807D3E38, type metadata accessor for MessageCoordinator);
  sub_2705D45F4();

  swift_beginAccess();
}

uint64_t sub_27048C63C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_270498D68(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27048C4B0();
  }
}

uint64_t sub_27048C724(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_27048C78C()
{
  swift_getKeyPath();
  sub_27049A354(&qword_2807D3E38, type metadata accessor for MessageCoordinator);
  sub_2705D45F4();
}

uint64_t sub_27048C85C(uint64_t a1)
{

  v4 = sub_27048C3F4(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27048C4B0();
  }

  else
  {
    *(v1 + 40) = a1;
  }
}

uint64_t sub_27048C950(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

void *sub_27048C98C()
{
  swift_weakInit();
  type metadata accessor for MessageState(0);
  sub_27048A6F8();
  OUTLINED_FUNCTION_15_18();
  v0[3] = sub_2705D7494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
  OUTLINED_FUNCTION_15_18();
  v0[4] = sub_2705D7494();
  v0[5] = 0;
  sub_2705D4624();
  swift_weakAssign();
  type metadata accessor for PageEventRecorder();
  swift_allocObject();
  OUTLINED_FUNCTION_94();
  v0[6] = sub_2704E7204();
  return v0;
}

uint64_t sub_27048CA70(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  sub_27048CAE4();
  v7 = v2;
  v8 = *(a1 + 1);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  return sub_27048CC80(&v7);
}

uint64_t sub_27048CAE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (sub_27048C78C())
    {
    }

    else
    {
      v5 = sub_2705D78D4();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
      v6 = swift_allocObject();
      swift_weakInit();
      sub_2705D78A4();

      v7 = sub_2705D7894();
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D85700];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v4;
      v8[5] = v6;

      sub_270482728();
      sub_27048C85C(v10);
    }
  }

  return result;
}

uint64_t sub_27048CC80(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D88);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EB8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = a1[1];
  v22 = *a1;
  v23[0] = v15;
  *(v23 + 9) = *(a1 + 25);
  type metadata accessor for MessagePlacementObserver.Status();
  *v10 = 1;
  (*(v8 + 104))(v10, *MEMORY[0x277D85768], v7);
  sub_2705D78E4();
  (*(v8 + 8))(v10, v7);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = v23[0];
  *(v17 + 24) = v22;
  *(v17 + 40) = v18;
  *(v17 + 49) = *(v23 + 9);
  sub_2703BD0C8(&v22, v21);
  sub_2705D78F4();
  (*(v12 + 16))(v6, v14, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  swift_getKeyPath();
  v20[1] = v2;
  sub_2703BD0C8(&v22, v21);
  sub_27049A354(&qword_2807D3E38, type metadata accessor for MessageCoordinator);
  sub_2705D45F4();

  v21[0] = v2;
  swift_getKeyPath();
  sub_2705D4614();

  swift_beginAccess();
  sub_270482D18(v6);
  swift_endAccess();
  v21[0] = v2;
  swift_getKeyPath();
  sub_2705D4604();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_27048D074(__int128 *a1, uint64_t a2)
{
  v72 = a2;
  v61 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v58 - v5;
  v6 = sub_2705D6524();
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageCoordinator.TransitionReason(0);
  v69 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v70 = v10;
  v71 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D68);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v21 = type metadata accessor for MessageState(0);
  v65 = *(v21 - 8);
  v22 = *(v65 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v68 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v66 = &v58 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  v31 = a1[1];
  v78 = *a1;
  v79[0] = v31;
  *(v79 + 9) = *(a1 + 25);
  v32 = v2;
  v33 = sub_27048C238();
  sub_2703D5364(&v78, v33, v20);

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    *v30 = 0;
    v34 = *(v21 + 20);
    v35 = type metadata accessor for MessageViewStyle(0);
    __swift_storeEnumTagSinglePayload(&v30[v34], 1, 1, v35);
    v36 = *(v21 + 24);
    v37 = sub_2705D4594();
    __swift_storeEnumTagSinglePayload(&v30[v36], 1, 1, v37);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_2703C2EFC(v20, &qword_2807D3D68);
    }
  }

  else
  {
    sub_270498540();
  }

  v67 = v30;
  v38 = v30;
  v39 = v32;
  sub_27048E9E8(v38, v28);
  sub_270495A34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2704986F8(v12, type metadata accessor for MessageCoordinator.TransitionReason);
  if (EnumCaseMultiPayload == 1)
  {
    v41 = sub_27048C238();
    sub_2703D5364(&v78, v41, v18);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v21);
    sub_2703C2EFC(v18, &qword_2807D3D68);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_2807CE830 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v60 = *(*(sub_2705D6574() - 8) + 72);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2705E6EB0;
      *&v77[8] = v61;
      *&v76 = v32;

      v44 = AMSLogKey();
      if (v44)
      {
        v45 = v44;
        v61 = sub_2705D7564();
        v59 = v46;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v76, *&v77[8]);
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v74[0] = DynamicType;
        sub_2705D64E4();
        sub_2703C2EFC(v74, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v74[0] = v61;
        v74[1] = v59;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v76, *&v77[8]);
        v48 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v74[0] = v48;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v74, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v76);
      sub_2705D64C4();
      sub_27047CF60(v43);
    }
  }

  v49 = v64;
  sub_270495A34();
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v21);
  swift_getKeyPath();
  v74[0] = v39;
  sub_2703BD0C8(&v78, &v76);
  sub_27049A354(&qword_2807D3E38, type metadata accessor for MessageCoordinator);
  sub_2705D45F4();

  *&v76 = v39;
  swift_getKeyPath();
  sub_2705D4614();

  swift_beginAccess();
  sub_270482EC4(v49, &v78);
  swift_endAccess();
  *&v76 = v39;
  swift_getKeyPath();
  sub_2705D4604();

  v76 = v78;
  *v77 = v79[0];
  *&v77[9] = *(v79 + 9);
  v50 = v67;
  v51 = v72;
  sub_27048F0B0(&v76, v67, v28);
  v76 = v78;
  *v77 = v79[0];
  *&v77[9] = *(v79 + 9);
  v63 = v28;
  sub_27048F9BC(&v76, v51, v50);
  v52 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v52);
  sub_270495A34();
  sub_270495A34();
  sub_270495A34();
  sub_2705D78A4();

  sub_2703BD0C8(&v78, &v76);
  v53 = sub_2705D7894();
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  *(v54 + 32) = v39;
  v56 = v79[0];
  *(v54 + 40) = v78;
  *(v54 + 56) = v56;
  *(v54 + 65) = *(v79 + 9);
  sub_270498540();
  sub_270498540();
  sub_270498540();
  sub_270482728();

  sub_2704986F8(v63, type metadata accessor for MessageState);
  return sub_2704986F8(v50, type metadata accessor for MessageState);
}

uint64_t sub_27048DB84()
{
  v2 = OUTLINED_FUNCTION_73_1();
  type metadata accessor for MessageCoordinator.TransitionReason(v2);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_79_2();
  v8 = v4;
  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  v11 = v5;
  swift_storeEnumTagMultiPayload();
  sub_27048D074(&v8, v1);
  OUTLINED_FUNCTION_3_42();
  return sub_2704986F8(v1, v6);
}

uint64_t sub_27048DC28(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_73_1();
  type metadata accessor for MessageCoordinator.TransitionReason(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_79_2();
  v7 = *a2;
  v8 = a2[1];
  LOBYTE(a2) = *(a2 + 16);
  v15 = v9;
  v16 = *(v2 + 8);
  v17 = *(v2 + 24);
  v18 = v10;
  *v3 = v7;
  *(v3 + 8) = v8;
  *(v3 + 16) = a2;
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_15_18();
  sub_2703AE9E8(v11, v12, a2);
  sub_27048D074(&v15, v3);
  OUTLINED_FUNCTION_3_42();
  return sub_2704986F8(v3, v13);
}

void sub_27048DCF0()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v38 = *v0;
  v3 = sub_2705D6524();
  v4 = OUTLINED_FUNCTION_23_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for MessageCoordinator.TransitionReason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v10 = *v2;
  v9 = *(v2 + 8);
  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v41 = *v2;
  v42 = v9;
  v43 = v12;
  MetatypeMetadata = v11;
  v45 = v13;
  v46 = v14;
  sub_27048E158(&v41, &v47);
  v15 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    v17 = v49;
    v16 = v50;
    v18 = v48;
    v19 = v47;
    v20 = v51;
    sub_270495A34();
    swift_storeEnumTagMultiPayload();
    sub_27048D074(&v47, v8);
    OUTLINED_FUNCTION_3_42();
    sub_2704986F8(v8, v21);
    sub_270465F98(v19, v15, v18, v17, v16, v20);
  }

  else
  {
    v37 = v9;
    v39 = v14;
    v40 = v11;
    if (qword_2807CE830 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v22 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2705EB880;
    v49 = v38;
    *&v47 = v0;

    v24 = AMSLogKey();
    v25 = v12;
    if (v24)
    {
      v26 = v24;
      v27 = sub_2705D7564();
      v29 = v28;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v30 = OUTLINED_FUNCTION_19_11(&v47);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v41 = v30;
      sub_2705D64E4();
      OUTLINED_FUNCTION_74_2();
      sub_2703C2EFC(v31, v32);
      OUTLINED_FUNCTION_7_24();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v41 = v27;
      v42 = v29;
      v25 = v12;
      sub_2705D64E4();
      OUTLINED_FUNCTION_74_2();
      sub_2703C2EFC(v33, v34);
    }

    else
    {
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v35 = OUTLINED_FUNCTION_19_11(&v47);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v41 = v35;
      sub_2705D64E4();
      sub_2703C2EFC(&v41, &unk_2807D4890);
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    sub_2705D64C4();
    v49 = &type metadata for MessagePlacement;
    OUTLINED_FUNCTION_50_4();
    v36 = swift_allocObject();
    *&v47 = v36;
    *(v36 + 16) = v10;
    *(v36 + 24) = v37;
    *(v36 + 32) = v25;
    *(v36 + 40) = v40;
    *(v36 + 48) = v13;
    *(v36 + 56) = v39;

    sub_2703B4984(v40, v13, v39);
    sub_2705D6544();
    sub_2703C2EFC(&v47, &unk_2807D4890);
    sub_2705D64C4();
    sub_27047CF78(v23);
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27048E158@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v79 = a2;
  v2 = a1[1];
  v83 = *a1;
  v82 = v2;
  v3 = a1[3];
  v95 = a1[2];
  v4 = a1[4];
  v87 = v4;
  v5 = *(a1 + 40);
  v6 = sub_27048C238();
  v7 = v6;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v92 = v5;
  v10 = v6 + 64;
  v11 = v9 & *(v6 + 64);
  v12 = (v8 + 63) >> 6;
  v14 = v5 == 2 && (v4 | v3) == 0;
  v81 = v14;

  v16 = 0;
  v91 = v10;
  v90 = v12;
  v86 = result;
  v80 = v3;
  while (v11)
  {
    v17 = v16;
LABEL_15:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v7 + 48) + 48 * (v18 | (v17 << 6));
    v20 = *v19;
    v94 = *(v19 + 8);
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    v23 = *(v19 + 32);
    v24 = *(v19 + 40);
    if (*(v19 + 40))
    {
      if (v24 != 1)
      {
        v93 = *(v19 + 32);
        if (v81)
        {
          v89 = v20;
          v84 = v24;
          v29 = v94;

          v37 = v21;
          v38 = v21;
          v39 = v93;
          sub_2703B4984(v37, v93, 2u);
          v85 = v38;
          sub_2703AF9AC(v38, v39, 2u);
          v40 = 0;
          v41 = 0;
          v42 = 2;
LABEL_40:
          result = sub_2703AF9AC(v40, v41, v42);
          goto LABEL_41;
        }

        v52 = v21;
        v53 = v87;
        v33 = v92;
        sub_2703B4984(v3, v87, v92);
        sub_2703AF9AC(v52, v93, 2u);
        v35 = v3;
        v36 = v53;
        goto LABEL_30;
      }

      if (v92 == 1)
      {
        v89 = v20;
        v84 = 1;
        v25 = v87;
        v26 = v21 == v3 && v23 == v87;
        v93 = v23;
        v85 = v21;
        if (!v26)
        {
          LODWORD(v88) = sub_2705D8134();
          v27 = v94;

          sub_2703B4984(v21, v23, 1u);
          sub_2703B4984(v3, v25, 1u);
          sub_2703B4984(v21, v23, 1u);
          v28 = v23;
          v29 = v27;
          sub_2703AF9AC(v21, v28, 1u);
          result = sub_2703AF9AC(v3, v25, 1u);
          if ((v88 & 1) == 0)
          {

            v30 = v85;
            v31 = v93;
            v32 = 1;
            goto LABEL_61;
          }

          goto LABEL_41;
        }

        v29 = v94;

        sub_2703B4984(v3, v25, 1u);
        sub_2703B4984(v3, v25, 1u);
        sub_2703B4984(v3, v25, 1u);
        sub_2703AF9AC(v3, v25, 1u);
        v40 = v3;
        v41 = v25;
        v42 = 1;
        goto LABEL_40;
      }

      v43 = v3;
      v44 = v3;
      v45 = v7;
      v46 = *(v19 + 24);
      v47 = v87;
      v48 = *(v19 + 32);
      v49 = v92;
      sub_2703B4984(v43, v87, v92);
      sub_2703B4984(v46, v48, 1u);
      v50 = v46;
      v7 = v45;
      v3 = v44;
      sub_2703AF9AC(v50, v48, 1u);
      v35 = v44;
      v36 = v47;
      v51 = v49;
LABEL_31:
      result = sub_2703AF9AC(v35, v36, v51);
      v16 = v17;
LABEL_59:
      v10 = v91;
      v12 = v90;
    }

    else
    {
      v33 = v92;
      if (v92)
      {
        v34 = v87;
        sub_2703B4984(v3, v87, v92);
        sub_2703B4984(v21, v23, 0);
        sub_2703AF9AC(v21, v23, 0);
        v35 = v3;
        v36 = v34;
        v7 = v86;
LABEL_30:
        v51 = v33;
        goto LABEL_31;
      }

      v89 = v20;
      v84 = v24;
      v54 = v87;
      v55 = v21 == v3 && v23 == v87;
      v93 = v23;
      v85 = v21;
      if (v55)
      {
        v29 = v94;

        sub_2703B4984(v3, v54, 0);
        sub_2703B4984(v3, v54, 0);
        sub_2703B4984(v3, v54, 0);
        sub_2703AF9AC(v3, v54, 0);
        v40 = v3;
        v41 = v54;
        v42 = 0;
        goto LABEL_40;
      }

      v56 = v21;
      v57 = v23;
      LODWORD(v88) = sub_2705D8134();
      v29 = v94;

      sub_2703B4984(v56, v57, 0);
      sub_2703B4984(v3, v54, 0);
      sub_2703B4984(v56, v57, 0);
      sub_2703AF9AC(v56, v57, 0);
      result = sub_2703AF9AC(v3, v54, 0);
      if ((v88 & 1) == 0)
      {

        v30 = v85;
        v31 = v93;
        v32 = 0;
        goto LABEL_61;
      }

LABEL_41:
      v58 = v89;
      v59 = v89 == v83 && v29 == v82;
      if (v59 || (result = sub_2705D8134(), (result & 1) != 0))
      {
        v89 = v58;
        v60 = 0;
        v61 = *(v22 + 16);
        v88 = MEMORY[0x277D84F90];
LABEL_47:
        v62 = (v60 << 6) | 0x20;
        while (v61 != v60)
        {
          if (v60 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_65;
          }

          v63 = *(v22 + v62);
          v64 = *(v22 + v62 + 16);
          v65 = *(v22 + v62 + 48);
          v100 = *(v22 + v62 + 32);
          v101 = v65;
          v98 = v63;
          v99 = v64;
          v97[0] = v63;
          v97[1] = v64;
          v97[2] = v100;
          v97[3] = v65;
          MEMORY[0x28223BE20](result);
          v78[2] = v97;
          sub_27049A1BC(&v98, v96);
          if (!sub_2704ADC00(sub_27049A19C, v78, v95))
          {
            v66 = v88;
            result = swift_isUniquelyReferenced_nonNull_native();
            v102 = v66;
            if ((result & 1) == 0)
            {
              result = sub_2704ADDB4(0, *(v66 + 16) + 1, 1);
              v66 = v102;
            }

            v68 = *(v66 + 16);
            v67 = *(v66 + 24);
            if (v68 >= v67 >> 1)
            {
              result = sub_2704ADDB4(v67 > 1, v68 + 1, 1);
              v66 = v102;
            }

            ++v60;
            *(v66 + 16) = v68 + 1;
            v88 = v66;
            v69 = (v66 + (v68 << 6));
            v70 = v98;
            v71 = v99;
            v72 = v101;
            v69[4] = v100;
            v69[5] = v72;
            v69[2] = v70;
            v69[3] = v71;
            goto LABEL_47;
          }

          result = sub_27049A218(&v98);
          v62 += 64;
          ++v60;
        }

        v73 = *(v88 + 16);

        if (v73)
        {

          result = sub_2703AF9AC(v85, v93, v84);
          v16 = v17;
          v7 = v86;
          v3 = v80;
          goto LABEL_59;
        }

        v75 = v79;
        v76 = v94;
        *v79 = v89;
        *(v75 + 1) = v76;
        v77 = v85;
        *(v75 + 2) = v22;
        *(v75 + 3) = v77;
        *(v75 + 4) = v93;
        *(v75 + 40) = v84;
        return result;
      }

      v30 = v85;
      v31 = v93;
      v32 = v84;
LABEL_61:
      result = sub_2703AF9AC(v30, v31, v32);
      v16 = v17;
      v10 = v91;
      v12 = v90;
      v7 = v86;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      v74 = v79;
      *(v79 + 25) = 0u;
      *v74 = 0u;
      v74[1] = 0u;
      return result;
    }

    v11 = *(v10 + 8 * v17);
    ++v16;
    if (v11)
    {
      goto LABEL_15;
    }
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_27048E9E8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v49 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v47 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = type metadata accessor for MessageViewStyle(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MessageCoordinator.TransitionReason(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270495A34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_270498540();
      type metadata accessor for MessageState(0);
      v31 = v49;
      sub_27049A26C();
      if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
      {
        v32 = *v31;
      }

      else
      {
        v32 = 0;
      }

      sub_2703C2EFC(v18, &qword_2807D3C28);
      v39 = *v31;
      sub_27049A26C();
      if (__swift_getEnumTagSinglePayload(v14, 1, v19) == 1)
      {
        v40 = v47;
        sub_270495A34();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v19);
        v42 = v50;
        v43 = v48;
        if (EnumTagSinglePayload != 1)
        {
          sub_2703C2EFC(v14, &qword_2807D3C28);
        }
      }

      else
      {
        v40 = v47;
        sub_270498540();
        v42 = v50;
        v43 = v48;
      }

      __swift_storeEnumTagSinglePayload(v40, 0, 1, v19);
      if (v32)
      {
        sub_2705D4574();
        sub_2704986F8(v21, type metadata accessor for MessageViewStyle);
        v44 = sub_2705D4594();
        __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
      }

      else
      {
        sub_2704986F8(v21, type metadata accessor for MessageViewStyle);
        sub_27049A26C();
      }

      *v42 = v39;
      sub_27049A3B4();
      return sub_27049A3B4();
    case 2u:
      type metadata accessor for MessageState(0);
      v37 = v49;
      sub_27049A26C();
      v38 = __swift_getEnumTagSinglePayload(v11, 1, v19);
      sub_2703C2EFC(v11, &qword_2807D3C28);
      if (v38 == 1)
      {
        sub_27049A26C();
LABEL_19:
        sub_27049A26C();
        goto LABEL_21;
      }

      v45 = *v37;
      sub_27049A26C();
      if (v45)
      {
        goto LABEL_19;
      }

      sub_2705D4574();
      v46 = sub_2705D4594();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v46);
LABEL_21:
      *v50 = 1;
      sub_27049A3B4();
      return sub_27049A3B4();
    case 3u:
      v33 = type metadata accessor for MessageState(0);
      v34 = v50;
      sub_27049A26C();
      v35 = *(v33 + 24);
      v36 = sub_2705D4594();
      result = __swift_storeEnumTagSinglePayload(&v34[v35], 1, 1, v36);
      *v34 = 0;
      return result;
    case 4u:
    case 5u:
      goto LABEL_3;
    default:
      sub_2704986F8(v24, type metadata accessor for MessageCoordinator.TransitionReason);
LABEL_3:
      v25 = *v49;
      v26 = type metadata accessor for MessageState(0);
      v27 = v50;
      __swift_storeEnumTagSinglePayload(&v50[*(v26 + 20)], 1, 1, v19);
      v28 = *(v26 + 24);
      v29 = sub_2705D4594();
      result = __swift_storeEnumTagSinglePayload(&v27[v28], 1, 1, v29);
      *v27 = v25;
      return result;
  }
}

uint64_t sub_27048F0B0(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  v7 = *v3;
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *a1;
  v36 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v37 = *(a1 + 32);
  v39 = *(a1 + 40);
  sub_27048BC90();
  v38 = v11;
  if (v12)
  {
    if (qword_2807CE830 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2705E6EB0;
    v41 = v7;
    v40[0] = v3;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      v16 = sub_2705D7564();
      v18 = v17;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v40, v41);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v44 = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(&v44, &unk_2807D4890);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v44 = v16;
      v45 = v18;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v27 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v44 = v27;
    }

    sub_2705D64E4();
    sub_2703C2EFC(&v44, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_2705D6514();
    sub_2705D6504();
    v41 = &type metadata for MessagePlacement;
    v28 = swift_allocObject();
    v40[0] = v28;
    *(v28 + 16) = v9;
    *(v28 + 24) = v36;
    *(v28 + 32) = v10;
    *(v28 + 40) = v38;
    *(v28 + 48) = v37;
    *(v28 + 56) = v39;

    sub_2703B4984(v38, v37, v39);
    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890);
    sub_2705D6504();
    v41 = type metadata accessor for MessageCoordinator.TransitionReason(0);
    __swift_allocate_boxed_opaque_existential_0Tm(v40);
    sub_270495A34();
    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    sub_27047CE48(v13);
  }

  else
  {
    v34 = a2;
    v35 = a3;
    if (qword_2807CE830 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2705E6EB0;
    v33 = v20;
    v41 = v7;
    v40[0] = v3;

    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      v23 = sub_2705D7564();
      v25 = v24;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v26 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v44 = v26;
      sub_2705D64E4();
      sub_2703C2EFC(&v44, &unk_2807D4890);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v44 = v23;
      v45 = v25;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v30 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v44 = v30;
    }

    sub_2705D64E4();
    sub_2703C2EFC(&v44, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_2705D6514();
    sub_2705D6504();
    v41 = &type metadata for MessagePlacement;
    v31 = swift_allocObject();
    v40[0] = v31;
    *(v31 + 16) = v9;
    *(v31 + 24) = v36;
    *(v31 + 32) = v10;
    *(v31 + 40) = v11;
    *(v31 + 48) = v37;
    *(v31 + 56) = v39;

    sub_2703B4984(v11, v37, v39);
    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890);
    sub_2705D6504();
    v32 = type metadata accessor for MessageState(0);
    v41 = v32;
    __swift_allocate_boxed_opaque_existential_0Tm(v40);
    sub_270495A34();
    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890);
    sub_2705D6504();
    v41 = v32;
    __swift_allocate_boxed_opaque_existential_0Tm(v40);
    sub_270495A34();
    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890);
    sub_2705D6504();
    v41 = type metadata accessor for MessageCoordinator.TransitionReason(0);
    __swift_allocate_boxed_opaque_existential_0Tm(v40);
    sub_270495A34();
    sub_2705D64E4();
    sub_2703C2EFC(v40, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    sub_27047CF60(v33);

    v40[0] = v9;
    v40[1] = v36;
    v40[2] = v10;
    v41 = v11;
    v42 = v37;
    v43 = v39;
    return sub_270493398(v40, v34, v35);
  }
}

uint64_t sub_27048F9BC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v4 = type metadata accessor for MessagePlacementObserver.Status();
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E50);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v43 = type metadata accessor for MessageViewStyle(0);
  MEMORY[0x28223BE20](v43);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageCoordinator.TransitionReason(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D88);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v25 = a1[1];
  v44 = *a1;
  v45[0] = v25;
  *(v45 + 9) = *(a1 + 25);
  v26 = sub_27048C558();
  sub_2703D5294(&v44, v26, v20);

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    return sub_2703C2EFC(v20, &qword_2807D3D88);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_270495A34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = v43;
  if ((EnumCaseMultiPayload - 4) < 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2704986F8(v17, type metadata accessor for MessageCoordinator.TransitionReason);
LABEL_10:
    type metadata accessor for MessageState(0);
    sub_27049A26C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v29);
    sub_2703C2EFC(v11, &qword_2807D3C28);
    if (EnumTagSinglePayload != 1)
    {
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v29);
      v35 = v37;
      sub_2705D7904();
      (*(v39 + 8))(v35, v40);
    }

    return (*(v22 + 8))(v24, v21);
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v22 + 8))(v24, v21);
    return sub_2704986F8(v17, type metadata accessor for MessageCoordinator.TransitionReason);
  }

  v30 = v36;
  sub_270498540();
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  v31 = __swift_getEnumTagSinglePayload(v13, 1, v29);
  sub_2703C2EFC(v13, &qword_2807D3C28);
  if (v31 == 1)
  {
    v32 = v38;
    sub_270495A34();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v29);
    v33 = v37;
    sub_2705D7904();
    (*(v39 + 8))(v33, v40);
  }

  sub_2704986F8(v30, type metadata accessor for MessageViewStyle);
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_27048FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = sub_2705D78A4();
  *(v8 + 72) = sub_2705D7894();
  v13 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v13;
  *(v8 + 41) = *(a5 + 25);
  v14 = swift_task_alloc();
  *(v8 + 80) = v14;
  *v14 = v8;
  v14[1] = sub_270490084;

  return sub_270490208(v8 + 16, a6, a7, a8);
}

uint64_t sub_270490084()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  v4 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_2704901B0, v4, v3);
}

uint64_t sub_2704901B0()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270490208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 800) = v4;
  *(v5 + 792) = a4;
  *(v5 + 784) = a3;
  *(v5 + 776) = a2;
  *(v5 + 808) = type metadata accessor for MessageViewStyle.ViewStyle(0);
  *(v5 + 816) = swift_task_alloc();
  *(v5 + 824) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = type metadata accessor for MessageCoordinator.TransitionReason(0);
  *(v5 + 848) = swift_task_alloc();
  *(v5 + 856) = *a1;
  v7 = *(a1 + 24);
  *(v5 + 864) = *(a1 + 8);
  *(v5 + 880) = v7;
  *(v5 + 673) = *(a1 + 40);
  sub_2705D78A4();
  *(v5 + 896) = sub_2705D7894();
  v9 = sub_2705D7844();
  *(v5 + 904) = v9;
  *(v5 + 912) = v8;

  return MEMORY[0x2822009F8](sub_270490374, v9, v8);
}

uint64_t sub_270490374()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 848);
  sub_270495A34();
  OUTLINED_FUNCTION_25_11();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_3_42();
  sub_2704986F8(v1, v3);
  v4 = *(v0 + 673);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 872);
  v8 = *(v0 + 864);
  v9 = *(v0 + 856);
  if (EnumCaseMultiPayload == 2)
  {
    *(v0 + 728) = v9;
    *(v0 + 736) = v8;
    *(v0 + 744) = v7;
    *(v0 + 752) = v6;
    *(v0 + 760) = v5;
    *(v0 + 768) = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    *(v0 + 920) = v10;
    *v10 = v11;
    v10[1] = sub_27049050C;

    return sub_270490B80(v0 + 728);
  }

  else
  {
    *(v0 + 680) = v9;
    *(v0 + 688) = v8;
    *(v0 + 696) = v7;
    *(v0 + 704) = v6;
    *(v0 + 712) = v5;
    *(v0 + 720) = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    *(v0 + 960) = v13;
    *v13 = v14;
    v13[1] = sub_270490A74;
    v15 = *(v0 + 792);
    v16 = *(v0 + 784);
    v17 = *(v0 + 776);

    return sub_270491C08(v0 + 680, v17, v16, v15);
  }
}

uint64_t sub_27049050C()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_69_2();
  v2 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  OUTLINED_FUNCTION_68_1();
  v5 = *(v4 + 912);
  v6 = *(v0 + 904);

  return MEMORY[0x2822009F8](sub_270490618, v6, v5);
}

uint64_t sub_270490618()
{
  OUTLINED_FUNCTION_67_2();
  v1 = *(v0 + 832);
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  v2 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_59_4(v1, 1, v2);
  if (v3)
  {
    v4 = *(v0 + 832);

    sub_2703C2EFC(v4, &qword_2807D3C28);
  }

  else
  {
    OUTLINED_FUNCTION_36_8();
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_25_11();
    sub_270495A34();
    OUTLINED_FUNCTION_2_38();
    sub_2704986F8(v1, v5);
    OUTLINED_FUNCTION_5_41();
    sub_270498540();
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      memcpy((v0 + 16), *(v0 + 816), 0x291uLL);
      *(v0 + 928) = *(v0 + 656);
      *(v0 + 936) = *(v0 + 664);
      v7 = *(v0 + 672);
      *(v0 + 674) = v7;
      v8 = OUTLINED_FUNCTION_25_11();
      sub_2703AE9E8(v8, v9, v7);
      sub_270452424(v0 + 16);
      if (v7 == 255)
      {
      }

      else
      {
        Strong = swift_weakLoadStrong();
        *(v0 + 944) = Strong;
        if (Strong)
        {
          v11 = swift_task_alloc();
          *(v0 + 952) = v11;
          *v11 = v0;
          v11[1] = sub_270490880;
          v12 = OUTLINED_FUNCTION_25_11();

          return (sub_270499EFC)(v12);
        }

        v15 = OUTLINED_FUNCTION_25_11();
        sub_2703AE980(v15, v16, v7);
      }
    }

    else
    {
      v14 = *(v0 + 816);

      sub_2704986F8(v14, type metadata accessor for MessageViewStyle.ViewStyle);
    }
  }

  OUTLINED_FUNCTION_36_8();

  OUTLINED_FUNCTION_1_4();

  return v17();
}

uint64_t sub_270490880()
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = v0[117];
  v5 = v0[116];
  v6 = *v1;
  v7 = *(v2 + 674);
  OUTLINED_FUNCTION_5_15();
  *v8 = v6;

  sub_2703AE980(v5, v4, v7);
  OUTLINED_FUNCTION_68_1();
  v10 = *(v9 + 912);
  v11 = v0[113];

  return MEMORY[0x2822009F8](sub_2704909F0, v11, v10);
}

uint64_t sub_2704909F0()
{
  OUTLINED_FUNCTION_23_14();

  OUTLINED_FUNCTION_36_8();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270490A74()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_69_2();
  v2 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  OUTLINED_FUNCTION_68_1();
  v5 = *(v4 + 912);
  v6 = *(v0 + 904);

  return MEMORY[0x2822009F8](sub_2704909F0, v6, v5);
}

uint64_t sub_270490B80(uint64_t a1)
{
  v3 = v1;
  *(v2 + 608) = v3;
  *(v2 + 616) = *v3;
  *(v2 + 624) = type metadata accessor for MessageCoordinator.TransitionReason(0);
  *(v2 + 632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = type metadata accessor for MessageViewStyle(0);
  *(v2 + 656) = swift_task_alloc();
  sub_2705D6524();
  *(v2 + 664) = swift_task_alloc();
  *(v2 + 672) = *a1;
  v5 = *(a1 + 24);
  *(v2 + 680) = *(a1 + 8);
  *(v2 + 696) = v5;
  *(v2 + 57) = *(a1 + 40);
  sub_2705D78A4();
  *(v2 + 712) = sub_2705D7894();
  v7 = sub_2705D7844();
  *(v2 + 720) = v7;
  *(v2 + 728) = v6;

  return MEMORY[0x2822009F8](sub_270490D2C, v7, v6);
}

uint64_t sub_270490D2C()
{
  v57 = v0;
  if (qword_2807CE830 != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  *(v0 + 736) = qword_28081C4F0;
  *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v3 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v3);
  *(v0 + 752) = *(v4 + 72);
  *(v0 + 60) = *(v5 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2705E10F0;
  v51 = v6;
  *(v0 + 88) = v1;
  *(v0 + 64) = v2;

  v7 = AMSLogKey();
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {
    v9 = v7;
    v10 = v0 + 544;
    v11 = sub_2705D7564();
    v13 = v12;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v14 = OUTLINED_FUNCTION_54_3((v0 + 64));
    *(v0 + 536) = swift_getMetatypeMetadata();
    *(v0 + 512) = v14;
    sub_2705D64E4();
    sub_2703C2EFC(v0 + 512, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v0 + 568) = v8;
    *(v0 + 544) = v11;
    *(v0 + 552) = v13;
  }

  else
  {
    v10 = v0 + 96;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v15 = OUTLINED_FUNCTION_54_3((v0 + 64));
    *(v0 + 120) = swift_getMetatypeMetadata();
    *(v0 + 96) = v15;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v10, &unk_2807D4890);
  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  v18 = *(v0 + 688);
  v19 = *(v0 + 680);
  v20 = *(v0 + 672);
  v21 = *(v0 + 57);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  sub_2705D64C4();
  *(v0 + 152) = &type metadata for MessagePlacement;
  OUTLINED_FUNCTION_50_4();
  v22 = swift_allocObject();
  *(v0 + 128) = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  *(v22 + 32) = v18;
  *(v22 + 40) = v17;
  *(v22 + 48) = v16;
  *(v22 + 56) = v21;

  sub_2703B4984(v17, v16, v21);
  sub_2705D6544();
  sub_2703C2EFC(v0 + 128, &unk_2807D4890);
  sub_27047CF60(v51);

  Strong = swift_weakLoadStrong();
  *(v0 + 760) = Strong;
  if (Strong)
  {
    v24 = *(v0 + 57);
    *(v0 + 16) = *(v0 + 672);
    v25 = *(v0 + 696);
    *(v0 + 24) = *(v0 + 680);
    *(v0 + 40) = v25;
    *(v0 + 56) = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    *(v0 + 768) = v26;
    *v26 = v27;
    v26[1] = sub_2704913DC;

    return MessageCenter.fetchMessage(messagePlacement:)();
  }

  else
  {
    v29 = *(v0 + 648);
    v30 = *(v0 + 640);

    __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
    v31 = OUTLINED_FUNCTION_46_6();
    sub_2703C2EFC(v31, &qword_2807D3C28);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2705EB880;
    *(v0 + 376) = v16;
    *(v0 + 352) = v30;

    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      v35 = v0 + 480;
      v36 = sub_2705D7564();
      v38 = v37;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v39 = OUTLINED_FUNCTION_19_11((v0 + 352));
      *(v0 + 472) = swift_getMetatypeMetadata();
      *(v0 + 448) = v39;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 448, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 504) = MEMORY[0x277D837D0];
      *(v0 + 480) = v36;
      *(v0 + 488) = v38;
    }

    else
    {
      v35 = v0 + 384;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v40 = OUTLINED_FUNCTION_19_11((v0 + 352));
      *(v0 + 408) = swift_getMetatypeMetadata();
      *(v0 + 384) = v40;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v35, &unk_2807D4890);
    v41 = *(v0 + 704);
    v42 = *(v0 + 696);
    v43 = *(v0 + 688);
    v44 = *(v0 + 680);
    v50 = *(v0 + 632);
    v49 = *(v0 + 672);
    v45 = *(v0 + 57);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 352);
    sub_2705D64C4();
    *(v0 + 440) = &type metadata for MessagePlacement;
    OUTLINED_FUNCTION_50_4();
    v46 = swift_allocObject();
    *(v0 + 416) = v46;
    *(v46 + 16) = v49;
    *(v46 + 24) = v44;
    *(v46 + 32) = v43;
    *(v46 + 40) = v42;
    *(v46 + 48) = v41;
    *(v46 + 56) = v45;

    sub_2703B4984(v42, v41, v45);
    sub_2705D6544();
    sub_2703C2EFC(v0 + 416, &unk_2807D4890);
    OUTLINED_FUNCTION_43_5();
    sub_2705D64C4();
    sub_27047CF60(v32);

    *&v52 = v49;
    *(&v52 + 1) = v44;
    v53 = v43;
    v54 = v42;
    v55 = v41;
    v56 = v45;
    swift_storeEnumTagMultiPayload();
    sub_27048D074(&v52, v50);
    OUTLINED_FUNCTION_3_42();
    sub_2704986F8(v50, v47);
    OUTLINED_FUNCTION_51_4();

    OUTLINED_FUNCTION_1_4();

    return v48();
  }
}

uint64_t sub_2704913DC()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  v3[97] = v0;

  v7 = v3[91];
  v8 = v3[90];
  if (v0)
  {
    v9 = sub_2704918AC;
  }

  else
  {
    v9 = sub_270491508;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_270491508()
{
  v38 = v0;
  v2 = *(v0 + 640);

  OUTLINED_FUNCTION_13_19(v2);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_46_6();
    sub_2703C2EFC(v4, &qword_2807D3C28);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2705EB880;
    v31 = v5;
    *(v0 + 376) = v1;
    *(v0 + 352) = v2;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      v8 = v0 + 480;
      v9 = sub_2705D7564();
      v11 = v10;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v12 = OUTLINED_FUNCTION_19_11((v0 + 352));
      *(v0 + 472) = swift_getMetatypeMetadata();
      *(v0 + 448) = v12;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 448, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 504) = MEMORY[0x277D837D0];
      *(v0 + 480) = v9;
      *(v0 + 488) = v11;
    }

    else
    {
      v8 = v0 + 384;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v20 = OUTLINED_FUNCTION_19_11((v0 + 352));
      *(v0 + 408) = swift_getMetatypeMetadata();
      *(v0 + 384) = v20;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v8, &unk_2807D4890);
    v21 = *(v0 + 704);
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);
    v25 = *(v0 + 632);
    v30 = *(v0 + 672);
    v26 = *(v0 + 57);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 352);
    sub_2705D64C4();
    *(v0 + 440) = &type metadata for MessagePlacement;
    OUTLINED_FUNCTION_50_4();
    v27 = swift_allocObject();
    *(v0 + 416) = v27;
    *(v27 + 16) = v30;
    *(v27 + 24) = v24;
    *(v27 + 32) = v23;
    *(v27 + 40) = v22;
    *(v27 + 48) = v21;
    *(v27 + 56) = v26;

    sub_2703B4984(v22, v21, v26);
    sub_2705D6544();
    sub_2703C2EFC(v0 + 416, &unk_2807D4890);
    OUTLINED_FUNCTION_43_5();
    sub_2705D64C4();
    sub_27047CF60(v31);

    v33 = v30;
    *&v34 = v24;
    *(&v34 + 1) = v23;
    v35 = v22;
    v36 = v21;
    v37 = v26;
    swift_storeEnumTagMultiPayload();
    sub_27048D074(&v33, v25);
    OUTLINED_FUNCTION_3_42();
    v19 = v25;
  }

  else
  {
    v13 = *(v0 + 57);
    v14 = *(v0 + 704);
    v15 = *(v0 + 696);
    v16 = *(v0 + 672);
    v17 = *(v0 + 656);
    v32 = *(v0 + 680);
    sub_270498540();
    v33 = v16;
    v34 = v32;
    v35 = v15;
    v36 = v14;
    v37 = v13;
    sub_27048DCF0();
    OUTLINED_FUNCTION_2_38();
    v19 = v17;
  }

  sub_2704986F8(v19, v18);
  OUTLINED_FUNCTION_51_4();

  OUTLINED_FUNCTION_1_4();

  return v28();
}

uint64_t sub_2704918AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 616);
  v18 = *(v16 + 608);

  v19 = swift_allocObject();
  *(v16 + 160) = v18;
  *(v19 + 16) = xmmword_2705E6EB0;
  *(v16 + 184) = v17;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    v22 = v16 + 320;
    v23 = sub_2705D7564();
    v25 = v24;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v26 = OUTLINED_FUNCTION_19_11((v16 + 160));
    *(v16 + 312) = swift_getMetatypeMetadata();
    *(v16 + 288) = v26;
    sub_2705D64E4();
    sub_2703C2EFC(v16 + 288, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v16 + 344) = MEMORY[0x277D837D0];
    *(v16 + 320) = v23;
    *(v16 + 328) = v25;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v27 = OUTLINED_FUNCTION_19_11((v16 + 160));
    MetatypeMetadata = swift_getMetatypeMetadata();
    *(v16 + 192) = v27;
    v22 = v16 + 192;
    *(v16 + 216) = MetatypeMetadata;
  }

  sub_2705D64E4();
  sub_2703C2EFC(v22, &unk_2807D4890);
  v46 = *(v16 + 776);
  v47 = *(v16 + 752);
  v48 = v19;
  v49 = *(v16 + 736);
  v29 = *(v16 + 704);
  v30 = *(v16 + 696);
  v31 = *(v16 + 688);
  v32 = *(v16 + 680);
  v45 = *(v16 + 672);
  v33 = *(v16 + 57);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v16 + 160);
  sub_2705D6514();
  sub_2705D6504();
  *(v16 + 248) = &type metadata for MessagePlacement;
  OUTLINED_FUNCTION_50_4();
  v34 = swift_allocObject();
  *(v16 + 224) = v34;
  *(v34 + 16) = v45;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  *(v34 + 40) = v30;
  *(v34 + 48) = v29;
  *(v34 + 56) = v33;

  sub_2703B4984(v30, v29, v33);
  sub_2705D64E4();
  sub_2703C2EFC(v16 + 224, &unk_2807D4890);
  sub_2705D6504();
  swift_getErrorValue();
  *(v16 + 280) = *(v16 + 584);
  __swift_allocate_boxed_opaque_existential_0Tm((v16 + 256));
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_74_2();
  v35();
  sub_2705D64E4();
  sub_2703C2EFC(v16 + 256, &unk_2807D4890);
  OUTLINED_FUNCTION_12_20();
  sub_2705D6534();
  sub_27047CF78(v48);

  OUTLINED_FUNCTION_51_4();

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_59_3();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_270491C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 2336) = v6;
  *(v5 + 2328) = a4;
  *(v5 + 2320) = a3;
  *(v5 + 2312) = a2;
  *(v5 + 2344) = *v6;
  sub_2705D6524();
  *(v5 + 2352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
  *(v5 + 2360) = swift_task_alloc();
  v8 = sub_2705D4594();
  *(v5 + 2368) = v8;
  *(v5 + 2376) = *(v8 - 8);
  *(v5 + 2384) = swift_task_alloc();
  *(v5 + 2392) = swift_task_alloc();
  *(v5 + 2400) = type metadata accessor for MessageViewStyle.ViewStyle(0);
  *(v5 + 2408) = swift_task_alloc();
  *(v5 + 2416) = swift_task_alloc();
  *(v5 + 2424) = swift_task_alloc();
  *(v5 + 2432) = swift_task_alloc();
  *(v5 + 2440) = swift_task_alloc();
  *(v5 + 2448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  *(v5 + 2456) = swift_task_alloc();
  *(v5 + 2464) = swift_task_alloc();
  *(v5 + 2472) = swift_task_alloc();
  *(v5 + 2480) = swift_task_alloc();
  *(v5 + 2488) = *a1;
  *(v5 + 2496) = *(a1 + 8);
  *(v5 + 2512) = *(a1 + 24);
  *(v5 + 673) = *(a1 + 40);
  sub_2705D78A4();
  *(v5 + 2528) = sub_2705D7894();
  v10 = sub_2705D7844();
  *(v5 + 2536) = v10;
  *(v5 + 2544) = v9;

  return MEMORY[0x2822009F8](sub_270491E90, v10, v9);
}

uint64_t sub_270491E90()
{
  v119 = v0;
  Strong = swift_weakLoadStrong();
  *(v0 + 2552) = Strong;
  if (!Strong)
  {

    if (qword_2807CE830 != -1)
    {
      OUTLINED_FUNCTION_0_43();
    }

    v10 = *(v0 + 2344);
    v11 = *(v0 + 2336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    OUTLINED_FUNCTION_73_1();
    v12 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v12);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2705E6EB0;
    *(v0 + 2208) = v10;
    *(v0 + 2184) = v11;

    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      v16 = v0 + 2280;
      v17 = sub_2705D7564();
      v19 = v18;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      v20 = OUTLINED_FUNCTION_54_3((v0 + 2184));
      *(v0 + 2272) = swift_getMetatypeMetadata();
      *(v0 + 2248) = v20;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 2248, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 2304) = MEMORY[0x277D837D0];
      *(v0 + 2280) = v17;
      *(v0 + 2288) = v19;
    }

    else
    {
      v16 = v0 + 2216;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      v25 = OUTLINED_FUNCTION_54_3((v0 + 2184));
      *(v0 + 2240) = swift_getMetatypeMetadata();
      *(v0 + 2216) = v25;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v16, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2184);
    sub_2705D64C4();
    sub_27047CF78(v13);

LABEL_50:
    OUTLINED_FUNCTION_9_28();

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_71_2();

    __asm { BRAA            X1, X16 }
  }

  v2 = sub_27048C154();
  v3 = sub_27048C154();
  if (v2)
  {
    if ((v3 & 1) == 0)
    {
      v4 = *(v0 + 2472);
      type metadata accessor for MessageState(0);
      sub_27049A26C();
      v5 = type metadata accessor for MessageViewStyle(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
      v7 = *(v0 + 2472);
      if (EnumTagSinglePayload == 1)
      {
        v8 = &qword_2807D3C28;
        v9 = *(v0 + 2472);
LABEL_14:
        sub_2703C2EFC(v9, v8);
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_92_0();
      sub_270495A34();
      OUTLINED_FUNCTION_2_38();
      sub_2704986F8(v7, v26);
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_15_18();
      sub_270498540();
      OUTLINED_FUNCTION_8_3();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v28 = *(v0 + 2424);
      if (EnumCaseMultiPayload == 4)
      {
        memcpy((v0 + 1344), v28, 0x291uLL);
        v29 = *(v0 + 2000);
        v30 = OUTLINED_FUNCTION_33_9();
        sub_2703AE9E8(v30, v31, v32);
        sub_270452424(v0 + 1344);
        if (v29 == 255)
        {
          goto LABEL_28;
        }

        v33 = *(v0 + 2368);
        v34 = *(v0 + 2360);
        sub_27049A26C();
        OUTLINED_FUNCTION_59_4(v34, 1, v33);
        if (!v35)
        {
          v97 = *(v0 + 2376);
          (*(v97 + 32))(*(v0 + 2392), *(v0 + 2360), *(v0 + 2368));
          sub_2705D4574();
          sub_2705D4524();
          v98 = *(v97 + 8);
          v99 = OUTLINED_FUNCTION_45_5();
          v98(v99);
          v100 = OUTLINED_FUNCTION_33_9();
          sub_2704B5518(v100, v101, v102, v103, v104);
          v105 = v114;
          v113 = v115;
          v106 = OUTLINED_FUNCTION_33_9();
          sub_2703AE630(v106, v107, v108);
          v109 = sub_270499664(0, 1, 1, MEMORY[0x277D84F90]);
          v49 = v109;
          v111 = *(v109 + 2);
          v110 = *(v109 + 3);
          if (v111 >= v110 >> 1)
          {
            v49 = OUTLINED_FUNCTION_32_6(v110);
          }

          (v98)(*(v0 + 2392), *(v0 + 2368));
          *(v49 + 2) = v111 + 1;
          v112 = &v49[40 * v111];
          *(v112 + 4) = 0xD000000000000012;
          *(v112 + 5) = 0x8000000270614800;
          *(v112 + 3) = v105;
          v112[64] = v113;
          v52 = 1;
          goto LABEL_29;
        }

        v24 = *(v0 + 2360);
        v36 = OUTLINED_FUNCTION_33_9();
        sub_2703AE980(v36, v37, v38);
        v8 = &qword_2807D3E10;
LABEL_13:
        v9 = v24;
        goto LABEL_14;
      }

      goto LABEL_27;
    }

LABEL_28:
    v52 = 0;
    v49 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_28;
  }

  v21 = *(v0 + 2480);
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  v22 = type metadata accessor for MessageViewStyle(0);
  v23 = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v24 = *(v0 + 2480);
  if (v23 == 1)
  {
    v8 = &qword_2807D3C28;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_34();
  sub_270495A34();
  OUTLINED_FUNCTION_2_38();
  sub_2704986F8(v24, v39);
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_92_0();
  sub_270498540();
  OUTLINED_FUNCTION_15_18();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = *(v0 + 2440);
  if (EnumCaseMultiPayload != 4)
  {
LABEL_27:
    v54 = OUTLINED_FUNCTION_26_13(EnumCaseMultiPayload, v28);
    sub_2704986F8(v54, v55);
    goto LABEL_28;
  }

  memcpy((v0 + 680), v28, 0x291uLL);
  v40 = *(v0 + 1336);
  v41 = OUTLINED_FUNCTION_19_8();
  sub_2703AE9E8(v41, v42, v43);
  sub_270452424(v0 + 680);
  if (v40 == 255)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_19_8();
  sub_2704B4CA8();
  v44 = OUTLINED_FUNCTION_19_8();
  sub_2703AE980(v44, v45, v46);
  v47 = v114;
  v48 = v115;
  v49 = sub_270499664(0, 1, 1, MEMORY[0x277D84F90]);
  v51 = *(v49 + 2);
  v50 = *(v49 + 3);
  if (v51 >= v50 >> 1)
  {
    v49 = OUTLINED_FUNCTION_32_6(v50);
  }

  v52 = 0;
  *(v49 + 2) = v51 + 1;
  v53 = &v49[40 * v51];
  *(v53 + 4) = 0xD000000000000010;
  *(v53 + 5) = 0x80000002706147E0;
  *(v53 + 3) = v47;
  v53[64] = v48;
LABEL_29:
  *(v0 + 674) = v52;
  v56 = *(v0 + 2464);
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  type metadata accessor for MessageViewStyle(0);
  v57 = OUTLINED_FUNCTION_64_3(v56);
  v58 = *(v0 + 2464);
  if (v57 == 1)
  {
    v59 = *(v0 + 2464);
LABEL_31:
    sub_2703C2EFC(v59, &qword_2807D3C28);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_8_3();
  sub_270495A34();
  OUTLINED_FUNCTION_2_38();
  sub_2704986F8(v58, v60);
  OUTLINED_FUNCTION_5_41();
  OUTLINED_FUNCTION_45_5();
  sub_270498540();
  v61 = swift_getEnumCaseMultiPayload();
  v62 = *(v0 + 2408);
  if (v61 != 4)
  {
    v83 = OUTLINED_FUNCTION_26_13(v61, v62);
    sub_2704986F8(v83, v84);
    goto LABEL_42;
  }

  memcpy((v0 + 16), v62, 0x291uLL);
  v63 = *(v0 + 656);
  v64 = *(v0 + 664);
  v65 = *(v0 + 672);
  v66 = OUTLINED_FUNCTION_60_3();
  sub_2703AE9E8(v66, v67, v68);
  sub_270452424(v0 + 16);
  if (v65 == 255)
  {
LABEL_42:
    LOBYTE(v77) = 0;
    goto LABEL_43;
  }

  v69 = *(v0 + 2456);
  sub_27049A26C();
  v70 = OUTLINED_FUNCTION_64_3(v69);
  v71 = *(v0 + 2456);
  if (v70 != 1)
  {
    v94 = OUTLINED_FUNCTION_60_3();
    sub_2703AE980(v94, v95, v96);
    v59 = v71;
    goto LABEL_31;
  }

  sub_2703C2EFC(*(v0 + 2456), &qword_2807D3C28);
  v117[0] = v63;
  v117[1] = v64;
  v118 = v65;
  sub_270492D94(v117, &v114);
  v72 = OUTLINED_FUNCTION_60_3();
  sub_2703AE980(v72, v73, v74);
  *(v0 + 2113) = *&v116[9];
  v75 = *v116;
  v76 = v114;
  *(v0 + 2088) = v115;
  *(v0 + 2104) = v75;
  *(v0 + 2072) = v76;
  v77 = *(v0 + 2080);
  if (v77)
  {
    *(v0 + 2008) = *(v0 + 2072);
    *(v0 + 2016) = v77;
    v78 = *v116;
    *(v0 + 2024) = v115;
    *(v0 + 2040) = v78;
    *(v0 + 2049) = *&v116[9];
    sub_2704B48E4();
    sub_2703C2EFC(v0 + 2072, &qword_2807D3E40);
    v79 = v114;
    v80 = v115;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_270499664(0, *(v49 + 2) + 1, 1, v49);
    }

    v82 = *(v49 + 2);
    v81 = *(v49 + 3);
    if (v82 >= v81 >> 1)
    {
      v49 = OUTLINED_FUNCTION_32_6(v81);
    }

    *(v49 + 2) = v82 + 1;
    v77 = &v49[40 * v82];
    *(v77 + 4) = 0xD000000000000010;
    *(v77 + 5) = 0x80000002706147C0;
    *(v77 + 3) = v79;
    v77[64] = v80;
    LOBYTE(v77) = 1;
  }

LABEL_43:
  *(v0 + 675) = v77;
  if (*(v49 + 2))
  {
    *(v0 + 2560) = sub_270492F2C(v49);

    v85 = swift_task_alloc();
    *(v0 + 2568) = v85;
    *v85 = v0;
    v85[1] = sub_270492944;
    OUTLINED_FUNCTION_71_2();

    return MessageCenter.record(events:)();
  }

  if (*(v0 + 674) != 1 || (*(v0 + 675) & 1) != 0)
  {

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_44_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 2576) = v90;
  *v90 = v91;
  OUTLINED_FUNCTION_23_15(v90);
  OUTLINED_FUNCTION_71_2();

  return sub_270490B80(v92);
}

uint64_t sub_270492944()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_69_2();
  v2 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  OUTLINED_FUNCTION_68_1();
  v5 = *(v4 + 2544);
  v6 = *(v0 + 2536);

  return MEMORY[0x2822009F8](sub_270492A74, v6, v5);
}

uint64_t sub_270492A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_76_1();
  if (*(v16 + 674) == 1 && (*(v16 + 675) & 1) == 0)
  {
    OUTLINED_FUNCTION_44_4();
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    *(v16 + 2576) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_23_15(v26);
    OUTLINED_FUNCTION_59_3();

    return sub_270490B80(v28);
  }

  else
  {

    OUTLINED_FUNCTION_9_28();

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_59_3();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_270492BB0()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_69_2();
  v2 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  OUTLINED_FUNCTION_68_1();
  v5 = *(v4 + 2544);
  v6 = *(v0 + 2536);

  return MEMORY[0x2822009F8](sub_270492CBC, v6, v5);
}

uint64_t sub_270492CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_76_1();

  OUTLINED_FUNCTION_9_28();

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_59_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_270492D94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessageCoordinator.TransitionReason(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_270495A34();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      *a2 = 0x6D73694472657375;
      *(a2 + 8) = 0xEB00000000737369;
      goto LABEL_7;
    case 4:
      *a2 = 0xD00000000000001ALL;
      *(a2 + 8) = 0x8000000270614820;
LABEL_7:
      *(a2 + 16) = v8;
      *(a2 + 24) = v7;
      *(a2 + 32) = v9;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v11 = -1;
      goto LABEL_8;
    case 0:
      v11 = v6[16];
      *a2 = 0x6B63696C63;
      *(a2 + 8) = 0xE500000000000000;
      *(a2 + 16) = v8;
      *(a2 + 24) = v7;
      *(a2 + 32) = v9;
      *(a2 + 40) = *v6;
LABEL_8:
      *(a2 + 56) = v11;
      return sub_2703AE9FC(v8, v7, v9);
  }

  *(a2 + 41) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return sub_2704986F8(v6, type metadata accessor for MessageCoordinator.TransitionReason);
}

uint64_t sub_270492F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2704ADDD4(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;

      sub_2703AE9FC(v7, v8, v9);
      v17 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2704ADDD4((v10 > 1), v11 + 1, 1);
        v2 = v17;
      }

      v4 += 40;
      v15 = &type metadata for MessageEventBox;
      v16 = &protocol witness table for MessageEventBox;
      v12 = swift_allocObject();
      *&v14 = v12;
      *(v12 + 16) = v5;
      *(v12 + 24) = v6;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      *(v2 + 16) = v11 + 1;
      sub_2703B291C(&v14, v2 + 40 * v11 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_270493064()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v2 = type metadata accessor for TextComponentModel();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2704ADDF4(0, v9, 0);
    v10 = v18;
    v11 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_270495A34();
      v18 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2704ADDF4((v13 > 1), v14 + 1, 1);
        v10 = v18;
      }

      v16 = v2;
      v17 = sub_27049A354(&qword_2807D23B0, type metadata accessor for TextComponentModel);
      __swift_allocate_boxed_opaque_existential_0Tm(&v15);
      sub_270495A34();
      *(v10 + 16) = v14 + 1;
      sub_2703B291C(&v15, v10 + 40 * v14 + 32);
      sub_2704986F8(v8, type metadata accessor for TextComponentModel);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270493244(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2704ADDD4(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 3);
      v14 = *(v4 - 4);
      v15 = *(v4 - 6);
      v7 = *(v4 - 1);
      v13 = *(v4 - 2);
      v8 = *v4;
      v19 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_2704ADDD4((v10 > 1), v9 + 1, 1);
        v2 = v19;
      }

      v4 += 7;
      v17 = &type metadata for NavigationEvent.NavigationEventCodable;
      v18 = &off_2880593B8;
      v11 = swift_allocObject();
      *&v16 = v11;
      v11[2] = v15;
      v11[3] = v5;
      v11[4] = v14;
      v11[5] = v6;
      v11[6] = v13;
      v11[7] = v7;
      v11[8] = v8;
      *(v2 + 16) = v9 + 1;
      sub_2703B291C(&v16, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_270493398(uint64_t *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v4 = v3;
  v101 = v4;
  v100 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v95 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v95 - v17;
  v19 = sub_2705D6524();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = a1[1];
  v102 = *a1;
  v103 = v20;
  v21 = a1[3];
  v104 = a1[2];
  v106 = a1[4];
  v107 = v21;
  v105 = *(a1 + 40);
  v22 = sub_27048C154();
  v109 = a3;
  v23 = sub_27048C154();
  v108 = a2;
  if (v22)
  {
    if ((v23 & 1) == 0)
    {
      if (qword_2807CE830 != -1)
      {
        swift_once();
      }

      v98 = qword_28081C4F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v97 = *(*(sub_2705D6574() - 8) + 72);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2705E6EB0;
      v114 = v100;
      v113[0] = v101;

      v25 = AMSLogKey();
      if (v25)
      {
        v26 = v25;
        v96 = sub_2705D7564();
        v28 = v27;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v113, v114);
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v110 = DynamicType;
        sub_2705D64E4();
        sub_2703C2EFC(&v110, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v110 = v96;
        v111 = v28;
LABEL_13:
        sub_2705D64E4();
        sub_2703C2EFC(&v110, &unk_2807D4890);
        sub_2705D6504();
        sub_2705D6534();
        __swift_destroy_boxed_opaque_existential_1(v113);
        sub_2705D6514();
        sub_2705D6504();
        v114 = &type metadata for MessagePlacement;
        v36 = swift_allocObject();
        v113[0] = v36;
        v37 = v103;
        *(v36 + 16) = v102;
        *(v36 + 24) = v37;
        v39 = v106;
        v38 = v107;
        *(v36 + 32) = v104;
        *(v36 + 40) = v38;
        *(v36 + 48) = v39;
        v40 = v105;
        *(v36 + 56) = v105;

        sub_2703B4984(v38, v39, v40);
        sub_2705D64E4();
        sub_2703C2EFC(v113, &unk_2807D4890);
        sub_2705D6504();
        sub_2705D6534();
        sub_27047CF60(v24);

        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else if (v23)
  {
    if (qword_2807CE830 != -1)
    {
      swift_once();
    }

    v98 = qword_28081C4F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v97 = *(*(sub_2705D6574() - 8) + 72);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2705E6EB0;
    v114 = v100;
    v113[0] = v101;

    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      v32 = sub_2705D7564();
      v96 = v33;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v34 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v110 = v34;
      sub_2705D64E4();
      sub_2703C2EFC(&v110, &unk_2807D4890);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v110 = v32;
      v111 = v96;
      goto LABEL_13;
    }

LABEL_12:
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v35 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v110 = v35;
    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MessageState(0);
  sub_27049A26C();
  v41 = type metadata accessor for MessageViewStyle(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v41);
  sub_2703C2EFC(v18, &qword_2807D3C28);
  if (EnumTagSinglePayload != 1)
  {
    sub_27049A26C();
    v43 = __swift_getEnumTagSinglePayload(v16, 1, v41);
    sub_2703C2EFC(v16, &qword_2807D3C28);
    if (v43 == 1)
    {
      if (qword_2807CE830 != -1)
      {
        swift_once();
      }

      v98 = qword_28081C4F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v97 = *(*(sub_2705D6574() - 8) + 72);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2705E6EB0;
      v96 = v44;
      v114 = v100;
      v113[0] = v101;

      v45 = AMSLogKey();
      if (v45)
      {
        v46 = v45;
        v95 = sub_2705D7564();
        v48 = v47;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v113, v114);
        v49 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v110 = v49;
        sub_2705D64E4();
        sub_2703C2EFC(&v110, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v110 = v95;
        v111 = v48;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v113, v114);
        v50 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v110 = v50;
      }

      sub_2705D64E4();
      sub_2703C2EFC(&v110, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v113);
      sub_2705D6514();
      sub_2705D6504();
      v114 = &type metadata for MessagePlacement;
      v51 = swift_allocObject();
      v113[0] = v51;
      v52 = v103;
      *(v51 + 16) = v102;
      *(v51 + 24) = v52;
      v54 = v106;
      v53 = v107;
      *(v51 + 32) = v104;
      *(v51 + 40) = v53;
      *(v51 + 48) = v54;
      v55 = v105;
      *(v51 + 56) = v105;

      sub_2703B4984(v53, v54, v55);
      sub_2705D64E4();
      sub_2703C2EFC(v113, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      sub_27047CF60(v96);
    }
  }

  v56 = v108;
  sub_27049A26C();
  v57 = __swift_getEnumTagSinglePayload(v13, 1, v41);
  result = sub_2703C2EFC(v13, &qword_2807D3C28);
  if (v57 == 1)
  {
    v59 = v99;
    sub_27049A26C();
    v60 = __swift_getEnumTagSinglePayload(v59, 1, v41);
    result = sub_2703C2EFC(v59, &qword_2807D3C28);
    if (v60 != 1)
    {
      if (qword_2807CE830 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_2705E6EB0;
      v114 = v100;
      v113[0] = v101;

      v62 = AMSLogKey();
      if (v62)
      {
        v63 = v62;
        v64 = sub_2705D7564();
        v66 = v65;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v113, v114);
        v67 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v110 = v67;
        sub_2705D64E4();
        sub_2703C2EFC(&v110, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v110 = v64;
        v111 = v66;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v113, v114);
        v68 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v110 = v68;
      }

      sub_2705D64E4();
      sub_2703C2EFC(&v110, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v113);
      sub_2705D6514();
      sub_2705D6504();
      v114 = &type metadata for MessagePlacement;
      v69 = swift_allocObject();
      v113[0] = v69;
      v70 = v103;
      *(v69 + 16) = v102;
      *(v69 + 24) = v70;
      v72 = v106;
      v71 = v107;
      *(v69 + 32) = v104;
      *(v69 + 40) = v71;
      *(v69 + 48) = v72;
      v73 = v105;
      *(v69 + 56) = v105;

      sub_2703B4984(v71, v72, v73);
      sub_2705D64E4();
      sub_2703C2EFC(v113, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      sub_27047CF60(v61);

      v56 = v108;
    }
  }

  if (*v56 != *v109)
  {
    if (*v109)
    {
      v74 = 0x6465726165707061;
    }

    else
    {
      v74 = 0x6165707061736964;
    }

    if (*v109)
    {
      v75 = 0xE800000000000000;
    }

    else
    {
      v75 = 0xEB00000000646572;
    }

    if (qword_2807CE830 != -1)
    {
      swift_once();
    }

    v109 = qword_28081C4F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v76 = *(sub_2705D6574() - 8);
    v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_2705E6EB0;
    v79 = v78 + v77;
    v114 = v100;
    v113[0] = v101;

    v80 = AMSLogKey();
    if (v80)
    {
      v81 = v80;
      v82 = sub_2705D7564();
      v108 = v79;
      v83 = v74;
      v84 = v82;
      v101 = v75;
      v86 = v85;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v87 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v110 = v87;
      sub_2705D64E4();
      sub_2703C2EFC(&v110, &unk_2807D4890);
      sub_2705D6504();
      v88 = MEMORY[0x277D837D0];
      MetatypeMetadata = MEMORY[0x277D837D0];
      v110 = v84;
      v111 = v86;
      v74 = v83;
      v75 = v101;
      sub_2705D64E4();
      sub_2703C2EFC(&v110, &unk_2807D4890);
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v89 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v110 = v89;
      sub_2705D64E4();
      sub_2703C2EFC(&v110, &unk_2807D4890);
      v88 = MEMORY[0x277D837D0];
    }

    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v113);
    sub_2705D6514();
    sub_2705D6504();
    v114 = v88;
    v113[0] = v74;
    v113[1] = v75;
    sub_2705D64E4();
    sub_2703C2EFC(v113, &unk_2807D4890);
    sub_2705D6504();
    v114 = &type metadata for MessagePlacement;
    v90 = swift_allocObject();
    v113[0] = v90;
    v91 = v103;
    *(v90 + 16) = v102;
    *(v90 + 24) = v91;
    v93 = v106;
    v92 = v107;
    *(v90 + 32) = v104;
    *(v90 + 40) = v92;
    *(v90 + 48) = v93;
    v94 = v105;
    *(v90 + 56) = v105;

    sub_2703B4984(v92, v93, v94);
    sub_2705D64E4();
    sub_2703C2EFC(v113, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    sub_27047CE48(v78);
  }

  return result;
}

uint64_t sub_2704946D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v5[51] = type metadata accessor for MessageCoordinator.TransitionReason(0);
  v5[52] = swift_task_alloc();
  sub_2705D6524();
  v5[53] = swift_task_alloc();
  v5[54] = type metadata accessor for MessageAction();
  v5[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC8);
  v5[56] = swift_task_alloc();
  v5[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D50);
  v5[58] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EC0);
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = sub_2705D78A4();
  v5[63] = sub_2705D7894();
  v8 = sub_2705D7844();
  v5[64] = v8;
  v5[65] = v7;

  return MEMORY[0x2822009F8](sub_2704948DC, v8, v7);
}

uint64_t sub_2704948DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_67_2();
  MessageCenter.messageStream.getter();
  sub_27049AA84(&qword_2807D3D48, &qword_2807D3D50);
  sub_2705D79B4();
  swift_beginAccess();
  v17 = sub_2705D7894();
  *(v16 + 528) = v17;
  v18 = OUTLINED_FUNCTION_38_5(&qword_2807D3EC8, &qword_2807D3EC0);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v16 + 536) = v19;
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_24_16(v19);
  v26 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v21, v17, v26, v22, v23, v18, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_270494A0C()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;

  if (!v0)
  {

    v8 = *(v3 + 520);
    v9 = *(v3 + 512);

    return MEMORY[0x2822009F8](sub_270494B10, v9, v8);
  }

  return result;
}

uint64_t sub_270494B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_59_4(*(v16 + 448), 1, *(v16 + 432));
  if (v17)
  {
    (*(*(v16 + 480) + 8))(*(v16 + 488), *(v16 + 472));
  }

  else
  {
    sub_270498540();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = *(v16 + 440);
      if (*(v20 + *(*(v16 + 432) + 24)))
      {
        v21 = *(v20 + 8);
        v22 = *(v20 + 16);
        v23 = *(v20 + 24);
        v24 = *(v20 + 32);
        v25 = *(v20 + 40);
        *(v16 + 16) = *v20;
        *(v16 + 24) = v21;
        *(v16 + 32) = v22;
        *(v16 + 40) = v23;
        *(v16 + 48) = v24;
        *(v16 + 56) = v25;

        v26 = OUTLINED_FUNCTION_45_5();
        sub_2703B4984(v26, v27, v25);
        sub_27048DCF0();

        v28 = OUTLINED_FUNCTION_45_5();
        sub_2703AF9AC(v28, v29, v25);
        OUTLINED_FUNCTION_4_35();
        sub_2704986F8(v20, v30);
LABEL_10:
        *(v16 + 528) = sub_2705D7894();
        OUTLINED_FUNCTION_38_5(&qword_2807D3EC8, &qword_2807D3EC0);
        swift_task_alloc();
        OUTLINED_FUNCTION_34_9();
        *(v16 + 536) = v55;
        *v55 = v56;
        OUTLINED_FUNCTION_24_16();
        OUTLINED_FUNCTION_59_3();

        return MEMORY[0x282200310](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      v37 = *v20;
      v36 = *(v20 + 8);
      v38 = *(v20 + 16);
      v39 = *(v20 + 24);
      v40 = *(v20 + 32);
      v41 = *(v20 + 40);
      *(v16 + 112) = v37;
      *(v16 + 120) = v36;
      *(v16 + 128) = v38;
      *(v16 + 136) = v39;
      *(v16 + 144) = v40;
      *(v16 + 152) = v41;

      v42 = OUTLINED_FUNCTION_15_18();
      sub_2703B4984(v42, v43, v41);
      sub_27048E158((v16 + 112), (v16 + 64));
      LOBYTE(v40) = *(v16 + 152);

      v44 = OUTLINED_FUNCTION_92_0();
      sub_2703AF9AC(v44, v45, v40);
      v46 = *(v16 + 72);
      if (v46)
      {
        a13 = *(v16 + 440);
        v47 = *(v16 + 416);
        v49 = *(v16 + 88);
        v48 = *(v16 + 96);
        v50 = *(v16 + 80);
        v51 = *(v16 + 64);
        *(v16 + 160) = v51;
        *(v16 + 168) = v46;
        *(v16 + 176) = v50;
        *(v16 + 184) = v49;
        *(v16 + 192) = v48;
        v52 = *(v16 + 104);
        *(v16 + 200) = v52;
        swift_storeEnumTagMultiPayload();
        sub_27048D074((v16 + 160), v47);

        OUTLINED_FUNCTION_3_42();
        sub_2704986F8(v47, v53);
        OUTLINED_FUNCTION_4_35();
        sub_2704986F8(a13, v54);
        sub_270465F98(v51, v46, v50, v49, v48, v52);
        goto LABEL_10;
      }

      if (qword_2807CE830 != -1)
      {
        OUTLINED_FUNCTION_0_43();
      }

      a13 = qword_28081C4F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v65 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v65);
      v67 = *(v66 + 72);
      v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_2705E10F0;
      a12 = v70;
      v71 = v70 + v69;
      *(v16 + 232) = type metadata accessor for MessageCoordinator(0);
      *(v16 + 208) = v19;

      v72 = AMSLogKey();
      if (v72)
      {
        v73 = v72;
        v74 = v16 + 336;
        v75 = sub_2705D7564();
        v77 = v76;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        __swift_project_boxed_opaque_existential_1((v16 + 208), *(v16 + 232));
        DynamicType = swift_getDynamicType();
        *(v16 + 328) = swift_getMetatypeMetadata();
        *(v16 + 304) = DynamicType;
        sub_2705D64E4();
        sub_2703C2EFC(v16 + 304, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        *(v16 + 360) = MEMORY[0x277D837D0];
        *(v16 + 336) = v75;
        *(v16 + 344) = v77;
      }

      else
      {
        v74 = v16 + 240;
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        __swift_project_boxed_opaque_existential_1((v16 + 208), *(v16 + 232));
        v79 = swift_getDynamicType();
        *(v16 + 264) = swift_getMetatypeMetadata();
        *(v16 + 240) = v79;
      }

      sub_2705D64E4();
      sub_2703C2EFC(v74, &unk_2807D4890);
      v80 = *(v16 + 480);
      a10 = *(v16 + 472);
      a11 = *(v16 + 488);
      v81 = *(v16 + 440);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v16 + 208);
      sub_2705D64C4();
      a9 = v71 + 2 * v67;
      v82 = *v81;
      v83 = *(v81 + 8);
      v84 = *(v81 + 16);
      v85 = *(v81 + 24);
      v86 = *(v81 + 32);
      v87 = *(v81 + 40);
      *(v16 + 296) = &type metadata for MessagePlacement;
      OUTLINED_FUNCTION_50_4();
      v88 = swift_allocObject();
      *(v16 + 272) = v88;
      *(v88 + 16) = v82;
      *(v88 + 24) = v83;
      *(v88 + 32) = v84;
      *(v88 + 40) = v85;
      *(v88 + 48) = v86;
      *(v88 + 56) = v87;

      sub_2703B4984(v85, v86, v87);
      sub_2705D6544();
      sub_2703C2EFC(v16 + 272, &unk_2807D4890);
      sub_27047CF60(a12);

      OUTLINED_FUNCTION_4_35();
      sub_2704986F8(v81, v89);
      v35 = *(v80 + 8);
      v34 = a10;
      v33 = a11;
    }

    else
    {
      v31 = *(v16 + 440);

      OUTLINED_FUNCTION_4_35();
      sub_2704986F8(v31, v32);
      v33 = OUTLINED_FUNCTION_25_11();
    }

    v35(v33, v34);
  }

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_59_3();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_270495150(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  v8 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_2705D78A4();

  sub_2703BD0C8(a3, v14);
  v9 = sub_2705D7894();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  v12 = a3[1];
  *(v10 + 40) = *a3;
  *(v10 + 56) = v12;
  *(v10 + 65) = *(a3 + 25);
  sub_270482490();
}

uint64_t sub_270495278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D88);
  v5[20] = swift_task_alloc();
  sub_2705D78A4();
  v5[21] = sub_2705D7894();
  v7 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_27049534C, v7, v6);
}

uint64_t sub_27049534C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
    swift_getKeyPath();
    *(v0 + 112) = Strong;
    sub_2703BD0C8(v3, v0 + 16);
    OUTLINED_FUNCTION_10_24();
    sub_27049A354(v5, v6);
    sub_2705D45F4();

    *(v0 + 120) = Strong;
    swift_getKeyPath();
    sub_2705D4614();

    swift_beginAccess();
    v7 = OUTLINED_FUNCTION_92_0();
    sub_270482D18(v7);
    swift_endAccess();
    *(v0 + 128) = Strong;
    swift_getKeyPath();
    OUTLINED_FUNCTION_92_0();
    sub_2705D4604();
  }

  **(v0 + 136) = Strong == 0;

  OUTLINED_FUNCTION_1_4();

  return v8();
}

uint64_t sub_270495534()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit18MessageCoordinator___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2704955B4()
{
  sub_270495534();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_270495634()
{
  result = sub_2705D4634();
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

uint64_t sub_27049570C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
    OUTLINED_FUNCTION_46_0();
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(a3 + 20);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
      v13 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(&a1[v13], a2, v12);
  }
}

_BYTE *sub_270495800(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E10);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(&v5[v11], a2, a2, v10);
  }

  return result;
}

void sub_2704958F8()
{
  sub_2704959C4(319, &qword_2807D3E28, type metadata accessor for MessageViewStyle);
  if (v0 <= 0x3F)
  {
    sub_2704959C4(319, &qword_2807D3E30, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2704959C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_94();
    v4 = sub_2705D7C14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270495A34()
{
  OUTLINED_FUNCTION_66_3();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_10_10();
  v3(v2);
  return v0;
}

uint64_t sub_270495A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27048C238();
  *a1 = result;
  return result;
}

uint64_t sub_270495ABC()
{
  v1 = type metadata accessor for MessageState(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 81) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v4 + v2 + v3;
  type metadata accessor for MessageCoordinator.TransitionReason(0);
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();

  sub_2703AF9AC(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  v8 = v0 + v3;
  v9 = v0 + v3 + *(v1 + 20);
  v10 = type metadata accessor for MessageViewStyle(0);
  v479 = v7;
  v480 = v2;
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    type metadata accessor for MessageViewStyle.ViewStyle(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v476 = v10;

        if (*(v9 + 3248) == 1)
        {
          goto LABEL_109;
        }

        v48 = *(v9 + 80);
        if (!v48)
        {
          goto LABEL_41;
        }

        if (v48 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 56);
LABEL_41:
          if (*(v9 + 104))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v49 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v50, v51, v52, v53, v54, v55, v56, v57, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v58 = *(v9 + 536);
        if (!v58)
        {
          goto LABEL_51;
        }

        if (v58 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 512);
LABEL_51:
          if (*(v9 + 560))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v59 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v60, v61, v62, v63, v64, v65, v66, v67, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v68 = *(v9 + 992);
        if (!v68)
        {
          goto LABEL_61;
        }

        if (v68 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 968);
LABEL_61:
          if (*(v9 + 1016))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v69 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v70, v71, v72, v73, v74, v75, v76, v77, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v78 = *(v9 + 1448);
        if (!v78)
        {
          goto LABEL_71;
        }

        if (v78 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 1424);
LABEL_71:
          if (*(v9 + 1472))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v79 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v80, v81, v82, v83, v84, v85, v86, v87, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v88 = *(v9 + 1904);
        if (!v88)
        {
          goto LABEL_81;
        }

        if (v88 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 1880);
LABEL_81:
          if (*(v9 + 1928))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v89 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v90, v91, v92, v93, v94, v95, v96, v97, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v98 = *(v9 + 2360);
        if (!v98)
        {
          goto LABEL_91;
        }

        if (v98 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 2336);
LABEL_91:
          if (*(v9 + 2384))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v99 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v100, v101, v102, v103, v104, v105, v106, v107, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v108 = *(v9 + 2816);
        if (!v108)
        {
          goto LABEL_101;
        }

        if (v108 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 2792);
LABEL_101:
          if (*(v9 + 2840))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v109 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v110, v111, v112, v113, v114, v115, v116, v117, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

LABEL_109:
        v118 = type metadata accessor for DynamicPageModel(0);
        v119 = *(v118 + 36);
        v120 = sub_2705D6674();
        if (!OUTLINED_FUNCTION_83_1(v120))
        {
          OUTLINED_FUNCTION_4_4();
          (*(v121 + 8))(v9 + v119, v7);
        }

        v122 = v9 + *(v118 + 40);
        v123 = type metadata accessor for DynamicPageUnderlay(0);
        if (__swift_getEnumTagSinglePayload(v122, 1, v123))
        {
          goto LABEL_140;
        }

        OUTLINED_FUNCTION_8_3();
        if (swift_getEnumCaseMultiPayload() != 1)
        {

LABEL_439:

          goto LABEL_140;
        }

        v124 = sub_2705D6734();
        OUTLINED_FUNCTION_14();
        v474 = *(v125 + 8);
        v474(v122, v124);
        v126 = type metadata accessor for ResponsiveArtworkUnderlay(0);
        v474(v122 + v126[5], v124);

        OUTLINED_FUNCTION_14_9(v122 + v126[8]);
        if (!v21)
        {
        }

        OUTLINED_FUNCTION_14_9(v122 + v126[9]);
        v10 = v476;
        if (!v21)
        {
          goto LABEL_439;
        }

LABEL_140:
        v148 = v9 + *(v10 + 20);
        v149 = *(v148 + 16);
        if (v149 != 255)
        {
          sub_2703AE630(*v148, *(v148 + 8), v149);
        }

        v7 = v479;
        v2 = v480;
        break;
      case 1u:
      case 3u:

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v11 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v12, v13, v14, v15, v16, v17, v18, v19, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        OUTLINED_FUNCTION_6_16();
        v21 = v21 && v20 == 0;
        if (!v21)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4D28(v22, v23, v24, v25, v26, v27, v28, v29, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        if (*(v9 + 728))
        {
        }

        if (*(v9 + 760))
        {
        }

        goto LABEL_21;
      case 2u:

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v127 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v128, v129, v130, v131, v132, v133, v134, v135, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        if (*(v9 + 368))
        {
        }

        if (*(v9 + 400))
        {
        }

        OUTLINED_FUNCTION_6_16();
        if (!v21 || v136 != 0)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4D28(v138, v139, v140, v141, v142, v143, v144, v145, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        if (!*(v9 + 816))
        {
          goto LABEL_140;
        }

        v146 = *(v9 + 800);
        if (v146 != 255)
        {
          sub_2703AE630(*(v9 + 784), *(v9 + 792), v146);
        }

        v147 = *(v9 + 856);
        if (v147 != 255)
        {
          sub_2703AE630(*(v9 + 840), *(v9 + 848), v147);
        }

        if (!*(v9 + 872))
        {
          goto LABEL_140;
        }

LABEL_21:

        goto LABEL_140;
      case 4u:

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v34 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v35, v36, v37, v38, v39, v40, v41, v42, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        v43 = *(v9 + 536);
        if (v43 != 255)
        {
          sub_2703AE630(*(v9 + 520), *(v9 + 528), v43);
        }

        if (*(v9 + 568) != 254)
        {

          v44 = *(v9 + 568);
          if (v44 != 255)
          {
            sub_2703AE630(*(v9 + 552), *(v9 + 560), v44);
          }
        }

        if (*(v9 + 584))
        {
        }

        if (*(v9 + 616))
        {
        }

        v45 = *(v9 + 656);
        if (v45 == 255)
        {
          goto LABEL_140;
        }

        v46 = *(v9 + 640);
        v47 = *(v9 + 648);
        goto LABEL_139;
      case 5u:
      case 7u:

        v30 = *(v9 + 32);
        if (v30 != 255)
        {
          sub_2703AE630(*(v9 + 16), *(v9 + 24), v30);
        }

        v31 = *(type metadata accessor for JSServiceRequestIntent() + 24);
        v32 = sub_2705D4484();
        if (!OUTLINED_FUNCTION_83_1(v32))
        {
          OUTLINED_FUNCTION_4_4();
          (*(v33 + 8))(v9 + v31, v7);
        }

        goto LABEL_21;
      case 6u:

        v45 = *(v9 + 32);
        if (v45 == 255)
        {
          goto LABEL_140;
        }

        v46 = *(v9 + 16);
        v47 = *(v9 + 24);
LABEL_139:
        sub_2703AE630(v46, v47, v45);
        goto LABEL_140;
      default:
        goto LABEL_140;
    }
  }

  v150 = v5 & ~v2;
  v151 = v4 + v7;
  v152 = *(v1 + 24);
  v153 = sub_2705D4594();
  if (!OUTLINED_FUNCTION_64_3(v8 + v152))
  {
    OUTLINED_FUNCTION_4_4();
    (*(v154 + 8))(v8 + v152, v153);
  }

  v155 = v150 + v151;
  v156 = v0 + v150;
  v157 = v0 + v150 + *(v1 + 20);
  if (!__swift_getEnumTagSinglePayload(v157, 1, v10))
  {
    type metadata accessor for MessageViewStyle.ViewStyle(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v477 = v10;

        if (*(v157 + 3248) == 1)
        {
          goto LABEL_253;
        }

        v195 = *(v157 + 80);
        if (!v195)
        {
          goto LABEL_185;
        }

        if (v195 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 56);
LABEL_185:
          if (*(v157 + 104))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v196 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v197, v198, v199, v200, v201, v202, v203, v204, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v205 = *(v157 + 536);
        if (!v205)
        {
          goto LABEL_195;
        }

        if (v205 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 512);
LABEL_195:
          if (*(v157 + 560))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v206 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v207, v208, v209, v210, v211, v212, v213, v214, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v215 = *(v157 + 992);
        if (!v215)
        {
          goto LABEL_205;
        }

        if (v215 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 968);
LABEL_205:
          if (*(v157 + 1016))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v216 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v217, v218, v219, v220, v221, v222, v223, v224, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v225 = *(v157 + 1448);
        if (!v225)
        {
          goto LABEL_215;
        }

        if (v225 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 1424);
LABEL_215:
          if (*(v157 + 1472))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v226 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v227, v228, v229, v230, v231, v232, v233, v234, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v235 = *(v157 + 1904);
        if (!v235)
        {
          goto LABEL_225;
        }

        if (v235 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 1880);
LABEL_225:
          if (*(v157 + 1928))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v236 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v237, v238, v239, v240, v241, v242, v243, v244, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v245 = *(v157 + 2360);
        if (!v245)
        {
          goto LABEL_235;
        }

        if (v245 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 2336);
LABEL_235:
          if (*(v157 + 2384))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v246 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v247, v248, v249, v250, v251, v252, v253, v254, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

        v255 = *(v157 + 2816);
        if (!v255)
        {
          goto LABEL_245;
        }

        if (v255 != 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v157 + 2792);
LABEL_245:
          if (*(v157 + 2840))
          {
          }

          OUTLINED_FUNCTION_5_19();
          if (!v21 || v256 >= 0x100)
          {
            OUTLINED_FUNCTION_0_20();
            sub_2703F4940(v257, v258, v259, v260, v261, v262, v263, v264, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
          }
        }

LABEL_253:
        v265 = type metadata accessor for DynamicPageModel(0);
        v266 = *(v265 + 36);
        v267 = sub_2705D6674();
        if (!OUTLINED_FUNCTION_82_2(v267))
        {
          OUTLINED_FUNCTION_4_4();
          (*(v268 + 8))(v157 + v266, v152);
        }

        v269 = v157 + *(v265 + 40);
        v270 = type metadata accessor for DynamicPageUnderlay(0);
        if (__swift_getEnumTagSinglePayload(v269, 1, v270))
        {
          goto LABEL_284;
        }

        OUTLINED_FUNCTION_45_5();
        if (swift_getEnumCaseMultiPayload() != 1)
        {

LABEL_441:

          goto LABEL_284;
        }

        v271 = sub_2705D6734();
        OUTLINED_FUNCTION_14();
        v475 = *(v272 + 8);
        v475(v269, v271);
        v273 = type metadata accessor for ResponsiveArtworkUnderlay(0);
        v475(v269 + v273[5], v271);

        OUTLINED_FUNCTION_14_9(v269 + v273[8]);
        if (!v21)
        {
        }

        OUTLINED_FUNCTION_14_9(v269 + v273[9]);
        v10 = v477;
        if (!v21)
        {
          goto LABEL_441;
        }

LABEL_284:
        v295 = v157 + *(v10 + 20);
        v296 = *(v295 + 16);
        if (v296 != 255)
        {
          sub_2703AE630(*v295, *(v295 + 8), v296);
        }

        break;
      case 1u:
      case 3u:

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v158 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v159, v160, v161, v162, v163, v164, v165, v166, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        OUTLINED_FUNCTION_6_16();
        if (!v21 || v167 != 0)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4D28(v169, v170, v171, v172, v173, v174, v175, v176, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        if (*(v157 + 728))
        {
        }

        if (*(v157 + 760))
        {
        }

        goto LABEL_165;
      case 2u:

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v274 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v275, v276, v277, v278, v279, v280, v281, v282, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        if (*(v157 + 368))
        {
        }

        if (*(v157 + 400))
        {
        }

        OUTLINED_FUNCTION_6_16();
        if (!v21 || v283 != 0)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4D28(v285, v286, v287, v288, v289, v290, v291, v292, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        if (!*(v157 + 816))
        {
          goto LABEL_284;
        }

        v293 = *(v157 + 800);
        if (v293 != 255)
        {
          sub_2703AE630(*(v157 + 784), *(v157 + 792), v293);
        }

        v294 = *(v157 + 856);
        if (v294 != 255)
        {
          sub_2703AE630(*(v157 + 840), *(v157 + 848), v294);
        }

        if (!*(v157 + 872))
        {
          goto LABEL_284;
        }

LABEL_165:

        goto LABEL_284;
      case 4u:

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v181 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v182, v183, v184, v185, v186, v187, v188, v189, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }

        v190 = *(v157 + 536);
        if (v190 != 255)
        {
          sub_2703AE630(*(v157 + 520), *(v157 + 528), v190);
        }

        if (*(v157 + 568) != 254)
        {

          v191 = *(v157 + 568);
          if (v191 != 255)
          {
            sub_2703AE630(*(v157 + 552), *(v157 + 560), v191);
          }
        }

        if (*(v157 + 584))
        {
        }

        if (*(v157 + 616))
        {
        }

        v192 = *(v157 + 656);
        if (v192 == 255)
        {
          goto LABEL_284;
        }

        v193 = *(v157 + 640);
        v194 = *(v157 + 648);
        goto LABEL_283;
      case 5u:
      case 7u:

        v177 = *(v157 + 32);
        if (v177 != 255)
        {
          sub_2703AE630(*(v157 + 16), *(v157 + 24), v177);
        }

        v178 = *(type metadata accessor for JSServiceRequestIntent() + 24);
        v179 = sub_2705D4484();
        if (!OUTLINED_FUNCTION_82_2(v179))
        {
          OUTLINED_FUNCTION_4_4();
          (*(v180 + 8))(v157 + v178, v152);
        }

        goto LABEL_165;
      case 6u:

        v192 = *(v157 + 32);
        if (v192 == 255)
        {
          goto LABEL_284;
        }

        v193 = *(v157 + 16);
        v194 = *(v157 + 24);
LABEL_283:
        sub_2703AE630(v193, v194, v192);
        goto LABEL_284;
      default:
        goto LABEL_284;
    }
  }

  v297 = *(v1 + 24);
  if (!OUTLINED_FUNCTION_64_3(v156 + v297))
  {
    OUTLINED_FUNCTION_4_4();
    (*(v298 + 8))(v156 + v297, v153);
  }

  v299 = v0 + (v155 & ~v479);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v301 = *(v299 + 16);
      if (v301 != 255)
      {
        sub_2703AE630(*v299, *(v299 + 8), v301);
      }
    }

    goto LABEL_435;
  }

  type metadata accessor for MessageViewStyle.ViewStyle(0);
  v302 = v10;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v299 + 3248) == 1)
      {
        goto LABEL_400;
      }

      v340 = *(v299 + 80);
      if (!v340)
      {
        goto LABEL_332;
      }

      if (v340 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 56);
LABEL_332:
        if (*(v299 + 104))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v341 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v342, v343, v344, v345, v346, v347, v348, v349, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

      v350 = *(v299 + 536);
      if (!v350)
      {
        goto LABEL_342;
      }

      if (v350 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 512);
LABEL_342:
        if (*(v299 + 560))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v351 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v352, v353, v354, v355, v356, v357, v358, v359, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

      v360 = *(v299 + 992);
      if (!v360)
      {
        goto LABEL_352;
      }

      if (v360 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 968);
LABEL_352:
        if (*(v299 + 1016))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v361 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v362, v363, v364, v365, v366, v367, v368, v369, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

      v370 = *(v299 + 1448);
      if (!v370)
      {
        goto LABEL_362;
      }

      if (v370 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 1424);
LABEL_362:
        if (*(v299 + 1472))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v371 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v372, v373, v374, v375, v376, v377, v378, v379, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

      v380 = *(v299 + 1904);
      if (!v380)
      {
        goto LABEL_372;
      }

      if (v380 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 1880);
LABEL_372:
        if (*(v299 + 1928))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v381 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v382, v383, v384, v385, v386, v387, v388, v389, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

      v390 = *(v299 + 2360);
      if (!v390)
      {
        goto LABEL_382;
      }

      if (v390 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 2336);
LABEL_382:
        if (*(v299 + 2384))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v391 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v392, v393, v394, v395, v396, v397, v398, v399, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

      v400 = *(v299 + 2816);
      if (!v400)
      {
        goto LABEL_392;
      }

      if (v400 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v299 + 2792);
LABEL_392:
        if (*(v299 + 2840))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v21 || v401 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v402, v403, v404, v405, v406, v407, v408, v409, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
        }
      }

LABEL_400:
      v410 = type metadata accessor for DynamicPageModel(0);
      v411 = *(v410 + 36);
      v412 = sub_2705D6674();
      if (!OUTLINED_FUNCTION_64_3(v299 + v411))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v413 + 8))(v299 + v411, v412);
      }

      v414 = v299 + *(v410 + 40);
      type metadata accessor for DynamicPageUnderlay(0);
      v302 = v10;
      if (OUTLINED_FUNCTION_64_3(v414))
      {
        goto LABEL_432;
      }

      OUTLINED_FUNCTION_92_0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_443:

        goto LABEL_432;
      }

      v415 = sub_2705D6734();
      OUTLINED_FUNCTION_14();
      v478 = *(v416 + 8);
      v478(v414, v415);
      v417 = type metadata accessor for ResponsiveArtworkUnderlay(0);
      v478(v414 + v417[5], v415);

      OUTLINED_FUNCTION_14_9(v414 + v417[8]);
      if (!v21)
      {
      }

      OUTLINED_FUNCTION_14_9(v414 + v417[9]);
      v302 = v10;
      if (!v21)
      {
        goto LABEL_443;
      }

LABEL_432:
      v439 = v299 + *(v302 + 20);
      v440 = *(v439 + 16);
      if (v440 != 255)
      {
        sub_2703AE630(*v439, *(v439 + 8), v440);
      }

LABEL_435:

      return swift_deallocObject();
    case 1u:
    case 3u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v303 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v304, v305, v306, v307, v308, v309, v310, v311, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
      }

      OUTLINED_FUNCTION_6_16();
      if (!v21 || v312 != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v314, v315, v316, v317, v318, v319, v320, v321, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
      }

      if (*(v299 + 728))
      {
      }

      if (*(v299 + 760))
      {
      }

      goto LABEL_307;
    case 2u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v418 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v419, v420, v421, v422, v423, v424, v425, v426, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
      }

      if (*(v299 + 368))
      {
      }

      if (*(v299 + 400))
      {
      }

      OUTLINED_FUNCTION_6_16();
      if (!v21 || v427 != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v429, v430, v431, v432, v433, v434, v435, v436, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
      }

      if (*(v299 + 816))
      {

        v437 = *(v299 + 800);
        if (v437 != 255)
        {
          sub_2703AE630(*(v299 + 784), *(v299 + 792), v437);
        }

        v438 = *(v299 + 856);
        if (v438 != 255)
        {
          sub_2703AE630(*(v299 + 840), *(v299 + 848), v438);
        }

        if (*(v299 + 872))
        {

LABEL_307:
        }
      }

      goto LABEL_432;
    case 4u:

      OUTLINED_FUNCTION_5_19();
      if (!v21 || v326 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v327, v328, v329, v330, v331, v332, v333, v334, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
      }

      v335 = *(v299 + 536);
      if (v335 != 255)
      {
        sub_2703AE630(*(v299 + 520), *(v299 + 528), v335);
      }

      if (*(v299 + 568) != 254)
      {

        v336 = *(v299 + 568);
        if (v336 != 255)
        {
          sub_2703AE630(*(v299 + 552), *(v299 + 560), v336);
        }
      }

      if (*(v299 + 584))
      {
      }

      if (*(v299 + 616))
      {
      }

      v337 = *(v299 + 656);
      if (v337 == 255)
      {
        goto LABEL_432;
      }

      v338 = *(v299 + 640);
      v339 = *(v299 + 648);
      goto LABEL_431;
    case 5u:
    case 7u:

      v322 = *(v299 + 32);
      if (v322 != 255)
      {
        sub_2703AE630(*(v299 + 16), *(v299 + 24), v322);
      }

      v323 = *(type metadata accessor for JSServiceRequestIntent() + 24);
      v324 = sub_2705D4484();
      if (!OUTLINED_FUNCTION_64_3(v299 + v323))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v325 + 8))(v299 + v323, v324);
      }

      v302 = v10;
      goto LABEL_432;
    case 6u:

      v337 = *(v299 + 32);
      if (v337 == 255)
      {
        goto LABEL_432;
      }

      v338 = *(v299 + 16);
      v339 = *(v299 + 24);
LABEL_431:
      sub_2703AE630(v338, v339, v337);
      goto LABEL_432;
    default:
      goto LABEL_432;
  }
}

uint64_t sub_270498540()
{
  OUTLINED_FUNCTION_66_3();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_10_10();
  v3(v2);
  return v0;
}

uint64_t sub_270498598()
{
  v1 = type metadata accessor for MessageState(0);
  OUTLINED_FUNCTION_1_1(v1);
  v2 = type metadata accessor for MessageCoordinator.TransitionReason(0);
  OUTLINED_FUNCTION_23_0(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_270414FA4;
  OUTLINED_FUNCTION_37_6();

  return sub_27048FF94(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2704986F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_270498750(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v31 = result;
  while (v7)
  {
    v33 = (v7 - 1) & v7;
LABEL_13:

    v11 = OUTLINED_FUNCTION_61_4();
    sub_2703AE9FC(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_8_3();
    v16 = sub_2703D7318(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v28 = OUTLINED_FUNCTION_61_4();
      sub_2703AE630(v28, v29, v30);
      return 0;
    }

    v19 = *(*(a2 + 56) + 24 * v16 + 16);
    v20 = OUTLINED_FUNCTION_8_3();
    sub_2703AE9FC(v20, v21, v19);
    v22 = OUTLINED_FUNCTION_8_3();
    v32 = sub_27046AD04(v22);
    v23 = OUTLINED_FUNCTION_8_3();
    sub_2703AE630(v23, v24, v19);
    v25 = OUTLINED_FUNCTION_61_4();
    sub_2703AE630(v25, v26, v27);
    result = v31;
    v7 = v33;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270498904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageState(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v47 - v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v14;
  v16 = 0;
  v51 = a1;
  v52 = v5;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v47 = (v20 + 63) >> 6;
  v48 = v18;
  v49 = &v47 - v13;
  v50 = v8;
  while (v22)
  {
    v55 = (v22 - 1) & v22;
    v23 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_13:
    v27 = *(v51 + 48) + 48 * v23;
    v28 = *v27;
    v29 = *(v27 + 8);
    v31 = *(v27 + 16);
    v30 = *(v27 + 24);
    v32 = *(v27 + 32);
    v33 = *(v27 + 40);
    sub_270495A34();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E88);
    v35 = v54;
    *v54 = v28;
    v35[1] = v29;
    v35[2] = v31;
    v35[3] = v30;
    v35[4] = v32;
    *(v35 + 40) = v33;
    v36 = v35;
    sub_270498540();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v34);

    sub_2703B4984(v30, v32, v33);
    v15 = v49;
    v8 = v50;
LABEL_14:
    sub_27049A3B4();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E88);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v37);
    v39 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v39;
    }

    v40 = v15[1];
    v57 = *v15;
    v58[0] = v40;
    *(v58 + 9) = *(v15 + 25);
    sub_270498540();
    sub_2703D749C(&v57);
    v42 = v41;
    sub_27048A6A4(&v57);
    if ((v42 & 1) == 0)
    {
      sub_2704986F8(v8, type metadata accessor for MessageState);
      return 0;
    }

    v43 = v56;
    sub_270495A34();
    sub_27048BC90();
    v45 = v44;
    sub_2704986F8(v43, type metadata accessor for MessageState);
    result = sub_2704986F8(v8, type metadata accessor for MessageState);
    v22 = v55;
    if ((v45 & 1) == 0)
    {
      return v39;
    }
  }

  v24 = v54;
  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v47)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E88);
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v46);
      v55 = 0;
      goto LABEL_14;
    }

    v26 = *(v48 + 8 * v25);
    ++v16;
    if (v26)
    {
      v55 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) | (v25 << 6);
      v16 = v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}