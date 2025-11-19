uint64_t sub_1CA563C5C()
{
  v1 = sub_1CA94C368();
  v2 = [v0 parameterStateForKey_];

  if (v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1CA563CD8()
{
  v1 = sub_1CA94C368();
  v2 = [v0 parameterStateForKey_];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446030, &unk_1CA989F80);
    OUTLINED_FUNCTION_93();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1CA563D58(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277D4(v3);
    v3 = v5;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1CA567B0C(v8, v7);
  *a1 = v3;
}

id WFAppSettingUpdaterAction.init(identifier:actionMetadata:entityMetadataForParameterIdentifier:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage___sortedLocalizedNames) = 0;
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage____localizedNameForEntityIdentifier) = 0;
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage___sortedParameterIdentifiers) = 0;
  *(v9 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier) = a4;
  return WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(a1, a2, a3, a5, a6, a7, a8, a9);
}

uint64_t sub_1CA563F90()
{
  OUTLINED_FUNCTION_18_22();
  v1 = sub_1CA94C368();
  v2 = [v0 parameterStateForKey_];

  if (!v2)
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = [v3 value]) != 0 && (v5 = v4, OUTLINED_FUNCTION_25_14(), sub_1CA94C398(), v5, v10))
  {
    v6 = *&v0[OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier];
    v7 = sub_1CA323E2C(v9);
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

void sub_1CA56409C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v25 = v1;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = *(*(v25 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
        v11 = [v10 identifier];
        v26 = sub_1CA94C3A8();
        v13 = v12;

        v14 = [v10 displayRepresentation];
        v15 = [v14 name];

        v16 = [v15 wf_localizedString];
        v17 = sub_1CA94C3A8();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v8 + 16);
          sub_1CA2E4FA0();
          v8 = v23;
        }

        v20 = *(v8 + 16);
        if (v20 >= *(v8 + 24) >> 1)
        {
          sub_1CA2E4FA0();
          v8 = v24;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v20 + 1;
        v21 = (v8 + 32 * v20);
        v21[4] = v26;
        v21[5] = v13;
        v21[6] = v17;
        v21[7] = v19;
      }

      while (v5);
    }
  }

  sub_1CA5F077C(v8);
}

id sub_1CA5643A4()
{
  v1 = [v0 fullyQualifiedLinkActionIdentifier];
  v2 = [v1 bundleIdentifier];

  sub_1CA94C3A8();
  v4 = v3;

  v5 = objc_allocWithZone(MEMORY[0x1E696E720]);
  v6 = OUTLINED_FUNCTION_87();
  return sub_1CA5679E4(v6, v4);
}

id sub_1CA564470()
{
  sub_1CA697814(v18);
  if (v20)
  {
    if (v19 - 2 < 3)
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_3_42();
      if (v1)
      {
        OUTLINED_FUNCTION_12_24();

        OUTLINED_FUNCTION_6_37();
        OUTLINED_FUNCTION_2_48();
        v14 = v2;
        OUTLINED_FUNCTION_7_32();
        v3 = v14;
        if (qword_1EDB9F5F0 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }

LABEL_18:
      OUTLINED_FUNCTION_116();
      sub_1CA94C378();
      OUTLINED_FUNCTION_1_2();

      sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
      v4 = sub_1CA43AE20();
      sub_1CA30F7DC(v18, &qword_1EC445FA0, &unk_1CA98B5A0);
      return v4;
    }

    if (v19)
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_3_42();
      if (!v7)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_24();

      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_2_48();
      v16 = v8;
      OUTLINED_FUNCTION_7_32();
      v3 = v16;
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (sub_1CA627C60() == 1)
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_3_42();
      if (!v5)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_24();

      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_2_48();
      v15 = v6;
      OUTLINED_FUNCTION_7_32();
      v3 = v15;
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1CA94C438();
      OUTLINED_FUNCTION_3_42();
      if (!v9)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_12_24();

      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_2_48();
      v17 = v10;
      OUTLINED_FUNCTION_7_32();
      v3 = v17;
      if (qword_1EDB9F5F0 == -1)
      {
LABEL_17:
        sub_1CA94C368();
        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_116();
        sub_1CA94C368();
        OUTLINED_FUNCTION_87();

        v12 = OUTLINED_FUNCTION_10_25(v11, sel_localizedStringForKey_value_table_);

        sub_1CA94C3A8();
        goto LABEL_18;
      }
    }

LABEL_20:
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_32_11();
    goto LABEL_17;
  }

  return 0;
}

void sub_1CA56485C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  if (qword_1EDB9F960 != -1)
  {
    OUTLINED_FUNCTION_13_27();
  }

  v3 = [v0 fullyQualifiedLinkActionIdentifier];
  v4 = [v3 bundleIdentifier];

  v5 = sub_1CA94C3A8();
  v7 = v6;

  v8 = sub_1CA2786EC(v5, v7);
  v10 = v9;

  if (v10)
  {
    sub_1CA94C438();
    v25 = v11;
    sub_1CA94C438();
    v12 = sub_1CA948E58();
    v13 = OUTLINED_FUNCTION_18_0(v12);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_1_40();
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v16 = [qword_1EDB9F690 bundleURL];
    v17 = sub_1CA948BA8();
    v18 = OUTLINED_FUNCTION_18_0(v17);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_31_9();

    v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v22 = OUTLINED_FUNCTION_14_23();
    v23 = [v2 localize_];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CA981310;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1CA282DB4();
    *(v24 + 32) = v8;
    *(v24 + 40) = v10;
    sub_1CA94C3C8();
    OUTLINED_FUNCTION_69_1();
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA564B08()
{
  OUTLINED_FUNCTION_37_0();
  v1 = [v0 fullyQualifiedLinkActionIdentifier];
  v2 = [v1 bundleIdentifier];

  v3 = sub_1CA94C3A8();
  v5 = v4;

  v6 = *MEMORY[0x1E69E0F00];
  if (v3 == sub_1CA94C3A8() && v5 == v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_23_14();
    v9 = sub_1CA94D7F8();

    if ((v9 & 1) == 0)
    {
      if (qword_1EDB9F960 != -1)
      {
        OUTLINED_FUNCTION_13_27();
      }

      v10 = [v0 fullyQualifiedLinkActionIdentifier];
      v11 = [v10 bundleIdentifier];

      v12 = sub_1CA94C3A8();
      v14 = v13;

      v15 = sub_1CA2786EC(v12, v14);
      v17 = v16;

      if (v17)
      {
        v45 = v15;
        sub_1CA94C438();
        v44 = v18;
        sub_1CA94C438();
        v19 = sub_1CA948E58();
        v20 = OUTLINED_FUNCTION_18_0(v19);
        v22 = *(v21 + 64);
        MEMORY[0x1EEE9AC00](v20);
        OUTLINED_FUNCTION_1_40();
        sub_1CA948D98();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v23 = [qword_1EDB9F690 bundleURL];
        v24 = sub_1CA948BA8();
        v25 = OUTLINED_FUNCTION_18_0(v24);
        v27 = *(v26 + 64);
        MEMORY[0x1EEE9AC00](v25);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_31_9();

        v28 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v29 = OUTLINED_FUNCTION_14_23();
        v30 = OUTLINED_FUNCTION_34_13(v29, sel_localize_);

        sub_1CA94C3A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1CA981310;
        *(v31 + 56) = MEMORY[0x1E69E6158];
        *(v31 + 64) = sub_1CA282DB4();
        *(v31 + 32) = v45;
        *(v31 + 40) = v17;
        sub_1CA94C3C8();
        OUTLINED_FUNCTION_69_1();

        goto LABEL_16;
      }
    }
  }

  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438();
  v32 = OUTLINED_FUNCTION_58();
  v33 = OUTLINED_FUNCTION_18_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v36 = [qword_1EDB9F690 bundleURL];
  v37 = sub_1CA948BA8();
  v38 = OUTLINED_FUNCTION_18_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = OUTLINED_FUNCTION_9_1();
  v43 = OUTLINED_FUNCTION_34_13(v42, sel_localize_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_69_1();

LABEL_16:
  OUTLINED_FUNCTION_36();
}

void sub_1CA565038()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v84 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 64) = v3;
  *(inited + 72) = @"Class";
  type metadata accessor for SettingPickerParameter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = @"Key";
  v77 = @"Class";
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  v7 = sub_1CA94C3A8();
  v9 = v8;

  *(inited + 80) = v7;
  *(inited + 88) = v9;
  *(inited + 104) = v3;
  *(inited + 112) = @"HideClearButton";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v10;
  *(inited + 152) = @"Placeholder";
  v11 = @"HideClearButton";
  v76 = @"Placeholder";
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v12 = qword_1EDB9F690;
  OUTLINED_FUNCTION_116();
  v13 = sub_1CA94C368();
  OUTLINED_FUNCTION_116();
  v14 = sub_1CA94C368();

  v78 = v12;
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = sub_1CA94C3A8();
  v18 = v17;

  *(inited + 160) = v16;
  *(inited + 168) = v18;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"DefaultValue";
  v19 = *&v1[OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier];
  v20 = @"DefaultValue";
  v21 = sub_1CA94C218();
  v22 = sub_1CA334394(v21);

  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
  if (v22[2])
  {
    v24 = v22[4];
    v23 = v22[5];
    sub_1CA94C218();
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v25 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 200) = v24;
  *(inited + 208) = v23;
  *(inited + 232) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  v26 = swift_getObjCClassFromMetadata();
  v27 = @"DisallowedVariableTypes";
  v28 = [v26 allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA567A6C(&qword_1EC441A60, type metadata accessor for WFVariableType);
  v29 = sub_1CA94C8F8();

  sub_1CA3E4650(v29);
  v31 = v30;

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = v31;
  _s3__C3KeyVMa_0(0);
  sub_1CA567A6C(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  sub_1CA2F864C();
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_8_8();
  if (v32)
  {
    OUTLINED_FUNCTION_11_3();
  }

  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  v33 = [v1 metadata];
  v34 = [v33 wf_parameterDefinitions];

  v35 = sub_1CA94C658();
  v36 = sub_1CA25B410();
  if (v36)
  {
    v37 = v36;
    if (v36 >= 1)
    {
      v74 = v25;
      v38 = 0;
      v39 = v35 & 0xC000000000000001;
      v70 = @"Label";
      v40 = &selRef_metaDataDeviceQueryOperation;
      v75 = v5;
      v72 = v36;
      v73 = v35;
      v71 = v35 & 0xC000000000000001;
      while (1)
      {
        if (v39)
        {
          v41 = MEMORY[0x1CCAA22D0](v38, v35);
        }

        else
        {
          v41 = *(v35 + 8 * v38 + 32);
        }

        v42 = v41;
        if ([v41 v40[180]])
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          v81 = 0u;
          v82 = 0u;
        }

        v83[0] = v81;
        v83[1] = v82;
        if (*(&v82 + 1))
        {
          if (swift_dynamicCast())
          {
            v43 = swift_initStackObject();
            *(v43 + 16) = xmmword_1CA9813C0;
            *(v43 + 32) = v5;
            *(v43 + 40) = v79;
            *(v43 + 48) = v80;
            v44 = MEMORY[0x1E69E6158];
            *(v43 + 64) = MEMORY[0x1E69E6158];
            *(v43 + 72) = v77;
            *(v43 + 80) = 0xD000000000000014;
            *(v43 + 88) = 0x80000001CA9A4680;
            *(v43 + 104) = v44;
            *(v43 + 112) = @"ParameterValueParameterDefinition";
            v45 = swift_initStackObject();
            *(v45 + 16) = xmmword_1CA9813C0;
            *(v45 + 32) = v5;
            *(v45 + 40) = 0x65756C6176;
            *(v45 + 48) = 0xE500000000000000;
            *(v45 + 64) = v44;
            *(v45 + 72) = v70;
            v46 = v5;
            v47 = v77;
            sub_1CA94C218();
            v48 = @"ParameterValueParameterDefinition";
            v49 = v70;
            sub_1CA94C438();
            v50 = v44;
            v51 = sub_1CA94C368();
            v52 = sub_1CA94C368();

            v53 = [v78 localizedStringForKey:v51 value:v52 table:0];

            v54 = sub_1CA94C3A8();
            v56 = v55;

            *(v45 + 80) = v54;
            *(v45 + 88) = v56;
            *(v45 + 104) = v50;
            *(v45 + 112) = v76;
            v57 = v76;
            v58 = sub_1CA56407C();
            if (v58[2] && (v59 = sub_1CA271BF8(), (v60 & 1) != 0))
            {
              v61 = (v58[7] + 16 * v59);
              v63 = *v61;
              v62 = v61[1];
              sub_1CA94C218();

              v64 = (v45 + 120);
              *(v45 + 144) = MEMORY[0x1E69E6158];
              if (v62)
              {
                *v64 = v63;
LABEL_27:
                v5 = v75;
                *(v45 + 128) = v62;
                OUTLINED_FUNCTION_23_14();
                sub_1CA94C1E8();
                OUTLINED_FUNCTION_23_14();
                sub_1CA94C1A8();
                OUTLINED_FUNCTION_87();

                v69 = [v42 definitionByAddingEntriesInDictionary_];

                *(v43 + 144) = v74;
                *(v43 + 120) = v69;
                OUTLINED_FUNCTION_23_14();
                sub_1CA94C1E8();
                sub_1CA2F864C();
                MEMORY[0x1CCAA1490]();
                OUTLINED_FUNCTION_8_8();
                if (v32)
                {
                  OUTLINED_FUNCTION_11_3();
                }

                OUTLINED_FUNCTION_116();
                sub_1CA94C6E8();

                v37 = v72;
                v35 = v73;
                v39 = v71;
                v40 = &selRef_metaDataDeviceQueryOperation;
                goto LABEL_30;
              }
            }

            else
            {

              v64 = (v45 + 120);
              *(v45 + 144) = MEMORY[0x1E69E6158];
            }

            sub_1CA94C438();
            OUTLINED_FUNCTION_69_1();
            v65 = sub_1CA94C368();
            v66 = sub_1CA94C368();

            v58 = [v78 localizedStringForKey:v65 value:v66 table:0];

            v67 = sub_1CA94C3A8();
            v62 = v68;

            *v64 = v67;
            goto LABEL_27;
          }
        }

        else
        {

          sub_1CA30F7DC(v83, &unk_1EC444650, &unk_1CA981C70);
        }

LABEL_30:
        if (v37 == ++v38)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA5658B4(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WFAppSettingUpdaterAction();
  objc_msgSendSuper2(&v4, sel_configureParameter_, a1);
  type metadata accessor for SettingPickerParameter();
  OUTLINED_FUNCTION_93();
  result = swift_dynamicCastClass();
  if (result)
  {
    *(result + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource + 8) = &off_1F4A13628;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1CA565990(uint64_t a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_18_22();
  v7 = v6 == v4 && v5 == 0xE600000000000000;
  if (v7 || (sub_1CA94D7F8() & 1) != 0)
  {
    OUTLINED_FUNCTION_187();
    v8 = sub_1CA94C368();
    v9 = type metadata accessor for WFAppSettingUpdaterAction();
    v42.receiver = v2;
    v42.super_class = v9;
    v10 = objc_msgSendSuper2(&v42, sel_parameterStateForKey_, v8);

    if (v10 && (v11 = [v10 isEqual_], swift_unknownObjectRelease(), (v11 & 1) != 0))
    {
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_187();
      v13 = sub_1CA94C368();
      v35.receiver = v2;
      v35.super_class = v9;
      objc_msgSendSuper2(&v35, sel_setParameterState_forKey_, a1, v13);

      v14 = &v2[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
      swift_beginAccess();
      v15 = *(v14 + 1);
      *(v14 + 1) = MEMORY[0x1E69E7CC0];

      WFEntityUpdatingAction.createTableRow()(&v36);
      v39 = v36;
      v40 = v37;
      v41 = *v38;
      v16 = *&v38[16];
      if (*&v38[16])
      {
        v17 = *&v38[24];
        swift_beginAccess();
        v33[0] = v36;
        v33[1] = v37;
        v34[0] = *v38;
        *(v34 + 12) = *&v38[12];
        sub_1CA2DBDB8(v33, v32);
        sub_1CA69ADC8();
        v18 = *(*(v14 + 1) + 16);
        sub_1CA69AF74(v18);
        v19 = *(v14 + 1);
        *(v19 + 16) = v18 + 1;
        v20 = v19 + (v18 << 6);
        v21 = v40;
        *(v20 + 32) = v39;
        *(v20 + 48) = v21;
        *(v20 + 64) = v41;
        *(v20 + 80) = v16;
        *(v20 + 88) = v17;
        *(v14 + 1) = v19;
        swift_endAccess();
        v23 = *v14;
        v22 = *(v14 + 1);
        LOBYTE(v18) = v14[16];
        v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446590, &qword_1CA98B5B0));
        v25 = v24 + *((*MEMORY[0x1E69E7D40] & *v24) + 0x60);
        *v25 = v23;
        *(v25 + 1) = v22;
        v25[16] = v18;
        sub_1CA94C218();
        v31.receiver = v24;
        v31.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477C0, &unk_1CA98B5B8);
        v26 = objc_msgSendSuper2(&v31, sel_init);
        v27 = sub_1CA94C368();
        v30.receiver = v2;
        v30.super_class = v9;
        v12 = objc_msgSendSuper2(&v30, sel_setParameterState_forKey_, v26, v27);
        sub_1CA30F7DC(&v36, &qword_1EC445FA0, &unk_1CA98B5A0);
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_187();
    v28 = sub_1CA94C368();
    v43.receiver = v2;
    v43.super_class = type metadata accessor for WFAppSettingUpdaterAction();
    v12 = objc_msgSendSuper2(&v43, sel_setParameterState_forKey_, a1, v28);
  }

  return v12;
}

uint64_t sub_1CA565D3C(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    if (!a1)
    {
      v3 = *(v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier);
      v4 = *(v3 + 64);
      v5 = *(v3 + 32);
      OUTLINED_FUNCTION_5_5();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v11 = 0;
      while (v8)
      {
        v12 = v11;
LABEL_11:
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        if (([*(*(v3 + 56) + ((v12 << 9) | (8 * v13))) visibleForUse_] & 1) == 0)
        {
          v2 = 0;
LABEL_14:

          return v2;
        }
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {
          v2 = 1;
          goto LABEL_14;
        }

        v8 = *(v3 + 64 + 8 * v12);
        ++v11;
        if (v8)
        {
          v11 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    result = sub_1CA94D5F8();
    __break(1u);
  }

  return result;
}

void sub_1CA565F00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_72();
  v23 = *&v22[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier];
  v25 = *(v23 + 64);
  v24 = v23 + 64;
  v26 = *(*&v22[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier] + 32);
  OUTLINED_FUNCTION_5_5();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  v43 = v22;
  v44 = v32;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  while (v29)
  {
    v34 = v33;
LABEL_8:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = *(*(v44 + 56) + ((v34 << 9) | (8 * v35)));
    v37 = [v36 identifier];
    sub_1CA94C3A8();

    v38 = [v43 fullyQualifiedLinkActionIdentifier];
    v39 = [v38 bundleIdentifier];

    sub_1CA94C3A8();
    v40 = objc_allocWithZone(MEMORY[0x1E69AC860]);
    v41 = sub_1CA334F5C();
    v42 = [objc_opt_self() approvedForPublicDrawerToDisplayActionIdentifier_];

    if ((v42 & 1) == 0)
    {
LABEL_9:

      OUTLINED_FUNCTION_70_2();
      return;
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_9;
    }

    v29 = *(v24 + 8 * v34);
    ++v33;
    if (v29)
    {
      v33 = v34;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1CA5660B4()
{
  sub_1CA94C838();
  *(v0 + 16) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA566144, v2, v1);
}

uint64_t sub_1CA566144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CA566230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5662CC, v5, v4);
}

uint64_t sub_1CA5662CC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1CA43E7F4;

  return sub_1CA5660B4();
}

uint64_t sub_1CA5663E4()
{
  OUTLINED_FUNCTION_18_22();
  v0 = sub_1CA563C5C();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = [v0 value];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_25_14();
  sub_1CA94C398();

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1CA981310;
  *(result + 32) = v4;
  *(result + 40) = v5;
  return result;
}

uint64_t sub_1CA566578()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction_entityByEntityIdentifier);

  v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage___sortedLocalizedNames);

  v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage____localizedNameForEntityIdentifier);

  v4 = *(v0 + OBJC_IVAR____TtC11WorkflowKit25WFAppSettingUpdaterAction____lazy_storage___sortedParameterIdentifiers);
}

uint64_t sub_1CA566878(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v4 = a1;
  v5 = OUTLINED_FUNCTION_116();
  v6 = sub_1CA566664(v5);

  return v6;
}

void sub_1CA5669B4()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438();
  v0 = OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_18_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v4 = [qword_1EDB9F690 bundleURL];
  v5 = sub_1CA948BA8();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v9 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v10 = OUTLINED_FUNCTION_9_1();
  v11 = OUTLINED_FUNCTION_34_13(v10, sel_localize_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_36();
}

void sub_1CA566B88()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_187();
  sub_1CA94C438();
  v0 = OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_18_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v4 = [qword_1EDB9F690 bundleURL];
  v5 = sub_1CA948BA8();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v9 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v10 = OUTLINED_FUNCTION_9_1();
  v11 = OUTLINED_FUNCTION_34_13(v10, sel_localize_);

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_36();
}

id sub_1CA566CEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1CA566B88();
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1CA566DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, uint64_t (*a11)(uint64_t, uint64_t, void *, uint64_t, uint64_t, void *, uint64_t, void *, void *))
{
  v14 = sub_1CA94C3A8();
  v16 = v15;
  sub_1CA25B3D0(0, &unk_1EC441A38, 0x1E69AC800);
  v17 = sub_1CA94C1C8();
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  v18 = sub_1CA94C1C8();
  if (a8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a8 = sub_1CA94C1C8();
  }

  return a11(v14, v16, a4, v17, v18, a7, a8, a9, a10);
}

uint64_t sub_1CA566F58(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CA94C368();
  v6 = [a1 parameterStateForKey_];

  if (!v6)
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v7 = swift_dynamicCastObjCClass();
  if (!v7 || (v8 = [v7 value]) == 0 || (v9 = v8, OUTLINED_FUNCTION_25_14(), sub_1CA94C398(), v9, !v25))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(a2 + 8))(ObjectType, a2);
  v10 = sub_1CA323E2C(v24);

  if (!v10)
  {
LABEL_17:

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v11 = [v10 properties];
  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  v12 = sub_1CA94C658();

  if (!sub_1CA25B410())
  {

    goto LABEL_17;
  }

  sub_1CA275D70(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1CCAA22D0](0, v12);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 valueType];

  v16 = sub_1CA94C368();
  v17 = [v15 wf:v16 contentItemClassWithAppBundleIdentifier:?];

  if (!v17)
  {
    goto LABEL_17;
  }

  sub_1CA2E6D9C();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_1CA2E6D9C();
    v19 = v23;
  }

  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  *(v19 + 16) = v20 + 1;
  *(v19 + 8 * v20 + 32) = ObjCClassMetadata;
  return v19;
}

uint64_t sub_1CA567224(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v5;
}

