uint64_t Command.asActionElement()()
{
  v1 = type metadata accessor for Command(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_3_47();
  sub_26A321058();
  sub_26A217578(&unk_287B02290);
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v5, v6);
  sub_26A4249C4();

  OUTLINED_FUNCTION_24_31();
  return sub_26A326630(v0, v7);
}

uint64_t static ActionElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCommand(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Command(0);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - v22;
  ActionElement.command.getter();
  ActionElement.command.getter();
  sub_26A323174();
  sub_26A323174();
  static _ProtoCommand.== infix(_:_:)();
  v25 = v24;
  sub_26A326630(v10, type metadata accessor for _ProtoCommand);
  sub_26A326630(v13, type metadata accessor for _ProtoCommand);
  sub_26A326630(v20, type metadata accessor for Command);
  sub_26A326630(v23, type metadata accessor for Command);
  if (v25)
  {
    if (*(*(a1 + 8) + 16))
    {
    }

    else
    {
      v26 = &unk_287B01470;
    }

    v28 = sub_26A10BE7C(v26);
    if (*(*(a2 + 8) + 16))
    {
    }

    else
    {
      v29 = &unk_287B01470;
    }

    v30 = sub_26A10BE7C(v29);
    v27 = sub_26A290AE0(v28, v30);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t static Command.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_16_11();
  v1 = type metadata accessor for _ProtoCommand(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26A323174();
  sub_26A323174();
  static _ProtoCommand.== infix(_:_:)();
  v12 = v11;
  sub_26A326630(v7, type metadata accessor for _ProtoCommand);
  sub_26A326630(v10, type metadata accessor for _ProtoCommand);
  return v12 & 1;
}

uint64_t ActionElement.hash(into:)()
{
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v0, v1);
  OUTLINED_FUNCTION_133();

  return sub_26A424B44();
}

uint64_t ActionElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoActionElement(0);
  OUTLINED_FUNCTION_5_42();
  sub_26A326688(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3245F4()
{
  sub_26A425504();
  type metadata accessor for _ProtoActionElement(0);
  sub_26A326688(&qword_28036F530, type metadata accessor for _ProtoActionElement);
  sub_26A424B44();
  return sub_26A425554();
}

void Array<A>.element(for:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v37 = v9;
  v36 = sub_26A424E44();
  v10 = OUTLINED_FUNCTION_24(v36);
  v38 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v20 = *(v4 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v23 = *v8;
  v24 = *(v8 + 8);
  v35 = v6;
  v43 = v6;
  v39 = v4;
  v40 = v2;
  v41 = v23;
  v42 = v24;
  sub_26A424D94();
  swift_getWitnessTable();
  v25 = 0;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v19);
  if (!v26)
  {
    (*(v20 + 32))(v0, v19, v4);
    OUTLINED_FUNCTION_64_9();
    v30 = OUTLINED_FUNCTION_12_2();
    v31(v30);
    (*(v20 + 8))(v0, v4);
LABEL_6:
    v29 = 0;
    goto LABEL_7;
  }

  v27 = *(v38 + 8);
  v38 += 8;
  v28 = v27(v19, v36);
  v43 = v35;
  MEMORY[0x28223BE20](v28);
  *(&v35 - 2) = v4;
  *(&v35 - 1) = v2;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v16);
  if (!v26)
  {
    OUTLINED_FUNCTION_64_9();
    v32 = OUTLINED_FUNCTION_12_2();
    v33(v32);
    (*(v20 + 8))(v16, v4);
    goto LABEL_6;
  }

  v27(v16, v36);
  v29 = 1;
  v25 = v37;
LABEL_7:
  v34 = type metadata accessor for ActionElement(0);
  __swift_storeEnumTagSinglePayload(v25, v29, 1, v34);
  OUTLINED_FUNCTION_75();
}

{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v29 = v9;
  v28 = sub_26A424E44();
  OUTLINED_FUNCTION_3_46();
  v30 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_46();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v31 = *v8;
  v32 = *(v8 + 8);
  sub_26A424D94();
  swift_getWitnessTable();
  v20 = 0;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v2);
  if (!v21)
  {
    (*(v16 + 32))(v0, v2, v6);
    OUTLINED_FUNCTION_64_9();
    v25(v6, v4);
    (*(v16 + 8))(v0, v6);
LABEL_6:
    v24 = 0;
    goto LABEL_7;
  }

  v22 = *(v30 + 8);
  v23 = v22(v2, v28);
  MEMORY[0x28223BE20](v23);
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v1);
  if (!v21)
  {
    OUTLINED_FUNCTION_64_9();
    v26(v6, v4);
    (*(v16 + 8))(v1, v6);
    goto LABEL_6;
  }

  v22(v1, v28);
  v24 = 1;
  v20 = v29;
LABEL_7:
  v27 = type metadata accessor for TextElement();
  __swift_storeEnumTagSinglePayload(v20, v24, 1, v27);
  OUTLINED_FUNCTION_75();
}

{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v35 = v9;
  v34 = sub_26A424E44();
  OUTLINED_FUNCTION_3_46();
  v36 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  OUTLINED_FUNCTION_3_46();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v24 = v23 - v22;
  v25 = *v8;
  LOBYTE(v23) = *(v8 + 8);
  v33 = v6;
  v41 = v6;
  v37 = v4;
  v38 = v2;
  v39 = v25;
  v40 = v23;
  sub_26A424D94();
  swift_getWitnessTable();
  v26 = 0;
  sub_26A424D04();
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) != 1)
  {
    (*(v18 + 32))(v24, v16, v4);
    OUTLINED_FUNCTION_64_9();
    v30(v4, v2);
    (*(v18 + 8))(v24, v4);
LABEL_6:
    v29 = 0;
    goto LABEL_7;
  }

  v27 = *(v36 + 8);
  v36 += 8;
  v28 = v27(v16, v34);
  v41 = v33;
  MEMORY[0x28223BE20](v28);
  *(&v33 - 2) = v4;
  *(&v33 - 1) = v2;
  sub_26A424D04();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) != 1)
  {
    OUTLINED_FUNCTION_64_9();
    v31(v4, v2);
    (*(v18 + 8))(v0, v4);
    goto LABEL_6;
  }

  v27(v0, v34);
  v29 = 1;
  v26 = v35;
LABEL_7:
  v32 = type metadata accessor for VisualElement();
  __swift_storeEnumTagSinglePayload(v26, v29, 1, v32);
  OUTLINED_FUNCTION_75();
}

{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33 = v10;
  v32 = sub_26A424E44();
  v11 = OUTLINED_FUNCTION_24(v32);
  v34 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = *(v5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v21 = *v9;
  v22 = *(v9 + 8);
  v31 = v7;
  v39 = v7;
  v35 = v5;
  v36 = v3;
  v37 = v21;
  v38 = v22;
  sub_26A424D94();
  swift_getWitnessTable();
  v23 = 0;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v17);
  if (!v24)
  {
    (*(v18 + 32))(v0, v17, v5);
    OUTLINED_FUNCTION_64_9();
    v28(v5, v3);
    (*(v18 + 8))(v0, v5);
LABEL_6:
    v27 = 0;
    goto LABEL_7;
  }

  v25 = *(v34 + 8);
  v34 += 8;
  v26 = v25(v17, v32);
  v39 = v31;
  MEMORY[0x28223BE20](v26);
  *(&v31 - 2) = v5;
  *(&v31 - 1) = v3;
  sub_26A424D04();
  OUTLINED_FUNCTION_15(v1);
  if (!v24)
  {
    OUTLINED_FUNCTION_64_9();
    v29(v5, v3);
    (*(v18 + 8))(v1, v5);
    goto LABEL_6;
  }

  v25(v1, v32);
  v27 = 1;
  v23 = v33;
LABEL_7:
  v30 = type metadata accessor for Player(0);
  __swift_storeEnumTagSinglePayload(v23, v27, 1, v30);
  OUTLINED_FUNCTION_75();
}

BOOL sub_26A324970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ActionElement(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 8))(a4, a5, v11);
  v14 = *(v13 + 1);
  if (v14[2])
  {
    v15 = *(v13 + 1);
  }

  else
  {
    v14 = &unk_287B02320;
  }

  sub_26A326630(v13, type metadata accessor for ActionElement);
  v16 = sub_26A165034(a2, a3 & 1, v14);

  return v16;
}

BOOL sub_26A324A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ActionElement(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v7);
  v10 = *(v9 + 1);
  if (v10[2])
  {
    v11 = *(v9 + 1);
  }

  else
  {
    v10 = &unk_287B02350;
  }

  sub_26A326630(v9, type metadata accessor for ActionElement);
  v12 = v10[2] + 1;
  v13 = 4;
  do
  {
    if (!--v12)
    {
      break;
    }

    v14 = v10[v13];
    v13 += 2;
  }

  while (v14);
  v15 = v12 != 0;

  return v15;
}

uint64_t sub_26A324B9C@<X0>(uint64_t *a1@<X8>)
{
  result = ActionElement.allTextElements.getter();
  *a1 = result;
  return result;
}

uint64_t static Command.directInvocation(identifier:payload:isNavigation:)@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  sub_26A326D34(0, &qword_2803728E8);

  v6 = sub_26A324CD0();
  sub_26A3267F4(a1, v6);
  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v9 = [v7 runSiriKitExecutorCommandWithContext:v8 payload:v6];

  *a3 = v9;
  *(a3 + 8) = a2;
  type metadata accessor for Command(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_26A324CD0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26A424B74();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t Command.aceCommand.getter()
{
  v1 = OUTLINED_FUNCTION_63_10();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v0;
  }

  sub_26A326630(v0, type metadata accessor for Command);
  return 0;
}

uint64_t sub_26A324DDC(_BYTE *a1)
{
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  *a1 = 1;
  v2 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_26A324E58()
{
  OUTLINED_FUNCTION_45_8();
  sub_26A0E48F0(v4, &qword_28036C858, &dword_26A42D080);
  *v3 = v2;
  v3[1] = v1;
  v5 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  *(v3 + *(type metadata accessor for _ProtoCommand(0) + 20)) = v0;
  return sub_26A0E45C0(v2, v1);
}

uint64_t sub_26A324EF4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  *a1 = a2;
  a1[1] = a3;
  v8 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  *(a1 + *(type metadata accessor for _ProtoCommand(0) + 20)) = a4;
}

uint64_t sub_26A324F98(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_26A326688(&qword_28036F570, type metadata accessor for _ProtoCommand.ChangeBackground);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  sub_26A3210AC();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_26A3250FC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundElement();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for _ProtoBackgroundElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_26A10D404();
    v10 = v22;
    v11 = a2 + 32;
    do
    {
      sub_26A32706C();
      v13 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v12 + 8))(v13, v12);
      sub_26A3210AC();
      __swift_destroy_boxed_opaque_existential_1(v19);
      v22 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_26A10D404();
        v10 = v22;
      }

      *(v10 + 16) = v14 + 1;
      v15 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v16 = *(v7 + 72);
      sub_26A3210AC();
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  v17 = *a1;

  *a1 = v10;
  return result;
}

uint64_t sub_26A32532C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_26A326688(&qword_28036F558, type metadata accessor for _ProtoCommand.ResponseGroup);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  sub_26A3210AC();
  v8 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  result = type metadata accessor for _ProtoCommand(0);
  *(a1 + *(result + 20)) = a4;
  return result;
}

uint64_t sub_26A3254B0(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_26A326688(&qword_28036D350, type metadata accessor for _ProtoCommand.AppPunchout);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C858, &dword_26A42D080);
  sub_26A3210AC();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_26A325614(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v8 = a2[2];
  v7 = a2[3];
  v9 = a1[3];

  a1[2] = v8;
  a1[3] = v7;
  v11 = a2[4];
  v10 = a2[5];
  v12 = a1[5];

  a1[4] = v11;
  a1[5] = v10;
  return result;
}

uint64_t sub_26A3256A4()
{
  OUTLINED_FUNCTION_45_8();
  sub_26A0E48F0(v5, &qword_28036C858, &dword_26A42D080);
  *v4 = v3;
  v4[1] = v2;
  v6 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoCommand(0);
  *(v4 + *(v10 + 20)) = v1;
  *(v4 + *(v10 + 24)) = v0;
  return sub_26A0E45C0(v3, v2);
}

BOOL Command.isNotNoOp.getter()
{
  v1 = OUTLINED_FUNCTION_63_10();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_26A326630(v0, type metadata accessor for Command);
  }

  return EnumCaseMultiPayload != 9;
}

uint64_t Command.isNavigation.getter()
{
  v1 = OUTLINED_FUNCTION_63_10();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 8u:
      v5 = *(v0 + 8);

      break;
    case 1u:
      v5 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48));
      OUTLINED_FUNCTION_8_32();
      sub_26A326630(v0, v8);
      break;
    case 2u:
      v7 = *(v0 + 8);
      v5 = *(v0 + 16);

      break;
    default:
      sub_26A326630(v0, type metadata accessor for Command);
      v5 = 0;
      break;
  }

  return v5;
}

BOOL Command.shouldUseSearchUIButton.getter()
{
  v1 = OUTLINED_FUNCTION_63_10();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_3_47();
  sub_26A321058();
  OUTLINED_FUNCTION_48_1();
  v5 = swift_getEnumCaseMultiPayload() == 8;
  sub_26A326630(v0, type metadata accessor for Command);
  return v5;
}

uint64_t Command.sfCommand.getter()
{
  v1 = OUTLINED_FUNCTION_63_10();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_246();
  sub_26A321058();
  OUTLINED_FUNCTION_133();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 4)
  {
    return *v0;
  }

  sub_26A326630(v0, type metadata accessor for Command);
  return 0;
}

uint64_t Command.description.getter()
{
  v1 = type metadata accessor for Command(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_48_1();
  sub_26A321058();
  OUTLINED_FUNCTION_175();
  v5 = 1884254062;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F0, &qword_26A43DA00) + 48));
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v22 = v10 - 8;
      if (v9)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v9)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x26D65BA70](v11, v12);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);
      v5 = v22;
      OUTLINED_FUNCTION_8_32();
      sub_26A326630(v0, v13);
      return v5;
    case 2u:
      v14 = *(v0 + 8);
      LODWORD(v0) = *(v0 + 16);

      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      goto LABEL_22;
    case 3u:
      sub_26A326630(v0, type metadata accessor for Command);
      return 0xD000000000000010;
    case 4u:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v7 = v20 - 7;
      goto LABEL_23;
    case 5u:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

LABEL_22:
      OUTLINED_FUNCTION_10_44();
      goto LABEL_23;
    case 6u:
      sub_26A326630(v0, type metadata accessor for Command);
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v23 = v15 - 3;
      v16 = Command.isNavigation.getter();
      v17 = (v16 & 1) == 0;
      if (v16)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v17)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      goto LABEL_29;
    case 7u:
      sub_26A326630(v0, type metadata accessor for Command);
      return 0x68636E7550707061;
    case 8u:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v7 = v8 - 1;
      goto LABEL_23;
    case 9u:
      return v5;
    default:
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_12_26();
      sub_26A424EF4();

      OUTLINED_FUNCTION_10_44();
      v7 = v6 - 6;
LABEL_23:
      v23 = v7;
      if (v0)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v0)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

LABEL_29:
      MEMORY[0x26D65BA70](v18, v19);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);
      return v23;
  }
}

