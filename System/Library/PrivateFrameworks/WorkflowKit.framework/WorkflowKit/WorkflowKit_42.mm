uint64_t sub_1CA697814@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  result = OUTLINED_FUNCTION_27_2();
  v5 = *(v3 + 8);
  if (*(v5 + 16) == 1)
  {
    v6 = *(v5 + 48);
    v16[0] = *(v5 + 32);
    v16[1] = v6;
    *v17 = *(v5 + 64);
    *&v17[12] = *(v5 + 76);
    v13 = v16[0];
    v14 = v6;
    v8 = *&v17[8];
    v7 = *v17;
    v9 = *&v17[16];
    v10 = *&v17[24];
    result = sub_1CA2DBDB8(v16, v15);
    v11 = v13;
    v12 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return result;
}

id sub_1CA6978DC()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter;
  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter);
  }

  else
  {
    swift_getObjectType();
    v4 = OUTLINED_FUNCTION_5_3();
    v5 = sub_1CA6988E0(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1CA697948()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter;
  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter);
  }

  else
  {
    v4 = v0;
    v5 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 64) = MEMORY[0x1E69E6158];
    *(inited + 32) = @"Key";
    strcpy((inited + 40), "tableTemplate");
    *(inited + 54) = -4864;
    _s3__C3KeyVMa_0(0);
    sub_1CA69B488(&qword_1EDB9F780, _s3__C3KeyVMa_0);
    v7 = @"Key";
    sub_1CA94C1E8();
    sub_1CA2F864C();
    OUTLINED_FUNCTION_40();
    v8 = [objc_allocWithZone(type metadata accessor for WFTableTemplateEntityUpdaterParameter()) initWithDefinition_];

    v9 = &v8[OBJC_IVAR____TtC11WorkflowKit37WFTableTemplateEntityUpdaterParameter_delegate];
    OUTLINED_FUNCTION_9_40();
    *(v9 + 1) = &protocol witness table for WFEntityUpdatingAction;
    swift_unknownObjectWeakAssign();
    v10 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1CA697B04()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor;
  v2 = *&v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor];
  }

  else
  {
    v4 = [v0 executorOptions];
    v5 = [v0 progress];
    v6 = objc_allocWithZone(type metadata accessor for BatchActionExecutor());
    v7 = sub_1CA69B350(v4, v5, v0, v6);
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1CA697BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *&v36 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    goto LABEL_23;
  }

  v7 = sub_1CA94C3A8();
  v9 = sub_1CA323E28(v7, v8);

  if (!v9)
  {
    goto LABEL_23;
  }

  *&v36 = v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!sub_1CA323E28(0xD00000000000001DLL, 0x80000001CA9B2A90))
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:

    result = swift_unknownObjectRelease();
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v10 = sub_1CA94C978();
  v11 = sub_1CA323E28(0xD000000000000020, 0x80000001CA9B2A40);
  if (!v11 || (*&v36 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80), (swift_dynamicCast() & 1) == 0))
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v30 = v10;
  v12 = v33;
  result = sub_1CA25B410(v33);
  if (!result)
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v10 = v30;
LABEL_30:
    v27 = sub_1CA323E28(0xD00000000000001DLL, 0x80000001CA9B2A70);

    if (v27)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = [v28 BOOLValue];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_35:
        result = swift_unknownObjectRelease();
        *a4 = v10;
        *(a4 + 8) = v16;
        *(a4 + 16) = v29;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v29 = 0;
    goto LABEL_35;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = 0;
    v32 = v33 & 0xC000000000000001;
    v16 = MEMORY[0x1E69E7CC0];
    v31 = v33;
    do
    {
      if (v32)
      {
        v17 = MEMORY[0x1CCAA22D0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = a3;
      RowTemplatePropertySetterParameterState.init(serializedRepresentation:variableProvider:parameter:)(v17, a2, a3, &v36);
      if (*&v38[16])
      {
        v33 = v36;
        v34 = v37;
        v35[0] = *v38;
        *(v35 + 12) = *&v38[12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v16 + 16);
          sub_1CA2E5064();
          v16 = v25;
        }

        v19 = *(v16 + 16);
        if (v19 >= *(v16 + 24) >> 1)
        {
          sub_1CA2E5064();
          v16 = v26;
        }

        swift_unknownObjectRelease();
        *(v16 + 16) = v19 + 1;
        v20 = (v16 + (v19 << 6));
        v21 = v33;
        v22 = v34;
        v23 = v35[0];
        *(v20 + 76) = *(v35 + 12);
        v20[3] = v22;
        v20[4] = v23;
        v20[2] = v21;
        v12 = v31;
      }

      else
      {
        swift_unknownObjectRelease();
        v33 = v36;
        v34 = v37;
        v35[0] = *v38;
        *(v35 + 12) = *&v38[12];
        sub_1CA69AF8C(&v33);
      }

      ++v15;
    }

    while (v14 != v15);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA698020@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  OUTLINED_FUNCTION_7_43();
  if (!swift_dynamicCast())
  {
    goto LABEL_23;
  }

  v4 = sub_1CA94C3A8();
  v6 = sub_1CA323E28(v4, v5);

  if (!v6)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = OUTLINED_FUNCTION_13_37();
  if (!sub_1CA323E28(v7, v8))
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:

    result = swift_unknownObjectRelease();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v28 = sub_1CA94C978();
  v9 = sub_1CA323E28(0xD000000000000020, 0x80000001CA9B2A40);
  if (!v9 || (v31 = v9, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80), OUTLINED_FUNCTION_7_43(), (swift_dynamicCast() & 1) == 0))
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v10 = v37;
  result = sub_1CA25B410();
  if (!result)
  {

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v29 = a1;
    v30 = result;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCAA22D0](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v16 = a1;
      RowTemplateConditionalParameterState.init(serializedRepresentation:variableProvider:parameter:)();
      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v14 + 16);
          sub_1CA2E63D4();
          v14 = v21;
        }

        v17 = *(v14 + 16);
        v18 = v14;
        if (v17 >= *(v14 + 24) >> 1)
        {
          sub_1CA2E63D4();
          v18 = v22;
        }

        swift_unknownObjectRelease();
        *(v18 + 16) = v17 + 1;
        v14 = v18;
        v19 = v18 + 48 * v17;
        *(v19 + 32) = v31;
        *(v19 + 40) = v32;
        *(v19 + 48) = v33 & 1;
        *(v19 + 56) = v34;
        *(v19 + 64) = v35;
        *(v19 + 72) = v36;
        v10 = v37;
        a1 = v29;
        v12 = v30;
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1CA43EFAC(v31, 0, v33, v34, v35, v36);
      }

      ++v13;
    }

    while (v12 != v13);

LABEL_28:
    v23 = OUTLINED_FUNCTION_13_37();
    v25 = sub_1CA323E28(v23, v24);

    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = [v26 BOOLValue];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_34:
        result = swift_unknownObjectRelease();
        *a2 = v28;
        *(a2 + 8) = v14;
        *(a2 + 16) = v27;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v27 = 0;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1CA698450()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v4 = (*(v3 + 192))();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 systemProtocolMetadata];

    type metadata accessor for LNSystemEntityProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
    sub_1CA69B488(&qword_1EC4436B0, type metadata accessor for LNSystemEntityProtocolIdentifier);
    v7 = sub_1CA94C1C8();

    v8 = *(v7 + 64);
    v9 = *(v7 + 32);
    OUTLINED_FUNCTION_5_5();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    v15 = *MEMORY[0x1E69AC2D8];
    sub_1CA94C218();
    v16 = 0;
    while (v12)
    {
LABEL_8:
      v18 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v12)))));
      v19 = sub_1CA94C3A8();
      v21 = v20;
      if (v19 == sub_1CA94C3A8() && v21 == v22)
      {

        goto LABEL_16;
      }

      v12 &= v12 - 1;
      OUTLINED_FUNCTION_187();
      v24 = sub_1CA94D7F8();

      if (v24)
      {

LABEL_16:

        goto LABEL_17;
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        goto LABEL_17;
      }

      v12 = *(v7 + 64 + 8 * v17);
      ++v16;
      if (v12)
      {
        v16 = v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_36();
  }
}

void *sub_1CA69865C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  result = (*(v3 + 192))();
  if (result)
  {
    v5 = result;
    v6 = [result properties];

    sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
    OUTLINED_FUNCTION_5_3();
    sub_1CA94C658();

    v7 = sub_1CA25B410();

    return (v7 == 1);
  }

  return result;
}

id sub_1CA698744()
{
  v1 = sub_1CA94C368();
  v2 = [v0 parameterStateForKey_];

  return v2;
}

id sub_1CA6988E0(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 1937075312;
  *(inited + 48) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA69B488(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v3 = @"Key";
  sub_1CA94C1E8();
  v4 = sub_1CA2F864C();
  v5 = [objc_allocWithZone(WFAddButtonParameter) initWithDefinition_];

  [v5 setDelegate_];
  return v5;
}

void WFEntityUpdatingAction.__allocating_init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_allocWithZone(v0);
  WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v16, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA698BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v13 = v12;
  v15 = v14;
  swift_getObjectType();
  v16 = [v12 identifier];
  v17 = sub_1CA94C3A8();
  v19 = v18;

  v20 = [v13 metadata];
  v21 = *&v13[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
  sub_1CA94C218();
  v22 = [v13 definition];
  if (!v22)
  {
    sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
    v23 = OUTLINED_FUNCTION_40();
    type metadata accessor for Key(v23);
    sub_1CA69B488(&qword_1EDB9FB10, type metadata accessor for Key);
    sub_1CA94C1E8();
    v22 = sub_1CA332510();
  }

  sub_1CA94C218();
  v24 = [v13 appIntentDescriptor];
  v25 = [v13 fullyQualifiedLinkActionIdentifier];
  v26 = objc_allocWithZone(type metadata accessor for WFEntityUpdatingAction());
  v27 = WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v17, v19, v20, v21, v22, v15, v24, v25);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BE00](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

id sub_1CA698E70()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v4 = (*(v3 + 192))();
  if (v4 && (v5 = sub_1CA69B188(v4), v6))
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_allocWithZone(MEMORY[0x1E696E720]);
    return sub_1CA5679E4(v7, v8);
  }

  else
  {
    v11.receiver = v0;
    v11.super_class = type metadata accessor for WFEntityUpdatingAction();
    return objc_msgSendSuper2(&v11, sel_displayableAppDescriptor);
  }
}

void *sub_1CA698F20(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v6 = (*(v5 + 192))();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 displayRepresentation];

    v9 = [v8 name];
    v10 = [a1 locale];
    OUTLINED_FUNCTION_40();
    v11 = sub_1CA948E58();
    v12 = OUTLINED_FUNCTION_1_0(v11);
    v14 = v13;
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_2_63();

    sub_1CA948D48();
    v17 = *(v14 + 8);
    v18 = OUTLINED_FUNCTION_69();
    v19(v18);
    v20 = sub_1CA94C368();

    v21 = [v9 localizedStringForLocaleIdentifier_];

    v7 = sub_1CA94C3A8();
  }

  return v7;
}

void sub_1CA699168()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v90 = MEMORY[0x1E69E7CD0];
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 192);
  v80 = v0;
  v7 = v6();
  v8 = &selRef_isInputParameter;
  if (v7)
  {
    v9 = v7;
    v10 = [v7 displayRepresentation];

    v11 = [v10 name];
    v12 = [v2 locale];
    OUTLINED_FUNCTION_40();
    v13 = sub_1CA948E58();
    v14 = OUTLINED_FUNCTION_1_0(v13);
    v16 = v15;
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_2_63();

    sub_1CA948D48();
    v19 = *(v16 + 8);
    v20 = OUTLINED_FUNCTION_69();
    v21(v20);
    v22 = sub_1CA94C368();

    v23 = [v11 localizedStringForLocaleIdentifier_];

    v24 = sub_1CA94C3A8();
    v26 = v25;

    sub_1CA368948(v89, v24, v26);
  }

  v27 = *(v80 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
  v28 = *(v27 + 64);
  v79 = v27 + 64;
  v29 = *(v27 + 32);
  OUTLINED_FUNCTION_5_5();
  v32 = v31 & v30;
  v78 = (v33 + 63) >> 6;
  v83 = v34;
  swift_bridgeObjectRetain_n();
  v35 = 0;
  v77 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v37 >= v78)
          {
            goto LABEL_36;
          }

          v32 = *(v79 + 8 * v37);
          ++v35;
          if (v32)
          {
            v35 = v37;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_9:
      v38 = *(*(v83 + 56) + ((v35 << 9) | (8 * __clz(__rbit64(v32)))));
      v39 = [v38 descriptionMetadata];
      v84 = v35;
      v85 = v32;
      if (!v39)
      {

        goto LABEL_24;
      }

      v40 = v39;
      v41 = [v39 searchKeywords];

      sub_1CA25B3D0(0, &qword_1EC441780, 0x1E69AC9E0);
      OUTLINED_FUNCTION_5_3();
      v42 = sub_1CA94C658();

      if (v42 >> 62)
      {
        v43 = sub_1CA94D328();
        if (v43)
        {
          goto LABEL_12;
        }

LABEL_23:

LABEL_24:
        v46 = MEMORY[0x1E69E7CC0];
        goto LABEL_25;
      }

      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_23;
      }

LABEL_12:
      v89[0] = MEMORY[0x1E69E7CC0];
      v44 = v89;
      sub_1CA271524();
      if (v43 < 0)
      {
        goto LABEL_40;
      }

      v81 = v38;
      v82 = v36;
      v45 = 0;
      v46 = v89[0];
      v86 = v42 & 0xC000000000000001;
      v87 = v43;
      v88 = v42;
      do
      {
        if (v86)
        {
          v47 = MEMORY[0x1CCAA22D0](v45, v42);
        }

        else
        {
          v47 = *(v42 + 8 * v45 + 32);
        }

        v48 = v47;
        v49 = v2;
        v50 = [v2 v8[255]];
        OUTLINED_FUNCTION_40();
        v51 = sub_1CA948E58();
        v52 = OUTLINED_FUNCTION_1_0(v51);
        v54 = v53;
        v56 = *(v55 + 64);
        MEMORY[0x1EEE9AC00](v52);
        v58 = &v77 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1CA948DA8();

        sub_1CA948D48();
        (*(v54 + 8))(v58, v51);
        v44 = sub_1CA94C368();

        v59 = [v48 localizedStringForLocaleIdentifier_];

        v60 = sub_1CA94C3A8();
        v62 = v61;

        v89[0] = v46;
        v63 = *(v46 + 16);
        if (v63 >= *(v46 + 24) >> 1)
        {
          v44 = v89;
          sub_1CA271524();
          v46 = v89[0];
        }

        ++v45;
        *(v46 + 16) = v63 + 1;
        v64 = v46 + 16 * v63;
        *(v64 + 32) = v60;
        *(v64 + 40) = v62;
        v42 = v88;
        v2 = v49;
        v8 = &selRef_isInputParameter;
      }

      while (v87 != v45);

      v36 = v82;
LABEL_25:
      v65 = *(v46 + 16);
      v66 = *(v36 + 16);
      if (__OFADD__(v66, v65))
      {
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v66 + v65 > *(v36 + 24) >> 1)
      {
        sub_1CA26DADC();
        v36 = v67;
      }

      v32 = (v85 - 1) & v85;
      if (!*(v46 + 16))
      {
        break;
      }

      if ((*(v36 + 24) >> 1) - *(v36 + 16) < v65)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      v35 = v84;
      if (v65)
      {
        v68 = *(v36 + 16);
        v69 = __OFADD__(v68, v65);
        v70 = v68 + v65;
        if (v69)
        {
          goto LABEL_41;
        }

        *(v36 + 16) = v70;
      }
    }

    v35 = v84;
  }

  while (!v65);
  __break(1u);
LABEL_36:

  sub_1CA342798(v36);
  v71 = *v80;
  v72 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7();
  v74 = (*(v73 + 200))();
  sub_1CA697280(v74);
  v76 = v75;

  sub_1CA342798(v76);
  sub_1CA438D04(v90);
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA699848()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for WFEntityUpdatingAction();
  v1 = objc_msgSendSuper2(&v17, sel_serializedParameters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1C8();

  v3 = &v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  OUTLINED_FUNCTION_27_2();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = v3[16];
  sub_1CA94C218();
  v7 = sub_1CA4388E8(v4, v5);

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v2;
    swift_getObjectType();
    sub_1CA32EB34(v7, 0x54656C6261544657, 0xEF6574616C706D65, isUniquelyReferenced_nonNull_native, &v16);
    return v16;
  }

  else
  {
    v9 = sub_1CA271BF8();
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = v2;
      v12 = *(v2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();
      v2 = v16;
      v13 = *(*(v16 + 48) + 16 * v11 + 8);

      v14 = *(*(v16 + 56) + 8 * v11);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  return v2;
}

void sub_1CA699AA4(void *a1)
{
  v28.receiver = v1;
  v28.super_class = type metadata accessor for WFEntityUpdatingAction();
  objc_msgSendSuper2(&v28, sel_configureParameter_, a1);
  type metadata accessor for WFUpdatableParameter();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR___WFUpdatableParameter_stateDataSource;
    swift_beginAccess();
    *(v5 + 8) = &protocol witness table for WFEntityUpdatingAction;
    swift_unknownObjectWeakAssign();
    v6 = *&v4[OBJC_IVAR___WFUpdatableParameter_underlyingParameter];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = *&v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
      v10 = a1;
      v11 = v6;
      v12 = [v4 key];
      v13 = sub_1CA94C3A8();

      v14 = sub_1CA323E2C(v13);

      if (v14)
      {
        v25 = v8;
        v27 = v11;
        v26 = v14;
        v15 = [v14 parameters];
        sub_1CA25B3D0(0, &unk_1EC445EB0, 0x1E69AC680);
        v16 = sub_1CA94C658();

        v17 = sub_1CA25B410();
        for (i = 0; ; ++i)
        {
          if (v17 == i)
          {

            return;
          }

          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1CCAA22D0](i, v16);
          }

          else
          {
            if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v19 = *(v16 + 8 * i + 32);
          }

          v20 = v19;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v21 = sub_1CA4FC8DC(v19);
          if (v22)
          {
            if (v21 == 0x79747265706F7270 && v22 == 0xE800000000000000)
            {

LABEL_21:

              [v25 setAction_];
              [v25 setDataSource_];
              [v25 setParameterMetadata_];

              return;
            }

            v24 = sub_1CA94D7F8();

            if (v24)
            {
              goto LABEL_21;
            }
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
      }

      else
      {
      }
    }
  }
}

id sub_1CA699E18(uint64_t a1, void *a2)
{
  [v2 configureParameter_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_1CA94D7D8();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for WFEntityUpdatingAction();
  v6 = objc_msgSendSuper2(&v8, sel_createStateForParameter_fromSerializedRepresentation_, a1, v5);
  swift_unknownObjectRelease();
  return v6;
}

id sub_1CA699F48()
{
  OUTLINED_FUNCTION_1_54();
  v5 = v3 == v4 && v1 == v2;
  if (!v5 && (sub_1CA94D7F8() & 1) == 0)
  {
    sub_1CA697814(v23);
    if (v26)
    {
      v14 = v24;
      v12 = v25;
      sub_1CA94C218();
      v15._countAndFlagsBits = OUTLINED_FUNCTION_69();
      RowTemplateLayoutElement.init(rawValue:)(v15);
      switch(v21)
      {
        case 3:
          swift_unknownObjectRetain();
          sub_1CA69AF8C(v23);
          return v14;
        case 1:
          v18 = sub_1CA94C988();
          v12 = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

          goto LABEL_15;
        case 0:
          v16 = v12;
LABEL_15:
          sub_1CA69AF8C(v23);
          return v12;
      }

      OUTLINED_FUNCTION_69();
      v17 = sub_1CA94C368();
      v20.receiver = v0;
      v20.super_class = type metadata accessor for WFEntityUpdatingAction();
      v12 = objc_msgSendSuper2(&v20, sel_parameterStateForKey_, v17);
      sub_1CA69AF8C(v23);
    }

    else
    {
      OUTLINED_FUNCTION_69();
      v17 = sub_1CA94C368();
      v22.receiver = v0;
      v22.super_class = type metadata accessor for WFEntityUpdatingAction();
      v12 = objc_msgSendSuper2(&v22, sel_parameterStateForKey_, v17);
    }

    return v12;
  }

  v6 = &v0[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  OUTLINED_FUNCTION_27_2();
  v8 = *v6;
  v7 = *(v6 + 1);
  v9 = v6[16];
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446590, &qword_1CA98B5B0));
  v11 = v10 + *((*MEMORY[0x1E69E7D40] & *v10) + 0x60);
  *v11 = v8;
  *(v11 + 1) = v7;
  v11[16] = v9;
  sub_1CA94C218();
  v19.receiver = v10;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477C0, &unk_1CA98B5B8);
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1CA69A1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_1_54();
  v11 = v9 == v10 && a3 == v8;
  if (v11 || (OUTLINED_FUNCTION_187(), (sub_1CA94D7F8() & 1) != 0))
  {
    if (a1)
    {
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FA0, &qword_1CA991B80);
      sub_1CA69B258();
      WFParameterState.swiftParameterState<A>(_:)(v29);
      v12 = v30;
      if (v30)
      {
        v13 = &v3[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
        OUTLINED_FUNCTION_9_40();
        v14 = *(v13 + 1);
        *(v13 + 1) = v12;

LABEL_35:
        sub_1CA69A518(v4);
        return;
      }
    }
  }

  sub_1CA697814(v29);
  if (!v31)
  {
LABEL_16:
    OUTLINED_FUNCTION_187();
    v17 = sub_1CA94C368();
    v28.receiver = v4;
    v28.super_class = type metadata accessor for WFEntityUpdatingAction();
    objc_msgSendSuper2(&v28, sel_setParameterState_forKey_, a1, v17);

    return;
  }

  sub_1CA69AF8C(v29);
  sub_1CA94C218();
  v15._countAndFlagsBits = OUTLINED_FUNCTION_187();
  RowTemplateLayoutElement.init(rawValue:)(v15);
  if (v27 == 3)
  {
    OUTLINED_FUNCTION_10_37();
    v16 = *(v3 + 1);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 1) = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_28:
      if (!*(v16 + 16))
      {
        __break(1u);
LABEL_39:
        sub_1CA42B3C8(a2);
        a2 = v26;
        *(a1 + 8) = v26;
        goto LABEL_33;
      }

      v22 = *(v16 + 48);
      *(v16 + 48) = a1;
      *(v3 + 1) = v16;
      swift_endAccess();
