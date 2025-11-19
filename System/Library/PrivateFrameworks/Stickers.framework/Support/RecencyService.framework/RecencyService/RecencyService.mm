uint64_t sub_231C667DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_231C668A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C66954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecencyRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_231C8BDAC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_231C66A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RecencyRequest(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_231C8BDAC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_231C66B50()
{
  v1 = sub_231C8BDAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231C66C14()
{
  v1 = type metadata accessor for RecencyXPCSessionContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  v9 = type metadata accessor for RecencyRequest(0);
  v10 = v0 + v3 + *(v9 + 32);
  v11 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_2;
        }

        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_2;
      }

LABEL_11:
      v16 = *(v10 + 8);

      goto LABEL_2;
    }

    v17 = sub_231C8BCCC();
    (*(*(v17 - 8) + 8))(v10, v17);
  }

LABEL_2:
  v12 = *(v7 + *(v9 + 36) + 8);

  v13 = *(v1 + 20);
  v14 = sub_231C8BDAC();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231C66E04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231C66E3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  }

  v2 = v0[9];

  v3 = v0[10];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_231C66E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_231C66F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_231C66F74@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_231C66FA4()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656B63697473;
  if (*v0 != 2)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0)
  {
    v1 = 0x696A6F6D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_231C67020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C87908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231C67058(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_231C670FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C671AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_231C67268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C67318(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231C8C01C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_231C673C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231C8C01C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C67468()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231C674A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231C67544(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C67680, v1, 0);
}

uint64_t sub_231C67680()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request;
  v0[10] = OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request;
  v6 = v4 + v5;
  v7 = type metadata accessor for RecencyRequest(0);
  sub_231C67EB0(v6 + *(v7 + 32), v3, &qword_27DD70530, &unk_231C8C9F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[2];
    sub_231C67FE0(v0[6], &qword_27DD70530, &unk_231C8C9F0);
    *v8 = xmmword_231C8C920;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *(v8 + 57) = 0u;
    v9 = v0[9];
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[4];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[3];
    sub_231C67F18(v0[6], v0[9], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    v16 = *(v15 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_recencyModel);
    v0[11] = v16;

    return MEMORY[0x2822009F8](sub_231C67814, v16, 0);
  }
}

uint64_t sub_231C67814()
{
  v1 = v0[11];
  v2 = v0[3];
  ImageGlyphRecencyModel.lastEngagement(for:)(v0[9], v0[5]);

  return MEMORY[0x2822009F8](sub_231C67888, v2, 0);
}

uint64_t sub_231C67888()
{
  v1 = v0[4];
  v2 = *(v0[3] + v0[10]);
  sub_231C67EB0(v0[5], v1, &qword_27DD70528, &qword_231C8D980);
  v3 = sub_231C8BC9C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[5];
  if (v5 == 1)
  {
    sub_231C67FE0(v0[5], &qword_27DD70528, &qword_231C8D980);
    sub_231C67F80(v6, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C67FE0(v7, &qword_27DD70528, &qword_231C8D980);
    v9 = 0;
  }

  else
  {
    sub_231C8BC7C();
    v9 = v10;
    sub_231C67FE0(v8, &qword_27DD70528, &qword_231C8D980);
    sub_231C67F80(v6, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    (*(v4 + 8))(v7, v3);
  }

  v11 = v0[2];
  *v11 = v2;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 8) = 0;
  *(v11 + 32) = 1;
  *(v11 + 40) = v9;
  *(v11 + 48) = v5 == 1;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = -1;
  v12 = v0[9];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[4];

  v16 = v0[1];

  return v16();
}

uint64_t sub_231C67AA4()
{
  sub_231C67F80(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request, type metadata accessor for RecencyRequest);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_recencyModel);

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_modelMigrator, &qword_27DD70650, &unk_231C8EE00);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ImageGlyphLastUsedDateTimeRequestHandler()
{
  result = qword_27DD70518;
  if (!qword_27DD70518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C67B7C()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C67C30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C67F18(a1, v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request, type metadata accessor for RecencyRequest);
  *(v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C67CD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C67544(a1);
}

uint64_t sub_231C67D74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_231C67EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_231C67F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C67F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231C67FE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *RecencyResponse.init(operationType:values:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = -1;
  *a3 = v3;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_231C68070()
{
  v0 = sub_231C8BCFC();
  __swift_allocate_value_buffer(v0, qword_280CFA040);
  __swift_project_value_buffer(v0, qword_280CFA040);
  return sub_231C8BCEC();
}

RecencyService::RecencyRequestResponseOperationType_optional __swiftcall RecencyRequestResponseOperationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231C8C0FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecencyRequestResponseOperationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7461447465736572;
  v3 = 1702257011;
  if (v1 != 5)
  {
    v3 = 1684107116;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_231C68238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006573616261;
  v3 = 0x7461447465736572;
  v4 = a1;
  v5 = 1702257011;
  if (a1 != 5)
  {
    v5 = 1684107116;
  }

  v6 = 0x8000000231C8EE80;
  if (a1 == 3)
  {
    v7 = 0x7461447465736572;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a1 == 3)
  {
    v6 = 0xED00006573616261;
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v7 = v5;
    v8 = 0xE400000000000000;
  }

  v9 = 0x8000000231C8EDF0;
  v10 = 0xD000000000000020;
  v11 = 0x8000000231C8EE20;
  v12 = 0xD000000000000021;
  if (v4 != 1)
  {
    v12 = 0xD00000000000001ALL;
    v11 = 0x8000000231C8EE50;
  }

  if (v4)
  {
    v10 = v12;
    v9 = v11;
  }

  if (v4 <= 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000231C8EDF0;
      if (v13 != 0xD000000000000020)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000231C8EE20;
      if (v13 != 0xD000000000000021)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x8000000231C8EE50;
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    if (a2 > 4u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 5)
      {
        if (v13 != 1702257011)
        {
          goto LABEL_40;
        }
      }

      else if (v13 != 1684107116)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 != 3)
    {
      v2 = 0x8000000231C8EE80;
      if (v13 != 0xD000000000000017)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (v13 != v3)
  {
LABEL_40:
    v15 = sub_231C8C23C();
    goto LABEL_41;
  }

LABEL_37:
  if (v14 != v2)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_231C68420()
{
  *v0;
  *v0;
  *v0;
  sub_231C8BEFC();
}

uint64_t sub_231C68538()
{
  sub_231C8C2BC();
  sub_231C8BEFC();

  return sub_231C8C2DC();
}

void sub_231C68668(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006573616261;
  v4 = 0x7461447465736572;
  v5 = 1702257011;
  if (v2 != 5)
  {
    v5 = 1684107116;
  }

  if (v2 != 3)
  {
    v4 = 0xD000000000000017;
    v3 = 0x8000000231C8EE80;
  }

  if (*v1 > 4u)
  {
    v4 = v5;
    v3 = 0xE400000000000000;
  }

  v6 = 0x8000000231C8EDF0;
  v7 = 0x8000000231C8EE20;
  v8 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v7 = 0x8000000231C8EE50;
  }

  if (*v1)
  {
    v6 = v7;
  }

  else
  {
    v8 = 0xD000000000000020;
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_231C687F8()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t sub_231C68840()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

unint64_t sub_231C68884()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x456E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_231C688CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272;
  if (v6 || (sub_231C8C23C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000231C8F100 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_231C8C23C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_231C689CC(uint64_t a1)
{
  v2 = sub_231C68FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C68A08(uint64_t a1)
{
  v2 = sub_231C68FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C68A6C(uint64_t a1)
{
  v2 = sub_231C68FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C68AA8(uint64_t a1)
{
  v2 = sub_231C68FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C68AE4()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](0);
  return sub_231C8C2DC();
}

uint64_t sub_231C68B28()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](0);
  return sub_231C8C2DC();
}

uint64_t sub_231C68B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_231C8C23C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_231C68BF4(uint64_t a1)
{
  v2 = sub_231C6904C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C68C30(uint64_t a1)
{
  v2 = sub_231C6904C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecencyResponseError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70538, &qword_231C8CA20);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70540, &qword_231C8CA28);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70548, &qword_231C8CA30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C68FA4();
  sub_231C8C2FC();
  if (v16)
  {
    v30 = 1;
    sub_231C68FF8();
    v18 = v24;
    sub_231C8C1AC();
    v19 = v26;
    sub_231C8C1FC();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_231C6904C();
    sub_231C8C1AC();
    v20 = v23;
    sub_231C8C1FC();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_231C68FA4()
{
  result = qword_27DD70550;
  if (!qword_27DD70550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70550);
  }

  return result;
}

unint64_t sub_231C68FF8()
{
  result = qword_27DD70558;
  if (!qword_27DD70558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70558);
  }

  return result;
}

unint64_t sub_231C6904C()
{
  result = qword_27DD70560;
  if (!qword_27DD70560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70560);
  }

  return result;
}

uint64_t RecencyResponseError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70568, &qword_231C8CA38);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70570, &qword_231C8CA40);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70578, &qword_231C8CA48);
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v38);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_231C68FA4();
  v17 = v39;
  sub_231C8C2EC();
  if (!v17)
  {
    v39 = v11;
    v18 = v37;
    v19 = sub_231C8C19C();
    if (*(v19 + 16) == 1)
    {
      v20 = v38;
      v41 = *(v19 + 32);
      if (v41)
      {
        v43 = 1;
        sub_231C68FF8();
        v21 = v20;
        sub_231C8C10C();
        v22 = sub_231C8C16C();
        v24 = v23;
        (*(v36 + 8))(v6, v3);
        (*(v39 + 8))(v14, v21);
        swift_unknownObjectRelease();
        v18 = v37;
      }

      else
      {
        v42 = 0;
        sub_231C6904C();
        v30 = v10;
        v31 = v20;
        sub_231C8C10C();
        v33 = v7;
        v22 = sub_231C8C16C();
        v24 = v34;
        (*(v35 + 8))(v30, v33);
        (*(v39 + 8))(v14, v31);
        swift_unknownObjectRelease();
      }

      *v18 = v22;
      *(v18 + 8) = v24;
      *(v18 + 16) = v41;
    }

    else
    {
      v25 = sub_231C8C0AC();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70580, &unk_231C8CA50) + 48);
      *v27 = &type metadata for RecencyResponseError;
      v29 = v38;
      sub_231C8C11C();
      sub_231C8C09C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v39 + 8))(v14, v29);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_231C6953C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RecencyRequest.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t RecencyRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t RecencyRequest.imageGlyph.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecencyRequest(0) + 32);

  return sub_231C696E8(a1, v3);
}