uint64_t Command.hash(into:)()
{
  v1 = type metadata accessor for _ProtoCommand(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  sub_26A323174();
  OUTLINED_FUNCTION_1_51();
  sub_26A326688(v5, v6);
  sub_26A424B44();
  OUTLINED_FUNCTION_2_44();
  return sub_26A326630(v0, v7);
}

uint64_t Command.hashValue.getter()
{
  v1 = type metadata accessor for _ProtoCommand(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  sub_26A425504();
  sub_26A323174();
  OUTLINED_FUNCTION_1_51();
  sub_26A326688(v5, v6);
  sub_26A424B44();
  OUTLINED_FUNCTION_2_44();
  sub_26A326630(v0, v7);
  return sub_26A425554();
}

uint64_t sub_26A325F0C()
{
  v0 = type metadata accessor for _ProtoCommand(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A425504();
  sub_26A323174();
  sub_26A326688(&qword_28036F508, type metadata accessor for _ProtoCommand);
  sub_26A424B44();
  sub_26A326630(v3, type metadata accessor for _ProtoCommand);
  return sub_26A425554();
}

uint64_t sub_26A32600C(uint64_t a1)
{
  v2 = sub_26A326868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A326048(uint64_t a1)
{
  v2 = sub_26A326868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Command.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34[3] = a2;
  v4 = sub_26A4247F4();
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v34[5] = v9 - v8;
  v10 = type metadata accessor for _ProtoCommand(0);
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728F8, &qword_26A43DA08);
  OUTLINED_FUNCTION_24(v17);
  v34[4] = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_163_1();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A326868();
  v23 = v38;
  sub_26A425574();
  if (v23)
  {
    v33 = a1;
  }

  else
  {
    v34[1] = v2;
    v34[2] = v10;
    v38 = a1;
    sub_26A0E718C();
    sub_26A425054();
    v24 = v35;
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_26A0E45C0(v24, *(&v24 + 1));
    sub_26A4247E4();
    OUTLINED_FUNCTION_1_51();
    sub_26A326688(v25, v26);
    sub_26A424984();
    sub_26A321058();
    sub_26A3212CC();
    v28 = OUTLINED_FUNCTION_68_8();
    sub_26A0E4784(v28, v29);
    OUTLINED_FUNCTION_2_44();
    sub_26A326630(v16, v30);
    v31 = OUTLINED_FUNCTION_51_14();
    v32(v31);
    v33 = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t Command.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for _ProtoCommand(v3);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372908, &qword_26A43DA10);
  OUTLINED_FUNCTION_24(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44_6();
  v14 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_26A326868();
  sub_26A425594();
  sub_26A323174();
  OUTLINED_FUNCTION_1_51();
  sub_26A326688(v15, v16);
  v17 = sub_26A424994();
  if (v23)
  {
    sub_26A326630(v2, type metadata accessor for _ProtoCommand);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    OUTLINED_FUNCTION_2_44();
    sub_26A326630(v2, v21);
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v19, v20);
  }

  return (*(v10 + 8))(v1, v8);
}

id sub_26A32659C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26A4246B4();
    sub_26A10E794(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_26A326630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A326688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A326718(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A4246D4();

  return v3;
}

id sub_26A326788(uint64_t a1, void *a2)
{
  v3 = sub_26A424B04();
  v4 = [a2 aceObjectWithDictionary_];

  return v4;
}

void sub_26A3267F4(uint64_t a1, void *a2)
{
  v3 = sub_26A424B04();
  [a2 setUserData_];
}

unint64_t sub_26A326868()
{
  result = qword_280372900;
  if (!qword_280372900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372900);
  }

  return result;
}

uint64_t sub_26A3269BC()
{
  result = type metadata accessor for _ProtoActionElement(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A326A3C()
{
  sub_26A326CC8(319, &qword_280372930, &qword_280372938);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A326B94();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A326C00();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A326C64();
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_26A326CC8(319, &qword_280372958, &qword_280372960);
        if (v10 > 0x3F)
        {
          return v9;
        }

        sub_26A326CC8(319, &qword_280372968, &qword_280372970);
        if (v11 > 0x3F)
        {
          return v7;
        }

        else
        {
          v1 = type metadata accessor for AppPunchout();
          if (v12 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A326B94()
{
  if (!qword_280372940)
  {
    type metadata accessor for Response();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280372940);
    }
  }
}

void sub_26A326C00()
{
  if (!qword_280372948)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280372948);
    }
  }
}

void sub_26A326C64()
{
  if (!qword_280372950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036CE10, &qword_26A426998);
    v0 = sub_26A424D94();
    if (!v1)
    {
      atomic_store(v0, &qword_280372950);
    }
  }
}

void sub_26A326CC8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_26A326D34(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_26A326D34(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    OUTLINED_FUNCTION_90_5();
    v5 = *v4;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, v2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Command.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A326E20()
{
  result = qword_280372978;
  if (!qword_280372978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372978);
  }

  return result;
}

unint64_t sub_26A326E78()
{
  result = qword_280372980;
  if (!qword_280372980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372980);
  }

  return result;
}

unint64_t sub_26A326ED0()
{
  result = qword_280372988;
  if (!qword_280372988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372988);
  }

  return result;
}

uint64_t sub_26A32706C()
{
  OUTLINED_FUNCTION_90_5();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0, v1);
  return v0;
}

uint64_t sub_26A3270CC()
{
  OUTLINED_FUNCTION_90_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

void OUTLINED_FUNCTION_16_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D65C950);
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  v2 = *(v0 - 280);

  return sub_26A326630(v2, type metadata accessor for _ProtoCommand.ChangeBackground);
}

BOOL OUTLINED_FUNCTION_27_20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_32_16()
{

  JUMPOUT(0x26D65C950);
}

uint64_t OUTLINED_FUNCTION_33_13()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_36_13()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

void OUTLINED_FUNCTION_39_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_15(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 264);

  return sub_26A326630(v4, a2);
}

id OUTLINED_FUNCTION_59_14(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_60_11(float a1)
{
  *v1 = a1;

  return sub_26A0E8788(0xD000000000000025, v2 | 0x8000000000000000, (v3 - 104));
}

uint64_t OUTLINED_FUNCTION_63_10()
{

  return type metadata accessor for Command(0);
}

id OUTLINED_FUNCTION_73_9(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_74_8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
}

uint64_t SimpleItemVisual.thumbnails.getter()
{
  v1 = type metadata accessor for VisualProperty();
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26A10D994();
    v9 = v19;
    v10 = type metadata accessor for _ProtoVisualProperty();
    OUTLINED_FUNCTION_79_0(v10);
    v12 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      sub_26A329F0C();
      v15 = *(v19 + 16);
      if (v15 >= *(v19 + 24) >> 1)
      {
        sub_26A10D994();
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      sub_26A329F60();
      v12 += v14;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void SimpleItemVisual.text1.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoTextProperty(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_93_0();
  v17 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = 0;
      v19 = v8 + v2[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = v2[8];
      v21 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      v25 = v2[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v15, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A329F60();
    }

    sub_26A329F60();
    v0 = 0;
  }

  v29 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v0, 1, v29);
  OUTLINED_FUNCTION_75();
}

void SimpleItemVisual.action.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_93_0();
  v17 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      *v8 = MEMORY[0x277D84F90];
      v8[1] = 0;
      v8[2] = 0xE000000000000000;
      v19 = v8 + *(v2 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v15, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A329F60();
    }

    sub_26A329F60();
    v0 = 0;
  }

  v20 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v0, 1, v20);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.componentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_175();
}

uint64_t SimpleItemVisual.linkIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_175();
}

void _ProtoSimpleItem_Visual.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  v71 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v70 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v74 = v18;
  v73 = type metadata accessor for _ProtoTextProperty(0);
  v19 = OUTLINED_FUNCTION_12(v73);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  v69 = v23;
  v24 = type metadata accessor for _ProtoVisualProperty();
  v25 = OUTLINED_FUNCTION_79_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_93_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v35 = OUTLINED_FUNCTION_41(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17();
  v68 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  v72 = v41;
  OUTLINED_FUNCTION_1_52();
  sub_26A329F0C();
  v42 = *v1;
  v43 = *(*v1 + 16);
  if (v43)
  {
    v66 = v8;
    v67 = v2;
    v75 = MEMORY[0x277D84F90];
    sub_26A10D2B0();
    v44 = v75;
    v45 = v42 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v46 = *(v27 + 72);
    do
    {
      sub_26A329F0C();
      _ProtoVisualProperty.redactedProto.getter();
      sub_26A329FB4(v32, type metadata accessor for _ProtoVisualProperty);
      v47 = *(v75 + 16);
      if (v47 >= *(v75 + 24) >> 1)
      {
        sub_26A10D2B0();
      }

      *(v75 + 16) = v47 + 1;
      sub_26A329F60();
      v45 += v46;
      --v43;
    }

    while (v43);

    v2 = v67;
    v8 = v66;
  }

  else
  {
    v48 = *v1;

    v44 = MEMORY[0x277D84F90];
  }

  *v1 = v44;
  v49 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v50 = *(v49 + 36);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v73);
  sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v68, 1, v73) == 1)
    {
      v52 = v69;
      *v69 = MEMORY[0x277D84F90];
      *(v69 + 8) = 0;
      v53 = v69 + v73[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v54 = v73[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v2);
      v58 = v73[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v2);
      if (__swift_getEnumTagSinglePayload(v68, 1, v73) != 1)
      {
        sub_26A0E48F0(v68, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v52 = v69;
      sub_26A329F60();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A329FB4(v52, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v1 + v50, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A329F60();
    __swift_storeEnumTagSinglePayload(v1 + v50, 0, 1, v73);
  }

  v62 = *(v49 + 32);
  sub_26A10FD9C();
  v63 = __swift_getEnumTagSinglePayload(v74, 1, v2);
  sub_26A0E48F0(v74, &off_28036C7C0, &off_26A427400);
  if (v63 != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v70, 1, v2) == 1)
    {
      v64 = v71;
      *v71 = MEMORY[0x277D84F90];
      v71[1] = 0;
      v71[2] = 0xE000000000000000;
      v65 = v71 + *(v2 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v70, 1, v2) != 1)
      {
        sub_26A0E48F0(v70, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v64 = v71;
      sub_26A329F60();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v8);
    sub_26A329FB4(v64, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v1 + v62, &off_28036C7C0, &off_26A427400);
    sub_26A329F60();
    __swift_storeEnumTagSinglePayload(v1 + v62, 0, 1, v2);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.init<A>(_:text1:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t sub_26A328358(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v56 = a7;
  v63 = a5;
  v64 = a6;
  v59 = a3;
  v60 = a4;
  v65 = a1;
  v9 = type metadata accessor for ActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v55[3] = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = v55 - v14;
  v62 = type metadata accessor for _ProtoActionProperty();
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v55[1] = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TextProperty(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v55[2] = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VisualProperty();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = type metadata accessor for _ProtoVisualProperty();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v57 = v55 - v27;
  v58 = type metadata accessor for _ProtoTextProperty(0);
  v28 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v55[0] = v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 16);
  v70 = MEMORY[0x277D84F90];
  sub_26A10D2B0();
  v31 = v70;
  if (v30)
  {
    v32 = a2 + 32;
    do
    {
      sub_26A0E5D68(v32, v67);
      v34 = v68;
      v33 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      (*(v33 + 8))(v34, v33);
      sub_26A329F60();
      __swift_destroy_boxed_opaque_existential_1(v67);
      v70 = v31;
      v35 = *(v31 + 16);
      if (v35 >= *(v31 + 24) >> 1)
      {
        sub_26A10D2B0();
        v31 = v70;
      }

      *(v31 + 16) = v35 + 1;
      v36 = v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v37 = *(v23 + 72);
      sub_26A329F60();
      v32 += 40;
      --v30;
    }

    while (v30);
  }

  v38 = v65;
  v39 = *v65;

  *v38 = v31;
  sub_26A10FD9C();
  v40 = v68;
  if (v68)
  {
    v41 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v41 + 8))(v40, v41);
    v42 = v57;
    sub_26A329F60();
    v43 = v58;
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v58);
    __swift_destroy_boxed_opaque_existential_1(v67);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) != 1)
    {
      sub_26A329F60();
      v44 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
      sub_26A0E48F0(v38 + v44, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(v38 + v44, 0, 1, v43);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v67, &qword_28036CB08, &unk_26A428720);
    v42 = v57;
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v58);
  }

  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v45 = v68;
  if (v68)
  {
    v46 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v46 + 8))(v45, v46);
    v47 = v61;
    sub_26A329F60();
    v48 = v62;
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v62);
    __swift_destroy_boxed_opaque_existential_1(v67);
    if (__swift_getEnumTagSinglePayload(v47, 1, v48) != 1)
    {
      sub_26A329F60();
      v49 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
      sub_26A0E48F0(v38 + v49, &off_28036C7C0, &off_26A427400);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(v38 + v49, 0, 1, v48);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v67, &qword_28036CAF8, &unk_26A426D30);
    v47 = v61;
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v62);
  }

  sub_26A0E48F0(v47, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v50 = v38[2];
  v51 = v64;

  v38[1] = v63;
  v38[2] = v51;
  v53 = v66;
  if (v66)
  {
    v54 = v38[4];

    v38[3] = v56;
    v38[4] = v53;
  }

  return result;
}

uint64_t sub_26A328A84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a2;
  v60 = a8;
  v50 = a7;
  v55 = a5;
  v56 = a6;
  v11 = type metadata accessor for ActionProperty();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v49[3] = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = v49 - v16;
  v54 = type metadata accessor for _ProtoActionProperty();
  v17 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v49[2] = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v49[1] = v49 - v20;
  v21 = type metadata accessor for TextProperty(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v49 - v25;
  v27 = type metadata accessor for _ProtoTextProperty(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v49[0] = v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v31 = type metadata accessor for _ProtoVisualProperty();
  v32 = v52;
  v34 = sub_26A409784(sub_26A329094, 0, a9, v31, MEMORY[0x277D84A98], a10, MEMORY[0x277D84AC0], v33);
  v52 = v32;
  v35 = *a1;

  *a1 = v34;
  sub_26A10FD9C();
  v36 = v58;
  if (v58)
  {
    v37 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v37 + 8))(v36, v37);
    sub_26A329F60();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    __swift_destroy_boxed_opaque_existential_1(v57);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      sub_26A329F60();
      sub_26A329F60();
      v38 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
      sub_26A0E48F0(a1 + v38, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(a1 + v38, 0, 1, v27);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v57, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
  }

  sub_26A0E48F0(v26, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v39 = v58;
  if (v58)
  {
    v40 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v40 + 8))(v39, v40);
    v41 = v53;
    sub_26A329F60();
    v42 = v54;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v54);
    __swift_destroy_boxed_opaque_existential_1(v57);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
    {
      sub_26A329F60();
      sub_26A329F60();
      v43 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
      sub_26A0E48F0(a1 + v43, &off_28036C7C0, &off_26A427400);
      sub_26A329F60();
      __swift_storeEnumTagSinglePayload(a1 + v43, 0, 1, v42);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v57, &qword_28036CAF8, &unk_26A426D30);
    v41 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
  }

  sub_26A0E48F0(v41, &off_28036C7C0, &off_26A427400);
LABEL_11:
  v44 = a1[2];
  v45 = v56;

  a1[1] = v55;
  a1[2] = v45;
  v47 = v60;
  if (v60)
  {
    v48 = a1[4];

    a1[3] = v50;
    a1[4] = v47;
  }

  return result;
}

uint64_t sub_26A329094(void *a1)
{
  v2 = type metadata accessor for VisualProperty();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  return sub_26A329F60();
}

uint64_t SimpleItemVisual.init(_:text1:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v5, v6);
  sub_26A4249C4();

  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(v8, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v9, &qword_28036CB08, &unk_26A428720);
}

void SimpleItemVisual.init<A>(_:text1:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v16 = v2;
  v17 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v9, v15);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_26_27();
  SimpleItemVisual.init<A>(_:text1:action:componentName:linkIdentifier:)(v14, &v19, &v18, v16, v17, 0, 0, v1);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v7, &qword_28036CB08, &unk_26A428720);
  (*(v10 + 8))(v9, v1);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.init(_:text1:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_24_32();
  OUTLINED_FUNCTION_22_20();
  OUTLINED_FUNCTION_21_25();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v5, v6);
  sub_26A4249C4();

  OUTLINED_FUNCTION_40_11(a3);
  OUTLINED_FUNCTION_27_2(a2);
  OUTLINED_FUNCTION_40_11(v10);
  OUTLINED_FUNCTION_27_2(v11);
  OUTLINED_FUNCTION_40_11(v8);
  OUTLINED_FUNCTION_27_2(v9);
}

