uint64_t sub_26A254688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoColor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 20);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 24);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 28);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 32);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A254F08(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A254F78()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A255024(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000026A448A20;
  return result;
}

uint64_t sub_26A2550B0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803708E0);
  __swift_project_value_buffer(v0, qword_2803708E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.AspectRatio.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A4248D4();
    }
  }

  return result;
}

uint64_t _ProtoImageElement.AspectRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v1))
    {
      v3 = *(type metadata accessor for _ProtoImageElement.AspectRatio(0) + 24);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t static _ProtoImageElement.AspectRatio.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_3();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = *(type metadata accessor for _ProtoImageElement.AspectRatio(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A255470()
{
  OUTLINED_FUNCTION_101_3();
  v1 = v0;
  sub_26A425504();
  v1(0);
  OUTLINED_FUNCTION_125();
  sub_26A252D48();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A2554F4()
{
  result = qword_280370998;
  if (!qword_280370998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370998);
  }

  return result;
}

unint64_t sub_26A25554C()
{
  result = qword_2803709A0;
  if (!qword_2803709A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709A0);
  }

  return result;
}

unint64_t sub_26A2555A8()
{
  result = qword_2803709A8;
  if (!qword_2803709A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709A8);
  }

  return result;
}

unint64_t sub_26A255600()
{
  result = qword_2803709B0;
  if (!qword_2803709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709B0);
  }

  return result;
}

unint64_t sub_26A25565C()
{
  result = qword_2803709B8;
  if (!qword_2803709B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709B8);
  }

  return result;
}

unint64_t sub_26A2556B4()
{
  result = qword_2803709C0;
  if (!qword_2803709C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709C0);
  }

  return result;
}

unint64_t sub_26A255710()
{
  result = qword_2803709C8;
  if (!qword_2803709C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709C8);
  }

  return result;
}

unint64_t sub_26A255768()
{
  result = qword_2803709D0;
  if (!qword_2803709D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709D0);
  }

  return result;
}

unint64_t sub_26A2557C4()
{
  result = qword_2803709D8;
  if (!qword_2803709D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709D8);
  }

  return result;
}

unint64_t sub_26A25581C()
{
  result = qword_2803709E0;
  if (!qword_2803709E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709E0);
  }

  return result;
}

unint64_t sub_26A255878()
{
  result = qword_2803709E8;
  if (!qword_2803709E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709E8);
  }

  return result;
}

unint64_t sub_26A2558D0()
{
  result = qword_2803709F0;
  if (!qword_2803709F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709F0);
  }

  return result;
}