uint64_t sub_1CA56728C(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(ObjectType, v6);

    v9 = a1;
    v20 = sub_1CA42AFA0(v8);
    sub_1CA563D58(&v20, v9);

    v10 = v20;
    v11 = *(v20 + 16);
    if (v11)
    {
      v20 = v4;
      sub_1CA94D508();
      v12 = (v10 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        sub_1CA94C218();
        v15 = sub_1CA94C368();
        v16 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

        v17 = WFVariableSubstitutableParameterStateUpcast(v16);

        sub_1CA94D4D8();
        v18 = *(v20 + 16);
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
        v12 += 2;
        --v11;
      }

      while (v11);

      return v20;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_1CA567444(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a3 + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_3;
  }

  v9 = Strong;
  v10 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 16))(ObjectType, v10);

  v13 = sub_1CA3118E4(v3, v4, v12);
  v15 = v14;

  if (!v15)
  {
LABEL_3:

    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  v18 = *(v7 + 8);
  v19 = swift_getObjectType();
  v20 = (*(v18 + 16))(v19, v18);

  v21 = sub_1CA3118E4(v5, v6, v20);
  v23 = v22;

  if (!v23)
  {
LABEL_6:

    v21 = 0;
    v23 = 0xE000000000000000;
  }

  if (v13 == v21 && v15 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1CA94D7F8();
  }

  return v25 & 1;
}

uint64_t sub_1CA5675E4()
{
  result = sub_1CA568E98(v0);
  if (result)
  {
    sub_1CA25B410();
    OUTLINED_FUNCTION_87();

    return v0 > 15;
  }

  return result;
}

uint64_t sub_1CA5676A4()
{
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  swift_getObjCClassFromMetadata();
  v1 = OUTLINED_FUNCTION_93();
  if (!WFVariableSubstitutableParameterStateDowncast(v1))
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 value]) == 0 || (v4 = v3, OUTLINED_FUNCTION_25_14(), sub_1CA94C398(), v4, !v16))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v0 + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v7 = Strong;
  v8 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);

  v11 = sub_1CA3118E4(v15, v16, v10);
  v13 = v12;

  swift_unknownObjectRelease();
  if (!v13)
  {
    return 0;
  }

  return v11;
}

id sub_1CA56781C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);
  v10 = v9;

  if (v10)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1CA5678AC(void *a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter____lazy_storage___options] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SettingPickerParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);

  return v3;
}

id sub_1CA567960(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1CA5679E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_1CA567A6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CA567B0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = sub_1CA94D778();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1CA94C6C8();
        *(v8 + 16) = v7;
      }

      v53[0] = (v8 + 32);
      v53[1] = v7;
      v44 = v4;
      sub_1CA567E84(v53, v54, a1, v6, v44);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v3 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  if (v3 >= 2)
  {
    v46 = v4;
    v9 = *a1;
    v10 = &v4[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
    v45 = v4;
    v11 = -1;
    v12 = 1;
    v51 = v10;
    v52 = v9;
    v47 = v3;
    do
    {
      v49 = v12;
      v50 = v11;
      v13 = &v52[16 * v12];
      v14 = *v13;
      v15 = *(v13 + 1);
      v48 = v9;
      while (1)
      {
        v17 = *v9;
        v16 = *(v9 + 1);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = *(v10 + 1);
          ObjectType = swift_getObjectType();
          v22 = *(v20 + 16);
          sub_1CA94C218();
          sub_1CA94C218();
          v23 = v22(ObjectType, v20);

          if (!*(v23 + 16))
          {
            goto LABEL_13;
          }

          v24 = sub_1CA271BF8();
          if (v25)
          {
            v26 = (*(v23 + 56) + 16 * v24);
            v27 = *v26;
            v28 = v26[1];
            sub_1CA94C218();
          }

          else
          {
LABEL_13:

            v27 = 0;
            v28 = 0xE000000000000000;
          }

          v10 = v51;
        }

        else
        {
          sub_1CA94C218();
          sub_1CA94C218();
          v27 = 0;
          v28 = 0xE000000000000000;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *(v10 + 1);
          v32 = swift_getObjectType();
          v33 = (*(v31 + 16))(v32, v31);

          if (*(v33 + 16) && (v34 = sub_1CA271BF8(), (v35 & 1) != 0))
          {
            v36 = (*(v33 + 56) + 16 * v34);
            v38 = *v36;
            v37 = v36[1];
            sub_1CA94C218();
          }

          else
          {
            v38 = 0;
            v37 = 0xE000000000000000;
          }
        }

        else
        {
          v38 = 0;
          v37 = 0xE000000000000000;
        }

        if (v27 == v38 && v28 == v37)
        {
          break;
        }

        v40 = sub_1CA94D7F8();

        if (v40)
        {
          if (!v52)
          {
            goto LABEL_40;
          }

          v41 = *(v9 + 2);
          v42 = *(v9 + 3);
          *(v9 + 1) = *v9;
          *v9 = v41;
          *(v9 + 1) = v42;
          v9 -= 16;
          if (!__CFADD__(v11++, 1))
          {
            continue;
          }
        }

        goto LABEL_33;
      }

LABEL_33:
      v12 = v49 + 1;
      v9 = v48 + 16;
      v11 = v50 - 1;
    }

    while (v49 + 1 != v47);

    v4 = v46;
  }
}

void sub_1CA567E84(char **a1, uint64_t a2, char **a3, uint64_t a4, char *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v142 = a5;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v172 = *a1;
    if (!*a1)
    {
      goto LABEL_177;
    }

    v173 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_135;
    }

    goto LABEL_171;
  }

  v6 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  v162 = a5;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v171 = v6;
  while (1)
  {
    v9 = v7++;
    v157 = v9;
    if (v7 < v5)
    {
      v10 = *a3;
      v11 = &(*a3)[16 * v7];
      v12 = v11[1];
      v178[0] = *v11;
      v178[1] = v12;
      v13 = v9;
      v14 = &v10[16 * v9];
      v15 = v14[1];
      v177[0] = *v14;
      v177[1] = v15;
      sub_1CA94C218();
      sub_1CA94C218();
      LODWORD(v173) = sub_1CA567444(v178, v177, v162);
      if (v168)
      {

LABEL_131:

        goto LABEL_145;
      }

      v160 = 16 * v13;
      v16 = v14 + 3;
      v17 = v13 + 2;
      v164 = v8;
      v172 = v5;
      while (1)
      {
        v18 = v17;
        if (v7 + 1 >= v5)
        {
          break;
        }

        v19 = v16[1];
        v20 = v16[2];
        v21 = *v16;
        v174 = *(v16 - 1);
        Strong = swift_unknownObjectWeakLoadStrong();
        v179 = v21;
        if (Strong)
        {
          v23 = Strong;
          v24 = *(v171 + 1);
          ObjectType = swift_getObjectType();
          v26 = *(v24 + 16);
          sub_1CA94C218();
          sub_1CA94C218();
          v27 = v26(ObjectType, v24);

          if (*(v27 + 16) && (v28 = sub_1CA271BF8(), (v29 & 1) != 0))
          {
            v30 = (*(v27 + 56) + 16 * v28);
            v31 = *v30;
            v32 = v30[1];
            sub_1CA94C218();
          }

          else
          {

            v31 = 0;
            v32 = 0xE000000000000000;
          }
        }

        else
        {
          sub_1CA94C218();
          sub_1CA94C218();
          v31 = 0;
          v32 = 0xE000000000000000;
        }

        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          v35 = *(v171 + 1);
          v36 = swift_getObjectType();
          v37 = (*(v35 + 16))(v36, v35);

          if (*(v37 + 16) && (v38 = sub_1CA271BF8(), (v39 & 1) != 0))
          {
            v40 = (*(v37 + 56) + 16 * v38);
            v42 = *v40;
            v41 = v40[1];
            sub_1CA94C218();
          }

          else
          {
            v42 = 0;
            v41 = 0xE000000000000000;
          }
        }

        else
        {
          v42 = 0;
          v41 = 0xE000000000000000;
        }

        if (v31 == v42 && v32 == v41)
        {
          v44 = 0;
        }

        else
        {
          v44 = sub_1CA94D7F8();
        }

        v5 = v172;

        v16 += 2;
        ++v7;
        v17 = v18 + 1;
        v8 = v164;
        if ((v173 ^ v44))
        {
          goto LABEL_29;
        }
      }

      v7 = v5;
LABEL_29:
      if (v173)
      {
        v9 = v157;
        v6 = v171;
        if (v7 < v157)
        {
          goto LABEL_170;
        }

        if (v157 < v7)
        {
          if (v5 >= v18)
          {
            v45 = v18;
          }

          else
          {
            v45 = v5;
          }

          v46 = 16 * v45;
          v47 = v7;
          v48 = v157;
          v49 = v160;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_175;
              }

              v51 = &v50[v49];
              v52 = &v50[v46];
              v53 = *v51;
              v54 = *(v51 + 1);
              *v51 = *(v52 - 1);
              *(v52 - 2) = v53;
              *(v52 - 1) = v54;
            }

            ++v48;
            v46 -= 16;
            v49 += 16;
          }

          while (v48 < v47);
        }
      }

      else
      {
        v6 = v171;
        v9 = v157;
      }
    }

    v55 = a3[1];
    if (v7 < v55)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_167;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_78:
    if (v7 < v9)
    {
      goto LABEL_166;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = *(v8 + 16);
      sub_1CA2E49C0();
      v8 = v140;
    }

    v92 = *(v8 + 16);
    v93 = v92 + 1;
    if (v92 >= *(v8 + 24) >> 1)
    {
      sub_1CA2E49C0();
      v8 = v141;
    }

    *(v8 + 16) = v93;
    v94 = v8 + 32;
    v95 = (v8 + 32 + 16 * v92);
    *v95 = v157;
    v95[1] = v7;
    v179 = *a1;
    if (!v179)
    {
      goto LABEL_176;
    }

    if (v92)
    {
      v170 = v7;
      v175 = v8 + 32;
      v166 = v8;
      while (1)
      {
        v96 = v93 - 1;
        v97 = (v94 + 16 * (v93 - 1));
        v98 = (v8 + 16 * v93);
        if (v93 >= 4)
        {
          break;
        }

        if (v93 == 3)
        {
          v99 = *(v8 + 32);
          v100 = *(v8 + 40);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_99:
          if (v102)
          {
            goto LABEL_153;
          }

          v114 = *v98;
          v113 = v98[1];
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_156;
          }

          v118 = v97[1];
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_159;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_161;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v93 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        if (v93 < 2)
        {
          goto LABEL_155;
        }

        v121 = *v98;
        v120 = v98[1];
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_114:
        if (v117)
        {
          goto LABEL_158;
        }

        v123 = *v97;
        v122 = v97[1];
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_160;
        }

        if (v124 < v116)
        {
          goto LABEL_128;
        }

LABEL_121:
        if (v96 - 1 >= v93)
        {
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v128 = *a3;
        if (!*a3)
        {
          goto LABEL_173;
        }

        v129 = (v94 + 16 * (v96 - 1));
        v130 = *v129;
        v131 = v96;
        v132 = v94 + 16 * v96;
        v133 = *(v132 + 8);
        v134 = &v128[16 * *v129];
        v135 = &v128[16 * *v132];
        v136 = &v128[16 * v133];
        v137 = v162;
        sub_1CA568944(v134, v135, v136, v179, v137);
        if (v168)
        {

          goto LABEL_131;
        }

        v8 = v166;
        if (v133 < v130)
        {
          goto LABEL_148;
        }

        v138 = *(v166 + 16);
        if (v131 > v138)
        {
          goto LABEL_149;
        }

        *v129 = v130;
        v129[1] = v133;
        if (v131 >= v138)
        {
          goto LABEL_150;
        }

        v93 = v138 - 1;
        sub_1CA627628((v132 + 16), v138 - 1 - v131, v132);
        *(v166 + 16) = v138 - 1;
        v7 = v170;
        v94 = v175;
        if (v138 <= 2)
        {
          goto LABEL_128;
        }
      }

      v103 = v94 + 16 * v93;
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_151;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_152;
      }

      v110 = v98[1];
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_154;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_157;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = v97[1];
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_165;
        }

        if (v101 < v127)
        {
          v96 = v93 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_99;
    }

LABEL_128:
    v5 = a3[1];
    v6 = v171;
    if (v7 >= v5)
    {
      goto LABEL_133;
    }
  }

  v56 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_168;
  }

  if (v56 >= v55)
  {
    v56 = a3[1];
  }

  if (v56 < v9)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    v8 = sub_1CA627610(v8);
LABEL_135:
    v143 = (v8 + 16);
    v144 = *(v8 + 16);
    for (i = v8; ; v8 = i)
    {
      if (v144 < 2)
      {

        return;
      }

      v145 = *a3;
      if (!*a3)
      {
        goto LABEL_174;
      }

      v146 = (v8 + 16 * v144);
      v147 = *v146;
      v148 = v143;
      v149 = &v143[2 * v144];
      v150 = *v149;
      v8 = *(v149 + 1);
      v179 = &v145[16 * *v146];
      v176 = &v145[16 * v150];
      v151 = &v145[16 * v8];
      v152 = v173;
      sub_1CA568944(v179, v176, v151, v172, v152);
      if (v168)
      {
        break;
      }

      if (v8 < v147)
      {
        goto LABEL_162;
      }

      if (v144 - 2 >= *v148)
      {
        goto LABEL_163;
      }

      v143 = v148;
      *v146 = v147;
      v146[1] = v8;
      v153 = *v148 - v144;
      if (*v148 < v144)
      {
        goto LABEL_164;
      }

      v144 = *v148 - 1;
      sub_1CA627628(v149 + 16, v153, v149);
      *v148 = v144;
    }

LABEL_145:
    return;
  }

  if (v7 == v56)
  {
    goto LABEL_78;
  }

  v165 = v8;
  v172 = *a3;
  v57 = &(*a3)[16 * v7];
  v58 = v9 - v7;
  v158 = v56;
LABEL_51:
  v169 = v7;
  v59 = v57;
  v60 = &v172[16 * v7];
  v61 = *v60;
  v62 = *(v60 + 1);
  v159 = v58;
  v161 = v59;
  v63 = v59;
  while (1)
  {
    v64 = *(v63 - 2);
    v65 = *(v63 - 1);
    v66 = swift_unknownObjectWeakLoadStrong();
    v179 = v65;
    if (v66)
    {
      v67 = v66;
      v173 = v64;
      v68 = *(v6 + 1);
      v69 = swift_getObjectType();
      v70 = *(v68 + 16);
      sub_1CA94C218();
      sub_1CA94C218();
      v71 = v70(v69, v68);

      if (*(v71 + 16) && (v72 = sub_1CA271BF8(), (v73 & 1) != 0))
      {
        v74 = (*(v71 + 56) + 16 * v72);
        v76 = *v74;
        v75 = v74[1];
        sub_1CA94C218();
      }

      else
      {

        v76 = 0;
        v75 = 0xE000000000000000;
      }

      v6 = v171;
    }

    else
    {
      sub_1CA94C218();
      sub_1CA94C218();
      v76 = 0;
      v75 = 0xE000000000000000;
    }

    v77 = swift_unknownObjectWeakLoadStrong();
    if (v77)
    {
      v78 = v77;
      v79 = *(v6 + 1);
      v80 = swift_getObjectType();
      v81 = (*(v79 + 16))(v80, v79);

      if (*(v81 + 16) && (v82 = sub_1CA271BF8(), (v83 & 1) != 0))
      {
        v84 = (*(v81 + 56) + 16 * v82);
        v86 = *v84;
        v85 = v84[1];
        sub_1CA94C218();
      }

      else
      {
        v86 = 0;
        v85 = 0xE000000000000000;
      }
    }

    else
    {
      v86 = 0;
      v85 = 0xE000000000000000;
    }

    if (v76 == v86 && v75 == v85)
    {

LABEL_76:
      v7 = v169 + 1;
      v57 = (v161 + 2);
      v58 = v159 - 1;
      if (v169 + 1 == v158)
      {
        v7 = v158;
        v8 = v165;
        v9 = v157;
        goto LABEL_78;
      }

      goto LABEL_51;
    }

    v88 = sub_1CA94D7F8();

    if ((v88 & 1) == 0)
    {
      goto LABEL_76;
    }

    if (!v172)
    {
      break;
    }

    v89 = *v63;
    v90 = v63[1];
    *v63 = *(v63 - 1);
    *(v63 - 1) = v90;
    *(v63 - 2) = v89;
    v63 -= 2;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_173:

  __break(1u);
LABEL_174:

  __break(1u);
LABEL_175:

  __break(1u);
LABEL_176:

  __break(1u);
LABEL_177:

  __break(1u);
}

uint64_t sub_1CA568944(char *a1, char *a2, char *a3, char *a4, char *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v10 < v11)
  {
    sub_1CA26E4B4(a1, (a2 - a1) / 16, a4);
    v12 = &v6[16 * v10];
    v13 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
    v82 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
    v85 = v12;
    v87 = v7;
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_66;
      }

      v89 = v9;
      v15 = *v8;
      v16 = *(v8 + 1);
      v17 = *(v6 + 1);
      v80 = *v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = *(v13 + 1);
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 16);
        sub_1CA94C218();
        sub_1CA94C218();
        v23 = v22(ObjectType, v20);

        if (*(v23 + 16) && (v24 = sub_1CA271BF8(), (v25 & 1) != 0))
        {
          v26 = (*(v23 + 56) + 16 * v24);
          v28 = *v26;
          v27 = v26[1];
          sub_1CA94C218();
        }

        else
        {

          v28 = 0;
          v27 = 0xE000000000000000;
        }

        v13 = v82;
      }

      else
      {
        sub_1CA94C218();
        sub_1CA94C218();
        v28 = 0;
        v27 = 0xE000000000000000;
      }

      v29 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        v30 = v29;
        v31 = *(v13 + 1);
        v32 = swift_getObjectType();
        v33 = (*(v31 + 16))(v32, v31);

        if (*(v33 + 16) && (v34 = sub_1CA271BF8(), (v35 & 1) != 0))
        {
          v36 = (*(v33 + 56) + 16 * v34);
          v38 = *v36;
          v37 = v36[1];
          sub_1CA94C218();
        }

        else
        {
          v38 = 0;
          v37 = 0xE000000000000000;
        }
      }

      else
      {
        v38 = 0;
        v37 = 0xE000000000000000;
      }

      v39 = v28 == v38 && v27 == v37;
      if (v39)
      {

        v13 = v82;
      }

      else
      {
        v40 = sub_1CA94D7F8();

        v13 = v82;
        if (v40)
        {
          v41 = v8;
          v42 = v89;
          v43 = v89 == v8;
          v8 += 16;
          goto LABEL_29;
        }
      }

      v41 = v6;
      v42 = v89;
      v43 = v89 == v6;
      v6 += 16;
LABEL_29:
      v12 = v85;
      v7 = v87;
      if (!v43)
      {
        *v42 = *v41;
      }

      v9 = v42 + 16;
    }
  }

  sub_1CA26E4B4(a2, (a3 - a2) / 16, a4);
  v12 = &v6[16 * v11];
  v44 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  v83 = &a5[OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource];
  v79 = v6;
  v90 = v9;
LABEL_33:
  v45 = v7 - 16;
  v84 = v8;
  v77 = v8 - 16;
  while (v12 > v6 && v8 > v9)
  {
    v86 = v12;
    v88 = v45;
    v48 = *(v12 - 2);
    v47 = *(v12 - 1);
    v49 = v12 - 16;
    v50 = *(v8 - 1);
    v81 = *(v8 - 2);
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = *(v44 + 1);
      v54 = swift_getObjectType();
      v55 = *(v53 + 16);
      sub_1CA94C218();
      sub_1CA94C218();
      v56 = v55(v54, v53);

      if (*(v56 + 16) && (v57 = sub_1CA271BF8(), (v58 & 1) != 0))
      {
        v59 = (*(v56 + 56) + 16 * v57);
        v61 = *v59;
        v60 = v59[1];
        sub_1CA94C218();
      }

      else
      {

        v61 = 0;
        v60 = 0xE000000000000000;
      }

      v44 = v83;
      v8 = v84;
    }

    else
    {
      sub_1CA94C218();
      sub_1CA94C218();
      v61 = 0;
      v60 = 0xE000000000000000;
    }

    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = v62;
      v64 = *(v44 + 1);
      v65 = swift_getObjectType();
      v66 = (*(v64 + 16))(v65, v64);

      if (*(v66 + 16) && (v67 = sub_1CA271BF8(), (v68 & 1) != 0))
      {
        v69 = (*(v66 + 56) + 16 * v67);
        v71 = *v69;
        v70 = v69[1];
        sub_1CA94C218();
      }

      else
      {
        v71 = 0;
        v70 = 0xE000000000000000;
      }
    }

    else
    {
      v71 = 0;
      v70 = 0xE000000000000000;
    }

    if (v61 == v71 && v60 == v70)
    {
      v73 = 0;
    }

    else
    {
      v73 = sub_1CA94D7F8();
    }

    v9 = v90;
    v44 = v83;

    if (v73)
    {
      v12 = v86;
      v7 = v88;
      v39 = v88 + 16 == v8;
      v8 = v77;
      v6 = v79;
      if (!v39)
      {
        *v88 = *v77;
        v8 = v77;
      }

      goto LABEL_33;
    }

    if (v86 != v88 + 16)
    {
      *v88 = *v49;
    }

    v45 = v88 - 16;
    v12 = v49;
    v6 = v79;
  }

LABEL_66:
  v74 = (v12 - v6) / 16;
  if (v8 != v6 || v8 >= &v6[16 * v74])
  {
    memmove(v8, v6, 16 * v74);
  }

  return 1;
}

uint64_t sub_1CA568E98(void *a1)
{
  v1 = [a1 possibleStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA568F04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA3601B4;

  return sub_1CA566230(v2, v3, v4);
}

uint64_t WFTriggerCategory.triggers()()
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(*v0)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36();
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFArriveLocationTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFLeaveLocationTrigger) (v0 + 2936)];
      v2 = WFPredictedLocationTransitionTrigger;
      goto LABEL_19;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA981360;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFEmailTrigger));
      v3 = WFMessageTrigger;
      goto LABEL_16;
    case 3:
    case 0xA:
      return v1;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA981560;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFAirplaneModeTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFWifiTrigger) (v0 + 2936)];
      *(v1 + 48) = [objc_allocWithZone(WFBluetoothTrigger) (v0 + 2936)];
      *(v1 + 56) = [objc_allocWithZone(WFNFCTrigger) (v0 + 2936)];
      *(v1 + 64) = [objc_allocWithZone(WFCarPlayConnectionTrigger) (v0 + 2936)];
      return v1;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA981360;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFExternalDisplayTrigger));
      v3 = WFStageManagerTrigger;
LABEL_16:
      *(v1 + 40) = [objc_allocWithZone(v3) (v0 + 2936)];
      return v1;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36();
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFAppInFocusTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFWalletTransactionTrigger) (v0 + 2936)];
      v2 = WFWorkoutTrigger;
      goto LABEL_19;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36();
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFBatteryLevelTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFPlugInTrigger) (v0 + 2936)];
      v2 = WFLowPowerModeTrigger;
      goto LABEL_19;
    case 8:
      v4 = [objc_opt_self() availableModesForAutomationsDisplay];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4465B0, &qword_1CA98B6C0);
      v5 = sub_1CA94C658();

      v6 = sub_1CA25B410();
      if (!v6)
      {

        return v1;
      }

      v7 = v6;
      v12 = v1;
      result = sub_1CA94D508();
      if ((v7 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1CCAA22D0](v9, v5);
          }

          else
          {
            v10 = *(v5 + 8 * v9 + 32);
            swift_unknownObjectRetain();
          }

          ++v9;
          [objc_allocWithZone(WFUserFocusActivityTrigger) initWithActivity_];
          swift_unknownObjectRelease();
          sub_1CA94D4D8();
          v11 = *(v12 + 16);
          sub_1CA94D518();
          sub_1CA94D528();
          sub_1CA94D4E8();
        }

        while (v7 != v9);

        return v12;
      }

      __break(1u);
      return result;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1CA9813B0;
      *(v1 + 32) = [objc_allocWithZone(WFSoundRecognitionTrigger) init];
      return v1;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v1 = OUTLINED_FUNCTION_5_36();
      *(v1 + 16) = xmmword_1CA981470;
      *(v1 + 32) = OUTLINED_FUNCTION_3_43(objc_allocWithZone(WFTimeOfDayTrigger));
      *(v1 + 40) = [objc_allocWithZone(WFAlarmTrigger) (v0 + 2936)];
      v2 = WFSleepTrigger;