void SimpleItemVisual.init<A>(_:text1:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  (*(v8 + 16))(v11 - v10, v7, v12);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_26_27();
  SimpleItemVisual.init<A>(_:text1:action:componentName:)();
  sub_26A0E48F0(v3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v5, &qword_28036CB08, &unk_26A428720);
  (*(v8 + 8))(v7, v1);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemVisual.init(_:text1:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_24_32();
  OUTLINED_FUNCTION_22_20();
  OUTLINED_FUNCTION_21_25();
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  OUTLINED_FUNCTION_0_61();
  sub_26A32A00C(v5, v6);
  sub_26A4249C4();
  OUTLINED_FUNCTION_40_11(a3);
  OUTLINED_FUNCTION_27_2(a2);
  OUTLINED_FUNCTION_40_11(v10);
  OUTLINED_FUNCTION_27_2(v11);
  OUTLINED_FUNCTION_40_11(v8);
  OUTLINED_FUNCTION_27_2(v9);
}

Swift::String __swiftcall SimpleItemVisual.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for SimpleItemVisual();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE8, &qword_26A426970);
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - v25;
  OUTLINED_FUNCTION_5_43();
  sub_26A329F0C();
  if (redacted)
  {
    _ProtoSimpleItem_Visual.redactedProto.getter();
  }

  else
  {
    sub_26A329F0C();
  }

  sub_26A329F60();
  v26[*(v21 + 32)] = redacted;
  sub_26A329FB4(v20, type metadata accessor for SimpleItemVisual);
  *&v26[*(v21 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F71C0(KeyPath, 0x69616E626D756874, 0xEA0000000000736CLL);

  SimpleItemVisual.text1.getter();
  sub_26A1069D4();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  SimpleItemVisual.action.getter();
  sub_26A1068D0();
  sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
  v28 = swift_getKeyPath();
  sub_26A0F7B10(v28, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v29, v30, v31, v32, v41, v42);

  v33 = swift_getKeyPath();
  sub_26A0F84A4(v33, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v34, v35, v36, v37, v41, v42);

  sub_26A0FD5B8();
  sub_26A0E48F0(v26, &qword_28036CDE8, &qword_26A426970);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t SimpleItemVisual.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1_52();
  sub_26A329F0C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_6_32();
  sub_26A329F60();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SimpleItemVisual.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemVisual();
  *(inited + 64) = &protocol witness table for SimpleItemVisual;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_5_43();
  sub_26A329F0C();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A32A00C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SimpleItemVisual()
{
  result = qword_280372990;
  if (!qword_280372990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A329F0C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A329F60()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A329FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A32A00C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A32A0C4()
{
  result = type metadata accessor for _ProtoSimpleItem_Visual(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_22_20()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_23_30()
{

  return type metadata accessor for _ProtoSimpleItem_Visual(0);
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_25_24()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_26_27()
{

  return sub_26A10FD9C();
}

void TextElement.init(stringLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_51_15();
  a51 = v52;
  a52 = v53;
  OUTLINED_FUNCTION_22_21();
  sub_26A32EF10();
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v54, v55);
  OUTLINED_FUNCTION_35_20();

  sub_26A0E48F0(&a29, &qword_2803729A0, &unk_26A43DE80);
  sub_26A0E48F0(&a24, &qword_2803729A0, &unk_26A43DE80);
  OUTLINED_FUNCTION_50_14();
}

Swift::String __swiftcall TextElement.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v79 = &v76 - v6;
  v78 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  v7 = OUTLINED_FUNCTION_12(v78);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v76 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v77 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  v22 = OUTLINED_FUNCTION_41(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  v28 = type metadata accessor for TextElement();
  v29 = OUTLINED_FUNCTION_41(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_41(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  v37 = &v76 - v36;
  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_45_9();
  sub_26A32EE30();
  sub_26A39FA98();
  v38 = *(v37 + 1);
  v39 = v37[16];
  v80[0] = *v37;
  v80[1] = v38;
  v81 = v39;
  sub_26A148B68(v80[0], v38, v39);
  TextElement.Value.init(proto:)(v80, &v82);
  v40 = v83;
  v41 = OUTLINED_FUNCTION_45_9();
  sub_26A146ED4(v41, v42, v40);
  OUTLINED_FUNCTION_45_9();
  sub_26A0D6740();
  v43 = type metadata accessor for _ProtoTextElement(0);
  v44 = *(v43 + 32);
  sub_26A32EF10();
  v45 = type metadata accessor for _ProtoTextElement.Font(0);
  v46 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v45);
  sub_26A0E48F0(v27, &qword_2803729B0, &qword_26A43E300);
  if (EnumTagSinglePayload == 1)
  {
    v48 = 0;
    v49 = 0uLL;
    v50 = 0uLL;
  }

  else
  {
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v45);
    TextElement.Font.init(_:)(v1, &v82);
    v49 = v82;
    v50 = v83;
    v48 = v84;
    v46 = v85;
  }

  v82 = v49;
  v83 = v50;
  v84 = v48;
  v85 = v46;
  sub_26A146E00(&v82);
  v54 = *(v43 + 36);
  sub_26A32EF10();
  v55 = v78;
  v56 = __swift_getEnumTagSinglePayload(v20, 1, v78);
  sub_26A0E48F0(v20, &qword_2803729A8, &qword_26A43DE90);
  if (v56 != 1)
  {
    v57 = v77;
    sub_26A32EF10();
    v58 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v58, v59, v55);
    if (v60)
    {
      v64 = v76;
      *v76 = 0;
      *(v64 + 8) = 1;
      v61 = v64 + *(v55 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v62 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_37(v62, v63, v55);
      if (!v60)
      {
        sub_26A0E48F0(v57, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      v64 = v76;
      sub_26A32F3AC();
    }

    v65 = *v64;
    v66 = *(v64 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v64, v67);
  }

  sub_26A146D48();
  v68 = v79;
  TextElement.fontColor.getter();
  sub_26A109EDC();
  sub_26A0E48F0(v68, &qword_28036CBA0, &qword_26A4265B0);
  TextElement.italic.getter();
  sub_26A146CAC(v69);
  TextElement.bold.getter();
  sub_26A146CAC(v70);
  v71 = *(v37 + 8);
  sub_26A146C04();
  KeyPath = swift_getKeyPath();
  sub_26A28FDB0(KeyPath, 0x736D6F696469, 0xE600000000000000);

  sub_26A101E58();
  sub_26A0E48F0(v37, &qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_75();
  result._object = v74;
  result._countAndFlagsBits = v73;
  return result;
}

double sub_26A32AC1C@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_14_24();
  sub_26A32EE30();
  v3 = *(a1 + 16);
  if (v3 != 255)
  {
    sub_26A0D6768(*a1, *(a1 + 8), *(a1 + 16));
    result = 9.79844756e25;
    *a1 = xmmword_26A42D990;
    *(a1 + 16) = v3 & 1;
  }

  return result;
}

uint64_t TextElement.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = v4;
  sub_26A148B68(v6[0], v3, v4);
  return TextElement.Value.init(proto:)(v6, a1);
}

uint64_t TextElement.Value.init(proto:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v10 = *(result + 16);
  if (v10 == 255)
  {
    v16[1] = v7;
    v16[2] = v6;
    v16[3] = v5;
    v16[4] = v4;
    v16[5] = v3;
    v16[6] = v2;
    v16[7] = v8;
    v16[8] = v9;
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v11 = sub_26A424AE4();
    __swift_project_value_buffer(v11, qword_2803A8950);
    v12 = sub_26A424AD4();
    v13 = sub_26A424E14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_26A0E8788(0xD000000000000023, 0x800000026A44A470, v16);
      _os_log_impl(&dword_26A0B8000, v12, v13, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }

    result = sub_26A424FC4();
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = v10 & 1;
  }

  return result;
}

void TextElement.font.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_104();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v10);
  v11 = *(OUTLINED_FUNCTION_26_28() + 32);
  OUTLINED_FUNCTION_40_17();
  v12 = type metadata accessor for _ProtoTextElement.Font(0);
  v13 = 1;
  OUTLINED_FUNCTION_20_2();
  if (v1 == 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
    TextElement.Font.init(_:)(v0, v20);
    v15 = v20[0];
    v16 = v20[1];
    v14 = v21;
    v13 = v22;
  }

  *v3 = v15;
  *(v3 + 16) = v16;
  *(v3 + 32) = v14;
  *(v3 + 34) = v13;
  OUTLINED_FUNCTION_75();
}

uint64_t TextElement.Font.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  OUTLINED_FUNCTION_41(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  sub_26A32EF10();
  type metadata accessor for _ProtoTextElement.Font(0);
  v23 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v23, v24, v25);
  if (v33)
  {
    sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
    sub_26A0E48F0(v16, &qword_2803729B0, &qword_26A43E300);
    type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    v26 = OUTLINED_FUNCTION_71();
    result = __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 34) = 1;
    return result;
  }

  sub_26A32EF10();
  sub_26A32F354(v16, type metadata accessor for _ProtoTextElement.Font);
  v30 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v31 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v31, v32, v30);
  if (v33)
  {
LABEL_6:
    result = sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    v40 = *v22;
    if (v22[8] == 1)
    {
      result = sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
      switch(v40)
      {
        case 1:
          v45 = 1;
          goto LABEL_28;
        case 2:
          v45 = 2;
          goto LABEL_28;
        case 3:
          v45 = 3;
          goto LABEL_28;
        case 4:
          v45 = 4;
          goto LABEL_28;
        case 5:
          v45 = 5;
          goto LABEL_28;
        case 6:
          v45 = 6;
          goto LABEL_28;
        case 7:
          v45 = 7;
          goto LABEL_28;
        case 8:
          v45 = 8;
          goto LABEL_28;
        case 9:
          v45 = 9;
          goto LABEL_28;
        case 10:
          v45 = 10;
LABEL_28:
          *a2 = v45;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          break;
        default:
          *a2 = 0u;
          *(a2 + 16) = 0u;
          break;
      }

      *(a2 + 32) = 256;
      goto LABEL_30;
    }

    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v41 = sub_26A424AE4();
    __swift_project_value_buffer(v41, qword_2803A8950);
    v42 = sub_26A424AD4();
    v43 = sub_26A424E04();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      *(v44 + 4) = v40;
      _os_log_impl(&dword_26A0B8000, v42, v43, "Unrecognized named font value: %{public}ld", v44, 0xCu);
      OUTLINED_FUNCTION_1_21();
    }

    goto LABEL_6;
  }

  sub_26A0E48F0(a1, &qword_2803729B0, &qword_26A43E300);
  OUTLINED_FUNCTION_12_27();
  sub_26A32F3AC();
  v35 = *v10;
  v36 = *(v10 + 1);
  v37 = *(v10 + 16);
  v38 = *(v10 + 3);
  v39 = *(v10 + 32);
  result = sub_26A32F354(v10, type metadata accessor for _ProtoTextElement.Font.SystemFont);
  *a2 = v35;
  *(a2 + 8) = v36;
  *(a2 + 16) = v37;
  *(a2 + 24) = v38;
  *(a2 + 32) = v39;
LABEL_30:
  *(a2 + 34) = 0;
  return result;
}

void TextElement.fontWeight.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_93_0();
  v18 = *(type metadata accessor for _ProtoTextElement(0) + 36);
  sub_26A32EF10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v3);
  sub_26A0E48F0(v0, &qword_2803729A8, &qword_26A43DE90);
  if (EnumTagSinglePayload == 1)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_26A32EF10();
    v22 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v22, v23, v3);
    if (v24)
    {
      *v9 = 0;
      *(v9 + 8) = 1;
      v25 = v9 + *(v3 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v26 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_37(v26, v27, v3);
      if (!v24)
      {
        sub_26A0E48F0(v16, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_104();
      sub_26A32F3AC();
    }

    v20 = *v9;
    v21 = *(v9 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v9, v28);
  }

  *v2 = v20;
  *(v2 + 8) = v21;
  *(v2 + 9) = EnumTagSinglePayload == 1;
  OUTLINED_FUNCTION_75();
}

void TextElement.fontColor.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoColor(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v28 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_93_0();
  v17 = *(type metadata accessor for _ProtoTextElement(0) + 40);
  sub_26A32EF10();
  v18 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v3);
  sub_26A0E48F0(v0, &qword_28036CCD8, &unk_26A432950);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A32EF10();
    v20 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v20, v21, v3);
    if (v22)
    {
      v23 = type metadata accessor for _ProtoColor.OneOf_Value(0);
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v23);
      v24 = v28 + *(v3 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v25 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v25, v26, v3);
      if (!v22)
      {
        sub_26A0E48F0(v15, &qword_28036CCD8, &unk_26A432950);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    sub_26A32F3AC();
    v18 = 0;
  }

  v27 = type metadata accessor for Color();
  __swift_storeEnumTagSinglePayload(v2, v18, 1, v27);
  OUTLINED_FUNCTION_75();
}