unint64_t sub_26A255A44()
{
  OUTLINED_FUNCTION_14_4();
  result = *v3;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A25689C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2569AC(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A256A64()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

void sub_26A256B0C()
{
  sub_26A256F10(319, &qword_280370B00, type metadata accessor for _ProtoImageElement.Source, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A2570CC(319, &qword_28036D218);
    if (v1 <= 0x3F)
    {
      sub_26A424794();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A256C88()
{
  result = type metadata accessor for _ProtoImageElement.DataMessage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoImageElement.Bundle(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ProtoImageElement.Url(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for _ProtoImageElement.Symbol(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for _ProtoImageElement.AppIcon(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for _ProtoImageElement.Contact(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for _ProtoImageElement.BadgedImage(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A256DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A256E54()
{
  sub_26A256F10(319, qword_281579CC8, type metadata accessor for _ProtoImageElement.Contact.OneOf_Content, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A256F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A256F74()
{
  result = type metadata accessor for _ProtoImageElement.Contact.Monogram(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoImageElement.Contact.Avatar(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A257038()
{
  sub_26A2570CC(319, &qword_280370B08);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A2570CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26A424D94();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26A25717C()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A2572BC()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_137Tm()
{
  OUTLINED_FUNCTION_130_2();
  v4 = sub_26A424794();
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_218_1();
    OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26A2574A8()
{
  result = type metadata accessor for _ProtoImageElement.DataMessage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoImageElement.Bundle(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ProtoImageElement.Symbol(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A257558()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A256F10(319, qword_281579EC8, type metadata accessor for _ProtoImageElement.Symbol.Background, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A2576C8()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26A257844()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26A2578C0()
{
  sub_26A256F10(319, qword_28157A118, type metadata accessor for _ProtoImageElement.Source.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26A257988()
{
  sub_26A256F10(319, qword_281579F80, type metadata accessor for _ProtoImageElement.Source, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26A257A50()
{
  sub_26A256F10(319, qword_28157A5B0, type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_26A256F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_26A257C84()
{
  result = qword_280370B78;
  if (!qword_280370B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370B78);
  }

  return result;
}

unint64_t sub_26A257CD8()
{
  result = qword_280370B80;
  if (!qword_280370B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370B80);
  }

  return result;
}

unint64_t sub_26A257D2C()
{
  result = qword_280370B88;
  if (!qword_280370B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370B88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return sub_26A13440C();
}

uint64_t OUTLINED_FUNCTION_21_15()
{
  result = type metadata accessor for _ProtoImageElement.Url(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  result = type metadata accessor for _ProtoImageElement.Source(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_39_11()
{
  result = type metadata accessor for _ProtoImageElement.Url(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_10@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_62_8(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.Url(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_65_8()
{
  v0 = type metadata accessor for _ProtoImageElement.Url._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return sub_26A23838C();
}

uint64_t OUTLINED_FUNCTION_72_4(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.Source(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_74_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_75_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_26A1E05A8();
}

void OUTLINED_FUNCTION_106_2()
{
  v2 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_107_3@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3;
  _ProtoImageElement.ImageStyle.rawValue.getter();
  return _ProtoImageElement.ImageStyle.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_111_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_112_2(__n128 a1)
{
  *v1 = a1;
  v1[1].n128_u64[0] = 0;
  v1[1].n128_u8[8] = 1;
  v1[2] = a1;
  v1[3] = a1;
  v2 = v1 + *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 32);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_135_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_136_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_141_1()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  v3 = v1 + *(v0 + 44);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_166_2()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return _ProtoImageElement.ImageStyle.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_167_1(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for _ProtoImageElement.Url(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_169_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_170_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_172_1()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_173_2()
{
  *v0 = 0;
  v3 = &v0[*(v1 + 20)];

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_179_1()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  v3 = v1 + *(v0 + 36);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_186_1()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_189_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_191_1()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_197_1(__n128 a1)
{
  *v2 = a1;
  v2[1].n128_u64[0] = 0;
  v2[1].n128_u8[8] = 1;
  v2[2] = a1;
  v2[3] = a1;
  v4 = v2 + *(v1 + 32);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_200_1()
{
  *v0 = 0;
  v3 = v0 + *(v1 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_26A2356C8();
}

uint64_t OUTLINED_FUNCTION_222_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_225_1()
{
  *v0 = 0;
  v3 = v0 + *(v1 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_226_1(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_227_1()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_228_1()
{

  return sub_26A424794();
}

void OUTLINED_FUNCTION_230_1(uint64_t a1@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_249_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_250_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_251_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_253_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_254_1()
{

  return sub_26A2356C8();
}

uint64_t OUTLINED_FUNCTION_255_1()
{

  return sub_26A2356C8();
}

uint64_t OUTLINED_FUNCTION_256_1()
{
  v2 = *(v0 + 20);

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_257_1()
{

  return sub_26A424794();
}

uint64_t _ProtoSimpleItem_Rich.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2597D8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A25986C(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142();
  v5 = *v3;
  v4 = v3[1];

  return v5;
}

uint64_t _ProtoSimpleItem_Rich.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text7.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text8.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_106_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t sub_26A25A21C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a4(0);
    OUTLINED_FUNCTION_100_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_5_3();
    v16 = a5(v18);
    *(v10 + v13) = v16;
  }

  v19 = (v16 + *a6);
  OUTLINED_FUNCTION_26_10();
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;
}

uint64_t _ProtoSimpleItem_Rich.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t sub_26A25A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_26A2695B8();
  return a7(v13);
}

uint64_t _ProtoSimpleItem_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25B5E4(uint64_t (*a1)(void), uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_124();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = *(v2 + *(a1(0) + 20));
  v14 = *a2;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v12);
  if (!v15)
  {
    return sub_26A2597D8();
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  result = OUTLINED_FUNCTION_23(v12);
  if (!v15)
  {
    return sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25BAC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Standard.componentName.setter();
}

uint64_t _ProtoSimpleItem_Standard.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_Standard.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText6()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25C4F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Standard.linkIdentifier.setter();
}

uint64_t _ProtoSimpleItem_Standard.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoSimpleItem_Rich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25D52C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Rich.componentName.setter();
}

uint64_t _ProtoSimpleItem_Rich.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Rich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoSimpleItem_Rich.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText6()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text7.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText7()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text8.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText8()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_107_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25DC64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Rich.linkIdentifier.setter();
}

uint64_t _ProtoSimpleItem_Rich.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Rich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A25DDB4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t _ProtoSimpleItem_ReverseRich.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25F3C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_ReverseRich.componentName.setter();
}

uint64_t _ProtoSimpleItem_ReverseRich.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_ReverseRich.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25F988(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_ReverseRich.linkIdentifier.setter();
}

uint64_t _ProtoSimpleItem_ReverseRich.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_Visual.thumbnails.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _ProtoSimpleItem_Visual.action.getter()
{
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for _ProtoSimpleItem_Visual(v7);
  OUTLINED_FUNCTION_176(*(v8 + 32));
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v0);
  if (!v9)
  {
    return sub_26A2597D8();
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Visual.action.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(v1);
  sub_26A0E48F0(v0 + *(v2 + 32), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_36_1();
  sub_26A2597D8();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*_ProtoSimpleItem_Visual.action.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_176(v11);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v6);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[1] = 0;
    v10[2] = 0xE000000000000000;
    v13 = v10 + *(v7 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v6);
    if (!v12)
    {
      sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2597D8();
  }

  return sub_26A25FE68;
}

uint64_t _ProtoSimpleItem_Visual.hasAction.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for _ProtoSimpleItem_Visual(v7);
  OUTLINED_FUNCTION_176(*(v8 + 32));
  sub_26A10FD9C();
  v9 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v9);
  return v0;
}

Swift::Void __swiftcall _ProtoSimpleItem_Visual.clearAction()()
{
  v1 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  sub_26A0E48F0(v0 + *(v1 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Visual.text1.getter()
{
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  v8 = *(type metadata accessor for _ProtoSimpleItem_Visual(v7) + 36);
  sub_26A10FD9C();
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v9);
  if (!v10)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v11 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v11);
  if (!v10)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Visual.text1.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(v1);
  sub_26A0E48F0(v0 + *(v2 + 36), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_36_1();
  sub_26A2597D8();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*_ProtoSimpleItem_Visual.text1.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  *(v3 + 10) = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_1_4();
  if (v10)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v11 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v11);
    if (!v10)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  return sub_26A260274;
}

void sub_26A2602B0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[2];
  v18 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    sub_26A2695B8();
    sub_26A0E48F0(v11 + v7, a3, a4);
    sub_26A2597D8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
    sub_26A26960C();
  }

  else
  {
    sub_26A0E48F0(v11 + v7, a3, a4);
    sub_26A2597D8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  }

  free(v9);
  free(v8);
  free(v18);

  free(v6);
}

uint64_t _ProtoSimpleItem_Visual.hasText1.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for _ProtoSimpleItem_Visual(v7);
  OUTLINED_FUNCTION_176(*(v8 + 36));
  sub_26A10FD9C();
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v9);
  return v0;
}

Swift::Void __swiftcall _ProtoSimpleItem_Visual.clearText1()()
{
  v1 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  sub_26A0E48F0(v0 + *(v1 + 36), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Visual.componentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoSimpleItem_Visual.componentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _ProtoSimpleItem_Visual.linkIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoSimpleItem_Visual.linkIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t _ProtoSimpleItem_Visual.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 28);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoSimpleItem_Visual.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoSimpleItem_Visual(v2) + 28);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*_ProtoSimpleItem_Visual.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoSimpleItem_Visual(v0) + 28);
  return nullsub_1;
}

uint64_t _ProtoSimpleItem_Visual.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v3 = a1 + v2[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = v2[8];
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[9];
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t _ProtoSimpleItem_Player.player.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20));
  OUTLINED_FUNCTION_142();
  v2 = *(v1 + 16);
}

uint64_t sub_26A2607D4(uint64_t *a1)
{
  v1 = *a1;

  return _ProtoSimpleItem_Player.player.setter();
}

uint64_t _ProtoSimpleItem_Player.player.setter()
{
  v3 = OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for _ProtoSimpleItem_Player(v3);
  v5 = OUTLINED_FUNCTION_187_1(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v7);
  }

  OUTLINED_FUNCTION_26_10();
  v8 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t _ProtoSimpleItem_Player.player.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  v4 = *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20);
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_142();
  v3[6] = *(v5 + 16);

  return OUTLINED_FUNCTION_133();
}

void sub_26A2608F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    _ProtoSimpleItem_Player.player.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_66_5();
      OUTLINED_FUNCTION_5_3();
      sub_26A2722B4();
      v11 = v14;
      *(v13 + v12) = v14;
    }

    OUTLINED_FUNCTION_26_10();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v2);
}

uint64_t _ProtoSimpleItem_Player.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  OUTLINED_FUNCTION_56_10(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v16 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v16);
    if (!v15)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Player.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  OUTLINED_FUNCTION_56_10(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v16 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v16);
    if (!v15)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Player.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoMultilineTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  OUTLINED_FUNCTION_56_10(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v16 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v16);
    if (!v15)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Player.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_31_1(v7);
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  OUTLINED_FUNCTION_56_10(v13);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A261AB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Player.componentName.setter();
}

uint64_t _ProtoSimpleItem_Player.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A261C08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Player.linkIdentifier.setter();
}

uint64_t _ProtoSimpleItem_Player.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_Player.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_123_3();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  OUTLINED_FUNCTION_56_10(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v16 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v16);
    if (!v15)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText6()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text7.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text7.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText7()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.text8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.text8.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.text8.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasText8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearText8()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_10(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v8);
  if (!v9)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v10 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v10);
  if (!v9)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSimpleItem_RichSearchResult.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_RichSearchResult.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_103_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_123_3();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_RichSearchResult.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A264BFC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A2695B8();
    a3(v5);
    sub_26A26960C();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t _ProtoSimpleItem_RichSearchResult.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_28_10(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_RichSearchResult.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_104_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A275560();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A264E18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_RichSearchResult.componentName.setter();
}

uint64_t _ProtoSimpleItem_RichSearchResult.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A264F70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_RichSearchResult.linkIdentifier.setter();
}

uint64_t _ProtoSimpleItem_RichSearchResult.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void sub_26A2650A8()
{
  OUTLINED_FUNCTION_76();
  v5 = *v0;
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 56);
  if (v8)
  {
    v9 = v4;
    v10 = *(v5 + 64);
    v11 = *(*v0 + 56);

    v12 = OUTLINED_FUNCTION_125();
    v9(v12);
    v13 = *(v5 + 56);
  }

  else
  {
    v14 = v3;
    v15 = v2;
    v16 = v1;
    v17 = *(v5 + 72);
    v18 = *(v5 + 64);
    v19 = *(v18 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v18 + v17);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = *(v5 + 72);
      v23 = *(v5 + 64);
      v24 = v16(0);
      OUTLINED_FUNCTION_100_0(v24);
      swift_allocObject();
      v25 = OUTLINED_FUNCTION_5_3();
      v21 = v15(v25);
      *(v23 + v22) = v21;
    }

    v26 = (v21 + *v14);
    OUTLINED_FUNCTION_26_10();
    v27 = v26[1];
    *v26 = v6;
    v26[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v28);
}

uint64_t sub_26A265204()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370BE8);
  __swift_project_value_buffer(v0, qword_280370BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A42B0D0;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v25 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v25 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text_5";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_6";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "link_identifier";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2655C4()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, 1, 1, v2);
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2656F4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_131_3();
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  v22 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v15);
  v37 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6);
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v15);
  v40 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  v49 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_5();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_166_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_166_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_166_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v41 = (v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v42 = *v41;
  v43 = v41[1];
  OUTLINED_FUNCTION_26_10();
  v44 = v33[1];
  *v33 = v42;
  v33[1] = v43;

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_164_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_5();
  sub_26A10CF40();
  swift_endAccess();
  v45 = (v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v47 = *v45;
  v46 = v45[1];

  OUTLINED_FUNCTION_26_10();
  v48 = v49[1];
  *v49 = v47;
  v49[1] = v46;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A265BD4()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, &qword_28036C7B8, &unk_26A425BF0);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A265D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A265EF0();
        break;
      case 2:
        sub_26A265FCC();
        break;
      case 3:
        sub_26A2660A8();
        break;
      case 4:
        sub_26A266184();
        break;
      case 5:
        sub_26A266260();
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName;
        goto LABEL_13;
      case 7:
        sub_26A26633C();
        break;
      case 8:
        sub_26A266418();
        break;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier;
LABEL_13:
        sub_26A2768B0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A265EF0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A265FCC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2660A8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A266184()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A266260()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26633C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A266418()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A266524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A266710(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A266904(a1, a2, a3, a4);
    sub_26A266AF8(a1, a2, a3, a4);
    sub_26A266CEC(a1, a2, a3, a4);
    sub_26A266EE0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A2670D4(a1, a2, a3, a4);
    sub_26A2672C8(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A266710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A266904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A266AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A266CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A266EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A2670D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A2672C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

void sub_26A2674E8()
{
  OUTLINED_FUNCTION_76();
  v183 = v0;
  v2 = v1;
  v164 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v164);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v160 = v6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v163);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v165 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v162 = v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v167 = v17;
  v18 = OUTLINED_FUNCTION_45();
  v175 = type metadata accessor for _ProtoMultilineTextProperty(v18);
  v19 = OUTLINED_FUNCTION_12(v175);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v168 = v22;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v23 = OUTLINED_FUNCTION_12(v174);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v169 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v172 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v30 = OUTLINED_FUNCTION_41(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v166 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v171 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  v170 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_48();
  v176 = v39;
  v40 = OUTLINED_FUNCTION_45();
  v182 = type metadata accessor for _ProtoTextProperty(v40);
  v41 = OUTLINED_FUNCTION_12(v182);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11();
  v177 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v46 = OUTLINED_FUNCTION_12(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  v156 = v49;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  v159 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  v179 = v53;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  v56 = &v153[-v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v58 = OUTLINED_FUNCTION_41(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8();
  v155 = v61;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  v158 = v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  v157 = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  v161 = v67;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_47();
  v173 = v69;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  v178 = v71;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_47();
  v181 = v73;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v74);
  v76 = &v153[-v75];
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v180 = v45;
  v77 = *(v45 + 48);
  OUTLINED_FUNCTION_21_3();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v56);
  if (v79)
  {

    sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_48_0(&v56[v77]);
    if (v79)
    {
      sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    v80 = &qword_28036C7D0;
    v81 = &qword_26A426DE0;
LABEL_10:
    v82 = v56;
    goto LABEL_22;
  }

  v78 = v181;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(&v56[v77]);
  if (v79)
  {

    sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_29();
    sub_26A26960C();
    goto LABEL_9;
  }

  v83 = v177;
  sub_26A2597D8();

  v154 = static _ProtoTextProperty.== infix(_:_:)(v78, v83);
  sub_26A26960C();
  sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
  if ((v154 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  OUTLINED_FUNCTION_124_1();
  v84 = v178;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v85 = v183;
  OUTLINED_FUNCTION_123_1();
  v86 = v179;
  OUTLINED_FUNCTION_163_2(v180);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v86);
  if (v79)
  {
    sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_48_0(&qword_280370000 + v86);
    if (v79)
    {
      sub_26A0E48F0(v86, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_25;
    }

LABEL_20:
    v80 = &qword_28036C7D0;
    v81 = &qword_26A426DE0;
LABEL_21:
    v82 = v86;
    goto LABEL_22;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(&qword_280370000 + v86);
  if (v87)
  {
    sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_29();
    sub_26A26960C();
    goto LABEL_20;
  }

  sub_26A2597D8();
  v88 = OUTLINED_FUNCTION_245();
  v85 = static _ProtoTextProperty.== infix(_:_:)(v88, v89);
  OUTLINED_FUNCTION_8_17();
  sub_26A26960C();
  sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_21_3();
  sub_26A26960C();
  v90 = OUTLINED_FUNCTION_103();
  sub_26A0E48F0(v90, v91, &unk_26A425BF0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_25:
  OUTLINED_FUNCTION_127_1();
  v181 = v2;
  v92 = v176;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_1(v174);
  v93 = v172;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  v56 = v93;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_19(v93, 1);
  if (v79)
  {
    sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_9(&qword_280370000 + v93);
    v94 = v181;
    if (v79)
    {
      sub_26A0E48F0(v93, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&qword_280370000 + v93);
  if (v95)
  {
    sub_26A0E48F0(v176, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_20_17();
    sub_26A26960C();
LABEL_33:
    v80 = &qword_28036F088;
    v81 = &unk_26A42C570;
    goto LABEL_10;
  }

  sub_26A2597D8();
  v96 = OUTLINED_FUNCTION_103();
  static _ProtoMultilineTextProperty.== infix(_:_:)(v96, v97);
  OUTLINED_FUNCTION_89_3();
  sub_26A26960C();
  sub_26A0E48F0(v176, &qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_88();
  sub_26A26960C();
  v98 = OUTLINED_FUNCTION_245();
  sub_26A0E48F0(v98, v99, &unk_26A4273F0);
  v94 = v181;
  if ((v85 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_35:
  OUTLINED_FUNCTION_142();
  v100 = v171;
  OUTLINED_FUNCTION_159_2();
  v101 = v183;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_163_2(v174);
  v102 = v169;
  OUTLINED_FUNCTION_159_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v102);
  if (v79)
  {
    sub_26A0E48F0(v100, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_14_9(&qword_280370000 + v102);
    if (v79)
    {
      sub_26A0E48F0(v102, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_46;
    }

LABEL_43:
    v80 = &qword_28036F088;
    v81 = &unk_26A42C570;
    goto LABEL_44;
  }

  v103 = v166;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(&qword_280370000 + v102);
  if (v104)
  {
    sub_26A0E48F0(v171, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_20_17();
    sub_26A26960C();
    goto LABEL_43;
  }

  v105 = v168;
  sub_26A2597D8();
  static _ProtoMultilineTextProperty.== infix(_:_:)(v103, v105);
  OUTLINED_FUNCTION_89_3();
  sub_26A26960C();
  OUTLINED_FUNCTION_27_2(v171);
  OUTLINED_FUNCTION_21_3();
  sub_26A26960C();
  v106 = OUTLINED_FUNCTION_106();
  sub_26A0E48F0(v106, v107, &unk_26A4273F0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  OUTLINED_FUNCTION_142();
  v108 = v167;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v109 = *(v163 + 48);
  v86 = v165;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v110 = v164;
  OUTLINED_FUNCTION_19(v86, 1);
  if (v79)
  {
    sub_26A0E48F0(v108, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_9(v86 + v109);
    if (v79)
    {
      sub_26A0E48F0(v86, &off_28036C7C0, &off_26A427400);
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  v118 = v162;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v86 + v109);
  if (v119)
  {
    sub_26A0E48F0(v167, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_96_1();
    sub_26A26960C();
LABEL_64:
    v80 = &qword_28036C7C8;
    v81 = &qword_26A425C00;
    goto LABEL_21;
  }

  v120 = v160;
  sub_26A2597D8();
  v121 = *v118;
  v122 = *v120;
  sub_26A0E36D8();
  if ((v123 & 1) == 0 || (v118[1] == v120[1] ? (v124 = v118[2] == v120[2]) : (v124 = 0), !v124 && (sub_26A425354() & 1) == 0))
  {
    sub_26A26960C();
    sub_26A0E48F0(v167, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
    v82 = OUTLINED_FUNCTION_88();
    v81 = &off_26A427400;
    goto LABEL_22;
  }

  v125 = *(v110 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_14_11();
  sub_26A275BB8(v126, v127);
  v128 = sub_26A424B64();
  OUTLINED_FUNCTION_97_2();
  sub_26A26960C();
  OUTLINED_FUNCTION_199_0();
  sub_26A0E48F0(v129, v130, v131);
  sub_26A26960C();
  v132 = OUTLINED_FUNCTION_103();
  sub_26A0E48F0(v132, v133, &off_26A427400);
  if ((v128 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_51:
  v111 = (v94 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v112 = *v111;
  v113 = v111[1];
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_168_1();
  if (v79)
  {
    v115 = v113 == v114;
  }

  else
  {
    v115 = 0;
  }

  if (v115 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    OUTLINED_FUNCTION_142();
    v116 = v161;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_142();
    v117 = *(v180 + 48);
    v102 = v159;
    sub_26A10FD9C();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v102);
    if (v79)
    {
      sub_26A0E48F0(v116, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_48_0(v102 + v117);
      if (v79)
      {
        sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
LABEL_79:
        OUTLINED_FUNCTION_142();
        v140 = v158;
        OUTLINED_FUNCTION_112_1();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_163_2(v180);
        v141 = v156;
        OUTLINED_FUNCTION_112_1();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_112_1();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_48_0(v141);
        if (v79)
        {
          sub_26A0E48F0(v140, &qword_28036C7B8, &unk_26A425BF0);
          OUTLINED_FUNCTION_48_0(&qword_280370000 + v141);
          if (v79)
          {
            sub_26A0E48F0(v141, &qword_28036C7B8, &unk_26A425BF0);
LABEL_89:
            v148 = (v94 + OBJC_IVAR____TtCV10SnippetKit25_ProtoSimpleItem_StandardP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
            OUTLINED_FUNCTION_142();
            v149 = *v148;
            v150 = v148[1];
            OUTLINED_FUNCTION_122_1();
            OUTLINED_FUNCTION_168_1();
            if (v79)
            {
              v152 = v150 == v151;
            }

            else
            {
              v152 = 0;
            }

            if (!v152)
            {
              OUTLINED_FUNCTION_21_3();
              sub_26A425354();
            }

            goto LABEL_23;
          }
        }

        else
        {
          v142 = v155;
          sub_26A10FD9C();
          OUTLINED_FUNCTION_48_0(&qword_280370000 + v141);
          if (!v143)
          {
            v144 = v177;
            sub_26A2597D8();
            v145 = static _ProtoTextProperty.== infix(_:_:)(v142, v144);
            OUTLINED_FUNCTION_8_17();
            sub_26A26960C();
            OUTLINED_FUNCTION_27_2(v158);
            sub_26A26960C();
            v146 = OUTLINED_FUNCTION_106();
            sub_26A0E48F0(v146, v147, &unk_26A425BF0);
            if ((v145 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_89;
          }

          sub_26A0E48F0(v158, &qword_28036C7B8, &unk_26A425BF0);
          OUTLINED_FUNCTION_3_29();
          sub_26A26960C();
        }

        v80 = &qword_28036C7D0;
        v81 = &qword_26A426DE0;
        v82 = v141;
LABEL_22:
        sub_26A0E48F0(v82, v80, v81);
        goto LABEL_23;
      }
    }

    else
    {
      sub_26A10FD9C();
      OUTLINED_FUNCTION_48_0(v102 + v117);
      if (!v134)
      {
        sub_26A2597D8();
        v135 = OUTLINED_FUNCTION_106();
        v137 = static _ProtoTextProperty.== infix(_:_:)(v135, v136);
        OUTLINED_FUNCTION_8_17();
        sub_26A26960C();
        OUTLINED_FUNCTION_27_2(v161);
        sub_26A26960C();
        v138 = OUTLINED_FUNCTION_245();
        sub_26A0E48F0(v138, v139, &unk_26A425BF0);
        if ((v137 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_79;
      }

      sub_26A0E48F0(v161, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_29();
      sub_26A26960C();
    }

    v80 = &qword_28036C7D0;
    v81 = &qword_26A426DE0;
LABEL_44:
    v82 = v102;
    goto LABEL_22;
  }

LABEL_23:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A268728(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A275BB8(&qword_280370F90, type metadata accessor for _ProtoSimpleItem_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2687A8(uint64_t a1)
{
  v2 = sub_26A275BB8(&qword_28036F7D0, type metadata accessor for _ProtoSimpleItem_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A268818()
{
  sub_26A275BB8(&qword_28036F7D0, type metadata accessor for _ProtoSimpleItem_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A2688B0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370C08);
  __swift_project_value_buffer(v0, qword_280370C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26A42B0C0;
  v4 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v31 + v3 + v2 + v1[14];
  *(v31 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v31 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v31 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v31 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v31 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v17 = *MEMORY[0x277D21870];
  v7();
  v18 = (v31 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "action";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  v20 = (v31 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "component_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v7();
  v22 = (v31 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "text_6";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v7();
  v24 = (v31 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "text_7";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v7();
  v26 = (v31 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "text_8";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v7();
  v28 = (v31 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "link_identifier";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A268D24(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_100_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A268D74()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, 1, 1, v2);
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A268F00()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_131_3();
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  v26 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  v45 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6);
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v19);
  v48 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7);
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v19);
  v51 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8);
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v19);
  v54 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  v63 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v54 = 0;
  v54[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_137_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_137_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_137_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_87();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_164_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_135_3();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_135_3();
  swift_endAccess();
  v55 = (v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v56 = *v55;
  v57 = v55[1];
  OUTLINED_FUNCTION_26_10();
  v58 = v44[1];
  *v44 = v56;
  v44[1] = v57;

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_5();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_5();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_5();
  sub_26A10CF40();
  swift_endAccess();
  v59 = (v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v61 = *v59;
  v60 = v59[1];

  OUTLINED_FUNCTION_26_10();
  v62 = v63[1];
  *v63 = v61;
  v63[1] = v60;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2695B8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A26960C()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26A2696A0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, &qword_28036C7B8, &unk_26A425BF0);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A269888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_100_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_5_3();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_26A26994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A269B24();
        break;
      case 2:
        sub_26A269C00();
        break;
      case 3:
        sub_26A269CDC();
        break;
      case 4:
        sub_26A269DB8();
        break;
      case 5:
        sub_26A269E94();
        break;
      case 6:
        sub_26A269F70();
        break;
      case 7:
        sub_26A26A04C();
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName;
        goto LABEL_11;
      case 9:
        sub_26A26A128();
        break;
      case 10:
        sub_26A26A204();
        break;
      case 11:
        sub_26A26A2E0();
        break;
      case 12:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier;
LABEL_11:
        sub_26A2768B0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A269B24()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A269C00()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A269CDC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A269DB8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A269E94()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A269F70()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26A04C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26A128()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26A204()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26A2E0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12_7();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A26A464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A26A6B0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A26A8A4(a1, a2, a3, a4);
    sub_26A26AA98(a1, a2, a3, a4);
    sub_26A26AC8C(a1, a2, a3, a4);
    sub_26A26AE80(a1, a2, a3, a4);
    sub_26A26B074(a1, a2, a3, a4);
    sub_26A26B268(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A26B45C(a1, a2, a3, a4);
    sub_26A26B650(a1, a2, a3, a4);
    sub_26A26B844(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A26A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A2597D8();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

void sub_26A26BA64()
{
  OUTLINED_FUNCTION_76();
  v245 = v0;
  v2 = v1;
  v219 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v219);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v214 = v6;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v218);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v220 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v216 = v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v222 = v17;
  OUTLINED_FUNCTION_45();
  v224 = type metadata accessor for _ProtoVisualProperty();
  v18 = OUTLINED_FUNCTION_12(v224);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v217 = v21;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12(v223);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  v225 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v221 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v227 = v32;
  v33 = OUTLINED_FUNCTION_45();
  v238 = type metadata accessor for _ProtoMultilineTextProperty(v33);
  v34 = OUTLINED_FUNCTION_12(v238);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v230 = v37;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v38 = OUTLINED_FUNCTION_12(v237);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  v228 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_48();
  v235 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v45 = OUTLINED_FUNCTION_41(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8();
  v226 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v236 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v233 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_48();
  v234 = v54;
  v55 = OUTLINED_FUNCTION_45();
  v246 = type metadata accessor for _ProtoTextProperty(v55);
  v56 = OUTLINED_FUNCTION_12(v246);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_11();
  v240 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v61 = OUTLINED_FUNCTION_12(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8();
  v209 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  v210 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v213 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  v232 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v242 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  v75 = &v204 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v77 = OUTLINED_FUNCTION_41(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8();
  v206 = v80;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_47();
  v208 = v82;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47();
  v207 = v84;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_47();
  v212 = v86;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_47();
  v211 = v88;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_47();
  v215 = v90;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_47();
  v229 = v92;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_47();
  v231 = v94;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_47();
  v239 = v96;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_47();
  v241 = v98;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_47();
  v244 = v100;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v101);
  v103 = &v204 - v102;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v243 = v60;
  v104 = *(v60 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v75);
  if (v105)
  {

    sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(&v75[v104]);
    if (v105)
    {
      sub_26A0E48F0(v75, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v106 = v75;
LABEL_20:
    sub_26A0E48F0(v106, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_21;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&v75[v104]);
  if (v105)
  {

    sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_29();
    sub_26A26960C();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_158_3();

  v205 = v2;

  v107 = OUTLINED_FUNCTION_245();
  v109 = static _ProtoTextProperty.== infix(_:_:)(v107, v108);
  sub_26A26960C();
  sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
  v2 = v205;
  sub_26A26960C();
  sub_26A0E48F0(v75, &qword_28036C7B8, &unk_26A425BF0);
  if ((v109 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1();
  v110 = v241;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1();
  v111 = v242;
  v112 = *(v243 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_47_8(v111);
  if (v105)
  {
    sub_26A0E48F0(v110, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_47_8(v111 + v112);
    if (v105)
    {
      sub_26A0E48F0(v111, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v113 = v239;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_47_8(v111 + v112);
  if (v114)
  {
    sub_26A0E48F0(v110, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_29();
    sub_26A26960C();
LABEL_19:
    v106 = v111;
    goto LABEL_20;
  }

  v115 = v240;
  sub_26A2597D8();
  v116 = static _ProtoTextProperty.== infix(_:_:)(v113, v115);
  sub_26A26960C();
  sub_26A0E48F0(v110, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_245();
  sub_26A26960C();
  v117 = OUTLINED_FUNCTION_115();
  sub_26A0E48F0(v117, v118, &unk_26A425BF0);
  if ((v116 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  OUTLINED_FUNCTION_127_1();
  v205 = v2;
  v119 = v234;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_1(v237);
  v120 = v235;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v121 = v238;
  OUTLINED_FUNCTION_19(v120, 1);
  if (v105)
  {
    sub_26A0E48F0(v119, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_9(&qword_280370000 + v120);
    v122 = v236;
    if (v105)
    {
      sub_26A0E48F0(v120, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_33;
    }

LABEL_31:
    v125 = &qword_28036F088;
    v126 = &unk_26A42C570;
LABEL_42:
    v132 = v120;
LABEL_43:
    sub_26A0E48F0(v132, v125, v126);
    goto LABEL_21;
  }

  v123 = v233;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&qword_280370000 + v120);
  v122 = v236;
  if (v124)
  {
    sub_26A0E48F0(v119, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_20_17();
    sub_26A26960C();
    goto LABEL_31;
  }

  v127 = v230;
  sub_26A2597D8();
  static _ProtoMultilineTextProperty.== infix(_:_:)(v123, v127);
  OUTLINED_FUNCTION_88_6();
  sub_26A26960C();
  OUTLINED_FUNCTION_127_2();
  sub_26A26960C();
  v128 = OUTLINED_FUNCTION_106();
  sub_26A0E48F0(v128, v129, &unk_26A4273F0);
  if ((v121 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_33:
  OUTLINED_FUNCTION_142();
  v130 = v231;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_1(v243);
  v120 = v232;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_47_8(v120);
  if (v105)
  {
    sub_26A0E48F0(v130, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_47_8(&qword_280370000 + v120);
    if (v105)
    {
      sub_26A0E48F0(v120, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_47_8(&qword_280370000 + v120);
  if (v131)
  {
    sub_26A0E48F0(v130, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_29();
    sub_26A26960C();
LABEL_41:
    v125 = &qword_28036C7D0;
    v126 = &qword_26A426DE0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_158_3();
  v133 = OUTLINED_FUNCTION_245();
  v135 = static _ProtoTextProperty.== infix(_:_:)(v133, v134);
  OUTLINED_FUNCTION_8_17();
  sub_26A26960C();
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_21_3();
  sub_26A26960C();
  v136 = OUTLINED_FUNCTION_106();
  sub_26A0E48F0(v136, v137, &unk_26A425BF0);
  if ((v135 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_46:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_163_2(v237);
  v138 = v228;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v138);
  if (v105)
  {
    sub_26A0E48F0(v122, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_14_9(&qword_280370000 + v138);
    if (v105)
    {
      sub_26A0E48F0(v138, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_57;
    }

LABEL_54:
    v125 = &qword_28036F088;
    v126 = &unk_26A42C570;
LABEL_55:
    v132 = v138;
    goto LABEL_43;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(&qword_280370000 + v138);
  if (v139)
  {
    sub_26A0E48F0(v236, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_20_17();
    sub_26A26960C();
    goto LABEL_54;
  }

  sub_26A2597D8();
  v140 = OUTLINED_FUNCTION_106();
  static _ProtoMultilineTextProperty.== infix(_:_:)(v140, v141);
  OUTLINED_FUNCTION_88_6();
  sub_26A26960C();
  OUTLINED_FUNCTION_27_2(v236);
  sub_26A26960C();
  OUTLINED_FUNCTION_127_2();
  if ((&qword_28036CAE0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_57:
  OUTLINED_FUNCTION_142();
  v142 = v227;
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_1(v223);
  v143 = v225;
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_37(v143, 1, v224);
  if (v105)
  {
    sub_26A0E48F0(v142, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(&qword_280370000 + v143);
    if (v105)
    {
      sub_26A0E48F0(v143, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_67;
    }

LABEL_65:
    v125 = &qword_28036D190;
    v126 = &unk_26A427130;
    v132 = v143;
    goto LABEL_43;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280370000 + v143);
  if (v144)
  {
    sub_26A0E48F0(v227, &qword_28036CAE8, &unk_26A426430);
    sub_26A26960C();
    goto LABEL_65;
  }

  sub_26A2597D8();
  v145 = OUTLINED_FUNCTION_103();
  v147 = static _ProtoVisualProperty.== infix(_:_:)(v145, v146);
  sub_26A26960C();
  OUTLINED_FUNCTION_199_0();
  sub_26A0E48F0(v148, v149, v150);
  OUTLINED_FUNCTION_88();
  sub_26A26960C();
  OUTLINED_FUNCTION_199_0();
  sub_26A0E48F0(v151, v152, v153);
  if ((v147 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_67:
  OUTLINED_FUNCTION_142();
  v154 = v222;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v155 = *(v218 + 48);
  v156 = v220;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v157 = v156;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v158 = v219;
  OUTLINED_FUNCTION_19(v156, 1);
  if (v105)
  {
    sub_26A0E48F0(v154, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_9(v156 + v155);
    if (v105)
    {
      sub_26A0E48F0(v156, &off_28036C7C0, &off_26A427400);
      v159 = v205;
      goto LABEL_72;
    }

LABEL_85:
    v169 = &qword_28036C7C8;
    v170 = &qword_26A425C00;
    v171 = v157;
    goto LABEL_109;
  }

  v167 = v216;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v157 + v155);
  if (v168)
  {
    sub_26A0E48F0(v222, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_96_1();
    sub_26A26960C();
    goto LABEL_85;
  }

  v172 = v214;
  sub_26A2597D8();
  v173 = *v167;
  v174 = *v172;
  sub_26A0E36D8();
  if ((v175 & 1) == 0 || (v167[1] == v172[1] ? (v176 = v167[2] == v172[2]) : (v176 = 0), !v176 && (sub_26A425354() & 1) == 0))
  {
    sub_26A26960C();
    sub_26A0E48F0(v222, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
    v171 = OUTLINED_FUNCTION_88();
    v170 = &off_26A427400;
    goto LABEL_109;
  }

  v177 = *(v158 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_14_11();
  sub_26A275BB8(v178, v179);
  v180 = sub_26A424B64();
  OUTLINED_FUNCTION_97_2();
  sub_26A26960C();
  OUTLINED_FUNCTION_199_0();
  sub_26A0E48F0(v181, v182, v183);
  sub_26A26960C();
  v184 = OUTLINED_FUNCTION_103();
  sub_26A0E48F0(v184, v185, &off_26A427400);
  v159 = v205;
  if ((v180 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_72:
  v160 = (v159 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v161 = *v160;
  v162 = v160[1];
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_168_1();
  if (v105)
  {
    v164 = v162 == v163;
  }

  else
  {
    v164 = 0;
  }

  if (v164 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    OUTLINED_FUNCTION_142();
    v165 = v215;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_142();
    v166 = *(v243 + 48);
    v138 = v213;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_47_8(v138);
    if (v105)
    {
      sub_26A0E48F0(v165, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_47_8(v138 + v166);
      if (v105)
      {
        sub_26A0E48F0(v138, &qword_28036C7B8, &unk_26A425BF0);
LABEL_100:
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_112_1();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_149_1(v243);
        v190 = v210;
        OUTLINED_FUNCTION_112_1();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_112_1();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_47_8(v190);
        if (v105)
        {
          sub_26A0E48F0(v212, &qword_28036C7B8, &unk_26A425BF0);
          v192 = v246;
          OUTLINED_FUNCTION_37(&qword_280370000 + v190, 1, v246);
          if (v105)
          {
            sub_26A0E48F0(v190, &qword_28036C7B8, &unk_26A425BF0);
            goto LABEL_112;
          }
        }

        else
        {
          v191 = v207;
          sub_26A10FD9C();
          v192 = v246;
          OUTLINED_FUNCTION_37(&qword_280370000 + v190, 1, v246);
          if (!v193)
          {
            OUTLINED_FUNCTION_158_3();
            v194 = static _ProtoTextProperty.== infix(_:_:)(v191, &qword_280370000);
            OUTLINED_FUNCTION_8_17();
            sub_26A26960C();
            OUTLINED_FUNCTION_27_2(v212);
            sub_26A26960C();
            OUTLINED_FUNCTION_127_2();
            if ((v194 & 1) == 0)
            {
              goto LABEL_21;
            }

LABEL_112:
            OUTLINED_FUNCTION_142();
            OUTLINED_FUNCTION_112_1();
            sub_26A10FD9C();
            OUTLINED_FUNCTION_142();
            OUTLINED_FUNCTION_149_1(v243);
            v195 = v209;
            OUTLINED_FUNCTION_112_1();
            sub_26A10FD9C();
            OUTLINED_FUNCTION_112_1();
            sub_26A10FD9C();
            OUTLINED_FUNCTION_37(v195, 1, v192);
            if (v105)
            {
              sub_26A0E48F0(v208, &qword_28036C7B8, &unk_26A425BF0);
              OUTLINED_FUNCTION_9(&qword_280370000 + v195);
              if (v105)
              {
                sub_26A0E48F0(v209, &qword_28036C7B8, &unk_26A425BF0);
LABEL_123:
                v199 = (v205 + OBJC_IVAR____TtCV10SnippetKit21_ProtoSimpleItem_RichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
                OUTLINED_FUNCTION_142();
                v200 = *v199;
                v201 = v199[1];
                OUTLINED_FUNCTION_122_1();
                OUTLINED_FUNCTION_168_1();
                if (v105)
                {
                  v203 = v201 == v202;
                }

                else
                {
                  v203 = 0;
                }

                if (!v203)
                {
                  OUTLINED_FUNCTION_21_3();
                  sub_26A425354();
                }

                goto LABEL_21;
              }
            }

            else
            {
              sub_26A10FD9C();
              OUTLINED_FUNCTION_9(&qword_280370000 + v195);
              if (!v196)
              {
                v197 = v209;
                OUTLINED_FUNCTION_158_3();
                v198 = static _ProtoTextProperty.== infix(_:_:)(v206, &qword_280370000);
                OUTLINED_FUNCTION_8_17();
                sub_26A26960C();
                OUTLINED_FUNCTION_27_2(v208);
                sub_26A26960C();
                OUTLINED_FUNCTION_27_2(v197);
                if ((v198 & 1) == 0)
                {
                  goto LABEL_21;
                }

                goto LABEL_123;
              }

              sub_26A0E48F0(v208, &qword_28036C7B8, &unk_26A425BF0);
              OUTLINED_FUNCTION_3_29();
              sub_26A26960C();
            }

            sub_26A0E48F0(v209, &qword_28036C7D0, &qword_26A426DE0);
            goto LABEL_21;
          }

          sub_26A0E48F0(v212, &qword_28036C7B8, &unk_26A425BF0);
          OUTLINED_FUNCTION_3_29();
          sub_26A26960C();
        }

        v169 = &qword_28036C7D0;
        v170 = &qword_26A426DE0;
        v171 = v190;
LABEL_109:
        sub_26A0E48F0(v171, v169, v170);
        goto LABEL_21;
      }
    }

    else
    {
      sub_26A10FD9C();
      OUTLINED_FUNCTION_47_8(v138 + v166);
      if (!v186)
      {
        OUTLINED_FUNCTION_158_3();
        v187 = OUTLINED_FUNCTION_245();
        v189 = static _ProtoTextProperty.== infix(_:_:)(v187, v188);
        OUTLINED_FUNCTION_8_17();
        sub_26A26960C();
        OUTLINED_FUNCTION_27_2(v215);
        OUTLINED_FUNCTION_21_3();
        sub_26A26960C();
        OUTLINED_FUNCTION_127_2();
        if ((v189 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_100;
      }

      sub_26A0E48F0(v215, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_29();
      sub_26A26960C();
    }

    v125 = &qword_28036C7D0;
    v126 = &qword_26A426DE0;
    goto LABEL_55;
  }

LABEL_21:

  OUTLINED_FUNCTION_75();
}