LABEL_19:
      *(v1 + 48) = [objc_allocWithZone(v2) (v0 + 2936)];
      return v1;
  }
}

uint64_t WFTriggerCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA569540()
{
  v2 = *v0;
  sub_1CA94D918();
  WFTriggerCategory.hash(into:)();
  return sub_1CA94D968();
}

id sub_1CA569598()
{
  result = [objc_allocWithZone(type metadata accessor for WFTriggerDirectory()) init];
  qword_1EC4465A0 = result;
  return result;
}

id WFTriggerDirectory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static WFTriggerDirectory.shared.getter()
{
  if (qword_1EC442D98 != -1)
  {
    OUTLINED_FUNCTION_0_56();
  }

  v1 = qword_1EC4465A0;

  return v1;
}

unint64_t sub_1CA569648@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
  sub_1CA4403C0();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1CA94C1E8();
  v3 = 0;
  v4 = v1;
  while (1)
  {
    v5 = byte_1F4A06800[v3 + 32];
    v6 = WFTriggerCategory.triggers()();
    if (v2[2] && (sub_1CA321184(v5), (v7 & 1) != 0))
    {
      for (i = 0; *(v4 + 16) != i; ++i)
      {
        if (*(v4 + i + 32) == v5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA42B334(v1);
            v1 = v32;
          }

          if (i < *(v1 + 16))
          {
            v24 = v1 + 8 * i;
            v25 = *(v24 + 32);
            *(v24 + 32) = v6;
            sub_1CA94C218();

            break;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v4 + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA2E6E80();
        v4 = v27;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_64(v9);
        sub_1CA2E6E80();
        v4 = v28;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + v10 + 32) = v5;
      sub_1CA94C218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v1 + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA2E6DC4();
        v1 = v30;
      }

      v12 = *(v1 + 16);
      v11 = *(v1 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_64(v11);
        sub_1CA2E6DC4();
        v1 = v31;
      }

      *(v1 + 16) = v12 + 1;
      *(v1 + 8 * v12 + 32) = v6;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1CA321184(v5);
    if (__OFADD__(v2[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4457C0, &qword_1CA983440);
    result = sub_1CA94D588();
    if (result)
    {
      result = sub_1CA321184(v5);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_34;
      }

      v15 = result;
    }

    if (v16)
    {
      v19 = v2[7];
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v6;
    }

    else
    {
      v2[(v15 >> 6) + 8] |= 1 << v15;
      *(v2[6] + v15) = v5;
      *(v2[7] + 8 * v15) = v6;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_32;
      }

      v2[2] = v23;
    }

    if (++v3 == 11)
    {
      *a1 = v1;
      a1[1] = v4;
      a1[2] = v2;
      return result;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void sub_1CA569954(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (a1)
  {
    if (!sub_1CA311DDC(a2, v2[2]))
    {
      sub_1CA69AEE8();
      v21 = *(v2[1] + 16);
      sub_1CA69B128(v21);
      v22 = v2[1];
      *(v22 + 16) = v21 + 1;
      *(v22 + v21 + 32) = v4;
      v2[1] = v22;
      sub_1CA94C218();
      sub_1CA69AED0();
      v23 = *(*v2 + 16);
      sub_1CA69B110(v23);
      v9 = *v2;
      *(v9 + 16) = v23 + 1;
      *(v9 + 8 * v23 + 32) = a1;
      goto LABEL_17;
    }

    v6 = sub_1CA58A6D0(v4, v2[1]);
    if (v7)
    {
LABEL_18:
      v24 = v3[2];
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v3[2];
      sub_1CA322D2C();
      v3[2] = v27;
      return;
    }

    v8 = v6;
    v9 = *v2;
    v10 = *v3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1CA42B334(v9);
      v9 = v25;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (v8 < *(v9 + 16))
        {
          v11 = v9 + 8 * v8;
          v12 = *(v11 + 32);
          *(v11 + 32) = a1;
          sub_1CA94C218();

LABEL_17:
          *v3 = v9;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    sub_1CA42B34C(v9);
    v9 = v26;
    goto LABEL_12;
  }

  v13 = v2[2];
  if (!*(v13 + 16))
  {
    return;
  }

  v14 = sub_1CA321184(a2);
  if ((v15 & 1) == 0)
  {
    return;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  sub_1CA94C218();
  sub_1CA43F55C(v4);

  v9 = v3[1];
  v17 = sub_1CA58A6D0(v4, v9);
  if (v18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v4 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v19 = *(v9 + 16);
  if (v4 >= v19)
  {
    __break(1u);
    goto LABEL_25;
  }

  v20 = v19 - 1;
  sub_1CA44043C((v9 + v4 + 33), v19 - 1 - v4, (v9 + v4 + 32));
  *(v9 + 16) = v20;
  v3[1] = v9;
  sub_1CA6A6DD0(v4);
}

void sub_1CA569B98(uint64_t a1@<X8>)
{
  *&v12 = MEMORY[0x1E69E7CC0];
  *(&v12 + 1) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
  sub_1CA4403C0();
  v1 = 0;
  v13 = sub_1CA94C1E8();
LABEL_2:
  v2 = byte_1F4A06800[v1++ + 32];
  v10 = v2;
  v3 = WFTriggerCategory.triggers()();
  v11 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA25B410();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      if (sub_1CA25B410())
      {
        sub_1CA569954(v11, v10);
      }

      else
      {
      }

      if (v1 == 11)
      {
        *a1 = v12;
        *(a1 + 16) = v13;
        return;
      }

      goto LABEL_2;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([swift_getObjCClassFromObject() isSupportedOnThisDevice])
    {
      sub_1CA94D4D8();
      v8 = *(v11 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

id WFTriggerDirectory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTriggerDirectory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WFTriggerDirectory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTriggerDirectory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA569DF4()
{
  if (qword_1EC442D98 != -1)
  {
LABEL_18:
    OUTLINED_FUNCTION_0_56();
  }

  sub_1CA569B98(&v14);
  v0 = 0;
  v1 = v15;
  v2 = v16;
  v3 = *(v15 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v0)
  {
    if (v0 >= *(v1 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_15;
    }

    v5 = sub_1CA321184(*(v1 + v0 + 32));
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v0 >= *(v1 + 16))
    {
      goto LABEL_17;
    }

    v7 = *(*(v2 + 56) + 8 * v5);
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v4 + 16);
      OUTLINED_FUNCTION_21();
      sub_1CA2E6DC4();
      v4 = v11;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_64(v8);
      sub_1CA2E6DC4();
      v4 = v12;
    }

    *(v4 + 16) = v9 + 1;
    *(v4 + 8 * v9 + 32) = v7;
    ++v0;
  }

  return v4;
}

uint64_t sub_1CA569F84()
{
  if (qword_1EC442D98 != -1)
  {
LABEL_51:
    OUTLINED_FUNCTION_0_56();
  }

  sub_1CA569B98(&v47);
  v0 = 0;
  v1 = v48;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = v49;
  v41 = v48 + 32;
  v42 = *(v48 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v39 = v48;
  v40 = v49;
  while (v0 != v42)
  {
    if (v0 >= *(v1 + 16))
    {
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
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_43;
    }

    v5 = sub_1CA321184(*(v41 + v0));
    if ((v6 & 1) == 0)
    {
      goto LABEL_44;
    }

    if (v0 >= *(v1 + 16))
    {
      goto LABEL_45;
    }

    v7 = *(*(v3 + 56) + 8 * v5);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v20 = *(*(v3 + 56) + 8 * v5);
      }

      v8 = sub_1CA94D328();
      if (v8)
      {
LABEL_10:
        sub_1CA94C218();
        v9 = OUTLINED_FUNCTION_4_44();
        sub_1CA2B9090(v9, v10, v11);
        if (v8 < 0)
        {
          goto LABEL_48;
        }

        v43 = v4;
        v44 = v0;
        v12 = 0;
        v13 = v2;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1CCAA22D0](v12, v7);
            ObjectType = swift_getObjectType();
            swift_unknownObjectRelease();
          }

          else
          {
            v15 = *(v7 + 8 * v12 + 32);
            ObjectType = swift_getObjectType();
          }

          v17 = v2[2];
          v16 = v2[3];
          v18 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            v19 = OUTLINED_FUNCTION_64(v16);
            sub_1CA2B9090(v19, v17 + 1, 1);
          }

          ++v12;
          v2[2] = v18;
          v2[v17 + 4] = ObjectType;
        }

        while (v8 != v12);
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v18 = v2[2];
    sub_1CA94C218();
    if (!v18)
    {
      v29 = v1;

      v24 = v2;
      goto LABEL_29;
    }

    v43 = v4;
    v44 = v0;
    v13 = v2;
LABEL_24:
    v21 = OUTLINED_FUNCTION_4_44();
    sub_1CA2B8D64(v21, v22, v23);
    v24 = v2;
    v25 = 4;
    do
    {
      v45 = v13[v25];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443900, &qword_1CA9819F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
      swift_dynamicCast();
      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v28 = OUTLINED_FUNCTION_64(v26);
        sub_1CA2B8D64(v28, v27 + 1, 1);
      }

      v24[2] = v27 + 1;
      v24[v27 + 4] = v46;
      ++v25;
      --v18;
    }

    while (v18);

    v29 = v39;
    v4 = v43;
    v0 = v44;
    v2 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v30 = v24[2];
    v31 = *(v4 + 16);
    if (__OFADD__(v31, v30))
    {
      goto LABEL_46;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v32 = *(v4 + 24) >> 1, v32 < v31 + v30))
    {
      sub_1CA2E6D9C();
      v4 = v33;
      v32 = *(v33 + 24) >> 1;
    }

    if (v24[2])
    {
      v34 = *(v4 + 16);
      if (v32 - v34 < v30)
      {
        goto LABEL_49;
      }

      memcpy((v4 + 8 * v34 + 32), v24 + 4, 8 * v30);

      v1 = v29;
      v3 = v40;
      if (v30)
      {
        v35 = *(v4 + 16);
        v36 = __OFADD__(v35, v30);
        v37 = v35 + v30;
        if (v36)
        {
          goto LABEL_50;
        }

        *(v4 + 16) = v37;
      }
    }

    else
    {

      v1 = v29;
      v3 = v40;
      if (v30)
      {
        goto LABEL_47;
      }
    }

    ++v0;
  }

  return v4;
}

id sub_1CA56A378(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v7 = sub_1CA94C648();

  return v7;
}

WFTriggerDirectoryBridge __swiftcall WFTriggerDirectoryBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1CA56A4A4()
{
  result = qword_1EC4465C0;
  if (!qword_1EC4465C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4465C0);
  }

  return result;
}

unint64_t sub_1CA56A4FC()
{
  result = qword_1EC4465C8;
  if (!qword_1EC4465C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4465D0, &qword_1CA98B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4465C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFTriggerCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFTriggerCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t type metadata accessor for WFTriggerDirectoryBridge()
{
  result = qword_1EC4465D8;
  if (!qword_1EC4465D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4465D8);
  }

  return result;
}

id sub_1CA56A7BC()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9CDB50;
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
  v108 = v12;
  v111 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v99 - v111;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v106 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v109 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v110 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v99 - v110;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v107 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v104 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v102 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v99 - v111;
  sub_1CA948D98();
  v33 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v99 - v110;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v102, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v107;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v104;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v99 - v111;
  sub_1CA948D98();
  v48 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v99 - v110;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v107;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v104 = swift_allocObject();
  *(v104 + 1) = xmmword_1CA9813B0;
  v103 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001ELL;
  *(v51 + 48) = 0x80000001CA9B3400;
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"Description";
  v52 = @"Parameters";
  v53 = @"Class";
  v54 = @"Description";
  v55 = sub_1CA94C438();
  v100 = v56;
  v101 = v55;
  v57 = sub_1CA94C438();
  v99 = v58;
  v102 = &v99;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v99 - v111;
  sub_1CA948D98();
  v60 = v106;
  v61 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v99 - v110;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 80) = sub_1CA2F9F14(v101, v100, v57, v99, 0, 0, v59, v62);
  *(v51 + 104) = v107;
  *(v51 + 112) = @"Key";
  *(v51 + 120) = 0x7473694C4657;
  *(v51 + 128) = 0xE600000000000000;
  *(v51 + 144) = MEMORY[0x1E69E6158];
  *(v51 + 152) = @"Label";
  v64 = @"Key";
  v65 = @"Label";
  v66 = sub_1CA94C438();
  v100 = v67;
  v101 = v66;
  v68 = sub_1CA94C438();
  v70 = v69;
  v102 = &v99;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v99 - v111;
  sub_1CA948D98();
  v72 = [v60 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v99 - v110;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v75 = sub_1CA2F9F14(v101, v100, v68, v70, 0, 0, v71, v73);
  *(v51 + 184) = v107;
  *(v51 + 160) = v75;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v76 = sub_1CA2F864C();
  v77 = v104;
  v104[4] = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v77;
  *(inited + 304) = v78;
  *(inited + 312) = @"ParameterSummary";
  v79 = @"ParameterSummary";
  v80 = sub_1CA94C438();
  v82 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  v107 = &v99;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v99 - v111;
  sub_1CA948D98();
  v87 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v99 - v110;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  v91 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v92 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v91;
  *(inited + 344) = v92;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1CA97EDF0;
  *(v93 + 56) = MEMORY[0x1E69E6158];
  *(v93 + 32) = 0xD000000000000018;
  *(v93 + 40) = 0x80000001CA993D70;
  v112 = 3;
  v113 = 1;
  v94 = type metadata accessor for WFDeviceIdiomResource();
  v95 = objc_allocWithZone(v94);
  v96 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v112);
  *(v93 + 88) = v94;
  *(v93 + 64) = v97;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v93;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56B418()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
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
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v12;
  v13 = &v115 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v124 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v115 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v115 - v125;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v115 - v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v120;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v120 = v38;
  *(inited + 200) = &unk_1F4A068B0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v116 = v44;
  v117 = v43;
  v45 = sub_1CA94C438();
  v47 = v46;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v115 - v125;
  sub_1CA948D98();
  v49 = v123;
  v50 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v122;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v117, v116, v45, v47, 0, 0, v48, &v115 - v51);
  v53 = v121;
  *(inited + 304) = v121;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v116 = v57;
  v117 = v56;
  v58 = sub_1CA94C438();
  v115 = v59;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v115 - v125;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v117, v116, v58, v115, 0, 0, v60, &v115 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v120;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F4A068E0;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438();
  v115 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v116 = &v115;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v115 - v125;
  sub_1CA948D98();
  v79 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v115 - v122;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v115, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v121;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438();
  v115 = v84;
  v116 = v83;
  v85 = v84;
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_1CA94D408();

  v131 = v83;
  v132 = v85;
  v129 = 10;
  v130 = 0xE100000000000000;
  v127 = 32;
  v128 = 0xE100000000000000;
  sub_1CA27BAF0();
  v131 = sub_1CA94D1B8();
  v132 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v131;
  v89 = v132;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v115 - v125;
  sub_1CA948D98();
  v91 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v115 - v122;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v116, v115, 0, 0, v90, v92);
  *(v66 + 224) = v121;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v118;
  v118[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v96;
  *(inited + 384) = v97;
  *(inited + 392) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v121 = &v115;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v115 - v125;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v115 - v122;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v111 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v110;
  *(inited + 424) = v111;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v120;
  *(inited + 440) = &unk_1F4A06910;
  v112 = @"RequiredResources";
  v113 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v113;
  *(inited + 480) = 0x7473727542;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56C2F0()
{
  v82 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B55E0;
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
  v87 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = v12;
  v13 = &v76 - v87;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v86 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v84 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v76 - v85;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v83 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 144) = v81;
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v80 = v23;
  *(inited + 160) = &unk_1F4A06980;
  *(inited + 184) = v23;
  *(inited + 192) = @"Description";
  v79 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v77 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v78 = &v76;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v76 - v87;
  sub_1CA948D98();
  v33 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v76 - v85;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v77, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v83;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v79;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x69662E656E6F6870;
  *(inited + 288) = 0xEA00000000006C6CLL;
  *(inited + 304) = v38;
  *(inited + 312) = @"InputPassthrough";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  *(inited + 344) = v39;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v39;
  *(inited + 392) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"InputPassthrough";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v76 - v87;
  sub_1CA948D98();
  v52 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v76 - v85;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 424) = v83;
  *(inited + 432) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA9813C0;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  *(v55 + 48) = 1;
  *(v55 + 72) = MEMORY[0x1E69E6370];
  *(v55 + 80) = 0x614E74757074754FLL;
  *(v55 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v78 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v79 = &v76;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v76 - v87;
  sub_1CA948D98();
  v63 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v76 - v85;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v57, v78, v59, v61, 0, 0, v62, v64);
  v67 = v80;
  *(v55 + 96) = v66;
  *(v55 + 120) = v83;
  *(v55 + 128) = 0x7365707954;
  *(v55 + 168) = v67;
  *(v55 + 136) = 0xE500000000000000;
  *(v55 + 144) = &unk_1F4A069B0;
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 440) = v68;
  *(inited + 464) = v69;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F4A069E0;
  *(inited + 504) = v67;
  *(inited + 512) = @"SuggestedAsInitialAction";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 0;
  *(inited + 552) = @"UserInterfaceClasses";
  v70 = @"RequiredResources";
  v71 = @"SuggestedAsInitialAction";
  v72 = @"UserInterfaceClasses";
  v73 = sub_1CA94C1E8();
  *(inited + 584) = v81;
  *(inited + 560) = v73;
  *(inited + 592) = @"UserInterfaces";
  *(inited + 624) = v67;
  *(inited + 600) = &unk_1F4A06A90;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v74 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56CCF0()
{
  v223 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CDEE0;
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
  v238 = v12;
  v236 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v217 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v234 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v237 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v239 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v217 - v239;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v235 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v232 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v231 = &v217;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v217 - v236;
  sub_1CA948D98();
  v34 = [v234 bundleURL];
  v233 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v217 - v239;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v235;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v232;
  v40 = sub_1CA6B3784();
  v41 = v233;
  v233[20] = v40;
  v41[23] = v39;
  v41[24] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 0;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v232 = &v217;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v217 - v236;
  sub_1CA948D98();
  v52 = v234;
  v53 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v217 - v239;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v233;
  v233[30] = v56;
  v58 = v235;
  v57[33] = v235;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v231 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v232 = &v217;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v217 - v236;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v217 - v239;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v231, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v222;
  *(v59 + 192) = &unk_1F4A06B10;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v233;
  v233[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1CA981560;
  v228 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981380;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  strcpy((v74 + 80), "WFSearchTerm");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v225 = v78;
  v224 = v79;
  v226 = v80;
  v81 = @"Parameters";
  v231 = sub_1CA94C438();
  *&v227 = v82;
  v83 = sub_1CA94C438();
  v221 = v84;
  v232 = &v217;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v236;
  sub_1CA948D98();
  v86 = v234;
  v87 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v217 - v239;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v231, v227, v83, v221, 0, 0, &v217 - v85, v88);
  v90 = v235;
  *(v74 + 144) = v235;
  *(v74 + 152) = @"Placeholder";
  v91 = @"Placeholder";
  v231 = sub_1CA94C438();
  *&v227 = v92;
  v93 = sub_1CA94C438();
  v221 = v94;
  v232 = &v217;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v217 - v85;
  sub_1CA948D98();
  v96 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v239;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v231, v227, v93, v221, 0, 0, v95, &v217 - v97);
  *(v74 + 184) = v90;
  *(v74 + 192) = @"Prompt";
  v99 = @"Prompt";
  v231 = sub_1CA94C438();
  *&v227 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v232 = &v217;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v217 - v236;
  sub_1CA948D98();
  v105 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 200) = sub_1CA2F9F14(v231, v227, v101, v103, 0, 0, v104, &v217 - v97);
  *(v74 + 224) = v235;
  *(v74 + 232) = @"TextAlignment";
  v107 = MEMORY[0x1E69E6158];
  *(v74 + 264) = MEMORY[0x1E69E6158];
  *(v74 + 240) = 0x7468676952;
  *(v74 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v232 = v108;
  v231 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v109 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v229 + 32) = sub_1CA2F864C();
  v110 = swift_allocObject();
  v227 = xmmword_1CA9813C0;
  *(v110 + 16) = xmmword_1CA9813C0;
  v220 = 0xD00000000000001DLL;
  v221 = 0x80000001CA99FB10;
  v112 = v224;
  v111 = v225;
  *(v110 + 32) = v225;
  *(v110 + 40) = 0xD00000000000001DLL;
  *(v110 + 48) = 0x80000001CA99FB10;
  *(v110 + 64) = v107;
  *(v110 + 72) = v112;
  *(v110 + 80) = 0x6269727474414657;
  *(v110 + 88) = 0xEB00000000657475;
  v113 = v226;
  *(v110 + 104) = v107;
  *(v110 + 112) = v113;
  v219 = v111;
  v218 = v112;
  v225 = v113;
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  v226 = &v217;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v217 - v236;
  sub_1CA948D98();
  v121 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v217 - v239;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  *(v110 + 144) = v235;
  *(v110 + 120) = v124;
  sub_1CA94C1E8();
  *(v229 + 40) = sub_1CA2F864C();
  v125 = swift_allocObject();
  *(v125 + 16) = v227;
  v127 = v219;
  v126 = v220;
  *(v125 + 32) = v219;
  *(v125 + 40) = v126;
  *(v125 + 48) = v221;
  v128 = MEMORY[0x1E69E6158];
  v129 = v218;
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = v129;
  *(v125 + 80) = 0x797469746E454657;
  *(v125 + 88) = 0xE800000000000000;
  v130 = v225;
  *(v125 + 104) = v128;
  *(v125 + 112) = v130;
  v224 = v127;
  v226 = v129;
  v131 = sub_1CA94C438();
  v220 = v132;
  v133 = sub_1CA94C438();
  v135 = v134;
  v221 = &v217;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v217 - v236;
  sub_1CA948D98();
  v137 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v217 - v239;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v131, v220, v133, v135, 0, 0, v136, v138);
  *(v125 + 144) = v235;
  *(v125 + 120) = v140;
  sub_1CA94C1E8();
  v141 = sub_1CA2F864C();
  v142 = v229;
  *(v229 + 48) = v141;
  v143 = swift_allocObject();
  *(v143 + 16) = v227;
  *(v143 + 32) = v224;
  *(v143 + 40) = 0xD000000000000023;
  *(v143 + 48) = 0x80000001CA9CE0E0;
  v144 = MEMORY[0x1E69E6158];
  v145 = v226;
  *(v143 + 64) = MEMORY[0x1E69E6158];
  *(v143 + 72) = v145;
  *(v143 + 80) = 0x72746E756F434657;
  *(v143 + 88) = 0xE900000000000079;
  v146 = v225;
  *(v143 + 104) = v144;
  *(v143 + 112) = v146;
  v147 = sub_1CA94C438();
  v225 = v148;
  v149 = sub_1CA94C438();
  v151 = v150;
  *&v227 = &v217;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v217 - v236;
  sub_1CA948D98();
  v153 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v217 - v239;
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v147, v225, v149, v151, 0, 0, v152, v154);
  *(v143 + 144) = v235;
  *(v143 + 120) = v156;
  sub_1CA94C1E8();
  *(v142 + 56) = sub_1CA2F864C();
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1CA981300;
  *(v157 + 32) = v224;
  *(v157 + 40) = 0xD000000000000012;
  *(v157 + 48) = 0x80000001CA99B980;
  v158 = MEMORY[0x1E69E6158];
  *(v157 + 64) = MEMORY[0x1E69E6158];
  *(v157 + 72) = @"DefaultValue";
  v159 = MEMORY[0x1E69E6530];
  *(v157 + 80) = 25;
  v160 = v226;
  *(v157 + 104) = v159;
  *(v157 + 112) = v160;
  *(v157 + 120) = 0x694C6D6574494657;
  *(v157 + 128) = 0xEB0000000074696DLL;
  *(v157 + 144) = v158;
  *(v157 + 152) = @"MaximumValue";
  *(v157 + 160) = 100;
  *(v157 + 184) = v159;
  *(v157 + 192) = @"MinimumValue";
  *(v157 + 200) = 1;
  *(v157 + 224) = v159;
  *(v157 + 232) = @"StepperPrefix";
  v161 = @"DefaultValue";
  v162 = @"MaximumValue";
  v163 = @"MinimumValue";
  v164 = @"StepperPrefix";
  v165 = sub_1CA94C438();
  v226 = v166;
  *&v227 = v165;
  v167 = sub_1CA94C438();
  v225 = v168;
  v230 = &v217;
  MEMORY[0x1EEE9AC00](v167);
  v169 = &v217 - v236;
  sub_1CA948D98();
  v170 = v234;
  v171 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v217 - v239;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 240) = sub_1CA2F9F14(v227, v226, v167, v225, 0, 0, v169, v172);
  *(v157 + 264) = v235;
  *(v157 + 272) = @"StepperDescription";
  v174 = @"StepperDescription";
  v175 = sub_1CA94C438();
  v226 = v176;
  *&v227 = v175;
  v177 = sub_1CA94C438();
  v225 = v178;
  v230 = &v217;
  MEMORY[0x1EEE9AC00](v177);
  v179 = v236;
  sub_1CA948D98();
  v180 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v217 - v239;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 280) = sub_1CA2F9F14(v227, v226, v177, v225, 0, 0, &v217 - v179, v181);
  *(v157 + 304) = v235;
  *(v157 + 312) = @"StepperNoun";
  v183 = @"StepperNoun";
  v184 = sub_1CA94C438();
  v230 = v184;
  v186 = v185;
  *&v227 = v185;
  v244 = 0;
  v245 = 0xE000000000000000;
  sub_1CA94D408();

  v244 = v184;
  v245 = v186;
  v242 = 10;
  v243 = 0xE100000000000000;
  v240 = 32;
  v241 = 0xE100000000000000;
  sub_1CA27BAF0();
  v244 = sub_1CA94D1B8();
  v245 = v187;
  v188 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v189 = v244;
  v190 = v245;
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948D98();
  v191 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v217 - v239;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v189, v190, v230, v227, 0, 0, &v217 - v179, v192);
  *(v157 + 344) = v235;
  *(v157 + 320) = v194;
  sub_1CA94C1E8();
  v195 = sub_1CA2F864C();
  v196 = v229;
  *(v229 + 64) = v195;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v198 = v233;
  v233[40] = v196;
  v198[43] = v197;
  v198[44] = @"ParameterSummary";
  v199 = @"ParameterSummary";
  v200 = sub_1CA94C438();
  v202 = v201;
  v203 = sub_1CA94C438();
  v205 = v204;
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948D98();
  v206 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v217 - v239;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209 = sub_1CA2F9F14(v200, v202, v203, v205, 0, 0, &v217 - v179, v207);
  v210 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v211 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v212 = v233;
  v233[45] = v210;
  v212[48] = v211;
  v212[49] = @"RequiredResources";
  v212[53] = v222;
  v212[50] = &unk_1F4A06B40;
  v213 = v212;
  v214 = @"RequiredResources";
  v213[54] = sub_1CA94C368();
  v213[55] = 0x7374736163646F50;
  v213[56] = 0xE800000000000000;
  v213[58] = MEMORY[0x1E69E6158];
  v213[59] = @"SuggestedAsInitialAction";
  v213[63] = MEMORY[0x1E69E6370];
  *(v213 + 480) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v215 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56E6F8()
{
  v39 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"DisabledOnPlatforms";
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = &unk_1F4A06BB0;
  *(inited + 144) = v6;
  *(inited + 152) = @"Input";
  v7 = @"DisabledOnPlatforms";
  v8 = @"Input";
  v9 = sub_1CA94C1E8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 160) = v9;
  *(inited + 184) = v10;
  *(inited + 192) = @"LocallyProcessesData";
  v11 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v11;
  *(inited + 232) = @"Name";
  v12 = @"LocallyProcessesData";
  v13 = @"Name";
  v14 = sub_1CA94C438();
  v37 = v15;
  v16 = sub_1CA94C438();
  v18 = v17;
  v19 = sub_1CA948E58();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v38 = 0x80000001CA993410;
  v23 = [qword_1EDB9F690 bundleURL];
  v24 = sub_1CA948BA8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v28 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v29 = sub_1CA2F9F14(v14, v37, v16, v18, 0, 0, v22, v27);
  v30 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v29;
  *(inited + 264) = v30;
  *(inited + 272) = @"RequiredResources";
  *(inited + 280) = &unk_1F4A06C40;
  *(inited + 304) = v6;
  *(inited + 312) = @"SuggestedAsInitialAction";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  v31 = @"RequiredResources";
  v32 = @"SuggestedAsInitialAction";
  v33 = sub_1CA94C368();
  v34 = MEMORY[0x1E69E6158];
  *(inited + 384) = MEMORY[0x1E69E6158];
  *(inited + 352) = v33;
  *(inited + 360) = 0xD000000000000017;
  *(inited + 368) = v38;
  v35 = sub_1CA94C368();
  *(inited + 424) = v34;
  *(inited + 392) = v35;
  *(inited + 400) = 0x6D75626C41;
  *(inited + 408) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56EBA8()
{
  v197 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6C69467465474657;
  *(inited + 48) = 0xEF6E6F6974634165;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v209 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v214 = v12;
  v210 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v194 - v210;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v211 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v215 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v212 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v194 - v212;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v213 = v20;
  v21 = v209;
  v209[10] = v19;
  v21[13] = v20;
  v21[14] = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v21[15] = v23;
  v21[18] = v24;
  v21[19] = @"Description";
  v208 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  v202 = xmmword_1CA981310;
  *(v25 + 16) = xmmword_1CA981310;
  *(v25 + 32) = @"DescriptionSummary";
  v26 = @"Description";
  v27 = @"DescriptionSummary";
  v28 = sub_1CA94C438();
  v206 = v29;
  v30 = sub_1CA94C438();
  v32 = v31;
  v207 = &v194;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v194 - v210;
  sub_1CA948D98();
  v34 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v194 - v212;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v28, v206, v30, v32, 0, 0, v33, v35);
  *(v25 + 64) = v213;
  *(v25 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v208;
  v21[20] = sub_1CA6B3784();
  v21[23] = v38;
  v21[24] = @"IconColor";
  v21[25] = 1953392980;
  v21[26] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v21[28] = MEMORY[0x1E69E6158];
  v21[29] = @"IconSymbol";
  v21[30] = 0x662E7265646C6F66;
  v21[31] = 0xEB000000006C6C69;
  v21[33] = v39;
  v21[34] = @"IconSymbolColor";
  v21[35] = 1702194242;
  v21[36] = 0xE400000000000000;
  v21[38] = v39;
  v21[39] = @"Input";
  v40 = v39;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v205 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x656C69464657;
  *(v41 + 104) = 0xE600000000000000;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 184) = 0xE500000000000000;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v206;
  *(v41 + 192) = &unk_1F4A06CE8;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v208 = v48;
  v21[40] = v47;
  v21[43] = v48;
  v21[44] = @"Name";
  v49 = @"Name";
  v204 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v207 = &v194;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v194 - v210;
  sub_1CA948D98();
  v56 = v211;
  v57 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v212;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v204, v51, v52, v54, 0, 0, v55, &v194 - v58);
  v61 = v209;
  v209[45] = v60;
  v62 = v213;
  v61[48] = v213;
  v61[49] = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v205;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v203 = v66;
  v204 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v207 = &v194;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v194 - v210;
  sub_1CA948D98();
  v71 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v204, v203, v67, v69, 0, 0, v70, &v194 - v58);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v206;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A06D18;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v209;
  v209[50] = v74;
  v75[53] = v208;
  v75[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_1CA981570;
  v207 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v205;
  v200 = 0x80000001CA99E620;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000011;
  *(v76 + 48) = 0x80000001CA99E620;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"DefaultValue";
  *(v76 + 80) = 1;
  *(v76 + 104) = MEMORY[0x1E69E6370];
  *(v76 + 112) = @"Key";
  v196 = 0xD000000000000015;
  *(v76 + 120) = 0xD000000000000015;
  *(v76 + 128) = 0x80000001CA9CE2D0;
  *(v76 + 144) = v73;
  *(v76 + 152) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v83 = @"DefaultValue";
  v198 = v80;
  v199 = v81;
  v195 = v82;
  v194 = v83;
  v84 = @"Parameters";
  v85 = sub_1CA94C438();
  v204 = v86;
  v87 = sub_1CA94C438();
  v89 = v88;
  *&v205 = &v194;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v194 - v210;
  sub_1CA948D98();
  v91 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v194 - v212;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v85, v204, v87, v89, 0, 0, v90, v92);
  *(v76 + 184) = v213;
  *(v76 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  *&v205 = v95;
  v204 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v208 + 32) = sub_1CA2F864C();
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA981370;
  v97 = v198;
  *(v96 + 32) = v198;
  *(v96 + 40) = 0xD000000000000011;
  v98 = v199;
  *(v96 + 48) = v200;
  v99 = MEMORY[0x1E69E6158];
  v100 = v194;
  *(v96 + 64) = MEMORY[0x1E69E6158];
  *(v96 + 72) = v100;
  *(v96 + 80) = 0;
  v101 = MEMORY[0x1E69E6370];
  *(v96 + 104) = MEMORY[0x1E69E6370];
  *(v96 + 112) = @"Hidden";
  *(v96 + 120) = 1;
  *(v96 + 144) = v101;
  *(v96 + 152) = v98;
  *(v96 + 160) = 0xD000000000000013;
  *(v96 + 168) = 0x80000001CA9CE340;
  v102 = v195;
  *(v96 + 184) = v99;
  *(v96 + 192) = v102;
  v198 = v97;
  v199 = v98;
  v200 = v102;
  v103 = @"Hidden";
  v104 = sub_1CA94C438();
  v194 = v105;
  v106 = sub_1CA94C438();
  v108 = v107;
  v195 = &v194;
  MEMORY[0x1EEE9AC00](v106);
  v109 = v210;
  sub_1CA948D98();
  v110 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v194 - v212;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v104, v194, v106, v108, 0, 0, &v194 - v109, v111);
  *(v96 + 224) = v213;
  *(v96 + 200) = v113;
  sub_1CA94C1E8();
  *(v208 + 40) = sub_1CA2F864C();
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1CA981380;
  v115 = v196;
  *(v114 + 32) = v198;
  *(v114 + 40) = v115;
  *(v114 + 48) = 0x80000001CA99B1E0;
  v116 = MEMORY[0x1E69E6158];
  *(v114 + 64) = MEMORY[0x1E69E6158];
  *(v114 + 72) = @"DefaultsToShortcutsFolder";
  *(v114 + 80) = 1;
  v117 = MEMORY[0x1E69E6370];
  *(v114 + 104) = MEMORY[0x1E69E6370];
  *(v114 + 112) = @"Optional";
  *(v114 + 120) = 0;
  *(v114 + 144) = v117;
  *(v114 + 152) = @"FilePickerSupportedTypes";
  *(v114 + 160) = &unk_1F4A06D58;
  v118 = v199;
  *(v114 + 184) = v206;
  *(v114 + 192) = v118;
  *(v114 + 200) = 0x656C69464657;
  *(v114 + 208) = 0xE600000000000000;
  v119 = v200;
  *(v114 + 224) = v116;
  *(v114 + 232) = v119;
  v120 = @"DefaultsToShortcutsFolder";
  v121 = @"Optional";
  v122 = @"FilePickerSupportedTypes";
  v123 = sub_1CA94C438();
  v195 = v124;
  v125 = sub_1CA94C438();
  v127 = v126;
  v196 = &v194;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948D98();
  v128 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v194 - v212;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v123, v195, v125, v127, 0, 0, &v194 - v109, v129);
  *(v114 + 264) = v213;
  *(v114 + 240) = v131;
  sub_1CA94C1E8();
  *(v208 + 48) = sub_1CA2F864C();
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1CA9813E0;
  *(v132 + 32) = @"AutocapitalizationType";
  *(v132 + 40) = 1701736270;
  *(v132 + 48) = 0xE400000000000000;
  v133 = MEMORY[0x1E69E6158];
  v134 = v198;
  *(v132 + 64) = MEMORY[0x1E69E6158];
  *(v132 + 72) = v134;
  *(v132 + 80) = 0xD000000000000014;
  *(v132 + 88) = 0x80000001CA99B500;
  *(v132 + 104) = v133;
  *(v132 + 112) = @"Description";
  v135 = @"AutocapitalizationType";
  v136 = @"Description";
  v198 = sub_1CA94C438();
  v196 = v137;
  v138 = sub_1CA94C438();
  v140 = v139;
  v203 = &v194;
  MEMORY[0x1EEE9AC00](v138);
  v141 = v210;
  sub_1CA948D98();
  v142 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v194 - v212;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 120) = sub_1CA2F9F14(v198, v196, v138, v140, 0, 0, &v194 - v141, v143);
  *(v132 + 144) = v213;
  *(v132 + 152) = @"DisableAutocorrection";
  *(v132 + 160) = 1;
  v145 = v199;
  *(v132 + 184) = MEMORY[0x1E69E6370];
  *(v132 + 192) = v145;
  strcpy((v132 + 200), "WFGetFilePath");
  *(v132 + 214) = -4864;
  v146 = MEMORY[0x1E69E6158];
  *(v132 + 224) = MEMORY[0x1E69E6158];
  *(v132 + 232) = @"KeyboardType";
  *(v132 + 240) = 0x6372616553626557;
  *(v132 + 248) = 0xE900000000000068;
  v147 = v200;
  *(v132 + 264) = v146;
  *(v132 + 272) = v147;
  v148 = @"DisableAutocorrection";
  v149 = @"KeyboardType";
  v150 = sub_1CA94C438();
  v199 = v151;
  v200 = v150;
  v152 = sub_1CA94C438();
  v198 = v153;
  v203 = &v194;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v154 = v211;
  v155 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v194 - v212;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 280) = sub_1CA2F9F14(v200, v199, v152, v198, 0, 0, &v194 - v141, v156);
  *(v132 + 304) = v213;
  *(v132 + 312) = @"Placeholder";
  v158 = @"Placeholder";
  v159 = sub_1CA94C438();
  v199 = v160;
  v200 = v159;
  v161 = sub_1CA94C438();
  v198 = v162;
  v203 = &v194;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v163 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = v212;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 320) = sub_1CA2F9F14(v200, v199, v161, v198, 0, 0, &v194 - v141, &v194 - v164);
  *(v132 + 344) = v213;
  *(v132 + 352) = @"TextAlignment";
  *(v132 + 384) = MEMORY[0x1E69E6158];
  *(v132 + 360) = 1952867660;
  *(v132 + 368) = 0xE400000000000000;
  v166 = @"TextAlignment";
  sub_1CA94C1E8();
  v167 = sub_1CA2F864C();
  v168 = v208;
  *(v208 + 56) = v167;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v170 = v209;
  v209[55] = v168;
  v170[58] = v169;
  v170[59] = @"ParameterSummary";
  v171 = @"ParameterSummary";
  v172 = sub_1CA94C438();
  v174 = v173;
  v175 = sub_1CA94C438();
  v177 = v176;
  v213 = &v194;
  MEMORY[0x1EEE9AC00](v175);
  v178 = &v194 - v210;
  sub_1CA948D98();
  v179 = [v211 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v172, v174, v175, v177, 0, 0, v178, &v194 - v164);
  v182 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v183 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v184 = v209;
  v209[60] = v182;
  v184[63] = v183;
  v184[64] = @"RemoteExecuteOnPlatforms";
  v184[68] = v206;
  v184[65] = &unk_1F4A06D88;
  v184[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v185 = swift_allocObject();
  *(v185 + 16) = v202;
  v186 = swift_initStackObject();
  *(v186 + 16) = xmmword_1CA97EDF0;
  *(v186 + 32) = 0xD000000000000011;
  *(v186 + 40) = 0x80000001CA99B240;
  v187 = swift_allocObject();
  *(v187 + 16) = v202;
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_1CA9813C0;
  strcpy((v188 + 32), "WFParameterKey");
  *(v188 + 47) = -18;
  *(v188 + 48) = 0xD000000000000010;
  *(v188 + 56) = 0x80000001CA99B260;
  v189 = MEMORY[0x1E69E6158];
  *(v188 + 72) = MEMORY[0x1E69E6158];
  *(v188 + 80) = 0xD000000000000010;
  *(v188 + 88) = 0x80000001CA993570;
  *(v188 + 96) = 1;
  *(v188 + 120) = MEMORY[0x1E69E6370];
  *(v188 + 128) = 0x72756F7365524657;
  *(v188 + 168) = v189;
  *(v188 + 136) = 0xEF7373616C436563;
  *(v188 + 144) = 0xD00000000000001BLL;
  *(v188 + 152) = 0x80000001CA993590;
  v190 = @"RemoteExecuteOnPlatforms";
  v191 = @"RequiredResources";
  *(v187 + 32) = sub_1CA94C1E8();
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v186 + 48) = v187;
  *(v186 + 72) = v192;
  *(v186 + 80) = 0x72756F7365524657;
  *(v186 + 120) = v189;
  *(v186 + 88) = 0xEF7373616C436563;
  *(v186 + 96) = 0xD000000000000019;
  *(v186 + 104) = 0x80000001CA9932D0;
  *(v185 + 32) = sub_1CA94C1E8();
  v184[73] = v192;
  v184[70] = v185;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA570524()
{
  v407 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  v428 = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9CE550;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v439 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v443 = v11;
  v444 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v402 - v444;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v441 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v440 = v15;
  v442 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v402 - v442;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v439, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v439 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v438 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v431 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438();
  v435 = v24;
  v436 = v23;
  v25 = sub_1CA94C438();
  v27 = v26;
  v437 = &v402;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v402 - v444;
  sub_1CA948D98();
  v29 = v441;
  v30 = [v441 bundleURL];
  v429 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v442;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v436, v435, v25, v27, 0, 0, v28, &v402 - v32);
  *(v20 + 64) = v439;
  *(v20 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v435 = v36;
  v436 = v35;
  v434 = sub_1CA94C438();
  v38 = v37;
  v437 = &v402;
  MEMORY[0x1EEE9AC00](v434);
  v39 = &v402 - v444;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v436, v435, v434, v38, 0, 0, v39, &v402 - v32);
  v42 = v439;
  *(v20 + 104) = v439;
  *(v20 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438();
  v435 = v45;
  v436 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v437 = &v402;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v402 - v444;
  sub_1CA948D98();
  v50 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v402 - v442;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v436, v435, v46, v48, 0, 0, v49, v51);
  *(v20 + 144) = v42;
  *(v20 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v54 = v438;
  v55 = sub_1CA6B3784();
  v56 = v429;
  v429[15] = v55;
  v56[18] = v54;
  v56[19] = @"IconColor";
  v56[20] = 0x6E65657247;
  v56[21] = 0xE500000000000000;
  v57 = MEMORY[0x1E69E6158];
  v56[23] = MEMORY[0x1E69E6158];
  v56[24] = @"IconSymbol";
  v423 = 0xD000000000000015;
  v56[25] = 0xD000000000000015;
  v56[26] = 0x80000001CA9CBE30;
  v56[28] = v57;
  v56[29] = @"Input";
  v58 = v57;
  v59 = v56;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  v430 = xmmword_1CA981350;
  *(v60 + 16) = xmmword_1CA981350;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  v61 = MEMORY[0x1E69E6370];
  *(v60 + 48) = 1;
  *(v60 + 72) = v61;
  strcpy((v60 + 80), "ParameterKey");
  *(v60 + 93) = 0;
  *(v60 + 94) = -5120;
  *(v60 + 96) = 0x4C52554657;
  *(v60 + 104) = 0xE500000000000000;
  *(v60 + 120) = v58;
  *(v60 + 128) = 0x6465726975716552;
  *(v60 + 136) = 0xE800000000000000;
  *(v60 + 144) = 1;
  *(v60 + 168) = v61;
  *(v60 + 176) = 0x7365707954;
  v62 = v61;
  *(v60 + 184) = 0xE500000000000000;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v60 + 216) = v438;
  *(v60 + 192) = &unk_1F4A06DB8;
  v63 = @"IconColor";
  v64 = @"IconSymbol";
  v65 = @"Input";
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v437 = v67;
  v59[30] = v66;
  v59[33] = v67;
  v59[34] = @"InputPassthrough";
  *(v59 + 280) = 0;
  v59[38] = v62;
  v59[39] = @"Name";
  v68 = @"InputPassthrough";
  v69 = @"Name";
  v70 = sub_1CA94C438();
  v72 = v71;
  v73 = sub_1CA94C438();
  v75 = v74;
  v436 = &v402;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v402 - v444;
  sub_1CA948D98();
  v77 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v402 - v442;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v70, v72, v73, v75, 0, 0, v76, v78);
  v81 = v429;
  v429[40] = v80;
  v82 = v439;
  v81[43] = v439;
  v81[44] = @"Output";
  v83 = swift_allocObject();
  *(v83 + 16) = v430;
  *(v83 + 32) = 0x75736F6C63736944;
  *(v83 + 40) = 0xEF6C6576654C6572;
  *(v83 + 48) = 0x63696C627550;
  *(v83 + 56) = 0xE600000000000000;
  *(v83 + 72) = MEMORY[0x1E69E6158];
  *(v83 + 80) = 0x656C7069746C754DLL;
  *(v83 + 88) = 0xE800000000000000;
  *(v83 + 96) = 1;
  *(v83 + 120) = MEMORY[0x1E69E6370];
  *(v83 + 128) = 0x614E74757074754FLL;
  *(v83 + 136) = 0xEA0000000000656DLL;
  v84 = @"Output";
  v85 = sub_1CA94C438();
  v435 = v86;
  v87 = sub_1CA94C438();
  v89 = v88;
  v436 = &v402;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v402 - v444;
  sub_1CA948D98();
  v91 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v402 - v442;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 144) = sub_1CA2F9F14(v85, v435, v87, v89, 0, 0, v90, v92);
  *(v83 + 168) = v82;
  *(v83 + 176) = 0x7365707954;
  *(v83 + 216) = v438;
  *(v83 + 184) = 0xE500000000000000;
  *(v83 + 192) = &unk_1F4A06DE8;
  v94 = MEMORY[0x1E69E6158];
  v95 = sub_1CA94C1E8();
  v96 = v429;
  v429[45] = v95;
  v434 = @"Parameters";
  v96[48] = v437;
  v96[49] = @"Parameters";
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v437 = swift_allocObject();
  *(v437 + 1) = xmmword_1CA985370;
  v436 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA9813E0;
  *(v97 + 32) = @"AllowsMultipleValues";
  *(v97 + 40) = 0;
  v98 = MEMORY[0x1E69E6370];
  *(v97 + 64) = MEMORY[0x1E69E6370];
  *(v97 + 72) = @"AutocapitalizationType";
  *(v97 + 80) = 1701736270;
  *(v97 + 88) = 0xE400000000000000;
  *(v97 + 104) = v94;
  *(v97 + 112) = @"Class";
  v426 = 0xD000000000000014;
  *(v97 + 120) = 0xD000000000000014;
  *(v97 + 128) = 0x80000001CA99B500;
  *(v97 + 144) = v94;
  *(v97 + 152) = @"DisableAutocorrection";
  *(v97 + 160) = 1;
  *(v97 + 184) = v98;
  *(v97 + 192) = @"Key";
  *(v97 + 200) = 0x4C52554657;
  *(v97 + 208) = 0xE500000000000000;
  *(v97 + 224) = v94;
  *(v97 + 232) = @"KeyboardType";
  *(v97 + 240) = 5001813;
  *(v97 + 248) = 0xE300000000000000;
  *(v97 + 264) = v94;
  *(v97 + 272) = @"Label";
  v99 = @"Class";
  v100 = @"Key";
  v101 = @"Label";
  v102 = v99;
  v103 = v100;
  v104 = v101;
  v422 = v102;
  v424 = v103;
  v425 = v104;
  v105 = v434;
  v106 = @"AllowsMultipleValues";
  v107 = @"AutocapitalizationType";
  v108 = @"DisableAutocorrection";
  v109 = @"KeyboardType";
  v433 = sub_1CA94C438();
  *&v427 = v110;
  v111 = sub_1CA94C438();
  v421 = v112;
  v434 = &v402;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v444;
  sub_1CA948D98();
  v114 = v441;
  v115 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v402 - v442;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 280) = sub_1CA2F9F14(v433, v427, v111, v421, 0, 0, &v402 - v113, v116);
  v118 = v439;
  *(v97 + 304) = v439;
  *(v97 + 312) = @"Placeholder";
  v406 = @"Placeholder";
  v119 = sub_1CA94C438();
  v433 = v120;
  v121 = sub_1CA94C438();
  v123 = v122;
  v434 = &v402;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v402 - v113;
  sub_1CA948D98();
  v125 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v402 - v442;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 320) = sub_1CA2F9F14(v119, v433, v121, v123, 0, 0, v124, v126);
  *(v97 + 344) = v118;
  *(v97 + 352) = @"TextContentType";
  v128 = MEMORY[0x1E69E6158];
  *(v97 + 384) = MEMORY[0x1E69E6158];
  *(v97 + 360) = 5001813;
  *(v97 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  v434 = v129;
  v433 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v130 = @"TextContentType";
  sub_1CA94C1E8();
  v437[4] = sub_1CA2F864C();
  v131 = swift_allocObject();
  v427 = xmmword_1CA981400;
  *(v131 + 16) = xmmword_1CA981400;
  v418 = 0x80000001CA99C4A0;
  v419 = 0xD000000000000016;
  v132 = v422;
  *(v131 + 32) = v422;
  *(v131 + 40) = 0xD000000000000016;
  *(v131 + 48) = 0x80000001CA99C4A0;
  *(v131 + 64) = v128;
  *(v131 + 72) = @"DefaultValue";
  *(v131 + 80) = 5522759;
  *(v131 + 88) = 0xE300000000000000;
  *(v131 + 104) = v128;
  *(v131 + 112) = @"Description";
  v133 = @"DefaultValue";
  v422 = v132;
  v412 = v133;
  v134 = @"Description";
  v135 = sub_1CA94C438();
  v417 = v136;
  v137 = sub_1CA94C438();
  v139 = v138;
  v421 = &v402;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v402 - v444;
  sub_1CA948D98();
  v141 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v402 - v442;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 120) = sub_1CA2F9F14(v135, v417, v137, v139, 0, 0, v140, v142);
  v144 = v439;
  *(v131 + 144) = v439;
  *(v131 + 152) = @"DoNotLocalizeValues";
  *(v131 + 160) = 1;
  *(v131 + 184) = MEMORY[0x1E69E6370];
  *(v131 + 192) = @"Items";
  *(v131 + 200) = &unk_1F4A06E18;
  v145 = v424;
  v146 = v425;
  *(v131 + 224) = v438;
  *(v131 + 232) = v145;
  strcpy((v131 + 240), "WFHTTPMethod");
  *(v131 + 253) = 0;
  *(v131 + 254) = -5120;
  *(v131 + 264) = MEMORY[0x1E69E6158];
  *(v131 + 272) = v146;
  v147 = @"Items";
  v421 = v145;
  v424 = v146;
  *&v411 = v147;
  v148 = @"DoNotLocalizeValues";
  v149 = sub_1CA94C438();
  v417 = v150;
  v151 = sub_1CA94C438();
  v153 = v152;
  v425 = &v402;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v402 - v444;
  sub_1CA948D98();
  v155 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v402 - v442;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v149, v417, v151, v153, 0, 0, v154, v156);
  *(v131 + 304) = v144;
  *(v131 + 280) = v158;
  sub_1CA94C1E8();
  v437[5] = sub_1CA2F864C();
  v159 = swift_allocObject();
  *(v159 + 16) = v431;
  v161 = v421;
  v160 = v422;
  v162 = v426;
  *(v159 + 32) = v422;
  *(v159 + 40) = v162;
  *(v159 + 48) = 0x80000001CA9B2600;
  v163 = MEMORY[0x1E69E6158];
  *(v159 + 64) = MEMORY[0x1E69E6158];
  *(v159 + 72) = v161;
  *(v159 + 80) = 0x64616548776F6853;
  *(v159 + 88) = 0xEB00000000737265;
  v164 = v424;
  *(v159 + 104) = v163;
  *(v159 + 112) = v164;
  v422 = v160;
  v425 = v161;
  v426 = v164;
  v165 = sub_1CA94C438();
  v167 = v166;
  v168 = sub_1CA94C438();
  v170 = v169;
  v424 = &v402;
  MEMORY[0x1EEE9AC00](v168);
  v171 = &v402 - v444;
  sub_1CA948D98();
  v172 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v402 - v442;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v165, v167, v168, v170, 0, 0, v171, v173);
  *(v159 + 144) = v439;
  *(v159 + 120) = v175;
  sub_1CA94C1E8();
  v437[6] = sub_1CA2F864C();
  v176 = swift_allocObject();
  *(v176 + 16) = v427;
  *(v176 + 32) = @"AllowedValueTypes";
  v177 = @"AllowedValueTypes";
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
  *(v176 + 40) = &unk_1F4A06E88;
  v179 = v422;
  *(v176 + 64) = v178;
  *(v176 + 72) = v179;
  v416 = 0x80000001CA9CE7F0;
  v417 = v178;
  *(v176 + 80) = v423;
  *(v176 + 88) = 0x80000001CA9CE7F0;
  *(v176 + 104) = MEMORY[0x1E69E6158];
  *(v176 + 112) = @"ItemTypeName";
  v180 = @"ItemTypeName";
  v181 = v177;
  v182 = v180;
  v404 = v179;
  v414 = v181;
  v415 = v182;
  v183 = sub_1CA94C438();
  v421 = v184;
  v422 = v183;
  v185 = sub_1CA94C438();
  v187 = v186;
  v424 = &v402;
  MEMORY[0x1EEE9AC00](v185);
  v188 = &v402 - v444;
  sub_1CA948D98();
  v189 = v441;
  v190 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = v442;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 120) = sub_1CA2F9F14(v422, v421, v185, v187, 0, 0, v188, &v402 - v191);
  v193 = v439;
  *(v176 + 144) = v439;
  *(v176 + 152) = @"NewItemTypeName";
  v413 = @"NewItemTypeName";
  v194 = sub_1CA94C438();
  v421 = v195;
  v422 = v194;
  v196 = sub_1CA94C438();
  *&v410 = v197;
  v424 = &v402;
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v402 - v444;
  sub_1CA948D98();
  v199 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v201 = sub_1CA2F9F14(v422, v421, v196, v410, 0, 0, v198, &v402 - v191);
  v202 = v425;
  *(v176 + 160) = v201;
  *(v176 + 184) = v193;
  *(v176 + 192) = v202;
  strcpy((v176 + 200), "WFHTTPHeaders");
  *(v176 + 214) = -4864;
  v203 = v426;
  *(v176 + 224) = MEMORY[0x1E69E6158];
  *(v176 + 232) = v203;
  v408 = v202;
  v409 = v203;
  v204 = sub_1CA94C438();
  v425 = v205;
  v206 = sub_1CA94C438();
  v208 = v207;
  v426 = &v402;
  MEMORY[0x1EEE9AC00](v206);
  v209 = &v402 - v444;
  sub_1CA948D98();
  v210 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v402 - v442;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 240) = sub_1CA2F9F14(v204, v425, v206, v208, 0, 0, v209, v211);
  *(v176 + 264) = v439;
  *(v176 + 272) = @"RequiredResources";
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v213 = swift_allocObject();
  v410 = xmmword_1CA981310;
  *(v213 + 16) = xmmword_1CA981310;
  v214 = swift_allocObject();
  *(v214 + 16) = v431;
  strcpy((v214 + 32), "WFParameterKey");
  *(v214 + 47) = -18;
  *(v214 + 48) = 0x64616548776F6853;
  *(v214 + 56) = 0xEB00000000737265;
  v421 = 0xD000000000000010;
  v422 = 0x80000001CA993570;
  v215 = MEMORY[0x1E69E6158];
  *(v214 + 72) = MEMORY[0x1E69E6158];
  *(v214 + 80) = 0xD000000000000010;
  *(v214 + 88) = 0x80000001CA993570;
  *(v214 + 96) = 1;
  *(v214 + 120) = MEMORY[0x1E69E6370];
  *(v214 + 128) = 0x72756F7365524657;
  v424 = 0x80000001CA993590;
  *(v214 + 168) = v215;
  *(v214 + 136) = 0xEF7373616C436563;
  *(v214 + 144) = 0xD00000000000001BLL;
  *(v214 + 152) = 0x80000001CA993590;
  v405 = @"RequiredResources";
  *(v213 + 32) = sub_1CA94C1E8();
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v176 + 304) = v426;
  *(v176 + 280) = v213;
  sub_1CA94C1E8();
  v437[7] = sub_1CA2F864C();
  v216 = swift_allocObject();
  *(v216 + 16) = v427;
  v217 = v404;
  v218 = v418;
  v219 = v419;
  *(v216 + 32) = v404;
  *(v216 + 40) = v219;
  *(v216 + 48) = v218;
  v220 = v412;
  *(v216 + 64) = v215;
  *(v216 + 72) = v220;
  *(v216 + 80) = 1313821514;
  *(v216 + 88) = 0xE400000000000000;
  *(v216 + 104) = v215;
  *(v216 + 112) = @"DisallowedVariableTypes";
  *(v216 + 120) = &unk_1F4A06EB0;
  v221 = v411;
  *(v216 + 144) = v438;
  *(v216 + 152) = v221;
  v420 = swift_allocObject();
  *(v420 + 1) = xmmword_1CA981470;
  v412 = v217;
  v222 = @"DisallowedVariableTypes";
  v418 = sub_1CA94C438();
  *&v411 = v223;
  v224 = sub_1CA94C438();
  v404 = v225;
  v419 = &v402;
  MEMORY[0x1EEE9AC00](v224);
  v226 = v444;
  sub_1CA948D98();
  v227 = v441;
  v228 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  v229 = &v402 - v442;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v231 = sub_1CA2F9F14(v418, v411, v224, v404, 0, 0, &v402 - v226, v229);
  v232 = v420;
  v420[4] = v231;
  v418 = sub_1CA94C438();
  *&v411 = v233;
  v234 = sub_1CA94C438();
  v404 = v235;
  v419 = &v402;
  MEMORY[0x1EEE9AC00](v234);
  sub_1CA948D98();
  v236 = [v227 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  v237 = v442;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v232[5] = sub_1CA2F9F14(v418, v411, v234, v404, 0, 0, &v402 - v226, &v402 - v237);
  v418 = sub_1CA94C438();
  *&v411 = v239;
  v240 = sub_1CA94C438();
  v404 = v241;
  v419 = &v402;
  MEMORY[0x1EEE9AC00](v240);
  v242 = &v402 - v444;
  sub_1CA948D98();
  v243 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v245 = sub_1CA2F9F14(v418, v411, v240, v404, 0, 0, v242, &v402 - v237);
  v246 = v420;
  v420[6] = v245;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v216 + 160) = v246;
  v248 = v408;
  v249 = v409;
  *(v216 + 184) = v247;
  *(v216 + 192) = v248;
  strcpy((v216 + 200), "WFHTTPBodyType");
  *(v216 + 215) = -18;
  *(v216 + 224) = MEMORY[0x1E69E6158];
  *(v216 + 232) = v249;
  v408 = v248;
  *&v411 = v249;
  v250 = sub_1CA94C438();
  v252 = v251;
  v253 = sub_1CA94C438();
  v255 = v254;
  v420 = &v402;
  MEMORY[0x1EEE9AC00](v253);
  v256 = &v402 - v444;
  sub_1CA948D98();
  v257 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v257);
  v258 = &v402 - v442;
  sub_1CA948B68();

  v259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v216 + 240) = sub_1CA2F9F14(v250, v252, v253, v255, 0, 0, v256, v258);
  v260 = v405;
  *(v216 + 264) = v439;
  *(v216 + 272) = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = v410;
  v262 = swift_allocObject();
  *(v262 + 16) = v430;
  strcpy((v262 + 32), "WFParameterKey");
  *(v262 + 47) = -18;
  strcpy((v262 + 48), "WFHTTPMethod");
  *(v262 + 61) = 0;
  *(v262 + 62) = -5120;
  v420 = 0x80000001CA9939F0;
  v263 = MEMORY[0x1E69E6158];
  v264 = v428;
  *(v262 + 72) = MEMORY[0x1E69E6158];
  *(v262 + 80) = v264;
  *(v262 + 88) = 0x80000001CA9939F0;
  *(v262 + 96) = 15649;
  *(v262 + 104) = 0xE200000000000000;
  v418 = 0xD000000000000011;
  v419 = 0x80000001CA9A2F30;
  *(v262 + 120) = v263;
  *(v262 + 128) = 0xD000000000000011;
  *(v262 + 136) = 0x80000001CA9A2F30;
  *(v262 + 144) = &unk_1F4A06EF0;
  *(v262 + 168) = v438;
  *(v262 + 176) = 0x72756F7365524657;
  *(v262 + 216) = v263;
  *(v262 + 184) = 0xEF7373616C436563;
  *(v262 + 192) = 0xD00000000000001BLL;
  *(v262 + 200) = v424;
  *&v410 = v260;
  *(v261 + 32) = sub_1CA94C1E8();
  *(v216 + 304) = v426;
  *(v216 + 280) = v261;
  sub_1CA94C1E8();
  v437[8] = sub_1CA2F864C();
  v265 = swift_allocObject();
  *(v265 + 16) = v427;
  *(v265 + 32) = v414;
  *(v265 + 40) = &unk_1F4A06F20;
  v266 = v412;
  *(v265 + 64) = v417;
  *(v265 + 72) = v266;
  v267 = v415;
  v268 = v416;
  *(v265 + 80) = v423;
  *(v265 + 88) = v268;
  *(v265 + 104) = v263;
  *(v265 + 112) = v267;
  v412 = v266;
  v269 = sub_1CA94C438();
  v404 = v270;
  v405 = v269;
  v271 = sub_1CA94C438();
  v403 = v272;
  v409 = &v402;
  MEMORY[0x1EEE9AC00](v271);
  v273 = v444;
  sub_1CA948D98();
  v274 = v441;
  v275 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v275);
  v276 = v442;
  sub_1CA948B68();

  v277 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v265 + 120) = sub_1CA2F9F14(v405, v404, v271, v403, 0, 0, &v402 - v273, &v402 - v276);
  v278 = v439;
  v279 = v413;
  *(v265 + 144) = v439;
  *(v265 + 152) = v279;
  v280 = sub_1CA94C438();
  v404 = v281;
  v405 = v280;
  v282 = sub_1CA94C438();
  v403 = v283;
  v409 = &v402;
  MEMORY[0x1EEE9AC00](v282);
  sub_1CA948D98();
  v284 = [v274 bundleURL];
  MEMORY[0x1EEE9AC00](v284);
  sub_1CA948B68();

  v285 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v286 = sub_1CA2F9F14(v405, v404, v282, v403, 0, 0, &v402 - v273, &v402 - v276);
  v287 = v408;
  *(v265 + 160) = v286;
  *(v265 + 184) = v278;
  *(v265 + 192) = v287;
  strcpy((v265 + 200), "WFFormValues");
  *(v265 + 213) = 0;
  *(v265 + 214) = -5120;
  v288 = v411;
  *(v265 + 224) = MEMORY[0x1E69E6158];
  *(v265 + 232) = v288;
  v408 = v287;
  v409 = v288;
  v405 = sub_1CA94C438();
  v290 = v289;
  v291 = sub_1CA94C438();
  v293 = v292;
  *&v411 = &v402;
  MEMORY[0x1EEE9AC00](v291);
  v294 = &v402 - v444;
  sub_1CA948D98();
  v295 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  v296 = &v402 - v442;
  sub_1CA948B68();

  v297 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v265 + 240) = sub_1CA2F9F14(v405, v290, v291, v293, 0, 0, v294, v296);
  v298 = v410;
  *(v265 + 264) = v439;
  *(v265 + 272) = v298;
  v299 = swift_allocObject();
  v411 = xmmword_1CA97EDF0;
  *(v299 + 16) = xmmword_1CA97EDF0;
  v300 = swift_allocObject();
  *(v300 + 16) = v431;
  strcpy((v300 + 32), "WFParameterKey");
  *(v300 + 47) = -18;
  strcpy((v300 + 48), "WFHTTPBodyType");
  *(v300 + 63) = -18;
  v301 = MEMORY[0x1E69E6158];
  v302 = v421;
  v303 = v422;
  *(v300 + 72) = MEMORY[0x1E69E6158];
  *(v300 + 80) = v302;
  *(v300 + 88) = v303;
  *(v300 + 96) = 1836216134;
  *(v300 + 104) = 0xE400000000000000;
  *(v300 + 120) = v301;
  *(v300 + 128) = 0x72756F7365524657;
  *(v300 + 168) = v301;
  v304 = v301;
  *(v300 + 136) = 0xEF7373616C436563;
  *(v300 + 144) = 0xD00000000000001BLL;
  v305 = v424;
  *(v300 + 152) = v424;
  *&v410 = v410;
  *(v299 + 32) = sub_1CA94C1E8();
  v306 = swift_allocObject();
  *(v306 + 16) = v430;
  strcpy((v306 + 32), "WFParameterKey");
  *(v306 + 47) = -18;
  strcpy((v306 + 48), "WFHTTPMethod");
  *(v306 + 61) = 0;
  *(v306 + 62) = -5120;
  v307 = v428;
  *(v306 + 72) = v304;
  *(v306 + 80) = v307;
  v308 = v419;
  *(v306 + 88) = v420;
  *(v306 + 96) = 15649;
  *(v306 + 104) = 0xE200000000000000;
  v309 = v418;
  *(v306 + 120) = v304;
  *(v306 + 128) = v309;
  *(v306 + 136) = v308;
  *(v306 + 144) = &unk_1F4A06F50;
  *(v306 + 168) = v438;
  *(v306 + 176) = 0x72756F7365524657;
  *(v306 + 216) = v304;
  *(v306 + 184) = 0xEF7373616C436563;
  *(v306 + 192) = 0xD00000000000001BLL;
  *(v306 + 200) = v305;
  *(v299 + 40) = sub_1CA94C1E8();
  *(v265 + 304) = v426;
  *(v265 + 280) = v299;
  sub_1CA94C1E8();
  v437[9] = sub_1CA2F864C();
  v310 = swift_allocObject();
  *(v310 + 16) = v427;
  *(v310 + 32) = v414;
  *(v310 + 40) = &unk_1F4A06F80;
  v311 = v412;
  *(v310 + 64) = v417;
  *(v310 + 72) = v311;
  v312 = v415;
  v313 = v416;
  *(v310 + 80) = v423;
  *(v310 + 88) = v313;
  *(v310 + 104) = v304;
  *(v310 + 112) = v312;
  v423 = sub_1CA94C438();
  v417 = v314;
  v315 = sub_1CA94C438();
  v416 = v316;
  *&v427 = &v402;
  MEMORY[0x1EEE9AC00](v315);
  v317 = v444;
  sub_1CA948D98();
  v318 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v318);
  v319 = &v402 - v442;
  sub_1CA948B68();

  v320 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v310 + 120) = sub_1CA2F9F14(v423, v417, v315, v416, 0, 0, &v402 - v317, v319);
  v321 = v413;
  *(v310 + 144) = v439;
  *(v310 + 152) = v321;
  v423 = sub_1CA94C438();
  v417 = v322;
  v323 = sub_1CA94C438();
  v416 = v324;
  *&v427 = &v402;
  MEMORY[0x1EEE9AC00](v323);
  v325 = &v402 - v317;
  sub_1CA948D98();
  v326 = v441;
  v327 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v327);
  v328 = v442;
  sub_1CA948B68();

  v329 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v310 + 160) = sub_1CA2F9F14(v423, v417, v323, v416, 0, 0, v325, &v402 - v328);
  v330 = v439;
  v331 = v408;
  *(v310 + 184) = v439;
  *(v310 + 192) = v331;
  strcpy((v310 + 200), "WFJSONValues");
  *(v310 + 213) = 0;
  *(v310 + 214) = -5120;
  v332 = v409;
  *(v310 + 224) = MEMORY[0x1E69E6158];
  *(v310 + 232) = v332;
  v423 = sub_1CA94C438();
  v417 = v333;
  v334 = sub_1CA94C438();
  v416 = v335;
  *&v427 = &v402;
  MEMORY[0x1EEE9AC00](v334);
  v336 = &v402 - v444;
  sub_1CA948D98();
  v337 = [v326 bundleURL];
  MEMORY[0x1EEE9AC00](v337);
  sub_1CA948B68();

  v338 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v310 + 240) = sub_1CA2F9F14(v423, v417, v334, v416, 0, 0, v336, &v402 - v328);
  v339 = v410;
  *(v310 + 264) = v330;
  *(v310 + 272) = v339;
  v340 = swift_allocObject();
  *(v340 + 16) = v411;
  v341 = swift_allocObject();
  *(v341 + 16) = v431;
  strcpy((v341 + 32), "WFParameterKey");
  *(v341 + 47) = -18;
  strcpy((v341 + 48), "WFHTTPBodyType");
  *(v341 + 63) = -18;
  v342 = MEMORY[0x1E69E6158];
  v343 = v421;
  v344 = v422;
  *(v341 + 72) = MEMORY[0x1E69E6158];
  *(v341 + 80) = v343;
  *(v341 + 88) = v344;
  *(v341 + 96) = 1313821514;
  *(v341 + 104) = 0xE400000000000000;
  *(v341 + 120) = v342;
  *(v341 + 128) = 0x72756F7365524657;
  *(v341 + 168) = v342;
  v345 = v342;
  *(v341 + 136) = 0xEF7373616C436563;
  *(v341 + 144) = 0xD00000000000001BLL;
  v346 = v424;
  *(v341 + 152) = v424;
  *(v340 + 32) = sub_1CA94C1E8();
  v347 = swift_allocObject();
  *(v347 + 16) = v430;
  strcpy((v347 + 32), "WFParameterKey");
  *(v347 + 47) = -18;
  strcpy((v347 + 48), "WFHTTPMethod");
  *(v347 + 61) = 0;
  *(v347 + 62) = -5120;
  v348 = v428;
  *(v347 + 72) = v345;
  *(v347 + 80) = v348;
  v349 = v419;
  *(v347 + 88) = v420;
  *(v347 + 96) = 15649;
  *(v347 + 104) = 0xE200000000000000;
  v350 = v418;
  *(v347 + 120) = v345;
  *(v347 + 128) = v350;
  *(v347 + 136) = v349;
  *(v347 + 144) = &unk_1F4A06FC8;
  *(v347 + 168) = v438;
  *(v347 + 176) = 0x72756F7365524657;
  *(v347 + 216) = v345;
  *(v347 + 184) = 0xEF7373616C436563;
  *(v347 + 192) = 0xD00000000000001BLL;
  *(v347 + 200) = v346;
  *(v340 + 40) = sub_1CA94C1E8();
  *(v310 + 304) = v426;
  *(v310 + 280) = v340;
  sub_1CA94C1E8();
  v437[10] = sub_1CA2F864C();
  v351 = swift_allocObject();
  *(v351 + 16) = xmmword_1CA981370;
  *(v351 + 32) = v412;
  *(v351 + 40) = 0xD000000000000019;
  *(v351 + 48) = 0x80000001CA99B030;
  v352 = v408;
  *(v351 + 64) = v345;
  *(v351 + 72) = v352;
  *(v351 + 80) = v350;
  *(v351 + 88) = 0x80000001CA9CEA10;
  v353 = v409;
  *(v351 + 104) = v345;
  *(v351 + 112) = v353;
  *&v427 = sub_1CA94C438();
  v423 = v354;
  v355 = sub_1CA94C438();
  v417 = v356;
  v435 = &v402;
  MEMORY[0x1EEE9AC00](v355);
  v357 = &v402 - v444;
  sub_1CA948D98();
  v358 = v441;
  v359 = [v441 bundleURL];
  v416 = &v402;
  MEMORY[0x1EEE9AC00](v359);
  v360 = v442;
  sub_1CA948B68();

  v361 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v351 + 120) = sub_1CA2F9F14(v427, v423, v355, v417, 0, 0, v357, &v402 - v360);
  v362 = v406;
  *(v351 + 144) = v439;
  *(v351 + 152) = v362;
  *&v427 = sub_1CA94C438();
  v423 = v363;
  v364 = sub_1CA94C438();
  v417 = v365;
  v435 = &v402;
  MEMORY[0x1EEE9AC00](v364);
  v366 = &v402 - v444;
  sub_1CA948D98();
  v367 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v367);
  sub_1CA948B68();

  v368 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v351 + 160) = sub_1CA2F9F14(v427, v423, v364, v417, 0, 0, v366, &v402 - v360);
  v369 = v410;
  *(v351 + 184) = v439;
  *(v351 + 192) = v369;
  v370 = swift_allocObject();
  *(v370 + 16) = v411;
  v371 = swift_allocObject();
  *(v371 + 16) = v431;
  strcpy((v371 + 32), "WFParameterKey");
  *(v371 + 47) = -18;
  strcpy((v371 + 48), "WFHTTPBodyType");
  *(v371 + 63) = -18;
  v372 = MEMORY[0x1E69E6158];
  v373 = v421;
  v374 = v422;
  *(v371 + 72) = MEMORY[0x1E69E6158];
  *(v371 + 80) = v373;
  *(v371 + 88) = v374;
  *(v371 + 96) = 1701603654;
  *(v371 + 104) = 0xE400000000000000;
  *(v371 + 120) = v372;
  *(v371 + 128) = 0x72756F7365524657;
  *(v371 + 168) = v372;
  *(v371 + 136) = 0xEF7373616C436563;
  *(v371 + 144) = 0xD00000000000001BLL;
  v375 = v424;
  *(v371 + 152) = v424;
  *(v370 + 32) = sub_1CA94C1E8();
  v376 = swift_allocObject();
  *(v376 + 16) = v430;
  strcpy((v376 + 32), "WFParameterKey");
  *(v376 + 47) = -18;
  strcpy((v376 + 48), "WFHTTPMethod");
  *(v376 + 61) = 0;
  *(v376 + 62) = -5120;
  v377 = v428;
  *(v376 + 72) = v372;
  *(v376 + 80) = v377;
  v378 = v419;
  *(v376 + 88) = v420;
  *(v376 + 96) = 15649;
  *(v376 + 104) = 0xE200000000000000;
  v379 = v418;
  *(v376 + 120) = v372;
  *(v376 + 128) = v379;
  *(v376 + 136) = v378;
  *(v376 + 144) = &unk_1F4A06FF8;
  *(v376 + 168) = v438;
  *(v376 + 176) = 0x72756F7365524657;
  *(v376 + 216) = v372;
  *(v376 + 184) = 0xEF7373616C436563;
  *(v376 + 192) = 0xD00000000000001BLL;
  *(v376 + 200) = v375;
  *(v370 + 40) = sub_1CA94C1E8();
  *(v351 + 224) = v426;
  *(v351 + 200) = v370;
  sub_1CA94C1E8();
  v380 = sub_1CA2F864C();
  v381 = v437;
  v437[11] = v380;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v383 = v429;
  v429[50] = v381;
  v383[53] = v382;
  v383[54] = @"ParameterSummary";
  v384 = @"ParameterSummary";
  v385 = sub_1CA94C438();
  v387 = v386;
  v388 = sub_1CA94C438();
  v390 = v389;
  MEMORY[0x1EEE9AC00](v388);
  v391 = &v402 - v444;
  sub_1CA948D98();
  v392 = [v441 bundleURL];
  MEMORY[0x1EEE9AC00](v392);
  v393 = &v402 - v442;
  sub_1CA948B68();

  v394 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v395 = sub_1CA2F9F14(v385, v387, v388, v390, 0, 0, v391, v393);
  v396 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v397 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v398 = v429;
  v429[55] = v396;
  v398[58] = v397;
  v398[59] = @"RequiredResources";
  v398[60] = &unk_1F4A07028;
  v398[63] = v438;
  v398[64] = @"ResidentCompatible";
  v398[68] = MEMORY[0x1E69E6370];
  *(v398 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v399 = @"RequiredResources";
  v400 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5738E4()
{
  v227 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9CEAE0;
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
  v238 = v12;
  v236 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v217 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v234 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v235 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v237 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v217 - v237;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v232 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v233 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v230 = &v217;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v217 - v236;
  sub_1CA948D98();
  v34 = [v234 bundleURL];
  v231 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v217 - v237;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v232;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v233;
  v40 = sub_1CA6B3784();
  v41 = v231;
  v231[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconColor";
  v41[25] = 1953392980;
  v41[26] = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"IconSymbol";
  v41[30] = 0x697966696E67616DLL;
  v41[31] = 0xEF7373616C67676ELL;
  v41[33] = v42;
  v41[34] = @"IconSymbolColor";
  v41[35] = 1702194242;
  v41[36] = 0xE400000000000000;
  v41[38] = v42;
  v41[39] = @"Input";
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v225 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 0;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x547475706E494657;
  *(v44 + 104) = 0xEB00000000747865;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v226;
  *(v44 + 192) = &unk_1F4A07098;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"IconSymbolColor";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v43[40] = v50;
  v43[43] = v51;
  v43[44] = @"InputPassthrough";
  *(v43 + 360) = 1;
  v43[48] = v45;
  v43[49] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v217 - v236;
  sub_1CA948D98();
  v61 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v217 - v237;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v231;
  v231[50] = v64;
  v65[53] = v232;
  v65[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1CA981360;
  v228 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  v230 = v66;
  *(v66 + 16) = xmmword_1CA981380;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000016;
  *(v66 + 48) = 0x80000001CA99C4A0;
  v67 = MEMORY[0x1E69E6158];
  *(v66 + 64) = MEMORY[0x1E69E6158];
  *(v66 + 72) = @"DefaultValue";
  *(v66 + 80) = 0x656C676F6F47;
  *(v66 + 88) = 0xE600000000000000;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Items";
  v233 = swift_allocObject();
  *(v233 + 1) = xmmword_1CA981720;
  v223 = @"Class";
  v68 = @"Parameters";
  v69 = @"DefaultValue";
  v70 = @"Items";
  v71 = sub_1CA94C438();
  v221 = v72;
  v222 = v71;
  v220 = sub_1CA94C438();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v220);
  v75 = v236;
  sub_1CA948D98();
  v76 = v234;
  v77 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v217 - v237;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v222, v221, v220, v74, 0, 0, &v217 - v75, v78);
  v81 = v233;
  v233[4] = v80;
  v82 = sub_1CA94C438();
  v220 = v83;
  v221 = v82;
  v84 = sub_1CA94C438();
  v219 = v85;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v84);
  sub_1CA948D98();
  v86 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v237;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81[5] = sub_1CA2F9F14(v221, v220, v84, v219, 0, 0, &v217 - v75, &v217 - v87);
  v89 = sub_1CA94C438();
  v220 = v90;
  v221 = v89;
  v91 = sub_1CA94C438();
  v219 = v92;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v236;
  sub_1CA948D98();
  v94 = v234;
  v95 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v221, v220, v91, v219, 0, 0, &v217 - v93, &v217 - v87);
  v98 = v233;
  v233[6] = v97;
  v99 = sub_1CA94C438();
  v220 = v100;
  v221 = v99;
  v101 = sub_1CA94C438();
  v219 = v102;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948D98();
  v103 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v237;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98[7] = sub_1CA2F9F14(v221, v220, v101, v219, 0, 0, &v217 - v93, &v217 - v104);
  v106 = sub_1CA94C438();
  v220 = v107;
  v221 = v106;
  v108 = sub_1CA94C438();
  v219 = v109;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v236;
  sub_1CA948D98();
  v111 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v221, v220, v108, v219, 0, 0, &v217 - v110, &v217 - v104);
  v114 = v233;
  v233[8] = v113;
  v115 = sub_1CA94C438();
  v220 = v116;
  v221 = v115;
  v117 = sub_1CA94C438();
  v219 = v118;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v217 - v110;
  sub_1CA948D98();
  v120 = v234;
  v121 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v217 - v237;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114[9] = sub_1CA2F9F14(v221, v220, v117, v219, 0, 0, v119, v122);
  v124 = sub_1CA94C438();
  v220 = v125;
  v221 = v124;
  v126 = sub_1CA94C438();
  v128 = v127;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v126);
  v129 = v236;
  sub_1CA948D98();
  v130 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = v237;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v221, v220, v126, v128, 0, 0, &v217 - v129, &v217 - v131);
  v134 = v233;
  v233[10] = v133;
  v135 = sub_1CA94C438();
  v220 = v136;
  v221 = v135;
  v137 = sub_1CA94C438();
  v219 = v138;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948D98();
  v139 = [v120 bundleURL];
  v218 = &v217;
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134[11] = sub_1CA2F9F14(v221, v220, v137, v219, 0, 0, &v217 - v129, &v217 - v131);
  v141 = sub_1CA94C438();
  v220 = v142;
  v221 = v141;
  v143 = sub_1CA94C438();
  v219 = v144;
  v222 = &v217;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v236;
  sub_1CA948D98();
  v146 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v221, v220, v143, v219, 0, 0, &v217 - v145, &v217 - v131);
  v149 = v233;
  v233[12] = v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v151 = v230;
  v230[15] = v149;
  v151[18] = v150;
  v151[19] = @"Key";
  v151[20] = 0xD000000000000016;
  v151[21] = 0x80000001CA9CED70;
  v151[23] = MEMORY[0x1E69E6158];
  v151[24] = @"Label";
  v152 = @"Key";
  v153 = @"Label";
  v233 = v152;
  v222 = v153;
  v154 = sub_1CA94C438();
  v219 = v155;
  v220 = v154;
  v156 = sub_1CA94C438();
  v158 = v157;
  v221 = &v217;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v217 - v145;
  sub_1CA948D98();
  v160 = v234;
  v161 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = v237;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v220, v219, v156, v158, 0, 0, v159, &v217 - v162);
  v165 = v230;
  v230[25] = v164;
  v166 = v232;
  *(v165 + 224) = v232;
  *(v165 + 232) = @"Placeholder";
  v221 = @"Placeholder";
  v167 = sub_1CA94C438();
  v218 = v168;
  v219 = v167;
  v169 = sub_1CA94C438();
  v217 = v170;
  v220 = &v217;
  MEMORY[0x1EEE9AC00](v169);
  v171 = &v217 - v236;
  sub_1CA948D98();
  v172 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v219, v218, v169, v217, 0, 0, v171, &v217 - v162);
  v175 = v230;
  v230[33] = v166;
  *(v175 + 240) = v174;
  _s3__C3KeyVMa_0(0);
  v220 = v176;
  v219 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v229 + 32) = sub_1CA2F864C();
  v177 = swift_allocObject();
  *(v177 + 16) = v225;
  *(v177 + 32) = v223;
  *(v177 + 40) = 0xD000000000000014;
  *(v177 + 48) = 0x80000001CA99B500;
  v178 = MEMORY[0x1E69E6158];
  v179 = v233;
  *(v177 + 64) = MEMORY[0x1E69E6158];
  *(v177 + 72) = v179;
  *(v177 + 80) = 0x547475706E494657;
  *(v177 + 88) = 0xEB00000000747865;
  v180 = v222;
  *(v177 + 104) = v178;
  *(v177 + 112) = v180;
  v230 = sub_1CA94C438();
  *&v225 = v181;
  v182 = sub_1CA94C438();
  v224 = v183;
  v233 = &v217;
  MEMORY[0x1EEE9AC00](v182);
  v184 = v236;
  sub_1CA948D98();
  v185 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  v186 = v237;
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v188 = sub_1CA2F9F14(v230, v225, v182, v224, 0, 0, &v217 - v184, &v217 - v186);
  v189 = v232;
  *(v177 + 120) = v188;
  v190 = v221;
  *(v177 + 144) = v189;
  *(v177 + 152) = v190;
  v230 = sub_1CA94C438();
  *&v225 = v191;
  v224 = sub_1CA94C438();
  v193 = v192;
  v233 = &v217;
  MEMORY[0x1EEE9AC00](v224);
  sub_1CA948D98();
  v194 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v230, v225, v224, v193, 0, 0, &v217 - v184, &v217 - v186);
  *(v177 + 184) = v189;
  *(v177 + 160) = v196;
  sub_1CA94C1E8();
  v197 = sub_1CA2F864C();
  v198 = v229;
  *(v229 + 40) = v197;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v200 = v231;
  v231[55] = v198;
  v200[58] = v199;
  v200[59] = @"ParameterSummary";
  v201 = @"ParameterSummary";
  v202 = sub_1CA94C438();
  v204 = v203;
  v205 = sub_1CA94C438();
  v207 = v206;
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948D98();
  v208 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v217 - v237;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v202, v204, v205, v207, 0, 0, &v217 - v184, v209);
  v212 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v213 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v214 = v231;
  v231[60] = v212;
  v214[63] = v213;
  v214[64] = @"RequiredResources";
  v214[68] = v226;
  v214[65] = &unk_1F4A070C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v215 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5752AC()
{
  v35 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA9813C0;
  *(v6 + 32) = 0x656C7069746C754DLL;
  *(v6 + 40) = 0xE800000000000000;
  v7 = MEMORY[0x1E69E6370];
  *(v6 + 48) = 1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x6465726975716552;
  *(v6 + 88) = 0xE800000000000000;
  *(v6 + 96) = 1;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0x7365707954;
  *(v6 + 136) = 0xE500000000000000;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v6 + 168) = v34;
  *(v6 + 144) = &unk_1F4A07178;
  v8 = @"Input";
  v9 = sub_1CA94C1E8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 120) = v9;
  *(inited + 144) = v10;
  *(inited + 152) = @"Name";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  v29 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v28;
  *(inited + 184) = v29;
  *(inited + 192) = @"RequiredResources";
  *(inited + 224) = v34;
  *(inited + 200) = &unk_1F4A071C8;
  v30 = @"RequiredResources";
  v31 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v31;
  *(inited + 240) = 0xD000000000000017;
  *(inited + 248) = 0x80000001CA9CEEB0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA575728()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  switch([v1 valueType])
  {
    case 0uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        goto LABEL_24;
      }

      v9 = [v8 variableString];
      v10 = swift_unknownObjectRelease();
      v11 = OUTLINED_FUNCTION_20_22(v10, sel_userVisibleStringsForUseCase_);
      OUTLINED_FUNCTION_30();
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      OUTLINED_FUNCTION_6_38();
      sub_1CA94C8F8();

      goto LABEL_23;
    case 1uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA576748();
      goto LABEL_11;
    case 2uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA5768A8();