void TextElement.italic.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for _ProtoOptionalBool(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v13);
  v14 = *(OUTLINED_FUNCTION_26_28() + 44);
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_20_2();
  if (v2 != 1)
  {
    sub_26A32EF10();
    OUTLINED_FUNCTION_15(v1);
    if (v15)
    {
      *v0 = 0;
      v16 = &v0[*(v3 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v1);
      if (!v15)
      {
        sub_26A0E48F0(v1, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    OUTLINED_FUNCTION_15_31();
  }

  OUTLINED_FUNCTION_75();
}

void TextElement.bold.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for _ProtoOptionalBool(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v13);
  v14 = *(OUTLINED_FUNCTION_26_28() + 48);
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_20_2();
  if (v2 != 1)
  {
    sub_26A32EF10();
    OUTLINED_FUNCTION_15(v1);
    if (v15)
    {
      *v0 = 0;
      v16 = &v0[*(v3 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v1);
      if (!v15)
      {
        sub_26A0E48F0(v1, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    OUTLINED_FUNCTION_15_31();
  }

  OUTLINED_FUNCTION_75();
}

void *TextElement.idioms.getter()
{
  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return &unk_287B014A0;
  }
}

uint64_t sub_26A32BC30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, char a10, uint64_t a11, char a12)
{
  v71 = a8;
  v70 = a7;
  v62 = a6;
  v67 = a2;
  v68 = a5;
  v69 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v74 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v62 - v18;
  v80 = type metadata accessor for _ProtoOptionalBool(0);
  v19 = *(*(v80 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v80);
  v63 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v62 - v22;
  v66 = type metadata accessor for _ProtoColor(0);
  v23 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Color();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v64 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v62 - v30;
  v32 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for _ProtoTextElement.Font(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v38 = *a1;
  v39 = *(a1 + 8);
  v40 = *(a1 + 16);

  sub_26A0D6768(v38, v39, v40);
  v41 = v68;
  *a1 = v67;
  *(a1 + 8) = a3;
  *(a1 + 16) = v69 & 1;
  if ((*(v41 + 34) & 1) == 0)
  {
    TextElement.Font.proto.getter();
    v42 = *(type metadata accessor for _ProtoTextElement(0) + 32);
    sub_26A0E48F0(a1 + v42, &qword_2803729B0, &qword_26A43E300);
    sub_26A32F3AC();
    __swift_storeEnumTagSinglePayload(a1 + v42, 0, 1, v36);
  }

  v43 = v80;
  v44 = v72;
  v45 = v70;
  if ((v70 & 0x100) == 0)
  {
    v46 = *(type metadata accessor for _ProtoTextElement(0) + 36);
    sub_26A32EF10();
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      *v35 = 0;
      v35[8] = 1;
      v47 = &v35[*(v32 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
      {
        sub_26A0E48F0(v31, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    *v35 = v62;
    v35[8] = v45 & 1;
    sub_26A0E48F0(a1 + v46, &qword_2803729A8, &qword_26A43DE90);
    sub_26A32F3AC();
    __swift_storeEnumTagSinglePayload(a1 + v46, 0, 1, v32);
  }

  sub_26A32EF10();
  if (v76)
  {
    sub_26A0D671C(&v75, v77);
    v48 = v78;
    v49 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v49 + 8))(v48, v49);
    sub_26A32F3AC();
    v50 = *(type metadata accessor for _ProtoTextElement(0) + 40);
    sub_26A0E48F0(a1 + v50, &qword_28036CCD8, &unk_26A432950);
    sub_26A32F3AC();
    __swift_storeEnumTagSinglePayload(a1 + v50, 0, 1, v66);
    result = __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    result = sub_26A0E48F0(&v75, &qword_2803729A0, &unk_26A43DE80);
  }

  v52 = v73;
  v53 = v74;
  if (a9 != 2)
  {
    v54 = *(type metadata accessor for _ProtoTextElement(0) + 44);
    sub_26A32EF10();
    if (__swift_getEnumTagSinglePayload(v44, 1, v43) == 1)
    {
      v55 = &v52[*(v43 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v44, 1, v43) != 1)
      {
        sub_26A0E48F0(v44, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A32F3AC();
    }

    *v52 = a9 & 1;
    sub_26A0E48F0(a1 + v54, &qword_28036D198, &qword_26A432940);
    sub_26A32F3AC();
    result = __swift_storeEnumTagSinglePayload(a1 + v54, 0, 1, v43);
  }

  if (a10 != 2)
  {
    v56 = *(type metadata accessor for _ProtoTextElement(0) + 48);
    sub_26A32EF10();
    if (__swift_getEnumTagSinglePayload(v53, 1, v43) == 1)
    {
      v57 = v63;
      v58 = &v63[*(v43 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v53, 1, v43) != 1)
      {
        sub_26A0E48F0(v53, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v57 = v63;
      sub_26A32F3AC();
    }

    *v57 = a10 & 1;
    sub_26A0E48F0(a1 + v56, &qword_28036D198, &qword_26A432940);
    sub_26A32F3AC();
    result = __swift_storeEnumTagSinglePayload(a1 + v56, 0, 1, v43);
  }

  if (a12)
  {
    goto LABEL_28;
  }

  if (a11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a11 <= 0x7FFFFFFF)
  {
    *(a1 + 32) = a11;
LABEL_28:

    v60 = sub_26A419264(v59);
    v61 = *(a1 + 24);

    *(a1 + 24) = v60;
    return result;
  }

  __break(1u);
  return result;
}

void TextElement.Font.proto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v8 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  v11 = *(v0 + 32);
  v12 = *(v0 + 33);
  v13 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v14 = OUTLINED_FUNCTION_71();
  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  v16 = v2 + *(type metadata accessor for _ProtoTextElement.Font(0) + 20);
  v17 = _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  if (v12 != 1)
  {
    v28[0] = v28;
    MEMORY[0x28223BE20](v17);
    LODWORD(v28[-6]) = v7;
    v28[-5] = v8;
    LOBYTE(v28[-4]) = v10 & 1;
    v28[-3] = v9;
    LOBYTE(v28[-2]) = v11 & 1;
    sub_26A32F15C(&qword_2803729C0, type metadata accessor for _ProtoTextElement.Font.SystemFont);
    sub_26A4249C4();
    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
    OUTLINED_FUNCTION_12_27();
    sub_26A32F3AC();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
    OUTLINED_FUNCTION_75();
    return;
  }

  if (!(v10 | v8 | v7 | v9) && !v11)
  {
    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
    *v2 = 0;
LABEL_44:
    *(v2 + 8) = 1;
    goto LABEL_45;
  }

  v21 = v10 | v8 | v9;
  if (v11 || v7 != 1 || v21)
  {
    if (v11 || v7 != 2 || v21)
    {
      if (v11 || v7 != 3 || v21)
      {
        if (v11 || v7 != 4 || v21)
        {
          if (v11 || v7 != 5 || v21)
          {
            if (v11 || v7 != 6 || v21)
            {
              if (v11 || v7 != 7 || v21)
              {
                if (v11 || v7 != 8 || v21)
                {
                  if (v11 || v7 != 9 || v21)
                  {
                    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                    v22 = 10;
                  }

                  else
                  {
                    sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                    v22 = 9;
                  }
                }

                else
                {
                  sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                  v22 = 8;
                }
              }

              else
              {
                sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
                v22 = 7;
              }
            }

            else
            {
              sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
              v22 = 6;
            }
          }

          else
          {
            sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
            v22 = 5;
          }
        }

        else
        {
          sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
          v22 = 4;
        }
      }

      else
      {
        sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
        v22 = 3;
      }
    }

    else
    {
      sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
      v22 = 2;
    }

    *v2 = v22;
    goto LABEL_44;
  }

  sub_26A0E48F0(v2, &qword_2803729B8, &unk_26A43DED0);
  *v2 = 1;
  *(v2 + 8) = 1;
LABEL_45:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_75();

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t TextElement.Value.text.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_133();
  sub_26A0D6660();
  return OUTLINED_FUNCTION_133();
}

void TextElement.Value.attributedText.getter()
{
  OUTLINED_FUNCTION_76();
  sub_26A424504();
  OUTLINED_FUNCTION_3_46();
  v34 = v3;
  v35 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = sub_26A424514();
  OUTLINED_FUNCTION_3_46();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v18 = sub_26A424534();
  v19 = OUTLINED_FUNCTION_41(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_113();
  v26 = sub_26A424574();
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v31 = *v1;
  v30 = v1[1];
  if (v1[2])
  {
    v32 = sub_26A424614();
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v32);
    (*(v11 + 104))(v17, *MEMORY[0x277CC8BB0], v9);
    (*(v34 + 104))(v8, *MEMORY[0x277CC8B98], v35);
    OUTLINED_FUNCTION_152();
    sub_26A0D6660();

    sub_26A424524();
    OUTLINED_FUNCTION_152();
    sub_26A424544();
    OUTLINED_FUNCTION_152();
    sub_26A0D6740();
  }

  else
  {
    v33 = v1[1];

    sub_26A424564();
    OUTLINED_FUNCTION_152();
    sub_26A424554();
  }

  OUTLINED_FUNCTION_75();
}

unint64_t TextElement.Value.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_26A424EF4();

    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 34;
  }

  v3 = OUTLINED_FUNCTION_133();
  MEMORY[0x26D65BA70](v3);
  OUTLINED_FUNCTION_133();
  sub_26A0D6740();
  MEMORY[0x26D65BA70](34, 0xE100000000000000);
  return v5;
}

uint64_t static TextElement.Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_26A425354();
        OUTLINED_FUNCTION_125();
        OUTLINED_FUNCTION_9_31();
        OUTLINED_FUNCTION_9_31();
        sub_26A0D6740();
        OUTLINED_FUNCTION_125();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_9_31();
      OUTLINED_FUNCTION_9_31();
      sub_26A0D6740();
      sub_26A0D6740();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_9_31();
    sub_26A0D6740();
    OUTLINED_FUNCTION_125();
    sub_26A0D6740();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    OUTLINED_FUNCTION_8_24();
    sub_26A0D6660();
    OUTLINED_FUNCTION_8_24();
    sub_26A0D6660();
    OUTLINED_FUNCTION_8_24();
    sub_26A0D6740();
    OUTLINED_FUNCTION_8_24();
    sub_26A0D6740();
    return v10;
  }

  v8 = *a1;
  v9 = sub_26A425354();
  OUTLINED_FUNCTION_125();
  sub_26A0D6660();
  OUTLINED_FUNCTION_8_24();
  sub_26A0D6660();
  OUTLINED_FUNCTION_8_24();
  sub_26A0D6740();
  OUTLINED_FUNCTION_125();
LABEL_16:
  sub_26A0D6740();
  return v9 & 1;
}

uint64_t TextElement.Value.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x26D65C340](*(v0 + 16));
  OUTLINED_FUNCTION_133();

  return sub_26A424C04();
}

uint64_t TextElement.Value.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26A425504();
  MEMORY[0x26D65C340](v3);
  OUTLINED_FUNCTION_35_1();
  sub_26A424C04();
  return sub_26A425554();
}

uint64_t sub_26A32CF70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26A425504();
  MEMORY[0x26D65C340](v3);
  sub_26A424C04();
  return sub_26A425554();
}

BOOL static TextElement.Font.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  if (*(a1 + 33) != 1)
  {
    if (*(a2 + 33))
    {
      v13 = v8 | v6;
      if (!(v13 | v5 | v7) && !*(a2 + 32))
      {
        return 0;
      }

LABEL_11:
      v14 = v13 | v7;
      if (!*(a2 + 32) && v5 == 1 && !v14)
      {
        return 0;
      }

LABEL_24:
      if (!*(a2 + 32) && v5 == 2 && !v14)
      {
        return 0;
      }

LABEL_27:
      if (!*(a2 + 32) && v5 == 3 && !v14)
      {
        return 0;
      }

LABEL_30:
      if (!*(a2 + 32) && v5 == 4 && !v14)
      {
        return 0;
      }

LABEL_33:
      if (!*(a2 + 32) && v5 == 5 && !v14)
      {
        return 0;
      }

LABEL_36:
      if (!*(a2 + 32) && v5 == 6 && !v14)
      {
        return 0;
      }

      goto LABEL_39;
    }

    if (*&v3 != *&v5)
    {
      return 0;
    }

    if (v8)
    {
      switch(v6)
      {
        case 1:
          if (v2 != 1)
          {
            return 0;
          }

          goto LABEL_60;
        case 2:
          if (v2 != 2)
          {
            return 0;
          }

          goto LABEL_60;
        case 3:
          if (v2 != 3)
          {
            return 0;
          }

          goto LABEL_60;
        case 4:
          if (v2 != 4)
          {
            return 0;
          }

          goto LABEL_60;
        case 5:
          if (v2 != 5)
          {
            return 0;
          }

          goto LABEL_60;
        case 6:
          if (v2 != 6)
          {
            return 0;
          }

          goto LABEL_60;
        case 7:
          if (v2 != 7)
          {
            return 0;
          }

          goto LABEL_60;
        case 8:
          if (v2 != 8)
          {
            return 0;
          }

          goto LABEL_60;
        default:
          if (!v2)
          {
            goto LABEL_60;
          }

          return 0;
      }
    }

    if (v2 != v6)
    {
      return 0;
    }

LABEL_60:
    if ((v9 & 1) == 0)
    {
      return v4 == v7;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        return v4 == 1;
      }

      if (v4 == 2)
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  v11 = *(a1 + 32);
  v12 = a1[2] | v2;
  if (!(v12 | v3 | v4) && !*(a1 + 32))
  {
    if (*(a2 + 33))
    {
      v13 = v8 | v6;
      if (v13 | v5 | v7 || *(a2 + 32))
      {
        goto LABEL_11;
      }

      return 1;
    }

    return 0;
  }

  v15 = v12 | v4;
  if (!*(a1 + 32) && v3 == 1 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v16 = v8 | v6;
    if (!(v16 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v14 = v16 | v7;
    if (*(a2 + 32) || v5 != 1 || v14)
    {
      goto LABEL_24;
    }

    return 1;
  }

  if (!*(a1 + 32) && v3 == 2 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v17 = v8 | v6;
    if (!(v17 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v14 = v17 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v14)
    {
      return 0;
    }

    if (*(a2 + 32) || v5 != 2 || v14)
    {
      goto LABEL_27;
    }

    return 1;
  }

  if (!*(a1 + 32) && v3 == 3 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v18 = v8 | v6;
    if (!(v18 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v14 = v18 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v14)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v14)
    {
      return 0;
    }

    if (*(a2 + 32) || v5 != 3 || v14)
    {
      goto LABEL_30;
    }

    return 1;
  }

  if (!*(a1 + 32) && v3 == 4 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v19 = v8 | v6;
    if (!(v19 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v14 = v19 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v14)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v14 || !*(a2 + 32) && v5 == 3 && !v14)
    {
      return 0;
    }

    if (*(a2 + 32) || v5 != 4 || v14)
    {
      goto LABEL_33;
    }

    return 1;
  }

  if (!*(a1 + 32) && v3 == 5 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v20 = v8 | v6;
    if (!(v20 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v14 = v20 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v14)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v14 || !*(a2 + 32) && v5 == 3 && !v14 || !*(a2 + 32) && v5 == 4 && !v14)
    {
      return 0;
    }

    if (*(a2 + 32) || v5 != 5 || v14)
    {
      goto LABEL_36;
    }

    return 1;
  }

  if (!*(a1 + 32) && v3 == 6 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v22 = v8 | v6;
    if (!(v22 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v23 = v22 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v23)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v23 || !*(a2 + 32) && v5 == 3 && !v23 || !*(a2 + 32) && v5 == 4 && !v23 || !*(a2 + 32) && v5 == 5 && !v23)
    {
      return 0;
    }

    if (*(a2 + 32) || v5 != 6 || v23)
    {
LABEL_39:
      *(a2 + 32);
      return 0;
    }

    return 1;
  }

  if (!*(a1 + 32) && v3 == 7 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v24 = v8 | v6;
    if (!(v24 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v25 = v24 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v25)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v25) && (*(a2 + 32) || v5 != 3 || v25) && (*(a2 + 32) || v5 != 4 || v25) && (*(a2 + 32) || v5 != 5 || v25) && (*(a2 + 32) || v5 != 6 || v25) && !*(a2 + 32) && v5 == 7 && !v25;
  }

  if (!*(a1 + 32) && v3 == 8 && !v15)
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v26 = v8 | v6;
    if (!(v26 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v27 = v26 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v27)
    {
      return 0;
    }

    return (*(a2 + 32) || v5 != 2 || v27) && (*(a2 + 32) || v5 != 3 || v27) && (*(a2 + 32) || v5 != 4 || v27) && (*(a2 + 32) || v5 != 5 || v27) && (*(a2 + 32) || v5 != 6 || v27) && (*(a2 + 32) || v5 != 7 || v27) && !*(a2 + 32) && v5 == 8 && !v27;
  }

  if (*(a1 + 32) || v3 != 9 || v15)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      return 0;
    }

    v32 = v8 | v6;
    if (!(v32 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v33 = v32 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v33)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v33 || !*(a2 + 32) && v5 == 3 && !v33 || !*(a2 + 32) && v5 == 4 && !v33 || !*(a2 + 32) && v5 == 5 && !v33 || !*(a2 + 32) && v5 == 6 && !v33 || !*(a2 + 32) && v5 == 7 && !v33 || !*(a2 + 32) && v5 == 8 && !v33)
    {
      return 0;
    }

    return v5 != 9 || v33 != 0 || v9 != 0;
  }

  else
  {
    if (!*(a2 + 33))
    {
      return 0;
    }

    v28 = v8 | v6;
    if (!(v28 | v5 | v7) && !*(a2 + 32))
    {
      return 0;
    }

    v29 = v28 | v7;
    if (!*(a2 + 32) && v5 == 1 && !v29)
    {
      return 0;
    }

    if (!*(a2 + 32) && v5 == 2 && !v29 || !*(a2 + 32) && v5 == 3 && !v29 || !*(a2 + 32) && v5 == 4 && !v29 || !*(a2 + 32) && v5 == 5 && !v29 || !*(a2 + 32) && v5 == 6 && !v29 || !*(a2 + 32) && v5 == 7 && !v29 || !*(a2 + 32) && v5 == 8 && !v29)
    {
      return 0;
    }

    return v5 == 9 && v29 == 0 && v9 == 0;
  }
}

uint64_t TextElement.Font.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  if (*(v0 + 33) == 1)
  {
    if (v4 | v2 | v1 | v3 || *(v0 + 32))
    {
      v8 = v4 | v2 | v3;
      if (*(v0 + 32))
      {
        v9 = 0;
      }

      else
      {
        v9 = v1 == 1;
      }

      if (v9 && v8 == 0)
      {
        v6 = 1;
      }

      else if (*(v0 + 32) || v1 != 2 || v8)
      {
        if (*(v0 + 32) || v1 != 3 || v8)
        {
          if (*(v0 + 32) || v1 != 4 || v8)
          {
            if (*(v0 + 32) || v1 != 5 || v8)
            {
              if (*(v0 + 32) || v1 != 6 || v8)
              {
                if (*(v0 + 32) || v1 != 7 || v8)
                {
                  if (*(v0 + 32) || v1 != 8 || v8)
                  {
                    if (*(v0 + 32) || v1 != 9 || v8)
                    {
                      v6 = 10;
                    }

                    else
                    {
                      v6 = 9;
                    }
                  }

                  else
                  {
                    v6 = 8;
                  }
                }

                else
                {
                  v6 = 7;
                }
              }

              else
              {
                v6 = 6;
              }
            }

            else
            {
              v6 = 5;
            }
          }

          else
          {
            v6 = 4;
          }
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x26D65C340](v6);
  }

  else
  {
    MEMORY[0x26D65C340](11);
    sub_26A425534();
    sub_26A0E8D94();
    sub_26A424B44();
    sub_26A0E8D40();
    return sub_26A424B44();
  }
}

uint64_t TextElement.Font.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_26A425504();
  TextElement.Font.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A32D920()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  sub_26A425504();
  TextElement.Font.hash(into:)();
  return sub_26A425554();
}

uint64_t TextElement.Font.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 33) == 1)
  {
    if (v3 | v2 | v1 | v4 || *(v0 + 32))
    {
      v7 = v3 | v2 | v4;
      if (!*(v0 + 32) && (v1 == 1 ? (v8 = v7 == 0) : (v8 = 0), v8))
      {
        return 0x656C746974;
      }

      else if (*(v0 + 32) || v1 != 2 || v7)
      {
        if (*(v0 + 32) || v1 != 3 || v7)
        {
          if (*(v0 + 32) || v1 != 4 || v7)
          {
            if (*(v0 + 32) || v1 != 5 || v7)
            {
              if (*(v0 + 32) || v1 != 6 || v7)
              {
                if (*(v0 + 32) || v1 != 7 || v7)
                {
                  if (*(v0 + 32) || v1 != 8 || v7)
                  {
                    v10 = v1 == 9 && v7 == 0;
                    if (*(v0 + 32) == 0 && v10)
                    {
                      return 0x6E6F6974706163;
                    }

                    else
                    {
                      return 0x326E6F6974706163;
                    }
                  }

                  else
                  {
                    return 0x65746F6E746F6F66;
                  }
                }

                else
                {
                  return 0x74756F6C6C6163;
                }
              }

              else
              {
                return 2036625250;
              }
            }

            else
            {
              return 0x6C64616568627573;
            }
          }

          else
          {
            return 0x656E696C64616568;
          }
        }

        else
        {
          return 0x33656C746974;
        }
      }

      else
      {
        return 0x32656C746974;
      }
    }

    else
    {
      return 0x746954656772616CLL;
    }
  }

  else
  {
    v6 = *v0;
    OUTLINED_FUNCTION_33_14();
    sub_26A424EF4();
    MEMORY[0x26D65BA70](0x73286D6574737973, 0xED0000203A657A69);
    sub_26A424DC4();
    MEMORY[0x26D65BA70](0x746867696577202CLL, 0xEA0000000000203ALL);
    _ProtoTextElement.Font.Weight.description.getter();
    OUTLINED_FUNCTION_53_13();

    MEMORY[0x26D65BA70](0x6E6769736564202CLL, 0xEA0000000000203ALL);
    _ProtoTextElement.Font.Design.description.getter();
    OUTLINED_FUNCTION_53_13();

    OUTLINED_FUNCTION_38_14();
    return v11;
  }
}

uint64_t _ProtoTextElement.Font.Weight.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 0x6B63616C62;
    switch(*v0)
    {
      case 1:
        return result;
      case 2:
        result = 1684828002;
        break;
      case 3:
        result = 0x7976616568;
        break;
      case 4:
        result = 0x746867696CLL;
        break;
      case 5:
        result = 0x6D756964656DLL;
        break;
      case 6:
        result = 0x646C6F62696D6573;
        break;
      case 7:
        result = 1852401780;
        break;
      case 8:
        result = 0x67696C6172746C75;
        break;
      default:
        result = 0x72616C75676572;
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_26A424EF4();

    OUTLINED_FUNCTION_17_21();
    sub_26A4251B4();
    OUTLINED_FUNCTION_53_13();

    OUTLINED_FUNCTION_38_14();
    return v2;
  }

  return result;
}