LABEL_30:
      swift_unknownObjectRelease();
      goto LABEL_35;
    }

LABEL_37:
    sub_1CA42B3C8(v16);
    v16 = v25;
    *(v3 + 1) = v25;
    goto LABEL_28;
  }

  if (v27 == 1)
  {
    if (!a1 || (objc_opt_self(), (v3 = [swift_dynamicCastObjCClass() number]) == 0))
    {
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      OUTLINED_FUNCTION_40();
      v3 = sub_1CA94CFB8();
    }

    v18 = sub_1CA94C978();

    if (v18 >= 5)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18;
    }

    OUTLINED_FUNCTION_10_37();
    a1 = *(v3 + 1);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 1) = a1;
    if ((v19 & 1) == 0)
    {
      sub_1CA42B3C8(a1);
      a1 = v24;
      *(v3 + 1) = v24;
    }

    if (*(a1 + 16))
    {
      *(a1 + 64) = v16;
      v20 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(v3 + 1) = a1;
      swift_endAccess();
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v27)
  {
    goto LABEL_16;
  }

  if (a1)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v16 = 0;
  }

  a1 = &v3[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  swift_beginAccess();
  a2 = *(a1 + 8);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 8) = a2;
  if ((v23 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  if (*(a2 + 16))
  {
    RowTemplatePropertySetterParameterState.subject.setter(v16);
    *(a1 + 8) = a2;
    swift_endAccess();
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t sub_1CA69A518(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v57 = sub_1CA94C1E8();
  v55 = a1;
  v2 = &a1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  swift_beginAccess();
  v3 = *(v2 + 1);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_21:
    v33 = [v55 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v34 = sub_1CA94C658();

    v35 = sub_1CA25B410();
    if (!v35)
    {
LABEL_43:

      return 1;
    }

    v36 = v35;
    if (v35 < 1)
    {
      goto LABEL_47;
    }

    v37 = 0;
    while (1)
    {
      v38 = (v34 & 0xC000000000000001) != 0 ? MEMORY[0x1CCAA22D0](v37, v34) : *(v34 + 8 * v37 + 32);
      v39 = v38;
      v40 = [v38 key];
      v41 = sub_1CA94C3A8();
      v43 = v42;

      if (v41 != 0x797469746E65 || v43 != 0xE600000000000000)
      {
        break;
      }

LABEL_42:
      if (v36 == ++v37)
      {
        goto LABEL_43;
      }
    }

    v45 = sub_1CA94D7F8();

    if (v45)
    {
LABEL_41:

      goto LABEL_42;
    }

    v46 = [v39 key];
    sub_1CA94C3A8();

    if (*(v57 + 16))
    {
      v47 = sub_1CA271BF8();
      v49 = v48;

      if (v49)
      {
        v50 = *(*(v57 + 56) + 8 * v47);
        swift_unknownObjectRetain();
LABEL_38:
        v51 = [v39 key];
        if (!v51)
        {
          sub_1CA94C3A8();
          v51 = sub_1CA94C368();
        }

        v52 = type metadata accessor for WFEntityUpdatingAction();
        v65.receiver = v55;
        v65.super_class = v52;
        objc_msgSendSuper2(&v65, sel_setParameterState_forKey_, v50, v51);
        swift_unknownObjectRelease();

        goto LABEL_41;
      }
    }

    else
    {
    }

    v50 = 0;
    goto LABEL_38;
  }

  v5 = *(v2 + 1);
  sub_1CA94C218();
  v6 = 0;
  v7 = (v3 + 80);
  v54 = v3;
  v56 = v4;
  while (v6 < *(v3 + 16))
  {
    v8 = *(v7 - 3);
    if (v8)
    {
      v9 = *(v7 - 16);
      v10 = *v7;
      v58 = *(v7 - 3);
      v60 = *(v7 - 2);
      v11 = *(v7 - 6);
      swift_unknownObjectRetain();
      v12 = v8;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      v13 = [v12 value];
      if (v13)
      {
        v14 = v13;
        v63 = 0;
        v64 = 0;
        sub_1CA94C398();

        v15 = v64;
        if (v64)
        {
          v16 = v63;
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CE0, &qword_1CA982160);
          v18 = objc_allocWithZone(v17);
          v19 = &v18[*((*MEMORY[0x1E69E7D40] & *v18) + 0x60)];
          *v19 = v58;
          *(v19 + 1) = v60;
          v19[32] = v9;
          v62.receiver = v18;
          v62.super_class = v17;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v61 = v12;
          v59 = objc_msgSendSuper2(&v62, sel_init);
          swift_isUniquelyReferenced_nonNull_native();
          v63 = v57;
          v20 = sub_1CA271BF8();
          if (__OFADD__(*(v57 + 16), (v21 & 1) == 0))
          {
            goto LABEL_45;
          }

          v22 = v20;
          v23 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
          if (sub_1CA94D588())
          {
            v24 = sub_1CA271BF8();
            v3 = v54;
            if ((v23 & 1) != (v25 & 1))
            {
              goto LABEL_48;
            }

            v22 = v24;
            if ((v23 & 1) == 0)
            {
LABEL_11:
              v26 = v63;
              v63[(v22 >> 6) + 8] |= 1 << v22;
              v27 = (v26[6] + 16 * v22);
              *v27 = v16;
              v27[1] = v15;
              *(v26[7] + 8 * v22) = v59;

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v28 = v26[2];
              v29 = __OFADD__(v28, 1);
              v30 = v28 + 1;
              if (v29)
              {
                goto LABEL_46;
              }

              v57 = v26;
              v26[2] = v30;
              goto LABEL_18;
            }
          }

          else
          {
            v3 = v54;
            if ((v23 & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v57 = v63;
          v31 = v63[7];
          v32 = *(v31 + 8 * v22);
          *(v31 + 8 * v22) = v59;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
LABEL_18:
        v4 = v56;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

LABEL_19:
    ++v6;
    v7 += 8;
    if (v4 == v6)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

id WFEntityUpdatingAction.__allocating_init(identifier:metadata:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v14 = sub_1CA94C368();

  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v15 = sub_1CA94C1A8();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(v8) initWithIdentifier:v14 metadata:a3 definition:a4 serializedParameters:v15 appIntentDescriptor:a6 fullyQualifiedActionIdentifier:a7];

  return v16;
}

id WFEntityUpdatingAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEntityUpdatingAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA69AF00(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1CA69AF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FA0, &unk_1CA98B5A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA69B0E4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1CA94C698();
  }

  return result;
}

uint64_t sub_1CA69B140(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1CA69B188(void *a1)
{
  v2 = [a1 attributionBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA69B1F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA94D5B8();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1CA94D2B8();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_1CA69B258()
{
  result = qword_1EC447FA8;
  if (!qword_1EC447FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447FA0, &qword_1CA991B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447FA8);
  }

  return result;
}

id sub_1CA69B350(void *a1, void *a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_queuedActionIdentifiers] = MEMORY[0x1E69E7CC0];
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_connection] = 0;
  swift_unknownObjectWeakInit();
  v8 = &a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_provider];
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_provider + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FB0, &unk_1CA989C78);
  __swift_storeEnumTagSinglePayload(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC11WorkflowKit19BatchActionExecutor_options] = a1;
  *(v8 + 1) = &off_1F4A12308;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v14.receiver = a4;
  v14.super_class = type metadata accessor for BatchActionExecutor();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_1CA69B488(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA69B4E4()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v1, v2, v3, v4);
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_13_2(v8);

  return v10(v9);
}

uint64_t sub_1CA69B5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2AD9FC;

  return sub_1CA69B4E4();
}

uint64_t sub_1CA69B694(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA69B6B4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA69B7A4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA69B7A4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA69B8A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7_44();
  v8 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_10_38(v4);

  return v6(v5);
}

uint64_t sub_1CA69B990(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  v10 = *(v9 + 264);
  v11 = *v3;
  OUTLINED_FUNCTION_13();
  *v12 = v11;
  v7[34] = v2;

  if (!v2)
  {
    v7[35] = a2;
    v7[36] = a1;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA69BAB0()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[25];
  v0[20] = v0[31];
  v0[21] = v3;
  v0[22] = v1;
  v0[23] = v2;
  v6 = *(v4 + *(v5 + 36));
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = sub_1CA948E58();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_1CA27BAF0();
  OUTLINED_FUNCTION_14_33();
  v11 = v10;
  sub_1CA69C610(v8);

  OUTLINED_FUNCTION_2_4();

  return v12(v13 & ~v11);
}

uint64_t sub_1CA69BBF0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA3D3884;

  return sub_1CA69B694(a1, a2, a3, v8);
}

uint64_t sub_1CA69BCC0()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_5(v1, v2, v3, v4);
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_13_2(v8);

  return v10(v9);
}

uint64_t sub_1CA69BDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CA2AD81C;

  return sub_1CA69BCC0();
}

uint64_t sub_1CA69BE70(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA69BE90()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA69BF80;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA69BF80()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA69C080()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7_44();
  v8 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_10_38(v4);

  return v6(v5);
}

uint64_t sub_1CA69C16C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  v10 = *(v9 + 264);
  v11 = *v3;
  OUTLINED_FUNCTION_13();
  *v12 = v11;
  v7[34] = v2;

  if (!v2)
  {
    v7[35] = a2;
    v7[36] = a1;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA69C28C()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0[27] + *(v0[25] + 36));
  v0[20] = v0[31];
  v3 = v0[35];
  v2 = v0[36];
  v0[21] = v0[32];
  v0[22] = v2;
  v0[23] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = sub_1CA948E58();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1CA27BAF0();
  OUTLINED_FUNCTION_14_33();
  v8 = v7;
  sub_1CA69C610(v5);

  if ((v8 & 1) == 0 && (v0[32] & 0x2000000000000000) == 0)
  {
    v9 = v0[31] & 0xFFFFFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_2_4();

  return v10();
}

uint64_t sub_1CA69C3FC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 240);
  swift_willThrow();
  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA69C464()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 256);

  v2 = *(v0 + 272);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA69C4C4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA3D2984;

  return sub_1CA69BE70(a1, a2, a3, v8);
}