uint64_t sub_231C696E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RecencyRequest.path.getter()
{
  v1 = (v0 + *(type metadata accessor for RecencyRequest(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RecencyRequest.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecencyRequest(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecencyRequest.init(operationType:parameters:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1025;
  v6 = type metadata accessor for RecencyRequest(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  result = (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v10 = (a3 + *(v6 + 36));
  *v10 = 0;
  v10[1] = 0;
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_231C69918()
{
  v1 = *v0;
  v2 = 0x6F6974617265706FLL;
  v3 = 0x796C476567616D69;
  v4 = 0x796C476567616D69;
  if (v1 != 4)
  {
    v4 = 1752457584;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574656D61726170;
  if (v1 != 1)
  {
    v5 = 0x74696D696CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_231C699E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C6E744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231C69A0C(uint64_t a1)
{
  v2 = sub_231C69D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C69A48(uint64_t a1)
{
  v2 = sub_231C69D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecencyRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70590, &qword_231C8CA60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C69D6C();
  sub_231C8C2FC();
  LOBYTE(v19) = *v3;
  v20 = 0;
  sub_231C69DC0();
  sub_231C8C20C();
  if (!v2)
  {
    v19 = *(v3 + 8);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    sub_231C6A3E8(qword_280CFA700);
    sub_231C8C1EC();
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    LOBYTE(v19) = 2;
    sub_231C8C1DC();
    LOBYTE(v19) = *(v3 + 25);
    v20 = 3;
    sub_231C69E5C();
    sub_231C8C1EC();
    v13 = type metadata accessor for RecencyRequest(0);
    v14 = *(v13 + 32);
    LOBYTE(v19) = 4;
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    sub_231C6A4A8(&qword_280CFA9A0, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C1EC();
    v15 = (v3 + *(v13 + 36));
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v19) = 5;
    sub_231C8C1BC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_231C69D6C()
{
  result = qword_280CFA8B8;
  if (!qword_280CFA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8B8);
  }

  return result;
}

unint64_t sub_231C69DC0()
{
  result = qword_280CFA8D0;
  if (!qword_280CFA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_231C69E5C()
{
  result = qword_280CFA6C8;
  if (!qword_280CFA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA6C8);
  }

  return result;
}

uint64_t RecencyRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705A8, &qword_231C8CA70);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for RecencyRequest(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[25] = 4;
  v16 = *(v13 + 32);
  v17 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v18 = *(*(v17 - 8) + 56);
  v39 = v15;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_231C69D6C();
  v37 = v10;
  v21 = v38;
  sub_231C8C2EC();
  if (v21)
  {
    v25 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return sub_231C67FE0(&v25[v16], &qword_27DD70530, &unk_231C8C9F0);
  }

  else
  {
    v38 = v11;
    v22 = v6;
    v23 = v35;
    v42 = 0;
    sub_231C6A394();
    v24 = v36;
    sub_231C8C17C();
    v26 = v39;
    *v39 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    v42 = 1;
    sub_231C6A3E8(&qword_280CFA6F8);
    sub_231C8C15C();
    v27 = v23;
    *(v26 + 8) = v41;
    LOBYTE(v41) = 2;
    *(v26 + 16) = sub_231C8C14C();
    *(v26 + 24) = v28 & 1;
    v42 = 3;
    sub_231C6A454();
    sub_231C8C15C();
    *(v26 + 25) = v41;
    LOBYTE(v41) = 4;
    sub_231C6A4A8(&qword_280CFA998, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C15C();
    sub_231C696E8(v22, v26 + v16);
    LOBYTE(v41) = 5;
    v29 = sub_231C8C12C();
    v31 = v30;
    v32 = (v26 + *(v38 + 36));
    (*(v27 + 8))(v37, v24);
    *v32 = v29;
    v32[1] = v31;
    sub_231C702A0(v26, v34, type metadata accessor for RecencyRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return sub_231C700D0(v26, type metadata accessor for RecencyRequest);
  }
}

unint64_t sub_231C6A394()
{
  result = qword_280CFA8C0;
  if (!qword_280CFA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8C0);
  }

  return result;
}

uint64_t sub_231C6A3E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD70598, &qword_231C8CA68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231C6A454()
{
  result = qword_280CFA4A0;
  if (!qword_280CFA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4A0);
  }

  return result;
}

uint64_t sub_231C6A4A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecencyResponse.imageGlyphCollection.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t RecencyResponse.frequency.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t RecencyResponse.frequency.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t RecencyResponse.timeInterval.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t RecencyResponse.timeInterval.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t RecencyResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_231C6A614(v2, v3, v4);
}

uint64_t sub_231C6A614(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_231C6A62C();
  }

  return result;
}

uint64_t RecencyResponse.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_231C6A674(*(v1 + 56), *(v1 + 64), *(v1 + 72));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t sub_231C6A674(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_231C6A68C();
  }

  return result;
}

uint64_t sub_231C6A6B4()
{
  v1 = *v0;
  v2 = 0x6F6974617265706FLL;
  v3 = 0x636E657571657266;
  v4 = 0x65746E49656D6974;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7365756C6176;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_231C6A784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C6E950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231C6A7AC(uint64_t a1)
{
  v2 = sub_231C6AB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C6A7E8(uint64_t a1)
{
  v2 = sub_231C6AB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecencyResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD705B0, &qword_231C8CA78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v30 = *(v1 + 2);
  v31 = v10;
  v11 = *(v1 + 3);
  v35 = v1[32];
  v12 = *(v1 + 5);
  v27 = v1[48];
  v13 = *(v1 + 8);
  v28 = *(v1 + 7);
  v29 = v11;
  v25 = v13;
  v26 = v12;
  v14 = v1[72];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_231C6AB70();
  sub_231C8C2FC();
  LOBYTE(v32) = v9;
  v36 = 0;
  sub_231C69DC0();
  sub_231C8C20C();
  if (!v2)
  {
    v20 = v30;
    v24 = v14;
    v21 = v28;
    v32 = v31;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    sub_231C6A3E8(qword_280CFA700);
    sub_231C8C1EC();
    v32 = v20;
    v36 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705C0, &qword_231C8CA80);
    sub_231C6B0CC(&qword_280CF9FD8, &qword_280CFA9A0);
    sub_231C8C1EC();
    LOBYTE(v32) = 3;
    sub_231C8C1CC();
    LOBYTE(v32) = 4;
    sub_231C8C1CC();
    v32 = v21;
    v33 = v25;
    v34 = v24;
    v36 = 5;
    sub_231C6A614(v21, v25, v24);
    sub_231C6ABC4();
    sub_231C8C1EC();
    sub_231C6A674(v32, v33, v34);
  }

  return (*(v5 + 8))(v8, v19);
}

unint64_t sub_231C6AB70()
{
  result = qword_280CFA7E8[0];
  if (!qword_280CFA7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CFA7E8);
  }

  return result;
}

unint64_t sub_231C6ABC4()
{
  result = qword_280CFA220;
  if (!qword_280CFA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA220);
  }

  return result;
}

uint64_t RecencyResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705C8, &qword_231C8CA88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C6AB70();
  sub_231C8C2EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return sub_231C6A674(0, 0, 255);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_231C6A394();
    sub_231C8C17C();
    v11 = v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    LOBYTE(v27) = 1;
    sub_231C6A3E8(&qword_280CFA6F8);
    sub_231C8C15C();
    v26 = v31[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705C0, &qword_231C8CA80);
    LOBYTE(v27) = 2;
    sub_231C6B0CC(&qword_280CFA6B0, &qword_280CFA998);
    sub_231C8C15C();
    v12 = v31[0];
    LOBYTE(v31[0]) = 3;
    v25 = sub_231C8C13C();
    v42 = v13 & 1;
    LOBYTE(v31[0]) = 4;
    v24 = sub_231C8C13C();
    v41 = v14 & 1;
    v43 = 5;
    sub_231C6B168();
    sub_231C8C15C();
    (*(v6 + 8))(v9, v5);
    v15 = v38;
    v16 = v39;
    v17 = v40;
    sub_231C6A674(0, 0, 255);
    LOBYTE(v27) = v11;
    *(&v27 + 1) = v26;
    v23 = v12;
    *&v28 = v12;
    *(&v28 + 1) = v25;
    HIDWORD(v22) = v42;
    LOBYTE(v29) = v42;
    v18 = v24;
    *(&v29 + 1) = v24;
    LOBYTE(v12) = v41;
    v30[0] = v41;
    *&v30[8] = v15;
    *&v30[16] = v16;
    v30[24] = v17;
    *(a2 + 57) = *&v30[9];
    v19 = v28;
    *a2 = v27;
    a2[1] = v19;
    v20 = *v30;
    a2[2] = v29;
    a2[3] = v20;
    sub_231C6B1BC(&v27, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    LOBYTE(v31[0]) = v11;
    v31[1] = v26;
    v31[2] = v23;
    v31[3] = v25;
    v32 = BYTE4(v22);
    v33 = v18;
    v34 = v12;
    v35 = v15;
    v36 = v16;
    v37 = v17;
    return sub_231C6B1F4(v31);
  }
}

uint64_t sub_231C6B0CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD705C0, &qword_231C8CA80);
    sub_231C6A4A8(a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231C6B168()
{
  result = qword_280CFA6B8;
  if (!qword_280CFA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA6B8);
  }

  return result;
}

uint64_t RecencyXPCSessionContext.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecencyXPCSessionContext(0) + 20);
  v4 = sub_231C8BDAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecencyXPCSessionContext.init(request:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231C70308(a1, a3, type metadata accessor for RecencyRequest);
  v5 = *(type metadata accessor for RecencyXPCSessionContext(0) + 20);
  v6 = sub_231C8BDAC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t RecencyServiceListener.__allocating_init()()
{
  v0 = swift_allocObject();
  RecencyServiceListener.init()();
  return v0;
}

void *RecencyServiceListener.init()()
{
  v1 = sub_231C8C02C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231C8BFEC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_231C8BE3C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  swift_defaultActor_initialize();
  sub_231C6B6E4();
  v16[0] = "com.apple.stickers.recency";
  sub_231C8BE2C();
  v16[1] = MEMORY[0x277D84F90];
  sub_231C6A4A8(&qword_280CF9FB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD705D0, &qword_231C8CA90);
  sub_231C6B730();
  sub_231C8C05C();
  v10 = *MEMORY[0x277D85260];
  v11 = *(v2 + 104);
  v11(v5, v10, v1);
  v0[14] = sub_231C8C03C();
  sub_231C8BE2C();
  sub_231C8BFDC();
  v11(v5, v10, v1);
  v0[15] = sub_231C8C03C();
  v12 = type metadata accessor for ImageGlyphRecencyModel(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[16] = ImageGlyphRecencyModel.init(shouldDecayFrequencies:)(1);
  v0[17] = 0;
  return v0;
}

unint64_t sub_231C6B6E4()
{
  result = qword_280CF9FB0;
  if (!qword_280CF9FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CF9FB0);
  }

  return result;
}

unint64_t sub_231C6B730()
{
  result = qword_280CF9FC8;
  if (!qword_280CF9FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD705D0, &qword_231C8CA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF9FC8);
  }

  return result;
}

uint64_t RecencyServiceListener.start()()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_231C8BD1C() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C6B824, v0, 0);
}

uint64_t sub_231C6B824()
{
  v1 = v0[2];
  if (!*(v1 + 136))
  {
    v2 = v0[3];
    v3 = *(v1 + 112);

    sub_231C8BD0C();
    v4 = sub_231C8BD4C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = sub_231C8BD3C();
    v8 = *(v1 + 136);
    *(v1 + 136) = v7;
  }

  v9 = v0[3];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_231C6BA78()
{

  sub_231C8BD2C();
}

uint64_t RecencyServiceListener.performMigration(with:force:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_231C6BB28, v2, 0);
}

uint64_t sub_231C6BB28()
{
  v1 = v0[3].i8[0];
  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_231C6BC14;
  v4 = v0[1].i64[1];

  return sub_231C6C0E0(0xD000000000000023, 0x8000000231C8EFE0, &unk_231C8CAB8, v2);
}

uint64_t sub_231C6BC14()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_231C6BD24(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 80) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return MEMORY[0x2822009F8](sub_231C6BD4C, a1, 0);
}

uint64_t sub_231C6BD4C()
{
  v1 = *(*(v0 + 48) + 128);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_231C6BDEC;
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  return sub_231C72B94(v4, v3);
}

uint64_t sub_231C6BDEC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_231C6BF20, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_231C6BF20()
{
  v18 = v0;
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_231C8BCFC();
  __swift_project_value_buffer(v2, qword_280CFA040);
  MEMORY[0x238379810](v1);
  v3 = sub_231C8BCDC();
  v4 = sub_231C8BFBC();
  MEMORY[0x238379800](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_231C8C26C();
    v14 = sub_231C7D5C8(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_231C65000, v3, v4, "Could not migrate recency data %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x238379930](v8, -1, -1);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379800](v6);
  }

  else
  {

    MEMORY[0x238379800](v6);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_231C6C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_231C6C108, v4, 0);
}

uint64_t sub_231C6C108()
{
  v14 = v0;
  v2 = v0[2];
  v1 = v0[3];
  sub_231C8C08C();

  v13[0] = 0xD000000000000024;
  v13[1] = 0x8000000231C8F140;
  MEMORY[0x238379150](v2, v1);
  v0[7] = 0xD000000000000024;
  v0[8] = 0x8000000231C8F140;
  sub_231C8BEEC();
  v0[9] = os_transaction_create();

  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v3 = sub_231C8BCFC();
  v0[10] = __swift_project_value_buffer(v3, qword_280CFA040);

  v4 = sub_231C8BCDC();
  v5 = sub_231C8BF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_231C7D5C8(0xD000000000000024, 0x8000000231C8F140, v13);
    _os_log_impl(&dword_231C65000, v4, v5, "Beginning expensive work with scoped os_transaction_t named: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379930](v6, -1, -1);
  }

  v12 = (v0[4] + *v0[4]);
  v8 = *(v0[4] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_231C6C394;
  v10 = v0[5];

  return v12();
}

uint64_t sub_231C6C394()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_231C6C4A4, v2, 0);
}

uint64_t sub_231C6C4A4()
{
  v15 = v0;
  v1 = v0[10];
  v2 = v0[8];

  v3 = sub_231C8BCDC();
  v4 = sub_231C8BF9C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_231C7D5C8(v7, v6, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_231C65000, v3, v4, "Ending expensive work with scoped os_transaction_t named: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x238379930](v9, -1, -1);
    MEMORY[0x238379930](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[9];
  swift_unknownObjectRelease();
  v12 = v0[1];

  return v12();
}

uint64_t sub_231C6C62C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_231C6C6E4;
  v3 = *(v0 + 16);

  return sub_231C6EB60(0xD00000000000001FLL, 0x8000000231C8F010, v3, v3);
}

uint64_t sub_231C6C6E4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_231C6C814()
{
  v1 = *(*(v0 + 16) + 128);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_231C6C8AC;

  return ImageGlyphRecencyModel.load()();
}

uint64_t sub_231C6C8AC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_231C6C9E0, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_231C6C9E0()
{
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_231C8BCFC();
  __swift_project_value_buffer(v2, qword_280CFA040);
  MEMORY[0x238379810](v1);
  v3 = sub_231C8BCDC();
  v4 = sub_231C8BFBC();
  MEMORY[0x238379800](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x238379810](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_231C65000, v3, v4, "Could not load recency model from disk: %@", v7, 0xCu);
    sub_231C67FE0(v8, &qword_27DD705E0, &qword_231C8CAA0);
    MEMORY[0x238379930](v8, -1, -1);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379800](v6);
  }

  else
  {

    MEMORY[0x238379800](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

double sub_231C6CB84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231C8BDAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (sub_231C8BD9C())
  {
    v9 = *(a2 + 120);
    (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    sub_231C8BD6C();
  }

  else
  {
    sub_231C6CD08(a1);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_231C6CD08(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v42 = type metadata accessor for RecencyXPCSessionContext(0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70660, &qword_231C8D5D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for RecencyRequest(0);
  v46 = *(v19 - 8);
  v20 = *(v46 + 64);
  MEMORY[0x28223BE20](v19);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v22 = sub_231C8BCFC();
  v45 = __swift_project_value_buffer(v22, qword_280CFA040);
  v23 = sub_231C8BCDC();
  v24 = sub_231C8BFAC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v8;
    v26 = a1;
    v27 = v12;
    v28 = v14;
    v29 = v7;
    v30 = v2;
    v31 = v25;
    *v25 = 0;
    _os_log_impl(&dword_231C65000, v23, v24, "Received an XPC message", v25, 2u);
    v32 = v31;
    v2 = v30;
    v7 = v29;
    v14 = v28;
    v12 = v27;
    a1 = v26;
    v8 = v41;
    MEMORY[0x238379930](v32, -1, -1);
  }

  sub_231C6A4A8(qword_280CFA178, type metadata accessor for RecencyRequest);
  sub_231C8BD8C();
  (*(v46 + 56))(v18, 0, 1, v19);
  v33 = v43;
  sub_231C70308(v18, v43, type metadata accessor for RecencyRequest);
  sub_231C702A0(v33, v14, type metadata accessor for RecencyRequest);
  v34 = *(v42 + 20);
  v35 = sub_231C8BDAC();
  (*(*(v35 - 8) + 16))(&v14[v34], a1, v35);
  v36 = sub_231C8BF8C();
  (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
  sub_231C702A0(v14, v12, type metadata accessor for RecencyXPCSessionContext);
  v37 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v2;
  sub_231C70308(v12, v38 + v37, type metadata accessor for RecencyXPCSessionContext);

  sub_231C6DB7C(0, 0, v7, &unk_231C8D5E0, v38);

  sub_231C700D0(v14, type metadata accessor for RecencyXPCSessionContext);
  return sub_231C700D0(v33, type metadata accessor for RecencyRequest);
}

void sub_231C6D288(uint64_t a1)
{
  v2 = sub_231C8BD5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v7 = sub_231C8BCFC();
  __swift_project_value_buffer(v7, qword_280CFA040);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = sub_231C8BCDC();
  v10 = sub_231C8BFBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_231C6A4A8(&qword_280CFA030, MEMORY[0x277D855E8]);
    swift_allocError();
    v8(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_231C65000, v9, v10, "XPC session was cancelled: %@", v11, 0xCu);
    sub_231C67FE0(v12, &qword_27DD705E0, &qword_231C8CAA0);
    MEMORY[0x238379930](v12, -1, -1);
    MEMORY[0x238379930](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_231C6D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_231C6D52C, 0, 0);
}

uint64_t sub_231C6D52C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_231C707EC;
  v3 = v0[1].i64[0];

  return sub_231C6C0E0(0xD000000000000023, 0x8000000231C8F190, &unk_231C8D600, v1);
}

uint64_t sub_231C6D610(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for RecencyXPCSessionContext(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C6D6A0, 0, 0);
}

uint64_t sub_231C6D6A0()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_231C702A0(v0[2], v1, type metadata accessor for RecencyXPCSessionContext);
  v3 = *(v2 + 128);
  v4 = type metadata accessor for RequestDispatcher(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v0[5] = v7;

  swift_defaultActor_initialize();
  sub_231C70308(v1, v7 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext, type metadata accessor for RecencyXPCSessionContext);
  *(v7 + 112) = v3;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0;

  return MEMORY[0x2822009F8](sub_231C6D78C, v7, 0);
}

uint64_t sub_231C6D78C()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_231C6D7FC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_231C6D7FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  v6 = type metadata accessor for RecencyRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_transaction_create();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext;
    v13 = *(v1 + 112);
    v14 = *(v1 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext);
    if (v14 <= 2)
    {
      if (*(v1 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext))
      {
        if (v14 == 1)
        {
          UsedDateTimeRequestHandler = type metadata accessor for ImageGlyphRecordEngagementRequestHandler();
          v16 = &off_2846E9ED0;
        }

        else
        {
          UsedDateTimeRequestHandler = type metadata accessor for ImageGlyphRecencyRequestHandler();
          v16 = &off_2846E97C0;
        }
      }

      else
      {
        UsedDateTimeRequestHandler = type metadata accessor for ImageGlyphLastUsedDateTimeRequestHandler();
        v16 = &off_2846E9260;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext) > 4u)
    {
      if (v14 == 5)
      {
        UsedDateTimeRequestHandler = type metadata accessor for SaveHandler();
        v16 = &off_2846E9880;
      }

      else
      {
        UsedDateTimeRequestHandler = type metadata accessor for LoadHandler();
        v16 = &off_2846E9EB8;
      }
    }

    else if (v14 == 3)
    {
      UsedDateTimeRequestHandler = type metadata accessor for ResetDatabaseHandler();
      v16 = &off_2846E97D8;
    }

    else
    {
      UsedDateTimeRequestHandler = type metadata accessor for PerformMigrationHandler();
      v16 = &off_2846E9F88;
    }

    sub_231C702A0(v1 + v12, v9, type metadata accessor for RecencyRequest);
    sub_231C67EB0(v1 + 120, v23, &qword_27DD70650, &unk_231C8EE00);
    v17 = v16[1];
    v25[3] = UsedDateTimeRequestHandler;
    v25[4] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);

    v17(v9, v13, v23, boxed_opaque_existential_1);
    v19 = sub_231C8BF8C();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    sub_231C67EB0(v25, v23, &unk_27DD70670, &unk_231C8D610);
    v20 = sub_231C6A4A8(&unk_280CFA148, type metadata accessor for RequestDispatcher);
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v20;
    v22 = v23[1];
    *(v21 + 32) = v23[0];
    *(v21 + 48) = v22;
    *(v21 + 64) = v24;
    *(v21 + 72) = v1;
    *(v21 + 80) = v11;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_231C6DB7C(0, 0, v5, &unk_231C8D620, v21);
    swift_unknownObjectRelease();

    return sub_231C67FE0(v25, &unk_27DD70670, &unk_231C8D610);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C6DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_231C67EB0(a3, v27 - v11, &qword_27DD70658, &qword_231C8D5C8);
  v13 = sub_231C8BF8C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_231C67FE0(v12, &qword_27DD70658, &qword_231C8D5C8);
  }

  else
  {
    sub_231C8BF7C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_231C8BF6C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_231C8BEEC() + 32;
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

      sub_231C67FE0(a3, &qword_27DD70658, &qword_231C8D5C8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231C67FE0(a3, &qword_27DD70658, &qword_231C8D5C8);
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

uint64_t RecencyServiceListener.deinit()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecencyServiceListener.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231C6DF20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C6DFB0;

  return RecencyServiceListener.start()();
}

uint64_t sub_231C6DFB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_231C6E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 456) = a4;
  *(v5 + 464) = a5;
  return MEMORY[0x2822009F8](sub_231C6E0CC, a5, 0);
}

uint64_t sub_231C6E0CC()
{
  sub_231C67EB0(v0[57], (v0 + 52), &unk_27DD70670, &unk_231C8D610);
  v1 = v0[55];
  if (v1)
  {
    v2 = v0[56];
    __swift_project_boxed_opaque_existential_1(v0 + 52, v0[55]);
    v3 = *(v2 + 16);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[59] = v5;
    *v5 = v0;
    v5[1] = sub_231C6E268;

    return (v8)(v0 + 2, v1, v2);
  }

  else
  {
    sub_231C67FE0((v0 + 52), &unk_27DD70670, &unk_231C8D610);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_231C6E268()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);
  if (v0)
  {
    v6 = sub_231C6E4A4;
  }

  else
  {
    v6 = sub_231C6E394;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_231C6E394()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v0 + 48);
  *(v0 + 304) = v1;
  *(v0 + 313) = *(v0 + 73);
  v2 = *(v0 + 32);
  *(v0 + 256) = *(v0 + 16);
  *(v0 + 272) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
  v3 = *(v0 + 264);
  if (v3 != 1)
  {
    v4 = *(v0 + 256);
    v5 = *(v0 + 464) + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext;
    v6 = *(type metadata accessor for RecencyXPCSessionContext(0) + 20);
    *(v0 + 336) = v4;
    *(v0 + 344) = v3;
    v7 = *(v0 + 288);
    *(v0 + 352) = *(v0 + 272);
    *(v0 + 368) = v7;
    *(v0 + 384) = *(v0 + 304);
    *(v0 + 393) = *(v0 + 313);
    sub_231C70798();
    sub_231C8BD7C();
    sub_231C67FE0(v0 + 256, &unk_27DD706F0, &unk_231C8D630);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_231C6E4A4()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
  v3 = *(v2 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext);
  v4 = sub_231C877F4(&unk_2846E9220);
  sub_231C67FE0(&unk_2846E9240, &unk_27DD706E0, &qword_231C8D628);
  *(v0 + 96) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v4;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = -1;
  LODWORD(v2) = *(type metadata accessor for RecencyXPCSessionContext(0) + 20);
  v5 = *(v0 + 112);
  v6 = *(v0 + 144);
  *(v0 + 208) = *(v0 + 128);
  *(v0 + 224) = v6;
  *(v0 + 233) = *(v0 + 153);
  *(v0 + 176) = *(v0 + 96);
  *(v0 + 192) = v5;
  sub_231C70798();
  sub_231C8BD7C();
  MEMORY[0x238379800](v1);
  sub_231C6B1F4(v0 + 96);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_231C6E5E8()
{
  v1 = *(v0 + 112);

  sub_231C67FE0(v0 + 120, &qword_27DD70650, &unk_231C8EE00);
  sub_231C700D0(v0 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext, type metadata accessor for RecencyXPCSessionContext);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_231C6E69C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_231C67D74;

  return sub_231C6BD24(v2, v3, v4);
}

uint64_t sub_231C6E744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xED0000657079546ELL;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C476567616D69 && a2 == 0xEE00657079546870 || (sub_231C8C23C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C476567616D69 && a2 == 0xEA00000000006870 || (sub_231C8C23C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_231C8C23C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_231C6E950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xED0000657079546ELL;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000231C8F120 == a2 || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_231C8C23C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E49656D6974 && a2 == 0xEC0000006C617672 || (sub_231C8C23C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_231C8C23C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_231C6EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231C6EB84, a3, 0);
}

uint64_t sub_231C6EB84()
{
  v12 = v0;
  v2 = v0[2];
  v1 = v0[3];
  sub_231C8C08C();

  v11[0] = 0xD000000000000024;
  v11[1] = 0x8000000231C8F140;
  MEMORY[0x238379150](v2, v1);
  v0[6] = 0xD000000000000024;
  v0[7] = 0x8000000231C8F140;
  sub_231C8BEEC();
  v0[8] = os_transaction_create();

  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v3 = sub_231C8BCFC();
  v0[9] = __swift_project_value_buffer(v3, qword_280CFA040);

  v4 = sub_231C8BCDC();
  v5 = sub_231C8BF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_231C7D5C8(0xD000000000000024, 0x8000000231C8F140, v11);
    _os_log_impl(&dword_231C65000, v4, v5, "Beginning expensive work with scoped os_transaction_t named: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379930](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_231C6EDB8;
  v9 = v0[5];

  return sub_231C6C7F4(v9);
}

uint64_t sub_231C6EDB8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_231C6EEC8, v2, 0);
}

uint64_t sub_231C6EEC8()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];

  v3 = sub_231C8BCDC();
  v4 = sub_231C8BF9C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_231C7D5C8(v7, v6, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_231C65000, v3, v4, "Ending expensive work with scoped os_transaction_t named: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x238379930](v9, -1, -1);
    MEMORY[0x238379930](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[8];
  swift_unknownObjectRelease();
  v12 = v0[1];

  return v12();
}

unint64_t sub_231C6F034()
{
  result = qword_27DD705E8;
  if (!qword_27DD705E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD705E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecencyRequestResponseOperationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecencyRequestResponseOperationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_231C6F208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_231C6F250(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_231C6F2D8()
{
  sub_231C6F3E4();
  if (v0 <= 0x3F)
  {
    sub_231C6F4A0(319, &qword_280CFA6D0);
    if (v1 <= 0x3F)
    {
      sub_231C6F4A0(319, &qword_280CFA8D8);
      if (v2 <= 0x3F)
      {
        sub_231C6F448();
        if (v3 <= 0x3F)
        {
          sub_231C6F4A0(319, &unk_280CFA6D8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_231C6F3E4()
{
  if (!qword_280CFA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD70598, &qword_231C8CA68);
    v0 = sub_231C8C04C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CFA6E8);
    }
  }
}

void sub_231C6F448()
{
  if (!qword_280CFA950)
  {
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(255);
    v0 = sub_231C8C04C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CFA950);
    }
  }
}

void sub_231C6F4A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_231C8C04C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14RecencyService0A13ResponseErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_231C6F524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_231C6F580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231C6F620()
{
  result = type metadata accessor for RecencyRequest(319);
  if (v1 <= 0x3F)
  {
    result = sub_231C8BDAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_231C6F71C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C6F754()
{
  result = type metadata accessor for RecencyXPCSessionContext(319);
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

uint64_t sub_231C6F818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_231C6F8A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecencyResponseError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecencyResponseError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_231C6FACC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_231C6FB1C(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_231C6FBAC()
{
  result = qword_27DD705F8;
  if (!qword_27DD705F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD705F8);
  }

  return result;
}

unint64_t sub_231C6FC04()
{
  result = qword_27DD70600;
  if (!qword_27DD70600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70600);
  }

  return result;
}

unint64_t sub_231C6FC5C()
{
  result = qword_27DD70608;
  if (!qword_27DD70608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70608);
  }

  return result;
}

unint64_t sub_231C6FCB4()
{
  result = qword_27DD70610;
  if (!qword_27DD70610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70610);
  }

  return result;
}

unint64_t sub_231C6FD0C()
{
  result = qword_27DD70618;
  if (!qword_27DD70618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70618);
  }

  return result;
}

unint64_t sub_231C6FD64()
{
  result = qword_280CFA7D0;
  if (!qword_280CFA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA7D0);
  }

  return result;
}

unint64_t sub_231C6FDBC()
{
  result = qword_280CFA7D8;
  if (!qword_280CFA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA7D8);
  }

  return result;
}

unint64_t sub_231C6FE14()
{
  result = qword_280CFA8A0;
  if (!qword_280CFA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8A0);
  }

  return result;
}

unint64_t sub_231C6FE6C()
{
  result = qword_280CFA8A8;
  if (!qword_280CFA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8A8);
  }

  return result;
}

unint64_t sub_231C6FEC4()
{
  result = qword_27DD70620;
  if (!qword_27DD70620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70620);
  }

  return result;
}

unint64_t sub_231C6FF1C()
{
  result = qword_27DD70628;
  if (!qword_27DD70628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70628);
  }

  return result;
}

unint64_t sub_231C6FF74()
{
  result = qword_27DD70630;
  if (!qword_27DD70630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70630);
  }

  return result;
}

unint64_t sub_231C6FFCC()
{
  result = qword_27DD70638;
  if (!qword_27DD70638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70638);
  }

  return result;
}

unint64_t sub_231C70024()
{
  result = qword_27DD70640;
  if (!qword_27DD70640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70640);
  }

  return result;
}