uint64_t _ProtoTextElement.Font.Design.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x636170736F6E6F6DLL;
    if (v1 == 1)
    {
      v2 = 0x6465646E756F72;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x6669726573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_26A424EF4();

    OUTLINED_FUNCTION_17_21();
    sub_26A4251B4();
    OUTLINED_FUNCTION_53_13();

    OUTLINED_FUNCTION_38_14();
    return v4;
  }
}

void String.asTextElement()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_51_15();
  a51 = v52;
  a52 = v53;
  OUTLINED_FUNCTION_22_21();
  sub_26A32EF10();
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v54, v55);
  OUTLINED_FUNCTION_35_20();
  sub_26A0E48F0(&a29, &qword_2803729A0, &unk_26A43DE80);
  sub_26A0E48F0(&a24, &qword_2803729A0, &unk_26A43DE80);
  OUTLINED_FUNCTION_50_14();
}

void static TextElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v161 = type metadata accessor for Color();
  v27 = OUTLINED_FUNCTION_12(v161);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_49(v31 - v30);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D990, &qword_26A43DEE0);
  OUTLINED_FUNCTION_12(v159);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_49(&v153 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v37 = OUTLINED_FUNCTION_41(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_49(&v153 - v42);
  v170 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  v43 = OUTLINED_FUNCTION_12(v170);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_49(&v153 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v49 = OUTLINED_FUNCTION_41(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  v169 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_49(&v153 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  v58 = OUTLINED_FUNCTION_41(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  v171 = v62;
  MEMORY[0x28223BE20](v63);
  v65 = &v153 - v64;
  v66 = *(v26 + 8);
  v67 = *(v26 + 16);
  *&v173 = *v26;
  *(&v173 + 1) = v66;
  LOBYTE(v174) = v67;
  sub_26A148B68(v173, v66, v67);
  TextElement.Value.init(proto:)(&v173, &v177);
  v173 = v177;
  LOBYTE(v174) = v178;
  v68 = *v24;
  v69 = *(v24 + 8);
  v172 = v24;
  v70 = *(v24 + 16);
  v181 = v68;
  v182 = v69;
  v183 = v70;
  sub_26A148B68(v68, v69, v70);
  TextElement.Value.init(proto:)(&v181, v184);
  v181 = v184[0];
  v182 = v184[1];
  v183 = v185;
  v71 = static TextElement.Value.== infix(_:_:)(&v173, &v181);
  sub_26A0D6740();
  OUTLINED_FUNCTION_45_9();
  sub_26A0D6740();
  if ((v71 & 1) == 0)
  {
    goto LABEL_39;
  }

  v72 = type metadata accessor for _ProtoTextElement(0);
  v73 = *(v72 + 32);
  sub_26A32EF10();
  v74 = type metadata accessor for _ProtoTextElement.Font(0);
  v75 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v74);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v77, v78, v79);
  if (EnumTagSinglePayload == 1)
  {
    v80 = v26;
    v81 = 0;
    v156 = 0u;
    v155 = 0u;
  }

  else
  {
    v82 = v171;
    v80 = v26;
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v74);
    TextElement.Font.init(_:)(v82, &v177);
    v155 = v178;
    v156 = v177;
    v81 = v179;
    v75 = v180;
  }

  v86 = v172;
  v87 = *(v72 + 32);
  sub_26A32EF10();
  v88 = __swift_getEnumTagSinglePayload(v20, 1, v74);
  OUTLINED_FUNCTION_187_0(v20);
  if (v88 == 1)
  {
    if (v75)
    {
      goto LABEL_14;
    }

    LOBYTE(v89) = 0;
    v90 = 0;
    v91 = 0uLL;
    v92 = 1;
    v93 = 0uLL;
  }

  else
  {
    v94 = v171;
    _ProtoTextElement.font.getter();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v74);
    TextElement.Font.init(_:)(v94, &v177);
    v92 = v180;
    if (v75)
    {
      if ((v180 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_14;
    }

    v91 = v177;
    v93 = v178;
    v90 = v179;
    v89 = HIBYTE(v179) & 1;
  }

  v177 = v156;
  v178 = v155;
  v179 = v81;
  v180 = v75;
  if (v92)
  {
    goto LABEL_39;
  }

  v173 = v91;
  v174 = v93;
  v175 = v90;
  v176 = v89;
  if (!static TextElement.Font.== infix(_:_:)(&v177, &v173))
  {
    goto LABEL_39;
  }

LABEL_14:
  v98 = *(v72 + 36);
  v99 = &qword_26A43DE90;
  v100 = v80;
  v101 = v168;
  sub_26A32EF10();
  v102 = v170;
  v103 = __swift_getEnumTagSinglePayload(v101, 1, v170);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v104, v105, v106);
  v154 = v100;
  if (v103 == 1)
  {
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v109 = v163;
    sub_26A32EF10();
    v110 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v110, v111, v102);
    if (v137)
    {
      OUTLINED_FUNCTION_39_16(&a14);
      v112 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v112, v113, v102);
      if (!v137)
      {
        sub_26A0E48F0(v109, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      v99 = v164;
      sub_26A32F3AC();
    }

    v107 = *v99;
    v108 = *(v99 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v99, v114);
  }

  v115 = *(v72 + 36);
  v116 = &qword_26A43DE90;
  v117 = v169;
  sub_26A32EF10();
  v118 = __swift_getEnumTagSinglePayload(v117, 1, v102);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v119, v120, v121);
  if (v118 == 1)
  {
    if (v103 != 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v122 = v165;
    sub_26A32EF10();
    v123 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v123, v124, v102);
    if (v137)
    {
      OUTLINED_FUNCTION_39_16(&a16);
      v125 = OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_37(v125, v126, v102);
      if (!v137)
      {
        sub_26A0E48F0(v122, &qword_2803729A8, &qword_26A43DE90);
      }
    }

    else
    {
      v116 = v166;
      sub_26A32F3AC();
    }

    v127 = *v116;
    v128 = *(v116 + 8);
    OUTLINED_FUNCTION_1_53();
    sub_26A32F354(v116, v129);
    if (v103 == 1 || !sub_26A257DA8(v107, v108, v127))
    {
      goto LABEL_39;
    }
  }

  v130 = v160;
  TextElement.fontColor.getter();
  v131 = v167;
  TextElement.fontColor.getter();
  v132 = *(v159 + 48);
  v133 = v162;
  sub_26A32EF10();
  sub_26A32EF10();
  v134 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v134, v135, v161);
  if (!v137)
  {
    v136 = v158;
    sub_26A32EF10();
    OUTLINED_FUNCTION_15(v133 + v132);
    if (!v137)
    {
      v138 = v157;
      sub_26A32F3AC();
      v139 = static _ProtoColor.== infix(_:_:)();
      sub_26A32F354(v138, type metadata accessor for Color);
      sub_26A0E48F0(v167, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v130, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A32F354(v136, type metadata accessor for Color);
      sub_26A0E48F0(v133, &qword_28036CBA0, &qword_26A4265B0);
      if ((v139 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    OUTLINED_FUNCTION_187_0(v167);
    OUTLINED_FUNCTION_187_0(v130);
    sub_26A32F354(v136, type metadata accessor for Color);
LABEL_38:
    sub_26A0E48F0(v133, &qword_28036D990, &qword_26A43DEE0);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_187_0(v131);
  OUTLINED_FUNCTION_187_0(v130);
  OUTLINED_FUNCTION_15(v133 + v132);
  if (!v137)
  {
    goto LABEL_38;
  }

  sub_26A0E48F0(v133, &qword_28036CBA0, &qword_26A4265B0);
LABEL_41:
  v140 = v154;
  TextElement.bold.getter();
  v142 = v141;
  v143 = v141;
  TextElement.bold.getter();
  if (v143 == 2)
  {
    OUTLINED_FUNCTION_47_14();
    if (!v137)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_14();
    if (v137 || ((v144 ^ v142) & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  TextElement.italic.getter();
  v146 = v145;
  v147 = v145;
  TextElement.italic.getter();
  if (v147 == 2)
  {
    OUTLINED_FUNCTION_47_14();
    if (!v137)
    {
      goto LABEL_39;
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_14();
    if (v137 || ((v148 ^ v146) & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  if (*(*(v140 + 24) + 16))
  {
  }

  else
  {
    v149 = &unk_287B014A0;
  }

  v150 = sub_26A10BE7C(v149);
  if (*(*(v86 + 24) + 16))
  {
  }

  else
  {
    v151 = &unk_287B014A0;
  }

  v152 = sub_26A10BE7C(v151);
  sub_26A290AE0(v150, v152);

LABEL_39:
  OUTLINED_FUNCTION_75();
}

uint64_t TextElement.hash(into:)()
{
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v0, v1);
  OUTLINED_FUNCTION_133();

  return sub_26A424B44();
}

uint64_t TextElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_0_62();
  sub_26A32F15C(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A32EAE8()
{
  sub_26A425504();
  type metadata accessor for _ProtoTextElement(0);
  sub_26A32F15C(&qword_2803729C8, type metadata accessor for _ProtoTextElement);
  sub_26A424B44();
  return sub_26A425554();
}

BOOL sub_26A32EB70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TextElement();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 8))(a4, a5, v11);
  v14 = *(v13 + 3);
  if (v14[2])
  {
    v15 = *(v13 + 3);
  }

  else
  {
    v14 = &unk_287B02380;
  }

  sub_26A32F354(v13, type metadata accessor for TextElement);
  v16 = sub_26A165034(a2, a3 & 1, v14);

  return v16;
}

BOOL sub_26A32ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextElement();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v7);
  v10 = *(v9 + 3);
  if (v10[2])
  {
    v11 = *(v9 + 3);
  }

  else
  {
    v10 = &unk_287B023B0;
  }

  sub_26A32F354(v9, type metadata accessor for TextElement);
  v12 = v10[2] + 1;
  v13 = 4;
  do
  {
    if (!--v12)
    {
      break;
    }

    v14 = v10[v13];
    v13 += 2;
  }

  while (v14);
  v15 = v12 != 0;

  return v15;
}

uint64_t type metadata accessor for TextElement()
{
  result = qword_2803729F8;
  if (!qword_2803729F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A32EE30()
{
  OUTLINED_FUNCTION_131_0();
  v3 = v2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

float sub_26A32EE88(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_26A32EF10()
{
  OUTLINED_FUNCTION_131_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

unint64_t sub_26A32EFB4()
{
  result = qword_2803729D0;
  if (!qword_2803729D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803729D0);
  }

  return result;
}

unint64_t sub_26A32F00C()
{
  result = qword_2803729D8;
  if (!qword_2803729D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803729D8);
  }

  return result;
}

uint64_t sub_26A32F15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A32F1CC()
{
  result = type metadata accessor for _ProtoTextElement(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextElement.Font(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TextElement.Font(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextElement.Font(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 34) = v3;
  return result;
}

uint64_t sub_26A32F2EC(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A32F308(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    v2 = 1;
    *result = (a2 - 1);
    *(result + 8) = 0;
  }

  else
  {
    v2 = 0;
  }

  *(result + 33) = v2;
  return result;
}

uint64_t sub_26A32F354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A32F3AC()
{
  OUTLINED_FUNCTION_131_0();
  v3 = v2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_15_31()
{
  v2 = *v0;

  return sub_26A32F354(v0, type metadata accessor for _ProtoOptionalBool);
}

double OUTLINED_FUNCTION_22_21()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 94) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_28()
{

  return type metadata accessor for _ProtoTextElement(0);
}

uint64_t OUTLINED_FUNCTION_35_20()
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_38_14()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_39_16@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = 0;
  *(v4 + 8) = v1;
  v5 = v4 + *(v2 + 20);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_40_17()
{

  return sub_26A32EF10();
}

uint64_t OUTLINED_FUNCTION_52_17()
{

  return type metadata accessor for _ProtoTextElement(0);
}

void OUTLINED_FUNCTION_53_13()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t _ProtoTextElement.hasFont.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 32));
  OUTLINED_FUNCTION_76_8();
  v7 = type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.font.getter()
{
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 32));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_38_0();
  if (v7)
  {
    type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_74_9();
    result = OUTLINED_FUNCTION_38_0();
    if (!v7)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.hasWeight.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 36));
  OUTLINED_FUNCTION_76_8();
  v7 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_7();
  v8 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v8 + 36));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_38_0();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    OUTLINED_FUNCTION_74_9();
    result = OUTLINED_FUNCTION_38_0();
    if (!v9)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t sub_26A32FA04()
{
  OUTLINED_FUNCTION_45_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t _ProtoTextElement.hasColor.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 40));
  OUTLINED_FUNCTION_76_8();
  v7 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.color.getter()
{
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 40));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_38_0();
  if (v7)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_74_9();
    result = OUTLINED_FUNCTION_38_0();
    if (!v7)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.hasIsItalic.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 44));
  OUTLINED_FUNCTION_76_8();
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.isItalic.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_7();
  v8 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v8 + 44));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_38_0();
  if (v9)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_74_9();
    result = OUTLINED_FUNCTION_38_0();
    if (!v9)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.hasIsBold.getter()
{
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_7();
  v6 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v6 + 48));
  OUTLINED_FUNCTION_76_8();
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_202_1();
}

uint64_t _ProtoTextElement.isBold.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_7();
  v8 = type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_176(*(v8 + 48));
  OUTLINED_FUNCTION_75_9();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_38_0();
  if (v9)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_74_9();
    result = OUTLINED_FUNCTION_38_0();
    if (!v9)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A32FA04();
  }

  return result;
}