uint64_t sub_1CA69C580(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA69C5BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA69C610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445488, &qword_1CA987590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA69C690(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1CA69C7FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

id sub_1CA69CA98()
{
  v317 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9E0080;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v342 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v347 = v11;
  v345 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v305 - v345;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v343 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v346 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v344 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v305 - v344;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v342, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v342 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v341 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438();
  v338 = v25;
  v339 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v340 = &v305;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v305 - v345;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  v335 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v344;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v339, v338, v26, v28, 0, 0, v29, &v305 - v32);
  v34 = v342;
  *(v21 + 64) = v342;
  *(v21 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438();
  v338 = v37;
  v339 = v36;
  v337 = sub_1CA94C438();
  v39 = v38;
  v340 = &v305;
  MEMORY[0x1EEE9AC00](v337);
  v40 = &v305 - v345;
  sub_1CA948D98();
  v41 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v339, v338, v337, v39, 0, 0, v40, &v305 - v32);
  *(v21 + 104) = v34;
  *(v21 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v341;
  v45 = sub_1CA6B3784();
  v46 = v335;
  v335[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 1953392980;
  v46[21] = 0xE400000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000016;
  v46[26] = 0x80000001CA9E0250;
  v46[28] = v47;
  v46[29] = @"IconSymbolColor";
  v46[30] = 1702194242;
  v46[31] = 0xE400000000000000;
  v46[33] = v47;
  v46[34] = @"Input";
  v48 = v47;
  v49 = v46;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v332 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 0;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  strcpy((v50 + 96), "WFXCallbackURL");
  *(v50 + 111) = -18;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v322;
  *(v50 + 192) = &unk_1F4A0C698;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"IconSymbolColor";
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v341 = v57;
  v49[35] = v56;
  v49[38] = v57;
  v49[39] = @"Name";
  v58 = @"Name";
  v59 = sub_1CA94C438();
  v61 = v60;
  v62 = sub_1CA94C438();
  v64 = v63;
  v340 = &v305;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v305 - v345;
  sub_1CA948D98();
  v66 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v305 - v344;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v59, v61, v62, v64, 0, 0, v65, v67);
  v70 = v335;
  v335[40] = v69;
  v71 = v342;
  v70[43] = v342;
  v70[44] = @"Output";
  v72 = swift_allocObject();
  *(v72 + 16) = v332;
  *(v72 + 32) = 0x75736F6C63736944;
  *(v72 + 40) = 0xEF6C6576654C6572;
  *(v72 + 48) = 0x63696C627550;
  *(v72 + 56) = 0xE600000000000000;
  *(v72 + 72) = MEMORY[0x1E69E6158];
  *(v72 + 80) = 0x656C7069746C754DLL;
  *(v72 + 88) = 0xE800000000000000;
  *(v72 + 96) = 0;
  *(v72 + 120) = MEMORY[0x1E69E6370];
  *(v72 + 128) = 0x614E74757074754FLL;
  *(v72 + 136) = 0xEA0000000000656DLL;
  v73 = @"Output";
  v74 = sub_1CA94C438();
  v339 = v75;
  v76 = sub_1CA94C438();
  v78 = v77;
  v340 = &v305;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v305 - v345;
  sub_1CA948D98();
  v80 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v305 - v344;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 144) = sub_1CA2F9F14(v74, v339, v76, v78, 0, 0, v79, v81);
  *(v72 + 168) = v71;
  *(v72 + 176) = 0x7365707954;
  *(v72 + 216) = v322;
  *(v72 + 184) = 0xE500000000000000;
  *(v72 + 192) = &unk_1F4A0C6C8;
  v83 = MEMORY[0x1E69E6158];
  v84 = sub_1CA94C1E8();
  v85 = v335;
  v335[45] = v84;
  v85[48] = v341;
  v85[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v341 = swift_allocObject();
  *(v341 + 16) = xmmword_1CA98B2D0;
  v340 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = v332;
  v315 = 0xD000000000000011;
  v316 = 0x80000001CA99E620;
  *(v86 + 32) = @"Class";
  *(v86 + 40) = 0xD000000000000011;
  *(v86 + 48) = 0x80000001CA99E620;
  *(v86 + 64) = v83;
  *(v86 + 72) = @"Description";
  v87 = @"Class";
  v88 = @"Description";
  v89 = v87;
  v90 = v88;
  v331 = v89;
  v321 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438();
  v337 = v93;
  v94 = sub_1CA94C438();
  v96 = v95;
  v338 = &v305;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v305 - v345;
  sub_1CA948D98();
  v98 = v343;
  v99 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v305 - v344;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 80) = sub_1CA2F9F14(v92, v337, v94, v96, 0, 0, v97, v100);
  v102 = v342;
  *(v86 + 104) = v342;
  *(v86 + 112) = @"Key";
  v323 = 0xD000000000000020;
  v324 = 0x80000001CA9E0490;
  *(v86 + 120) = 0xD000000000000020;
  *(v86 + 128) = 0x80000001CA9E0490;
  *(v86 + 144) = MEMORY[0x1E69E6158];
  *(v86 + 152) = @"Label";
  v103 = @"Key";
  v104 = @"Label";
  v105 = v103;
  v106 = v104;
  *&v329 = v105;
  *&v330 = v106;
  v107 = sub_1CA94C438();
  v337 = v108;
  v109 = sub_1CA94C438();
  v111 = v110;
  v338 = &v305;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v305 - v345;
  sub_1CA948D98();
  v113 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v305 - v344;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v107, v337, v109, v111, 0, 0, v112, v114);
  *(v86 + 184) = v102;
  *(v86 + 160) = v116;
  _s3__C3KeyVMa_0(0);
  v338 = v117;
  v337 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v341 + 32) = sub_1CA2F864C();
  v118 = swift_allocObject();
  v319 = xmmword_1CA981380;
  *(v118 + 16) = xmmword_1CA981380;
  v333 = 0x80000001CA99B500;
  v119 = v331;
  *(v118 + 32) = v331;
  *(v118 + 40) = 0xD000000000000014;
  *(v118 + 48) = 0x80000001CA99B500;
  v120 = MEMORY[0x1E69E6158];
  *(v118 + 64) = MEMORY[0x1E69E6158];
  *(v118 + 72) = @"DefaultValue";
  *(v118 + 80) = 0x7365636375732D78;
  *(v118 + 88) = 0xE900000000000073;
  v121 = v329;
  *(v118 + 104) = v120;
  *(v118 + 112) = v121;
  v334 = 0xD00000000000001BLL;
  *(v118 + 120) = 0xD00000000000001BLL;
  *(v118 + 128) = 0x80000001CA9E0510;
  *(v118 + 144) = v120;
  *(v118 + 152) = @"KeyboardType";
  *(v118 + 160) = 5001813;
  *(v118 + 168) = 0xE300000000000000;
  v122 = v330;
  *(v118 + 184) = v120;
  *(v118 + 192) = v122;
  v123 = @"KeyboardType";
  v124 = @"DefaultValue";
  v312 = v119;
  v313 = v121;
  v320 = v122;
  v310 = v123;
  v314 = v124;
  v125 = sub_1CA94C438();
  v127 = v126;
  v128 = sub_1CA94C438();
  v130 = v129;
  v331 = &v305;
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v305 - v345;
  sub_1CA948D98();
  v132 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v305 - v344;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v118 + 200) = sub_1CA2F9F14(v125, v127, v128, v130, 0, 0, v131, v133);
  *(v118 + 224) = v342;
  *(v118 + 232) = @"RequiredResources";
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v135 = swift_allocObject();
  v330 = xmmword_1CA981310;
  *(v135 + 16) = xmmword_1CA981310;
  v136 = swift_initStackObject();
  v329 = xmmword_1CA9813C0;
  *(v136 + 16) = xmmword_1CA9813C0;
  strcpy((v136 + 32), "WFParameterKey");
  *(v136 + 47) = -18;
  v137 = v324;
  *(v136 + 48) = v323;
  *(v136 + 56) = v137;
  v327 = 0xD000000000000010;
  v328 = 0x80000001CA993570;
  v138 = MEMORY[0x1E69E6158];
  *(v136 + 72) = MEMORY[0x1E69E6158];
  *(v136 + 80) = 0xD000000000000010;
  *(v136 + 88) = 0x80000001CA993570;
  *(v136 + 96) = 1;
  *(v136 + 120) = MEMORY[0x1E69E6370];
  *(v136 + 128) = 0x72756F7365524657;
  v326 = 0x80000001CA993590;
  *(v136 + 168) = v138;
  v139 = v334;
  *(v136 + 136) = 0xEF7373616C436563;
  *(v136 + 144) = v139;
  *(v136 + 152) = 0x80000001CA993590;
  v318 = @"RequiredResources";
  *(v135 + 32) = sub_1CA94C1E8();
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v118 + 264) = v325;
  *(v118 + 240) = v135;
  sub_1CA94C1E8();
  *(v341 + 40) = sub_1CA2F864C();
  v140 = swift_allocObject();
  *(v140 + 16) = v319;
  v141 = v312;
  v142 = v313;
  *(v140 + 32) = v312;
  *(v140 + 40) = 0xD000000000000014;
  *(v140 + 48) = v333;
  *(v140 + 64) = v138;
  *(v140 + 72) = v142;
  *(v140 + 80) = 0xD00000000000001ALL;
  *(v140 + 88) = 0x80000001CA9E0570;
  v143 = v310;
  *(v140 + 104) = v138;
  *(v140 + 112) = v143;
  *(v140 + 120) = 5001813;
  *(v140 + 128) = 0xE300000000000000;
  v144 = v320;
  *(v140 + 144) = v138;
  *(v140 + 152) = v144;
  v311 = v141;
  v312 = v142;
  v313 = v144;
  v310 = v143;
  v145 = sub_1CA94C438();
  v308 = v146;
  v309 = v145;
  v307 = sub_1CA94C438();
  v148 = v147;
  v320 = &v305;
  MEMORY[0x1EEE9AC00](v307);
  v149 = v345;
  sub_1CA948D98();
  v150 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v344;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v140 + 160) = sub_1CA2F9F14(v309, v308, v307, v148, 0, 0, &v305 - v149, &v305 - v151);
  *(v140 + 184) = v342;
  *(v140 + 192) = @"Placeholder";
  v320 = @"Placeholder";
  v153 = sub_1CA94C438();
  v307 = v154;
  v308 = v153;
  v155 = sub_1CA94C438();
  v306 = v156;
  v309 = &v305;
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v305 - v149;
  sub_1CA948D98();
  v158 = v343;
  v159 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v140 + 200) = sub_1CA2F9F14(v308, v307, v155, v306, 0, 0, v157, &v305 - v151);
  v161 = v318;
  *(v140 + 224) = v342;
  *(v140 + 232) = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = v330;
  v163 = swift_allocObject();
  *(v163 + 16) = v329;
  strcpy((v163 + 32), "WFParameterKey");
  *(v163 + 47) = -18;
  v164 = v324;
  *(v163 + 48) = v323;
  *(v163 + 56) = v164;
  v165 = MEMORY[0x1E69E6158];
  v167 = v327;
  v166 = v328;
  *(v163 + 72) = MEMORY[0x1E69E6158];
  *(v163 + 80) = v167;
  *(v163 + 88) = v166;
  *(v163 + 96) = 1;
  *(v163 + 120) = MEMORY[0x1E69E6370];
  *(v163 + 128) = 0x72756F7365524657;
  *(v163 + 168) = v165;
  *(v163 + 136) = 0xEF7373616C436563;
  v168 = v326;
  *(v163 + 144) = v334;
  *(v163 + 152) = v168;
  v318 = v161;
  *(v162 + 32) = sub_1CA94C1E8();
  *(v140 + 264) = v325;
  *(v140 + 240) = v162;
  sub_1CA94C1E8();
  *(v341 + 48) = sub_1CA2F864C();
  v169 = swift_allocObject();
  *(v169 + 16) = v319;
  v170 = v311;
  v171 = v312;
  *(v169 + 32) = v311;
  *(v169 + 40) = 0xD000000000000014;
  *(v169 + 48) = v333;
  v172 = v165;
  *(v169 + 64) = v165;
  *(v169 + 72) = v171;
  *(v169 + 80) = 0xD000000000000019;
  *(v169 + 88) = 0x80000001CA9E0600;
  *(v169 + 104) = v165;
  v173 = v310;
  *(v169 + 112) = v310;
  *(v169 + 120) = 5001813;
  *(v169 + 128) = 0xE300000000000000;
  v174 = v313;
  *(v169 + 144) = v172;
  *(v169 + 152) = v174;
  v311 = v170;
  v312 = v171;
  v313 = v174;
  *&v319 = v173;
  v175 = sub_1CA94C438();
  v308 = v176;
  v309 = v175;
  v177 = sub_1CA94C438();
  v307 = v178;
  v310 = &v305;
  MEMORY[0x1EEE9AC00](v177);
  v179 = v345;
  sub_1CA948D98();
  v180 = [v158 bundleURL];
  v306 = &v305;
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v305 - v344;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 160) = sub_1CA2F9F14(v309, v308, v177, v307, 0, 0, &v305 - v179, v181);
  v183 = v342;
  v184 = v320;
  *(v169 + 184) = v342;
  *(v169 + 192) = v184;
  v185 = sub_1CA94C438();
  v308 = v186;
  v309 = v185;
  v187 = sub_1CA94C438();
  v307 = v188;
  v310 = &v305;
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948D98();
  v189 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = v344;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 200) = sub_1CA2F9F14(v309, v308, v187, v307, 0, 0, &v305 - v179, &v305 - v190);
  v192 = v318;
  *(v169 + 224) = v183;
  *(v169 + 232) = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = v330;
  v194 = swift_allocObject();
  *(v194 + 16) = v329;
  strcpy((v194 + 32), "WFParameterKey");
  *(v194 + 47) = -18;
  v195 = v324;
  *(v194 + 48) = v323;
  *(v194 + 56) = v195;
  v196 = MEMORY[0x1E69E6158];
  v198 = v327;
  v197 = v328;
  *(v194 + 72) = MEMORY[0x1E69E6158];
  *(v194 + 80) = v198;
  *(v194 + 88) = v197;
  *(v194 + 96) = 1;
  *(v194 + 120) = MEMORY[0x1E69E6370];
  *(v194 + 128) = 0x72756F7365524657;
  *(v194 + 168) = v196;
  *(v194 + 136) = 0xEF7373616C436563;
  v199 = v326;
  *(v194 + 144) = v334;
  *(v194 + 152) = v199;
  v200 = v196;
  *(v193 + 32) = sub_1CA94C1E8();
  *(v169 + 264) = v325;
  *(v169 + 240) = v193;
  sub_1CA94C1E8();
  *(v341 + 56) = sub_1CA2F864C();
  v201 = swift_allocObject();
  *(v201 + 16) = v332;
  v202 = v311;
  v204 = v315;
  v203 = v316;
  *(v201 + 32) = v311;
  *(v201 + 40) = v204;
  *(v201 + 48) = v203;
  v205 = v321;
  *(v201 + 64) = v200;
  *(v201 + 72) = v205;
  *&v332 = v202;
  v323 = sub_1CA94C438();
  v316 = v206;
  v207 = sub_1CA94C438();
  v209 = v208;
  v324 = &v305;
  MEMORY[0x1EEE9AC00](v207);
  v210 = v345;
  sub_1CA948D98();
  v211 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v201 + 80) = sub_1CA2F9F14(v323, v316, v207, v209, 0, 0, &v305 - v210, &v305 - v190);
  v213 = v342;
  v214 = v312;
  v215 = v313;
  *(v201 + 104) = v342;
  *(v201 + 112) = v214;
  v315 = 0xD000000000000022;
  v316 = 0x80000001CA9E07F0;
  *(v201 + 120) = 0xD000000000000022;
  *(v201 + 128) = 0x80000001CA9E07F0;
  *(v201 + 144) = MEMORY[0x1E69E6158];
  *(v201 + 152) = v215;
  v323 = v214;
  v324 = v215;
  v216 = sub_1CA94C438();
  v311 = v217;
  v312 = v216;
  v218 = sub_1CA94C438();
  v220 = v219;
  v313 = &v305;
  MEMORY[0x1EEE9AC00](v218);
  sub_1CA948D98();
  v221 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v221);
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v223 = sub_1CA2F9F14(v312, v311, v218, v220, 0, 0, &v305 - v210, &v305 - v190);
  *(v201 + 184) = v213;
  *(v201 + 160) = v223;
  sub_1CA94C1E8();
  *(v341 + 64) = sub_1CA2F864C();
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_1CA981400;
  *(v224 + 32) = v332;
  *(v224 + 40) = 0xD000000000000014;
  *(v224 + 48) = v333;
  v225 = MEMORY[0x1E69E6158];
  v226 = v314;
  *(v224 + 64) = MEMORY[0x1E69E6158];
  *(v224 + 72) = v226;
  *(v224 + 80) = 0xD000000000000014;
  *(v224 + 88) = 0x80000001CA9E0880;
  v227 = v321;
  *(v224 + 104) = v225;
  *(v224 + 112) = v227;
  v228 = sub_1CA94C438();
  v313 = v229;
  v314 = v228;
  v230 = sub_1CA94C438();
  v312 = v231;
  v321 = &v305;
  MEMORY[0x1EEE9AC00](v230);
  v232 = v345;
  sub_1CA948D98();
  v233 = v343;
  v234 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  v235 = &v305 - v344;
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v224 + 120) = sub_1CA2F9F14(v314, v313, v230, v312, 0, 0, &v305 - v232, v235);
  v237 = v323;
  *(v224 + 144) = v342;
  *(v224 + 152) = v237;
  *(v224 + 160) = v334;
  *(v224 + 168) = 0x80000001CA9E0950;
  v238 = MEMORY[0x1E69E6158];
  v239 = v319;
  *(v224 + 184) = MEMORY[0x1E69E6158];
  *(v224 + 192) = v239;
  *(v224 + 200) = 5001813;
  *(v224 + 208) = 0xE300000000000000;
  v240 = v324;
  *(v224 + 224) = v238;
  *(v224 + 232) = v240;
  v241 = sub_1CA94C438();
  v313 = v242;
  v314 = v241;
  v243 = sub_1CA94C438();
  v312 = v244;
  v321 = &v305;
  MEMORY[0x1EEE9AC00](v243);
  v245 = &v305 - v232;
  sub_1CA948D98();
  v246 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v246);
  v247 = v344;
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v224 + 240) = sub_1CA2F9F14(v314, v313, v243, v312, 0, 0, v245, &v305 - v247);
  v249 = v318;
  *(v224 + 264) = v342;
  *(v224 + 272) = v249;
  v250 = swift_allocObject();
  *(v250 + 16) = v330;
  v251 = swift_allocObject();
  *(v251 + 16) = v329;
  strcpy((v251 + 32), "WFParameterKey");
  *(v251 + 47) = -18;
  v252 = v316;
  *(v251 + 48) = v315;
  *(v251 + 56) = v252;
  v253 = MEMORY[0x1E69E6158];
  v255 = v327;
  v254 = v328;
  *(v251 + 72) = MEMORY[0x1E69E6158];
  *(v251 + 80) = v255;
  *(v251 + 88) = v254;
  *(v251 + 96) = 1;
  v256 = MEMORY[0x1E69E6370];
  *(v251 + 120) = MEMORY[0x1E69E6370];
  *(v251 + 128) = 0x72756F7365524657;
  *(v251 + 168) = v253;
  *(v251 + 136) = 0xEF7373616C436563;
  v257 = v326;
  *(v251 + 144) = v334;
  *(v251 + 152) = v257;
  v258 = v253;
  *(v250 + 32) = sub_1CA94C1E8();
  *(v224 + 304) = v325;
  *(v224 + 280) = v250;
  sub_1CA94C1E8();
  *(v341 + 72) = sub_1CA2F864C();
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_1CA981300;
  *(v259 + 32) = @"AutocapitalizationType";
  *(v259 + 40) = 1701736270;
  *(v259 + 48) = 0xE400000000000000;
  v260 = v332;
  *(v259 + 64) = v258;
  *(v259 + 72) = v260;
  *(v259 + 80) = 0xD000000000000014;
  *(v259 + 88) = v333;
  *(v259 + 104) = v258;
  *(v259 + 112) = @"DisableAutocorrection";
  *(v259 + 120) = 1;
  v261 = v323;
  *(v259 + 144) = v256;
  *(v259 + 152) = v261;
  strcpy((v259 + 160), "WFXCallbackURL");
  *(v259 + 175) = -18;
  v262 = v319;
  *(v259 + 184) = v258;
  *(v259 + 192) = v262;
  *(v259 + 200) = 5001813;
  *(v259 + 208) = 0xE300000000000000;
  v263 = v324;
  *(v259 + 224) = v258;
  *(v259 + 232) = v263;
  v264 = @"AutocapitalizationType";
  v265 = @"DisableAutocorrection";
  v336 = sub_1CA94C438();
  v334 = v266;
  v267 = sub_1CA94C438();
  v333 = v268;
  v339 = &v305;
  MEMORY[0x1EEE9AC00](v267);
  v269 = v345;
  sub_1CA948D98();
  v270 = v343;
  v271 = [v343 bundleURL];
  *&v332 = &v305;
  MEMORY[0x1EEE9AC00](v271);
  v272 = v247;
  sub_1CA948B68();

  v273 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 240) = sub_1CA2F9F14(v336, v334, v267, v333, 0, 0, &v305 - v269, &v305 - v247);
  v274 = v342;
  v275 = v320;
  *(v259 + 264) = v342;
  *(v259 + 272) = v275;
  v336 = sub_1CA94C438();
  v334 = v276;
  v277 = sub_1CA94C438();
  v279 = v278;
  v339 = &v305;
  MEMORY[0x1EEE9AC00](v277);
  v280 = &v305 - v269;
  sub_1CA948D98();
  v281 = [v270 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  sub_1CA948B68();

  v282 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v259 + 280) = sub_1CA2F9F14(v336, v334, v277, v279, 0, 0, v280, &v305 - v272);
  *(v259 + 304) = v274;
  *(v259 + 312) = @"TextContentType";
  *(v259 + 344) = MEMORY[0x1E69E6158];
  *(v259 + 320) = 5001813;
  *(v259 + 328) = 0xE300000000000000;
  v283 = @"TextContentType";
  sub_1CA94C1E8();
  v284 = sub_1CA2F864C();
  v285 = v341;
  *(v341 + 80) = v284;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v287 = v335;
  v335[50] = v285;
  v287[53] = v286;
  v287[54] = @"ParameterSummary";
  v288 = @"ParameterSummary";
  v289 = sub_1CA94C438();
  v291 = v290;
  v292 = sub_1CA94C438();
  v294 = v293;
  MEMORY[0x1EEE9AC00](v292);
  v295 = &v305 - v345;
  sub_1CA948D98();
  v296 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v296);
  v297 = &v305 - v344;
  sub_1CA948B68();

  v298 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v299 = sub_1CA2F9F14(v289, v291, v292, v294, 0, 0, v295, v297);
  v300 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v301 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v302 = v335;
  v335[55] = v300;
  v302[58] = v301;
  v302[59] = @"RequiredResources";
  v302[63] = v322;
  v302[60] = &unk_1F4A0C708;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v303 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA69F030()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9E0A60;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = v12;
  v13 = &v111 - v124;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v122 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v123 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v111 - v123;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v119 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v116 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v111 - v124;
  sub_1CA948D98();
  v30 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v111 - v123;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v116, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v120;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v119;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x80000001CA9ABBD0;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v119 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v117;
  *(v37 + 192) = &unk_1F4A0C738;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v116 = v43;
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v112 = v46;
  v113 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v114 = &v111;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v111 - v124;
  sub_1CA948D98();
  v51 = v121;
  v52 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v111 - v123;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v113, v112, v47, v49, 0, 0, v50, v53);
  v55 = v120;
  *(inited + 304) = v120;
  *(inited + 312) = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = v119;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v113 = v59;
  v114 = v58;
  v112 = sub_1CA94C438();
  v61 = v60;
  v115 = &v111;
  MEMORY[0x1EEE9AC00](v112);
  v62 = &v111 - v124;
  sub_1CA948D98();
  v63 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v111 - v123;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v114, v113, v112, v61, 0, 0, v62, v64);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 216) = v117;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F4A0C768;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v116;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = v119;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000019;
  *(v67 + 48) = 0x80000001CA99B030;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E494657;
  *(v67 + 88) = 0xE700000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438();
  v113 = v73;
  v114 = v72;
  v74 = sub_1CA94C438();
  v112 = v75;
  v115 = &v111;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v124;
  sub_1CA948D98();
  v77 = v121;
  v78 = [v121 bundleURL];
  v111 = &v111;
  MEMORY[0x1EEE9AC00](v78);
  *&v119 = inited;
  v79 = v123;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v114, v113, v74, v112, 0, 0, &v111 - v76, &v111 - v79);
  v81 = v120;
  *(v67 + 144) = v120;
  *(v67 + 152) = @"Placeholder";
  v82 = @"Placeholder";
  v83 = sub_1CA94C438();
  v113 = v84;
  v114 = v83;
  v112 = sub_1CA94C438();
  v86 = v85;
  v115 = &v111;
  MEMORY[0x1EEE9AC00](v112);
  v87 = &v111 - v76;
  sub_1CA948D98();
  v88 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v114, v113, v112, v86, 0, 0, v87, &v111 - v79);
  *(v67 + 184) = v81;
  *(v67 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v117;
  v117[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v94 = v119;
  *(v119 + 360) = v92;
  *(v94 + 384) = v93;
  *(v94 + 392) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v120 = &v111;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v111 - v124;
  sub_1CA948D98();
  v103 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v111 - v123;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v94 + 400) = v107;
  *(v94 + 424) = v108;
  *(v94 + 432) = @"ResidentCompatible";
  *(v94 + 464) = MEMORY[0x1E69E6370];
  *(v94 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v109 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA69FF3C()
{
  v0 = sub_1CA949D18();
  v121 = *(v0 - 8);
  v122 = v0;
  v1 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v120 = v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFPrintAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v125 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v129 = v14;
  v130 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v112 - v130;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v127 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v128 = v18;
  v126 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v112 - v126;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v125, v8, v9, v11, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v125 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"Description";
  v124 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v119 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438();
  v117 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v118 = v112;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v112 - v130;
  sub_1CA948D98();
  v32 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v112 - v126;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v117, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v125;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v124;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v36;
  *(inited + 152) = @"DisabledOnPlatforms";
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A0C798;
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  v124 = v37;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  strcpy((inited + 240), "printer.fill");
  *(inited + 253) = 0;
  *(inited + 254) = -5120;
  *(inited + 264) = v38;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 0;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  *(v39 + 216) = v37;
  *(v39 + 184) = 0xE500000000000000;
  *(v39 + 192) = &unk_1F4A0C7C8;
  v41 = @"DisabledOnPlatforms";
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v45;
  *(inited + 304) = v46;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 1;
  *(inited + 344) = v40;
  *(inited + 352) = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v118 = v112;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v112 - v130;
  sub_1CA948D98();
  v56 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v112 - v126;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  *(inited + 384) = v125;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CA981370;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000019;
  *(v59 + 48) = 0x80000001CA99B030;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"Key";
  *(v59 + 80) = 0x7475706E494657;
  *(v59 + 88) = 0xE700000000000000;
  *(v59 + 104) = v60;
  *(v59 + 112) = @"Label";
  v61 = @"Parameters";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v65 = sub_1CA94C438();
  v114 = v66;
  v115 = v65;
  v113 = sub_1CA94C438();
  v68 = v67;
  v116 = v112;
  MEMORY[0x1EEE9AC00](v113);
  v69 = v112 - v130;
  sub_1CA948D98();
  v70 = v127;
  v71 = [v127 bundleURL];
  v112[1] = v112;
  MEMORY[0x1EEE9AC00](v71);
  v72 = v126;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 120) = sub_1CA2F9F14(v115, v114, v113, v68, 0, 0, v69, v112 - v72);
  v74 = v125;
  *(v59 + 144) = v125;
  *(v59 + 152) = @"Placeholder";
  v75 = @"Placeholder";
  v76 = sub_1CA94C438();
  v114 = v77;
  v115 = v76;
  v78 = sub_1CA94C438();
  v113 = v79;
  v116 = v112;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v112 - v130;
  sub_1CA948D98();
  v81 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 160) = sub_1CA2F9F14(v115, v114, v78, v113, 0, 0, v80, v112 - v72);
  *(v59 + 184) = v74;
  *(v59 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v83 = swift_allocObject();
  *(v83 + 16) = v119;
  v84 = @"PreferredTypes";
  v85 = v120;
  sub_1CA949CA8();
  v86 = sub_1CA949C68();
  v88 = v87;
  (*(v121 + 8))(v85, v122);
  *(v83 + 32) = v86;
  *(v83 + 40) = v88;
  *(v59 + 224) = v124;
  *(v59 + 200) = v83;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v89 = sub_1CA2F864C();
  v90 = v118;
  v118[4] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v90;
  *(inited + 424) = v91;
  *(inited + 432) = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438();
  v95 = v94;
  v96 = sub_1CA94C438();
  v98 = v97;
  v125 = v112;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v112 - v130;
  sub_1CA948D98();
  v100 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v112 - v126;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v104;
  *(inited + 464) = v105;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F4A0C808;
  v106 = v124;
  *(inited + 504) = v124;
  *(inited + 512) = @"UserInterfaceClasses";
  v107 = @"RequiredResources";
  v108 = @"UserInterfaceClasses";
  v109 = sub_1CA94C1E8();
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 520) = v109;
  *(inited + 552) = @"UserInterfaces";
  *(inited + 584) = v106;
  *(inited + 560) = &unk_1F4A0C898;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v110 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6A0DDC()
{
  v141 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9E0C90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v144 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = v12;
  v150 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v131 - v150;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v146 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v147 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v131 - v148;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v145 = v20;
  v21 = v144;
  v144[10] = v19;
  v21[13] = v20;
  v21[14] = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v140 = v24;
  v21[15] = v23;
  v21[18] = v24;
  v21[19] = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA981310;
  *(v25 + 32) = @"DescriptionSummary";
  v26 = @"Description";
  v27 = @"DescriptionSummary";
  v28 = sub_1CA94C438();
  v139 = v29;
  v30 = sub_1CA94C438();
  v32 = v31;
  v142 = &v131;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v131 - v150;
  sub_1CA948D98();
  v34 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v131 - v148;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v28, v139, v30, v32, 0, 0, v33, v35);
  *(v25 + 64) = v145;
  *(v25 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v143;
  v21[20] = sub_1CA6B3784();
  v21[23] = v38;
  v21[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 0;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x4C52554657;
  *(v39 + 104) = 0xE500000000000000;
  *(v39 + 120) = MEMORY[0x1E69E6158];
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v139;
  *(v39 + 192) = &unk_1F4A0C908;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v21[25] = v43;
  v21[28] = v44;
  v21[29] = @"InputPassthrough";
  *(v21 + 240) = 1;
  v21[33] = v41;
  v21[34] = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v143 = &v131;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v131 - v150;
  sub_1CA948D98();
  v54 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v131 - v148;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21[35] = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v21[38] = v145;
  v21[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v143 = swift_allocObject();
  *(v143 + 1) = xmmword_1CA981360;
  v142 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CA981370;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000011;
  *(v57 + 48) = 0x80000001CA99E620;
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"DefaultValue";
  *(v57 + 80) = 0;
  *(v57 + 104) = MEMORY[0x1E69E6370];
  *(v57 + 112) = @"Description";
  v137 = @"Class";
  v58 = @"Parameters";
  v59 = @"DefaultValue";
  v60 = @"Description";
  v61 = sub_1CA94C438();
  v134 = v62;
  v135 = v61;
  v63 = sub_1CA94C438();
  v65 = v64;
  v136 = &v131;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v131 - v150;
  sub_1CA948D98();
  v67 = v146;
  v68 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = v148;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v135, v134, v63, v65, 0, 0, v66, &v131 - v69);
  v71 = v145;
  *(v57 + 144) = v145;
  *(v57 + 152) = @"Key";
  *(v57 + 160) = 0xD000000000000013;
  *(v57 + 168) = 0x80000001CA9E0E50;
  *(v57 + 184) = MEMORY[0x1E69E6158];
  *(v57 + 192) = @"Label";
  v72 = @"Key";
  v73 = @"Label";
  v133 = v72;
  v134 = v73;
  v135 = sub_1CA94C438();
  v132 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v136 = &v131;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v131 - v150;
  sub_1CA948D98();
  v79 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v135, v132, v75, v77, 0, 0, v78, &v131 - v69);
  *(v57 + 224) = v71;
  *(v57 + 200) = v81;
  _s3__C3KeyVMa_0(0);
  v136 = v82;
  v135 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v143[4] = sub_1CA2F864C();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CA981300;
  *(v83 + 32) = @"AutocapitalizationType";
  *(v83 + 40) = 1701736270;
  *(v83 + 48) = 0xE400000000000000;
  v84 = MEMORY[0x1E69E6158];
  v85 = v137;
  *(v83 + 64) = MEMORY[0x1E69E6158];
  *(v83 + 72) = v85;
  *(v83 + 80) = 0xD000000000000014;
  *(v83 + 88) = 0x80000001CA99B500;
  *(v83 + 104) = v84;
  *(v83 + 112) = @"DisableAutocorrection";
  *(v83 + 120) = 1;
  v86 = v133;
  *(v83 + 144) = MEMORY[0x1E69E6370];
  *(v83 + 152) = v86;
  *(v83 + 160) = 0x4C52554657;
  *(v83 + 168) = 0xE500000000000000;
  *(v83 + 184) = v84;
  *(v83 + 192) = @"KeyboardType";
  *(v83 + 200) = 5001813;
  *(v83 + 208) = 0xE300000000000000;
  *(v83 + 224) = v84;
  *(v83 + 232) = v134;
  v87 = @"AutocapitalizationType";
  v88 = @"DisableAutocorrection";
  v89 = @"KeyboardType";
  v137 = sub_1CA94C438();
  v134 = v90;
  v133 = sub_1CA94C438();
  v92 = v91;
  v138 = &v131;
  MEMORY[0x1EEE9AC00](v133);
  v93 = &v131 - v150;
  sub_1CA948D98();
  v94 = v146;
  v95 = [v146 bundleURL];
  v132 = &v131;
  MEMORY[0x1EEE9AC00](v95);
  v96 = v144;
  v97 = &v131 - v148;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 240) = sub_1CA2F9F14(v137, v134, v133, v92, 0, 0, v93, v97);
  v99 = v145;
  *(v83 + 264) = v145;
  *(v83 + 272) = @"Placeholder";
  v100 = @"Placeholder";
  v137 = sub_1CA94C438();
  v134 = v101;
  v102 = sub_1CA94C438();
  v133 = v103;
  v138 = &v131;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v131 - v150;
  sub_1CA948D98();
  v105 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v131 - v148;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 280) = sub_1CA2F9F14(v137, v134, v102, v133, 0, 0, v104, v106);
  *(v83 + 304) = v99;
  *(v83 + 312) = @"TextContentType";
  *(v83 + 344) = MEMORY[0x1E69E6158];
  *(v83 + 320) = 5001813;
  *(v83 + 328) = 0xE300000000000000;
  v108 = @"TextContentType";
  sub_1CA94C1E8();
  v109 = sub_1CA2F864C();
  v110 = v143;
  v143[5] = v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v96[40] = v110;
  v96[43] = v111;
  v96[44] = @"ParameterSummary";
  v112 = @"ParameterSummary";
  v113 = sub_1CA94C438();
  v115 = v114;
  v116 = sub_1CA94C438();
  v118 = v117;
  v145 = &v131;
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v131 - v150;
  sub_1CA948D98();
  v120 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v131 - v148;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v113, v115, v116, v118, 0, 0, v119, v121);
  v124 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v125 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v96[45] = v124;
  v96[48] = v125;
  v96[49] = @"RequiredResources";
  v96[50] = &unk_1F4A0C948;
  v126 = v139;
  v96[53] = v139;
  v96[54] = @"UserInterfaceClasses";
  v127 = @"RequiredResources";
  v128 = @"UserInterfaceClasses";
  v96[55] = sub_1CA94C1E8();
  v96[58] = v140;
  v96[59] = @"UserInterfaces";
  v96[63] = v126;
  v96[60] = &unk_1F4A0C9F8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v129 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6A1F00()
{
  v154 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9E0F20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v164 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v165 = v12;
  v13 = &v142 - v164;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v163 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v161 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v162 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v142 - v162;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v160 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v158 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v159 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v156 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v157 = &v142;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v142 - v164;
  sub_1CA948D98();
  v33 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v142 - v162;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v156, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v160;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v158;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD00000000000001CLL;
  *(inited + 248) = 0x80000001CA9E0F90;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 0x6E65657247;
  *(inited + 288) = 0xE500000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  *(inited + 344) = v39;
  *(inited + 352) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"IconSymbolColor";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  *&v158 = &v142;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v142 - v164;
  sub_1CA948D98();
  v52 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v142 - v162;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 384) = v160;
  *(inited + 392) = @"Output";
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v158 = xmmword_1CA9813C0;
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v155 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v156 = &v142;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v142 - v164;
  sub_1CA948D98();
  v63 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v142 - v162;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 96) = sub_1CA2F9F14(v57, v155, v59, v61, 0, 0, v62, v64);
  *(v55 + 120) = v160;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 144) = &unk_1F4A0CA78;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 400) = v67;
  *(inited + 424) = v68;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v156 = swift_allocObject();
  *(v156 + 1) = xmmword_1CA981360;
  v155 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  v150 = xmmword_1CA981350;
  *(v69 + 16) = xmmword_1CA981350;
  v70 = @"Parameters";
  *(v69 + 32) = sub_1CA94C368();
  *(v69 + 40) = 1;
  *(v69 + 64) = MEMORY[0x1E69E6370];
  *(v69 + 72) = @"Class";
  v148 = 0xD000000000000013;
  v149 = 0x80000001CA99B730;
  *(v69 + 80) = 0xD000000000000013;
  *(v69 + 88) = 0x80000001CA99B730;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"Key";
  v152 = 0xD00000000000001ELL;
  v153 = 0x80000001CA9E1030;
  *(v69 + 120) = 0xD00000000000001ELL;
  *(v69 + 128) = 0x80000001CA9E1030;
  *(v69 + 144) = v66;
  *(v69 + 152) = @"Label";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v146 = v71;
  v145 = v72;
  v147 = v73;
  v74 = sub_1CA94C438();
  v143 = v75;
  v76 = sub_1CA94C438();
  v78 = v77;
  v144 = &v142;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v142 - v164;
  sub_1CA948D98();
  v80 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v142 - v162;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v74, v143, v76, v78, 0, 0, v79, v81);
  *(v69 + 184) = v160;
  *(v69 + 160) = v83;
  _s3__C3KeyVMa_0(0);
  v144 = v84;
  v143 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v156[4] = sub_1CA2F864C();
  v85 = swift_allocObject();
  *(v85 + 16) = v150;
  *(v85 + 32) = sub_1CA94C368();
  *(v85 + 40) = 1;
  v86 = v146;
  *(v85 + 64) = MEMORY[0x1E69E6370];
  *(v85 + 72) = v86;
  v87 = v149;
  *(v85 + 80) = v148;
  *(v85 + 88) = v87;
  v88 = MEMORY[0x1E69E6158];
  v89 = v145;
  *(v85 + 104) = MEMORY[0x1E69E6158];
  *(v85 + 112) = v89;
  v151 = 0x80000001CA9E1090;
  *&v150 = 0xD00000000000001FLL;
  *(v85 + 120) = 0xD00000000000001FLL;
  *(v85 + 128) = 0x80000001CA9E1090;
  v90 = v147;
  *(v85 + 144) = v88;
  *(v85 + 152) = v90;
  v91 = sub_1CA94C438();
  v148 = v92;
  v93 = sub_1CA94C438();
  v95 = v94;
  v149 = &v142;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v142 - v164;
  sub_1CA948D98();
  v97 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v142 - v162;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v91, v148, v93, v95, 0, 0, v96, v98);
  *(v85 + 184) = v160;
  *(v85 + 160) = v100;
  sub_1CA94C1E8();
  v101 = sub_1CA2F864C();
  v102 = v156;
  v156[5] = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v102;
  *(inited + 464) = v103;
  *(inited + 472) = @"ParameterSummary";
  v104 = @"ParameterSummary";
  v105 = sub_1CA94C438();
  v107 = v106;
  v108 = sub_1CA94C438();
  v110 = v109;
  v160 = &v142;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v142 - v164;
  sub_1CA948D98();
  v112 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v142 - v162;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v105, v107, v108, v110, 0, 0, v111, v113);
  v116 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v117 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v116;
  *(inited + 504) = v117;
  *(inited + 512) = @"RequiredResources";
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v164 = swift_allocObject();
  v165 = xmmword_1CA97EDF0;
  *(v164 + 16) = xmmword_1CA97EDF0;
  v118 = swift_initStackObject();
  *(v118 + 16) = v165;
  v162 = 0xD000000000000011;
  v163 = 0x80000001CA99B240;
  *(v118 + 32) = 0xD000000000000011;
  *(v118 + 40) = 0x80000001CA99B240;
  v119 = swift_allocObject();
  *(v119 + 16) = v159;
  v120 = swift_allocObject();
  *(v120 + 16) = v158;
  strcpy((v120 + 32), "WFParameterKey");
  *(v120 + 47) = -18;
  v121 = v151;
  *(v120 + 48) = v150;
  *(v120 + 56) = v121;
  v160 = 0x80000001CA993570;
  v122 = MEMORY[0x1E69E6158];
  *(v120 + 72) = MEMORY[0x1E69E6158];
  *(v120 + 80) = 0xD000000000000010;
  *(v120 + 88) = 0x80000001CA993570;
  v123 = @"RequiredResources";
  v124 = v122;
  v125 = sub_1CA94C1E8();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v120 + 96) = v125;
  *(v120 + 120) = v126;
  *(v120 + 128) = 0x72756F7365524657;
  v155 = 0x80000001CA993590;
  v156 = v126;
  *(v120 + 168) = v124;
  v151 = 0xD00000000000001BLL;
  *(v120 + 136) = 0xEF7373616C436563;
  *(v120 + 144) = 0xD00000000000001BLL;
  *(v120 + 152) = 0x80000001CA993590;
  *(v119 + 32) = sub_1CA94C1E8();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v118 + 48) = v119;
  *(v118 + 72) = v127;
  *(v118 + 80) = 0x72756F7365524657;
  *&v150 = 0x80000001CA994040;
  v128 = MEMORY[0x1E69E6158];
  *(v118 + 120) = MEMORY[0x1E69E6158];
  v149 = 0xD000000000000018;
  *(v118 + 88) = 0xEF7373616C436563;
  *(v118 + 96) = 0xD000000000000018;
  *(v118 + 104) = 0x80000001CA994040;
  v129 = v128;
  *(v164 + 32) = sub_1CA94C1E8();
  v130 = swift_allocObject();
  *(v130 + 16) = v165;
  v131 = v163;
  *(v130 + 32) = v162;
  *(v130 + 40) = v131;
  v132 = swift_allocObject();
  *(v132 + 16) = v159;
  v133 = swift_allocObject();
  *(v133 + 16) = v158;
  strcpy((v133 + 32), "WFParameterKey");
  *(v133 + 47) = -18;
  v134 = v153;
  *(v133 + 48) = v152;
  *(v133 + 56) = v134;
  *(v133 + 72) = v129;
  *(v133 + 80) = 0xD000000000000010;
  *(v133 + 88) = v160;
  *(v133 + 96) = sub_1CA94C1E8();
  *(v133 + 120) = v156;
  *(v133 + 128) = 0x72756F7365524657;
  *(v133 + 168) = v129;
  v135 = v151;
  *(v133 + 136) = 0xEF7373616C436563;
  *(v133 + 144) = v135;
  *(v133 + 152) = v155;
  *(v132 + 32) = sub_1CA94C1E8();
  *(v130 + 48) = v132;
  *(v130 + 72) = v127;
  *(v130 + 80) = 0x72756F7365524657;
  *(v130 + 120) = v129;
  v137 = v149;
  v136 = v150;
  *(v130 + 88) = 0xEF7373616C436563;
  *(v130 + 96) = v137;
  *(v130 + 104) = v136;
  v138 = sub_1CA94C1E8();
  v139 = v164;
  *(v164 + 40) = v138;
  *(inited + 544) = v127;
  *(inited + 520) = v139;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v140 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6A3220(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1CA94AD98();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA6A32E0, 0, 0);
}