unint64_t sub_231C7007C()
{
  result = qword_27DD70648;
  if (!qword_27DD70648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70648);
  }

  return result;
}

uint64_t sub_231C700D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_231C70130()
{
  result = qword_280CFA8C8;
  if (!qword_280CFA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8C8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_231C7023C()
{
  v1 = *(sub_231C8BDAC() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_231C6CD08(v2);
}

uint64_t sub_231C702A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C70308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C70370(uint64_t a1)
{
  v4 = *(type metadata accessor for RecencyXPCSessionContext(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_231C7080C;

  return sub_231C6D50C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_231C70468(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_231C7080C;

  return sub_231C8B2FC(a1, v5);
}

uint64_t sub_231C70520(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_231C67D74;

  return sub_231C8B2FC(a1, v5);
}

uint64_t sub_231C705D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231C7080C;

  return sub_231C6D610(v2, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_231C706D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_231C7080C;

  return sub_231C6E0AC(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_231C70798()
{
  result = qword_280CFA168;
  if (!qword_280CFA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA168);
  }

  return result;
}

uint64_t sub_231C7083C(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return MEMORY[0x2822009F8](sub_231C7085C, v1, 0);
}

uint64_t sub_231C7085C()
{
  v1 = *(v0 + 264);
  v2 = OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request;
  *(v0 + 272) = OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request;
  v3 = v1 + v2;
  *(v0 + 280) = *(v3 + 16);
  *(v0 + 89) = *(v3 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_recencyModel);
  *(v0 + 288) = v4;
  *(v0 + 176) = *(v3 + 25);
  return MEMORY[0x2822009F8](sub_231C708B0, v4, 0);
}

uint64_t sub_231C708B0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  if (*(v0 + 89))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 280);
  }

  *(v0 + 296) = ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)((v0 + 176), v3);

  return MEMORY[0x2822009F8](sub_231C70930, v2, 0);
}

uint64_t sub_231C70930()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(*(v0 + 264) + *(v0 + 272));
  v4 = sub_231C877F4(MEMORY[0x277D84F90]);
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = v1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = -1;
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  v7 = *(v0 + 153);
  v2[1] = *(v0 + 112);
  v2[2] = v6;
  *(v2 + 57) = v7;
  v2[3] = v5;
  *v2 = *(v0 + 96);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = -1;
  sub_231C6B1BC(v0 + 96, v0 + 176);
  sub_231C6B1F4(v0 + 16);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_231C70A3C()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_recencyModel);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ImageGlyphRecencyRequestHandler()
{
  result = qword_280CFA5B0;
  if (!qword_280CFA5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C70AF0()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C70BA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v11 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request);
  *(v11 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C70C38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C7083C(a1);
}

uint64_t sub_231C70CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecencyRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C70D38(uint64_t a1)
{
  v2 = type metadata accessor for RecencyRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231C70D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70650, &unk_231C8EE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231C70DFC()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_request);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_recencyModel);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ResetDatabaseHandler()
{
  result = qword_27DD70760;
  if (!qword_27DD70760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C70EB0()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C70F64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v11 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_request);
  *(v11 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C70FF8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_231C71018, v3, 0);
}

uint64_t sub_231C71018()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_recencyModel);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_231C71044, v1, 0);
}