LABEL_11:
      swift_unknownObjectRelease();
      return;
    case 3uLL:
    case 4uLL:
      goto LABEL_25;
    case 5uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {
        goto LABEL_24;
      }

      v18 = [v17 variable];
      v19 = swift_unknownObjectRelease();
      v0 = OUTLINED_FUNCTION_20_22(v19, sel_userVisibleStringsForUseCase_);

      goto LABEL_22;
    case 6uLL:
      if (![v1 state])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v0 = [v20 userVisibleStringsForUseCase_];
        swift_unknownObjectRelease();
LABEL_22:
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        OUTLINED_FUNCTION_6_38();
        sub_1CA94C8F8();
LABEL_23:
      }

      else
      {
LABEL_24:
        swift_unknownObjectRelease();
LABEL_25:
        if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
        {

LABEL_15:
          sub_1CA2E85F8();
        }
      }

      return;
    default:
      v12 = *MEMORY[0x1E69E1138];
      sub_1CA949C58();
      v13 = sub_1CA949F68();
      v14 = sub_1CA94CC28();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_13_28(v15);
        OUTLINED_FUNCTION_7_33(&dword_1CA256000, v16, v14, "Incorrect parameter state class");
        OUTLINED_FUNCTION_60();
      }

      (*(v5 + 8))(v1, v2);
      if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
      {
        goto LABEL_15;
      }

      return;
  }
}