uint64_t sub_1CA6A32E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69DAFD0])
  {
    v5 = v0[5];
    (*(v0[4] + 96))(v5, v0[3]);
    if (*v5 != 22)
    {
      v6 = sub_1CA94CEA8();
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() linkValueTypeFromWorkflowUnitType_];

LABEL_25:
        v11 = v0[5];

        v12 = v0[1];

        return v12(v8);
      }
    }

    v10 = [objc_opt_self() unsupportedMeasurementValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB048])
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69AC8D8]) init];
LABEL_24:
    v8 = v9;
    goto LABEL_25;
  }

  if (v4 == *MEMORY[0x1E69DB030])
  {
    v10 = [objc_opt_self() BOOLValueType];
LABEL_23:
    v9 = v10;
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x1E69DB020])
  {
    v10 = [objc_opt_self() intValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB050] || v4 == *MEMORY[0x1E69DB068])
  {
    v10 = [objc_opt_self() doubleValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB060])
  {
    v10 = [objc_opt_self() stringValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB038])
  {
    v10 = [objc_opt_self() dateValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFF0])
  {
    v10 = [objc_opt_self() dateComponentsValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB028])
  {
    v10 = [objc_opt_self() URLValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFC0])
  {
    sub_1CA2FFC58();
    swift_allocError();
    v15 = 1;
LABEL_30:
    *v14 = v15;
    swift_willThrow();
    goto LABEL_31;
  }

  if (v4 == *MEMORY[0x1E69DB008])
  {
    v10 = [objc_opt_self() attributedStringValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFE8])
  {
    v10 = [objc_opt_self() currencyAmountValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFE0])
  {
    v10 = [objc_opt_self() paymentMethodValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB080])
  {
    v10 = [objc_opt_self() placemarkValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB058])
  {
    v10 = [objc_opt_self() personValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB040])
  {
LABEL_45:
    v10 = [objc_opt_self() fileValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB018])
  {
    v10 = [objc_opt_self() applicationValueType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DB000])
  {
    goto LABEL_49;
  }

  if (v4 == *MEMORY[0x1E69DAFF8])
  {
    v10 = [objc_opt_self() recurrenceRuleType];
    goto LABEL_23;
  }

  if (v4 == *MEMORY[0x1E69DAFC8])
  {
    goto LABEL_45;
  }

  if (v4 == *MEMORY[0x1E69DB078])
  {
LABEL_49:
    sub_1CA2FFC58();
    swift_allocError();
    v15 = 2;
    goto LABEL_30;
  }

  if (v4 == *MEMORY[0x1E69DAFD8])
  {
    sub_1CA6A3970();
    v9 = sub_1CA94CDA8();
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x1E69DB070])
  {
    sub_1CA6A3970();
    v9 = sub_1CA94CDC8();
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x1E69DB010])
  {
    sub_1CA6A3970();
    v9 = sub_1CA94CDB8();
    goto LABEL_24;
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  sub_1CA2FFC58();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  (*(v19 + 8))(v18, v20);
LABEL_31:
  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

unint64_t sub_1CA6A3970()
{
  result = qword_1EC444698;
  if (!qword_1EC444698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC444698);
  }

  return result;
}

uint64_t sub_1CA6A39B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1CA437724;

  return sub_1CA6A3220(a2);
}

id sub_1CA6A3A80()
{
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9E1200;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = v12;
  v115 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v101 - v115;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v112 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v111 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v114 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v101 - v114;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v110 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v23;
  *(inited + 192) = @"DeletesInput";
  *(inited + 200) = 1;
  *(inited + 224) = v23;
  *(inited + 232) = @"Description";
  v108 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"DeletesInput";
  v26 = @"Description";
  v27 = @"DescriptionSummary";
  v28 = sub_1CA94C438();
  v106 = v29;
  v30 = sub_1CA94C438();
  v32 = v31;
  v107 = &v101;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v101 - v115;
  sub_1CA948D98();
  v34 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v101 - v114;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v28, v106, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v110;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v108;
  *(inited + 240) = sub_1CA6B3784();
  *(inited + 264) = v38;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v105 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  *(v39 + 48) = 1;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 72) = MEMORY[0x1E69E6370];
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = MEMORY[0x1E69E6158];
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  *(v39 + 184) = 0xE500000000000000;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v108;
  *(v39 + 192) = &unk_1F4A0CB98;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v42;
  *(inited + 304) = v43;
  *(inited + 312) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v107 = &v101;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v101 - v115;
  sub_1CA948D98();
  v52 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v101 - v114;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 344) = v110;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v107 = swift_allocObject();
  *(v107 + 1) = xmmword_1CA9813B0;
  v106 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = v105;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000019;
  *(v55 + 48) = 0x80000001CA99B030;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"Key";
  *(v55 + 80) = 0x7475706E494657;
  *(v55 + 88) = 0xE700000000000000;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Label";
  v57 = @"Parameters";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438();
  v103 = v62;
  v104 = v61;
  v63 = sub_1CA94C438();
  v102 = v64;
  *&v105 = &v101;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v101 - v115;
  sub_1CA948D98();
  v66 = v112;
  v67 = [v112 bundleURL];
  v101 = &v101;
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v101 - v114;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 120) = sub_1CA2F9F14(v104, v103, v63, v102, 0, 0, v65, v68);
  v70 = v110;
  *(v55 + 144) = v110;
  *(v55 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438();
  v103 = v73;
  v104 = v72;
  v102 = sub_1CA94C438();
  v75 = v74;
  *&v105 = &v101;
  MEMORY[0x1EEE9AC00](v102);
  v76 = &v101 - v115;
  sub_1CA948D98();
  v77 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v101 - v114;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v104, v103, v102, v75, 0, 0, v76, v78);
  *(v55 + 184) = v70;
  *(v55 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v81 = sub_1CA2F864C();
  v82 = v107;
  v107[4] = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v82;
  *(inited + 384) = v83;
  *(inited + 392) = @"ParameterSummary";
  v84 = @"ParameterSummary";
  v85 = sub_1CA94C438();
  v87 = v86;
  v88 = sub_1CA94C438();
  v90 = v89;
  v110 = &v101;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v101 - v115;
  sub_1CA948D98();
  v92 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v101 - v114;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  v96 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v97 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v96;
  *(inited + 424) = v97;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v108;
  *(inited + 440) = &unk_1F4A0CBC8;
  v98 = @"RequiredResources";
  v99 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v99;
  *(inited + 480) = 0xD000000000000015;
  *(inited + 488) = 0x80000001CA9E12D0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6A4820()
{
  v1 = *(v0 + OBJC_IVAR___WFUserVisibleString_content);
  v2 = *(v0 + OBJC_IVAR___WFUserVisibleString_content + 8);
  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA6A48CC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___WFUserVisibleString_content);
  v4 = *(v2 + OBJC_IVAR___WFUserVisibleString_content + 8);
  *v3 = a1;
  v3[1] = a2;
}

BOOL sub_1CA6A491C()
{
  v1 = [v0 content];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

id sub_1CA6A49F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (v5 + OBJC_IVAR___WFUserVisibleString_content);
  *v6 = a1;
  v6[1] = a2;
  v7 = (v5 + OBJC_IVAR___WFUserVisibleString_comment);
  *v7 = a4;
  v7[1] = a5;
  *(v5 + OBJC_IVAR___WFUserVisibleString_kind) = a3;
  v9.super_class = WFUserVisibleString;
  return objc_msgSendSuper2(&v9, sel_init);
}