uint64_t sub_231C71044()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ImageGlyphRecencyModel.reset(shouldPopulateDefaultData:shouldPurgeMigrationRecords:)(1, 0);

  return MEMORY[0x2822009F8](sub_231C710B4, v1, 0);
}

uint64_t sub_231C710B4()
{
  v1 = *(v0 + 16);
  *v1 = xmmword_231C8C920;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;
  return (*(v0 + 8))();
}

uint64_t ImageGlyphValidator.ImageGlyphValidatorError.hashValue.getter()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t sub_231C71178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageGlyphValidator.validate()()
{
  v1[2] = v0;
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C71270, 0, 0);
}

uint64_t sub_231C71270()
{
  v1 = v0[3];
  sub_231C71734(v0[2], v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[4];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_231C717EC(v0[4]);
    }

    else
    {
      v10 = *v3;
      v11 = v3[1];
      if (v10 == 58 && v11 == 0xE100000000000000)
      {
      }

      else
      {
        v13 = sub_231C8C23C();

        if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_231C71798();
      swift_allocError();
      *v14 = 2;
      swift_willThrow();
    }

LABEL_18:
    v15 = v0[4];

    v16 = v0[1];

    return v16();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_231C71798();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_231C717EC(v3);
    goto LABEL_18;
  }

  v5 = *v3;
  v6 = v3[1];
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_231C71458;
  v8 = v0[2];

  return sub_231C71644(v5, v6);
}