id sub_1CA575AFC()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  switch([v35 valueType])
  {
    case 0uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      v7 = OUTLINED_FUNCTION_8_25();
      if (!v7)
      {
        goto LABEL_22;
      }

      v8 = [v7 variableString];
      OUTLINED_FUNCTION_40();
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v9 = sub_1CA94C1A8();
      v10 = [v0 rewrittenWithStrings_];

      sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
      v36 = v10;
      v11 = v10;
      v12.variableString.super.isa = &v36;
      v13 = WFVariableStringParameterState.init(variableString:)(v12);
      v14 = [objc_allocWithZone(WFPropertyListParameterValue) initWithStringState_];
      swift_unknownObjectRelease();

      return v14;
    case 1uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA576A08();
      v17 = v19;
      v18 = [objc_allocWithZone(WFPropertyListParameterValue) initWithDictionaryState_];
      goto LABEL_11;
    case 2uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      if (!OUTLINED_FUNCTION_8_25())
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_87();
      sub_1CA576BFC();
      v17 = v16;
      v18 = [objc_allocWithZone(WFPropertyListParameterValue) initWithArrayState_];
LABEL_11:
      v20 = v18;
      swift_unknownObjectRelease();

      result = v20;
      break;
    case 3uLL:
    case 4uLL:
      goto LABEL_23;
    case 5uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        goto LABEL_22;
      }

      v27 = [v26 variable];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v28 = sub_1CA94C1A8();
      v29 = OUTLINED_FUNCTION_20_22(v28, sel_rewrittenWithStrings_);

      v30 = [objc_allocWithZone(WFVariableParameterState) initWithVariable_];
      v31 = [objc_allocWithZone(WFPropertyListParameterValue) initWithType:5 state:v30];
      swift_unknownObjectRelease();

      result = v31;
      break;
    case 6uLL:
      if (![v35 state])
      {
        goto LABEL_23;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        v32 = sub_1CA94C1A8();
        v33 = OUTLINED_FUNCTION_20_22(v32, sel_rewrittenWithStrings_);

        v34 = [objc_allocWithZone(WFPropertyListParameterValue) initWithChooseFromMenuItemState_];
        swift_unknownObjectRelease();

        result = v34;
      }

      else
      {
LABEL_22:
        swift_unknownObjectRelease();
LABEL_23:

        result = v35;
      }

      break;
    default:
      v21 = *MEMORY[0x1E69E1138];
      sub_1CA949C58();
      v22 = sub_1CA949F68();
      v23 = sub_1CA94CC28();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_13_28(v24);
        OUTLINED_FUNCTION_7_33(&dword_1CA256000, v25, v23, "Incorrect parameter state class");
        OUTLINED_FUNCTION_60();
      }

      (*(v4 + 8))(v0, v1);
      goto LABEL_23;
  }

  return result;
}