BOOL WFUserVisibleString.isEqual(_:)(uint64_t a1)
{
  sub_1CA33C7B4(a1, v19);
  if (v20)
  {
    type metadata accessor for WFUserVisibleString();
    if (swift_dynamicCast())
    {
      v2 = [v1 content];
      v3 = sub_1CA94C3A8();
      v5 = v4;

      v6 = [v18 content];
      v7 = sub_1CA94C3A8();
      v9 = v8;

      if (v3 == v7 && v5 == v9)
      {
      }

      else
      {
        v11 = sub_1CA94D7F8();

        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v12 = *&v1[OBJC_IVAR___WFUserVisibleString_comment + 8];
      v13 = *&v18[OBJC_IVAR___WFUserVisibleString_comment + 8];
      if (v12)
      {
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = *&v1[OBJC_IVAR___WFUserVisibleString_comment] == *&v18[OBJC_IVAR___WFUserVisibleString_comment] && v12 == v13;
        if (!v14 && (sub_1CA94D7F8() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (v13)
      {
LABEL_20:

        return 0;
      }

      v15 = [v1 kind];
      v16 = [v18 kind];

      return v15 == v16;
    }
  }

  else
  {
    sub_1CA2C0A74(v19);
  }

  return 0;
}

unint64_t type metadata accessor for WFUserVisibleString()
{
  result = qword_1EC447FD0;
  if (!qword_1EC447FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC447FD0);
  }

  return result;
}

uint64_t WFUserVisibleString.hash.getter()
{
  v1 = [v0 content];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  v5 = MEMORY[0x1CCAA13A0](v2, v4);

  result = [v0 kind];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = *&v0[OBJC_IVAR___WFUserVisibleString_comment];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
    return v5 ^ sub_1CA94D0B8() ^ v7;
  }

  return result;
}

uint64_t sub_1CA6A4E4C()
{
  v1 = [v0 kind];
  if (v1)
  {
    if (v1 == 2)
    {
      v2 = 0x80000001CA9E13F0;
      v3 = 0xD000000000000020;
    }

    else
    {
      if (v1 != 1)
      {
        type metadata accessor for WFUserStringKind(0);
        result = sub_1CA94D838();
        __break(1u);
        return result;
      }

      v3 = 0xD000000000000019;
      v2 = 0x80000001CA9E1420;
    }
  }

  else
  {
    v2 = 0xEA00000000007478;
    v3 = 0x65742065736F7250;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CA981310;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  v5 = &v0[OBJC_IVAR___WFUserVisibleString_comment];
  v6 = *&v0[OBJC_IVAR___WFUserVisibleString_comment + 8];
  if (v6)
  {
    v7 = *v5;
    sub_1CA94C218();
    sub_1CA26DADC();
    v8[2] = 2;
    v8[6] = v7;
    v8[7] = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v9 = sub_1CA94C308();

  return v9;
}

id sub_1CA6A4FFC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1CA94C368();

  return v5;
}

uint64_t WFUserVisibleString.debugDescription.getter()
{
  v1 = v0;
  sub_1CA94D408();
  MEMORY[0x1CCAA1300](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_1CA94DA18();
  MEMORY[0x1CCAA1300](v2);

  MEMORY[0x1CCAA1300](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_0_71();
  MEMORY[0x1CCAA1300](0x6E65746E6F63202CLL, 0xEB00000000203A74);
  v3 = [v0 content];
  v4 = sub_1CA94C3A8();
  v6 = v5;

  MEMORY[0x1CCAA1300](v4, v6);

  MEMORY[0x1CCAA1300](0x203A646E696B202CLL, 0xE800000000000000);
  [v1 kind];
  type metadata accessor for WFUserStringKind(0);
  OUTLINED_FUNCTION_0_71();
  MEMORY[0x1CCAA1300](62, 0xE100000000000000);
  return 0;
}

id WFUserVisibleString.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CA6A52AC(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_1CA2E6984();
    v3 = v2;
    sub_1CA94C218();
    sub_1CA2B80DC();
    sub_1CA94C218();
    sub_1CA2B80B0();
    return v3;
  }

  return result;
}

unint64_t sub_1CA6A5334(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_1CA94C218();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1CA6A53A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(_s17ControlFlowBranchVMa(0) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    return sub_1CA94C218();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CA6A5448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v203 = v186 - v13;
  v14 = _s17ControlFlowBranchVMa(0);
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_45_0();
  v215 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v216 = v186 - v29;
  if (!*(a3 + 16))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v206 = *(a3 + 16);
  v195 = v28;
  v187 = *(v17 + 80);
  v217 = (v187 + 32) & ~v187;
  v205 = (a3 + v217);
  v192 = *(a3 + v217);
  v30 = [v192 parameterStateForKey_];
  v31 = MEMORY[0x1E69E7CC0];
  v190 = a2;
  v189 = a1;
  v188 = a4;
  if (v30)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = [v32 values];
      sub_1CA6A6AEC();
      v207 = sub_1CA94C658();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v207 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v207 = MEMORY[0x1E69E7CC0];
  }

  v34 = sub_1CA948D28();
  v191 = sub_1CA277284();
  v35 = sub_1CA94C1E8();
  v222 = v31;
  v223 = v35;
  v36 = sub_1CA6A53A0(1uLL, v206, a3);
  v201 = v39;
  v212 = v14;
  v218 = v17;
  *&v219 = v34;
  v40 = v216;
  if (v37 == v38 >> 1)
  {
    swift_unknownObjectRelease();
    v41 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v186[1] = v36;
  v42 = v38 >> 1;
  v41 = MEMORY[0x1E69E7CC0];
  v31 = &qword_1EC443BC8;
  v199 = v34 - 8;
  v198 = v38 >> 1;
  do
  {
    if (v37 >= v42)
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
      goto LABEL_111;
    }

    v211 = v35;
    v213 = v41;
    v210 = v17[9];
    v209 = v37;
    v43 = sub_1CA36D71C(v201 + v210 * v37, v40);
    v44 = v219;
    v208 = *(v219 - 8);
    v45 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v43);
    v46 = *(v14 + 24);
    v14 = &qword_1CA9834A0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, &qword_1CA9834A0);
    v48 = OUTLINED_FUNCTION_18_0(v47);
    v50 = *(v49 + 64);
    MEMORY[0x1EEE9AC00](v48);
    v51 = v31;
    v53 = v186 - v52;
    v54 = v216 + v46;
    v40 = v216;
    sub_1CA339294(v54, v186 - v52);
    if (__swift_getEnumTagSinglePayload(v53, 1, v44) == 1)
    {
      sub_1CA532E30(v53, v51, &qword_1CA9834A0);
      sub_1CA36D71C(v40, v202);
      v41 = v213;
      v31 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = *(v41 + 16);
        sub_1CA2E6984();
        v41 = v82;
      }

      v35 = v211;
      v42 = v198;
      v56 = *(v41 + 16);
      v55 = *(v41 + 24);
      v17 = v218;
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_18(v55);
        sub_1CA2E6984();
        v41 = v83;
      }

      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_0_72();
      sub_1CA285D74(v40, v57);
      *(v41 + 16) = v56 + 1;
      sub_1CA2BBF40(v202, v41 + v217 + v56 * v210);
      v222 = v41;
    }

    else
    {
      v197 = v186;
      v58 = v208;
      v59 = (*(v208 + 32))(v186 - v45, v53, v44);
      v196 = v186;
      MEMORY[0x1EEE9AC00](v59);
      v60 = v186 - v45;
      v61 = v58[2];
      v211 = (v186 - v45);
      v61(v186 - v45, v186 - v45, v44);
      sub_1CA36D71C(v40, v200);
      swift_isUniquelyReferenced_nonNull_native();
      v62 = v223;
      v221 = v223;
      sub_1CA320F94();
      if (__OFADD__(v62[2], (v64 & 1) == 0))
      {
        goto LABEL_104;
      }

      v14 = v63;
      v65 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FD8, &qword_1CA991DE8);
      if (sub_1CA94D588())
      {
        sub_1CA320F94();
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_113;
        }

        v14 = v66;
      }

      v35 = v221;
      if (v65)
      {
        v68 = OUTLINED_FUNCTION_4_56();
        sub_1CA6A6A88(v68, v69);
        v70 = v58[1];
        v71 = v219;
        v70(v60, v219);
        v70(v211, v71);
        OUTLINED_FUNCTION_0_72();
        v40 = v216;
        sub_1CA285D74(v216, v72);
      }

      else
      {
        v221[(v14 >> 6) + 8] |= 1 << v14;
        v73 = v219;
        v61((v35[6] + v58[9] * v14), v60, v219);
        v74 = OUTLINED_FUNCTION_4_56();
        sub_1CA2BBF40(v74, v75);
        v76 = v58[1];
        v76(v60, v73);
        v76(v211, v73);
        OUTLINED_FUNCTION_0_72();
        v40 = v216;
        sub_1CA285D74(v216, v77);
        v78 = v35[2];
        v79 = __OFADD__(v78, 1);
        v80 = v78 + 1;
        if (v79)
        {
          goto LABEL_107;
        }

        v35[2] = v80;
      }

      v223 = v35;
      OUTLINED_FUNCTION_91_4();
      v41 = v213;
      v17 = v218;
      v42 = v198;
      v31 = &qword_1EC443BC8;
    }

    v37 = v209 + 1;
  }

  while (v42 != (v209 + 1));
  swift_unknownObjectRelease();
LABEL_28:
  v84 = sub_1CA25B410(v207);
  v85 = MEMORY[0x1E69E7CC0];
  if (!v84)
  {
LABEL_64:

    v133 = sub_1CA94C218();
    v134 = sub_1CA6A52AC(v133, v41);

    v221 = MEMORY[0x1E69E7CC0];
    v135 = *(v134 + 16);
    if (v135)
    {
      v136 = 0;
      v210 = v134;
      v137 = v134 + v217;
      v138 = v17[9];
      *&v219 = v217 - 2 * v138;
      v218 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_50();
      *(v139 - 256) = v35;
      v213 = v41;
      v215 = v137;
      v216 = v135;
      while (2)
      {
        v140 = v137 + v138 * v136++;
        sub_1CA36D71C(v140, v31);
        v141 = 0;
        v142 = v205;
        v143 = v219;
        while (1)
        {
          if (v206 == v141)
          {
            goto LABEL_91;
          }

          if (*v142 == *v31)
          {
            break;
          }

          ++v141;
          v143 += v138;
          v142 = (v142 + v138);
        }

        v144 = v141 - 2;
        v145 = *(v85 + 16);
        if (v141 >= 2 && v144 < v145)
        {
          v31 = *(v31 + *(v14 + 28));
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B304(v85);
            v85 = v172;
          }

          if (v144 >= *(v85 + 16))
          {
            goto LABEL_105;
          }

          v155 = *(v14 + 28);
          v156 = v85 + v143;
          v157 = *(v85 + v143 + v155);
          v158 = *(v157 + 16);
          v159 = v31[2];
          v14 = v158 + v159;
          if (__OFADD__(v158, v159))
          {
            goto LABEL_106;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v156 + v155) = v157;
          if (!isUniquelyReferenced_nonNull_native || v14 > *(v157 + 24) >> 1)
          {
            sub_1CA2E6A4C();
            *(v156 + v155) = v161;
          }

          goto LABEL_90;
        }

        if (v145)
        {
          v31 = *(v31 + *(v14 + 28));
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B304(v85);
            v85 = v173;
          }

          if (v145 > *(v85 + 16))
          {
            goto LABEL_108;
          }

          v147 = v85 + v217 + (v145 - 1) * v138;
          v148 = *(v14 + 28);
          v149 = *(v147 + v148);
          v150 = v31[2];
          v151 = *(v149 + 16);
          v14 = v151 + v150;
          if (__OFADD__(v151, v150))
          {
            goto LABEL_109;
          }

          v152 = *(v147 + v148);
          v153 = swift_isUniquelyReferenced_nonNull_native();
          *(v147 + v148) = v149;
          if (!v153 || v14 > *(v149 + 24) >> 1)
          {
            sub_1CA2E6A4C();
            *(v147 + v148) = v154;
          }

LABEL_90:
          sub_1CA6B0018();
          OUTLINED_FUNCTION_91_4();
          OUTLINED_FUNCTION_6_50();
          v163 = *(v162 - 256);
          v137 = v215;
          v135 = v216;
          goto LABEL_91;
        }

        v31 = *(v31 + *(v14 + 28));
        v165 = v218;
        v166 = v218[2];
        v167 = v31[2];
        if (__OFADD__(v166, v167))
        {
          goto LABEL_110;
        }

        sub_1CA94C218();
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v221 = v165;
        v214 = v167;
        if (!v168 || v166 + v167 > v165[3] >> 1)
        {
          sub_1CA2E6A4C();
          v165 = v169;
          v221 = v169;
        }

        v137 = v215;
        sub_1CA6B0018();
        v218 = v165;
        v221 = v165;
        OUTLINED_FUNCTION_6_50();
        v171 = *(v170 - 256);
        v135 = v216;
LABEL_91:
        OUTLINED_FUNCTION_0_72();
        sub_1CA285D74(v31, v164);
        if (v136 != v135)
        {
          continue;
        }

        break;
      }

      v174 = v218;
    }

    else
    {

      v175 = v17[9];
      v174 = MEMORY[0x1E69E7CC0];
    }

    v176 = v217;
    v177 = swift_allocObject();
    v219 = xmmword_1CA981310;
    *(v177 + 16) = xmmword_1CA981310;
    sub_1CA36D71C(v205, v177 + v176);
    v220 = v177;
    v178 = v188;
    v179 = v190;
    sub_1CA94C218();
    sub_1CA2B80B0();
    v180 = v220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    inited = swift_initStackObject();
    *(inited + 16) = v219;
    *(inited + 32) = v189;
    *(inited + 40) = v179;
    *(inited + 48) = v180;
    *(inited + 56) = v178;
    *(inited + 64) = 1;
    v182 = v174[2];
    sub_1CA94C218();
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v221 = v174;
    if (!v183 || v182 >= v174[3] >> 1)
    {
      sub_1CA2E6A4C();
      v174 = v184;
      v221 = v184;
    }

    sub_1CA6B0018();

    return v174;
  }

  if (v84 >= 1)
  {
    v31 = 0;
    v210 = v207 & 0xC000000000000001;
    v209 = (v219 - 8);
    v211 = v84;
    while (1)
    {
      v86 = v210 ? MEMORY[0x1CCAA22D0](v31, v207) : *(v207 + 8 * v31 + 32);
      v87 = v86;
      v88 = [v86 identity];
      v213 = v186;
      v89 = *v209;
      v90 = *(*v209 + 64);
      MEMORY[0x1EEE9AC00](v88);
      v92 = v186 - v91;
      sub_1CA948CF8();

      swift_beginAccess();
      sub_1CA320F94();
      v216 = v85;
      if (v94)
      {
        v95 = v93;
        swift_isUniquelyReferenced_nonNull_native();
        v220 = v223;
        v14 = v223[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447FD8, &qword_1CA991DE8);
        OUTLINED_FUNCTION_91_4();
        sub_1CA94D588();
        v35 = v220;
        (*(v89 + 8))(v220[6] + *(v89 + 72) * v95, v219);
        v96 = v204;
        sub_1CA2BBF40(v35[7] + v218[9] * v95, v204);
        sub_1CA94D5A8();
        v97 = 0;
        v223 = v35;
      }

      else
      {
        v97 = 1;
        v96 = v204;
      }

      v98 = v203;
      __swift_storeEnumTagSinglePayload(v96, v97, 1, v14);
      swift_endAccess();
      if (__swift_getEnumTagSinglePayload(v96, 1, v14) != 1)
      {
        break;
      }

      sub_1CA532E30(v96, &qword_1EC4438E8, &qword_1CA9819D8);
      v99 = *(v41 + 16);
      if (v99)
      {
        swift_beginAccess();
        sub_1CA36D71C(v41 + v217, v98);
        if (!swift_isUniquelyReferenced_nonNull_native() || (v99 - 1) > *(v41 + 24) >> 1)
        {
          sub_1CA2E6984();
          v41 = v100;
        }

        v101 = v41 + v217;
        OUTLINED_FUNCTION_0_72();
        sub_1CA285D74(v101, v102);
        v103 = v218[9];
        if (v103 > 0 || v101 >= v101 + v103 + (*(v41 + 16) - 1) * v103)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v103)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v105 = v35;
        --*(v41 + 16);
        v222 = v41;
        swift_endAccess();
        goto LABEL_53;
      }

      v105 = v35;
      v108 = 1;
LABEL_54:
      __swift_storeEnumTagSinglePayload(v98, v108, 1, v14);
      v109 = v219;
      (*(v89 + 8))(v92, v219);
      if (__swift_getEnumTagSinglePayload(v98, 1, v14) == 1)
      {
        sub_1CA532E30(v98, &qword_1EC4438E8, &qword_1CA9819D8);
        v110 = [v192 createAccompanyingActionWithMode_];
        v111 = v214;
        __swift_storeEnumTagSinglePayload(v214 + *(v14 + 24), 1, 1, v109);
        *v111 = v110;
        *(v111 + 8) = 0;
        *(v111 + *(v14 + 28)) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v112 = v193;
        sub_1CA2BBF40(v98, v193);
        v111 = v214;
        sub_1CA2BBF40(v112, v214);
      }

      v17 = v218;
      v35 = v105;
      v113 = *v111;
      objc_opt_self();
      v114 = swift_dynamicCastObjCClass();
      v85 = v216;
      if (v114)
      {
        v115 = v114;
        v116 = v113;
        v117 = v35;
        v118 = WFTitleForParameterValue(v87);
        [v115 setItemTitle_];

        v35 = v117;
      }

      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      v120 = OUTLINED_FUNCTION_18_0(v119);
      v122 = *(v121 + 64);
      MEMORY[0x1EEE9AC00](v120);
      v124 = v186 - v123;
      v125 = [v87 identity];
      sub_1CA948CF8();

      __swift_storeEnumTagSinglePayload(v124, 0, 1, v219);
      v126 = v214;
      sub_1CA6A6A18(v124, v214 + *(v14 + 24));
      sub_1CA36D71C(v126, v215);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = *(v85 + 16);
        sub_1CA2E6984();
        v85 = v131;
      }

      v128 = *(v85 + 16);
      v127 = *(v85 + 24);
      if (v128 >= v127 >> 1)
      {
        OUTLINED_FUNCTION_18(v127);
        sub_1CA2E6984();
        v85 = v132;
      }

      v31 = (v31 + 1);

      *(v85 + 16) = v128 + 1;
      sub_1CA2BBF40(v215, v85 + v217 + v17[9] * v128);
      OUTLINED_FUNCTION_0_72();
      sub_1CA285D74(v126, v129);
      if (v211 == v31)
      {
        goto LABEL_64;
      }
    }

    v105 = v35;
    v106 = v96;
    v107 = v194;
    sub_1CA2BBF40(v106, v194);
    sub_1CA2BBF40(v107, v98);