uint64_t sub_231C71458()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_231C715D8;
  }

  else
  {
    v3 = sub_231C7156C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_231C7156C()
{
  v1 = v0[5];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_231C715D8()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_231C71644(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_231C71664, 0, 0);
}

uint64_t sub_231C71664()
{
  v1 = v0[3];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2 && (v3 = sub_231C8BE9C(), IsSingleEmoji = CEMStringIsSingleEmoji(), v3, IsSingleEmoji))
  {
    v5 = v0[1];
  }

  else
  {
    sub_231C71798();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_231C71734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_231C71798()
{
  result = qword_27DD70770;
  if (!qword_27DD70770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70770);
  }

  return result;
}

uint64_t sub_231C717EC(uint64_t a1)
{
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231C7184C()
{
  result = qword_27DD70778;
  if (!qword_27DD70778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageGlyphValidator.ImageGlyphValidatorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImageGlyphValidator.ImageGlyphValidatorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for ImageGlyphValidator()
{
  result = qword_27DD70780;
  if (!qword_27DD70780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C71A64()
{
  result = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231C71AD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_231C8BBFC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_231C8BC2C();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C71C24, v1, 0);
}

uint64_t sub_231C71C24()
{
  v1 = v0[3];
  v2 = v1 + OBJC_IVAR____TtC14RecencyService11SaveHandler_request;
  v3 = (v2 + *(type metadata accessor for RecencyRequest(0) + 36));
  if (v3[1])
  {
    v4 = v0[9];
    v5 = v0[10];
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = *v3;
    v0[11] = *(v1 + OBJC_IVAR____TtC14RecencyService11SaveHandler_recencyModel);
    (*(v4 + 56))(v7, 1, 1, v6);
    (*(v9 + 104))(v8, *MEMORY[0x277CC91D8], v10);

    sub_231C8BC1C();
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_231C71DEC;

    return sub_231C7C5F0();
  }

  else
  {
    v14 = v0[10];
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[2];
    *v17 = xmmword_231C8C920;
    v17[1] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    *(v17 + 57) = 0u;

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_231C71DEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v6[16] = v2;
    v9 = v6[3];
    (*(v6[9] + 8))(v6[10], v6[8]);
    v10 = sub_231C720C0;
    v11 = v9;
  }

  else
  {
    v11 = v6[11];
    v6[14] = a2;
    v6[15] = a1;
    v10 = sub_231C71F4C;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_231C71F4C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_231C8BC4C();
  sub_231C723D0(v2, v1);
  if (v3)
  {
    v0[16] = v3;
    v5 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v6 = sub_231C720C0;
  }

  else
  {
    v5 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v6 = sub_231C7202C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_231C7202C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  *v4 = xmmword_231C8C920;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *(v4 + 57) = 0u;

  v5 = v0[1];

  return v5();
}

uint64_t sub_231C720C0()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_231C72138()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService11SaveHandler_request);
  v1 = *(v0 + OBJC_IVAR____TtC14RecencyService11SaveHandler_recencyModel);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService11SaveHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SaveHandler()
{
  result = qword_27DD70790;
  if (!qword_27DD70790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C721EC()
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C722A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v11 + OBJC_IVAR____TtC14RecencyService11SaveHandler_request);
  *(v11 + OBJC_IVAR____TtC14RecencyService11SaveHandler_recencyModel) = a2;
  v12 = v11 + OBJC_IVAR____TtC14RecencyService11SaveHandler_modelMigrator;
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a3 + 32);
  *a4 = v11;
  return result;
}

uint64_t sub_231C72334(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C71AD0(a1);
}

uint64_t sub_231C723D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_231C72458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v15 - v3);
  result = [objc_opt_self() _emojiSetForIdentifier_];
  if (result)
  {
    v6 = result;
    v7 = sub_231C8BF4C();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (v7 + 16 * v8 + 24);
      v11 = MEMORY[0x277D84F90];
      while (v8 <= *(v7 + 16))
      {
        v12 = *v10;
        *v4 = *(v10 - 1);
        v4[1] = v12;
        type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
        swift_storeEnumTagMultiPayload();
        *(v4 + *(v0 + 48)) = (v9 + 1.0 + v9 + 1.0) / 100.0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_231C7D2DC(0, v11[2] + 1, 1, v11);
        }

        v14 = v11[2];
        v13 = v11[3];
        if (v14 >= v13 >> 1)
        {
          v11 = sub_231C7D2DC(v13 > 1, v14 + 1, 1, v11);
        }

        --v8;
        v11[2] = v14 + 1;
        sub_231C7268C(v4, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14);
        v10 -= 2;
        ++v9;
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    v11 = MEMORY[0x277D84F90];
LABEL_13:

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C7268C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageGlyphRecencyModel.lastEngagement(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_231C8BCCC();
  v14 = *(v43 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v43);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  sub_231C859F8(a1, v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v13[*(v10 + 28)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v13 = EnumCaseMultiPayload;
  swift_beginAccess();
  v22 = *(v3 + 144);
  if (*(v22 + 16) && (v23 = sub_231C7DC08(v13), (v24 & 1) != 0))
  {
    v25 = v14;
    v26 = *(v22 + 56) + v14[9] * v23;
    v27 = v14[2];
    v28 = v43;
    v27(v18, v26, v43);
    (v25[4])(v20, v18, v28);
    swift_endAccess();
    sub_231C7DC8C(v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    swift_beginAccess();
    v29 = *(v3 + 128);
    if (*(v29 + 16) && (v30 = sub_231C7DB70(v20), (v31 & 1) != 0))
    {
      v32 = v30;
      v33 = *(v29 + 56);
      v34 = sub_231C8BC9C();
      v35 = *(v34 - 8);
      v36 = v35;
      v37 = v33 + *(v35 + 72) * v32;
      v38 = v44;
      (*(v35 + 16))(v44, v37, v34);
      (*(v36 + 56))(v38, 0, 1, v34);
    }

    else
    {
      v41 = sub_231C8BC9C();
      (*(*(v41 - 8) + 56))(v44, 1, 1, v41);
    }

    swift_endAccess();
    return (v25[1])(v20, v28);
  }

  else
  {
    swift_endAccess();
    sub_231C7DC8C(v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v39 = sub_231C8BC9C();
    return (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
  }
}

uint64_t ImageGlyphRecencyModel.__allocating_init(shouldDecayFrequencies:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImageGlyphRecencyModel.init(shouldDecayFrequencies:)(a1);
  return v5;
}

uint64_t sub_231C72B94(uint64_t a1, char a2)
{
  *(v3 + 408) = a2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v2;
  v4 = *(*(_s14AutoSerializerVMa() - 8) + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980) - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C72C60, v2, 0);
}

uint64_t sub_231C72C60()
{
  v44 = v0;
  v1 = *(v0 + 352);
  v2 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *(v0 + 376) = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  v3 = v1 + v2;
  if (*(v3 + 8) & 1) != 0 || (v17 = *(v0 + 408), v18 = *(v0 + 344), v19 = *v3, v20 = v18[3], v21 = v18[4], __swift_project_boxed_opaque_existential_1(v18, v20), (*(v21 + 8))(v20, v21) > v19) || (v17)
  {
    if (qword_280CFA058 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 344);
    v5 = sub_231C8BCFC();
    *(v0 + 384) = __swift_project_value_buffer(v5, qword_280CFA060);
    sub_231C87A70(v4, v0 + 16);
    sub_231C87A70(v4, v0 + 56);
    v6 = sub_231C8BCDC();
    v7 = sub_231C8BFCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v43 = v9;
      *v8 = 136315394;
      sub_231C87A70(v0 + 16, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70958, &qword_231C8EA10);
      v10 = sub_231C8BEDC();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v13 = sub_231C7D5C8(v10, v12, &v43);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v14);
      v16 = (*(v15 + 8))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      *(v8 + 14) = v16;
      _os_log_impl(&dword_231C65000, v6, v7, "Migrating recents database using: '%s' (version: '%f'", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x238379930](v9, -1, -1);
      MEMORY[0x238379930](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    swift_beginAccess();
    *(v30 + 112) = 0;
    v32 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v34 = *(v33 + 24);
    v42 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 392) = v36;
    *v36 = v0;
    v36[1] = sub_231C73168;
    v37 = *(v0 + 352);

    return v42(v37, v32, v33);
  }

  else
  {
    if (qword_280CFA058 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 344);
    v23 = sub_231C8BCFC();
    __swift_project_value_buffer(v23, qword_280CFA060);
    sub_231C87A70(v22, v0 + 256);
    v24 = sub_231C8BCDC();
    v25 = sub_231C8BFCC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v19;
      *(v26 + 12) = 2048;
      v27 = *(v0 + 280);
      v28 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v27);
      v29 = (*(v28 + 8))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
      *(v26 + 14) = v29;
      _os_log_impl(&dword_231C65000, v24, v25, "Skipping recency migration; data was migrated with migrator %f and injected migrator declares version %f", v26, 0x16u);
      MEMORY[0x238379930](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    }

    v40 = *(v0 + 360);
    v39 = *(v0 + 368);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_231C73168()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 352);
  if (v0)
  {
    v6 = sub_231C735A4;
  }

  else
  {
    v6 = sub_231C73294;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_231C73294()
{
  v28 = v0;
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v4 + v0[47];
  sub_231C8BC8C();
  v6 = sub_231C8BC9C();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  v7 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C87F88(v2, v4 + v7, &qword_27DD70528, &qword_231C8D980);
  swift_endAccess();
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  *v5 = (*(v9 + 8))(v8, v9);
  *(v5 + 8) = 0;
  sub_231C87A70(v3, (v0 + 12));
  sub_231C87A70(v3, (v0 + 17));
  v10 = sub_231C8BCDC();
  v11 = sub_231C8BFCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    sub_231C87A70((v0 + 12), (v0 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70958, &qword_231C8EA10);
    v14 = sub_231C8BEDC();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v17 = sub_231C7D5C8(v14, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = v0[20];
    v19 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v18);
    v20 = (*(v19 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    *(v12 + 14) = v20;
    _os_log_impl(&dword_231C65000, v10, v11, "Migration complete: '%s' (version: '%f'", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x238379930](v13, -1, -1);
    MEMORY[0x238379930](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  }

  v22 = v0[44];
  v21 = v0[45];
  sub_231C77BB4(v21);
  sub_231C8A3BC();
  sub_231C7DC8C(v21, _s14AutoSerializerVMa);
  *(v22 + 112) = 1;
  v24 = v0[45];
  v23 = v0[46];

  v25 = v0[1];

  return v25();
}

uint64_t sub_231C735A4()
{
  v2 = v0[45];
  v1 = v0[46];
  *(v0[44] + 112) = 1;

  v3 = v0[1];
  v4 = v0[50];

  return v3();
}

uint64_t ImageGlyphRecencyModel.load()()
{
  v1[17] = v0;
  v1[18] = *v0;
  v2 = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_231C8BBFC();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v8 = sub_231C8BC2C();
  v1[25] = v8;
  v9 = *(v8 - 8);
  v1[26] = v9;
  v10 = *(v9 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C737D4, v0, 0);
}

uint64_t sub_231C737D4()
{
  sub_231C7BCCC(v0[27]);
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[21];
  (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC91D0], v0[22]);
  (*(v4 + 16))(v5, v1, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_231C8BC1C();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v7 = sub_231C8BC3C();
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[19];
  v39 = v0[20];
  v11 = v7;
  v13 = v12;
  v14 = sub_231C8BB8C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_231C8BB7C();
  sub_231C85D00(&qword_280CFA668, type metadata accessor for ImageGlyphRecencyCodableData);
  sub_231C8BB6C();
  v6(v8, v9);
  sub_231C723D0(v11, v13);

  v18 = v0[27];
  v19 = v0[28];
  v20 = v0[24];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[19];
  v24 = v0[17];
  v25 = v22[1];
  swift_beginAccess();
  v26 = v24[15];
  v24[15] = v25;

  v27 = v22[2];
  swift_beginAccess();
  v28 = v24[16];
  v24[16] = v27;

  v29 = v22[3];
  swift_beginAccess();
  v30 = v24[17];
  v24[17] = v29;

  v31 = v22[4];
  swift_beginAccess();
  v32 = v24[18];
  v24[18] = v31;

  v33 = *(v23 + 36);
  v34 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C7DD0C(v22 + v33, v24 + v34);
  swift_endAccess();
  v35 = v22 + *(v23 + 40);
  v36 = *v35;
  LOBYTE(v34) = v35[8];
  sub_231C7DC8C(v22, type metadata accessor for ImageGlyphRecencyCodableData);
  v37 = v24 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v37 = v36;
  v37[8] = v34;

  v38 = v0[1];

  return v38();
}

void *ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v63 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v67 = *(v63 - 8);
  v6 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v63);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v62 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v66 = *(v16 - 8);
  v17 = *(v66 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_231C8BCCC();
  v20 = *(v65 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v65);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a1;
  swift_beginAccess();
  v24 = *(v3 + 120);
  v25 = *(v24 + 16);
  v64 = v3;
  v69 = v20;
  if (v25)
  {
    v26 = sub_231C7D4CC(v25, 0);
    v27 = sub_231C82910(v77, &v26[(*(v20 + 80) + 32) & ~*(v20 + 80)], v25, v24);
    v75 = v77[2];
    v76 = v77[1];
    v73 = v77[4];
    v74 = v77[3];

    sub_231C82BB4();
    if (v27 != v25)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v3 = v64;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v77[0] = v26;

  sub_231C858A8(v77, v3);

  v28 = v77[0][2];
  if (!v28)
  {

    v76 = MEMORY[0x277D84F90];
    if (a2 >= 1)
    {
      goto LABEL_40;
    }

    return v76;
  }

  v60 = a2;
  v75 = *(v69 + 16);
  v29 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v59 = v77[0];
  v30 = v77[0] + v29;
  v31 = *(v69 + 72);
  v32 = v65;
  v73 = (v66 + 56);
  v74 = v31;
  v71 = (v69 + 8);
  v72 = (v66 + 48);
  v76 = MEMORY[0x277D84F90];
  v69 += 16;
  v75(v23, v77[0] + v29, v65);
  while (1)
  {
    swift_beginAccess();
    v33 = *(v3 + 136);
    if (*(v33 + 16) && (v34 = sub_231C7DB70(v23), (v35 & 1) != 0))
    {
      sub_231C859F8(*(v33 + 56) + *(v66 + 72) * v34, v15, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    (*v73)(v15, v36, 1, v16);
    swift_endAccess();
    if ((*v72)(v15, 1, v16) == 1)
    {
      (*v71)(v23, v32);
      sub_231C67FE0(v15, &qword_27DD707B0, &qword_231C8D988);
      goto LABEL_8;
    }

    sub_231C85990(v15, v19, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v37 = *(v16 + 20);
    if (v70 == 4)
    {
      sub_231C859F8(&v19[v37], v68, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_231C7D104(0, v76[2] + 1, 1, v76);
      }

      v39 = v76[2];
      v38 = v76[3];
      if (v39 >= v38 >> 1)
      {
        v76 = sub_231C7D104(v38 > 1, v39 + 1, 1, v76);
      }

      sub_231C7DC8C(v19, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      (*v71)(v23, v32);
      v40 = v76;
      v76[2] = v39 + 1;
      v41 = v68;
      v42 = v40 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v39;
    }

    else
    {
      v43 = v19;
      v44 = v16;
      v45 = v43;
      v46 = v62;
      sub_231C859F8(&v43[v37], v62, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_231C7DC8C(v46, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if (EnumCaseMultiPayload > 1)
      {
        v3 = v64;
        if (EnumCaseMultiPayload == 2)
        {
          v16 = v44;
          if (v70 != 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v16 = v44;
          if (v70 != 3)
          {
LABEL_24:
            v19 = v45;
            sub_231C7DC8C(v45, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
            v32 = v65;
            (*v71)(v23, v65);
            goto LABEL_8;
          }
        }
      }

      else
      {
        v3 = v64;
        if (EnumCaseMultiPayload)
        {
          v16 = v44;
          if (v70 != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v16 = v44;
          if (v70)
          {
            goto LABEL_24;
          }
        }
      }

      v19 = v45;
      sub_231C859F8(v45 + v37, v61, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_231C7D104(0, v76[2] + 1, 1, v76);
      }

      v32 = v65;
      v49 = v76[2];
      v48 = v76[3];
      if (v49 >= v48 >> 1)
      {
        v76 = sub_231C7D104(v48 > 1, v49 + 1, 1, v76);
      }

      sub_231C7DC8C(v19, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      (*v71)(v23, v32);
      v50 = v76;
      v76[2] = v49 + 1;
      v42 = v50 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v49;
      v41 = v61;
    }

    sub_231C85990(v41, v42, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
LABEL_8:
    v30 = v74 + v30;
    if (!--v28)
    {
      break;
    }

    v75(v23, v30, v32);
  }

  a2 = v60;
  if (v60 < 1)
  {
    return v76;
  }

LABEL_40:
  a2 = sub_231C77B20(a2, v76);
  if ((v53 & 1) == 0)
  {
LABEL_41:
    sub_231C7E210(a2, v51, v52, v53);
    v76 = v54;
    goto LABEL_48;
  }

  v27 = v53;
  v16 = v52;
  v25 = v51;
  sub_231C8C24C();
  swift_unknownObjectRetain_n();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);

  if (__OFSUB__(v27 >> 1, v16))
  {
    goto LABEL_51;
  }

  if (v56 != (v27 >> 1) - v16)
  {
LABEL_52:
    swift_unknownObjectRelease();
    v53 = v27;
    v52 = v16;
    v51 = v25;
    goto LABEL_41;
  }

  v57 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v76 = v57;
  if (!v57)
  {
    v76 = MEMORY[0x277D84F90];
LABEL_48:
    swift_unknownObjectRelease();
  }

  return v76;
}

Swift::Void __swiftcall ImageGlyphRecencyModel.reset(shouldPopulateDefaultData:shouldPurgeMigrationRecords:)(Swift::Bool shouldPopulateDefaultData, Swift::Bool shouldPurgeMigrationRecords)
{
  v5 = _s14AutoSerializerVMa();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  swift_beginAccess();
  v13 = v2[15];
  v14 = MEMORY[0x277D84F98];
  v2[15] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v15 = v2[16];
  v2[16] = v14;

  swift_beginAccess();
  v16 = v2[17];
  v2[17] = v14;

  swift_beginAccess();
  v17 = v2[18];
  v2[18] = v14;

  if (shouldPurgeMigrationRecords)
  {
    v18 = sub_231C8BC9C();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
    swift_beginAccess();
    sub_231C87F88(v12, v2 + v19, &qword_27DD70528, &qword_231C8D980);
    swift_endAccess();
    v20 = v2 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
    *v20 = 0;
    v20[8] = 1;
  }

  if (shouldPopulateDefaultData)
  {
    sub_231C74BD8();
  }

  sub_231C77BB4(v8);
  sub_231C8A3BC();
  sub_231C7DC8C(v8, _s14AutoSerializerVMa);
}

uint64_t ImageGlyphRecencyModel.save(to:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_231C7477C;

  return sub_231C7C5F0();
}

uint64_t sub_231C7477C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v11 = v6[3];
    v6[6] = a2;
    v6[7] = a1;

    return MEMORY[0x2822009F8](sub_231C748DC, v11, 0);
  }
}

uint64_t sub_231C748DC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  sub_231C8BC4C();
  sub_231C723D0(v2, v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_231C74974()
{
  v0 = sub_231C8BCFC();
  __swift_allocate_value_buffer(v0, qword_280CFA060);
  __swift_project_value_buffer(v0, qword_280CFA060);
  return sub_231C8BCEC();
}

uint64_t ImageGlyphRecencyModel.shouldDecayFrequencies.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t ImageGlyphRecencyModel.init(shouldDecayFrequencies:)(char a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = sub_231C830A8(MEMORY[0x277D84F90]);
  *(v1 + 128) = sub_231C83290(v3);
  *(v1 + 136) = sub_231C834B0(v3);
  *(v1 + 144) = sub_231C836CC(v3);
  v4 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  v5 = sub_231C8BC9C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer;
  v8 = _s14AutoSerializerVMa();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_231C74BD8()
{
  v1 = v0;
  v2 = _s14AutoSerializerVMa();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_231C8BC9C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709F0, &unk_231C8EA70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  swift_beginAccess();
  *(v1 + 112) = 0;
  result = sub_231C72458();
  v21 = 0;
  v34 = result;
  v22 = *(result + 16);
  v31 = v22;
  v32 = (v5 + 8);
  if (v22)
  {
    goto LABEL_3;
  }

LABEL_2:
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v21 = v22;
  while (1)
  {
    sub_231C87F18(v17, v19);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
    {

      v29 = v30;
      sub_231C77BB4(v30);
      sub_231C8A3BC();
      result = sub_231C7DC8C(v29, _s14AutoSerializerVMa);
      *(v1 + 112) = 1;
      return result;
    }

    v28 = *&v19[*(v27 + 48)];
    sub_231C85990(v19, v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8BC8C();
    ImageGlyphRecencyModel.recordEngagement(for:_:)(v12, v8);
    (*v32)(v8, v33);
    ImageGlyphRecencyModel.set(frequency:for:)(v12, v28);
    result = sub_231C7DC8C(v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    if (v21 == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v34 + 16))
    {
      goto LABEL_11;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
    v25 = v1;
    v26 = *(v24 - 8);
    sub_231C67EB0(v34 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21++, v17, &qword_27DD707A8, "B(");
    (*(v26 + 56))(v17, 0, 1, v24);
    v1 = v25;
    v22 = v31;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t ImageGlyphRecencyModel.recordEngagement(for:_:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = _s14AutoSerializerVMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v60 - v11;
  v12 = sub_231C8BCCC();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v64 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v60 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v60 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v28 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231C859F8(a1, v31, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v31, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v36[*(v32 + 20)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v36 = EnumCaseMultiPayload;
  sub_231C757BC(v36, 1, v27);
  sub_231C67EB0(v27, v25, &qword_27DD707B8, &qword_231C8D9A0);
  v38 = v69;
  v39 = *(v69 + 48);
  v71 = v69 + 48;
  v72 = v39;
  result = v39(v25, 1, v12);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v41 = v70;
  v61 = *(v38 + 16);
  v61(v70, v25, v12);
  v60 = v36;
  v42 = v36;
  v43 = v68;
  sub_231C859F8(v42, v68, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  (*(v33 + 56))(v43, 0, 1, v32);
  swift_beginAccess();
  sub_231C776C0(v43, v41);
  swift_endAccess();
  v44 = *(v38 + 8);
  v44(v25, v12);
  v45 = v67;
  sub_231C67EB0(v27, v67, &qword_27DD707B8, &qword_231C8D9A0);
  result = v72(v45, 1, v12);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v46 = v27;
  sub_231C75B08(v45, 1.0);
  v44(v45, v12);
  v47 = v66;
  sub_231C67EB0(v27, v66, &qword_27DD707B8, &qword_231C8D9A0);
  result = v72(v47, 1, v12);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v70;
  v61(v70, v47, v12);
  v49 = sub_231C8BC9C();
  v50 = *(v49 - 8);
  v51 = v62;
  (*(v50 + 16))(v62, v63, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  v52 = v73;
  swift_beginAccess();
  sub_231C778E0(v51, v48);
  swift_endAccess();
  v44(v47, v12);
  sub_231C75CEC(v46);
  v53 = v65;
  sub_231C77BB4(v65);
  sub_231C8A3BC();
  sub_231C7DC8C(v53, _s14AutoSerializerVMa);
  v54 = v64;
  sub_231C67EB0(v46, v64, &qword_27DD707B8, &qword_231C8D9A0);
  result = v72(v54, 1, v12);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v55 = *(v52 + 120);
  if (*(v55 + 16))
  {
    v56 = sub_231C7DB70(v54);
    v57 = v60;
    if (v58)
    {
      v59 = *(*(v55 + 56) + 8 * v56);
    }
  }

  else
  {
    v57 = v60;
  }

  swift_endAccess();
  sub_231C67FE0(v46, &qword_27DD707B8, &qword_231C8D9A0);
  sub_231C7DC8C(v57, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  return (v44)(v54, v12);
}

uint64_t sub_231C757BC@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32[-v7];
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_231C8BCCC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v32[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v32[-v22];
  swift_beginAccess();
  v24 = *(v3 + 144);
  if (*(v24 + 16) && (v25 = sub_231C7DC08(a1), (v26 & 1) != 0))
  {
    (*(v14 + 16))(v21, *(v24 + 56) + *(v14 + 72) * v25, v13);
    v27 = *(v14 + 32);
    v27(v23, v21, v13);
    swift_endAccess();
    v28 = v34;
    v27(v34, v23, v13);
    return (*(v14 + 56))(v28, 0, 1, v13);
  }

  else
  {
    swift_endAccess();
    if (v33)
    {
      sub_231C8BCBC();
      sub_231C859F8(a1, v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      (*(v14 + 16))(v8, v18, v13);
      v30 = *(v14 + 56);
      v30(v8, 0, 1, v13);
      swift_beginAccess();
      sub_231C774CC(v8, v12);
      swift_endAccess();
      v31 = v34;
      (*(v14 + 32))(v34, v18, v13);
      return (v30)(v31, 0, 1, v13);
    }

    else
    {
      return (*(v14 + 56))(v34, 1, 1, v13);
    }
  }
}

uint64_t sub_231C75B08(uint64_t a1, double a2)
{
  v4 = v2;
  v7 = sub_231C8BCCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + 120);
  v23 = v14;
  *(v4 + 120) = 0x8000000000000000;
  v16 = sub_231C7DB70(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 120) = v14;
      if (v15)
      {
LABEL_9:
        *(v14[7] + 8 * v16) = *(v14[7] + 8 * v16) + a2;
        return swift_endAccess();
      }

LABEL_8:
      (*(v8 + 16))(v11, a1, v7);
      sub_231C810C8(v16, v11, v14, 0.0);
      goto LABEL_9;
    }

LABEL_11:
    sub_231C818D0();
    v14 = v23;
    *(v4 + 120) = v23;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_231C7F3BC(v19, isUniquelyReferenced_nonNull_native);
  v14 = v23;
  v20 = sub_231C7DB70(a1);
  if ((v3 & 1) == (v21 & 1))
  {
    v16 = v20;
    *(v4 + 120) = v14;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_231C8C25C();
  __break(1u);
  return result;
}

uint64_t sub_231C75CEC(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v80 - v5;
  v7 = sub_231C8BC9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v84 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v80 - v15;
  v105 = sub_231C8BCCC();
  v17 = *(v105 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v105);
  v85 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v101 = &v80 - v24;
  result = swift_beginAccess();
  if (*(v2 + 112) != 1)
  {
    return result;
  }

  swift_beginAccess();
  v26 = *(v2 + 120);
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v103 = v17 + 16;
  v96 = v17 + 32;
  v95 = v17 + 48;
  v97 = v17;
  v104 = (v17 + 8);
  v87 = (v8 + 56);
  v80 = v8 + 16;
  v86 = (v8 + 48);
  v83 = (v8 + 32);
  v81 = v8;
  v82 = (v8 + 8);
  v100 = v26;

  v32 = 0;
  v89 = v6;
  v88 = v7;
  v92 = v16;
  v106 = v23;
  v91 = v31;
  v94 = v27;
  v93 = v2;
  while (v30)
  {
    v34 = v105;
LABEL_14:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = *(v100 + 48);
    v38 = v97;
    v98 = *(v97 + 72);
    v39 = v101;
    v99 = *(v97 + 16);
    v99(v101, v37 + v98 * (v36 | (v32 << 6)), v34);
    v40 = *(v38 + 32);
    v40(v106, v39, v34);
    sub_231C67EB0(v102, v16, &qword_27DD707B8, &qword_231C8D9A0);
    if ((*(v38 + 48))(v16, 1, v34) == 1)
    {
      sub_231C67FE0(v16, &qword_27DD707B8, &qword_231C8D9A0);
      v41 = v93;
      v27 = v94;
LABEL_18:
      swift_beginAccess();
      v46 = *(v41 + 128);
      v47 = v88;
      v48 = v89;
      if (*(v46 + 16))
      {
        v49 = v106;
        v50 = sub_231C7DB70(v106);
        if (v51)
        {
          (*(v81 + 16))(v48, *(v46 + 56) + *(v81 + 72) * v50, v47);
          v52 = 0;
        }

        else
        {
          v52 = 1;
        }
      }

      else
      {
        v52 = 1;
        v49 = v106;
      }

      (*v87)(v48, v52, 1, v47);
      swift_endAccess();
      if ((*v86)(v48, 1, v47) == 1)
      {
        sub_231C67FE0(v48, &qword_27DD70528, &qword_231C8D980);
        v53 = 0.0;
      }

      else
      {
        (*v83)(v90, v48, v47);
        swift_beginAccess();
        v54 = *(v41 + 120);
        v55 = 0.0;
        if (*(v54 + 16))
        {
          v56 = sub_231C7DB70(v49);
          if (v57)
          {
            v55 = *(*(v54 + 56) + 8 * v56);
          }
        }

        swift_endAccess();
        v58 = v84;
        sub_231C8BC8C();
        v59 = v90;
        sub_231C8BC5C();
        v61 = v60;
        v62 = *v82;
        (*v82)(v58, v47);
        v63 = exp((v61 + 5.0) * -0.002);
        v62(v59, v47);
        v53 = fmax(v55 * v63, 1.0);
      }

      swift_beginAccess();
      v64 = *(v41 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = *(v41 + 120);
      v66 = v107;
      *(v41 + 120) = 0x8000000000000000;
      v68 = sub_231C7DB70(v106);
      v69 = v66[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_42;
      }

      v72 = v67;
      if (v66[3] >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_231C818D0();
        }

        v73 = v106;
        v76 = v107;
        if ((v72 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_231C7F3BC(v71, isUniquelyReferenced_nonNull_native);
        v73 = v106;
        v74 = sub_231C7DB70(v106);
        if ((v72 & 1) != (v75 & 1))
        {
          goto LABEL_44;
        }

        v68 = v74;
        v76 = v107;
        if ((v72 & 1) == 0)
        {
LABEL_37:
          v76[(v68 >> 6) + 8] |= 1 << v68;
          v99((v76[6] + v68 * v98), v73, v105);
          *(v76[7] + 8 * v68) = v53;
          v77 = v76[2];
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
          if (v78)
          {
            goto LABEL_43;
          }

          v76[2] = v79;
          goto LABEL_6;
        }
      }

      *(v76[7] + 8 * v68) = v53;
LABEL_6:
      v33 = *(v41 + 120);
      *(v41 + 120) = v76;

      swift_endAccess();
      (*v104)(v73, v105);
      goto LABEL_7;
    }

    v42 = v85;
    v43 = v105;
    v40(v85, v16, v105);
    v44 = sub_231C8BCAC();
    v45 = *v104;
    (*v104)(v42, v43);
    v41 = v93;
    v27 = v94;
    if ((v44 & 1) == 0)
    {
      goto LABEL_18;
    }

    v45(v106, v105);
LABEL_7:
    v16 = v92;
    v31 = v91;
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
    }

    v30 = *(v27 + 8 * v35);
    ++v32;
    if (v30)
    {
      v34 = v105;
      v32 = v35;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_231C8C25C();
  __break(1u);
  return result;
}

double ImageGlyphRecencyModel.frequency(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = 0.0;
  if (*(v3 + 16))
  {
    v5 = sub_231C7DB70(a1);
    if (v6)
    {
      v4 = *(*(v3 + 56) + 8 * v5);
    }
  }

  swift_endAccess();
  return v4;
}

uint64_t ImageGlyphRecencyModel.removeEngagementHistory(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = _s14AutoSerializerVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_231C8BCCC();
  v16 = *(v31 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v31);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  sub_231C859F8(a1, v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v15[*(v12 + 28)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v15 = EnumCaseMultiPayload;
  swift_beginAccess();
  v24 = *(v2 + 144);
  if (*(v24 + 16) && (v25 = sub_231C7DC08(v15), (v26 & 1) != 0))
  {
    v27 = v31;
    (*(v16 + 16))(v20, *(v24 + 56) + *(v16 + 72) * v25, v31);
    (*(v16 + 32))(v22, v20, v27);
    swift_endAccess();
    sub_231C7DC8C(v15, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C76958(v22);
    sub_231C76A38(v22);
    v28 = v32;
    sub_231C77BB4(v32);
    sub_231C8A3BC();
    sub_231C7DC8C(v28, _s14AutoSerializerVMa);
    return (*(v16 + 8))(v22, v27);
  }

  else
  {
    swift_endAccess();
    return sub_231C7DC8C(v15, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  }
}

uint64_t sub_231C76958(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 120);
  v5 = sub_231C7DB70(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C818D0();
    }

    v11 = *(v10 + 48);
    v12 = sub_231C8BCCC();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    sub_231C8045C(v7, v10);
    *(v2 + 120) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_231C76A38(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  swift_beginAccess();
  v8 = *(v1 + 128);
  v9 = sub_231C7DB70(a1);
  if (v10)
  {
    v11 = v9;
    v12 = *(v2 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + 128);
    v23 = v14;
    *(v2 + 128) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C81B44();
      v14 = v23;
    }

    v15 = *(v14 + 48);
    v16 = sub_231C8BCCC();
    (*(*(v16 - 8) + 8))(v15 + *(*(v16 - 8) + 72) * v11, v16);
    v17 = *(v14 + 56);
    v18 = sub_231C8BC9C();
    v19 = *(v18 - 8);
    (*(v19 + 32))(v7, v17 + *(v19 + 72) * v11, v18);
    sub_231C8010C(v11, v14, MEMORY[0x277CC9578]);
    v20 = *(v2 + 128);
    *(v2 + 128) = v14;

    (*(v19 + 56))(v7, 0, 1, v18);
  }

  else
  {
    v21 = sub_231C8BC9C();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  }

  swift_endAccess();
  return sub_231C67FE0(v7, &qword_27DD70528, &qword_231C8D980);
}

uint64_t ImageGlyphRecencyModel.frequency(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_231C8BCCC();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v30);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_231C859F8(a1, v7, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v7, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v12[*(v9 + 28)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v12 = EnumCaseMultiPayload;
  swift_beginAccess();
  v21 = *(v2 + 144);
  if (*(v21 + 16) && (v22 = sub_231C7DC08(v12), (v23 & 1) != 0))
  {
    v24 = v30;
    (*(v13 + 16))(v17, *(v21 + 56) + *(v13 + 72) * v22, v30);
    (*(v13 + 32))(v19, v17, v24);
    swift_endAccess();
    sub_231C7DC8C(v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    swift_beginAccess();
    v25 = *(v2 + 120);
    if (*(v25 + 16))
    {
      v26 = sub_231C7DB70(v19);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);
      }
    }

    swift_endAccess();
    return (*(v13 + 8))(v19, v24);
  }

  else
  {
    swift_endAccess();
    return sub_231C7DC8C(v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  }
}

uint64_t ImageGlyphRecencyModel.set(frequency:for:)(uint64_t a1, double a2)
{
  v4 = _s14AutoSerializerVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v45 - v9;
  v51 = sub_231C8BCCC();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231C859F8(a1, v25, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v25, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v30[*(v26 + 20)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v30 = EnumCaseMultiPayload;
  sub_231C757BC(v30, 1, v21);
  v50 = v21;
  v32 = v21;
  v33 = v51;
  sub_231C67EB0(v32, v19, &qword_27DD707B8, &qword_231C8D9A0);
  v34 = v10;
  v46 = *(v10 + 48);
  result = v46(v19, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v47;
    (*(v10 + 16))(v47, v19, v33);
    v37 = v48;
    sub_231C859F8(v30, v48, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    (*(v27 + 56))(v37, 0, 1, v26);
    swift_beginAccess();
    sub_231C776C0(v37, v36);
    swift_endAccess();
    v38 = *(v34 + 8);
    v38(v19, v33);
    v40 = v49;
    v39 = v50;
    sub_231C67EB0(v50, v49, &qword_27DD707B8, &qword_231C8D9A0);
    result = v46(v40, 1, v33);
    if (result != 1)
    {
      v41 = v52;
      swift_beginAccess();
      v42 = *(v41 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v41 + 120);
      *(v41 + 120) = 0x8000000000000000;
      sub_231C80D44(v40, isUniquelyReferenced_nonNull_native, a2);
      v38(v40, v33);
      *(v41 + 120) = v53;
      swift_endAccess();
      v44 = v45;
      sub_231C77BB4(v45);
      sub_231C8A3BC();
      sub_231C7DC8C(v44, _s14AutoSerializerVMa);
      sub_231C67FE0(v39, &qword_27DD707B8, &qword_231C8D9A0);
      return sub_231C7DC8C(v30, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231C774CC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_231C8BCCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_231C67FE0(a1, &qword_27DD707B8, &qword_231C8D9A0);
    sub_231C7E3B0(a2, v8);
    sub_231C7DC8C(a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    return sub_231C67FE0(v8, &qword_27DD707B8, &qword_231C8D9A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_231C8077C(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_231C7DC8C(a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_231C776C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_231C67FE0(a1, &qword_27DD707B0, &qword_231C8D988);
    sub_231C7E54C(a2, v8);
    v14 = sub_231C8BCCC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_231C67FE0(v8, &qword_27DD707B0, &qword_231C8D988);
  }

  else
  {
    sub_231C85990(a1, v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_231C80958(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_231C8BCCC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_231C778E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_231C8BC9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_231C67FE0(a1, &qword_27DD70528, &qword_231C8D980);
    sub_231C7E6FC(a2, v8);
    v14 = sub_231C8BCCC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_231C67FE0(v8, &qword_27DD70528, &qword_231C8D980);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_231C80B40(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_231C8BCCC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_231C77B20(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_231C77BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707C0, &qword_231C8D9A8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer;
  swift_beginAccess();
  sub_231C67EB0(v1 + v10, v9, &qword_27DD707C0, &qword_231C8D9A8);
  v11 = _s14AutoSerializerVMa();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_231C85990(v9, a1, _s14AutoSerializerVMa);
  }

  sub_231C67FE0(v9, &qword_27DD707C0, &qword_231C8D9A8);

  sub_231C89DEC(v13, a1);
  sub_231C859F8(a1, v7, _s14AutoSerializerVMa);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_231C87F88(v7, v1 + v10, &qword_27DD707C0, &qword_231C8D9A8);
  return swift_endAccess();
}

uint64_t sub_231C77DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  if (*(v5 + 16) && (v6 = sub_231C7DB70(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_231C8BC9C();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a2, v9 + *(v11 + 72) * v8, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = sub_231C8BC9C();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t sub_231C77F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_231C8BC9C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  swift_beginAccess();
  v20 = *(a3 + 120);
  v21 = 0.0;
  if (*(v20 + 16))
  {
    v22 = sub_231C7DB70(a1);
    if (v23)
    {
      v21 = *(*(v20 + 56) + 8 * v22);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v24 = *(a3 + 120);
  if (*(v24 + 16) && (v25 = sub_231C7DB70(a2), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    swift_endAccess();
    if (v21 != v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
    swift_endAccess();
    if (v21 != 0.0)
    {
      v27 = 0.0;
LABEL_15:
      v29 = v27 < v21;
      return v29 & 1;
    }
  }

  v38 = a2;
  v36 = a1;
  sub_231C77DC4(a1, v12);
  v28 = v14[6];
  if (v28(v12, 1, v13) == 1)
  {
    v10 = v12;
  }

  else
  {
    v35 = v14[4];
    v35(v19, v12, v13);
    sub_231C77DC4(v38, v10);
    if (v28(v10, 1, v13) != 1)
    {
      v30 = v37;
      v35(v37, v10, v13);
      v31 = sub_231C8BC6C();
      v32 = v14[1];
      v32(v30, v13);
      v32(v19, v13);
      v29 = v31;
      return v29 & 1;
    }

    (v14[1])(v19, v13);
  }

  sub_231C67FE0(v10, &qword_27DD70528, &qword_231C8D980);
  sub_231C8BCCC();
  sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0]);
  v29 = sub_231C8BE7C();
  return v29 & 1;
}

void *ImageGlyphRecencyModel.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate, &qword_27DD70528, &qword_231C8D980);
  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer, &qword_27DD707C0, &qword_231C8D9A8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageGlyphRecencyModel.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate, &qword_27DD70528, &qword_231C8D980);
  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer, &qword_27DD707C0, &qword_231C8D9A8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231C783EC(uint64_t a1)
{
  v2 = sub_231C85AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78428(uint64_t a1)
{
  v2 = sub_231C85AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C78464(uint64_t a1)
{
  v2 = sub_231C85A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C784A0(uint64_t a1)
{
  v2 = sub_231C85A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C784DC(uint64_t a1)
{
  v2 = sub_231C85B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78518(uint64_t a1)
{
  v2 = sub_231C85B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C78554(uint64_t a1)
{
  v2 = sub_231C85B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78590(uint64_t a1)
{
  v2 = sub_231C85B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C785CC(uint64_t a1)
{
  v2 = sub_231C85BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78608(uint64_t a1)
{
  v2 = sub_231C85BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707C8, &qword_231C8D9B0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707D0, &qword_231C8D9B8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707D8, &qword_231C8D9C0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707E0, &qword_231C8D9C8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707E8, &qword_231C8D9D0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C85A60();
  sub_231C8C2FC();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_231C85B08();
      v24 = v33;
      sub_231C8C1AC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_231C85AB4();
      v24 = v36;
      sub_231C8C1AC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_231C85B5C();
    v24 = v30;
    sub_231C8C1AC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_231C85BB0();
  sub_231C8C1AC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphType.hashValue.getter()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70808, &qword_231C8D9D8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70810, &qword_231C8D9E0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70818, &qword_231C8D9E8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70820, &qword_231C8D9F0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70828, &unk_231C8D9F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_231C85A60();
  v21 = v53;
  sub_231C8C2EC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_231C8C19C();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_231C70808();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_231C8C0AC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70580, &unk_231C8CA50) + 48);
      *v34 = &type metadata for ImageGlyphRecencyModel.ImageGlyphType;
      sub_231C8C11C();
      sub_231C8C09C();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_231C85B5C();
        v39 = v42;
        sub_231C8C10C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_231C85BB0();
        v31 = v42;
        sub_231C8C10C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_231C85B08();
      v38 = v42;
      sub_231C8C10C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_231C85AB4();
      v40 = v42;
      sub_231C8C10C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_231C7918C(uint64_t a1)
{
  v2 = sub_231C85C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C791C8(uint64_t a1)
{
  v2 = sub_231C85C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C79204(uint64_t a1)
{
  v2 = sub_231C85C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C79240(uint64_t a1)
{
  v2 = sub_231C85C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C7927C(uint64_t a1)
{
  v2 = sub_231C85D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C792B8(uint64_t a1)
{
  v2 = sub_231C85D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C792F4(uint64_t a1)
{
  v2 = sub_231C85CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C79330(uint64_t a1)
{
  v2 = sub_231C85CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C7936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_231C8C23C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_231C793EC(uint64_t a1)
{
  v2 = sub_231C85D9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C79428(uint64_t a1)
{
  v2 = sub_231C85D9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.encode(to:)(void *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70830, &qword_231C8DA08);
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v50 = &v44 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70838, &qword_231C8DA10);
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70840, &qword_231C8DA18);
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v8 = &v44 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70848, &qword_231C8DA20);
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - v10;
  v11 = sub_231C8BCCC();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70850, &qword_231C8DA28);
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C85C04();
  sub_231C8C2FC();
  sub_231C859F8(v58, v21, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = v56;
      v28 = v57;
      (*(v56 + 32))(v15, v21, v57);
      v63 = 2;
      sub_231C85CAC();
      v33 = v51;
      v31 = v60;
      sub_231C8C1AC();
      sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0]);
      v34 = v55;
      sub_231C8C20C();
      (*(v53 + 8))(v33, v34);
      v17 = v15;
      goto LABEL_6;
    }

    v41 = *v21;
    v40 = v21[1];
    v64 = 3;
    sub_231C85C58();
    v42 = v50;
    v38 = v60;
    sub_231C8C1AC();
    v43 = v54;
    sub_231C8C1FC();

    (*(v52 + 8))(v42, v43);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v29 = v56;
      v28 = v57;
      (*(v56 + 32))(v17, v21, v57);
      v61 = 0;
      sub_231C85D9C();
      v30 = v45;
      v31 = v60;
      sub_231C8C1AC();
      sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0]);
      v32 = v49;
      sub_231C8C20C();
      (*(v47 + 8))(v30, v32);
LABEL_6:
      (*(v29 + 8))(v17, v28);
      return (*(v59 + 8))(v25, v31);
    }

    v37 = *v21;
    v36 = v21[1];
    v62 = 1;
    sub_231C85D48();
    v38 = v60;
    sub_231C8C1AC();
    v39 = v48;
    sub_231C8C1FC();

    (*(v46 + 8))(v8, v39);
  }

  return (*(v59 + 8))(v25, v38);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)()
{
  v1 = sub_231C8BCCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_231C859F8(v0, v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v5, v8, v1);
      v10 = 2;
      goto LABEL_6;
    }

    v15 = *v8;
    v16 = v8[1];
    v14 = 3;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v5, v8, v1);
      v10 = 0;
LABEL_6:
      MEMORY[0x238379510](v10);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
      sub_231C8BE6C();
      return (*(v2 + 8))(v5, v1);
    }

    v12 = *v8;
    v13 = v8[1];
    v14 = 1;
  }

  MEMORY[0x238379510](v14);
  sub_231C8BEFC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hashValue.getter()
{
  sub_231C8C2BC();
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70878, &qword_231C8DA30);
  v85 = *(v82 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v82);
  v91 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70880, &qword_231C8DA38);
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = &v74 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70888, &qword_231C8DA40);
  v81 = *(v89 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v74 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70890, &qword_231C8DA48);
  v79 = *(v80 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v86 = &v74 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70898, &qword_231C8DA50);
  v92 = *(v94 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v14 = &v74 - v13;
  v88 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v15 = *(*(v88 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v88);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v74 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v74 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v74 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_231C85C04();
  v32 = v95;
  sub_231C8C2EC();
  if (!v32)
  {
    v74 = v24;
    v75 = v18;
    v76 = v21;
    v77 = v27;
    v33 = v89;
    v34 = v90;
    v35 = v91;
    v78 = v29;
    v37 = v93;
    v36 = v94;
    v95 = v14;
    v38 = sub_231C8C19C();
    v39 = (2 * *(v38 + 16)) | 1;
    v97 = v38;
    v98 = v38 + 32;
    v99 = 0;
    v100 = v39;
    v40 = sub_231C70808();
    if (v40 == 4 || v99 != v100 >> 1)
    {
      v43 = v36;
      v44 = sub_231C8C0AC();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70580, &unk_231C8CA50) + 48);
      *v46 = v88;
      v48 = v95;
      sub_231C8C11C();
      sub_231C8C09C();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v92 + 8))(v48, v43);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40 > 1u)
      {
        v50 = v92;
        if (v40 == 2)
        {
          v101 = 2;
          sub_231C85CAC();
          v51 = v34;
          v52 = v95;
          sub_231C8C10C();
          v59 = v36;
          sub_231C8BCCC();
          sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0]);
          v60 = v76;
          v61 = v84;
          sub_231C8C17C();
          (*(v83 + 8))(v51, v61);
          (*(v50 + 8))(v52, v59);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v60;
          v57 = v78;
        }

        else
        {
          v101 = 3;
          sub_231C85C58();
          sub_231C8C10C();
          v57 = v78;
          v66 = v82;
          v70 = sub_231C8C16C();
          v72 = v71;
          (*(v85 + 8))(v35, v66);
          (*(v50 + 8))(v95, v36);
          swift_unknownObjectRelease();
          v73 = v75;
          *v75 = v70;
          v73[1] = v72;
          swift_storeEnumTagMultiPayload();
          v58 = v73;
        }

        v37 = v93;
      }

      else if (v40)
      {
        v101 = 1;
        sub_231C85D48();
        v53 = v87;
        v54 = v95;
        sub_231C8C10C();
        v62 = v33;
        v63 = sub_231C8C16C();
        v64 = v53;
        v65 = v92;
        v68 = v67;
        (*(v81 + 8))(v64, v62);
        (*(v65 + 8))(v54, v36);
        swift_unknownObjectRelease();
        v69 = v74;
        *v74 = v63;
        v69[1] = v68;
        swift_storeEnumTagMultiPayload();
        v58 = v69;
        v57 = v78;
      }

      else
      {
        v101 = 0;
        sub_231C85D9C();
        v41 = v86;
        v42 = v95;
        sub_231C8C10C();
        sub_231C8BCCC();
        sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0]);
        v55 = v77;
        v56 = v80;
        sub_231C8C17C();
        (*(v79 + 8))(v41, v56);
        (*(v92 + 8))(v42, v94);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v57 = v78;
        v58 = v55;
      }

      sub_231C85990(v58, v57, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      sub_231C85990(v57, v37, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v96);
}

uint64_t sub_231C7A830()
{
  sub_231C8C2BC();
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  return sub_231C8C2DC();
}

uint64_t sub_231C7A874()
{
  sub_231C8C2BC();
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.init(type:externalRepresentation:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  return sub_231C85990(a2, &a3[*(v5 + 20)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
}

uint64_t static ImageGlyphRecencyModel.ImageGlyphRecord.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) + 20);

  return _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(&a1[v5], &a2[v5]);
}

unint64_t sub_231C7A99C()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_231C7A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_231C8C23C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000231C8F480 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_231C8C23C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_231C7AAB8(uint64_t a1)
{
  v2 = sub_231C85DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C7AAF4(uint64_t a1)
{
  v2 = sub_231C85DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD708A0, &qword_231C8DA58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C85DF0();
  sub_231C8C2FC();
  v13[15] = *v3;
  v13[14] = 0;
  sub_231C69E5C();
  sub_231C8C20C();
  if (!v2)
  {
    v11 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) + 20);
    v13[13] = 1;
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    sub_231C85D00(&qword_280CFA9A0, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C20C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.hash(into:)()
{
  MEMORY[0x238379510](*v0);
  v1 = &v0[*(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) + 20)];
  return ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.hashValue.getter()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*v0);
  v1 = &v0[*(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) + 20)];
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD708A8, &qword_231C8DA60);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_231C85DF0();
  sub_231C8C2EC();
  if (!v2)
  {
    v18 = v15;
    v19 = v27;
    v31 = 0;
    sub_231C6A454();
    v20 = v28;
    sub_231C8C17C();
    v25 = v18;
    *v18 = v32;
    v30 = 1;
    sub_231C85D00(&qword_280CFA998, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C17C();
    (*(v19 + 8))(v11, v20);
    v21 = *(v12 + 20);
    v22 = v25;
    sub_231C85990(v7, &v25[v21], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C85990(v22, v26, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_231C7B09C(uint64_t a1)
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*v1);
  v3 = &v1[*(a1 + 20)];
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  return sub_231C8C2DC();
}

uint64_t sub_231C7B100(uint64_t a1, uint64_t a2)
{
  MEMORY[0x238379510](*v2);
  v4 = &v2[*(a2 + 20)];
  return ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
}

uint64_t sub_231C7B14C(uint64_t a1, uint64_t a2)
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*v2);
  v4 = &v2[*(a2 + 20)];
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  return sub_231C8C2DC();
}

uint64_t sub_231C7B1DC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231C7B204(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70968, &qword_231C8EA20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C87420();
  sub_231C8C2FC();
  v11 = *v3;
  LOBYTE(v19) = 0;
  sub_231C8C21C();
  if (!v2)
  {
    v19 = v3[1];
    HIBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70930, &qword_231C8E9E0);
    sub_231C87B34();
    sub_231C8C20C();
    v19 = v3[2];
    HIBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70938, &qword_231C8E9E8);
    sub_231C87BF0();
    sub_231C8C20C();
    v19 = v3[3];
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70940, &qword_231C8E9F0);
    sub_231C87CDC();
    sub_231C8C20C();
    v19 = v3[4];
    HIBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70948, &qword_231C8E9F8);
    sub_231C87DC8();
    sub_231C8C20C();
    v12 = type metadata accessor for ImageGlyphRecencyCodableData(0);
    v13 = *(v12 + 36);
    LOBYTE(v19) = 5;
    sub_231C8BC9C();
    sub_231C85D00(&qword_27DD70980, MEMORY[0x277CC9578]);
    sub_231C8C1EC();
    v14 = v3 + *(v12 + 40);
    v15 = *v14;
    v16 = v14[8];
    LOBYTE(v19) = 6;
    sub_231C8C1CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_231C7B544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70928, &qword_231C8E9D8);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 1;
  v15 = MEMORY[0x277D84F90];
  v40 = sub_231C830A8(MEMORY[0x277D84F90]);
  *(v14 + 1) = v40;
  v39 = sub_231C83290(v15);
  *(v14 + 2) = v39;
  v38 = sub_231C834B0(v15);
  *(v14 + 3) = v38;
  v16 = sub_231C836CC(v15);
  *(v14 + 4) = v16;
  v17 = *(v11 + 44);
  v18 = sub_231C8BC9C();
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v19 = *(v11 + 48);
  v44 = v14;
  v45 = a1;
  v20 = &v14[v19];
  *v20 = 0;
  v20[8] = 1;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C87420();
  v22 = v43;
  sub_231C8C2EC();
  if (v22)
  {
    v23 = v44;
  }

  else
  {
    v34 = v17;
    v35 = v16;
    v43 = v18;
    v33 = v20;
    v24 = v41;
    LOBYTE(v47) = 0;
    v25 = v42;
    v26 = sub_231C8C18C();
    v23 = v44;
    *v44 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70930, &qword_231C8E9E0);
    v46 = 1;
    sub_231C87474();
    sub_231C8C17C();

    v23[1] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70938, &qword_231C8E9E8);
    v46 = 2;
    sub_231C87530();
    sub_231C8C17C();

    v23[2] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70940, &qword_231C8E9F0);
    v46 = 3;
    sub_231C8761C();
    sub_231C8C17C();

    v23[3] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70948, &qword_231C8E9F8);
    v46 = 4;
    sub_231C87708();
    sub_231C8C17C();

    v23[4] = v47;
    LOBYTE(v47) = 5;
    sub_231C85D00(&qword_280CFA6A8, MEMORY[0x277CC9578]);
    v28 = v37;
    sub_231C8C15C();
    sub_231C87F88(v28, v23 + v34, &qword_27DD70528, &qword_231C8D980);
    LOBYTE(v47) = 6;
    v29 = sub_231C8C13C();
    v31 = v30;
    (*(v24 + 8))(v9, v25);
    v32 = v33;
    *v33 = v29;
    *(v32 + 8) = v31 & 1;
    sub_231C859F8(v23, v36, type metadata accessor for ImageGlyphRecencyCodableData);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return sub_231C7DC8C(v23, type metadata accessor for ImageGlyphRecencyCodableData);
}

unint64_t sub_231C7BADC()
{
  v1 = *v0;
  v2 = 0x6556616D65686373;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x6365526F5479656BLL;
  if (v1 != 3)
  {
    v4 = 0x6F5464726F636572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636E657571657266;
  if (v1 != 1)
  {
    v5 = 0x646573557473616CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_231C7BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231C88108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231C7BC24(uint64_t a1)
{
  v2 = sub_231C87420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C7BC60(uint64_t a1)
{
  v2 = sub_231C87420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C7BCCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  v7 = sub_231C8BBFC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 104))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91C0]);
  v11 = sub_231C8BC2C();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v6, 1, 1, v11);
  sub_231C8BC1C();
  result = sub_231C8BC0C();
  if (!v1)
  {
    if (result)
    {
      return result;
    }

    if (qword_280CFA058 != -1)
    {
      swift_once();
    }

    v14 = sub_231C8BCFC();
    __swift_project_value_buffer(v14, qword_280CFA060);
    v15 = sub_231C8BCDC();
    v16 = sub_231C8BFBC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_231C65000, v15, v16, "Could not access the Recency container directory.", v17, 2u);
      MEMORY[0x238379930](v17, -1, -1);
    }

    sub_231C85F88();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return (*(v12 + 8))(a1, v11);
}

uint64_t ImageGlyphRecencyModel.save()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_231C8BBFC();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_231C8BC2C();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C7C110, v0, 0);
}

uint64_t sub_231C7C110()
{
  sub_231C7BCCC(v0[10]);
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[4];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277CC91D0], v0[5]);
  (*(v4 + 16))(v5, v1, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_231C8BC1C();
  v6 = *(v4 + 8);
  v0[12] = v6;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_231C7C2F0;
  v8 = v0[2];

  return sub_231C7C5F0();
}

uint64_t sub_231C7C2F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = *(v6 + 104);
    (*(v6 + 96))(*(v6 + 88), *(v6 + 64));
    *(v6 + 144) = v2;
    v10 = *(v6 + 16);
    v11 = sub_231C7C564;
  }

  else
  {
    v10 = *(v6 + 16);
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v11 = sub_231C7C43C;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_231C7C43C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[8];
  sub_231C8BC4C();
  v5(v6, v7);
  sub_231C723D0(v2, v1);
  if (v3)
  {
    v0[18] = v3;
    v8 = v0[2];

    return MEMORY[0x2822009F8](sub_231C7C564, v8, 0);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[7];
    v12 = v0[4];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_231C7C564()
{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_231C7C5F0()
{
  v1[17] = v0;
  v2 = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v1[18] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C7C684, v0, 0);
}

uint64_t sub_231C7C684()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  swift_beginAccess();
  v4 = v3[15];
  swift_beginAccess();
  v5 = v3[16];
  swift_beginAccess();
  v6 = v3[17];
  swift_beginAccess();
  v7 = v3[18];
  v8 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C67EB0(v3 + v8, v1 + *(v2 + 36), &qword_27DD70528, &qword_231C8D980);
  v9 = *(v3 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion);
  v10 = *(v3 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion + 8);
  *v1 = 1;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *(v1 + 24) = v12;
  *(v1 + 8) = v11;
  v13 = v1 + *(v2 + 40);
  *v13 = v9;
  *(v13 + 8) = v10;
  v14 = sub_231C8BBBC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  sub_231C8BBAC();
  sub_231C85D00(&qword_27DD709E8, type metadata accessor for ImageGlyphRecencyCodableData);
  v17 = sub_231C8BB9C();
  v19 = v18;
  sub_231C7DC8C(v0[19], type metadata accessor for ImageGlyphRecencyCodableData);

  v20 = v0[1];

  return v20(v17, v19);
}

uint64_t ImageGlyphRecencyModel.load(from:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v2[19] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C7C9BC, v1, 0);
}

uint64_t sub_231C7C9BC()
{
  v1 = v0[17];
  v2 = sub_231C8BC3C();
  v4 = v0[19];
  v3 = v0[20];
  v5 = v2;
  v7 = v6;
  v8 = sub_231C8BB8C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_231C8BB7C();
  sub_231C85D00(&qword_280CFA668, type metadata accessor for ImageGlyphRecencyCodableData);
  sub_231C8BB6C();
  sub_231C723D0(v5, v7);

  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[18];
  v15 = v12[1];
  swift_beginAccess();
  v16 = v14[15];
  v14[15] = v15;

  v17 = v12[2];
  swift_beginAccess();
  v18 = v14[16];
  v14[16] = v17;

  v19 = v12[3];
  swift_beginAccess();
  v20 = v14[17];
  v14[17] = v19;

  v21 = v12[4];
  swift_beginAccess();
  v22 = v14[18];
  v14[18] = v21;

  v23 = *(v13 + 36);
  v24 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C7DD0C(v12 + v23, v14 + v24);
  swift_endAccess();
  v25 = v12 + *(v13 + 40);
  v26 = *v25;
  LOBYTE(v24) = v25[8];
  sub_231C7DC8C(v12, type metadata accessor for ImageGlyphRecencyCodableData);
  v27 = v14 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v27 = v26;
  v27[8] = v24;

  v28 = v0[1];

  return v28();
}

uint64_t ImageGlyphRecencyModel._jsonDump()()
{
  v1[2] = v0;
  v2 = *(*(sub_231C8BECC() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_231C7CCF0;

  return sub_231C7C5F0();
}

uint64_t sub_231C7CCF0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 32);
  v6 = *v3;
  v4[5] = a1;
  v4[6] = a2;

  if (v2)
  {
    v7 = v4[3];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[2];

    return MEMORY[0x2822009F8](sub_231C7CE40, v10, 0);
  }
}

uint64_t sub_231C7CE40()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  sub_231C8BEBC();
  result = sub_231C8BEAC();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = v0[3];
    sub_231C723D0(v0[5], v0[6]);

    v9 = v0[1];

    return v9(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ImageGlyphRecencyError.hashValue.getter()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

unint64_t ImageGlyphRecencyError.errorDescription.getter()
{
  if (*v0)
  {
    result = 0xD000000000000026;
  }

  else
  {
    result = 0xD00000000000002ALL;
  }

  *v0;
  return result;
}

unint64_t sub_231C7CFB8()
{
  if (*v0)
  {
    result = 0xD000000000000026;
  }

  else
  {
    result = 0xD00000000000002ALL;
  }

  *v0;
  return result;
}

char *sub_231C7D000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A10, &qword_231C8EA90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_231C7D104(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A00, &qword_231C8EA88);
  v10 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
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
  v15 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
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

size_t sub_231C7D2DC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709F8, &qword_231C8EA80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(") - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(") - 8);
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

size_t sub_231C7D4CC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A18, &qword_231C8EA98);
  v4 = *(sub_231C8BCCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231C7D5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231C7D694(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_231C87AD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_231C7D694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_231C7D7A0(a5, a6);
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
    result = sub_231C8C0BC();
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

uint64_t sub_231C7D7A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_231C7D7EC(a1, a2);
  sub_231C7D91C(&unk_2846E91F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_231C7D7EC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_231C7DA08(v5, 0);
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

  result = sub_231C8C0BC();
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
        v10 = sub_231C8BF1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_231C7DA08(v10, 0);
        result = sub_231C8C07C();
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

uint64_t sub_231C7D91C(uint64_t result)
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

  result = sub_231C7DA7C(result, v12, 1, v3);
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

void *sub_231C7DA08(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70960, &qword_231C8EA18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_231C7DA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70960, &qword_231C8EA18);
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

unint64_t sub_231C7DB70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_231C8BCCC();
  sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0]);
  v5 = sub_231C8BE5C();

  return sub_231C7DDF4(a1, v5);
}

unint64_t sub_231C7DC08(unsigned __int8 *a1)
{
  v3 = *(v1 + 40);
  sub_231C8C2BC();
  MEMORY[0x238379510](*a1);
  v4 = &a1[*(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) + 20)];
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)();
  v5 = sub_231C8C2DC();

  return sub_231C7DFB4(a1, v5);
}

uint64_t sub_231C7DC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231C7DD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_231C7DD7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_231C8C2BC();
  sub_231C8BEFC();
  v6 = sub_231C8C2DC();

  return sub_231C7E158(a1, a2, v6);
}

unint64_t sub_231C7DDF4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_231C8BCCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
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
      sub_231C85D00(&qword_280CFA690, MEMORY[0x277CC95F0]);
      v16 = sub_231C8BE8C();
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

unint64_t sub_231C7DFB4(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_231C859F8(*(v2 + 48) + v14 * v11, v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      if (*v9 == v13)
      {
        v15 = _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(&v9[*(v5 + 20)], &a1[*(v5 + 20)]);
        sub_231C7DC8C(v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        if (v15)
        {
          return v11;
        }
      }

      else
      {
        sub_231C7DC8C(v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}