void sub_1CA576058(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_30();
  v5 = sub_1CA949F78();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v11 = *a3;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = [v13 values];
    sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
    OUTLINED_FUNCTION_5_3();
    v15 = sub_1CA94C658();

    v16 = sub_1CA25B410();
    if (v16)
    {
      v17 = v16;
      if (v16 < 1)
      {
        __break(1u);
      }

      else
      {
        v18 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1CCAA22D0](v18, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          ++v18;
          sub_1CA575728();
          sub_1CA342840(v21);
        }

        while (v17 != v18);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v22 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v23 = sub_1CA949F68();
    v24 = sub_1CA94CC28();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_13_28(v25);
      OUTLINED_FUNCTION_7_33(&dword_1CA256000, v26, v24, "Incorrect parameter state class");
      OUTLINED_FUNCTION_60();
    }

    (*(v8 + 8))(v3, v5);
    if (sub_1CA25B410())
    {
      sub_1CA2E85F8();
    }
  }
}

id sub_1CA5762B4()
{
  OUTLINED_FUNCTION_12_25();
  swift_unknownObjectRetain();
  v4 = v3;
  v0(v2, v1);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  OUTLINED_FUNCTION_6_38();
  sub_1CA94C8E8();
  OUTLINED_FUNCTION_87();

  return v5;
}