uint64_t _ProtoTextElement.font.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoTextElement(v0) + 32);
  sub_26A13440C();
  OUTLINED_FUNCTION_36_14();
  sub_26A32FA04();
  type metadata accessor for _ProtoTextElement.Font(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTextElement.weight.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoTextElement(v0) + 36);
  sub_26A13440C();
  sub_26A32FA04();
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTextElement.color.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoTextElement(v0) + 40);
  sub_26A13440C();
  sub_26A32FA04();
  type metadata accessor for _ProtoColor(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTextElement.isItalic.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoTextElement(v0) + 44);
  sub_26A13440C();
  OUTLINED_FUNCTION_40_18();
  type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTextElement.isBold.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoTextElement(v0) + 48);
  sub_26A13440C();
  OUTLINED_FUNCTION_40_18();
  type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTextElement.Font.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = a1 + *(type metadata accessor for _ProtoTextElement.Font(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoTextElement.Font.named.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_26A13440C();
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

uint64_t _ProtoTextElement.Font.system.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_39_17();
  OUTLINED_FUNCTION_175();
  sub_26A32FA04();
  v0 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_8_24();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
}

uint64_t _ProtoTextElement.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_26A148B68(v2, v3, v4);
}

uint64_t _ProtoTextElement.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_26A0D6768(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t _ProtoTextElement.plain.getter()
{
  OUTLINED_FUNCTION_37_14();
  if (!v2 && (v1 & 1) == 0)
  {
    v3 = *v0;
    v4 = v0[1];
    OUTLINED_FUNCTION_175();
    sub_26A28A784();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A330328(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoTextElement.plain.setter(v1, v2);
}

void (*_ProtoTextElement.plain.modify(void *a1))()
{
  a1[2] = v1;
  OUTLINED_FUNCTION_37_14();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    OUTLINED_FUNCTION_125();
    sub_26A28A784();
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_26A3303DC;
}

uint64_t _ProtoTextElement.attributed.getter()
{
  OUTLINED_FUNCTION_37_14();
  if (!v2 && (v1 & 1) != 0)
  {
    v3 = *v0;
    v4 = v0[1];
    OUTLINED_FUNCTION_175();
    sub_26A28A784();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A33042C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoTextElement.attributed.setter(v1, v2);
}

void (*_ProtoTextElement.attributed.modify(void *a1))()
{
  a1[2] = v1;
  OUTLINED_FUNCTION_37_14();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    OUTLINED_FUNCTION_125();
    sub_26A28A784();
  }

  *a1 = v6;
  a1[1] = v5;
  return sub_26A3304E0;
}

void sub_26A3304E8()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *v0;
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  if (v9)
  {
    v10 = v0[1];

    sub_26A0D6768(v6, v7, v8);
    *v4 = v5;
    *(v4 + 8) = v3;
    *(v4 + 16) = v2;
    OUTLINED_FUNCTION_67_1();
  }

  else
  {
    sub_26A0D6768(*v4, *(v4 + 8), *(v4 + 16));
    *v4 = v5;
    *(v4 + 8) = v3;
    *(v4 + 16) = v2;
    OUTLINED_FUNCTION_67_1();
  }
}

void _ProtoTextElement.font.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoTextElement.Font(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_35_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_51_16(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_72_6();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoTextElement.clearFont()()
{
  v0 = *(OUTLINED_FUNCTION_73_10() + 32);
  sub_26A13440C();
  type metadata accessor for _ProtoTextElement.Font(0);
  v1 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.FontWeight.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for _ProtoTextElement.FontWeight(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoTextElement.weight.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoTextElement.FontWeight(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_3(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_51_16(v14);
  OUTLINED_FUNCTION_41_10(*(v15 + 36));
  OUTLINED_FUNCTION_4_11();
  if (v16)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    OUTLINED_FUNCTION_72_6();
    OUTLINED_FUNCTION_4_11();
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A3308EC()
{
  OUTLINED_FUNCTION_45_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A330944()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

Swift::Void __swiftcall _ProtoTextElement.clearWeight()()
{
  v0 = *(OUTLINED_FUNCTION_73_10() + 36);
  sub_26A13440C();
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  v1 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoTextElement.color.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoColor(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_35_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_51_16(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 40));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_72_6();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoTextElement.clearColor()()
{
  v0 = *(OUTLINED_FUNCTION_73_10() + 40);
  sub_26A13440C();
  type metadata accessor for _ProtoColor(0);
  v1 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoTextElement.isItalic.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoOptionalBool(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_3(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_51_16(v14);
  OUTLINED_FUNCTION_41_10(*(v15 + 44));
  OUTLINED_FUNCTION_4_11();
  if (v16)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_72_6();
    OUTLINED_FUNCTION_4_11();
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoTextElement.clearIsItalic()()
{
  v0 = *(OUTLINED_FUNCTION_73_10() + 44);
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v1 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoTextElement.isBold.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoOptionalBool(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_3(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_51_16(v14);
  OUTLINED_FUNCTION_41_10(*(v15 + 48));
  OUTLINED_FUNCTION_4_11();
  if (v16)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_72_6();
    OUTLINED_FUNCTION_4_11();
    if (!v16)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A32FA04();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A330E70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_157();
    sub_26A3308EC();
    sub_26A13440C();
    sub_26A32FA04();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_26A330944();
  }

  else
  {
    sub_26A13440C();
    sub_26A32FA04();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

Swift::Void __swiftcall _ProtoTextElement.clearIsBold()()
{
  v0 = *(OUTLINED_FUNCTION_73_10() + 48);
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v1 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTextElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 24);

  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoTextElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTextElement(v0) + 28);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t static _ProtoTextElement.OneOf_Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v11 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v8 = sub_26A425354();
        OUTLINED_FUNCTION_125();
        sub_26A28A784();
        OUTLINED_FUNCTION_246();
        sub_26A28A784();
        OUTLINED_FUNCTION_246();
        sub_26A0D6740();
        OUTLINED_FUNCTION_125();
        goto LABEL_16;
      }

      sub_26A28A784();
      OUTLINED_FUNCTION_246();
      sub_26A28A784();
      OUTLINED_FUNCTION_246();
      sub_26A0D6740();
      OUTLINED_FUNCTION_246();
      sub_26A0D6740();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_125();
    sub_26A28A784();
    OUTLINED_FUNCTION_246();
    sub_26A28A784();
    OUTLINED_FUNCTION_246();
    sub_26A0D6740();
    OUTLINED_FUNCTION_125();
    sub_26A0D6740();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v9 = 1;
    OUTLINED_FUNCTION_8_24();
    sub_26A28A784();
    OUTLINED_FUNCTION_8_24();
    sub_26A28A784();
    OUTLINED_FUNCTION_8_24();
    sub_26A0D6740();
    OUTLINED_FUNCTION_8_24();
    sub_26A0D6740();
    return v9;
  }

  OUTLINED_FUNCTION_246();
  v8 = sub_26A425354();
  OUTLINED_FUNCTION_125();
  sub_26A28A784();
  OUTLINED_FUNCTION_8_24();
  sub_26A28A784();
  OUTLINED_FUNCTION_8_24();
  sub_26A0D6740();
  OUTLINED_FUNCTION_125();
LABEL_16:
  sub_26A0D6740();
  return v8 & 1;
}

uint64_t sub_26A331288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoTextElement.Font.named.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_12();
  v9 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v1, 1, v9);
  if (v10)
  {
    result = sub_26A13440C();
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v12 = *v1;
      v13 = *(v1 + 8);
      goto LABEL_8;
    }

    result = sub_26A330944();
  }

  v12 = 0;
  v13 = 1;
LABEL_8:
  *a1 = v12;
  *(a1 + 8) = v13;
  return result;
}

uint64_t sub_26A331418@<X0>(uint64_t a1@<X8>)
{
  result = _ProtoTextElement.Font.named.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26A33145C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return _ProtoTextElement.Font.named.setter(&v3);
}

uint64_t _ProtoTextElement.Font.named.modify(void *a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  OUTLINED_FUNCTION_125();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v4[4] = v8;
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (v9)
  {
    sub_26A13440C();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v11 = *v7;
      v12 = v7[8];
      goto LABEL_8;
    }

    sub_26A330944();
  }

  v11 = 0;
  v12 = 1;
LABEL_8:
  *v4 = v11;
  *(v4 + 8) = v12;
  return OUTLINED_FUNCTION_66_2();
}

void sub_26A3315D8(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_26A13440C();
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_157();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t _ProtoTextElement.Font.system.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_12();
  v9 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v1, 1, v9);
  if (v10)
  {
    sub_26A13440C();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A32FA04();
    }

    sub_26A330944();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return OUTLINED_FUNCTION_70_7();
}

uint64_t sub_26A331780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A3308EC();
  return a7(v7);
}

uint64_t _ProtoTextElement.Font.SystemFont.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return OUTLINED_FUNCTION_70_7();
}

void _ProtoTextElement.Font.system.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoTextElement.Font.SystemFont(v7);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  v0[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[3] = v11;
  OUTLINED_FUNCTION_103();
  sub_26A1E05A8();
  v0[4] = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  OUTLINED_FUNCTION_4_11();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    *v11 = 0;
    v11[1] = 0;
    *(v11 + 16) = 1;
    v11[3] = 0;
    *(v11 + 32) = 1;
    v14 = v11 + *(v8 + 28);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A330944();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A32FA04();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A3319C0()
{
  OUTLINED_FUNCTION_69_1();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    v7 = (*v0)[3];
    sub_26A3308EC();
    sub_26A13440C();
    sub_26A32FA04();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_26A330944();
  }

  else
  {
    v11 = **v0;
    sub_26A13440C();
    OUTLINED_FUNCTION_39_17();
    sub_26A32FA04();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_67_1();

  free(v15);
}

uint64_t _ProtoTextElement.Font.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTextElement.Font(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t static _ProtoTextElement.Font.OneOf_Value.== infix(_:_:)()
{
  v0 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v7 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372AF8, &qword_26A43E308);
  OUTLINED_FUNCTION_41(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v27 + *(v21 + 56) - v22;
  sub_26A3308EC();
  sub_26A3308EC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A3308EC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v23[8];
      v24 = sub_26A257DA8(*v16, v16[8], *v23);
      goto LABEL_6;
    }

LABEL_8:
    sub_26A13440C();
    v24 = 0;
    return v24 & 1;
  }

  OUTLINED_FUNCTION_133();
  sub_26A3308EC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A330944();
    goto LABEL_8;
  }

  sub_26A32FA04();
  v24 = static _ProtoTextElement.Font.SystemFont.== infix(_:_:)(v13, v6);
  sub_26A330944();
  OUTLINED_FUNCTION_115();
  sub_26A330944();
LABEL_6:
  sub_26A330944();
  return v24 & 1;
}

uint64_t static _ProtoTextElement.Font.SystemFont.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_3();
  v5 = *(v4 + 8);
  v7 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v5 != 1)
        {
          return 0;
        }

        goto LABEL_7;
      case 2:
        if (v5 != 2)
        {
          return 0;
        }

        goto LABEL_7;
      case 3:
        if (v5 != 3)
        {
          return 0;
        }

        goto LABEL_7;
      case 4:
        if (v5 != 4)
        {
          return 0;
        }

        goto LABEL_7;
      case 5:
        if (v5 != 5)
        {
          return 0;
        }

        goto LABEL_7;
      case 6:
        if (v5 != 6)
        {
          return 0;
        }

        goto LABEL_7;
      case 7:
        if (v5 != 7)
        {
          return 0;
        }

        goto LABEL_7;
      case 8:
        if (v5 != 8)
        {
          return 0;
        }

        goto LABEL_7;
      default:
        if (!v5)
        {
          goto LABEL_7;
        }

        return 0;
    }
  }

  if (v5 != v7)
  {
    return 0;
  }

LABEL_7:
  v8 = *(v3 + 24);
  v9 = *(v2 + 24);
  if (*(v2 + 32) != 1)
  {
    if (v8 != v9)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

LABEL_17:
      v10 = *(type metadata accessor for _ProtoTextElement.Font.SystemFont(0) + 28);
      sub_26A424794();
      OUTLINED_FUNCTION_0_63();
      sub_26A335AC4();
      return OUTLINED_FUNCTION_14_7() & 1;
    }

    if (v8 == 2)
    {
      goto LABEL_17;
    }
  }

  else if (!v8)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_26A331FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A338238();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26A332040(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A336BF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26A3320C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A336C4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void _ProtoTextElement.Font.SystemFont.weight.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoTextElement.Font.SystemFont.weight.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void _ProtoTextElement.Font.SystemFont.design.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoTextElement.Font.SystemFont.design.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_26A3321E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_26A424794();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_26A332274()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 28);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoTextElement.Font.SystemFont.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTextElement.Font.SystemFont(v0) + 28);
  return OUTLINED_FUNCTION_51_5();
}