LABEL_53:
    v108 = 0;
    goto LABEL_54;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA6A6714(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LayoutVMa(0);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  sub_1CA285AF8(&v33 - v12);
  v14 = *(v13 + 1);
  sub_1CA94C218();
  OUTLINED_FUNCTION_2_64();
  sub_1CA285D74(v13, v15);
  v16 = sub_1CA311D00(a1, v14);
  LOBYTE(a1) = v17;

  if (a1)
  {
    return result;
  }

  v19 = sub_1CA9492B8();
  v33 = &v33;
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v33 - v25;
  sub_1CA285AF8(v10);
  v27 = *(v10 + 24);
  sub_1CA94C218();
  OUTLINED_FUNCTION_2_64();
  v29 = sub_1CA285D74(v10, v28);
  result = MEMORY[0x1EEE9AC00](v29);
  v30 = &v33 - v25;
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= *(v27 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  (*(v22 + 16))(&v33 - v25, v27 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, v19);

  sub_1CA949298();
  v31 = *(v22 + 8);
  v31(v30, v19);
  v34 = *(v2 + OBJC_IVAR___WFWorkflowActionTree_root);
  sub_1CA94C218();
  sub_1CA6A78A8();
  if (v38 == 1)
  {
    v32 = v36;
    if (v37)
    {
    }

    else
    {
      sub_1CA6A5448(v35[0], v35[1], v35[2], v36);
      sub_1CA6A81E8();

      sub_1CA6A81A0(v34);
    }
  }

  else if (v38 != 255)
  {
    sub_1CA532E30(v35, &unk_1EC448130, &unk_1CA992000);
  }

  return (v31)(v26, v19);
}

uint64_t sub_1CA6A6A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA6A6A88(uint64_t a1, uint64_t a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA6A6AEC()
{
  result = qword_1EC4448E8;
  if (!qword_1EC4448E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4448E8);
  }

  return result;
}

BOOL sub_1CA6A6B34()
{
  sub_1CA9492B8();
  sub_1CA286854(&unk_1EC4480F0, MEMORY[0x1EEE78BB0]);
  OUTLINED_FUNCTION_20_0();
  sub_1CA94C9F8();
  OUTLINED_FUNCTION_20_0();
  sub_1CA94CA58();
  return v2 == v1;
}

void sub_1CA6A6BB0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B234(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_1CA26E4B4((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1CA6A6C38()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  v3 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B2EC(v3);
    v3 = v12;
  }

  v4 = *(v3 + 16);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = _s10ScopeStackV5EntryOMa(0);
    OUTLINED_FUNCTION_12(v5);
    v8 = *(v7 + 72);
    v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v8 * v2;
    v10 = OUTLINED_FUNCTION_187();
    sub_1CA289DE0(v10, v11);
    sub_1CA43F2D8(v9 + v8, v4 - 1 - v2, v9);
    *(v3 + 16) = v4 - 1;
    *v0 = v3;
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA6A6D28(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B31C(v5);
    v5 = v12;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = v6 - 1 - a1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 32);
    v13 = *(v9 + 16);
    sub_1CA440438(v9 + 40, v8, v9);
    *(v5 + 16) = v7;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
  }
}

void sub_1CA6A6DD0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA42B334(v3);
    v3 = v9;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    sub_1CA440434((v7 + 40), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1CA6A6E4C()
{
  OUTLINED_FUNCTION_37_0();
  v46 = v1;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_40();
  v5 = _s17ControlFlowBranchVMa(v4);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v47 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v48 = v11 - v10;
  v12 = sub_1CA9492C8();
  v13 = sub_1CA9492B8();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_66_7(&qword_1EC4480E8);
  sub_1CA949288();
  if (sub_1CA6A6B34())
  {
    goto LABEL_10;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= *(v3 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v3 + 40 * v12;
  v23 = *(v20 + 32);
  v21 = v20 + 32;
  v22 = v23;
  if (*(v21 + 32) != 1)
  {
LABEL_10:
    v37 = *(v16 + 8);
    v38 = OUTLINED_FUNCTION_130();
    v39(v38);
LABEL_12:
    OUTLINED_FUNCTION_36();
    return;
  }

  v42[0] = v22;
  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  v44 = *(v21 + 8);
  sub_1CA94C218();
  sub_1CA94C218();
  v43 = v24;
  v45 = sub_1CA9492C8();
  v42[1] = v42;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_108_6();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_36_15();
  sub_1CA6A9170(1);
  sub_1CA949288();
  if (v45 >= *(v25 + 16))
  {

    v40 = *(v16 + 8);
    v40(v0, v13);
    v41 = OUTLINED_FUNCTION_130();
    (v40)(v41);
    goto LABEL_12;
  }

  v28 = v43;
  v27 = v44;
  if ((v45 & 0x8000000000000000) == 0)
  {
    v29 = v48;
    OUTLINED_FUNCTION_47();
    v31 = *(v30 + 72);
    OUTLINED_FUNCTION_9_41();
    sub_1CA285A0C(v32, v29);
    if (!sub_1CA6A6B34())
    {
      v33 = v46;
      sub_1CA6A6E4C(v0, *(v29 + *(v5 + 28)), v46);
      sub_1CA363EF0(v42[0], v27, v25, v28, v45, v33);
    }

    v34 = *(v16 + 8);
    v34(v0, v13);
    v35 = OUTLINED_FUNCTION_130();
    (v34)(v35);
    OUTLINED_FUNCTION_2_65();
    sub_1CA285DC8(v29, v36);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CA6A71A4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = 0;
  v58 = a1 + 32;
  v49 = *(a1 + 16);
  while (1)
  {
    v4 = v1;
    v5 = v58 + 40 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if ((*(v5 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_58_9();
      sub_1CA36DA2C(v19, v20, v21, v22, v23);
      v24 = v7;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2(v60);
      if (v25)
      {
        OUTLINED_FUNCTION_11_3();
      }

      OUTLINED_FUNCTION_116();
      sub_1CA94C6E8();
      OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_58_9();
      sub_1CA36D780(v26, v27, v28, v29, v30);
      v1 = v60;
      goto LABEL_37;
    }

    sub_1CA94C218();
    sub_1CA94C218();
    v55 = v8;
    v10 = v8;
    v56 = v9;
    sub_1CA6A86E0();
    v12 = v11;
    v13 = v11 >> 62;
    v14 = v11 >> 62 ? sub_1CA94D328() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1 = v4;
    v15 = v4 >> 62;
    v57 = v6;
    result = v15 ? sub_1CA94D328() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = result + v14;
    if (__OFADD__(result, v14))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v54 = v7;
    if (result)
    {
      if (v15)
      {
        goto LABEL_19;
      }

      v18 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v15)
      {
LABEL_19:
        sub_1CA94D328();
        OUTLINED_FUNCTION_94_3();
        goto LABEL_20;
      }

      v18 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = *(v18 + 16);
LABEL_20:
    result = sub_1CA94D488();
    v1 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v32 = *(v18 + 16);
    v33 = (*(v18 + 24) >> 1) - v32;
    v34 = v18 + 8 * v32;
    v53 = v18;
    if (v13)
    {
      v36 = sub_1CA94D328();
      if (!v36)
      {
LABEL_35:

        result = v54;
        v43 = v55;
        v45 = v56;
        v44 = v57;
        if (v14 > 0)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v37 = v36;
      result = sub_1CA94D328();
      if (v33 < result)
      {
        goto LABEL_45;
      }

      if (v37 < 1)
      {
        goto LABEL_47;
      }

      v50 = result;
      v51 = v14;
      v52 = v1;
      v38 = (v34 + 32);
      OUTLINED_FUNCTION_3_61();
      sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
        v39 = sub_1CA276BDC(v59, 0, v12);
        v41 = *v40;
        v39(v59, 0);
        *v38 = v41;
        OUTLINED_FUNCTION_113_5();
      }

      while (v37 != v42);
      v2 = v49;
      v35 = v50;
      v1 = v52;
      v14 = v51;
    }

    else
    {
      v35 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_35;
      }

      if (v33 < v35)
      {
        goto LABEL_46;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_arrayInitWithCopy();
    }

    result = v54;
    v43 = v55;
    v45 = v56;
    v44 = v57;
    if (v35 < v14)
    {
      goto LABEL_43;
    }

    if (v35 > 0)
    {
      v46 = *(v53 + 16);
      v47 = __OFADD__(v46, v35);
      v48 = v46 + v35;
      if (v47)
      {
        goto LABEL_44;
      }

      *(v53 + 16) = v48;
    }

LABEL_36:
    sub_1CA36D780(result, v44, v45, v43, 1);
    v60 = v1;
LABEL_37:
    if (++v3 == v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1CA6A751C(uint64_t a1)
{
  if (sub_1CA9491A8())
  {
    return a1;
  }

  v2 = sub_1CA949148();
  if (v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v2 >= a1)
  {
    v19 = sub_1CA949148();
    if ((v20 & 1) == 0)
    {
      return v19;
    }

    __break(1u);
  }

  else
  {
    v4 = sub_1CA949128();
    if (v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v4 > a1)
    {
      v6 = sub_1CA9491B8();
      v7 = OUTLINED_FUNCTION_52(v6);
      v9 = *(v8 + 64);
      MEMORY[0x1EEE9AC00](v7);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_134_0();
      sub_1CA9491D8();
      sub_1CA286854(&qword_1EC4481C8, MEMORY[0x1EEE78B00]);
      v10 = sub_1CA94C5A8();
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v11 + 1;
        v13 = (v10 + 48);
        while (v12 != 2)
        {
          if (!--v12)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v14 = *(v13 - 1);
          v15 = v14 - 1;
          if (__OFSUB__(v14, 1))
          {
            goto LABEL_26;
          }

          v17 = *v13;
          v13 += 2;
          v16 = v17;
          if (v15 < a1 && v16 > a1)
          {

            if (__OFSUB__(a1, v15))
            {
              goto LABEL_28;
            }

            if (!__OFSUB__(v16, a1))
            {
              if (a1 - v15 >= v16 - a1)
              {
                return v16;
              }

              else
              {
                return v15;
              }
            }

            goto LABEL_29;
          }
        }

        goto LABEL_33;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v19 = sub_1CA949128();
  if ((v21 & 1) == 0)
  {
    return v19;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_72_7();
  OUTLINED_FUNCTION_71_7();
  result = OUTLINED_FUNCTION_98_6();
  __break(1u);
  return result;
}

void sub_1CA6A76C0()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = _s17ControlFlowBranchVMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_91_7();
  v26 = *(v2 + 16);
  v7 = 0;
  if (v26)
  {
    v8 = 0;
    v25 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v5 + 28);
    v24 = *(v6 + 72);
    v22 = v0;
    while (1)
    {
      OUTLINED_FUNCTION_9_41();
      sub_1CA285A0C(v9, v0);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v27 = v8 + 1;
      v28 = v7 + 1;
      v10 = *(v0 + v23);
      sub_1CA94C218();
      OUTLINED_FUNCTION_2_65();
      sub_1CA285DC8(v0, v11);
      v12 = 0;
      v13 = (v10 + 64);
      v14 = -*(v10 + 16);
      v15 = -1;
      while (v14 + v15 != -1)
      {
        if (++v15 >= *(v10 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (*v13 == 1)
        {
          v17 = *(v13 - 2);
          v16 = *(v13 - 1);
          v19 = *(v13 - 4);
          v18 = *(v13 - 3);
          sub_1CA94C218();
          sub_1CA94C218();
          v20 = sub_1CA6A76C0(v16);
          sub_1CA36D780(v19, v18, v17, v16, 1);
        }

        else
        {
          v20 = 1;
        }

        v13 += 40;
        v21 = __OFADD__(v12, v20);
        v12 += v20;
        if (v21)
        {
          goto LABEL_18;
        }
      }

      v7 = v28 + v12;
      if (__OFADD__(v28, v12))
      {
        goto LABEL_20;
      }

      v8 = v27;
      v0 = v22;
      if (v27 == v26)
      {
        goto LABEL_15;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    if (!__OFADD__(v7, 1))
    {
      OUTLINED_FUNCTION_36();
      return;
    }
  }

  __break(1u);
}

void sub_1CA6A78A8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  LODWORD(v112) = v2;
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0);
  v108 = OUTLINED_FUNCTION_1_0(v5);
  v109 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_6_0();
  v110 = v10 - v9;
  v113 = sub_1CA9492C8();
  v11 = sub_1CA9492B8();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v98 - v18;
  MEMORY[0x1EEE9AC00](v17);
  sub_1CA6A9170(1);
  OUTLINED_FUNCTION_66_7(&qword_1EC4480E8);
  sub_1CA949288();
  v20 = sub_1CA6A6B34();
  if (!v20)
  {
    v111 = v0;
    MEMORY[0x1EEE9AC00](v20);
    v21 = v98 - v18;
    sub_1CA949278();
    OUTLINED_FUNCTION_97_4();
    v22 = sub_1CA949268();
    v23 = v14 + 1;
    v107 = v14[1];
    v107(v21, v11);
    v1 = v111;
    if ((v22 & 1) == 0)
    {
      v106 = v11;
      if ((v113 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v113 < *(*v111 + 16))
      {
        v27 = *v111 + 40 * v113;
        v29 = *(v27 + 32);
        v28 = v27 + 32;
        v14 = v29;
        if (*(v28 + 32) != 1)
        {
          v107(v19, v106);
          v23 = 0;
          OUTLINED_FUNCTION_76_8();
          v26 = 0;
          LOBYTE(v16) = -1;
          goto LABEL_48;
        }

        v99 = 5 * v113;
        v11 = *(v28 + 16);
        v30 = *(v28 + 8);
        v104 = *(v28 + 24);
        v105 = v30;
        sub_1CA36DA2C(v14, v30, v11, v104, 1);
        sub_1CA94C218();
        v31 = sub_1CA9492C8();
        v98[1] = v98;
        v32 = MEMORY[0x1EEE9AC00](v31);
        v103 = v14;
        v14 = (v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
        MEMORY[0x1EEE9AC00](v32);
        OUTLINED_FUNCTION_100_3();
        v33 = v11;
        sub_1CA949288();
        v21 = v11[2];

        v101 = v14;
        v102 = v23;
        v100 = v4;
        if (v31 >= v21)
        {
          v23 = 0;
          OUTLINED_FUNCTION_76_8();
          v34 = 0;
          LOBYTE(v16) = -1;
          v37 = v111;
          goto LABEL_45;
        }

        v34 = v31;
        v35 = sub_1CA6A6B34();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v111;
        if (!v35)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_55;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          return;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v38 = *(v33 + 16);
          if (v34 < v38)
          {
            break;
          }

          __break(1u);
LABEL_55:
          sub_1CA42B304(v33);
          v33 = v97;
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

LABEL_22:
          if (v34 >= *(v33 + 16))
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_47();
          v52 = v33 + v50 + *(v51 + 72) * v34 + v108[7];
          sub_1CA6A78A8(&v114, v14, v112 & 1);
          v23 = v114;
          v21 = v115;
          v14 = v116;
          v11 = v117;
          v34 = v118;
          LOBYTE(v16) = v119;
LABEL_45:
          v84 = *v37;
          sub_1CA94C218();
          v110 = v84;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v112 = v34;
          v109 = v33;
          if ((v85 & 1) == 0)
          {
LABEL_51:
            sub_1CA42B31C(v110);
            v110 = v95;
          }

          v34 = v102;
          v37 = v106;
          v86 = v107;
          v107(v101, v106);
          v86(v19, v37);
          v33 = v110;
          v4 = v100;
          if (v113 < *(v110 + 16))
          {
            v87 = v110 + 8 * v99;
            v88 = *(v87 + 32);
            v89 = *(v87 + 40);
            v90 = *(v87 + 48);
            v91 = *(v87 + 56);
            v92 = *(v87 + 64);
            v93 = v104;
            v94 = v105;
            *(v87 + 32) = v103;
            *(v87 + 40) = v94;
            *(v87 + 48) = v109;
            *(v87 + 56) = v93;
            *(v87 + 64) = 1;
            sub_1CA36D780(v88, v89, v90, v91, v92);

            *v111 = v33;
            v26 = v112;
            goto LABEL_48;
          }

          __break(1u);
LABEL_53:
          sub_1CA42B304(v33);
          v33 = v96;
        }

        v39 = v38 - 1;
        OUTLINED_FUNCTION_47();
        v41 = v33 + v40;
        v42 = v33;
        v44 = *(v43 + 72);
        v98[0] = v41;
        v45 = v41 + v44 * v34;
        OUTLINED_FUNCTION_20_33();
        sub_1CA289DE0(v45, v110);
        sub_1CA43F2F0(v45 + v44, v39 - v34, v45);
        v109 = v42;
        *(v42 + 16) = v39;
        if ((v112 & 1) == 0)
        {
LABEL_28:
          v11 = v104;
          if (!v39)
          {
            goto LABEL_58;
          }

          v57 = *v98[0];
          objc_opt_self();
          OUTLINED_FUNCTION_5_3();
          v58 = swift_dynamicCastObjCClass();
          v33 = v109;
          if (v58 && v34)
          {
            v59 = v58;
            sub_1CA94C218();
            v60 = v11;
            sub_1CA94C218();
            v61 = v57;
            if ([v59 parameterStateForKey_])
            {
              objc_opt_self();
              v62 = swift_dynamicCastObjCClass();
              if (v62)
              {
                v63 = v62;
                v108 = v61;
                swift_unknownObjectRetain();
                v64 = [v63 values];
                sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
                v65 = sub_1CA94C658();

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v65 < 0 || (v65 & 0x4000000000000000) != 0)
                {
                  v65 = sub_1CA436664(v65);
                }

                v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v67 = v66 - v34;
                if (v66 < v34)
                {
                  goto LABEL_60;
                }

                v68 = v34;
                v69 = v66 - 1;
                v70 = *((v65 & 0xFFFFFFFFFFFFFF8) + 8 * v68 + 0x18);
                v112 = v68;
                sub_1CA440434(((v65 & 0xFFFFFFFFFFFFFF8) + 8 * v68 + 32), v67, ((v65 & 0xFFFFFFFFFFFFFF8) + 8 * v68 + 24));
                *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) = v69;

                v71 = [v63 identity];
                swift_unknownObjectRelease();
                v72 = sub_1CA948D28();
                v73 = OUTLINED_FUNCTION_18_0(v72);
                v75 = *(v74 + 64);
                MEMORY[0x1EEE9AC00](v73);
                OUTLINED_FUNCTION_6_0();
                v78 = v77 - v76;
                sub_1CA948CF8();

                v79 = objc_allocWithZone(WFChooseFromMenuArrayParameterState);
                v80 = sub_1CA6ACA3C(v65, v78);
                v81 = @"WFMenuItems";
                [v59 setParameterState:v80 forKey:v81];

                swift_unknownObjectRelease();
                v37 = v111;
                v34 = v112;
                v23 = v103;
                v11 = v104;
                v33 = v109;
                v21 = v105;
                goto LABEL_44;
              }

              swift_unknownObjectRelease();
              v33 = v109;
            }

            else
            {
            }

            v21 = v105;
          }

          else
          {
            v21 = v105;
            sub_1CA94C218();
            v82 = v11;
            sub_1CA94C218();
          }

          v23 = v103;
LABEL_44:
          OUTLINED_FUNCTION_2_65();
          sub_1CA285DC8(v110, v83);
          LOBYTE(v16) = 1;
          v14 = v33;
          goto LABEL_45;
        }

        if (!v34)
        {
          goto LABEL_59;
        }

        v46 = v98[0] + v44 * (v34 - 1);
        if (*(v46 + 8))
        {
          if (v39 <= v34)
          {
            v56 = *(v110 + v108[7]);
            sub_1CA94C218();
            v48 = v113 + 1;
            v49 = v113 + 1;
            v55 = v56;
            goto LABEL_27;
          }

          v47 = *(v110 + v108[7]);
          sub_1CA94C218();
          v37 = v111;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          v53 = v108[7];
          v47 = *(v110 + v53);
          v54 = *(*(v46 + v53) + 16);
          sub_1CA94C218();
          v48 = v54;
          v49 = v54;
        }

        v55 = v47;
LABEL_27:
        sub_1CA4FC7D4(v48, v49, v55);
        v39 = *(v109 + 16);
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  v21 = v1;
  sub_1CA6AC73C(v113, v112 & 1, &v114);
  v24 = v14[1];
  ++v14;
  v24(v19, v11);
  v23 = v114;
  if (v118)
  {
    v14 = v116;
    v25 = v117;
    v21 = v115;
    sub_1CA94C218();
    sub_1CA94C218();
    v11 = v25;
    sub_1CA6B2B9C(&v114);
    v26 = 0;
    LOBYTE(v16) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_76_8();
    v26 = 0;
    LOBYTE(v16) = 0;
  }

LABEL_48:
  *v4 = v23;
  *(v4 + 8) = v21;
  *(v4 + 16) = v14;
  *(v4 + 24) = v11;
  *(v4 + 32) = v26;
  *(v4 + 40) = v16;
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA6A81A0(uint64_t a1)
{
  sub_1CA6A9210();
  v3 = *(v1 + OBJC_IVAR___WFWorkflowActionTree_root);
  *(v1 + OBJC_IVAR___WFWorkflowActionTree_root) = a1;

  return sub_1CA6A9318();
}

void sub_1CA6A81E8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1CA9492C8();
  v5 = sub_1CA9492B8();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  sub_1CA6A9170(1);
  OUTLINED_FUNCTION_66_7(&qword_1EC4480E8);
  sub_1CA949288();
  if (sub_1CA6A6B34() || (v14 = *v0, v15 = *(*v0 + 16), v4 == v15))
  {
    sub_1CA94C218();
    sub_1CA4FC7D4(v4, v4, v3);
    v16 = *(v8 + 8);
    v17 = OUTLINED_FUNCTION_69();
    v18(v17);
LABEL_20:
    OUTLINED_FUNCTION_36();
    return;
  }

  if (v4 >= v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  v62 = v3;
  v64 = v0;
  v59 = v14;
  v57 = 5 * v4;
  v19 = &v14[40 * v4];
  v21 = *(v19 + 4);
  v20 = v19 + 32;
  v58 = v21;
  if (v20[32] == 1)
  {
    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    v60 = *(v20 + 1);
    sub_1CA94C218();
    sub_1CA94C218();
    v56 = v22;
    v55 = v22;
    v63 = sub_1CA9492C8();
    v61 = &v55;
    MEMORY[0x1EEE9AC00](v63);
    OUTLINED_FUNCTION_108_6();
    MEMORY[0x1EEE9AC00](v24);
    v10 = &v55 - v25;
    sub_1CA6A9170(1);
    sub_1CA949288();
    if (!sub_1CA6A6B34())
    {
      v26 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = v64;
      v10 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (!v63)
    {
      v49 = v62;
      sub_1CA94C218();
      sub_1CA4FC7D4(v4, v4, v49);

      v50 = *(v8 + 8);
      v50(v3, v5);
      v51 = OUTLINED_FUNCTION_69();
      (v50)(v51);

      goto LABEL_20;
    }

    v26 = v63 - 1;
    if (__OFSUB__(v63, 1))
    {
      goto LABEL_28;
    }

    v10 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_29;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      while (v26 < *(v10 + 2))
      {
        v27 = _s17ControlFlowBranchVMa(0);
        v28 = OUTLINED_FUNCTION_12(v27);
        v31 = *(*&v10[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v30 + 72) * v26 + *(v28 + 36)] + 16);
        v32 = v62;
        sub_1CA94C218();
        sub_1CA4FC7D4(v31, v31, v32);
        v1 = v64;
        v13 = v59;
        while (1)
        {
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_23:
            sub_1CA42B31C(v13);
            v13 = v52;
          }

          v39 = *(v8 + 8);
          v8 += 8;
          v26 = v39;
          v39(v3, v5);
          v40 = OUTLINED_FUNCTION_69();
          (v39)(v40);
          if (v4 < *(v13 + 2))
          {
            v41 = &v13[8 * v57];
            v42 = *(v41 + 4);
            v43 = *(v41 + 5);
            v44 = *(v41 + 6);
            v45 = *(v41 + 7);
            v46 = v41[64];
            v47 = v60;
            *(v41 + 4) = v58;
            *(v41 + 5) = v47;
            v48 = v56;
            *(v41 + 6) = v10;
            *(v41 + 7) = v48;
            v41[64] = 1;
            sub_1CA36D780(v42, v43, v44, v45, v46);

            *v1 = v13;
            goto LABEL_20;
          }

          __break(1u);
LABEL_25:
          sub_1CA42B304(v10);
          v10 = v53;
LABEL_14:
          v13 = v59;
          if ((v26 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v26 >= *(v10 + 2))
          {
            goto LABEL_27;
          }

          v34 = _s17ControlFlowBranchVMa(0);
          v35 = OUTLINED_FUNCTION_12(v34);
          v38 = &v10[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v37 + 72) * v26 + *(v35 + 36)];
          sub_1CA6A81E8(v62, v3);
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        sub_1CA42B304(v10);
        v10 = v54;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_72_7();
  v55 = 560;
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_98_6();
  __break(1u);
}

void sub_1CA6A86E0()
{
  OUTLINED_FUNCTION_37_0();
  v109 = v1;
  v3 = v2;
  v116 = _s17ControlFlowBranchVMa(0);
  v4 = OUTLINED_FUNCTION_1_0(v116);
  v111 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448048, &qword_1CA991E00);
  v9 = OUTLINED_FUNCTION_52(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v110 = (&v109 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448050, &qword_1CA991E08);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v109 - v21;
  v133 = MEMORY[0x1E69E7CC0];
  v118 = *(v3 + 16);
  v112 = v3;
  sub_1CA94C218();
  v22 = 0;
  v115 = v0;
  v113 = v8;
  v114 = v19;
  while (1)
  {
    if (v22 == v118)
    {
      v23 = 1;
      v119 = v118;
      goto LABEL_7;
    }

    if (v22 >= v118)
    {
      goto LABEL_93;
    }

    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_47();
    v28 = v112 + v25 + *(v26 + 72) * v27;
    v29 = *(v8 + 48);
    v30 = v110;
    *v110 = v27;
    OUTLINED_FUNCTION_9_41();
    sub_1CA285A0C(v32, v30 + v31);
    sub_1CA2D9CD4(v30, v19, &qword_1EC448048, &qword_1CA991E00);
    v23 = 0;
    v119 = v24;
LABEL_7:
    v33 = v117;
    __swift_storeEnumTagSinglePayload(v19, v23, 1, v8);
    v34 = OUTLINED_FUNCTION_130();
    sub_1CA2D9CD4(v34, v35, &qword_1EC448050, &qword_1CA991E08);
    if (__swift_getEnumTagSinglePayload(v33, 1, v8) == 1)
    {

      v109;
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_2(v133);
      if (v38)
      {
        goto LABEL_99;
      }

      goto LABEL_84;
    }

    v36 = *(v8 + 48);
    OUTLINED_FUNCTION_20_33();
    sub_1CA289DE0(v33 + v37, v0);
    MEMORY[0x1CCAA1490](*v0);
    OUTLINED_FUNCTION_23_2(v133);
    if (v38)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();
    v120 = v133;
    v39 = *(v0 + *(v116 + 28));
    v132 = MEMORY[0x1E69E7CC0];
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = MEMORY[0x1E69E7CC0];
      v42 = 0;
      v43 = v39 + 32;
      v125 = v39 + 32;
      v126 = v40;
      while (1)
      {
        v44 = v43 + 40 * v42;
        v46 = *v44;
        v45 = *(v44 + 8);
        v47 = *(v44 + 16);
        v48 = *(v44 + 24);
        if ((*(v44 + 32) & 1) == 0)
        {
          sub_1CA36DA2C(v46, v45, v47, v48, 0);
          MEMORY[0x1CCAA1490](v46);
          if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_127_5();
          }

          sub_1CA94C6E8();
          sub_1CA36D780(v46, v45, v47, v48, 0);
          v41 = v132;
          goto LABEL_46;
        }

        v131 = *v44;
        sub_1CA94C218();
        sub_1CA94C218();
        v49 = sub_1CA6A86E0(v48);
        v50 = v49;
        v51 = v49 >> 62;
        if (v49 >> 62)
        {
          v52 = OUTLINED_FUNCTION_130_4();
        }

        else
        {
          v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v53 = v41 >> 62;
        if (v41 >> 62)
        {
          v54 = OUTLINED_FUNCTION_131_6();
        }

        else
        {
          v54 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v130 = v52;
        v55 = __OFADD__(v54, v52);
        v56 = v54 + v52;
        if (v55)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v129 = v42;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v53)
          {
            goto LABEL_28;
          }

          v58 = v41 & 0xFFFFFFFFFFFFFF8;
          if (v56 <= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v53)
          {
LABEL_28:
            OUTLINED_FUNCTION_131_6();
            OUTLINED_FUNCTION_94_3();
            goto LABEL_29;
          }

          v58 = v41 & 0xFFFFFFFFFFFFFF8;
        }

        v59 = *(v58 + 16);
LABEL_29:
        OUTLINED_FUNCTION_75_8();
        v41 = sub_1CA94D488();
        v58 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
        v127 = v47;
        v128 = v45;
        OUTLINED_FUNCTION_109_5();
        v62 = v61 - v60;
        v63 = v58 + 8 * v60;
        if (v51)
        {
          v65 = sub_1CA94D328();
          if (!v65)
          {
LABEL_44:

            v42 = v129;
            v43 = v125;
            v40 = v126;
            v76 = v131;
            v78 = v127;
            v77 = v128;
            if (v130 > 0)
            {
              goto LABEL_86;
            }

            goto LABEL_45;
          }

          v66 = v65;
          v67 = sub_1CA94D328();
          if (v62 < v67)
          {
            goto LABEL_88;
          }

          if (v66 < 1)
          {
            goto LABEL_90;
          }

          v121 = v67;
          v122 = v58;
          v123 = v48;
          v124 = v41;
          v68 = (v63 + 32);
          OUTLINED_FUNCTION_3_61();
          sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
            v69 = OUTLINED_FUNCTION_77_11();
            v71 = sub_1CA276BDC(v69, v70, v50);
            v73 = *v72;
            v74 = OUTLINED_FUNCTION_122_3();
            v71(v74);
            *v68 = v73;
            OUTLINED_FUNCTION_113_5();
          }

          while (v66 != v75);
          v48 = v123;
          v41 = v124;
          v64 = v121;
          v58 = v122;
        }

        else
        {
          v64 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v64)
          {
            goto LABEL_44;
          }

          if (v62 < v64)
          {
            goto LABEL_89;
          }

          sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
          swift_arrayInitWithCopy();
        }

        v42 = v129;
        v43 = v125;
        v40 = v126;
        v76 = v131;
        v78 = v127;
        v77 = v128;
        if (v64 < v130)
        {
          goto LABEL_86;
        }

        if (v64 > 0)
        {
          v79 = *(v58 + 16);
          v55 = __OFADD__(v79, v64);
          v80 = v79 + v64;
          if (v55)
          {
            goto LABEL_87;
          }

          *(v58 + 16) = v80;
        }

LABEL_45:
        sub_1CA36D780(v76, v77, v78, v48, 1);
        v132 = v41;
LABEL_46:
        if (++v42 == v40)
        {
          goto LABEL_51;
        }
      }
    }

    v41 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v81 = v41 >> 62;
    if (v41 >> 62)
    {
      v82 = OUTLINED_FUNCTION_131_6();
    }

    else
    {
      v82 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v120 >> 62;
    if (v120 >> 62)
    {
      v84 = sub_1CA94D328();
    }

    else
    {
      v84 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v84 + v82;
    if (__OFADD__(v84, v82))
    {
      goto LABEL_91;
    }

    v86 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v124 = v41;
    if (v86)
    {
      if (v83)
      {
        goto LABEL_63;
      }

      v87 = v120 & 0xFFFFFFFFFFFFFF8;
      if (v85 <= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v83)
      {
LABEL_63:
        sub_1CA94D328();
        OUTLINED_FUNCTION_94_3();
        goto LABEL_64;
      }

      v87 = v120 & 0xFFFFFFFFFFFFFF8;
    }

    v88 = *(v87 + 16);
LABEL_64:
    v120 = sub_1CA94D488();
    v87 = v120 & 0xFFFFFFFFFFFFFF8;
LABEL_65:
    OUTLINED_FUNCTION_109_5();
    v91 = v90 - v89;
    v92 = v87 + 8 * v89;
    if (v81)
    {
      v94 = sub_1CA94D328();
      if (!v94)
      {
LABEL_79:

        v0 = v115;
        v19 = v114;
        v105 = v120;
        if (v82 > 0)
        {
          goto LABEL_92;
        }

        goto LABEL_80;
      }

      v95 = v94;
      v96 = sub_1CA94D328();
      if (v91 < v96)
      {
        goto LABEL_97;
      }

      if (v95 < 1)
      {
        goto LABEL_98;
      }

      v129 = v96;
      v130 = v87;
      v131 = v82;
      OUTLINED_FUNCTION_3_61();
      sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
      v97 = v124;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
        v98 = OUTLINED_FUNCTION_77_11();
        v100 = sub_1CA276BDC(v98, v99, v97);
        v102 = *v101;
        v103 = OUTLINED_FUNCTION_122_3();
        v100(v103);
        *(v92 + 32) = v102;
        OUTLINED_FUNCTION_113_5();
      }

      while (v95 != v104);
      v87 = v130;
      v82 = v131;
      v93 = v129;
    }

    else
    {
      v93 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v93)
      {
        goto LABEL_79;
      }

      if (v91 < v93)
      {
        goto LABEL_96;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_arrayInitWithCopy();
    }

    v0 = v115;
    v19 = v114;
    v105 = v120;
    if (v93 < v82)
    {
      goto LABEL_92;
    }

    if (v93 > 0)
    {
      v106 = *(v87 + 16);
      v55 = __OFADD__(v106, v93);
      v107 = v106 + v93;
      if (v55)
      {
        goto LABEL_95;
      }

      *(v87 + 16) = v107;
    }

LABEL_80:
    v133 = v105;
    OUTLINED_FUNCTION_2_65();
    sub_1CA285DC8(v0, v108);
    v8 = v113;
    v22 = v119;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  OUTLINED_FUNCTION_11_3();
LABEL_84:
  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA6A8FB4(uint64_t (*a1)(void))
{
  v2 = OBJC_IVAR___WFWorkflowActionTree_batchUpdateState;
  *(v1 + OBJC_IVAR___WFWorkflowActionTree_batchUpdateState) = 1;
  result = a1();
  if (*(v1 + v2) == 2)
  {
    result = sub_1CA6A9448();
  }

  *(v1 + v2) = 0;
  return result;
}

uint64_t sub_1CA6A9010(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1CA94D328();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1CA6B0E9C(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1CA94D328() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_1CA94D328();
  a2 = sub_1CA6AD050(v5, v6, &unk_1EC448110, &unk_1CA984360, &qword_1EDB9F5D0, off_1E836DCF8);
LABEL_11:

  return sub_1CA6B12D8(a1, a2);
}

uint64_t sub_1CA6A911C(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1CA6B10BC(a1);
    return a2;
  }

  else
  {

    return sub_1CA6B18F0(a1, a2);
  }
}

uint64_t sub_1CA6A9170(uint64_t a1)
{
  sub_1CA9492B8();
  sub_1CA286854(&unk_1EC4480F0, MEMORY[0x1EEE78BB0]);
  result = sub_1CA94CA58();
  if (v3 >= a1)
  {
    return sub_1CA94CB18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6A9210()
{
  v1 = [*(v0 + OBJC_IVAR___WFWorkflowActionTree_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
  v2 = sub_1CA94C658();

  result = sub_1CA25B410();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA22D0](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v6 actionTreeWillChangeActions_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1CA6A9318()
{
  v1 = v0;
  swift_getObjectType();
  v2 = _s6LayoutVMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___WFWorkflowActionTree_root);
  v7 = sub_1CA94C218();
  sub_1CA2881E0(v7, v5);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448008, &unk_1CA991DF0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_1CA289DE0(v5, v11 + *(*v11 + 88));
  v12 = *(v1 + OBJC_IVAR___WFWorkflowActionTree__layout);
  *(v1 + OBJC_IVAR___WFWorkflowActionTree__layout) = v11;

  if (!*(v1 + OBJC_IVAR___WFWorkflowActionTree_batchUpdateState))
  {
    return sub_1CA6A9448();
  }

  *(v1 + OBJC_IVAR___WFWorkflowActionTree_batchUpdateState) = 2;
  return result;
}

uint64_t sub_1CA6A9448()
{
  v1 = v0;
  v2 = _s6LayoutVMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___WFWorkflowActionTree_actionObserver];
  sub_1CA285AF8(v5);
  v7 = *v5;
  sub_1CA94C218();
  sub_1CA285DC8(v5, _s6LayoutVMa);
  sub_1CA289E38(v7);
  sub_1CA6AC3E0(v8);
  v9 = *&v1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  sub_1CA28CFEC(v1);
  v10 = *&v1[OBJC_IVAR___WFWorkflowActionTree_connectorState];
  sub_1CA285AF8(v5);
  v11 = *v5;
  sub_1CA94C218();
  sub_1CA285DC8(v5, _s6LayoutVMa);
  sub_1CA635D24(v11);
  v12 = [*&v1[OBJC_IVAR___WFWorkflowActionTree_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
  v13 = sub_1CA94C658();

  result = sub_1CA25B410();
  if (result)
  {
    v15 = result;
    if (result < 1)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    for (i = 0; i != v15; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1CCAA22D0](i, v13);
      }

      else
      {
        v17 = *(v13 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v17 actionTreeDidChangeActions_];
      swift_unknownObjectRelease();
    }
  }

  if (![v1 notifyVariablesOfChanges] || (v18 = *(v9 + 72), (result = sub_1CA25B410()) == 0))
  {
LABEL_19:
    v24 = [*(v9 + 16) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481A0, &qword_1CA992020);
    v25 = sub_1CA94C658();

    result = sub_1CA25B410();
    if (!result)
    {
    }

    v26 = result;
    if (result >= 1)
    {
      for (j = 0; j != v26; ++j)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1CCAA22D0](j, v25);
        }

        else
        {
          v28 = *(v25 + 8 * j + 32);
          swift_unknownObjectRetain();
        }

        [v28 availableVariablesDidChange];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_28;
  }

  v19 = result;
  if (result >= 1)
  {
    sub_1CA94C218();
    for (k = 0; k != v19; ++k)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1CCAA22D0](k, v18);
      }

      else
      {
        v21 = *(v18 + 8 * k + 32);
      }

      v22 = v21;
      v23 = [v21 variableProvider];
      if (v23)
      {
        [v22 variableProviderDidInvalidateOutputDetails_];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t WFWorkflowActionTree.notifyVariablesOfChanges.getter()
{
  v1 = OBJC_IVAR___WFWorkflowActionTree_notifyVariablesOfChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

void __swiftcall WFWorkflowActionTree.init()(WFWorkflowActionTree *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id WFWorkflowActionTree.init()()
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v1 = sub_1CA94C648();
  v2 = [v0 initWithActions_];

  return v2;
}

void __swiftcall WFWorkflowActionTree.init(actions:)(WFWorkflowActionTree *__return_ptr retstr, Swift::OpaquePointer actions)
{
  OUTLINED_FUNCTION_158();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C648();

  [v2 initWithActions_];
}

void __swiftcall WFWorkflowActionTree.init(actionTree:)(WFWorkflowActionTree *__return_ptr retstr, WFWorkflowActionTree *actionTree)
{
  OUTLINED_FUNCTION_158();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActionTree_];
}

void WFWorkflowActionTree.init(actionTree:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v0;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18_30();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v8 = OBJC_IVAR___WFWorkflowActionTree_observers;
  *&v2[v8] = [objc_opt_self() weakObjectsHashTable];
  v2[OBJC_IVAR___WFWorkflowActionTree_batchUpdateState] = 0;
  v2[OBJC_IVAR___WFWorkflowActionTree_notifyVariablesOfChanges] = 0;
  *&v2[OBJC_IVAR___WFWorkflowActionTree_root] = *&v4[OBJC_IVAR___WFWorkflowActionTree_root];
  sub_1CA285AF8(v1);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448008, &unk_1CA991DF0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_1CA289DE0(v1, v12 + *(*v12 + 88));
  *&v2[OBJC_IVAR___WFWorkflowActionTree__layout] = v12;
  _s14ActionObserverCMa();
  v13 = *&v4[OBJC_IVAR___WFWorkflowActionTree_actionObserver];
  sub_1CA94C218();
  *&v2[OBJC_IVAR___WFWorkflowActionTree_actionObserver] = sub_1CA6A9BE4(v13);
  v14 = *&v4[OBJC_IVAR___WFWorkflowActionTree_connectorState];
  _s14ConnectorStateCMa();
  swift_allocObject();
  OUTLINED_FUNCTION_34_5();

  *&v2[OBJC_IVAR___WFWorkflowActionTree_connectorState] = sub_1CA635CB8(v15);
  v16 = *&v4[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  _s20VariableAvailabilityCMa();
  swift_allocObject();
  OUTLINED_FUNCTION_34_5();

  *&v2[OBJC_IVAR___WFWorkflowActionTree_variableAvailability] = sub_1CA3652EC(v17);
  v20.receiver = v2;
  v20.super_class = WFWorkflowActionTree;
  v18 = objc_msgSendSuper2(&v20, sel_init);

  v19 = *&v18[OBJC_IVAR___WFWorkflowActionTree_actionObserver];
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_129_4();
  OUTLINED_FUNCTION_76_0();
}

uint64_t WFWorkflowActionTree.actions.setter()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_171();
  sub_1CA286ACC(v1, 1);
  OUTLINED_FUNCTION_171();

  return sub_1CA6A81A0(v0);
}

void sub_1CA6A9D44(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C658();

  *a2 = v4;
}

void sub_1CA6A9DB8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C648();
  [v3 setActions_];
}

void __swiftcall WFWorkflowActionTree.action(at:)(WFAction *__return_ptr retstr, Swift::Int at)
{
  v4 = OUTLINED_FUNCTION_18_30();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_99_5(v7);
  v8 = *v2;
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v2, v9);
  sub_1CA275D70(at, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = OUTLINED_FUNCTION_23();
    MEMORY[0x1CCAA22D0](v11);
  }

  else
  {
    v10 = *(v8 + 8 * at + 32);
  }

  OUTLINED_FUNCTION_158();
}

Swift::Int __swiftcall WFWorkflowActionTree.index(of:)(WFAction *of)
{
  v2 = OUTLINED_FUNCTION_18_30();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_99_5(v5);
  v6 = *(v1 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v1, v7);
  v8 = OUTLINED_FUNCTION_23();
  v10 = sub_1CA311D00(v8, v9);
  v12 = v11;

  if (v12)
  {
    return sub_1CA948778();
  }

  return v10;
}

Swift::Int __swiftcall WFWorkflowActionTree.indentationLevelOfAction(at:)(Swift::Int at)
{
  v3 = OUTLINED_FUNCTION_18_30();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_99_5(v6);
  v7 = *(v1 + 16);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  result = sub_1CA285DC8(v1, v8);
  if (at < 0)
  {
    __break(1u);
  }

  else if (*(v7 + 16) > at)
  {
    v10 = *(v7 + 8 * at + 32);

    return v10;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall WFWorkflowActionTree.validIndexForInsertingAction(at:)(Swift::Int at)
{
  v2 = _s6LayoutVMa(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  sub_1CA285AF8(v1);
  v5 = *(v3 + 48);
  v6 = sub_1CA9491F8();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  (*(v9 + 16))(v13 - v12, v1 + v5, v6);
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v1, v15);
  v16 = OUTLINED_FUNCTION_20_0();
  v17 = sub_1CA6A751C(v16);
  (*(v9 + 8))(v14, v6);
  return v17;
}

Swift::Void __swiftcall WFWorkflowActionTree.insertActions(_:at:)(Swift::OpaquePointer _, Swift::Int at)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v2;
  v24 = v5;
  OUTLINED_FUNCTION_34_5();
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_18_30();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v11 = (v10 - v9);
  v12 = sub_1CA25B410();
  for (i = 0; v12 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1CCAA22D0](i);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v16 = [v4 indexOfAction_];
    if (v16 != sub_1CA948778())
    {
      goto LABEL_19;
    }
  }

  sub_1CA285AF8(v11);
  v17 = *v11;
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v11, v18);
  if (v24 < 0)
  {
    goto LABEL_16;
  }

  if (sub_1CA25B418(v17) < v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = sub_1CA25B410();
  v20 = sub_1CA25B410();
  v21 = v20 + v19;
  if (!__OFADD__(v20, v19))
  {
    sub_1CA94C218();
    sub_1CA277E18(v21, 1);
    sub_1CA6B0270(v24, v24, v19, v3);
    sub_1CA286ACC(v17, 1);
    v23 = v22;

    sub_1CA6A81A0(v23);
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  OUTLINED_FUNCTION_72_7();
  OUTLINED_FUNCTION_71_7();
  OUTLINED_FUNCTION_98_6();
  __break(1u);
}

Swift::Bool __swiftcall WFWorkflowActionTree.removeAction(at:)(Swift::Int at)
{
  v3 = *&v1[OBJC_IVAR___WFWorkflowActionTree_actionObserver];
  v4 = OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_shouldIgnoreUpdates;
  *(v3 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_shouldIgnoreUpdates) = 1;
  v5 = v1;
  sub_1CA6AA54C(v5, at, &v7);
  *(v3 + v4) = 0;

  return v7;
}

uint64_t sub_1CA6AA54C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = _s6LayoutVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA9492B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA285AF8(v9);
  v15 = *(v9 + 3);
  sub_1CA94C218();
  result = sub_1CA285DC8(v9, _s6LayoutVMa);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v15 + 16) > a2)
  {
    (*(v11 + 16))(v14, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a2, v10);

    v19 = *(a1 + OBJC_IVAR___WFWorkflowActionTree_root);
    sub_1CA94C218();
    sub_1CA6A78A8();
    v17 = v20[40];
    sub_1CA6A81A0(v19);
    (*(v11 + 8))(v14, v10);
    result = sub_1CA27080C(v20, &unk_1EC448130, &unk_1CA992000);
    *a3 = v17 != 255;
    return result;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(groupedWith:)(WFAction *groupedWith)
{
  OUTLINED_FUNCTION_77_1();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18_30();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_15();
  sub_1CA285AF8(v9);
  v10 = *(v2 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v2, v11);
  v12 = sub_1CA311D00(v4, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    sub_1CA285AF8(v1);
    v15 = *(v1 + 32);
    sub_1CA94C218();
    OUTLINED_FUNCTION_0_73();
    sub_1CA285DC8(v1, v16);
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v15 + 16))
    {
      v17 = v15 + 48 * v12;
      v19 = *(v17 + 32);
      v18 = *(v17 + 40);
      v20 = *(v17 + 48);
      v21 = *(v17 + 56);
      v22 = *(v17 + 64);
      v23 = *(v17 + 72);
      v24 = OUTLINED_FUNCTION_97_4();
      sub_1CA36D94C(v24, v25, v20, v21, v22, v23);

      if (!v23)
      {
        v28 = OUTLINED_FUNCTION_97_4();
        sub_1CA36D9BC(v28, v29, v20, v21, v22, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1CA9813B0;
        *(v30 + 32) = v4;
        v31 = v4;
        goto LABEL_8;
      }

      sub_1CA6AA9B8();
      v27 = v26;

      if (!(v27 >> 62))
      {
        sub_1CA94C218();
        sub_1CA94D808();
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);

        goto LABEL_8;
      }

LABEL_11:
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      sub_1CA94C218();
      sub_1CA94D608();
      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_76_0();
  result.value._rawValue = v32;
  result.is_nil = v33;
  return result;
}

void sub_1CA6AA9B8()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_91_7();
  v13 = MEMORY[0x1E69E7CC0];
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      sub_1CA285A0C(v9, v0);
      *v0;
      v11 = sub_1CA285DC8(v0, _s17ControlFlowBranchVMa);
      MEMORY[0x1CCAA1490](v11);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_127_5();
      }

      sub_1CA94C6E8();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v2;
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_23_2(v13);
  if (v12)
  {
    OUTLINED_FUNCTION_11_3();
  }

  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  OUTLINED_FUNCTION_76_0();
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(nestedInside:)(WFAction *nestedInside)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v153 = _s17ControlFlowBranchVMa(0);
  v5 = OUTLINED_FUNCTION_1_0(v153);
  v151 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448048, &qword_1CA991E00);
  v13 = OUTLINED_FUNCTION_52(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v147 = (&v143 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448050, &qword_1CA991E08);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19();
  v155 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v152 = (&v143 - v24);
  v25 = OUTLINED_FUNCTION_18_30();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_36_15();
  sub_1CA285AF8(v29);
  v30 = *(v2 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v2, v31);
  v32 = sub_1CA311D00(v4, v30);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    sub_1CA285AF8(v1);
    v35 = *(v1 + 32);
    sub_1CA94C218();
    OUTLINED_FUNCTION_0_73();
    sub_1CA285DC8(v1, v36);
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_113;
    }

    if (v32 >= *(v35 + 16))
    {
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
      goto LABEL_119;
    }

    v37 = v35 + 48 * v32;
    v1 = *(v37 + 32);
    v38 = *(v37 + 48);
    v39 = *(v37 + 56);
    v40 = *(v37 + 64);
    v41 = *(v37 + 72);
    v145 = *(v37 + 40);
    v150 = v38;
    v144 = v39;
    sub_1CA36D94C(v1, v145, v38, v39, v40, v41);

    if (v41)
    {
      if (v41 == 1)
      {
        if (v40)
        {
          v1 = v150;
          if ((v40 & 0x8000000000000000) == 0)
          {
            if (v40 < *(v150 + 16))
            {
              OUTLINED_FUNCTION_47();
              v44 = *(v1 + v42 + *(v43 + 72) * v40 + *(v153 + 28));
              v45 = sub_1CA94C218();
              sub_1CA6A71A4(v45);
              OUTLINED_FUNCTION_158();

LABEL_101:

              goto LABEL_102;
            }

            goto LABEL_120;
          }

LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v46 = MEMORY[0x1E69E7CC0];
        v170 = MEMORY[0x1E69E7CC0];
        v146 = *(v150 + 16);
        sub_1CA94C218();
        v47 = 0;
        v156 = v46;
        v48 = v155;
        v149 = v11;
        v148 = v12;
        while (1)
        {
          if (v47 == v146)
          {
            v49 = 1;
            v154 = v146;
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_111;
            }

            if (v47 >= *(v150 + 16))
            {
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
              goto LABEL_114;
            }

            v50 = v47 + 1;
            OUTLINED_FUNCTION_47();
            v55 = v52 + v51 + *(v53 + 72) * v54;
            v56 = *(v12 + 48);
            v57 = v147;
            *v147 = v54;
            OUTLINED_FUNCTION_9_41();
            sub_1CA285A0C(v59, v57 + v58);
            sub_1CA2D9CD4(v57, v155, &qword_1EC448048, &qword_1CA991E00);
            v49 = 0;
            v154 = v50;
            v48 = v155;
          }

          __swift_storeEnumTagSinglePayload(v48, v49, 1, v12);
          v60 = v48;
          v61 = v152;
          sub_1CA2D9CD4(v60, v152, &qword_1EC448050, &qword_1CA991E08);
          if (__swift_getEnumTagSinglePayload(v61, 1, v12) == 1)
          {

            v1 = v144;
            MEMORY[0x1CCAA1490]();
            if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_100:
              OUTLINED_FUNCTION_20_0();
              sub_1CA94C6E8();

              goto LABEL_101;
            }

LABEL_121:
            sub_1CA94C698();
            goto LABEL_100;
          }

          v62 = *v61;
          v63 = *(v12 + 48);
          OUTLINED_FUNCTION_20_33();
          sub_1CA289DE0(v65 + v64, v11);
          if (v62)
          {
            v66 = *v11;
            MEMORY[0x1CCAA1490]();
            OUTLINED_FUNCTION_23_2(v170);
            if (v67)
            {
              OUTLINED_FUNCTION_11_3();
            }

            OUTLINED_FUNCTION_116();
            sub_1CA94C6E8();
            v156 = v170;
          }

          v68 = *(v11 + *(v153 + 28));
          v169 = MEMORY[0x1E69E7CC0];
          v69 = *(v68 + 16);
          if (v69)
          {
            v12 = MEMORY[0x1E69E7CC0];
            v70 = 0;
            v71 = v68 + 32;
            v161 = v68 + 32;
            v162 = v69;
            while (1)
            {
              v72 = v71 + 40 * v70;
              v74 = *v72;
              v73 = *(v72 + 8);
              v11 = *(v72 + 16);
              v75 = *(v72 + 24);
              if ((*(v72 + 32) & 1) == 0)
              {
                OUTLINED_FUNCTION_58_9();
                sub_1CA36DA2C(v85, v86, v87, v88, v89);
                v90 = v74;
                MEMORY[0x1CCAA1490]();
                OUTLINED_FUNCTION_23_2(v169);
                if (v67)
                {
                  OUTLINED_FUNCTION_11_3();
                }

                OUTLINED_FUNCTION_116();
                sub_1CA94C6E8();
                OUTLINED_FUNCTION_58_9();
                sub_1CA36D780(v91, v92, v93, v94, v95);
                v12 = v169;
                goto LABEL_59;
              }

              v163 = *v72;
              v167 = v73;
              sub_1CA94C218();
              sub_1CA94C218();
              v165 = v75;
              v76 = v75;
              v166 = v11;
              sub_1CA6A86E0();
              v78 = v77;
              v79 = v77 >> 62;
              if (v77 >> 62)
              {
                v80 = OUTLINED_FUNCTION_131_6();
              }

              else
              {
                v80 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v81 = v12 >> 62;
              if (v12 >> 62)
              {
                v82 = OUTLINED_FUNCTION_130_4();
              }

              else
              {
                v82 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v1 = v82 + v80;
              if (__OFADD__(v82, v80))
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
                goto LABEL_112;
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              v164 = v70;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                if (v81)
                {
                  goto LABEL_41;
                }

                v84 = v12 & 0xFFFFFFFFFFFFFF8;
                if (v1 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                if (v81)
                {
LABEL_41:
                  OUTLINED_FUNCTION_130_4();
                  OUTLINED_FUNCTION_94_3();
                  goto LABEL_42;
                }

                v84 = v12 & 0xFFFFFFFFFFFFFF8;
              }

              v96 = *(v84 + 16);
LABEL_42:
              OUTLINED_FUNCTION_75_8();
              v12 = sub_1CA94D488();
              v84 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
              OUTLINED_FUNCTION_109_5();
              v99 = v98 - v97;
              v100 = v84 + 8 * v97;
              if (v79)
              {
                v102 = sub_1CA94D328();
                if (!v102)
                {
LABEL_57:

                  v71 = v161;
                  v69 = v162;
                  v70 = v164;
                  v109 = v165;
                  v111 = v166;
                  v110 = v167;
                  if (v80 > 0)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_58;
                }

                v1 = v102;
                v103 = sub_1CA94D328();
                if (v99 < v103)
                {
                  goto LABEL_106;
                }

                if (v1 < 1)
                {
                  goto LABEL_108;
                }

                v157 = v103;
                v158 = v84;
                v159 = v80;
                v160 = v12;
                v11 = (v100 + 32);
                OUTLINED_FUNCTION_3_61();
                sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
                for (i = 0; i != v1; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, &unk_1CA991E10);
                  v105 = sub_1CA276BDC(&v168, i, v78);
                  v107 = *v106;
                  v108 = OUTLINED_FUNCTION_122_3();
                  v105(v108);
                  v11[i] = v107;
                }

                v80 = v159;
                v12 = v160;
                v101 = v157;
                v84 = v158;
              }

              else
              {
                v1 = v78 & 0xFFFFFFFFFFFFFF8;
                v101 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v101)
                {
                  goto LABEL_57;
                }

                if (v99 < v101)
                {
                  goto LABEL_107;
                }

                sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
                swift_arrayInitWithCopy();
              }

              v71 = v161;
              v69 = v162;
              v70 = v164;
              v109 = v165;
              v111 = v166;
              v110 = v167;
              if (v101 < v80)
              {
                goto LABEL_104;
              }

              if (v101 > 0)
              {
                v112 = *(v84 + 16);
                v113 = __OFADD__(v112, v101);
                v114 = v112 + v101;
                if (v113)
                {
                  goto LABEL_105;
                }

                *(v84 + 16) = v114;
              }

LABEL_58:
              sub_1CA36D780(v163, v110, v111, v109, 1);
              v169 = v12;
LABEL_59:
              if (++v70 == v69)
              {
                goto LABEL_64;
              }
            }
          }

          v12 = MEMORY[0x1E69E7CC0];
LABEL_64:
          v160 = v12;
          if (v12 >> 62)
          {
            v115 = OUTLINED_FUNCTION_130_4();
          }

          else
          {
            v115 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          OUTLINED_FUNCTION_117_5();
          v116 = v156;
          v117 = v156 >> 62;
          if (v156 >> 62)
          {
            v118 = sub_1CA94D328();
          }

          else
          {
            v118 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v118 + v115;
          if (__OFADD__(v118, v115))
          {
            goto LABEL_109;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v117)
            {
              goto LABEL_76;
            }

            v119 = v116 & 0xFFFFFFFFFFFFFF8;
            if (v1 <= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_78;
            }
          }

          else
          {
            if (v117)
            {
LABEL_76:
              sub_1CA94D328();
              OUTLINED_FUNCTION_94_3();
              goto LABEL_77;
            }

            v119 = v116 & 0xFFFFFFFFFFFFFF8;
          }

          v120 = *(v119 + 16);
LABEL_77:
          OUTLINED_FUNCTION_75_8();
          v156 = sub_1CA94D488();
          v119 = v156 & 0xFFFFFFFFFFFFFF8;
LABEL_78:
          OUTLINED_FUNCTION_109_5();
          v123 = v122 - v121;
          v124 = v119 + 8 * v121;
          if (v12 >> 62)
          {
            if (v160 < 0)
            {
              v1 = v160;
            }

            else
            {
              v1 = v160 & 0xFFFFFFFFFFFFFF8;
            }

            v126 = sub_1CA94D328();
            if (!v126)
            {
LABEL_95:

              v48 = v155;
              if (v115 > 0)
              {
                goto LABEL_110;
              }

              goto LABEL_96;
            }

            v127 = v126;
            v128 = sub_1CA94D328();
            if (v123 < v128)
            {
              goto LABEL_117;
            }

            if (v127 < 1)
            {
              goto LABEL_118;
            }

            v125 = v128;
            v166 = v119;
            v167 = v115;
            v12 = v124 + 32;
            OUTLINED_FUNCTION_3_61();
            v129 = sub_1CA276B98(&unk_1EC448060, &qword_1EC448058, &unk_1CA991E10);
            v130 = &unk_1CA991E10;
            v1 = v129;
            v131 = v160;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448058, v130);
              v132 = OUTLINED_FUNCTION_77_11();
              v134 = sub_1CA276BDC(v132, v133, v131);
              v11 = *v135;
              v136 = OUTLINED_FUNCTION_122_3();
              v134(v136);
              *v12 = v11;
              OUTLINED_FUNCTION_113_5();
            }

            while (v127 != v137);
            OUTLINED_FUNCTION_117_5();
            v119 = v166;
            v115 = v167;
          }

          else
          {
            v125 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v125)
            {
              goto LABEL_95;
            }

            if (v123 < v125)
            {
              goto LABEL_116;
            }

            sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
            swift_arrayInitWithCopy();
          }

          v48 = v155;
          if (v125 < v115)
          {
            goto LABEL_110;
          }

          if (v125 > 0)
          {
            v138 = *(v119 + 16);
            v113 = __OFADD__(v138, v125);
            v139 = v138 + v125;
            if (v113)
            {
              goto LABEL_115;
            }

            *(v119 + 16) = v139;
          }

LABEL_96:
          v170 = v156;
          OUTLINED_FUNCTION_2_65();
          sub_1CA285DC8(v11, v140);
          v47 = v154;
        }
      }
    }

    else
    {
      sub_1CA36D9BC(v1, v145, v150, v144, v40, 0);
    }
  }

LABEL_102:
  OUTLINED_FUNCTION_36();
  result.value._rawValue = v141;
  result.is_nil = v142;
  return result;
}

id sub_1CA6AB604(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v6 = a3;
  v7 = a1;
  v8 = OUTLINED_FUNCTION_171();
  v9 = a4(v8);

  if (v9)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v10 = sub_1CA94C648();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(inControlFlowBranch:)(WFAction *inControlFlowBranch)
{
  OUTLINED_FUNCTION_77_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_18_30();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36_15();
  sub_1CA285AF8(v11);
  v12 = *(v1 + 8);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v1, v13);
  v14 = sub_1CA311D00(v3, v12);
  v16 = v15;

  if (v16)
  {
    goto LABEL_11;
  }

  sub_1CA285AF8(v9);
  v17 = *(v9 + 32);
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  v19 = sub_1CA285DC8(v9, v18);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v14 >= *(v17 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v17 + 48 * v14;
  v23 = *(v21 + 32);
  v22 = *(v21 + 40);
  v25 = *(v21 + 48);
  v24 = *(v21 + 56);
  v26 = *(v21 + 64);
  v27 = *(v21 + 72);
  v28 = OUTLINED_FUNCTION_86_5();
  sub_1CA36D94C(v28, v29, v30, v31, v32, v27);

  if (!v27)
  {
    v39 = OUTLINED_FUNCTION_86_5();
    sub_1CA36D9BC(v39, v40, v41, v42, v43, 0);
    goto LABEL_11;
  }

  if (v27 != 1)
  {

    goto LABEL_11;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (v26 >= *(v25 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = _s17ControlFlowBranchVMa(0);
  v34 = OUTLINED_FUNCTION_12(v33);
  v37 = *(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v36 + 72) * v26 + *(v34 + 36));
  v38 = sub_1CA94C218();
  sub_1CA6A71A4(v38);

LABEL_11:
  OUTLINED_FUNCTION_76_0();
LABEL_16:
  result.value._rawValue = v19;
  result.is_nil = v20;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WFWorkflowActionTree.actions(inside:)(WFAction_optional *inside)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18_30();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_73_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  if (v4)
  {
    sub_1CA285AF8(&v57 - v9);
    v11 = *(v10 + 1);
    sub_1CA94C218();
    v12 = v4;
    OUTLINED_FUNCTION_0_73();
    sub_1CA285DC8(v10, v13);
    v14 = sub_1CA311D00(v12, v11);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      sub_1CA285AF8(v2);
      v17 = *(v2 + 32);
      sub_1CA94C218();
      OUTLINED_FUNCTION_0_73();
      v19 = sub_1CA285DC8(v2, v18);
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v14 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      v21 = v17 + 48 * v14;
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);
      v24 = *(v21 + 48);
      v25 = *(v21 + 56);
      v26 = *(v21 + 64);
      v27 = *(v21 + 72);
      v28 = OUTLINED_FUNCTION_87_6();
      sub_1CA36D94C(v28, v29, v30, v31, v32, v27);

      if (v27)
      {
        if (v27 == 1)
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          if (v26 >= *(v24 + 16))
          {
            goto LABEL_35;
          }

          v33 = _s17ControlFlowBranchVMa(0);
          v34 = OUTLINED_FUNCTION_12(v33);
          v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
          v38 = *(v24 + v36 + *(v37 + 72) * v26 + *(v34 + 36));
          v39 = *(v38 + 16);
          if (v39)
          {
            v58 = MEMORY[0x1E69E7CC0];
            sub_1CA94C218();
            v19 = sub_1CA94D508();
            v57 = v38;
            v40 = (v38 + 64);
            do
            {
              if (*v40)
              {
                v41 = *(v40 - 2);
                if (!*(v41 + 16))
                {
                  goto LABEL_31;
                }

                v42 = *(v41 + v36);
              }

              else
              {
                v42 = *(v40 - 4);
              }

              v42;
              sub_1CA94D4D8();
              v43 = *(v58 + 16);
              sub_1CA94D518();
              sub_1CA94D528();
              v19 = sub_1CA94D4E8();
              v40 += 40;
              --v39;
            }

            while (v39);

LABEL_24:
          }

          else
          {
          }
        }

        else
        {
        }

        goto LABEL_27;
      }

      v52 = OUTLINED_FUNCTION_87_6();
      sub_1CA36D9BC(v52, v53, v54, v55, v56, 0);
    }

LABEL_27:
    OUTLINED_FUNCTION_36();
    goto LABEL_36;
  }

  v44 = *(v1 + OBJC_IVAR___WFWorkflowActionTree_root);
  v45 = *(v44 + 16);
  if (!v45)
  {
    goto LABEL_27;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1CA94C218();
  v19 = sub_1CA94D508();
  v46 = (v44 + 64);
  while (1)
  {
    if ((*v46 & 1) == 0)
    {
      v50 = *(v46 - 4);
      goto LABEL_23;
    }

    v47 = *(v46 - 2);
    if (!*(v47 + 16))
    {
      break;
    }

    v48 = _s17ControlFlowBranchVMa(0);
    OUTLINED_FUNCTION_18_0(v48);
    v50 = *(v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)));
LABEL_23:
    v50;
    sub_1CA94D4D8();
    v51 = *(v58 + 16);
    sub_1CA94D518();
    OUTLINED_FUNCTION_187();
    sub_1CA94D528();
    v19 = sub_1CA94D4E8();
    v46 += 40;
    if (!--v45)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result.value._rawValue = v19;
  result.is_nil = v20;
  return result;
}

Swift::Bool __swiftcall WFWorkflowActionTree.actionIsConnectedToPreviousAction(_:)(WFAction *a1)
{
  v2 = *(v1 + OBJC_IVAR___WFWorkflowActionTree_connectorState);
  sub_1CA636144();

  v3 = OUTLINED_FUNCTION_23();
  v5 = sub_1CA2B5D28(v3, v4);

  return v5 & 1;
}

id sub_1CA6ABDBC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_20_0();
  v5 = sub_1CA94C368();

  return v5;
}

uint64_t sub_1CA6ABE30(int a1)
{
  v3 = *(v1 + OBJC_IVAR___WFWorkflowActionTree_root);
  sub_1CA94C218();
  sub_1CA6B2E48(0, 0xE000000000000000, a1, v3);

  return OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA6ABF90()
{
  v0 = sub_1CA6ABF20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1CA6ABFE4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions;
  v5 = *(v2 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions);
  sub_1CA94C218();
  v6 = sub_1CA94C218();
  v7 = sub_1CA6A9010(v6, a1);

  v8 = *(v2 + v4);
  sub_1CA94C218();
  v40 = sub_1CA6A9010(a1, v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    sub_1CA94C948();
    v10 = v42;
    v9 = v43;
    v11 = v44;
    v12 = v45;
    v13 = v46;
  }

  else
  {
    v14 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);
    sub_1CA94C218();
    v12 = 0;
    v10 = v7;
  }

  v38 = v11;
  v17 = (v11 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_18:
      sub_1CA2BC138();

      v24 = v40;
      if ((v40 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1CA94D2F8();
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        sub_1CA28D4F8();
        sub_1CA94C948();
        v24 = v47;
        v25 = v48;
        v26 = v49;
        v27 = v50;
        v28 = v51;
      }

      else
      {
        v29 = -1 << *(v40 + 32);
        v25 = v40 + 56;
        v26 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v28 = v31 & *(v40 + 56);
        sub_1CA94C218();
        v27 = 0;
      }

      v39 = v26;
      v32 = (v26 + 64) >> 6;
      if (v24 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v33 = v27;
        v34 = v28;
        v35 = v27;
        if (!v28)
        {
          break;
        }

LABEL_29:
        v36 = (v34 - 1) & v34;
        v37 = *(*(v24 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
        if (!v37)
        {
LABEL_35:
          sub_1CA2BC138();

          return;
        }

        while (1)
        {
          [v37 addEventObserver_];

          v27 = v35;
          v28 = v36;
          if ((v24 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_1CA94D358())
          {
            sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
            swift_dynamicCast();
            v37 = v41;
            v35 = v27;
            v36 = v28;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_37;
        }

        if (v35 >= v32)
        {
          goto LABEL_35;
        }

        v34 = *(v25 + 8 * v35);
        ++v33;
        if (v34)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      [v22 removeEventObserver_];

      v12 = v20;
      v13 = v21;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v23 = sub_1CA94D358();
      if (v23)
      {
        v41 = v23;
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        swift_dynamicCast();
        v22 = v47;
        v20 = v12;
        v21 = v13;
        if (v47)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1CA6AC3E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions);
  *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions) = a1;
  sub_1CA6ABFE4(v2);
}

id sub_1CA6AC428()
{
  if (sub_1CA25B410())
  {
    sub_1CA2E90A8(MEMORY[0x1E69E7CC0], v1, v2, v3, v4, v5, v6, v7, v11.receiver, v11.super_class);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  v9 = *&v0[OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions];
  *&v0[OBJC_IVAR____TtCE11WorkflowKitCSo20WFWorkflowActionTree14ActionObserver_actions] = v8;

  v11.receiver = v0;
  v11.super_class = _s14ActionObserverCMa();
  return objc_msgSendSuper2(&v11, sel_dealloc);
}