uint64_t sub_1CA576354(uint64_t a1, uint8_t *a2, uint64_t *a3, unint64_t *a4)
{
  OUTLINED_FUNCTION_30();
  v9 = sub_1CA949F78();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v15 = *a3;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    v28 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v29 = sub_1CA949F68();
    v30 = sub_1CA94CC28();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_13_28(v31);
      _os_log_impl(&dword_1CA256000, v29, v30, "Incorrect parameter state class", a2, 2u);
      OUTLINED_FUNCTION_60();
    }

    (*(v12 + 8))(v5, v9);
    swift_unknownObjectRetain();
    return v4;
  }

  v17 = v16;
  swift_unknownObjectRetain();
  v18 = [v17 values];
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  OUTLINED_FUNCTION_5_3();
  v19 = sub_1CA94C658();

  v20 = sub_1CA25B410();
  if (!v20)
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v32 = sub_1CA25B3D0(0, a4, a3);
    v33 = v27;
    v34 = v32;
    sub_1CA5765FC(v33, &qword_1EC4448E8, off_1E836EE78, &selRef_initWithValues_);
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRelease();
    return v34;
  }

  v21 = v20;
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1CA94D508();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1CCAA22D0](v23, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      sub_1CA575AFC();

      sub_1CA94D4D8();
      v26 = *(v35 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v21 != v23);

    v27 = v35;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1CA5765FC(uint64_t a1, unint64_t *a2, uint64_t *a3, SEL *a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = OUTLINED_FUNCTION_40();
  sub_1CA25B3D0(v9, a2, a3);
  v10 = sub_1CA94C648();

  v11 = [v4 *a4];

  return v11;
}

id sub_1CA5766A0()
{
  OUTLINED_FUNCTION_12_25();
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v3 = sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v4 = v2;
  v5 = v0(v1, v3);
  swift_unknownObjectRelease();

  return v5;
}

void sub_1CA576748()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  v3 = [v1 variable];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userVisibleStringsForUseCase_];
    OUTLINED_FUNCTION_30();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    sub_1CA94C8F8();

LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v6 = [v2 keyValuePairs];
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  OUTLINED_FUNCTION_5_3();
  v7 = sub_1CA94C658();

  v8 = sub_1CA25B410(v7);
  if (!v8)
  {

    goto LABEL_10;
  }

  if (v8 >= 1)
  {
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_18_23();
      }

      v10 = v9;
      v11 = OUTLINED_FUNCTION_9_28();
      v12 = sub_1CA342E28(v11);
      sub_1CA342840(v12);
    }
  }

  __break(1u);
}

void sub_1CA5768A8()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  v3 = [v1 variable];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 userVisibleStringsForUseCase_];
    OUTLINED_FUNCTION_30();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    sub_1CA94C8F8();

LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v6 = [v2 values];
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  OUTLINED_FUNCTION_5_3();
  v7 = sub_1CA94C658();

  v8 = sub_1CA25B410(v7);
  if (!v8)
  {

    goto LABEL_10;
  }

  if (v8 >= 1)
  {
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_18_23();
      }

      v10 = v9;
      v11 = OUTLINED_FUNCTION_9_28();
      v12 = sub_1CA575728(v11);
      sub_1CA342840(v12);
    }
  }

  __break(1u);
}

void sub_1CA576A08()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  if ([v0 variable])
  {
    OUTLINED_FUNCTION_40();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    v2 = sub_1CA94C1A8();
    v3 = [v0 rewrittenWithStrings_];

    [objc_allocWithZone(WFDictionarySubstitutableParameterState) initWithVariable_];
LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v4 = [v1 keyValuePairs];
  sub_1CA25B3D0(0, &qword_1EC4446A8, off_1E836E258);
  OUTLINED_FUNCTION_5_3();
  v5 = sub_1CA94C658();

  v6 = sub_1CA25B410(v5);
  if (!v6)
  {

    v12 = MEMORY[0x1E69E7CC0];
    sub_1CA25B3D0(0, &qword_1EC4465F0, off_1E836E268);
    sub_1CA5765FC(v12, &qword_1EC4446A8, off_1E836E258, &selRef_initWithKeyValuePairs_);
    goto LABEL_10;
  }

  v7 = v6;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1CA94D508();
  if ((v7 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_18_23();
      }

      v9 = v8;
      v10 = OUTLINED_FUNCTION_9_28();
      sub_1CA343248(v10);

      sub_1CA94D4D8();
      v11 = *(v13 + 16);
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D518();
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }
  }

  __break(1u);
}

void sub_1CA576BFC()
{
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_10_26();
  if ([v0 variable])
  {
    OUTLINED_FUNCTION_40();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    OUTLINED_FUNCTION_20_0();
    v2 = sub_1CA94C1A8();
    v3 = [v0 rewrittenWithStrings_];

    [objc_allocWithZone(WFArraySubstitutableParameterState) initWithVariable_];
LABEL_10:
    OUTLINED_FUNCTION_17_16();
    return;
  }

  v4 = [v1 values];
  sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
  OUTLINED_FUNCTION_5_3();
  v5 = sub_1CA94C658();

  v6 = sub_1CA25B410(v5);
  if (!v6)
  {

    v12 = MEMORY[0x1E69E7CC0];
    sub_1CA25B3D0(0, &qword_1EC4465F8, off_1E836DE50);
    sub_1CA5765FC(v12, &qword_1EC4448E8, off_1E836EE78, &selRef_initWithValues_);
    goto LABEL_10;
  }

  v7 = v6;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1CA94D508();
  if ((v7 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_19_20();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_18_23();
      }

      v9 = v8;
      v10 = OUTLINED_FUNCTION_9_28();
      sub_1CA575AFC(v10);

      sub_1CA94D4D8();
      v11 = *(v13 + 16);
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D518();
      OUTLINED_FUNCTION_15_18();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }
  }

  __break(1u);
}

id sub_1CA576E24()
{
  v118 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFNumberAction");
  *(inited + 55) = -18;
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
  v123 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = v12;
  v13 = &v111 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v122 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v119 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v111 - v119;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v115 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v116 = &v111;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v111 - v123;
  sub_1CA948D98();
  v33 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v111 - v119;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v115, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v117;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x7265626D756ELL;
  *(inited + 248) = 0xE600000000000000;
  *(inited + 264) = v38;
  *(inited + 272) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v111 - v123;
  sub_1CA948D98();
  v51 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v111 - v119;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 344) = v121;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 0;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v116 = v57;
  v58 = sub_1CA94C438();
  v60 = v59;
  v117 = &v111;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v111 - v123;
  sub_1CA948D98();
  v62 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v111 - v119;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v56, v116, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v121;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 192) = &unk_1F4A07238;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA9813B0;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981380;
  *(v68 + 32) = @"AllowsDecimalNumbers";
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD000000000000016;
  *(v68 + 88) = 0x80000001CA99C180;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Key";
  *(v68 + 120) = 0xD000000000000014;
  *(v68 + 128) = 0x80000001CA9CEF70;
  *(v68 + 144) = v65;
  *(v68 + 152) = @"Label";
  v69 = @"Parameters";
  v70 = @"AllowsDecimalNumbers";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438();
  v113 = v75;
  v114 = v74;
  v76 = sub_1CA94C438();
  v112 = v77;
  v115 = &v111;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v111 - v123;
  sub_1CA948D98();
  v79 = v120;
  v80 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = v119;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v114, v113, v76, v112, 0, 0, v78, &v111 - v81);
  *(v68 + 184) = v121;
  *(v68 + 192) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438();
  v113 = v85;
  v114 = v84;
  v86 = sub_1CA94C438();
  v112 = v87;
  v115 = &v111;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v111 - v123;
  sub_1CA948D98();
  v89 = [v79 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 200) = sub_1CA2F9F14(v114, v113, v86, v112, 0, 0, v88, &v111 - v81);
  *(v68 + 224) = v121;
  *(v68 + 232) = @"TextAlignment";
  *(v68 + 264) = MEMORY[0x1E69E6158];
  *(v68 + 240) = 0x7468676952;
  *(v68 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v91 = @"TextAlignment";
  sub_1CA94C1E8();
  v92 = sub_1CA2F864C();
  v93 = v117;
  v117[4] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v93;
  *(inited + 424) = v94;
  *(inited + 432) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v121 = &v111;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v111 - v123;
  sub_1CA948D98();
  v103 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v111 - v119;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v107;
  *(inited + 464) = v108;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v109 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t TriggerConfigurationError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA577D5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C756C;

  return ToolKitRepresentableTrigger.resolveParameter(withKey:searchTerm:)();
}

uint64_t static WFTrigger.toolKitRepresentableTriggers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446608, &qword_1CA98B808);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA98B7F0;
  *(v0 + 32) = sub_1CA25B3D0(0, &qword_1EC446610, off_1E836F508);
  *(v0 + 40) = &protocol witness table for WFWifiTrigger;
  *(v0 + 48) = sub_1CA25B3D0(0, &qword_1EC446618, off_1E836DEB8);
  *(v0 + 56) = &protocol witness table for WFBluetoothTrigger;
  *(v0 + 64) = sub_1CA25B3D0(0, &qword_1EC446620, off_1E836DF00);
  *(v0 + 72) = &protocol witness table for WFCarPlayConnectionTrigger;
  *(v0 + 80) = sub_1CA25B3D0(0, &qword_1EC446628, off_1E836E328);
  *(v0 + 88) = &protocol witness table for WFExternalDisplayTrigger;
  *(v0 + 96) = sub_1CA25B3D0(0, &qword_1EC446630, off_1E836EE30);
  *(v0 + 104) = &protocol witness table for WFPlugInTrigger;
  *(v0 + 112) = sub_1CA25B3D0(0, &qword_1EC446638, off_1E836EB70);
  *(v0 + 120) = &protocol witness table for WFLowPowerModeTrigger;
  *(v0 + 128) = sub_1CA25B3D0(0, &qword_1EC446640, off_1E836DDF0);
  *(v0 + 136) = &protocol witness table for WFAirplaneModeTrigger;
  *(v0 + 144) = sub_1CA25B3D0(0, &qword_1EC446648, off_1E836F328);
  *(v0 + 152) = &protocol witness table for WFStageManagerTrigger;
  *(v0 + 160) = sub_1CA25B3D0(0, &qword_1EC446650, off_1E836E198);
  *(v0 + 168) = &protocol witness table for WFDNDTrigger;
  *(v0 + 176) = sub_1CA25B3D0(0, &qword_1EC446658, off_1E836DE08);
  *(v0 + 184) = &protocol witness table for WFAppInFocusTrigger;
  *(v0 + 192) = sub_1CA25B3D0(0, &qword_1EC446660, off_1E836EB58);
  *(v0 + 200) = &protocol witness table for WFLocationTrigger;
  *(v0 + 208) = sub_1CA25B3D0(0, &qword_1EC446668, off_1E836EBB8);
  *(v0 + 216) = &protocol witness table for WFMessageTrigger;
  *(v0 + 224) = sub_1CA25B3D0(0, &qword_1EC446670, off_1E836E2E0);
  *(v0 + 232) = &protocol witness table for WFEmailTrigger;
  *(v0 + 240) = sub_1CA25B3D0(0, &qword_1EC446678, off_1E836F5C8);
  *(v0 + 248) = &protocol witness table for WFWorkoutTrigger;
  *(v0 + 256) = sub_1CA25B3D0(0, &qword_1EC446680, off_1E836EE60);
  *(v0 + 264) = &protocol witness table for WFPredictedLocationTransitionTrigger;
  *(v0 + 272) = sub_1CA25B3D0(0, &qword_1EC446688, off_1E836DEA8);
  *(v0 + 280) = &protocol witness table for WFBatteryLevelTrigger;
  *(v0 + 288) = sub_1CA25B3D0(0, &qword_1EC446690, off_1E836F2C8);
  *(v0 + 296) = &protocol witness table for WFSleepTrigger;
  *(v0 + 304) = sub_1CA25B3D0(0, &qword_1EC446698, off_1E836EBF8);
  *(v0 + 312) = &protocol witness table for WFNFCTrigger;
  *(v0 + 320) = sub_1CA25B3D0(0, &qword_1EC4466A0, off_1E836F318);
  *(v0 + 328) = &protocol witness table for WFSoundRecognitionTrigger;
  *(v0 + 336) = sub_1CA25B3D0(0, &qword_1EC4466A8, off_1E836DDF8);
  *(v0 + 344) = &protocol witness table for WFAlarmTrigger;
  *(v0 + 352) = sub_1CA25B3D0(0, &qword_1EC4466B0, off_1E836F500);
  *(v0 + 360) = &protocol witness table for WFWalletTransactionTrigger;
  *(v0 + 368) = sub_1CA25B3D0(0, &qword_1EC4466B8, off_1E836F498);
  *(v0 + 376) = &protocol witness table for WFUserFocusActivityTrigger;
  return v0;
}

void sub_1CA578170()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1CA94ACC8();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_0();
  v11 = sub_1CA94AD08();
  v12 = OUTLINED_FUNCTION_18_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CA9813C0;
  v19 = *MEMORY[0x1E69E0FB0];
  *(v18 + 32) = sub_1CA94C3A8();
  *(v18 + 40) = v20;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = NSStringFromClass(ObjCClassFromMetadata);
  v23 = sub_1CA94C3A8();
  v25 = v24;

  *(v18 + 48) = v23;
  *(v18 + 56) = v25;
  *(v18 + 64) = v6;
  *(v18 + 72) = v4;
  sub_1CA94C218();
  v26 = OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_33_12();
  sub_1CA25C3BC(v28, &qword_1EC443E20, &qword_1CA986220);
  sub_1CA94C308();

  v29 = [(objc_class *)ObjCClassFromMetadata localizedDisplayNameWithContext:*(v2 + *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 28))];
  sub_1CA94C3A8();

  v30 = [(objc_class *)ObjCClassFromMetadata localizedDisplayExplanation];
  sub_1CA94C3A8();

  sub_1CA578424();
  sub_1CA94C218();
  sub_1CA2B895C();
  sub_1CA5786A8(v2, v17);
  if (v0)
  {
  }

  else
  {
    sub_1CA578884();
    sub_1CA94AF68();
  }

  OUTLINED_FUNCTION_107();
}

void sub_1CA578424()
{
  OUTLINED_FUNCTION_37_0();
  v2 = sub_1CA94AD08();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = (v9 - v8);
  v11 = sub_1CA94AD48();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  if ([swift_getObjCClassFromMetadata() isAllowedToRunAutomatically])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
    v17 = sub_1CA94B258();
    OUTLINED_FUNCTION_12(v17);
    v19 = *(v18 + 72);
    OUTLINED_FUNCTION_45_9();
    v20 = OUTLINED_FUNCTION_149_2();
    *(v20 + 16) = xmmword_1CA981310;
    v21 = *MEMORY[0x1E69DB030];
    v22 = sub_1CA94AD98();
    OUTLINED_FUNCTION_0_1(v22);
    (*(v23 + 104))(v0, v21);
    v24 = *MEMORY[0x1E69DAFA8];
    v25 = OUTLINED_FUNCTION_96_6(v14);
    v26(v25);
    sub_1CA94ADC8();
    v27 = swift_allocBox();
    sub_1CA94AD38();
    *v10 = v27;
    (*(v5 + 104))(v10, *MEMORY[0x1E69DAF30], v2);
    sub_1CA57ABD8(v10, 0xD000000000000014, 0x80000001CA9CF4D0, v20 + v1);
    v28 = *(v5 + 8);
    v29 = OUTLINED_FUNCTION_106();
    v30(v29);
    (*(v14 + 8))(v0, v11);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA5786A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (![swift_getObjCClassFromMetadata() shortcutInputContentItemClass])
  {
    v10 = sub_1CA94ADC8();
    v8 = swift_allocBox();
    v12 = v11;
    v13 = sub_1CA94AD98();
    v14 = swift_allocBox();
    v15 = *MEMORY[0x1E69DB048];
    OUTLINED_FUNCTION_39(v13);
    (*(v16 + 104))();
    *v12 = v14;
    v17 = *MEMORY[0x1E69DB0B0];
    OUTLINED_FUNCTION_39(v10);
    (*(v18 + 104))(v12);
LABEL_6:
    *a2 = v8;
    v19 = *MEMORY[0x1E69DAF30];
    v20 = sub_1CA94AD08();
    OUTLINED_FUNCTION_0_1(v20);
    return (*(v21 + 104))(a2, v19);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (dynamic_cast_existential_1_conditional(ObjCClassMetadata))
  {
    OUTLINED_FUNCTION_194();
    sub_1CA94ADC8();
    v8 = swift_allocBox();
    (*(v4 + 8))(a1, v3, v4);
    if (v2)
    {
      return swift_deallocBox();
    }

    goto LABEL_6;
  }

  sub_1CA5892EC();
  swift_allocError();
  *v22 = ObjCClassMetadata;
  return swift_willThrow();
}

void sub_1CA578884()
{
  OUTLINED_FUNCTION_37_0();
  v0 = sub_1CA94ACC8();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  sub_1CA589348(&qword_1EC4468A0, MEMORY[0x1E69DAEB0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468A8, &unk_1CA98BED8);
  sub_1CA25C3BC(&qword_1EC4468B0, &qword_1EC4468A8, &unk_1CA98BED8);
  sub_1CA94D2A8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata isAllowedToRunAutomatically])
  {
    sub_1CA94ACB8();
    v8 = OUTLINED_FUNCTION_187();
    sub_1CA2BDCA8(v8, v9);
    v10 = *(v3 + 8);
    v11 = OUTLINED_FUNCTION_106();
    v10(v11);
    v12 = OUTLINED_FUNCTION_130();
    v10(v12);
  }

  if ([ObjCClassFromMetadata requiresNotification])
  {
    sub_1CA94ACA8();
    v13 = OUTLINED_FUNCTION_187();
    sub_1CA2BDCA8(v13, v14);
    v15 = *(v3 + 8);
    v16 = OUTLINED_FUNCTION_106();
    v15(v16);
    v17 = OUTLINED_FUNCTION_130();
    v15(v17);
  }

  if ([ObjCClassFromMetadata isUserInitiated])
  {
    sub_1CA94AC98();
    v18 = OUTLINED_FUNCTION_187();
    sub_1CA2BDCA8(v18, v19);
    v20 = *(v3 + 8);
    v21 = OUTLINED_FUNCTION_106();
    v20(v21);
    v22 = OUTLINED_FUNCTION_130();
    v20(v22);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t *sub_1CA578AE4(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t))
{
  v10 = *MEMORY[0x1E69E0FB0];
  sub_1CA94C3A8();
  sub_1CA94C218();
  v11 = sub_1CA94C468();

  result = (v11 + 1);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1CA379458(result, a1, a2);
    OUTLINED_FUNCTION_108_4();
    sub_1CA27BAF0();
    v13 = sub_1CA94D178();

    if (v13[2] != 2)
    {
      goto LABEL_7;
    }

    v14 = v13[4];
    v15 = v13[5];
    sub_1CA94C218();
    v16 = sub_1CA94C368();

    v17 = NSClassFromString(v16);

    if (!v17 || (swift_getObjCClassMetadata(), sub_1CA25B3D0(0, a3, a4), !swift_dynamicCastMetatype()))
    {
LABEL_7:

      sub_1CA589298();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return a4;
    }

    result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    if (v13[2] >= 2uLL)
    {
      a4 = result;
      v18 = v13[6];
      v19 = v13[7];
      sub_1CA94C218();

      a5(v18, v19);

      return a4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CA578CD0(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v8 = *MEMORY[0x1E69E0FB0];
  sub_1CA94C3A8();
  sub_1CA94C218();
  v9 = sub_1CA94C468();

  result = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    sub_1CA379458(result, a1, a2);
    OUTLINED_FUNCTION_108_4();
    sub_1CA27BAF0();
    v11 = sub_1CA94D178();

    if (v11[2] == 2)
    {
      v12 = v11[4];
      v13 = v11[5];
      sub_1CA94C218();
      v14 = sub_1CA94C368();

      v15 = NSClassFromString(v14);

      if (v15)
      {
        swift_getObjCClassMetadata();
        v16 = OUTLINED_FUNCTION_102_3();
        sub_1CA25B3D0(v16, a3, a4);
        if (swift_dynamicCastMetatype())
        {
          a4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v17 = v11[2];

          if (v17 >= 2)
          {
            return a4;
          }

          __break(1u);
        }
      }
    }

    sub_1CA589298();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return a4;
  }

  __break(1u);
  return result;
}

void sub_1CA578E88()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA94AC18();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v9 = (v8 - v7);
  v10 = sub_1CA94AC88();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v18 = (v16 - v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  if (*(v1 + 16))
  {
    v25 = sub_1CA271BF8();
    if (v26)
    {
      (*(v13 + 16))(v22, *(v1 + 56) + *(v13 + 72) * v25, v10);
      v27 = *(v13 + 32);
      v27(v24, v22, v10);
      v27(v18, v24, v10);
      v28 = *(v13 + 88);
      v29 = OUTLINED_FUNCTION_187();
      if (v30(v29) == *MEMORY[0x1E69DAE70])
      {
        v31 = *(v13 + 96);
        v32 = OUTLINED_FUNCTION_187();
        v33(v32);
        v34 = *v18;
        swift_projectBox();
        v35 = v44;
        v36 = *(v44 + 16);
        v37 = OUTLINED_FUNCTION_76_5();
        v38(v37);
        if ((*(v35 + 88))(v9, v2) == *MEMORY[0x1E69DADC0])
        {
          (*(v35 + 96))(v9, v2);
          v39 = *v9;
        }

        else
        {
          (*(v35 + 8))(v9, v2);
        }
      }

      else
      {
        v40 = *(v13 + 8);
        v41 = OUTLINED_FUNCTION_187();
        v42(v41);
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA57914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CA94AC18();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1CA94AC88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  if (!*(a3 + 16))
  {
    return 0;
  }

  v19 = sub_1CA271BF8();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  (*(v9 + 16))(v16, *(a3 + 56) + *(v9 + 72) * v19, v8);
  v21 = *(v9 + 32);
  v21(v18, v16, v8);
  v21(v13, v18, v8);
  if ((*(v9 + 88))(v13, v8) != *MEMORY[0x1E69DAE70])
  {
    (*(v9 + 8))(v13, v8);
    return 0;
  }

  (*(v9 + 96))(v13, v8);
  v22 = *v13;
  v23 = swift_projectBox();
  v24 = v28;
  (*(v28 + 16))(v7, v23, v4);
  if ((*(v24 + 88))(v7, v4) != *MEMORY[0x1E69DADE0])
  {
    (*(v24 + 8))(v7, v4);

    return 0;
  }

  (*(v24 + 96))(v7, v4);
  v25 = *v7;

  return v25;
}

uint64_t sub_1CA579460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CA94AC18();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1CA94AC88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  if (!*(a3 + 16))
  {
    return 0;
  }

  v19 = sub_1CA271BF8();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  (*(v9 + 16))(v16, *(a3 + 56) + *(v9 + 72) * v19, v8);
  v21 = *(v9 + 32);
  v21(v18, v16, v8);
  v21(v13, v18, v8);
  if ((*(v9 + 88))(v13, v8) != *MEMORY[0x1E69DAE70])
  {
    (*(v9 + 8))(v13, v8);
    return 0;
  }

  (*(v9 + 96))(v13, v8);
  v22 = *v13;
  v23 = swift_projectBox();
  v24 = v29;
  (*(v29 + 16))(v7, v23, v4);
  if ((*(v24 + 88))(v7, v4) != *MEMORY[0x1E69DADF0])
  {
    (*(v24 + 8))(v7, v4);

    return 0;
  }

  (*(v24 + 96))(v7, v4);
  v25 = *v7;
  v26 = v7[1];

  return v25;
}

uint64_t sub_1CA579774@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1CA94AC18();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA94AC88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v18 = sub_1CA271BF8();
  if ((v19 & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v8 + 16))(v15, *(a1 + 56) + *(v8 + 72) * v18, v7);
  v20 = *(v8 + 32);
  v20(v17, v15, v7);
  v20(v12, v17, v7);
  if ((*(v8 + 88))(v12, v7) != *MEMORY[0x1E69DAE70])
  {
    (*(v8 + 8))(v12, v7);
LABEL_8:
    v28 = sub_1CA948CB8();
    v26 = v31;
    v27 = 1;
    return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
  }

  (*(v8 + 96))(v12, v7);
  v21 = *v12;
  v22 = swift_projectBox();
  v23 = v30;
  (*(v30 + 16))(v6, v22, v3);
  if ((*(v23 + 88))(v6, v3) != *MEMORY[0x1E69DADC8])
  {
    (*(v23 + 8))(v6, v3);

    goto LABEL_8;
  }

  (*(v23 + 96))(v6, v3);
  v24 = sub_1CA948CB8();
  v25 = v31;
  (*(*(v24 - 8) + 32))(v31, v6, v24);

  v26 = v25;
  v27 = 0;
  v28 = v24;
  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
}

void sub_1CA579AE8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_1CA94A8C8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = sub_1CA94AC88();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_126_3();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_204();
    v24 = sub_1CA271BF8();
    if (v25)
    {
      v26 = *(v14 + 16);
      v26(v0, *(v2 + 56) + *(v14 + 72) * v24, v11);
      (*(v14 + 32))(v23, v0, v11);
      v26(v19, v23, v11);
      v27 = *(v14 + 88);
      v28 = OUTLINED_FUNCTION_68_3();
      if (v29(v28) == *MEMORY[0x1E69DAE20])
      {
        v30 = *(v14 + 96);
        v31 = OUTLINED_FUNCTION_68_3();
        v32(v31);
        v33 = *v19;
        v34 = swift_projectBox();
        v35 = v42;
        (*(v42 + 16))(v10, v34, v3);

        sub_1CA94A898();
        v36 = *(v35 + 8);
        v37 = OUTLINED_FUNCTION_106();
        v38(v37);
        (*(v14 + 8))(v23, v11);
      }

      else
      {
        v39 = *(v14 + 8);
        v39(v23, v11);
        v40 = OUTLINED_FUNCTION_68_3();
        (v39)(v40);
      }
    }
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA579D8C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1CA94AC88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v15 = sub_1CA271BF8();
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  (*(v5 + 16))(v12, *(a1 + 56) + *(v5 + 72) * v15, v4);
  v17 = *(v5 + 32);
  v17(v14, v12, v4);
  v17(v9, v14, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x1E69DAE18])
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    v23 = sub_1CA94A888();
    v21 = a2;
    v22 = 1;
    return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  }

  (*(v5 + 96))(v9, v4);
  v18 = *v9;
  v19 = sub_1CA94A888();
  v20 = swift_projectBox();
  (*(*(v19 - 8) + 16))(a2, v20, v19);

  v21 = a2;
  v22 = 0;
  v23 = v19;
  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
}