void _ProtoTextElement.FontWeight.value.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoTextElement.FontWeight.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_26A33237C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_26A424794();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_26A332410()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoTextElement.FontWeight.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTextElement.FontWeight(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoTextElement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  v2 = type metadata accessor for _ProtoTextElement(0);
  v3 = a1 + v2[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = v2[8];
  type metadata accessor for _ProtoTextElement.Font(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[9];
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[10];
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = v2[11];
  v20 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = v2[12];
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
}

uint64_t static _ProtoTextElement.Font.NamedFont.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A332640@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoTextElement.Font.NamedFont.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static _ProtoTextElement.Font.Weight.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A3326F8@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoTextElement.Font.Weight.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A332764()
{
  OUTLINED_FUNCTION_45_3();
  swift_beginAccess();
  v2 = *v0;
  *v0 = v1;
}

uint64_t static _ProtoTextElement.Font.Design.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A3327F8@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoTextElement.Font.Design.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A33283C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A20);
  __swift_project_value_buffer(v0, qword_280372A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A42B0D0;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "plain";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "attributed";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "font";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v25 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "weight";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v25 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "color";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v25 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_italic";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v17 = *MEMORY[0x277D21888];
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_bold";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "idioms";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "line_limit";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A2E7F54();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A332CC8();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A332D7C();
        break;
      case 5:
        OUTLINED_FUNCTION_5_6();
        sub_26A332E30();
        break;
      case 6:
        OUTLINED_FUNCTION_5_6();
        sub_26A332EE4();
        break;
      case 7:
        OUTLINED_FUNCTION_5_6();
        sub_26A332F98();
        break;
      case 8:
        OUTLINED_FUNCTION_5_6();
        sub_26A33304C();
        break;
      case 9:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A332CC8()
{
  v0 = *(type metadata accessor for _ProtoTextElement(0) + 32);
  type metadata accessor for _ProtoTextElement.Font(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332D7C()
{
  v0 = *(type metadata accessor for _ProtoTextElement(0) + 36);
  type metadata accessor for _ProtoTextElement.FontWeight(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332E30()
{
  v0 = *(type metadata accessor for _ProtoTextElement(0) + 40);
  type metadata accessor for _ProtoColor(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332EE4()
{
  v0 = *(type metadata accessor for _ProtoTextElement(0) + 44);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t sub_26A332F98()
{
  v0 = *(type metadata accessor for _ProtoTextElement(0) + 48);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A335AC4();
  return sub_26A424944();
}

uint64_t _ProtoTextElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_37_14();
  if (v2 || ((v3 = OUTLINED_FUNCTION_3_5(), (v4 & 1) == 0) ? (result = sub_26A2E80B0(v3)) : (result = sub_26A2E80FC(v3)), !v0))
  {
    v6 = OUTLINED_FUNCTION_3_5();
    result = sub_26A3331CC(v6, v7, v8, v9);
    if (!v0)
    {
      v10 = OUTLINED_FUNCTION_3_5();
      sub_26A3333AC(v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_3_5();
      sub_26A33358C(v14, v15, v16, v17);
      v18 = OUTLINED_FUNCTION_3_5();
      sub_26A33376C(v18, v19, v20, v21);
      v22 = OUTLINED_FUNCTION_3_5();
      sub_26A33394C(v22, v23, v24, v25);
      if (*(*(v1 + 24) + 16))
      {
        sub_26A11EF50();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249D4();
      }

      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_87();
        sub_26A424A34();
      }

      v26 = *(type metadata accessor for _ProtoTextElement(0) + 28);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A3331CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextElement.Font(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTextElement(0) + 32);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A3333AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTextElement(0) + 36);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A33358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoColor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTextElement(0) + 40);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A33376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTextElement(0) + 44);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t sub_26A33394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTextElement(0) + 48);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A32FA04();
  sub_26A335AC4();
  sub_26A424A84();
  return sub_26A330944();
}

uint64_t static _ProtoTextElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_110();
  v158 = type metadata accessor for _ProtoOptionalBool(v5);
  v6 = OUTLINED_FUNCTION_12(v158);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v153 = &v149 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  v154 = &v149 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FBC8, &unk_26A42EA70);
  v17 = OUTLINED_FUNCTION_12(v157);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v156 = &v149 - v21;
  v162 = type metadata accessor for _ProtoColor(0);
  v22 = OUTLINED_FUNCTION_12(v162);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v155 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_42();
  v159 = v31;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370908, &qword_26A432968);
  OUTLINED_FUNCTION_12(v161);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_42();
  v163 = v35;
  v167 = type metadata accessor for _ProtoTextElement.FontWeight(0);
  v36 = OUTLINED_FUNCTION_12(v167);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v160 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729A8, &qword_26A43DE90);
  OUTLINED_FUNCTION_41(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_42();
  v164 = v45;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372B00, &qword_26A43E310);
  OUTLINED_FUNCTION_12(v166);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_42();
  v168 = v49;
  v170 = type metadata accessor for _ProtoTextElement.Font(0);
  v50 = OUTLINED_FUNCTION_12(v170);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18();
  v165 = v54 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B0, &qword_26A43E300);
  OUTLINED_FUNCTION_41(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_42();
  v169 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372B08, &qword_26A43E318);
  OUTLINED_FUNCTION_12(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_141_0();
  v64 = *(v2 + 8);
  v65 = *(v2 + 16);
  v67 = *a2;
  v66 = *(a2 + 8);
  v68 = *(a2 + 16);
  if (v65 == 255)
  {
    v81 = OUTLINED_FUNCTION_41_15();
    sub_26A148B68(v81, v82, 255);
    if (v68 == 255)
    {
      v98 = OUTLINED_FUNCTION_106();
      sub_26A148B68(v98, v99, 255);
      v100 = OUTLINED_FUNCTION_41_15();
      sub_26A0D6768(v100, v101, 255);
      goto LABEL_10;
    }

    v83 = OUTLINED_FUNCTION_106();
    sub_26A148B68(v83, v84, v68);
LABEL_8:
    v93 = OUTLINED_FUNCTION_19_21();
    sub_26A0D6768(v93, v94, v95);
    v96 = OUTLINED_FUNCTION_106();
    sub_26A0D6768(v96, v97, v68);
    goto LABEL_34;
  }

  v173[0] = *v2;
  v173[1] = v64;
  v174 = v65;
  if (v68 == 255)
  {
    v85 = OUTLINED_FUNCTION_19_21();
    sub_26A148B68(v85, v86, v87);
    v88 = OUTLINED_FUNCTION_106();
    sub_26A148B68(v88, v89, 255);
    v90 = OUTLINED_FUNCTION_19_21();
    sub_26A148B68(v90, v91, v92);
    OUTLINED_FUNCTION_41_15();
    sub_26A0D6740();
    goto LABEL_8;
  }

  v171[0] = v67;
  v171[1] = v66;
  v150 = v2;
  v172 = v68 & 1;
  v69 = OUTLINED_FUNCTION_19_21();
  sub_26A148B68(v69, v70, v71);
  v72 = OUTLINED_FUNCTION_106();
  sub_26A148B68(v72, v73, v68);
  v74 = OUTLINED_FUNCTION_19_21();
  sub_26A148B68(v74, v75, v76);
  v77 = static _ProtoTextElement.OneOf_Value.== infix(_:_:)(v173, v171);
  OUTLINED_FUNCTION_106();
  v2 = v150;
  sub_26A0D6740();
  OUTLINED_FUNCTION_41_15();
  sub_26A0D6740();
  v78 = OUTLINED_FUNCTION_19_21();
  sub_26A0D6768(v78, v79, v80);
  if ((v77 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  v102 = type metadata accessor for _ProtoTextElement(0);
  v103 = v102[8];
  v104 = *(v60 + 48);
  sub_26A1E05A8();
  sub_26A1E05A8();
  v105 = OUTLINED_FUNCTION_72();
  v106 = v170;
  OUTLINED_FUNCTION_37(v105, v107, v170);
  if (v109)
  {
    OUTLINED_FUNCTION_37(v3 + v104, 1, v106);
    if (!v109)
    {
      goto LABEL_33;
    }

    v108 = v2;
    sub_26A13440C();
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v3 + v104, 1, v106);
    if (v109)
    {
      sub_26A330944();
      goto LABEL_33;
    }

    v108 = v2;
    OUTLINED_FUNCTION_36_14();
    sub_26A32FA04();
    v110 = static _ProtoTextElement.Font.== infix(_:_:)();
    sub_26A330944();
    sub_26A330944();
    sub_26A13440C();
    if ((v110 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v111 = v102[9];
  v112 = *(v166 + 48);
  v113 = v168;
  OUTLINED_FUNCTION_56_14();
  sub_26A1E05A8();
  v114 = OUTLINED_FUNCTION_72();
  v115 = v167;
  OUTLINED_FUNCTION_13_29(v114, v116);
  if (!v109)
  {
    v121 = v164;
    sub_26A1E05A8();
    OUTLINED_FUNCTION_13_29(v113 + v112, 1);
    if (v122)
    {
      sub_26A330944();
    }

    else
    {
      v125 = v160;
      sub_26A32FA04();
      v126 = *(v125 + 8);
      if (sub_26A257DA8(*v121, *(v121 + 8), *v125))
      {
        v127 = *(v115 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_0_63();
        sub_26A335AC4();
        LOBYTE(v127) = sub_26A424B64();
        sub_26A330944();
        OUTLINED_FUNCTION_157();
        sub_26A330944();
        sub_26A13440C();
        if ((v127 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      sub_26A330944();
      OUTLINED_FUNCTION_44();
      sub_26A330944();
    }

LABEL_33:
    sub_26A13440C();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_13_29(v113 + v112, 1);
  if (!v109)
  {
    goto LABEL_33;
  }

  sub_26A13440C();
LABEL_25:
  v117 = v102[10];
  v118 = *(v161 + 48);
  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_47_15();
  v119 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13_29(v119, v120);
  if (v109)
  {
    OUTLINED_FUNCTION_11_31();
    if (!v109)
    {
      goto LABEL_33;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_11_31();
    if (v128)
    {
      sub_26A330944();
      goto LABEL_33;
    }

    sub_26A32FA04();
    v129 = static _ProtoColor.== infix(_:_:)();
    sub_26A330944();
    sub_26A330944();
    sub_26A13440C();
    if ((v129 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v130 = v102[11];
  v131 = *(v157 + 48);
  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_47_15();
  v132 = OUTLINED_FUNCTION_72();
  v133 = v158;
  OUTLINED_FUNCTION_13_29(v132, v134);
  if (v109)
  {
    OUTLINED_FUNCTION_11_31();
    if (!v109)
    {
      goto LABEL_33;
    }

    sub_26A13440C();
  }

  else
  {
    v141 = v154;
    sub_26A1E05A8();
    OUTLINED_FUNCTION_11_31();
    if (v142)
    {
      goto LABEL_64;
    }

    v143 = v153;
    sub_26A32FA04();
    if (*v141 != *v143)
    {
LABEL_67:
      sub_26A330944();
      sub_26A330944();
      goto LABEL_33;
    }

    v144 = *(v133 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0_63();
    sub_26A335AC4();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_35_21();
    sub_26A330944();
    sub_26A330944();
    sub_26A13440C();
    if ((v144 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v135 = v102[12];
  v136 = *(v157 + 48);
  OUTLINED_FUNCTION_56_14();
  OUTLINED_FUNCTION_47_15();
  v137 = OUTLINED_FUNCTION_72();
  v138 = v158;
  OUTLINED_FUNCTION_13_29(v137, v139);
  if (!v109)
  {
    v145 = v152;
    sub_26A1E05A8();
    OUTLINED_FUNCTION_11_31();
    if (!v146)
    {
      v147 = v151;
      sub_26A32FA04();
      if (*v145 != *v147)
      {
        goto LABEL_67;
      }

      v148 = *(v138 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0_63();
      sub_26A335AC4();
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_35_21();
      sub_26A330944();
      sub_26A330944();
      sub_26A13440C();
      if ((v148 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_55;
    }

LABEL_64:
    sub_26A330944();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_11_31();
  if (!v109)
  {
    goto LABEL_33;
  }

  sub_26A13440C();
LABEL_55:
  if ((sub_26A0DB6A0(*(v108 + 24), *(a2 + 24)) & 1) != 0 && *(v108 + 32) == *(a2 + 32))
  {
    v140 = v102[7];
    sub_26A424794();
    OUTLINED_FUNCTION_0_63();
    sub_26A335AC4();
    v123 = sub_26A424B64();
    return v123 & 1;
  }

LABEL_34:
  v123 = 0;
  return v123 & 1;
}

uint64_t sub_26A3348A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A334924(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A334994()
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

uint64_t sub_26A334A54()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A48);
  __swift_project_value_buffer(v0, qword_280372A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "named";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "system";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.Font.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_175();
      OUTLINED_FUNCTION_87();
      sub_26A334E64(v5, v6, v7, v8);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A334CA8(v3, v4);
    }
  }

  return result;
}

uint64_t sub_26A334CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v13 = 0;
  v14 = 256;
  sub_26A338238();
  result = sub_26A424884();
  if (!v2 && (v14 & 0x100) == 0)
  {
    v15 = v13;
    v12 = v14;
    sub_26A1E05A8();
    v9 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v15;
    *(a2 + 8) = v12 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_26A334E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372C88, &qword_26A43EE98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A32FA04();
    sub_26A32FA04();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A32FA04();
      sub_26A32FA04();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A330944();
    }
  }

  sub_26A335AC4();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A32FA04();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A32FA04();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t _ProtoTextElement.Font.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  OUTLINED_FUNCTION_22_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_87();
    sub_26A335620(v11, v12, v13, v14);
    result = sub_26A330944();
    if (!v1)
    {
LABEL_2:
      v9 = v0 + *(type metadata accessor for _ProtoTextElement.Font(0) + 20);
      OUTLINED_FUNCTION_12_7();
      return sub_26A424774();
    }
  }

  else
  {
    OUTLINED_FUNCTION_87();
    result = sub_26A3354BC();
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26A3354BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_26A338238();
      return sub_26A4249F4();
    }

    result = sub_26A330944();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A335620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803729B8, &unk_26A43DED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextElement.Font.SystemFont(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A32FA04();
      sub_26A335AC4();
      sub_26A424A84();
      return sub_26A330944();
    }

    result = sub_26A330944();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoTextElement.Font.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v1 = type metadata accessor for _ProtoTextElement.Font.OneOf_Value(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_22_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372B10, &qword_26A43E320);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_59_7();
  v16 = *(v15 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v0, 1, v1);
  if (v17)
  {
    OUTLINED_FUNCTION_37(v0 + v16, 1, v1);
    if (v17)
    {
      sub_26A13440C();
LABEL_12:
      v20 = *(type metadata accessor for _ProtoTextElement.Font(0) + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0_63();
      sub_26A335AC4();
      v18 = OUTLINED_FUNCTION_14_7();
      return v18 & 1;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v0 + v16, 1, v1);
  if (v17)
  {
    sub_26A330944();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A32FA04();
  v19 = static _ProtoTextElement.Font.OneOf_Value.== infix(_:_:)();
  sub_26A330944();
  sub_26A330944();
  sub_26A13440C();
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_26A335AC4()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A335B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A335C10(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A335C80()
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

uint64_t sub_26A335D00()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A60);
  __swift_project_value_buffer(v0, qword_280372A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26A42B070;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "LARGE_TITLE";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "TITLE";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TITLE2";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TITLE3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "HEADLINE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SUBHEADLINE";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "BODY";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CALLOUT";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "FOOTNOTE";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CAPTION";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CAPTION2";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A336104()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A78);
  __swift_project_value_buffer(v0, qword_280372A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42B0D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REGULAR";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BLACK";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BOLD";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HEAVY";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LIGHT";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "MEDIUM";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SEMIBOLD";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "THIN";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "ULTRALIGHT";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A336494()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372A90);
  __swift_project_value_buffer(v0, qword_280372A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SERIF";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROUNDED";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MONOSPACED";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3366C0()
{
  if (qword_28036C5C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280372A38;
  v2 = qword_280372A40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D65BA70](0x466D65747379532ELL, 0xEB00000000746E6FLL);

  qword_280372AA8 = v1;
  unk_280372AB0 = v2;
  return result;
}

uint64_t sub_26A33678C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372AB8);
  __swift_project_value_buffer(v0, qword_280372AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "weight";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "design";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.Font.SystemFont.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A336A9C();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A336A34();
        break;
      case 1:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248D4();
        break;
    }
  }

  return result;
}

uint64_t _ProtoTextElement.Font.SystemFont.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v1 == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v0))
  {
    if (!*(v3 + 8) || (v6 = *(v3 + 8), v8 = *(v3 + 16), sub_26A336BF8(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v2))
    {
      if (!*(v3 + 24) || (v7 = *(v3 + 24), v9 = *(v3 + 32), sub_26A336C4C(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v2))
      {
        v5 = *(type metadata accessor for _ProtoTextElement.Font.SystemFont(0) + 28);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

unint64_t sub_26A336BF8()
{
  result = qword_280372B20;
  if (!qword_280372B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B20);
  }

  return result;
}

unint64_t sub_26A336C4C()
{
  result = qword_280372B28;
  if (!qword_280372B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B28);
  }

  return result;
}

uint64_t sub_26A336D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A336DA8(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A336E18()
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

uint64_t sub_26A336EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000015;
  *a5 = 0x800000026A44A4C0;
  return result;
}

uint64_t sub_26A336F50()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372AE0);
  __swift_project_value_buffer(v0, qword_280372AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26A424AA4();
}

uint64_t _ProtoTextElement.FontWeight.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A33712C();
    }
  }

  return result;
}

uint64_t _ProtoTextElement.FontWeight.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_26A336BF8(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v1))
  {
    v4 = *(type metadata accessor for _ProtoTextElement.FontWeight(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t static _ProtoTextElement.FontWeight.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 == 1)
        {
          goto LABEL_6;
        }

        return 0;
      case 2:
        if (v1 == 2)
        {
          goto LABEL_6;
        }

        return 0;
      case 3:
        if (v1 == 3)
        {
          goto LABEL_6;
        }

        return 0;
      case 4:
        if (v1 == 4)
        {
          goto LABEL_6;
        }

        return 0;
      case 5:
        if (v1 == 5)
        {
          goto LABEL_6;
        }

        return 0;
      case 6:
        if (v1 == 6)
        {
          goto LABEL_6;
        }

        return 0;
      case 7:
        if (v1 == 7)
        {
          goto LABEL_6;
        }

        return 0;
      case 8:
        if (v1 == 8)
        {
          goto LABEL_6;
        }

        return 0;
      default:
        if (v1)
        {
          return 0;
        }

        goto LABEL_6;
    }
  }

  if (v1 != v3)
  {
    return 0;
  }

LABEL_6:
  v5 = *(type metadata accessor for _ProtoTextElement.FontWeight(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_63();
  sub_26A335AC4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A33737C(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_125();
  sub_26A335AC4();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A337408()
{
  result = qword_280372B40;
  if (!qword_280372B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B40);
  }

  return result;
}

unint64_t sub_26A337460()
{
  result = qword_280372B48;
  if (!qword_280372B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B48);
  }

  return result;
}

unint64_t sub_26A3374BC()
{
  result = qword_280372B50;
  if (!qword_280372B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B50);
  }

  return result;
}

unint64_t sub_26A337514()
{
  result = qword_280372B58;
  if (!qword_280372B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B58);
  }

  return result;
}

unint64_t sub_26A337570()
{
  result = qword_280372B60;
  if (!qword_280372B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B60);
  }

  return result;
}

unint64_t sub_26A3375C8()
{
  result = qword_280372B68;
  if (!qword_280372B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372B68);
  }

  return result;
}

uint64_t sub_26A337A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A335AC4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A337BA4(uint64_t a1)
{
  v2 = sub_26A335AC4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A337C5C()
{
  sub_26A335AC4();

  return sub_26A4249B4();
}

void sub_26A337D04()
{
  sub_26A337EC0(319, &qword_280372C00, &type metadata for _ProtoTextElement.OneOf_Value, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A337EC0(319, &qword_28036D218, &type metadata for _ProtoIdiom, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26A424794();
      if (v2 <= 0x3F)
      {
        sub_26A337F10(319, &qword_280372C08, type metadata accessor for _ProtoTextElement.Font);
        if (v3 <= 0x3F)
        {
          sub_26A337F10(319, &qword_280372C10, type metadata accessor for _ProtoTextElement.FontWeight);
          if (v4 <= 0x3F)
          {
            sub_26A337F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor);
            if (v5 <= 0x3F)
            {
              sub_26A337F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A337EC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26A337F10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A337F9C()
{
  sub_26A337F10(319, &qword_280372C28, type metadata accessor for _ProtoTextElement.Font.OneOf_Value);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A33803C()
{
  result = type metadata accessor for _ProtoTextElement.Font.SystemFont(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A338100()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3381BC()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A338238()
{
  result = qword_280372C80;
  if (!qword_280372C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280372C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_18()
{

  return sub_26A32FA04();
}

uint64_t OUTLINED_FUNCTION_47_15()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_51_16(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for _ProtoTextElement(0);
}

uint64_t OUTLINED_FUNCTION_56_14()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_70_7()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = v0 + *(type metadata accessor for _ProtoTextElement.Font.SystemFont(0) + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_72_6()
{
  v3 = v0 + *(v1 + 20);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_73_10()
{

  return type metadata accessor for _ProtoTextElement(0);
}

uint64_t OUTLINED_FUNCTION_74_9()
{
  v3 = v0 + *(v1 + 20);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_75_9()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return sub_26A1E05A8();
}

uint64_t sub_26A3384C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  v6 = *(v18 + 16);
  if (v6 == 1)
  {
    v8 = 0xE100000000000000;
    v9 = 121;
  }

  else
  {
    if (!v6)
    {
    }

    v8 = 0xE300000000000000;
    v9 = 7562601;
  }

  v15 = *(v18 + 16);

  v16 = sub_26A4251B4();
  v17 = v10;
  MEMORY[0x26D65BA70](0x72746E6520, 0xE500000000000000);
  MEMORY[0x26D65BA70](v9, v8);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960) + 28);
  sub_26A10C56C();
  v12 = *(*(v3 + v11) + 16);
  sub_26A10C9A0(v12);

  v13 = *(v3 + v11);
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 32 * v12);
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v16;
  v14[7] = v17;
  *(v3 + v11) = v13;
  return result;
}

uint64_t TextInput.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t TextInput.initialValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t TextInput.placeholderText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_175();
}

uint64_t TextInput.labelText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTextProperty(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v17 = *(OUTLINED_FUNCTION_17_22() + 48);
  sub_26A10FD9C();
  v18 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v15);
    if (v20)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = 0;
      v21 = v8 + v2[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v22 = v2[8];
      v23 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
      v27 = v2[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
      OUTLINED_FUNCTION_23(v15);
      if (!v20)
      {
        sub_26A0E48F0(v15, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A33ABFC();
    }

    sub_26A33ABFC();
    v18 = 0;
  }

  v31 = type metadata accessor for TextProperty(0);
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v31);
}

void TextInput.validationMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t TextInput.componentName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoTextInput.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_17_22();
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v29 = (v28 - v27);
  if (*(v3 + 96))
  {
    return sub_26A33ABA8();
  }

  v61 = v21;
  v62 = v14;
  v63 = v11;
  v64 = a1;
  OUTLINED_FUNCTION_3_48();
  sub_26A33ABA8();
  v31 = *(v3 + 16);
  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_15_32();
  v34 = 0x455443414445523CLL;
  if (v33)
  {
    v35 = 0x455443414445523CLL;
  }

  else
  {
    v35 = 0;
  }

  v36 = v5;
  if (v33)
  {
    v37 = 0xEA00000000003E44;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = v29[3];

  v29[2] = v35;
  v29[3] = v37;
  v39 = *(v3 + 32);
  v40 = *(v3 + 40);
  OUTLINED_FUNCTION_15_32();
  if (v41)
  {
    v42 = 0xEA00000000003E44;
  }

  else
  {
    v34 = 0;
    v42 = 0xE000000000000000;
  }

  v43 = v29[5];

  v29[4] = v34;
  v29[5] = v42;
  v44 = *(v23 + 48);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v36);
  sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    v46 = v44;
    v47 = *(v23 + 48);
    v48 = v61;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v48);
    if (v49)
    {
      v60 = v62;
      *v62 = MEMORY[0x277D84F90];
      *(v60 + 8) = 0;
      v50 = v60 + v36[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v51 = v36[8];
      v52 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
      v56 = v36[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
      OUTLINED_FUNCTION_23(v48);
      if (!v49)
      {
        sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v60 = v62;
      sub_26A33ABFC();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A33AC50(v60, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v29 + v46, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A33ABFC();
    __swift_storeEnumTagSinglePayload(v29 + v46, 0, 1, v36);
  }

  sub_26A0E4784(v29[8], v29[9]);
  *(v29 + 4) = xmmword_26A426400;
  OUTLINED_FUNCTION_2_45();
  return sub_26A33ABFC();
}

uint64_t TextInput.invocationPayload.getter()
{
  v21[4] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = sub_26A4246B4();
  v21[0] = 0;
  v5 = [v1 propertyListWithData:v4 options:0 format:0 error:v21];

  if (!v5)
  {
    v8 = v21[0];
    v9 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v10 = sub_26A424AE4();
    __swift_project_value_buffer(v10, qword_2803A8950);
    v11 = v9;
    v12 = sub_26A424AD4();
    v13 = sub_26A424DF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_26A4254B4();
      v18 = sub_26A0E8788(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26A0B8000, v12, v13, "Failed to deserialize invocationPayload data to dictionary: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D65C950](v15, -1, -1);
      MEMORY[0x26D65C950](v14, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v6 = v21[0];
  sub_26A424E64();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    result = sub_26A424B24();
    goto LABEL_10;
  }

  result = v20;
LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:componentName:safeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = *a8;
  v10 = *(a8 + 8);
  type metadata accessor for _ProtoTextInput();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v11, v12);
  sub_26A4249C4();

  return sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
}

uint64_t sub_26A3390D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v39 = a6;
  v40 = a8;
  v38 = a4;
  v45 = a13;
  v43 = a11;
  v44 = a12;
  v42 = a10;
  v41 = a9;
  v18 = type metadata accessor for TextProperty(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37 - v22;
  v24 = type metadata accessor for _ProtoTextProperty(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v37 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v28 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  v29 = *(a1 + 24);

  *(a1 + 16) = v38;
  *(a1 + 24) = a5;
  v30 = *(a1 + 40);

  *(a1 + 32) = v39;
  *(a1 + 40) = a7;
  sub_26A10FD9C();
  v31 = v47;
  if (!v47)
  {
    sub_26A0E48F0(v46, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
    goto LABEL_5;
  }

  v32 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v32 + 8))(v31, v32);
  sub_26A33ABFC();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  __swift_destroy_boxed_opaque_existential_1(v46);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v23, &qword_28036C7B8, &unk_26A425BF0);
    goto LABEL_6;
  }

  sub_26A33ABFC();
  sub_26A33ABFC();
  v33 = *(type metadata accessor for _ProtoTextInput() + 48);
  sub_26A0E48F0(a1 + v33, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A33ABFC();
  __swift_storeEnumTagSinglePayload(a1 + v33, 0, 1, v24);
LABEL_6:
  *(a1 + 48) = v41;
  *(a1 + 56) = v42 & 1;
  v34 = *(a1 + 88);
  v35 = v44;

  *(a1 + 80) = v43;
  *(a1 + 88) = v35;
  *(a1 + 96) = v45 & 1;
  return result;
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v8 = *a8;
  v9 = *(a8 + 8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextInput();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v10, v11);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
  return sub_26A0E48F0(v14, &qword_28036CB08, &unk_26A428720);
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = *a8;
  v10 = *(a8 + 8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextInput();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v11, v12);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
  return sub_26A0E48F0(v14, &qword_28036CB08, &unk_26A428720);
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:invocationPayload:componentName:safeForLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = type metadata accessor for _ProtoTextInput();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v17 = *a8;
  v18 = *(a8 + 8);
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v13, v14);
  sub_26A4249C4();

  if (!v19)
  {
    sub_26A33ABFC();
  }

  return sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
}

uint64_t sub_26A3398B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v47 = a4;
  v48 = a6;
  v49 = a8;
  v52 = a11;
  v51 = a10;
  v50 = a9;
  v56 = *MEMORY[0x277D85DE8];
  v19 = type metadata accessor for TextProperty(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v46 - v23;
  v25 = type metadata accessor for _ProtoTextProperty(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v46 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v29 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  v30 = *(a1 + 24);

  *(a1 + 16) = v47;
  *(a1 + 24) = a5;
  v31 = *(a1 + 40);

  *(a1 + 32) = v48;
  *(a1 + 40) = a7;
  sub_26A10FD9C();
  v32 = v54;
  if (v54)
  {
    v33 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v33 + 8))(v32, v33);
    sub_26A33ABFC();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    __swift_destroy_boxed_opaque_existential_1(v53);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      sub_26A33ABFC();
      sub_26A33ABFC();
      v34 = *(type metadata accessor for _ProtoTextInput() + 48);
      sub_26A0E48F0(a1 + v34, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A33ABFC();
      __swift_storeEnumTagSinglePayload(a1 + v34, 0, 1, v25);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v53, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  }

  sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  *(a1 + 48) = v50;
  *(a1 + 56) = v51 & 1;
  v35 = objc_opt_self();
  v36 = sub_26A424B04();
  v53[0] = 0;
  v37 = [v35 dataWithPropertyList:v36 format:200 options:0 error:v53];

  v38 = v53[0];
  if (v37)
  {
    v39 = sub_26A4246D4();
    v41 = v40;

    sub_26A0E4784(*(a1 + 64), *(a1 + 72));
    *(a1 + 64) = v39;
    *(a1 + 72) = v41;
    v42 = *(a1 + 88);

    *(a1 + 80) = a12;
    *(a1 + 88) = a13;
    *(a1 + 96) = a14 & 1;
  }

  else
  {
    v44 = v38;
    sub_26A4245B4();

    result = swift_willThrow();
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:invocationPayload:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = type metadata accessor for _ProtoTextInput();
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = *a8;
  LOBYTE(a8) = *(a8 + 8);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v15, v16);
  sub_26A4249C4();
  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);

  if (!v19)
  {
    sub_26A33ABFC();
  }

  return sub_26A0E48F0(v18, &qword_28036CB08, &unk_26A428720);
}

uint64_t TextInput.init(identifier:initialValue:placeholderText:labelText:validationMode:invocationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = type metadata accessor for _ProtoTextInput();
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = *a8;
  LOBYTE(a8) = *(a8 + 8);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_0_64();
  sub_26A33ACA8(v15, v16);
  sub_26A4249C4();
  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);

  if (!v19)
  {
    sub_26A33ABFC();
  }

  return sub_26A0E48F0(v18, &qword_28036CB08, &unk_26A428720);
}

Swift::String __swiftcall TextInput.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - v6;
  v8 = type metadata accessor for TextInput();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - v22;
  OUTLINED_FUNCTION_6_33();
  sub_26A33ABA8();
  v24 = *(v1 + 96) ^ 1;
  if (*(v1 + 96))
  {
    sub_26A33ABA8();
  }

  else
  {
    _ProtoTextInput.redactedProto.getter(v14);
  }

  sub_26A33ABFC();
  v23[*(v18 + 32)] = v24;
  sub_26A33AC50(v17, type metadata accessor for TextInput);
  v25 = *(v18 + 28);
  *&v23[v25] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F7840(KeyPath, 0x696669746E656469, 0xEA00000000007265, 0, v27, v28, v29, v30, v64, v65);

  v31 = swift_getKeyPath();
  sub_26A0F7840(v31, 0x566C616974696E69, 0xEC00000065756C61, 1, v32, v33, v34, v35, v64, v65);

  v36 = swift_getKeyPath();
  sub_26A0F7840(v36, 0x6C6F686563616C70, 0xEF74786554726564, 1, v37, v38, v39, v40, v64, v65);

  TextInput.labelText.getter(v7);
  sub_26A105078();
  sub_26A0E48F0(v7, &qword_28036CB30, &qword_26A426480);
  v66 = 0;
  v67 = 0xE000000000000000;
  v41 = v23[56];
  v64 = *(v23 + 6);
  LOBYTE(v65) = v41;
  sub_26A424FA4();
  v43 = v66;
  v42 = v67;
  v44 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v44 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = *&v23[v25];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = *(v45 + 16);
      sub_26A1672B4();
      v45 = v61;
    }

    v46 = *(v45 + 16);
    if (v46 >= *(v45 + 24) >> 1)
    {
      sub_26A1672B4();
      v45 = v62;
    }

    *(v45 + 16) = v46 + 1;
    v47 = v45 + 32 * v46;
    *(v47 + 32) = xmmword_26A43EEA0;
    *(v47 + 48) = v43;
    *(v47 + 56) = v42;
    *&v23[v25] = v45;
  }

  else
  {
  }

  v48 = swift_getKeyPath();
  sub_26A3384C4(v48, 0xD000000000000011, 0x800000026A446EA0);

  v49 = swift_getKeyPath();
  sub_26A0F7840(v49, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v50, v51, v52, v53, v64, v65);

  sub_26A145F6C(v23[96]);
  sub_26A0FB4F4();
  v55 = v54;
  v57 = v56;
  sub_26A0E48F0(v23, &qword_28036CDD8, &unk_26A426960);
  v58 = v55;
  v59 = v57;
  result._object = v59;
  result._countAndFlagsBits = v58;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextInput.jsonString(redacted:)(Swift::Bool redacted)
{
  v3 = v2;
  v4 = type metadata accessor for _ProtoTextInput();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = sub_26A4247D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  if (*(v1 + 96) == 1)
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_64();
    sub_26A33ACA8(v20, v21);
    v22 = sub_26A424954();
    if (!v2)
    {
      v3 = v22;
      v4 = v23;
    }

    (*(v12 + 8))(v19, v11);
  }

  else
  {
    _ProtoTextInput.redactedProto.getter(v10);
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_64();
    sub_26A33ACA8(v24, v25);
    v26 = sub_26A424954();
    if (!v2)
    {
      v3 = v26;
      v4 = v27;
    }

    (*(v12 + 8))(v16, v11);
    OUTLINED_FUNCTION_7_27();
  }

  v28 = v3;
  v29 = v4;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

uint64_t TextInput.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTextInput();
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_3_48();
  sub_26A33ABA8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_2_45();
  sub_26A33ABFC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t TextInput.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for TextInput();
  *(inited + 64) = &protocol witness table for TextInput;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_6_33();
  sub_26A33ABA8();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A33ACA8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for TextInput()
{
  result = qword_280372C90;
  if (!qword_280372C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A33ABA8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A33ABFC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A33AC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A33ACA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A33AD60()
{
  result = type metadata accessor for _ProtoTextInput();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_26A33AC50(v0, type metadata accessor for _ProtoTextInput);
}

void OUTLINED_FUNCTION_14_25()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
}

uint64_t OUTLINED_FUNCTION_16_23()
{

  return type metadata accessor for _ProtoTextInput();
}

uint64_t OUTLINED_FUNCTION_17_22()
{

  return type metadata accessor for _ProtoTextInput();
}

uint64_t _ProtoColorElement.color.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_8_33();
  sub_26A291178(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for _ProtoColor(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_26A33B040(v2, a1);
  }

  type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = a1 + *(v9 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t type metadata accessor for _ProtoColorElement()
{
  result = qword_28157AA30;
  if (!qword_28157AA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A33B040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoColorElement.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoColorElement() + 24);
  sub_26A13440C();
  sub_26A33B040(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoColor(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t _ProtoColorElement.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for _ProtoColorElement();
  v3 = a1 + *(v2 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t static _ProtoColorElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370908, &qword_26A432968) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  v21 = type metadata accessor for _ProtoColorElement();
  v22 = *(v21 + 24);
  v23 = v16[14];
  sub_26A291178(a1 + v22, v20);
  sub_26A291178(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_14_9(v20);
  if (v24)
  {
    OUTLINED_FUNCTION_14_9(&v20[v23]);
    if (v24)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_13:
    v27 = 0;
    return v27 & 1;
  }

  sub_26A291178(v20, v15);
  OUTLINED_FUNCTION_14_9(&v20[v23]);
  if (v24)
  {
    sub_26A33B408(v15);
    goto LABEL_9;
  }

  sub_26A33B040(&v20[v23], v9);
  v25 = static _ProtoColor.== infix(_:_:)();
  sub_26A33B408(v9);
  sub_26A33B408(v15);
  sub_26A13440C();
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_26A0DB6A0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = *(v21 + 20);
  sub_26A424794();
  sub_26A33C4C4();
  v27 = sub_26A424B64();
  return v27 & 1;
}