uint64_t sub_1CA579FF0(uint64_t a1, uint64_t a2, void (*a3)(char *, unint64_t, uint64_t))
{
  v66 = a3;
  v53 = sub_1CA94AC18();
  v63 = *(v53 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA94AC88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v67 = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468E8, &unk_1CA98BEF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v48 - v15;
  v17 = sub_1CA94A888();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA579D8C(v66, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1CA2E9314(v16, &qword_1EC4468E8, &unk_1CA98BEF0);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v23 = sub_1CA94A878();
    v24 = *(v23 + 16);
    if (v24)
    {
      v49 = v18;
      v50 = v17;
      v62 = v5;
      v26 = *(v7 + 16);
      v25 = v7 + 16;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v48[1] = v23;
      v28 = v23 + v27;
      v65 = *(v25 + 56);
      v66 = v26;
      v29 = (v25 + 16);
      v30 = (v25 + 72);
      v64 = *MEMORY[0x1E69DAE70];
      v59 = (v25 + 80);
      v60 = (v25 - 8);
      v58 = (v63 + 16);
      v57 = (v63 + 88);
      v56 = *MEMORY[0x1E69DADF0];
      v51 = (v63 + 96);
      v52 = (v63 + 8);
      v63 = MEMORY[0x1E69E7CC0];
      v31 = v53;
      v61 = v21;
      do
      {
        v32 = v67;
        v66(v67, v28, v6);
        (*v29)(v11, v32, v6);
        v33 = (*v30)(v11, v6);
        if (v33 == v64)
        {
          v34 = v25;
          (*v59)(v11, v6);
          v35 = *v11;
          v36 = swift_projectBox();
          v37 = v62;
          (*v58)(v62, v36, v31);
          v38 = (*v57)(v37, v31);
          if (v38 == v56)
          {
            (*v51)(v37, v31);
            v39 = *v37;
            v54 = v37[1];
            v55 = v39;

            v40 = v63;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = *(v40 + 16);
              sub_1CA26DADC();
              v40 = v45;
            }

            v41 = *(v40 + 16);
            if (v41 >= *(v40 + 24) >> 1)
            {
              sub_1CA26DADC();
              v40 = v46;
            }

            *(v40 + 16) = v41 + 1;
            v63 = v40;
            v42 = v40 + 16 * v41;
            v43 = v54;
            *(v42 + 32) = v55;
            *(v42 + 40) = v43;
            v31 = v53;
          }

          else
          {
            (*v52)(v37, v31);
          }

          v25 = v34;
          v21 = v61;
        }

        else
        {
          (*v60)(v11, v6);
        }

        v28 += v65;
        --v24;
      }

      while (v24);

      v18 = v49;
      v17 = v50;
      v22 = v63;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    (*(v18 + 8))(v21, v17);
  }

  return v22;
}

void static WFWifiTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v2 = sub_1CA94AD48();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v59 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v57 = v8 - v7;
  OUTLINED_FUNCTION_25_0();
  v61 = sub_1CA94AD08();
  OUTLINED_FUNCTION_4_12();
  v65 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v64 = sub_1CA94B258();
  v55 = *(v64 - 8);
  v62 = v55;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_6_0();
  v63 = v15 - v14;
  v60 = swift_allocBox();
  v17 = v16;
  v18 = sub_1CA94ADC8();
  v19 = swift_allocBox();
  v21 = v20;
  v22 = sub_1CA94AD98();
  v23 = swift_allocBox();
  v24 = *MEMORY[0x1E69DB060];
  OUTLINED_FUNCTION_39(v22);
  v53 = *(v25 + 104);
  v53();
  *v21 = v23;
  v26 = *MEMORY[0x1E69DB0B0];
  OUTLINED_FUNCTION_39(v18);
  (*(v27 + 104))(v21);
  *v17 = v19;
  v54 = *MEMORY[0x1E69DAF30];
  v52 = *(v65 + 104);
  v52(v17);
  *v1 = v60;
  (v52)(v1, *MEMORY[0x1E69DAF18], v61);
  sub_1CA57ABD8(v1, 0xD000000000000010, 0x80000001CA9CF020, v63);
  v51 = *(v65 + 8);
  v28 = OUTLINED_FUNCTION_141_4();
  v29(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_40();
  v48 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v48);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v50 = *(v30 + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CA97EDF0;
  v58 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v34 = *(v55 + 72);
  v35 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CA97EDF0;
  v56 = v35;
  v37 = v36 + v35;
  v49 = *(v62 + 16);
  v49(v37, v63, v64);
  (v53)(v57, *MEMORY[0x1E69DB030], v22);
  v38 = *MEMORY[0x1E69DAFA8];
  v39 = OUTLINED_FUNCTION_96_6(v59);
  v40(v39);
  swift_allocBox();
  OUTLINED_FUNCTION_99_4();
  sub_1CA94AD38();
  *v1 = v63;
  (v52)(v1, v54, v61);
  sub_1CA57ABD8(v1, 0xD00000000000001ELL, 0x80000001CA9CF040, v37 + v34);
  v51(v1, v61);
  v41 = *(v59 + 8);
  v42 = OUTLINED_FUNCTION_119();
  v43(v42);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    (*(v62 + 8))(v63, v64);
    *(v58 + 16) = 0;
  }

  else
  {
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CA981310;
    v49(v44 + v56, v63, v64);
    OUTLINED_FUNCTION_125_3();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v45 = *(v62 + 8);
    v46 = OUTLINED_FUNCTION_195();
    v47(v46);
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57ABD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v24 = a4;
  v25 = a2;
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4468F0, &qword_1CA9834C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444420, &qword_1CA98BF00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1CA94AD08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CA94B1E8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CA589348(&unk_1EC446900, MEMORY[0x1E69DB338]);
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444428, &qword_1CA9834C8);
  sub_1CA25C3BC(&unk_1EC446910, &qword_1EC444428, &qword_1CA9834C8);
  sub_1CA94D2A8();
  (*(v12 + 16))(v15, v23, v11);
  v18 = sub_1CA94B1D8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  v19 = sub_1CA94B208();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v19);
  return sub_1CA94B218();
}

Swift::Void __swiftcall WFWifiTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  OUTLINED_FUNCTION_16_26();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2 || (v3 = v1, (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v4 = &selRef_setOnConnect_;
LABEL_7:
    v5 = OUTLINED_FUNCTION_17_17(v4);

    [v5 v6];
    return;
  }

  OUTLINED_FUNCTION_11_28();
  v8 = v2 && v3 == v7;
  if (v8 || (OUTLINED_FUNCTION_125_3(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v4 = &selRef_setOnDisconnect_;
    goto LABEL_7;
  }
}

void static WFWifiTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_9_29();
  v2 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v3 = sub_1CA94AF78();
  v5 = sub_1CA578AE4(v3, v4, &qword_1EC446610, off_1E836F508, WFWifiTrigger.updateVariant(withIdentifierSuffix:));
  if (v0)
  {
  }

  else
  {
    v6 = v5;

    v7 = OUTLINED_FUNCTION_74_6();
    if (sub_1CA579FF0(v7, v8, v1))
    {
      v9 = sub_1CA94C648();

      [v6 setSelectedNetworks_];
    }

    sub_1CA578E88();
    if (v10 != 2)
    {
      [v6 setRunAfterConnectionInterruption_];
    }

    v11 = OUTLINED_FUNCTION_74_6();
    if (sub_1CA579FF0(v11, v12, v1))
    {
      v13 = sub_1CA94C648();

      [v6 setSelectedNetworks_];
    }

    sub_1CA578E88();
    if (v14 != 2)
    {
      [v6 setRunAfterConnectionInterruption_];
    }

    v15 = [v6 serializedData];
    if (v15)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v15 = sub_1CA948BF8();
      v16 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v16, v17);
    }

    v18 = OUTLINED_FUNCTION_50_6();
    [v18 v19];

    v20 = OUTLINED_FUNCTION_152_3();
    v21 = OUTLINED_FUNCTION_93_4(v20, sel_setShouldPrompt_);
    v22 = OUTLINED_FUNCTION_65_5(v21, sel_setShouldNotify_);
    v23 = OUTLINED_FUNCTION_65_5(v22, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v23, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57B200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C99BC;

  return ToolKitRepresentableTrigger.resolveParameter(withKey:searchTerm:)();
}

uint64_t sub_1CA57B2F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_118_3();
  v4 = OUTLINED_FUNCTION_107_3();
  *(v4 + 16) = xmmword_1CA9813C0;
  sub_1CA578170();
  if (v0)
  {
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    sub_1CA578170();
    OUTLINED_FUNCTION_8_26();
    sub_1CA578170();
  }

  return v4;
}

uint64_t _sSo18WFBluetoothTriggerC11WorkflowKitE13updateVariant20withIdentifierSuffixySS_tF_0()
{
  OUTLINED_FUNCTION_16_26();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2 || (v3 = v1, (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v4 = &selRef_setOnConnect_;
LABEL_19:
    v11 = OUTLINED_FUNCTION_17_17(v4);

    return [v11 v12];
  }

  OUTLINED_FUNCTION_11_28();
  v6 = v2 && v3 == v5;
  if (v6 || (OUTLINED_FUNCTION_125_3(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
LABEL_18:
    v4 = &selRef_setOnDisconnect_;
    goto LABEL_19;
  }

  v7 = v0 == OUTLINED_FUNCTION_8_26() && v3 == 0xE600000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_13_29(), (result & 1) != 0))
  {
    v9 = OUTLINED_FUNCTION_32_12();
    [v9 v10];
    goto LABEL_18;
  }

  return result;
}

Swift::Void __swiftcall WFPlugInTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  OUTLINED_FUNCTION_16_26();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (v4 = v2, (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v5 = &selRef_setOnEnable_;
LABEL_19:
    v11 = OUTLINED_FUNCTION_17_17(v5);

    [v11 v12];
    return;
  }

  OUTLINED_FUNCTION_11_28();
  v7 = v3 && v4 == v6;
  if (v7 || (OUTLINED_FUNCTION_125_3(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
LABEL_18:
    v5 = &selRef_setOnDisable_;
    goto LABEL_19;
  }

  v8 = v1 == OUTLINED_FUNCTION_8_26() && v4 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v9 = OUTLINED_FUNCTION_32_12();
    [v9 v10];
    goto LABEL_18;
  }
}

void static WFAppInFocusTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_116_4(v3);
  v4 = sub_1CA94ADC8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_37_10();
  v40 = sub_1CA94B258();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v12 = sub_1CA94AD98();
  v13 = swift_allocBox();
  v14 = *MEMORY[0x1E69DB018];
  OUTLINED_FUNCTION_39(v12);
  (*(v15 + 104))();
  *v1 = v13;
  v16 = *MEMORY[0x1E69DB0B0];
  v17 = *(v7 + 104);
  v18 = OUTLINED_FUNCTION_101();
  v19(v18);
  sub_1CA57BE3C(v1, 0x64657463656C6573, 0xEC00000073707041, v2);
  v20 = *(v7 + 8);
  v21 = OUTLINED_FUNCTION_195();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  v36 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v36);
  v24 = *(v23 + 72);
  v26 = *(v25 + 80);
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v39 = *(v10 + 72);
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_140_4(v28, xmmword_1CA981310);
  v38 = *(v10 + 16);
  (v38)(v29 + v27, v2, v40);
  OUTLINED_FUNCTION_104_4();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    v30 = *(v10 + 8);
    v31 = OUTLINED_FUNCTION_30_16();
    v32(v31);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    *(swift_allocObject() + 16) = v37;
    OUTLINED_FUNCTION_49_6();
    v38();
    OUTLINED_FUNCTION_41_11();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    *(swift_allocObject() + 16) = v37;
    OUTLINED_FUNCTION_49_6();
    v38();
    OUTLINED_FUNCTION_8_26();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v33 = *(v10 + 8);
    v34 = OUTLINED_FUNCTION_30_16();
    v35(v34);
  }

  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA57BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v7 = sub_1CA94AD08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocBox();
  v14 = v13;
  v15 = sub_1CA94ADC8();
  v16 = swift_allocBox();
  (*(*(v15 - 8) + 16))(v17, a1, v15);
  *v14 = v16;
  v18 = *(v8 + 104);
  v18(v14, *MEMORY[0x1E69DAF30], v7);
  *v11 = v12;
  v18(v11, *MEMORY[0x1E69DAF18], v7);
  sub_1CA57ABD8(v11, a2, v21, a4);
  return (*(v8 + 8))(v11, v7);
}

Swift::Void __swiftcall WFAppInFocusTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  v1 = withIdentifierSuffix._countAndFlagsBits == 28271 && withIdentifierSuffix._object == 0xE200000000000000;
  if (v1 || (object = withIdentifierSuffix._object, countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits, OUTLINED_FUNCTION_104_4(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
    v4 = &selRef_setOnFocus_;
LABEL_19:
    v9 = OUTLINED_FUNCTION_17_17(v4);

    [v9 v10];
    return;
  }

  v5 = countAndFlagsBits == 6710895 && object == 0xE300000000000000;
  if (v5 || (OUTLINED_FUNCTION_41_11(), (OUTLINED_FUNCTION_13_29() & 1) != 0))
  {
LABEL_18:
    v4 = &selRef_setOnBackground_;
    goto LABEL_19;
  }

  v6 = countAndFlagsBits == OUTLINED_FUNCTION_8_26() && object == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_13_29() & 1) != 0)
  {
    v7 = OUTLINED_FUNCTION_32_12();
    [v7 v8];
    goto LABEL_18;
  }
}

uint64_t WFAppInFocusTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA57C11C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[8] == 0x64657463656C6573 && v0[9] == 0xEC00000073707041;
  if (v1 || (sub_1CA94D7F8() & 1) != 0)
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = WFInstalledAppsEnumerator();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CA588A20;
    *(v6 + 24) = v5;
    v0[6] = sub_1CA588A28;
    v0[7] = v6;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CA57C4B4;
    v0[5] = &block_descriptor_23;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];
    sub_1CA94C218();

    v9 = [v4 swift:v7 firstWhere:?];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (!v9 || (v11 = sub_1CA3AC3E8(v9, &selRef_bundleIdentifier), !v12))
      {
LABEL_13:

        goto LABEL_14;
      }

      isEscapingClosureAtFileLocation = v11;
      v6 = v12;
      v13 = [v0[12] selectedBundleIdentifiers];
      v9 = sub_1CA94C658();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v14 = v9[2];
        v15 = v14 + 1;
        if (v14 >= v9[3] >> 1)
        {
          v23 = v9[2];
          sub_1CA26DADC();
          v14 = v23;
          v9 = v24;
        }

        v16 = v0[12];
        v9[2] = v15;
        v17 = &v9[2 * v14];
        v17[4] = isEscapingClosureAtFileLocation;
        v17[5] = v6;
        v18 = sub_1CA94C648();

        [v16 setSelectedBundleIdentifiers_];

        goto LABEL_13;
      }
    }

    v21 = v9[2];
    sub_1CA26DADC();
    v9 = v22;
    goto LABEL_10;
  }

LABEL_14:
  OUTLINED_FUNCTION_3_6();

  return v19();
}

uint64_t sub_1CA57C3F0(void *a1)
{
  if ([a1 wf:0 isAvailableInContext:?])
  {
    v2 = [a1 localizedName];
    sub_1CA94C3A8();

    sub_1CA27BAF0();
    v3 = sub_1CA94D208();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1CA57C4B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

uint64_t sub_1CA57C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFAppInFocusTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFLocationTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v108 = v1;
  v112 = v0;
  v113 = v4;
  v5 = sub_1CA94AD08();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_85_5();
  v11 = sub_1CA94AD48();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  v116 = sub_1CA94B258();
  v17 = *(v116 - 8);
  v106 = (v116 - 8);
  v107 = v17;
  v111 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v116 - 8);
  OUTLINED_FUNCTION_19();
  v114 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_126_3();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v95 - v23;
  v115 = &v95 - v23;
  v25 = *MEMORY[0x1E69DB080];
  v26 = sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1(v26);
  (*(v27 + 104))(v0, v25);
  v28 = *MEMORY[0x1E69DAFA8];
  v29 = OUTLINED_FUNCTION_96_6(v14);
  v30(v29);
  sub_1CA94ADC8();
  v31 = swift_allocBox();
  sub_1CA94AD38();
  *v2 = v31;
  (*(v8 + 104))(v2, *MEMORY[0x1E69DAF30], v5);
  sub_1CA57ABD8(v2, 0x6E6F697461636F6CLL, 0xE800000000000000, v24);
  v32 = *(v8 + 8);
  v33 = OUTLINED_FUNCTION_137();
  v32(v33);
  (*(v14 + 8))(v0, v11);
  v34 = v111;
  v35 = MEMORY[0x1E69DB188];
  sub_1CA587F18(MEMORY[0x1E69DB188], v36, v37, v38, v39, v40, v41, v42, v95, v96, v97.n128_i64[0], v97.n128_i64[1]);
  v110 = v3;
  OUTLINED_FUNCTION_151_4(v2, 0x6D69547472617473, v3);
  v43 = OUTLINED_FUNCTION_137();
  v32(v43);
  sub_1CA587F18(v35, v44, v45, v46, v47, v48, v49, v50, v95, v96, v97.n128_i64[0], v97.n128_i64[1]);
  sub_1CA57ABD8(v2, 0x656D6954646E65, 0xE700000000000000, v114);
  v51 = OUTLINED_FUNCTION_137();
  v32(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_40();
  v52 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0(v52);
  v54 = v53;
  v56 = *(v55 + 72);
  OUTLINED_FUNCTION_118_3();
  v59 = v58 & ~v57;
  v105 = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CA981350;
  v109 = v61;
  v62 = v61 + v59;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v64 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v107 = *(v107 + 72);
  v65 = swift_allocObject();
  v102 = xmmword_1CA981310;
  *(v65 + 16) = xmmword_1CA981310;
  v66 = *(v34 + 16);
  v104 = v64;
  v106 = v66;
  v66(v65 + v64, v115, v116);
  v103 = v62;
  OUTLINED_FUNCTION_68_8();
  v67 = v108;
  sub_1CA578170();
  if (v67)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v68 = *(v34 + 8);
    OUTLINED_FUNCTION_24_16();
    v68();
    (v68)(v110, v65);
    v69 = OUTLINED_FUNCTION_98_4();
    (v68)(v69);
  }

  else
  {
    v108 = v54;
    v101 = v52;
    swift_setDeallocating();
    sub_1CA32E40C();
    v99 = v63;
    v100 = "B16@?0@LSApplicationRecord8";
    v70 = v107;
    v71 = v104;
    v98 = 3 * v107;
    v72 = swift_allocObject();
    v97 = xmmword_1CA9813C0;
    v73 = OUTLINED_FUNCTION_135_3(v72, xmmword_1CA9813C0);
    v74 = v106;
    (v106)(v73);
    v74(v71 + v70, v110, v116);
    v74(v71 + 2 * v70, v114, v116);
    v75 = v103;
    OUTLINED_FUNCTION_81_6();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v76 = v104;
    v77 = v75 + 2 * v105;
    v78 = swift_allocObject();
    *(v78 + 16) = v102;
    v106(v78 + v76, v115, v116);
    OUTLINED_FUNCTION_68_8();
    sub_1CA578170();
    *&v102 = 0;
    v96 = v77;
    v79 = v107;
    swift_setDeallocating();
    sub_1CA32E40C();
    v80 = v104;
    v100 = "enter_location_between";
    v81 = swift_allocObject();
    v82 = OUTLINED_FUNCTION_135_3(v81, v97);
    v83 = v110;
    v84 = v106;
    (v106)(v82);
    v84(v80 + v79, v83, v116);
    v85 = v103;
    v84(v80 + 2 * v79, v114, v116);
    OUTLINED_FUNCTION_81_6();
    v86 = v102;
    sub_1CA578170();
    if (!v86)
    {
      swift_setDeallocating();
      sub_1CA32E40C();
      v92 = *(v111 + 8);
      OUTLINED_FUNCTION_24_16();
      v92();
      v93 = OUTLINED_FUNCTION_142_4();
      (v92)(v93);
      v94 = OUTLINED_FUNCTION_98_4();
      (v92)(v94);
      goto LABEL_6;
    }

    swift_setDeallocating();
    sub_1CA32E40C();
    v87 = *(v111 + 8);
    OUTLINED_FUNCTION_24_16();
    v87();
    v88 = OUTLINED_FUNCTION_142_4();
    (v87)(v88);
    v89 = OUTLINED_FUNCTION_98_4();
    (v87)(v89);
    v90 = *(v108 + 8);
    v91 = v101;
    v90(v96, v101);
    v90(v85 + v105, v91);
    v90(v85, v91);
  }

  OUTLINED_FUNCTION_69_8();
LABEL_6:
  OUTLINED_FUNCTION_107();
}